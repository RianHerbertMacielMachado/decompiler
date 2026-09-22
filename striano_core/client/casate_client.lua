-- =============================================================================
-- casate_client.lua
-- Refactored from decompiled bytecode — clean, idiomatic Lua
-- Systems: Casata (guild), Territory, DeliveryBox logistics
-- =============================================================================

-- ---------------------------------------------------------------------------
-- Module-level state
-- ---------------------------------------------------------------------------

local casataData              = nil    -- current casata data received from server
local dataRequestPending      = false  -- debounce flag for casate:requestData

local TerritoryStates         = {}     -- simplified territory states (casata menus only)
local deliveryBoxes           = {}     -- full territory/box ownership state
local currentTerritoryId      = nil    -- territory the local player is currently inside
local territoryTrackerRunning = false
local territoriesLoaded       = false
local territoryCheckInterval  = 750   -- ms between tracker ticks

local claimInProgress         = false
local claimNonce              = 0
local claimDurationMs         = 10000  -- ms a claim takes to complete
local claimPollMs             = 100    -- ms between claim-guard checks
local claimLeaveRadius        = 5.0    -- metres — abort if player leaves this radius

local activeBoxId             = nil    -- deliveryBox id currently carried by local player
local pickupPending           = false  -- debounce flag for pickup requests
local boxBoneParams           = {      -- right-hand bone + offsets for box attachment
    bone    = 24818,
    offX    =  -0.136,
    offY    =  -0.048,
    offZ    =   0.042,
    rotX    =  84.64,
    rotY    =   4.64,
    rotZ    = -16.0,
}

-- ---------------------------------------------------------------------------
-- Utility helpers
-- ---------------------------------------------------------------------------

--- Show a small notification to the local player.
---@param msg string
local function Notify(msg)
    ExecuteCommand("prova3 " .. msg)
end

--- Find the closest player ped within `range` units.
---@param range number
---@return number|nil serverId, number distance
local function PlayerVicino(range)
    local myPed   = PlayerPedId()
    local myCoord = GetEntityCoords(myPed)
    local closest, closestDist = nil, range or math.huge

    for _, serverId in ipairs(GetActivePlayers()) do
        if serverId ~= PlayerId() then
            local ped  = GetPlayerPed(serverId)
            local dist = #(myCoord - GetEntityCoords(ped))
            if dist < closestDist then
                closestDist = dist
                closest     = GetPlayerServerId(serverId)
            end
        end
    end

    return closest, closestDist
end

--- Trim leading/trailing whitespace from a string.
---@param s string
---@return string
local function TrimString(s)
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
end

--- Open a text-input dialog using striano_core's OpenInput export.
---@param prompt  string
---@param default string
---@param maxLen  number
---@return string|nil
local function OpenInput(prompt, default, maxLen)
    return exports.striano_core:OpenInput(prompt, default, maxLen)
end

--- Require the player to type "CONFERMA" before calling `callback`.
---@param prompt   string  message shown before the input
---@param callback function called with no args when confirmed
local function ConfirmAction(prompt, callback)
    Notify(prompt)
    local input = OpenInput('Scrivi "CONFERMA" per procedere', "", 8)
    if input and TrimString(input):upper() == "CONFERMA" then
        callback()
    end
end

--- Count entries in a table (works for both array and hash parts).
---@param t table
---@return number
local function tableCount(t)
    local n = 0
    for _ in pairs(t) do n = n + 1 end
    return n
end

--- Format a number of seconds as "Xm Ys".
---@param n number
---@return string
local function formatSeconds(n)
    local m = math.floor(n / 60)
    local s = n % 60
    return string.format("%dm %ds", m, s)
end

-- ---------------------------------------------------------------------------
-- Casata data helpers
-- ---------------------------------------------------------------------------

--- Debounced server request for casata data (3 s lockout).
local function requestCasataData()
    if dataRequestPending then return end
    dataRequestPending = true
    TriggerServerEvent("casate:requestData")
    SetTimeout(3000, function()
        dataRequestPending = false
    end)
end

-- ---------------------------------------------------------------------------
-- No-guild menu
-- ---------------------------------------------------------------------------

