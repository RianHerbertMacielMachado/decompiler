-- =============================================================================
-- territori_client.lua
-- Territory system client-side for striano_core / casate module.
-- Tracks which territory the player is currently inside, handles claim
-- progress, sends server events, and exposes territory info exports.
-- =============================================================================

-- ---------------------------------------------------------------------------
-- State
-- ---------------------------------------------------------------------------
local territoryStates   = {}      -- [territoryId] = serverData  (from casate:receiveTerritories)
local currentTerritory  = nil     -- string id of territory player is currently in
local territoriesLoaded = false   -- true after first receiveTerritories
local claimRunning      = false   -- true while a claim timer is active

local trackerActive     = false   -- guard for startTrackerLoop()
local claimVersion      = 0       -- incremented each claim attempt; stale threads abort

-- Tuning
local TRACKER_TICK_MS   = 750
local CLAIM_DURATION_MS = 10000
local CLAIM_POLL_MS     = 100
local CLAIM_MAX_RADIUS  = 5.0

-- ---------------------------------------------------------------------------
-- getTerritoryConfig(id)
-- Returns CasateConfig.Territories[id] or nil.
-- ---------------------------------------------------------------------------
local function getTerritoryConfig(id)
    id = tostring(id or "")
    if CasateConfig and CasateConfig.Territories and CasateConfig.Territories[id] then
        return CasateConfig.Territories[id]
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- getTerritoryState(id)
-- Returns the server-synced state for a territory id, or nil.
-- ---------------------------------------------------------------------------
local function getTerritoryState(id)
    id = tostring(id or "")
    if not getTerritoryConfig(id) then return nil end
    return territoryStates[id]
end

-- ---------------------------------------------------------------------------
-- getTerritoryOwner(id)
-- Returns the owner casata id of a territory, or nil.
-- ---------------------------------------------------------------------------
local function getTerritoryOwner(id)
    local state = getTerritoryState(id)
    return state and state.owner or nil
end

-- ---------------------------------------------------------------------------
-- getTerritoryStatus(id)
-- Returns the status string ("neutral", "owned", "contested") of a territory.
-- ---------------------------------------------------------------------------
local function getTerritoryStatus(id)
    local state = getTerritoryState(id)
    return (state and state.status) or "neutral"
end

-- ---------------------------------------------------------------------------
-- getTerritoryDisplayName(id)
-- Returns the human-readable name for a territory.
-- ---------------------------------------------------------------------------
local function getTerritoryDisplayName(id)
    local cfg = getTerritoryConfig(id)
    if cfg and cfg.name then return cfg.name end
    return tostring(id or "Territorio")
end

-- ---------------------------------------------------------------------------
-- getTerritoryData(id, path)
-- Returns nested data from the territory state by dot-separated path.
-- E.g. getTerritoryData("zone1", "stats.cratesOpened")
-- ---------------------------------------------------------------------------
local function getTerritoryData(id, path)
    local state = getTerritoryState(id)
    if not state then return nil end
    if path == nil or path == "" then return state end

    local current = state
    for key in tostring(path):gmatch("[^.]+") do
        if type(current) ~= "table" then return nil end
        current = current[key]
    end
    return current
end

-- ---------------------------------------------------------------------------
-- getTerritoryFromCoords(pos)
-- Returns the territory id (and distance) that contains pos, or nil.
-- ---------------------------------------------------------------------------
local function getTerritoryFromCoords(pos)
    if not pos then return nil end
    if not (CasateConfig and CasateConfig.Territories) then return nil end

    for id, cfg in pairs(CasateConfig.Territories) do
        local coords = cfg.coords
        local radius = tonumber(cfg.radius) or 30.0
        if coords then
            local dist = #(pos - coords)
            if dist <= radius then
                return id, dist
            end
        end
    end
    return nil
end

-- ---------------------------------------------------------------------------
-- getCurrentTerritory()
-- Returns the id of the territory the player is currently inside, or nil.
-- ---------------------------------------------------------------------------
local function getCurrentTerritory()
    return currentTerritory
end

-- ---------------------------------------------------------------------------
-- isInsideTerritory(id)
-- Returns true if the player is currently inside territory `id`.
-- ---------------------------------------------------------------------------
local function isInsideTerritory(id)
    local check = tostring(id or "")
    return currentTerritory == check
