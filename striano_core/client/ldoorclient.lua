-- ============================================================
--  ldoorclient.lua  –  Door Lock System (guille_doorlock)
--  Refactored from decompiled bytecode to clean idiomatic Lua
-- ============================================================

-- ---------------------------------------------------------------------------
--  Module-level state
-- ---------------------------------------------------------------------------
local INTERACTION_RADIUS  = 10.0       -- proximity radius used for deletion / freezing
local doors               = {}         -- door config array (from server callback)
local doorStatuses        = {}         -- [doorIndex] = "locked" or nil (opened)
local needsUpdate         = false      -- flag: a state change needs to be synced to the server
local promptPos           = nil        -- vector3 position for the on-screen text prompt
local COMMAND_NAME        = "ldoor"    -- command used internally by setup flow

local nearDoor            = false      -- whether the player is currently within door interaction range

-- Setup form state (used while the admin is creating a new door)
local doorType            = "normal"   -- "normal" | "slide" | "double"
local doorDistance        = 1          -- interaction distance (int)
local doorPin             = {}         -- pin code (string or table)
local doorKey             = ""         -- item key ID string
local doorDefaultStatus   = "locked"   -- "locked" or nil (opened)

local hoveredEntity       = nil        -- entity currently highlighted with an outline

-- Active door state (set each frame when the player is near a door)
local activeDoorPin       = nil        -- pin requirement of the door in range (nil = no pin)
local activeDoorItem      = nil        -- item key requirement of the door in range (nil = no item)

-- ---------------------------------------------------------------------------
--  Helper: door system key  (model string concatenated with "door" + index)
-- ---------------------------------------------------------------------------
local function doorSystemKey(doorModel, doorIndex)
    return tostring(doorModel) .. "door" .. tostring(doorIndex)
end

-- ---------------------------------------------------------------------------
--  Helper: reload door list from server
-- ---------------------------------------------------------------------------
local function reloadDoors(callback)
    exports.striano_core:TriggerServerCallback("guille_doorlock:cb:getDoors", function(doorsData, statusesData)
        doors        = doorsData
        doorStatuses = statusesData
        -- initialise any door whose status wasn't stored
        for idx, doorCfg in pairs(doors) do
            if doorCfg.status == nil then
                doorStatuses[idx] = "locked"
            end
        end
        if callback then callback() end
    end)
end

-- ---------------------------------------------------------------------------
--  Startup: wait 1.5 s then fetch door data from server
-- ---------------------------------------------------------------------------
CreateThread(function()
    Wait(1500)
    reloadDoors()
end)

-- ============================================================
--  SETUP MENU  (guille_doorlock:client:setUpDoor)
-- ============================================================

--- Resets all setup form fields to their defaults.
local function resetSetupForm()
    doorDefaultStatus = "locked"
    doorType          = "normal"
    doorDistance      = 1
    doorPin           = ""
    doorKey           = ""
end

--- Re-opens the setup main menu after a sub-menu closes.
local function reopenSetupMain()
    exports.striano_fastmenu:closeMenu()
    SetTimeout(100, function()
        ExecuteCommand(COMMAND_NAME)
    end)
end

--- Opens the Type sub-menu.
local function openTypeMenu()
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem("Slide", function()
        doorType = "slide"
        reopenSetupMain()
    end)
    exports.striano_fastmenu:addMenuItem("Normal", function()
        doorType = "normal"
        reopenSetupMain()
    end)
    exports.striano_fastmenu:addMenuItem("Double", function()
        doorType = "double"
        reopenSetupMain()
    end)

    exports.striano_fastmenu:openMenu()
end

--- Opens the State sub-menu.
local function openStateMenu()
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem("Opened", function()
        doorDefaultStatus = nil
        exports.striano_combat:submexError("Default: ~h~Opened")
        reopenSetupMain()
    end)
    exports.striano_fastmenu:addMenuItem("Closed", function()
        doorDefaultStatus = "locked"
        exports.striano_combat:submexError("Default: ~h~Closed")
        reopenSetupMain()
    end)

    exports.striano_fastmenu:openMenu()
