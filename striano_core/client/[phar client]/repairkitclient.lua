-- repairkitclient.lua
-- Client-side repair kit item handler.
-- When the player uses the repair kit item (esx_repairkit:onUse), it finds
-- the nearest vehicle (in order: occupied > nearby > raycast) and repairs it.
-- Also handles the "fixaVeicolo" event which plays the mechanic animation
-- and fully restores the vehicle.

--- Cast a ray 4 m in front of the player and return the hit entity.
--- Used as a last-resort vehicle lookup.
local function getVehicleInFrontOfPlayer()
    local ped     = PlayerPedId()
    local origin  = GetEntityCoords(ped)
    local target  = GetOffsetFromEntityInWorldCoords(ped, 0.0, 4.0, 0.0)
    local handle  = CastRayPointToPoint(origin.x, origin.y, origin.z,
                                        target.x, target.y, target.z,
                                        10, ped, 0)
    local _, _, _, _, hitEntity = GetRaycastResult(handle)
    return hitEntity
end

-- ─── esx_repairkit:onUse ─────────────────────────────────────────────────
-- Player used a repair kit item from the inventory.
RegisterNetEvent("esx_repairkit:onUse")
AddEventHandler("esx_repairkit:onUse", function()
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped, false) then
        -- Player is inside a vehicle — repair it directly
        local vehicle = GetVehiclePedIsIn(ped, true)
        TriggerEvent("fixaVeicolo", vehicle)
    else
        -- Player is on foot — find the nearest vehicle
        local coords  = GetEntityCoords(ped)
        local vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 70)

        if not vehicle or vehicle == 0 then
            -- Wider search including more vehicle types
            vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 9.5, 0, 12294)
        end

        if not vehicle or vehicle == 0 then
            -- Fallback: 4 m forward raycast
            vehicle = getVehicleInFrontOfPlayer()
        end

        if not vehicle or vehicle == 0 then
            -- Last resort: raycast 5 m forward with broader flags
            local origin = GetEntityCoords(ped)
            local target = GetOffsetFromEntityInWorldCoords(ped, 0.0, 5.0, 0.0)
            local handle = CastRayPointToPoint(origin.x, origin.y, origin.z,
                                               target.x, target.y, target.z,
                                               30, ped, 0)
            local _, _, _, _, hitEntity = GetRaycastResult(handle)
            vehicle = hitEntity
        end

        if DoesEntityExist(vehicle) and vehicle ~= nil and vehicle ~= 0 then
            -- Request control before fixing
            if not IsPedAPlayer(vehicle) then
                NetworkRequestControlOfEntity(vehicle)
            end
        end

        if vehicle ~= nil and vehicle ~= 0 then
            SetVehicleFixed(vehicle)
            SetVehicleUndriveable(vehicle, false)
            TriggerEvent("fixaVeicolo", vehicle)
        else
            exports.striano_combat:submexError("Nessun veicolo nelle vicinanze.")
        end
    end
end)

-- ─── fixaVeicolo ─────────────────────────────────────────────────────────
-- Animate vehicle repair (mechanic emote, hood open/close) and fully restore
-- the vehicle's health + engine.
-- @param vehicle  Vehicle entity to repair
-- @param silent   If non-nil, skip animation and hood sequence
RegisterNetEvent("fixaVeicolo")
AddEventHandler("fixaVeicolo", function(vehicle, silent)
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, true)
    ExecuteCommand("cinv")

    -- Acquire network control of the vehicle
    local attempts = 0
    SetEntityAsMissionEntity(vehicle)
    while not NetworkHasControlOfEntity(vehicle) and attempts < 100 do
        Wait(0)
        NetworkRequestControlOfEntity(vehicle)
        attempts = attempts + 1
    end

    -- Play mechanic emote if not silent
    if silent == nil then
        ExecuteCommand("e meccanico")
    end

    SetEntityAsMissionEntity(vehicle)
    NetworkRequestControlOfEntity(vehicle)

    -- Open/close hood for visual feedback (non-silent only)
    if silent == nil then
        SetVehicleDoorOpen(vehicle, 4, 0, 0)
        Wait(3500)
        SetVehicleDoorShut(vehicle, 4, 0, 0)
    end

    -- Restore vehicle
    SetVehicleFixed(vehicle)
    SetVehicleDeformationFixed(vehicle)
    Wait(25)
    SetVehicleEngineHealth(vehicle, 1000.0)

    -- Stop emote and clean hands if not silent
    if silent == nil then
        ExecuteCommand("e c")
        ExecuteCommand("e puliscimani")
    end

    -- Notify server repair is done; re-apply fix to be sure
    TriggerServerEvent("fixamiVeicolo")
    SetVehicleFixed(vehicle)
    SetVehicleDeformationFixed(vehicle)

    -- Unfreeze player and ensure driveable
    FreezeEntityPosition(PlayerPedId(), false)
    SetVehicleUndriveable(vehicle, false)

    -- Reduce hygiene status (repairing is dirty work)
    local serverId = GetPlayerServerId(PlayerId())
    TriggerServerEvent("status:remove", serverId, "igiene", 30000)
end)