end

-- =============================================================================
-- CLAIM SYSTEM
-- =============================================================================

-- ---------------------------------------------------------------------------
-- stopTerritoryClaim(notifyMsg)
-- Aborts any running claim. Increments claimVersion to cancel stale threads.
-- ---------------------------------------------------------------------------
local function stopTerritoryClaim(notifyMsg)
    if not claimRunning then return end
    claimRunning = false
    claimVersion = claimVersion + 1
    if notifyMsg then
        Notify(notifyMsg)
    end
end

-- ---------------------------------------------------------------------------
-- startTerritoryClaim(territoryId)
-- Begins the claim timer for `territoryId`. Runs a loop that:
--   - Cancels if player dies, is hit, leaves the territory, or moves too far
--   - Fires casate:claimTerritory server event on success
-- ---------------------------------------------------------------------------
local function startTerritoryClaim(territoryId)
    if claimRunning then
        Notify("Stai già reclamando un territorio.")
        return
    end

    local cfg = getTerritoryConfig(territoryId)
    if not (cfg and cfg.coords) then
        Notify("Territorio non valido.")
        return
    end

    local ped = PlayerPedId()
    if not DoesEntityExist(ped) or IsEntityDead(ped) or IsPedFatallyInjured(ped) then
        Notify("Non puoi reclamare il territorio in questo momento.")
        return
    end

    -- Snapshot values at claim start
    local claimStartPos  = GetEntityCoords(ped)
    local territoryCenter = vector3(cfg.coords.x, cfg.coords.y, cfg.coords.z)
    local startHealth    = GetEntityHealth(ped)
    claimVersion = claimVersion + 1
    local myVersion = claimVersion
    claimRunning = true

    local durationSec = math.floor(CLAIM_DURATION_MS / 1000)
    Notify(string.format("Rimani nella zona per %s secondi per reclamare il territorio.", durationSec))

    CreateThread(function()
        local deadline = GetGameTimer() + CLAIM_DURATION_MS

        while true do
            if not claimRunning or claimVersion ~= myVersion then
                return
            end

            Wait(CLAIM_POLL_MS)
            ped = PlayerPedId()

            -- Death check
            if not DoesEntityExist(ped) or IsEntityDead(ped) or IsPedFatallyInjured(ped) then
                stopTerritoryClaim("Conquista annullata: sei gravemente ferito.")
                return
            end

            -- Hit check
            if GetEntityHealth(ped) < startHealth then
                stopTerritoryClaim("Conquista annullata: sei stato colpito.")
                return
            end

            -- Left territory check (territory id changed)
            if currentTerritory ~= territoryId then
                stopTerritoryClaim("Conquista annullata: hai lasciato il territorio.")
                return
            end

            -- Distance from original claim position
            local currentPos = GetEntityCoords(ped)
            if #(currentPos - claimStartPos) > CLAIM_MAX_RADIUS then
                stopTerritoryClaim("Conquista annullata: ti sei allontanato troppo.")
                return
            end

            -- Distance from territory center
            local claimRadius = tonumber(cfg.radius) or 30.0
            if #(currentPos - territoryCenter) > claimRadius then
                stopTerritoryClaim("Conquista annullata: hai lasciato il territorio.")
                return
            end

            -- Success
            if GetGameTimer() >= deadline then
                claimRunning = false
                Notify("Conquista completata. Verifica in corso...")
                TriggerServerEvent("casate:claimTerritory", territoryId)
                return
            end
        end
    end)
end

-- =============================================================================
-- TERRITORY TRACKER LOOP
-- Checks player position every TRACKER_TICK_MS ms and fires local events on
-- territory enter/leave.
-- =============================================================================

local function startTrackerLoop()
    if trackerActive then return end
    trackerActive = true

    CreateThread(function()
        while trackerActive do
            local ped = PlayerPedId()
            if ped ~= 0 and DoesEntityExist(ped) then
                local pos = GetEntityCoords(ped)
                local foundId = getTerritoryFromCoords(pos)

                if foundId ~= currentTerritory then
                    local previousId = currentTerritory
                    currentTerritory = foundId

                    if previousId then
                        TriggerEvent("casate:leftTerritory", previousId)
                    end
                    if foundId then
                        local cfg   = getTerritoryConfig(foundId)
                        local state = getTerritoryState(foundId)
                        TriggerEvent("casate:enteredTerritory", foundId, cfg, state)
                    end
                end
            end
            Wait(TRACKER_TICK_MS)
        end
    end)