--- Open the menu shown when the player has no casata.
local function openNoGuildMenu()
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem({
        label    = "Crea Casata",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            local name = OpenInput("Nome Casata", "", 32)
            if not name or TrimString(name) == "" then return end
            ConfirmAction(
                "Stai per creare la casata: " .. name,
                function()
                    TriggerServerEvent("casate:create", TrimString(name))
                end
            )
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Accetta Invito",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:acceptInvite")
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Rifiuta Invito",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:declineInvite")
        end,
    })

    exports.striano_fastmenu:openMenu()
end

-- ---------------------------------------------------------------------------
-- Member-detail menu
-- ---------------------------------------------------------------------------

--- Open the action menu for a specific casata member.
---@param member table  member data (id, name, rank, online)
local function openMemberDetailMenu(member)
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem({
        label    = "Promuovi",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Promuovi " .. member.name .. "?",
                function()
                    TriggerServerEvent("casate:promote", member.id)
                end
            )
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Retrocedi",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Retrocedi " .. member.name .. "?",
                function()
                    TriggerServerEvent("casate:demote", member.id)
                end
            )
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Trasferisci Leadership",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Trasferisci leadership a " .. member.name .. "?",
                function()
                    TriggerServerEvent("casate:transfer", member.id)
                end
            )
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Espelli",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Espelli " .. member.name .. "?",
                function()
                    TriggerServerEvent("casate:kick", member.id)
                end
            )
        end,
    })

    exports.striano_fastmenu:openMenu()
end

-- ---------------------------------------------------------------------------
-- Territory config accessor
-- ---------------------------------------------------------------------------

--- Return the CasateConfig entry for `id`, or nil.
---@param id number|string
---@return table|nil
local function getTerritoryConfig(id)
    if CasateConfig and CasateConfig.Territories then
        return CasateConfig.Territories[id]
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- Territory state accessors (operate on `deliveryBoxes`)
-- ---------------------------------------------------------------------------

---@param id number
---@return table|nil
local function getTerritoryState(id)
    return deliveryBoxes[id]
end

---@param id number
---@return string|nil
local function getTerritoryOwner(id)
    local st = deliveryBoxes[id]
    return st and st.owner or nil
end

---@param id number
---@return string
local function getTerritoryStatus(id)
    local st = deliveryBoxes[id]
    return (st and st.status) or "neutral"
end

---@param id number
---@return string
local function getTerritoryName(id)
    local cfg = getTerritoryConfig(id)
    return (cfg and cfg.name) or tostring(id)
end

--- Deep-path read into a territory state.
---@param id   number
---@param path string  dot-separated key path, e.g. "owner" or "fuel.current"
---@return any
local function getTerritoryStateData(id, path)
    local st = deliveryBoxes[id]
    if not st then return nil end

    local node = st
    for key in path:gmatch("[^%.]+") do
        if type(node) ~= "table" then return nil end
        node = node[key]
    end
    return node
end

--- Find the territory whose bounds contain world position `pos`.
---@param pos vector3
---@return number|nil territoryId
local function getTerritoryFromCoords(pos)
    if not CasateConfig or not CasateConfig.Territories then return nil end
    for id, cfg in pairs(CasateConfig.Territories) do
        if cfg.bounds then
            local b = cfg.bounds
            if pos.x >= b.minX and pos.x <= b.maxX
            and pos.y >= b.minY and pos.y <= b.maxY
            and pos.z >= b.minZ and pos.z <= b.maxZ then
                return id
            end
        end
    end
    return nil
end

---@return number|nil
local function getCurrentTerritoryId()
    return currentTerritoryId
end

---@param id number
---@return boolean
local function isInsideTerritory(id)
    return currentTerritoryId == id
end

-- ---------------------------------------------------------------------------
-- Claim system
-- ---------------------------------------------------------------------------

--- Abort an in-progress claim with an optional notification.
---@param msg string|nil
local function cancelClaim(msg)
    claimNonce    = claimNonce + 1
    claimInProgress = false
    if msg then Notify(msg) end
end