end

--- Opens the main setup menu showing current form values.
local function openSetupMenu()
    exports.striano_fastmenu:clearMenu()

    -- [Type]
    local typeLabel = "[Type] " .. tostring(doorType or "normal")
    exports.striano_fastmenu:addMenuItem(typeLabel, function()
        exports.striano_fastmenu:closeMenu()
        SetTimeout(100, function() openTypeMenu() end)
    end)

    -- [State]
    local stateLabel = "[State] " .. tostring(doorDefaultStatus or "opened")
    exports.striano_fastmenu:addMenuItem(stateLabel, function()
        exports.striano_fastmenu:closeMenu()
        SetTimeout(100, function() openStateMenu() end)
    end)

    -- Distance
    local distLabel = "Distance: " .. tostring(doorDistance or 1)
    exports.striano_fastmenu:addMenuItem(distLabel, function()
        local raw = exports.striano_core:OpenInput(
            "Distance like 1 or 2",
            tostring(doorDistance or ""),
            { maxLen = 8 }
        )
        local num = tonumber(raw)
        if not num then
            exports.striano_combat:submexError("Distance not valid.")
            return
        end
        doorDistance = num
        reopenSetupMain()
    end)

    -- Key (item ID)
    local keyLabel = "Key: " .. tostring(doorKey or "")
    exports.striano_fastmenu:addMenuItem(keyLabel, function()
        local raw = exports.striano_core:OpenInput(
            "Key ID",
            tostring(doorKey or ""),
            {}
        )
        if raw == nil then return end
        doorKey = tostring(raw)
        reopenSetupMain()
    end)

    -- Pin
    local pinLabel = "Pin: " .. tostring(doorPin or "")
    exports.striano_fastmenu:addMenuItem(pinLabel, function()
        local raw = exports.striano_core:OpenInput(
            "Pin",
            tostring(doorPin or ""),
            { maxLen = 16 }
        )
        if raw == nil then return end
        doorPin = tostring(raw)
        reopenSetupMain()
    end)

    -- [Create]
    exports.striano_fastmenu:addMenuItem("[Create]", function()
        addDoor(doorType, doorDistance, doorPin, doorKey, doorDefaultStatus)
        exports.striano_fastmenu:closeMenu()
        resetSetupForm()
    end)

    exports.striano_fastmenu:openMenu()
end

RegisterNetEvent("guille_doorlock:client:setUpDoor")
AddEventHandler("guille_doorlock:client:setUpDoor", function()
    openSetupMenu()
end)

-- ============================================================
--  DELETE MODE  (guille_doorlock:client:deleteDoor)
-- ============================================================
RegisterNetEvent("guille_doorlock:client:deleteDoor")
AddEventHandler("guille_doorlock:client:deleteDoor", function()
    CreateThread(function()
        while true do
            Wait(1)
            local ped      = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local _, hitCoords, _ = RayCastGamePlayCamera(5000.0)
            local deleted  = false

            -- Draw visual feedback
            DrawLine(pedCoords, hitCoords, 255, 0, 0, 255)
            draw(38, "Remove")

            -- Draw markers on all registered doors
            for _, doorCfg in pairs(doors) do
                local markerPos
                if doorCfg._type ~= "double" then
                    markerPos = vector3(doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z)
                else
                    markerPos = vector3(doorCfg._textCoords.x, doorCfg._textCoords.y, doorCfg._textCoords.z)
                end
                DrawMarker(28, markerPos,
                    0.0, 0.0, 0.0,   -- direction
                    0.0, 180.0, 0.0,  -- rotation
                    0.18, 0.18, 0.18, -- scale
                    255, 0, 0, 255,   -- RGBA
                    false, true, 2, nil, nil, false)
            end

            -- E key pressed: attempt removal of the closest door
            if IsControlJustPressed(1, 38) then
                if not IsPedRagdoll(ped)
                    and not IsNuiFocusKeepingInput()
                    and not IsNuiFocused()
                then
                    for idx, doorCfg in pairs(doors) do
                        local testCoords
                        if doorCfg._type ~= "double" then
                            testCoords = vector3(doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z)
                        else
                            testCoords = vector3(doorCfg._textCoords.x, doorCfg._textCoords.y, doorCfg._textCoords.z)
                        end

                        local dist = #(hitCoords - testCoords)
                        if dist < INTERACTION_RADIUS then
                            TriggerServerEvent("guille_doorlock:server:syncRemove", idx)
                            deleted = true
                        end
                    end

                    if deleted then
                        print("Door Deleted")
                    else
                        print("No door detected.")
                    end
                    break
                end
            end

            -- Backspace / ESC: cancel delete mode
            if IsControlJustPressed(1, 73) then
                break
            end
        end
    end)
end)