end

-- =============================================================================
-- TERRITORY MENU
-- =============================================================================

-- ---------------------------------------------------------------------------
-- openTerritoryMenu(id)
-- Opens the fastmenu with territory stats, claim/release options.
-- ---------------------------------------------------------------------------
local function openTerritoryMenu(id)
    if not id then id = currentTerritory end

    if not id then
        ExecuteCommand("e shrug")
        Notify("Non ti trovi dentro alcun territorio.")
        return
    end

    local cfg = getTerritoryConfig(id)
    if not cfg then
        Notify("Configurazione del territorio non trovata.")
        return
    end

    local state     = getTerritoryState(id)
    local owner     = state and state.owner     or nil
    local ownerName = state and state.ownerName or nil
    local status    = (state and state.status)  or "neutral"

    -- Stats (default to 0)
    local cratesOpened        = (state and state.stats and state.stats.cratesOpened)        or 0
    local cratesLost          = (state and state.stats and state.stats.cratesLost)          or 0
    local deliveriesCompleted = (state and state.stats and state.stats.deliveriesCompleted) or 0
    local deliveriesFailed    = (state and state.stats and state.stats.deliveriesFailed)    or 0

    -- Display name for owner
    local ownerDisplay = ownerName or owner or "Nessuna Casata"

    -- Localise status
    local statusLabels = {
        neutral   = "Neutrale",
        owned     = "Occupato",
        contested = "Conteso",
    }
    local statusDisplay = statusLabels[status] or status

    -- Build menu
    local fm = exports.striano_fastmenu
    fm:clearMenu()

    local territoryName = cfg.name or id
    fm:addMenuItem("🏴 " .. territoryName, function() end, false)
    fm:addMenuItem("🛡️ Proprietario: " .. ownerDisplay, function() end, false)
    fm:addMenuItem("🔌 Stato: " .. statusDisplay, function() end, false)
    fm:addMenuItem("⭐ Costo conquista: " .. tostring(cfg.claimCost or 0) .. " punti", function() end, false)
    fm:addMenuItem("📦 Casse aperte: " .. cratesOpened, function() end, false)
    fm:addMenuItem("💀 Casse perse: " .. cratesLost, function() end, false)
    fm:addMenuItem("✅ Consegne completate: " .. deliveriesCompleted, function() end, false)
    fm:addMenuItem("❌ Consegne fallite: " .. deliveriesFailed, function() end, false)

    if owner then
        -- Territory is owned
        fm:addMenuItem("📍 Gestisci Produzioni", function()
            TriggerEvent("casate:openSingleTerritoryMenu", id)
        end, false)

        -- Check if current player's casata owns it and they are the owner rank
        local casataData = exports.striano_core:GetCurrentCasataData()
        local casataId   = casataData and casataData.id
        if casataId and owner == casataId then
            if casataData.myRank == "owner" then
                fm:addMenuItem("🚩 Abbandona territorio", function()
                    exports.striano_fastmenu:closeMenu()
                    local input = exports.striano_core:OpenInput(
                        "Scrivi CONFERMA per abbandonare il territorio", "", { maxLen = 16 }
                    )
                    local confirmed = string.lower(tostring(input or ""))
                    if confirmed ~= "conferma" then
                        Notify("Operazione annullata.")
                        return
                    end
                    TriggerServerEvent("casate:releaseTerritory", id)
                end, true)
            end
        end
    else
        -- Neutral — show claim option
        fm:addMenuItem("🏴 Reclama territorio", function()
            exports.striano_fastmenu:closeMenu()
            startTerritoryClaim(id)
        end, true)
    end

    fm:openMenu()
end

-- =============================================================================
-- NET EVENTS
-- =============================================================================

RegisterNetEvent("casate:receiveTerritories")
AddEventHandler("casate:receiveTerritories", function(data)
    territoryStates  = (type(data) == "table" and data) or {}
    territoriesLoaded = true
    TriggerEvent("casate:territoriesLoaded", territoryStates)
end)