--- Begin the claim sequence for `territoryId`.
--- Runs a polling thread that checks health and position every `claimPollMs`.
---@param territoryId number
local function startClaim(territoryId)
    if claimInProgress then
        Notify("Stai già reclamando un territorio.")
        return
    end

    local cfg = getTerritoryConfig(territoryId)
    if not cfg then
        Notify("Territorio non trovato.")
        return
    end

    claimInProgress = true
    claimNonce      = claimNonce + 1
    local myNonce   = claimNonce

    local claimCenter = vector3(cfg.x, cfg.y, cfg.z)
    local startTime   = GetGameTimer()

    Notify("Inizio reclamo di " .. getTerritoryName(territoryId) .. "...")

    CreateThread(function()
        while claimInProgress and claimNonce == myNonce do
            Wait(claimPollMs)

            -- guard: nonce changed externally
            if claimNonce ~= myNonce then break end

            local ped    = PlayerPedId()
            local health = GetEntityHealth(ped)

            -- guard: player died
            if health <= 100 then
                cancelClaim("Sei morto — reclamo annullato.")
                break
            end

            -- guard: player left the zone
            local dist = #(GetEntityCoords(ped) - claimCenter)
            if dist > claimLeaveRadius then
                cancelClaim("Hai lasciato la zona — reclamo annullato.")
                break
            end

            -- completed
            local elapsed = GetGameTimer() - startTime
            if elapsed >= claimDurationMs then
                claimInProgress = false
                TriggerServerEvent("casate:claimTerritory", territoryId)
                break
            end
        end
    end)
end

-- ---------------------------------------------------------------------------
-- Territory tracker thread
-- ---------------------------------------------------------------------------

--- Start the 750 ms loop that fires `enteredTerritory` / `leftTerritory`.
local function startTerritoryTracker()
    if territoryTrackerRunning then return end
    territoryTrackerRunning = true

    CreateThread(function()
        while territoryTrackerRunning do
            Wait(territoryCheckInterval)

            local pos = GetEntityCoords(PlayerPedId())
            local id  = getTerritoryFromCoords(pos)

            if id ~= currentTerritoryId then
                if currentTerritoryId then
                    TriggerEvent("casate:leftTerritory", currentTerritoryId)
                end
                currentTerritoryId = id
                if id then
                    TriggerEvent("casate:enteredTerritory", id)
                end
            end
        end
    end)
end

--- Request the full territory list from the server.
local function requestTerritories()
    TriggerServerEvent("casate:requestTerritories")
end

-- ---------------------------------------------------------------------------
-- Territory menu
-- ---------------------------------------------------------------------------

--- Open the full info + management menu for a single territory.
---@param territoryId number
local function openTerritoryMenu(territoryId)
    local cfg   = getTerritoryConfig(territoryId)
    local state = getTerritoryState(territoryId)

    if not cfg then
        Notify("Territorio " .. tostring(territoryId) .. " non configurato.")
        return
    end

    local owner  = getTerritoryOwner(territoryId)
    local status = getTerritoryStatus(territoryId)
    local name   = getTerritoryName(territoryId)

    local culturaRaw = state and state.cultura or 0
    local culturaMax = (cfg and cfg.culturaMax) or 100
    local culturaPct = math.floor((culturaRaw / culturaMax) * 100)

    local fuelCurrent = getTerritoryStateData(territoryId, "fuel.current") or 0
    local fuelMax     = getTerritoryStateData(territoryId, "fuel.max") or 0
    local boxCount    = state and state.boxes and tableCount(state.boxes) or 0

    exports.striano_fastmenu:clearMenu()

    -- info header
    exports.striano_fastmenu:addMenuItem({
        label    = name .. " — " .. status,
        disabled = true,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Proprietario: " .. (owner or "Neutrale"),
        disabled = true,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Cultura: " .. culturaPct .. "%",
        disabled = true,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Casse presenti: " .. boxCount,
        disabled = true,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = string.format("Carburante: %d / %d", fuelCurrent, fuelMax),
        disabled = true,
    })

    -- actions
    if casataData then
        -- claim
        exports.striano_fastmenu:addMenuItem({
            label    = claimInProgress and "Annulla Reclamo" or "Reclama Territorio",
            callback = function()
                exports.striano_fastmenu:closeMenu()
                if claimInProgress then
                    cancelClaim("Reclamo annullato manualmente.")
                else
                    startClaim(territoryId)
                end
            end,
        })

        -- release (only if we own it)
        if owner == casataData.id then
            exports.striano_fastmenu:addMenuItem({
                label    = "Rilascia Territorio",
                callback = function()
                    exports.striano_fastmenu:closeMenu()
                    ConfirmAction(
                        "Vuoi davvero rilasciare " .. name .. "?",
                        function()
                            TriggerServerEvent("casate:releaseTerritory", territoryId)
                        end
                    )
                end,
            })
        end

        -- fuel deposit
        exports.striano_fastmenu:addMenuItem({
            label    = "Deposita Carburante",
            callback = function()
                exports.striano_fastmenu:closeMenu()
                TriggerServerEvent("casate:depositFuel", territoryId)
            end,
        })

        -- fuel collect
        exports.striano_fastmenu:addMenuItem({
            label    = "Raccogli Carburante",
            callback = function()
                exports.striano_fastmenu:closeMenu()
                TriggerServerEvent("casate:collectFuel", territoryId)
            end,
        })
    end

    exports.striano_fastmenu:openMenu()