-- ============================================================
--  REMOVE A SPECIFIC DOOR from local list
--  (guille_doorlock:client:removeGlobDoor)
-- ============================================================
RegisterNetEvent("guille_doorlock:client:removeGlobDoor")
AddEventHandler("guille_doorlock:client:removeGlobDoor", function(doorIndex)
    table.remove(doors, doorIndex)
end)

-- ============================================================
--  RESOURCE STOP: clear entity outline
-- ============================================================
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        if hoveredEntity then
            SetEntityDrawOutline(hoveredEntity, false)
        end
    end
end)

-- ============================================================
--  addDoor(type, dist, pin, key, status)
--  Starts an interactive raycast loop to let the admin select
--  the door entity and sends it to the server.
-- ============================================================
function addDoor(doorTypeArg, distArg, pinArg, keyArg, statusArg)
    distArg = tonumber(distArg)
    if not distArg then distArg = 1 end

    if doorTypeArg ~= "double" then
        -- -------------------------------------------------------
        --  Single door placement loop
        -- -------------------------------------------------------
        CreateThread(function()
            while true do
                Wait(1)
                local ped       = PlayerPedId()
                local pedCoords = GetEntityCoords(ped)
                local _, hitCoords, hitEntity = RayCastGamePlayCamera(5000.0)

                if IsEntityAnObject(hitEntity) then
                    draw(38, "Add")
                    DrawLine(pedCoords, hitCoords, 0, 255, 34, 255)

                    -- Update outline highlight
                    if hoveredEntity ~= hitEntity then
                        SetEntityDrawOutline(hoveredEntity, false)
                        hoveredEntity = hitEntity
                    end

                    -- E key: confirm door selection
                    if IsControlJustPressed(1, 38) then
                        if not IsPedRagdoll(ped)
                            and not IsNuiFocusKeepingInput()
                            and not IsNuiFocused()
                        then
                            local coords  = GetEntityCoords(hitEntity)
                            local model   = GetEntityModel(hitEntity)
                            local heading = GetEntityHeading(hitEntity)

                            if statusArg == nil then
                                TriggerServerEvent("guille_doorlock:server:addDoor",
                                    coords, model, heading, doorTypeArg, hitCoords,
                                    distArg, pinArg, keyArg)
                            else
                                TriggerServerEvent("guille_doorlock:server:addDoor",
                                    coords, model, heading, doorTypeArg, hitCoords,
                                    distArg, pinArg, keyArg, statusArg)
                            end

                            SetEntityDrawOutline(hitEntity, false)
                            break
                        end
                    end

                    -- Backspace / B: cancel (clear outline and exit)
                    if IsControlPressed(0, 73) or IsControlPressed(1, 73) then
                        SetEntityDrawOutline(hitEntity, false)
                        break
                    end

                    -- Entity still hovered: keep outline on
                    SetEntityDrawOutline(hitEntity, true)
                else
                    -- Raycast missed object: clear previous outline
                    if hoveredEntity ~= hitEntity then
                        SetEntityDrawOutline(hoveredEntity, false)
                        hoveredEntity = hitEntity
                    end
                end
            end
        end)
    else
        -- -------------------------------------------------------
        --  Double door placement loop (needs 2 door entities)
        -- -------------------------------------------------------
        local collectedDoors   = {}   -- list of { coords, model, heading }
        local outlinedEntities = {}   -- entity handles currently outlined

        CreateThread(function()
            while true do
                Wait(1)
                local ped       = PlayerPedId()
                local pedCoords = GetEntityCoords(ped)
                local _, hitCoords, hitEntity = RayCastGamePlayCamera(5000.0)

                if IsEntityAnObject(hitEntity) then
                    -- Keep all already-collected entities outlined
                    for _, ent in pairs(outlinedEntities) do
                        SetEntityDrawOutline(ent, true)
                    end

                    -- Prompt differs once both doors are selected
                    DrawLine(pedCoords, hitCoords, 0, 255, 34, 255)
                    if #collectedDoors ~= 2 then
                        draw(38, "Add")
                    else
                        draw(38, "Confirm 3D position")
                    end

                    hoveredEntity = hitEntity

                    -- E key
                    if IsControlJustPressed(1, 38) then
                        if not IsPedRagdoll(ped)
                            and not IsNuiFocusKeepingInput()
                            and not IsNuiFocused()
                        then
                            local coords  = GetEntityCoords(hitEntity)
                            local model   = GetEntityModel(hitEntity)
                            local heading = GetEntityHeading(hitEntity)

                            if #collectedDoors == 2 then
                                -- Second confirmation: send both doors to server
                                for _, ent in pairs(outlinedEntities) do
                                    SetEntityDrawOutline(ent, false)
                                end
                                outlinedEntities = {}

                                TriggerServerEvent("guille_doorlock:server:addDoubleDoor",
                                    collectedDoors, doorTypeArg, hitCoords,
                                    distArg, pinArg, keyArg)
                                collectedDoors = {}
                                break
                            else
                                -- First pass: add this door to the list
                                table.insert(collectedDoors, { coords = coords, model = model, heading = heading })
                                table.insert(outlinedEntities, hitEntity)
                            end

                            -- Refresh door list after a short delay
                            CreateThread(function()
                                Wait(500)
                                reloadDoors(function()
                                    exports.striano_combat:notify("Doors updated.")
                                end)
                            end)
                        end
                    end

                    -- Backspace / B: cancel (clear all outlines)
                    if IsControlPressed(0, 73) or IsControlPressed(1, 73) then
                        for _, ent in pairs(outlinedEntities) do
                            SetEntityDrawOutline(ent, false)
                        end
                        outlinedEntities = {}
                        collectedDoors   = {}
                        break
                    end
                end
            end
        end)
    end
