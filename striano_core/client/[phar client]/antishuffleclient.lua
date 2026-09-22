-- antishuffleclient.lua
-- Anti-shuffle / smart seat system.
-- Prevents unintended shuffling to driver seat when passenger enters a vehicle.
-- Also handles intelligent rear-seat entry based on vehicle heading alignment,
-- and allows manual seat shuffle with a button hold (control 21 = Left Shift).
-- Exposes helpers: areExemptKeysReleased, enterRearSeat, getAngleBetweenForwardVectors,
-- getDotProduct, getMagnitude, getPedSeat, getVehicleInFront, normalizeAngle, roundFloat.

-- Keys exempt from shuffle blocking (default: 57 = E = interact)
local exemptKeys    = { 57 }
local isEntering    = false   -- true while ped is in a TaskEnterVehicle

-- ─── Helper: check if all exempt keys are released ───────────────────────
--- @return boolean  true if every key in exemptKeys is released (and player is alive)
function areExemptKeysReleased()
    if #exemptKeys == 0 then return false end
    local released = 0
    for _, key in ipairs(exemptKeys) do
        if IsControlReleased(0, key) then
            if not isDead then
                released = released + 1
            end
        end
    end
    return (released == #exemptKeys)
end

-- ─── Helper: dot product of two vectors ──────────────────────────────────
function getDotProduct(a, b)
    return a.x * b.x + a.y * b.y + a.z * b.z
end

-- ─── Helper: magnitude (length) of a vector ──────────────────────────────
function getMagnitude(v)
    return math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
end

-- ─── Helper: angle (degrees) between two forward vectors ─────────────────
function getAngleBetweenForwardVectors(a, b)
    local dot = getDotProduct(a, b)
    local mag = getMagnitude(a) * getMagnitude(b)
    return math.deg(math.acos(dot / mag))
end

-- ─── Helper: normalize angle to [0, 360] ─────────────────────────────────
function normalizeAngle(angle)
    while angle < 0   do angle = angle + 360 end
    while angle > 360 do angle = angle - 360 end
    return angle
end

-- ─── Helper: round a float to a given number of decimal places ───────────
function roundFloat(value, decimals)
    decimals = decimals or 0
    return tonumber(string.format("%." .. decimals .. "f", value))
end

-- ─── Helper: get the seat index a ped occupies in a vehicle (-2 = not found) ─
function getPedSeat(ped, vehicle)
    local seats = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))
    for seat = -1, seats do
        if GetPedInVehicleSeat(vehicle, seat) == ped then
            return seat
        end
    end
    return -2
end

-- ─── Helper: shape-test ray 7 m forward to find a vehicle ─────────────────
function getVehicleInFront(ped)
    local origin  = GetEntityCoords(ped)
    local forward = GetOffsetFromEntityInWorldCoords(ped, 0.0, 7.0, 0.0)
    local handle  = StartShapeTestRay(origin.x, origin.y, origin.z,
                                      forward.x, forward.y, forward.z,
                                      2, ped, 0)
    local _, _, _, _, hitEntity = GetShapeTestResult(handle)
    return hitEntity
end

-- ─── Helper: make ped enter rear seat of vehicle in front ─────────────────
-- Checks heading alignment between the ped and the vehicle to decide
-- which rear seat (1 = left-rear, 2 = right-rear) to assign.
function enterRearSeat(ped)
    if IsPedInAnyVehicle(player, true) then return end

    local vehicle = getVehicleInFront(ped)
    if vehicle == 0 then return end

    local vehHeading = GetEntityHeading(vehicle)
    local pedHeading = GetEntityHeading(ped)
    local angle      = getAngleBetweenForwardVectors(
                           GetEntityForwardVector(ped),
                           GetEntityForwardVector(vehicle))

    local rightSideHeading = normalizeAngle(pedHeading + angle)
    local leftSideHeading  = normalizeAngle(pedHeading - angle)
    local numSeats         = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))

    if roundFloat(rightSideHeading) == roundFloat(vehHeading) then
        -- Right-aligned → seat 1 (rear-left in GTA index)
        if numSeats > 2 and IsVehicleSeatFree(vehicle, 1) then
            TaskEnterVehicle(ped, vehicle, -1, 1, 1.0, 1, 0)
        end
    else
        -- Left-aligned → seat 2 (rear-right)
        if roundFloat(leftSideHeading) == roundFloat(vehHeading)
        and numSeats > 2 and IsVehicleSeatFree(vehicle, 2) then
            TaskEnterVehicle(ped, vehicle, -1, 2, 1.0, 1, 0)
        end
    end
end

-- ─── Main loop: anti-shuffle + smart shuffle ──────────────────────────────
CreateThread(function()
    while true do
        local ped = PlayerPedId()

        -- Ensure config flag 184 (disable shuffle) is always set by default
        if not GetPedConfigFlag(ped, 184, 1) then
            SetPedConfigFlag(ped, 184, true)
        end

        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, 0)

            if not areExemptKeysReleased() then
                -- Blocked: disable shuffle when exempt keys are not fully released
                if GetPedConfigFlag(ped, 184, 1) then
                    SetPedConfigFlag(ped, 184, false)
                end

                if not isEntering then
                    local seat      = getPedSeat(ped, vehicle)
                    -- Find the "other side" seat (odd ↔ even swap)
                    local otherSeat = (seat % 2 == 1) and (seat + 1) or (seat - 1)

                    if seat ~= 0 then
                        local numSeats = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))
                        -- Only shuffle if the target seat exists and is free
                        if numSeats >= (otherSeat + 2) and IsVehicleSeatFree(vehicle, otherSeat) then
                            if GetEntitySpeed(ped) < 1.0 then
                                -- Require Left Shift to actually shuffle
                                if IsControlPressed(0, 21) then
                                    TaskShuffleToNextVehicleSeat(ped, vehicle)
                                end
                            end
                        end
                    end
                end
            end

            -- Track enter-vehicle task (task 165)
            if GetIsTaskActive(ped, 165) then
                isEntering = true
                -- If trying to enter seat -1 (driver) while shuffle is locked, redirect to seat 0
                if GetSeatPedIsTryingToEnter(ped) == -1 then
                    if GetPedConfigFlag(ped, 184, 1) then
                        SetPedIntoVehicle(ped, vehicle, 0)
                        SetVehicleCloseDoorDeferedAction(vehicle, 0)
                    end
                end
            else
                isEntering = false
            end
        end

        Wait(0)

        -- Slow down the loop when ped is not seated
        if not IsPedSittingInAnyVehicle(ped) then
            Wait(1000)
        end
    end
end)