end

-- ---------------------------------------------------------------------------
-- IsInsideOwnedTerritory
-- ---------------------------------------------------------------------------

--- Return whether the player is inside a territory owned by their casata.
---@return boolean isInside, number|nil territoryId
local function IsInsideOwnedTerritory()
    if not currentTerritoryId then return false, nil end
    if not casataData then return false, nil end

    local owner = getTerritoryOwner(currentTerritoryId)
    if owner == casataData.id then
        return true, currentTerritoryId
    end
    return false, nil
end

-- ---------------------------------------------------------------------------
-- DeliveryBox helpers
-- ---------------------------------------------------------------------------

--- Debug-log a deliveryBox message.
---@param msg string
local function dbLog(msg)
    print("[deliveryBox] " .. tostring(msg))
end

--- Wait until a network entity with `netId` exists, up to `timeout` ms.
---@param netId   number
---@param timeout number  milliseconds
---@return number|nil entityHandle
local function waitForNetEntity(netId, timeout)
    local deadline = GetGameTimer() + (timeout or 5000)
    while not NetworkDoesEntityExistWithNetworkId(netId) do
        if GetGameTimer() > deadline then return nil end
        Wait(100)
    end
    return NetToObj(netId)
end

--- Request script control of `entity`, waiting up to `timeout` ms.
---@param entity  number
---@param timeout number  milliseconds
---@return boolean
local function requestEntityControl(entity, timeout)
    local deadline = GetGameTimer() + (timeout or 3000)
    while not NetworkHasControlOfEntity(entity) do
        if GetGameTimer() > deadline then return false end
        NetworkRequestControlOfEntity(entity)
        Wait(100)
    end
    return true
end

-- ---------------------------------------------------------------------------
-- Walk entity-attach chain to find the player ped
-- ---------------------------------------------------------------------------

--- Walk entity attachment chain upward to find the attached player ped.
---@param entity number
---@return number|nil ped
local function GetAttachedPlayer(entity)
    local current = entity
    for _ = 1, 8 do  -- max 8 hops to prevent infinite loops
        local parent = GetEntityAttachedTo(current)
        if parent == 0 then break end
        if IsPedAPlayer(parent) then return parent end
        current = parent
    end
    return nil
end

--- Return the server ID of the player attached (directly or via chain) to `entity`.
---@param entity number
---@return number|nil serverId
local function GetAttachedPlayerServerId(entity)
    local ped = GetAttachedPlayer(entity)
    if not ped then return nil end
    for _, playerId in ipairs(GetActivePlayers()) do
        if GetPlayerPed(playerId) == ped then
            return GetPlayerServerId(playerId)
        end
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- DeliveryBox: attach / carry / detach
-- ---------------------------------------------------------------------------