end

-- ============================================================
--  REFRESH DOORS  (guille_doorlock:client:refreshDoors)
--  Called by the server after a new door is added globally.
-- ============================================================
RegisterNetEvent("guille_doorlock:client:refreshDoors")
AddEventHandler("guille_doorlock:client:refreshDoors", function(newDoor)
    table.insert(doors, newDoor)
    if newDoor.status ~= nil then
        table.insert(doorStatuses, "locked")
    end
end)

-- ============================================================
--  closestDoor()
--  Returns the index of the nearest door within 5 m, or nil.
-- ============================================================
function closestDoor()
    local bestIndex  = nil
    local bestDoor   = nil
    local bestDist   = 5.0
    local found      = false
    local pedCoords  = GetEntityCoords(PlayerPedId())

    for idx, doorCfg in pairs(doors) do
        local doorPos = vector3(doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z)
        local dist    = #(doorPos - pedCoords)
        if dist <= bestDist then
            found     = true
            bestDist  = dist
            bestDoor  = doorCfg
            bestIndex = idx
        end
    end

    if not found then bestIndex = nil end
    return bestIndex
end

-- ============================================================
--  MAIN DOOR LOOP
--  Runs every frame (or ~500ms when no door is nearby).
--  Handles:
--    - FreezeEntityPosition for normal/double doors
--    - DoorSystem API for slide doors
--    - Proximity detection → sets promptPos, nearDoor, activeDoorPin, activeDoorItem
--    - needsUpdate → triggers server sync
-- ============================================================
local doorLoopTick = {}          -- module-level table referenced by the loop
local door, door1, door2         -- temporary door entity handles (globals for compat)

