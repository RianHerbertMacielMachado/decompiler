-- ============================================================
--  lavaveicoloclient.lua  –  Vehicle Wash System (Client)
--  Refactored from decompiled bytecode
-- ============================================================

-- ─────────────────────────────────────────────────────────────
--  STATE
-- ─────────────────────────────────────────────────────────────
local isWashing   = false   -- lock: prevent multiple concurrent wash actions
local washTicks   = 0       -- seconds elapsed in current wash animation

-- Pending inventory-consume callbacks  [requestId] = callback
local pendingConsumeCallbacks = {}
local consumeRequestId        = 0

-- ─────────────────────────────────────────────────────────────
--  INVENTORY CONSUME HELPER
-- ─────────────────────────────────────────────────────────────
local function TryConsumeItem(itemName, amount, callback, target)
    consumeRequestId = consumeRequestId + 1
    local id = consumeRequestId
    pendingConsumeCallbacks[id] = callback
    TriggerServerEvent("inv3d:tryConsumeItem", id, target or "player", itemName, amount or 1)
end

RegisterNetEvent("inv3d:tryConsumeItemResult")
AddEventHandler("inv3d:tryConsumeItemResult", function(requestId, success, extra)
    local cb = pendingConsumeCallbacks[requestId]
    if cb then
        pendingConsumeCallbacks[requestId] = nil
        cb(success, extra)
    end
end)

-- ─────────────────────────────────────────────────────────────
--  NEAREST VEHICLE FINDER  (3 m radius, raycast fallback)
-- ─────────────────────────────────────────────────────────────
local function GetNearestVehicle()
    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    local radius = 3.0

    local veh = GetClosestVehicle(pedPos.x, pedPos.y, pedPos.z, radius, 0, 70)
    if not veh or veh == 0 then
        veh = GetClosestVehicle(pedPos.x, pedPos.y, pedPos.z, radius, 0, 12294)
    end
    if not veh or veh == 0 then
        -- Raycast forward
        local fwdPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, radius, 0.0)
        local ray    = CastRayPointToPoint(pedPos.x, pedPos.y, pedPos.z,
                                           fwdPos.x, fwdPos.y, fwdPos.z,
                                           30, ped, 0)
        local _, _, _, _, hit = GetRaycastResult(ray)
        veh = hit
    end

    if veh and veh ~= 0 then return veh end
    return 0
end

-- ─────────────────────────────────────────────────────────────
--  /washcar  –  wash nearest vehicle using "saponeauto" item
-- ─────────────────────────────────────────────────────────────
RegisterCommand("washcar", function()
    if isWashing then return end

    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    local veh    = GetNearestVehicle()

    -- Validate vehicle exists and is close enough
    if veh == 0 or not DoesEntityExist(veh) then
        ExecuteCommand("e shrug5")
        exports.striano_combat:testo3d("No vehicle.")
        return
    end

    local vehPos = GetEntityCoords(veh)
    if #(pedPos - vehPos) > 3.0 then
        ExecuteCommand("e shrug5")
        exports.striano_combat:submex("Too distance.")
        return
    end

    -- Require engine off
    if GetIsVehicleEngineRunning(veh) then
        exports.striano_combat:submex("Turn off the vehicle.")
        ExecuteCommand("e shrug4")
        return
    end

    -- Consume one "saponeauto" item
    TryConsumeItem("saponeauto", 1, function(success)
        if not success then
            exports.striano_combat:submex("No car soap.")
            ExecuteCommand("e shrug4")
            return
        end

        -- Acquire network control of the vehicle
        while not NetworkHasControlOfEntity(veh) and DoesEntityExist(veh) do
            Wait(0)
            NetworkRequestControlOfEntity(veh)
        end

        isWashing = true
        makeEntityFaceEntity(ped, veh)
        ExecuteCommand("e clean2")
        Wait(1000)

        -- Confirm animation started
        if IsEntityPlayingAnim(ped, "amb@world_human_maid_clean@", "base", 3) then
            exports.striano_combat:testo3d("Washing.")
        end

        -- Wash loop: each second of animation removes 1 dirt level, up to 15 seconds
        washTicks = 0
        while true do
            if not IsEntityPlayingAnim(ped, "amb@world_human_maid_clean@", "base", 3) then break end
            if washTicks >= 15 then break end

            Wait(1000)

            local curPedPos = GetEntityCoords(ped)
            local curVehPos = GetEntityCoords(veh)
            if #(curPedPos - curVehPos) < 5.0 then
                washTicks = washTicks + 1
                SetVehicleDirtLevel(veh, GetVehicleDirtLevel(veh) - 1.0)
            else
                break  -- player moved away
            end
        end

        washTicks = 0
        ExecuteCommand("e puliscimani")
        isWashing = false
    end, "player")
end)