--- Pick up a delivery box and start the carry thread.
---@param boxId  string|number
---@param netId  number
local function attachBoxToPlayer(boxId, netId)
    local entity = waitForNetEntity(netId, 5000)
    if not entity then
        dbLog("attachBoxToPlayer: entity timeout for netId " .. tostring(netId))
        return
    end

    if not requestEntityControl(entity, 3000) then
        dbLog("attachBoxToPlayer: no control of entity " .. tostring(entity))
        return
    end

    local ped = PlayerPedId()
    AttachEntityToEntity(
        entity, ped,
        GetPedBoneIndex(ped, boxBoneParams.bone),
        boxBoneParams.offX, boxBoneParams.offY, boxBoneParams.offZ,
        boxBoneParams.rotX, boxBoneParams.rotY, boxBoneParams.rotZ,
        false, false, false, false, 2, true
    )

    activeBoxId = boxId
    dbLog("Carrying box " .. tostring(boxId))

    -- carry thread
    CreateThread(function()
        local walkDict = "move_m@hiking"
        local walkAnim = "walk"
        RequestAnimDict(walkDict)
        while not HasAnimDictLoaded(walkDict) do Wait(10) end

        while activeBoxId == boxId do
            Wait(0)

            local playerPed = PlayerPedId()

            -- disable sprint, jump-while-moving, crouch/throw
            DisableControlAction(0, 21, true)  -- sprint
            DisableControlAction(0, 22, true)  -- jump (while moving)
            DisableControlAction(0, 73, true)  -- crouch / throw

            -- walking anim when on foot and not in a vehicle
            if not IsPedInAnyVehicle(playerPed, false) then
                if not IsEntityPlayingAnim(playerPed, walkDict, walkAnim, 3) then
                    TaskPlayAnim(playerPed, walkDict, walkAnim, 8.0, -8.0, -1, 1, 0, false, false, false)
                end
            end

            -- drop triggers: X/cover(25), F/enter(38), G/throw(45), Q/crouch(73)
            local dropped = IsDisabledControlJustPressed(0, 25)
                         or IsDisabledControlJustPressed(0, 38)
                         or IsDisabledControlJustPressed(0, 45)
                         or IsDisabledControlJustPressed(0, 73)

            -- also drop on ragdoll
            if not dropped and IsPedRagdoll(playerPed) then
                dropped = true
            end

            if dropped then
                local dropCoords = GetEntityCoords(playerPed)
                TriggerServerEvent("deliveryBox:drop", boxId)
                activeBoxId = nil

                -- pickup snowball anim as "set down" feedback
                RequestAnimDict("pickup_object")
                while not HasAnimDictLoaded("pickup_object") do Wait(10) end
                TaskPlayAnim(playerPed, "pickup_object", "pickup_snowball", 8.0, -8.0, 1200, 0, 0, false, false, false)
                break
            end
        end

        -- ensure anim is cleared if still playing
        local playerPed = PlayerPedId()
        if IsEntityPlayingAnim(playerPed, walkDict, walkAnim, 3) then
            StopAnimTask(playerPed, walkDict, walkAnim, 1.0)
        end
    end)
end

--- Detach a delivery box from the player and sync drop position.
---@param boxId     string|number
---@param netId     number
---@param dropCoords vector3|nil
local function detachBox(boxId, netId, dropCoords)
    local entity = waitForNetEntity(netId, 3000)
    if entity and DoesEntityExist(entity) then
        DetachEntity(entity, true, true)
        if dropCoords then
            SetEntityCoords(entity, dropCoords.x, dropCoords.y, dropCoords.z, false, false, false, false)
        end
    end

    if activeBoxId == boxId then
        activeBoxId = nil
    end

    dbLog("Detached box " .. tostring(boxId))
end

--- Find the nearest dropped delivery box within `range` units.
---@param range number
---@return number|nil entityHandle, string|number|nil boxId
local function getNearestDroppedBox(range)
    local pos   = GetEntityCoords(PlayerPedId())
    local best, bestDist, bestId = nil, range or 3.0, nil

    for id, state in pairs(deliveryBoxes) do
        if state.netId and state.status == "dropped" then
            local ent = NetToObj(state.netId)
            if DoesEntityExist(ent) then
                local d = #(pos - GetEntityCoords(ent))
                if d < bestDist then
                    bestDist = d
                    best     = ent
                    bestId   = id
                end
            end
        end
    end

    return best, bestId
end

-- ---------------------------------------------------------------------------
-- Net events — Casata system
-- ---------------------------------------------------------------------------

RegisterNetEvent("casate:notify")
AddEventHandler("casate:notify", function(msg)
    Notify(msg)
end)

RegisterNetEvent("casate:openMembersMenu")
AddEventHandler("casate:openMembersMenu", function(members)
    if not members then return end

    exports.striano_fastmenu:clearMenu()

    for _, member in ipairs(members) do
        local onlineTag = member.online and " [Online]" or ""
        exports.striano_fastmenu:addMenuItem({
            label    = (member.name or "???") .. onlineTag .. " — " .. (member.rank or ""),
            callback = function()
                exports.striano_fastmenu:closeMenu()
                openMemberDetailMenu(member)
            end,
        })
    end

    exports.striano_fastmenu:openMenu()
end)