CreateThread(function()
    while true do
        local anyNear    = false
        local waitMs     = 1

        for idx, doorCfg in pairs(doors) do
            local modelHash = GetHashKey(doorCfg._doorModel)
            local pedCoords = GetEntityCoords(PlayerPedId())
            local dtype     = doorCfg._type

            -- -------------------------------------------------------
            --  NORMAL door
            -- -------------------------------------------------------
            if dtype == "normal" then
                local doorPos = vector3(doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z)
                local dist    = #(pedCoords - doorPos)

                -- Within freeze radius (INTERACTION_RADIUS)
                if dist < INTERACTION_RADIUS then
                    door = GetClosestObjectOfType(
                        doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z,
                        1.0, doorCfg._doorModel, false, false, false)

                    if doorStatuses[idx] ~= nil then
                        FreezeEntityPosition(door, false)   -- opened: let physics handle
                    else
                        FreezeEntityPosition(door, true)    -- locked: freeze in place
                    end
                end

                -- Within interaction distance (dist + 0.35 buffer)
                local interactDist = doorCfg.dist + 0.35
                if dist < interactDist then
                    door = GetClosestObjectOfType(
                        doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z,
                        1.0, doorCfg._doorModel, false, false, false)

                    promptPos = vector3(doorCfg._textCoords.x, doorCfg._textCoords.y, doorCfg._textCoords.z)
                    anyNear   = true

                    -- Pin/item auth state for this door
                    activeDoorPin  = doorCfg.usePin  and doorCfg.pin  or nil
                    activeDoorItem = doorCfg.useitem and doorCfg.item or nil

                    -- Apply freeze and server sync
                    if doorStatuses[idx] ~= nil then
                        -- opened
                        FreezeEntityPosition(door, false)
                        if needsUpdate then
                            TriggerServerEvent("guille_doorlock:server:updateDoor", idx, nil)
                            needsUpdate = false
                        end
                    else
                        -- locked
                        FreezeEntityPosition(door, true)
                        if needsUpdate then
                            TriggerServerEvent("guille_doorlock:server:updateDoor", idx, "locked")
                            needsUpdate = false
                        end
                        if dtype == "normal" then
                            SetEntityHeading(door, doorCfg._heading)
                        end
                    end

                    waitMs = 100
                end

            -- -------------------------------------------------------
            --  DOUBLE door
            -- -------------------------------------------------------
            elseif dtype == "double" then
                local doorPos1 = vector3(
                    doorCfg._doorsDouble[1].coords.x,
                    doorCfg._doorsDouble[1].coords.y,
                    doorCfg._doorsDouble[1].coords.z)
                local doorPos2 = vector3(
                    doorCfg._doorsDouble[2].coords.x,
                    doorCfg._doorsDouble[2].coords.y,
                    doorCfg._doorsDouble[2].coords.z)
                local textPos  = vector3(doorCfg._textCoords.x, doorCfg._textCoords.y, doorCfg._textCoords.z)
                local dist     = #(pedCoords - textPos)

                -- Within freeze radius
                if dist < INTERACTION_RADIUS then
                    promptPos = textPos

                    door1 = GetClosestObjectOfType(doorPos1, 1.0, doorCfg._doorsDouble[1].model, false, false, false)
                    door2 = GetClosestObjectOfType(doorPos2, 1.0, doorCfg._doorsDouble[2].model, false, false, false)

                    if doorStatuses[idx] ~= nil then
                        -- opened
                        FreezeEntityPosition(door1, false)
                        FreezeEntityPosition(door2, false)
                    else
                        -- locked
                        FreezeEntityPosition(door1, true)
                        FreezeEntityPosition(door2, true)
                        SetEntityHeading(door1, doorCfg._doorsDouble[1].heading)
                        SetEntityHeading(door2, doorCfg._doorsDouble[2].heading)
                    end

                    -- Within interaction distance
                    if dist < doorCfg.dist then
                        activeDoorPin  = doorCfg.usePin  and doorCfg.pin  or nil
                        activeDoorItem = doorCfg.useitem and doorCfg.item or nil

                        if doorStatuses[idx] ~= nil then
                            -- opened
                            anyNear = true
                            FreezeEntityPosition(door1, false)
                            FreezeEntityPosition(door2, false)
                            if needsUpdate then
                                TriggerServerEvent("guille_doorlock:server:updateDoor", idx, nil)
                                needsUpdate  = false
                                activeDoorPin = nil
                            end
                        else
                            -- locked
                            anyNear = true
                            FreezeEntityPosition(door1, true)
                            FreezeEntityPosition(door2, true)
                            if needsUpdate then
                                TriggerServerEvent("guille_doorlock:server:updateDoor", idx, "locked")
                                needsUpdate  = false
                                activeDoorPin = nil
                            end
                            SetEntityHeading(door1, doorCfg._doorsDouble[1].heading)
                            SetEntityHeading(door2, doorCfg._doorsDouble[2].heading)
                        end

                        waitMs = 100
                    end
                end

            -- -------------------------------------------------------
            --  SLIDE door (uses GTA DoorSystem API)
            -- -------------------------------------------------------
            else
                local doorPos = vector3(doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z)
                local dist    = #(pedCoords - doorPos)

                if dist < INTERACTION_RADIUS then
                    door = GetClosestObjectOfType(
                        doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z,
                        1.0, doorCfg._doorModel, false, false, false)

                    local sysKey = doorSystemKey(doorCfg._doorModel, idx)

                    -- Register with door system if not already registered
                    if not IsDoorRegisteredWithSystem(sysKey) then
                        AddDoorToSystem(sysKey, doorCfg._doorModel, doorPos, false, false, false)
                        print(tostring(idx) .. " - Slider Registered")
                    end

                    if doorStatuses[idx] ~= nil then
                        -- opened: auto-distance 30, state 0
                        DoorSystemSetDoorState(sysKey, 0, false, false)
                        DoorSystemSetAutomaticDistance(sysKey, 30.0, false, false)
                    else
                        -- locked: auto-distance 0, state 4
                        DoorSystemSetAutomaticDistance(sysKey, 0.0, false, false)
                        DoorSystemSetDoorState(sysKey, 4, false, false)
                    end
                end

                -- Within interaction distance
                if dist < doorCfg.dist then
                    door = GetClosestObjectOfType(
                        doorCfg.doorCoords.x, doorCfg.doorCoords.y, doorCfg.doorCoords.z,
                        1.0, doorCfg._doorModel, false, false, false)

                    promptPos = vector3(doorCfg._textCoords.x, doorCfg._textCoords.y, doorCfg._textCoords.z)
                    anyNear   = true

                    activeDoorPin  = doorCfg.usePin  and doorCfg.pin  or nil
                    activeDoorItem = doorCfg.useitem and doorCfg.item or nil

                    local sysKey = doorSystemKey(doorCfg._doorModel, idx)

                    if doorStatuses[idx] ~= nil then
                        -- opened
                        DoorSystemSetDoorState(sysKey, 0, false, false)
                        DoorSystemSetAutomaticDistance(sysKey, 30.0, false, false)
                        if needsUpdate then
                            TriggerServerEvent("guille_doorlock:server:updateDoor", idx, nil)
                            needsUpdate = false
                        end
                    else
                        -- locked
                        DoorSystemSetDoorState(sysKey, 4, false, false)
                        DoorSystemSetAutomaticDistance(sysKey, 0.0, false, false)
                        if needsUpdate then
                            TriggerServerEvent("guille_doorlock:server:updateDoor", idx, "locked")
                            needsUpdate = false
                        end
                    end

                    waitMs = 100
                end
            end
        end

        -- Update nearDoor flag; if no door nearby, slow down polling
        if anyNear then
            nearDoor = true
        else
            nearDoor = false
            Wait(500)
        end

        Wait(waitMs)
    end
end)