RegisterNetEvent("casate:territoryUpdated")
AddEventHandler("casate:territoryUpdated", function(territoryId, newData)
    territoryId = tostring(territoryId or "")
    if territoryId == "" then return end

    if newData == nil then
        territoryStates[territoryId] = nil
    else
        territoryStates[territoryId] = newData
    end

    TriggerEvent("casate:territoryStateChanged", territoryId, newData)
end)

-- Entry / leave notification handlers
RegisterNetEvent("casate:enteredTerritory")
AddEventHandler("casate:enteredTerritory", function(territoryId)
    local cfg   = getTerritoryConfig(territoryId)
    if not cfg then return end

    local state  = getTerritoryState(territoryId)
    local owner  = state and state.owner or nil

    local displayName = cfg.name or territoryId

    if owner then
        local ownerLabel = (state and state.ownerName) or owner
        Notify(string.format(
            "Sei entrato nel territorio %s, controllato dalla Casata %s.",
            displayName, ownerLabel
        ))
    else
        Notify(string.format("Sei entrato nel territorio neutrale %s.", displayName))
    end
end)

RegisterNetEvent("casate:leftTerritory")
AddEventHandler("casate:leftTerritory", function(territoryId)
    -- Silent leave; extend here for notifications if needed
    local cfg = getTerritoryConfig(territoryId)
    if not cfg then return end
end)

-- =============================================================================
-- COMMANDS
-- =============================================================================

RegisterCommand("territorio", function()
    openTerritoryMenu()
end, false)

RegisterCommand("territoriodebug", function()
    local id = getCurrentTerritory()
    if not id then
        print("^3[TERRITORI] Non sei dentro nessun territorio.^7")
        return
    end
    local cfg   = getTerritoryConfig(id)
    local state = getTerritoryState(id)
    print("^2[TERRITORI] TERRITORIO CORRENTE^7")
    print("ID:", id)
    print("Nome:", cfg and cfg.name or id)
    print("Owner:", (state and state.owner) or "Nessuno")
    print("Status:", (state and state.status) or "neutral")
end, false)

-- =============================================================================
-- EXPORTS
-- =============================================================================

exports("StartTerritoryClaim",   startTerritoryClaim)
exports("StopTerritoryClaim",    stopTerritoryClaim)
exports("IsTerritoryClaimRunning", function() return claimRunning end)
exports("GetTerritoryConfigClient", function(id) return getTerritoryConfig(id) end)
exports("GetTerritoryStateClient",  function(id) return getTerritoryState(id) end)
exports("GetTerritoryOwnerClient",  function(id) return getTerritoryOwner(id) end)
exports("GetTerritoryDataClient",   function(id, path) return getTerritoryData(id, path) end)
exports("GetCurrentTerritory",      function() return getCurrentTerritory() end)
exports("IsInsideTerritory",        function(id) return isInsideTerritory(id) end)
exports("GetTerritoryFromCoords",   function(pos) return getTerritoryFromCoords(pos) end)
exports("OpenTerritoryMenu",        function(id) openTerritoryMenu(id) end)
exports("RequestTerritories", function()
    TriggerServerEvent("casate:requestTerritories")
end)
exports("AreTerritoriesLoaded", function() return territoriesLoaded end)

-- ---------------------------------------------------------------------------
-- IsInsideOwnedTerritory()
-- Returns: isOwned (bool), currentTerritoryId (string or nil)
-- Checks whether the player is inside a territory owned by their own casata.
-- ---------------------------------------------------------------------------
function IsInsideOwnedTerritory()
    local id = getCurrentTerritory()
    if not id or not CurrentCasataData then
        return false, nil
    end

    local owner  = getTerritoryOwner(id)
    local myId   = CurrentCasataData.id
    if owner ~= myId then
        return false, id
    end
    return true, id
end

exports("IsInsideOwnedTerritory", IsInsideOwnedTerritory)

-- =============================================================================
-- STARTUP
-- =============================================================================

CreateThread(function()
    Wait(1000)
    TriggerServerEvent("casate:requestTerritories")
    Wait(3000)
    startTrackerLoop()
end)