RegisterNetEvent("casate:territoryUpdated")
AddEventHandler("casate:territoryUpdated", function(id, state)
    TerritoryStates[id] = state
end)

RegisterNetEvent("casate:openTerritoriesMenu")
AddEventHandler("casate:openTerritoriesMenu", function(territories)
    if not territories then return end

    exports.striano_fastmenu:clearMenu()

    for _, terr in ipairs(territories) do
        local cfg     = getTerritoryConfig(terr.id)
        local name    = (cfg and cfg.name) or tostring(terr.id)
        local cultPct = terr.culturaPct or 0
        local owner   = terr.owner or "Neutrale"

        exports.striano_fastmenu:addMenuItem({
            label    = string.format("%s — %s — Cultura: %d%%", name, owner, cultPct),
            callback = function()
                exports.striano_fastmenu:closeMenu()
                openTerritoryMenu(terr.id)
            end,
        })
    end

    exports.striano_fastmenu:openMenu()
end)

RegisterNetEvent("casate:openSingleTerritoryMenu")
AddEventHandler("casate:openSingleTerritoryMenu", function(territoryId)
    openTerritoryMenu(territoryId)
end)

RegisterNetEvent("casate:casataUpdated")
AddEventHandler("casate:casataUpdated", function(data)
    casataData = data
end)

RegisterNetEvent("casate:openStatsMenu")
AddEventHandler("casate:openStatsMenu", function(stats)
    if not stats then return end

    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem({
        label    = "Casse Aperte: " .. (stats.cratesOpened or 0),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Casse Perse: " .. (stats.cratesLost or 0),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Consegne Completate: " .. (stats.deliveriesCompleted or 0),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Consegne Fallite: " .. (stats.deliveriesFailed or 0),
        disabled = true,
    })

    exports.striano_fastmenu:openMenu()
end)

RegisterNetEvent("casate:openSettingsMenu")
AddEventHandler("casate:openSettingsMenu", function(settings)
    if not settings then return end

    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem({
        label    = "Fuoco Amico: " .. (settings.friendlyFire and "Attivo" or "Disattivo"),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Privata: " .. (settings.private and "Sì" or "No"),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Colore: " .. (settings.color or "N/A"),
        disabled = true,
    })
    exports.striano_fastmenu:addMenuItem({
        label    = "Emblema: " .. (settings.emblem or "N/A"),
        disabled = true,
    })

    exports.striano_fastmenu:openMenu()
end)

RegisterNetEvent("casate:openMainMenu")
AddEventHandler("casate:openMainMenu", function()
    if not casataData then
        openNoGuildMenu()
        return
    end

    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem({
        label    = casataData.name or "La mia Casata",
        disabled = true,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Membri",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:requestMembersList")
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Territori",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:requestTerritoriesList")
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Statistiche",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:requestStats")
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Impostazioni",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            TriggerServerEvent("casate:requestSettings")
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Invita Giocatore Vicino",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            local serverId = PlayerVicino(5.0)
            if serverId then
                TriggerServerEvent("casate:invitePlayer", serverId)
            else
                Notify("Nessun giocatore vicino.")
            end
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Lascia Casata",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Vuoi davvero lasciare la casata?",
                function()
                    TriggerServerEvent("casate:leave")
                end
            )
        end,
    })

    exports.striano_fastmenu:addMenuItem({
        label    = "Dissolvi Casata",
        callback = function()
            exports.striano_fastmenu:closeMenu()
            ConfirmAction(
                "Vuoi davvero DISSOLVERE la casata? Questa azione è irreversibile.",
                function()
                    TriggerServerEvent("casate:dissolve")
                end
            )
        end,
    })

    exports.striano_fastmenu:openMenu()
end)

RegisterNetEvent("casate:receiveData")
AddEventHandler("casate:receiveData", function(data)
    casataData = data
    TriggerEvent("casate:openMainMenu")
end)

RegisterNetEvent("casate:refreshMenu")
AddEventHandler("casate:refreshMenu", function()
    casataData = nil
end)

RegisterNetEvent("casate:receiveInvite")
AddEventHandler("casate:receiveInvite", function(inviterName, casataName)
    Notify(string.format("Sei stato invitato da %s nella casata %s — usa /casata per accettare o rifiutare.",
        tostring(inviterName), tostring(casataName)))
end)