-- ============================================================
--  animatePlyDoor()
--  Plays the key-fob animation + door sound effect.
-- ============================================================
function animatePlyDoor()
    ExecuteCommand("e keyfob2")
    PlaySoundFrontend(-1, "LIMIT", "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS", true)
end

-- ============================================================
--  UPDATE DOOR STATE  (guille_doorlock:client:updateDoorState)
--  Server broadcasts state changes to all clients.
-- ============================================================
RegisterNetEvent("guille_doorlock:client:updateDoorState")
AddEventHandler("guille_doorlock:client:updateDoorState", function(doorIndex, newStatus)
    doorStatuses[doorIndex] = newStatus
end)

-- ============================================================
--  lockdoor COMMAND  (mapped to "E" key)
--  Checks pin / item key, toggles the door open/closed.
-- ============================================================
RegisterCommand("lockdoor", function()
    if not nearDoor then return end

    -- No pin and no item key required → open/close immediately
    if activeDoorPin == nil then
        needsUpdate = true
        ExecuteCommand("e pointdown")
        return
    end

    -- Pin check
    if activeDoorPin then
        local pinNum = tonumber(activeDoorPin)
        -- Bypass codes: 9999, 99999, 999999
        if pinNum ~= 9999 and pinNum ~= 99999 and pinNum ~= 999999 then
            ExecuteCommand("e mani4")
            local input = exports.striano_core:OpenInput("Insert Pin", "", { maxLen = 16 })

            if input ~= nil then
                local enteredStr = tostring(input)
                local storedStr  = tostring(activeDoorPin)
                if enteredStr == storedStr then
                    -- Pin correct
                    needsUpdate   = true
                    activeDoorPin = nil
                    ExecuteCommand("e pointdown")
                    return
                end
            end

            -- Wrong pin
            ExecuteCommand("e shrug4")
            -- fall through to item check (if any)
        else
            -- Bypass pin matched: open/close
            needsUpdate   = true
            activeDoorPin = nil
            ExecuteCommand("e pointdown")
            return
        end
    end

    -- Item key check
    if activeDoorItem then
        local keysHeld = LocalPlayer.state.keysHeld
        if not keysHeld then keysHeld = {} end

        if keysHeld[activeDoorItem] then
            -- Player has the key item
            ExecuteCommand("e pointdown")
            needsUpdate    = true
            activeDoorItem = nil
        else
            local itemNum = tonumber(activeDoorItem)
            -- Bypass codes: 9999, 99999, 999999
            if itemNum ~= 9999 and itemNum ~= 99999 and itemNum ~= 999999 then
                exports.striano_combat:submexError(
                    "You don't have the keys: " .. tostring(activeDoorItem) .. ".")
                ExecuteCommand("e shrug4")
            end
        end
    end
end, false)

