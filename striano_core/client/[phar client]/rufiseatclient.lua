-- rufiseatclient.lua
-- Proximity Vehicle Seat Entry — shows "." dot prompt at empty door windows,
-- G key (49) enters that seat

local pollInterval = 1000  -- dynamic wait: 7ms when near a valid vehicle, 1000ms otherwise

-- ─────────────────────────────────────────────
-- 3D World Text Helper
-- ─────────────────────────────────────────────

local function DrawTextAt3D(x, y, z, text)
    local onScreen, screenX, screenY = World3dToScreen2d(x, y, z)
    if not onScreen then return end

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(screenX, screenY)
end

-- ─────────────────────────────────────────────
-- Door Window Bone Definitions
-- seat 0 = front-right  (window_rf)
-- seat 1 = rear-right   (window_rr)
-- seat 2 = rear-left    (window_lr)
-- ─────────────────────────────────────────────

local doorWindows = {
    { bone = "window_lr", seatId = 2,  minDist = 0.62, maxDist = 0.80 },
    { bone = "window_rr", seatId = 1,  minDist = 0.62, maxDist = 0.80 },
    { bone = "window_rf", seatId = 0,  minDist = 0.62, maxDist = 0.80 },
}

-- ─────────────────────────────────────────────
-- Main Proximity Polling Thread
-- ─────────────────────────────────────────────

CreateThread(function()
    while true do
        Wait(pollInterval)
        pollInterval = 1000  -- reset to slow poll; set to 7 when actively near vehicle

        local myPed = PlayerPedId()
        local myPos = GetEntityCoords(myPed)

        -- Find closest vehicle within 5 metres
        local closestVehicle = GetClosestVehicle(myPos.x, myPos.y, myPos.z, 5.0, 0, 71)
        if not closestVehicle or closestVehicle == 0 then goto continue end

        -- Skip if driver seat is occupied by a player (let normal entry handle it)
        local driverPed = GetPedInVehicleSeat(closestVehicle, -1)
        if DoesEntityExist(driverPed) and IsPedAPlayer(driverPed) then goto continue end

        -- Check each door window bone
        for _, door in ipairs(doorWindows) do
            local boneIndex = GetEntityBoneIndexByName(closestVehicle, door.bone)
            if boneIndex == -1 then goto nextDoor end

            local bonePos = GetWorldPositionOfEntityBone(closestVehicle, boneIndex)
            local distToDoor = #(myPos - bonePos)

            if distToDoor >= door.minDist and distToDoor <= door.maxDist then
                -- Check seat is empty
                local pedInSeat = GetPedInVehicleSeat(closestVehicle, door.seatId)
                local seatEmpty = not DoesEntityExist(pedInSeat) or pedInSeat == 0

                -- Check vehicle is not locked
                local lockState = GetVehicleDoorLockStatus(closestVehicle)
                local isUnlocked = lockState == 0 or lockState == 1

                if seatEmpty and isUnlocked then
                    -- Draw entry prompt dot slightly above bone
                    DrawTextAt3D(bonePos.x, bonePos.y, bonePos.z + 0.3, ".")
                    pollInterval = 7  -- stay in fast-poll mode

                    -- G key (49) — enter vehicle at this seat
                    if IsControlJustPressed(0, 49) then
                        TaskEnterVehicle(myPed, closestVehicle, 10000, door.seatId, 1.0, 1, 0)
                    end
                end
            end

            ::nextDoor::
        end

        ::continue::
    end
end)