RegisterNetEvent("casate:receiveTerritoryStates")
AddEventHandler("casate:receiveTerritoryStates", function(states)
    TerritoryStates = states or {}
end)

RegisterNetEvent("casate:receiveTerritories")
AddEventHandler("casate:receiveTerritories", function(data)
    deliveryBoxes    = data or {}
    territoriesLoaded = true
end)

-- second territory-updated handler (full state — operates on deliveryBoxes)
RegisterNetEvent("casate:territoryStateChanged")
AddEventHandler("casate:territoryStateChanged", function(id, state)
    deliveryBoxes[id] = state
    TriggerEvent("casate:territoryStateChanged", id, state)
end)

RegisterNetEvent("casate:enteredTerritory")
AddEventHandler("casate:enteredTerritory", function(id)
    local owner = getTerritoryOwner(id)
    local name  = getTerritoryName(id)
    if owner then
        Notify(string.format("Sei entrato nel territorio di %s: %s", owner, name))
    else
        Notify("Sei entrato nel territorio neutrale: " .. name)
    end
end)

RegisterNetEvent("casate:leftTerritory")
AddEventHandler("casate:leftTerritory", function(_id)
    -- intentionally empty — no notification on leave
end)

-- ---------------------------------------------------------------------------
-- Net events — DeliveryBox system
-- ---------------------------------------------------------------------------

RegisterNetEvent("deliveryBox:syncBox")
AddEventHandler("deliveryBox:syncBox", function(id, state)
    deliveryBoxes[id] = state
end)

RegisterNetEvent("deliveryBox:syncAll")
AddEventHandler("deliveryBox:syncAll", function(data)
    deliveryBoxes = data or {}
end)

RegisterNetEvent("deliveryBox:attachToPlayer")
AddEventHandler("deliveryBox:attachToPlayer", function(boxId, netId)
    attachBoxToPlayer(boxId, netId)
end)

RegisterNetEvent("deliveryBox:detach")
AddEventHandler("deliveryBox:detach", function(boxId, netId, dropCoords)
    detachBox(boxId, netId, dropCoords)
end)

RegisterNetEvent("deliveryBox:pickupResult")
AddEventHandler("deliveryBox:pickupResult", function(_success)
    pickupPending = false
end)

RegisterNetEvent("deliveryBox:removeBox")
AddEventHandler("deliveryBox:removeBox", function(id)
    deliveryBoxes[id] = nil
    dbLog("Box removed: " .. tostring(id))
end)

RegisterNetEvent("deliveryBox:error")
AddEventHandler("deliveryBox:error", function(msg)
    dbLog("Server error: " .. tostring(msg))
end)

RegisterNetEvent("deliveryBox:created")
AddEventHandler("deliveryBox:created", function(id)
    dbLog(string.format("Cassa creata: %s", tostring(id)))
end)

-- ---------------------------------------------------------------------------
-- Exports — Casata
-- ---------------------------------------------------------------------------

exports("GetMyCasataId", function()
    return casataData and casataData.id or nil
end)

exports("OpenCasataMenu", function()
    requestCasataData()
end)

exports("GetCurrentCasataData", function()
    return casataData
end)

-- ---------------------------------------------------------------------------
-- Exports — Territory (claim/control)
-- ---------------------------------------------------------------------------

exports("StartTerritoryClaim", function(territoryId)
    startClaim(territoryId)
end)

exports("StopTerritoryClaim", function(msg)
    cancelClaim(msg)
end)

exports("IsTerritoryClaimRunning", function()
    return claimInProgress
end)

-- ---------------------------------------------------------------------------
-- Exports — Territory (read)
-- ---------------------------------------------------------------------------

exports("GetTerritoryConfigClient", function(id)
    return getTerritoryConfig(id)
end)

exports("GetTerritoryStateClient", function(id)
    return getTerritoryState(id)
end)

exports("GetTerritoryOwnerClient", function(id)
    return getTerritoryOwner(id)
end)

exports("GetTerritoryDataClient", function(id, path)
    return getTerritoryStateData(id, path)
end)

exports("GetCurrentTerritory", function()
    return getCurrentTerritoryId()
end)

exports("IsInsideTerritory", function(id)
    return isInsideTerritory(id)
end)

exports("GetTerritoryFromCoords", function(pos)
    return getTerritoryFromCoords(pos)
end)