RegisterKeyMapping("lockdoor", "Apri Porta", "keyboard", "e")

-- ============================================================
--  RayCastGamePlayCamera(distance)
--  Returns: hit (bool), hitCoords (vector3), hitEntity (int)
-- ============================================================
function RayCastGamePlayCamera(distance)
    local camRot   = GetGameplayCamRot()
    local camCoord = GetGameplayCamCoord()
    local dir      = RotationToDirection(camRot)

    local dest = {
        x = camCoord.x + dir.x * distance,
        y = camCoord.y + dir.y * distance,
        z = camCoord.z + dir.z * distance,
    }

    local rayHandle = StartShapeTestRay(
        camCoord.x, camCoord.y, camCoord.z,
        dest.x, dest.y, dest.z,
        -1, PlayerPedId(), 0)

    local _, hit, hitCoords, _, hitEntity = GetShapeTestResult(rayHandle)
    return hit, hitCoords, hitEntity
end

-- ============================================================
--  RotationToDirection(rotation)
--  Converts Euler rotation (degrees) to a unit direction vector.
-- ============================================================
function RotationToDirection(rotation)
    local rad = {
        x = math.pi / 180 * rotation.x,
        y = math.pi / 180 * rotation.y,
        z = math.pi / 180 * rotation.z,
    }

    local cosX = math.cos(rad.x)
    return {
        x = -math.sin(rad.z) * math.abs(cosX),
        y =  math.cos(rad.z) * math.abs(cosX),
        z =  math.sin(rad.x),
    }
end