exports("OpenTerritoryMenu", function(id)
    openTerritoryMenu(id)
end)

exports("RequestTerritories", function()
    requestTerritories()
end)

exports("AreTerritoriesLoaded", function()
    return territoriesLoaded
end)

exports("IsInsideOwnedTerritory", function()
    return IsInsideOwnedTerritory()
end)

-- ---------------------------------------------------------------------------
-- Exports — DeliveryBox
-- ---------------------------------------------------------------------------

--- Try to pick up the delivery box attached to `entity`.
---@param entity number  entity handle of the box object
---@return boolean  true if pickup request was sent
exports("PickupDeliveryBox", function(entity)
    if not (entity and entity ~= 0 and DoesEntityExist(entity)) then
        return false
    end

    local boxId = Entity(entity).state.deliveryBoxId
    if not boxId then return false end

    -- already carrying or pickup in flight
    if activeBoxId or pickupPending then return false end

    pickupPending = true
    local netId   = NetworkGetNetworkIdFromEntity(entity)
    TriggerServerEvent("deliveryBox:requestPickup", boxId, netId)

    -- safety reset after 3 s if server never responds
    SetTimeout(3000, function()
        pickupPending = false
    end)

    return true
end)

--- Drop the box currently being carried.
---@return boolean  true if a drop was triggered
exports("DropDeliveryBox", function()
    if not activeBoxId then return false end

    local id   = activeBoxId
    activeBoxId = nil
    TriggerServerEvent("deliveryBox:drop", id)
    return true
end)

--- Returns true when `entity` is a delivery box in "dropped" state.
---@param entity number
---@return boolean
exports("IsActiveDeliveryBox", function(entity)
    if not (entity and entity ~= 0 and DoesEntityExist(entity)) then
        return false
    end

    local state = Entity(entity).state
    if not state then return false end
    if not state.deliveryBoxId then return false end
    return state.deliveryBoxState == "dropped"
end)

-- ---------------------------------------------------------------------------
-- Commands
-- ---------------------------------------------------------------------------

--- /casata — open the main casata menu
RegisterCommand("casata", function()
    requestCasataData()
end, false)

--- /addcasatapoints <N> — (dev/admin) add casata points
RegisterCommand("addcasatapoints", function(source, args)
    local amount = tonumber(args[1])
    if not amount then
        Notify("Uso: /addcasatapoints <numero>")
        return
    end
    TriggerServerEvent("casate:addCasataPoints", amount)
end, false)

--- /territorio — open the territory menu for current territory
RegisterCommand("territorio", function()
    local id = getCurrentTerritoryId()
    if id then
        openTerritoryMenu(id)
    else
        Notify("Non sei in nessun territorio.")
    end
end, false)

--- /territoriodebug — print current territory info to console
RegisterCommand("territoriodebug", function()
    local id = getCurrentTerritoryId()
    print("[territoire debug] currentTerritory:", id)
    if id then
        print("[territoire debug] owner:", getTerritoryOwner(id))
        print("[territoire debug] status:", getTerritoryStatus(id))
        print("[territoire debug] state:", json.encode(getTerritoryState(id) or {}))
    end
end, false)

--- /goterritory <N> — (admin) teleport to territory N's config coords
RegisterCommand("goterritory", function(source, args)
    local id  = tonumber(args[1])
    if not id then
        Notify("Uso: /goterritory <id>")
        return
    end

    local cfg = getTerritoryConfig(id)
    if not cfg or not cfg.x then
        Notify("Territorio " .. id .. " non ha coordinate.")
        return
    end

    DoScreenFadeOut(500)
    Wait(600)
    local ped = PlayerPedId()
    SetEntityCoords(ped, cfg.x, cfg.y, cfg.z, false, false, false, false)
    if cfg.heading then
        SetEntityHeading(ped, cfg.heading)
    end
    DoScreenFadeIn(500)
end, false)

--- /startBox [propModel] — (dev) create a delivery box on the server
RegisterCommand("startBox", function(source, args)
    local prop = args[1] or "prop_box_wood02a_pu"
    TriggerServerEvent("deliveryBox:start", prop)
end, false)

-- ---------------------------------------------------------------------------
-- Resource lifecycle
-- ---------------------------------------------------------------------------

AddEventHandler("onClientResourceStart", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    TriggerServerEvent("deliveryBox:requestSync")
    startTerritoryTracker()
end)
