-- =============================================================================
-- noclipclient.lua
-- No-clip / free-fly movement system for striano_core (admin only).
-- Also contains an admin free-camera ("FreeCameraAdmin") for spectating.
-- =============================================================================

-- ---------------------------------------------------------------------------
-- Ground-snap state (last known safe landing position)
-- ---------------------------------------------------------------------------
local lastSafePos     = nil   -- vector3 – last ground position above z > -200
local lastSafeHeading = 0.0   -- entity heading at last safe pos
local wasInVehicle    = false -- whether ped was in a vehicle at last safe pos

-- ---------------------------------------------------------------------------
-- Config
-- ---------------------------------------------------------------------------
confignoclip = {
    controls = {
        openKey      = 168,
        goUp         = 44,
        goDown       = 38,
        turnLeft     = 34,
        turnRight    = 35,
        goForward    = 32,
        goBackward   = 33,
        changeSpeed  = 21,
    },
    speeds = {
        { label = "Slow",   speed = 1  },
        { label = "Normal", speed = 2  },
        { label = "Fast",   speed = 10 },
        { label = "Ultra",  speed = 35 },
    },
    offsets = { y = 0.1, z = 0.1, h = 2 },
    bgR = 0, bgG = 0, bgB = 0, bgA = 80,
}

-- ---------------------------------------------------------------------------
-- Runtime state
-- ---------------------------------------------------------------------------
noclipActive = false
index        = 1                                -- current speed tier index

local pedVisible    = true                      -- whether noclip entity is visible
local currentSpeed  = confignoclip.speeds[1].speed
local currentSpeedLabel = confignoclip.speeds[1].label
local noclipEntity  = nil                       -- ped or vehicle being noclipped
local noclipHeading = 0.0                       -- heading accumulated by turn keys

-- ---------------------------------------------------------------------------
-- isValidGroundPos(hit, coords)
-- Returns true if the raycast hit and the z is above -200.
-- ---------------------------------------------------------------------------
local function isValidGroundPos(hit, coords)
    if not hit then return false end
    if not coords then return false end
    return coords.z > -200.0
end

-- ---------------------------------------------------------------------------
-- RaycastGround(pos, maxDist)
-- Fires a downward shape test from pos (up +2) to pos - maxDist.
-- Falls back to iterative GetGroundZFor_3dCoord scan.
-- Returns: hit (bool), groundCoords (vector3 or nil)
-- ---------------------------------------------------------------------------
function RaycastGround(pos, maxDist)
    if not maxDist then maxDist = 1500.0 end

    local from = vector3(pos.x, pos.y, pos.z + 2.0)
    local to   = vector3(pos.x, pos.y, pos.z - maxDist)

    local handle = StartShapeTestRay(
        from.x, from.y, from.z,
        to.x,   to.y,   to.z,
        17,
        PlayerPedId(),
        0
    )
    local result, hit, endCoords = GetShapeTestResult(handle)
    if hit == 1 then
        return true, endCoords
    end

    -- Iterative fallback via GetGroundZFor_3dCoord
    local ok, gz = GetGroundZFor_3dCoord(pos.x, pos.y, pos.z + 0.0, false)
    if ok then return true, gz end

    for z = pos.z, pos.z - 1500.0, -25.0 do
        ok, gz = GetGroundZFor_3dCoord(pos.x, pos.y, z + 0.0, false)
        if ok then return true, gz end
    end

    return false, nil
end

-- ---------------------------------------------------------------------------
-- UpdateLastSafePos()
-- Raycasts downward from noclipEntity (or player ped) and saves the result
-- as lastSafePos when a valid ground is found.
-- ---------------------------------------------------------------------------
function UpdateLastSafePos()
    local ped    = PlayerPedId()
    local entity = noclipEntity or ped
    local pos    = GetEntityCoords(entity)

    local hit, groundCoords = RaycastGround(pos, 1000.0)
    if isValidGroundPos(hit, groundCoords) then
        lastSafePos     = vector3(pos.x, pos.y, groundCoords.z + 1.0)
        lastSafeHeading = GetEntityHeading(entity)
        wasInVehicle    = IsPedInAnyVehicle(ped, false)
    end
end

-- ---------------------------------------------------------------------------
-- stopNoClipNoGround()
-- Ends noclip without attempting to find ground (used when grid is not needed).
-- Restores entity state, resets speed index.
-- ---------------------------------------------------------------------------
function stopNoClipNoGround()
    noclipActive = false
    local ped = PlayerPedId()

    exports.striano_combat:notify("")
    ExecuteCommand("e c")

    index             = 1
    currentSpeed      = confignoclip.speeds[1].speed
    currentSpeedLabel = confignoclip.speeds[1].label

    -- Restore visibility
    if not pedVisible then
        SetEntityVisible(noclipEntity, true)
        pedVisible = true
    end

    EndCameraAdmin()
    SetEntityCollision(noclipEntity, true, true)
    FreezeEntityPosition(noclipEntity, false)
    SetEntityInvincible(noclipEntity, false)
    SetVehicleRadioEnabled(noclipEntity, false)
    SetEntityHeading(ped, lastSafeHeading)
    ResetEntityAlpha(PlayerPedId())
    EndCameraAdmin()
end

-- ---------------------------------------------------------------------------
-- np command — toggle noclip (admin-only)
-- ---------------------------------------------------------------------------
RegisterCommand("np", function(source, args, rawCommand)
    -- Guard: entering vehicle animation
    local ped = PlayerPedId()
    local enterVeh = GetVehiclePedIsEntering(ped)
    if enterVeh ~= nil and enterVeh ~= 0 then return end

    -- Guard: trying to open a locked vehicle
    if IsPedTryingToEnterALockedVehicle(ped) then return end

    -- Guard: admin level check
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then
        print("Not allowed.")
        return
    end

    noclipActive = not noclipActive

    -- Determine target entity (vehicle or ped)
    if IsPedInAnyVehicle(ped, false) then
        noclipEntity = GetVehiclePedIsIn(ped, false)
    else
        noclipEntity = ped
    end

    currentSpeed      = confignoclip.speeds[index].speed
    currentSpeedLabel = confignoclip.speeds[index].label

    ExecuteCommand("fixcrouch")
    exports.striano_combat:fodera2()

    if noclipActive then
        exports.striano_combat:notify("No-Clip " .. currentSpeedLabel .. ".")
        noclipHeading = GetEntityHeading(noclipEntity)

        vainoclip(PlayerPedId())
        pedVisible = false
        FreeCameraAdmin()
        SetEntityVisible(noclipEntity, pedVisible)
        exports.striano_combat:stopsuperjump()

        SetEntityCollision(noclipEntity, not noclipActive, not noclipActive)
        FreezeEntityPosition(noclipEntity, noclipActive)
        SetEntityInvincible(noclipEntity, noclipActive)
        SetVehicleRadioEnabled(noclipEntity, false)
    else
        stopNoClipNoGround()
    end
end)

-- ---------------------------------------------------------------------------
-- disableIK(ped)
-- Disables all IK modes while noclip is active, then re-enables when it stops.
-- ---------------------------------------------------------------------------
function disableIK()
    local ped = PlayerPedId()
    SetPedLegIkMode(ped, false)
    SetPedCanHeadIk(ped, false)
    SetPedCanArmIk(ped, false)

    CreateThread(function()
        while noclipActive do
            Wait(0)
        end
        SetPedLegIkMode(ped, true)
        SetPedCanHeadIk(ped, true)
        SetPedCanArmIk(ped, true)
    end)
end

-- ---------------------------------------------------------------------------
-- vainoclip(ped)
-- Main noclip movement loop thread.
-- ---------------------------------------------------------------------------
function vainoclip(ped)
    CreateThread(function()
        disableIK()

        while true do
            Wait(0)
            if not noclipActive then return end

            -- Disable conflicting controls
            DisableControlAction(0, confignoclip.controls.goUp)
            DisableControlAction(0, 44)
            DisableControlAction(0, 23)
            DisableControlAction(0, 75, true)
            DisableControlAction(27, 75, true)

            -- HUD hints
            local editorInteracting = exports.striano_editor:eInteractPos()
            if editorInteracting == nil then
                draw(21, "Change Speed", 44, "Up", 38, "Down", 26, "Hide", 36, "Stop", 22, "Stop & Ground")
            else
                draw(44, "Up", 38, "Down", 26, "Hide", 36, "Stop")
            end

            UpdateLastSafePos()

            -- Force Slow speed when editor interaction is active
            if index ~= 1 then
                if exports.striano_editor:eInteractPos() ~= nil then
                    currentSpeed      = confignoclip.speeds[1].speed
                    currentSpeedLabel = confignoclip.speeds[1].label
                    index = 1
                end
            end

            -- Cycle speed (changeSpeed key, only outside editor)
            if IsControlJustPressed(1, confignoclip.controls.changeSpeed) then
                if exports.striano_editor:eInteractPos() == nil then
                    if index < 4 then
                        index = index + 1
                    else
                        index = 1
                    end
                    currentSpeed      = confignoclip.speeds[index].speed
                    currentSpeedLabel = confignoclip.speeds[index].label
                    exports.striano_combat:notify("No-Clip " .. currentSpeedLabel .. ".")
                end
            end

            -- Movement offsets
            local forwardOffset = 0.0
            local verticalOffset = 0.0

            if IsControlPressed(0, confignoclip.controls.goForward) then
                forwardOffset = confignoclip.offsets.y
            end
            if IsControlPressed(0, confignoclip.controls.goBackward) then
                forwardOffset = -confignoclip.offsets.y
            end

            -- Turn left/right
            if IsControlPressed(0, confignoclip.controls.turnLeft) then
                noclipHeading = noclipHeading + confignoclip.offsets.h
            end
            if IsControlPressed(0, confignoclip.controls.turnRight) then
                noclipHeading = noclipHeading - confignoclip.offsets.h
            end

            -- Go up
            if IsDisabledControlPressed(0, confignoclip.controls.goUp) then
                verticalOffset = confignoclip.offsets.z
            end

            -- Toggle visibility (H key / hide, without Shift)
            if IsDisabledControlJustReleased(0, 26) then
                if not IsControlPressed(0, 21) then
                    if not pedVisible then
                        pedVisible = true
                        local rot = GetEntityRotation(noclipEntity)
                        SetEntityRotation(noclipEntity, 0.0, 0.0, rot.z)
                        EndCameraAdmin()
                    else
                        pedVisible = false
                        FreeCameraAdmin()
                    end
                    SetEntityVisible(noclipEntity, pedVisible)
                end
            end

            -- Go down (different control for vehicle vs on-foot)
            if IsPedInAnyVehicle(ped, false) then
                if IsControlPressed(0, 73) or IsDisabledControlPressed(0, 73) then
                    verticalOffset = -confignoclip.offsets.z
                end
            else
                if IsControlPressed(0, confignoclip.controls.goDown)
                or IsDisabledControlPressed(0, confignoclip.controls.goDown) then
                    verticalOffset = -confignoclip.offsets.z
                end
            end

            -- Apply movement
            local speedMult = (currentSpeed + 0.1)
            local newPos = GetOffsetFromEntityInWorldCoords(
                noclipEntity,
                0.0,
                forwardOffset  * speedMult,
                verticalOffset * speedMult
            )

            -- Apply heading
            if GetEntityHeading(ped) ~= noclipHeading then
                SetEntityHeading(noclipEntity, noclipHeading)
            end

            SetEntityCoordsNoOffset(
                noclipEntity,
                newPos.x, newPos.y, newPos.z,
                noclipActive, noclipActive, noclipActive
            )

            -- Stop (X / no Shift)
            if IsDisabledControlJustPressed(0, 36) then
                if not IsControlPressed(0, 21) then
                    stopNoClipNoGround()
                    return
                end
            end

            -- Stop & Ground (Enter / only with Ctrl, outside editor)
            if IsDisabledControlPressed(0, 22) then
                if IsControlPressed(0, 22) then
                    if exports.striano_editor:eInteractPos() == nil then
                        stopNoClip()
                        return
                    end
                end
            end
        end
    end)
end

-- ---------------------------------------------------------------------------
-- stopNoClip()
-- Ends noclip and attempts to land the entity on the ground below.
-- Fallback chain: RaycastGround → GetGroundZFor_3dCoord → lastSafePos → z+50
-- ---------------------------------------------------------------------------
function stopNoClip()
    noclipActive = false
    ExecuteCommand("e c")
    exports.striano_combat:notify("")

    index             = 1
    currentSpeed      = confignoclip.speeds[1].speed
    currentSpeedLabel = confignoclip.speeds[1].label

    -- Restore visibility
    if not pedVisible then
        SetEntityVisible(noclipEntity, true)
        pedVisible = true
    end

    ResetEntityAlpha(PlayerPedId())
    EndCameraAdmin()

    local ped    = PlayerPedId()
    local entity = noclipEntity or ped
    local pos    = GetEntityCoords(entity)

    -- Try fast raycast first
    local hit, groundCoords = RaycastGround(pos, 2000.0)
    if hit and groundCoords then
        SetEntityCoordsNoOffset(entity, pos.x, pos.y, groundCoords.z + 1.0, false, false, false)
    else
        -- Try iterative ground scan from above
        local ok, gz = GetGroundZFor_3dCoord(pos.x, pos.y, pos.z + 200.0, false)
        if ok and gz then
            SetEntityCoordsNoOffset(entity, pos.x, pos.y, gz + 1.0, false, false, false)
        elseif lastSafePos then
            -- Fall back to last known safe position
            SetEntityCoordsNoOffset(entity, lastSafePos.x, lastSafePos.y, lastSafePos.z, false, false, false)
            local heading = lastSafeHeading ~= 0.0 and lastSafeHeading or GetEntityHeading(entity)
            SetEntityHeading(entity, heading)
        else
            -- Last resort: drop 50 units and hope for the best
            SetEntityCoordsNoOffset(entity, pos.x, pos.y, pos.z + 50.0, false, false, false)
        end
    end

    RequestCollisionAtCoord(GetEntityCoords(entity))
    Wait(0)

    SetEntityCollision(entity, true, true)
    FreezeEntityPosition(entity, false)
    SetEntityInvincible(entity, false)
    ResetEntityAlpha(entity)
    SetVehicleRadioEnabled(entity, false)
end

-- ---------------------------------------------------------------------------
-- Exports
-- ---------------------------------------------------------------------------
exports("inNoClip", function()
    return noclipActive
end)

exports("stopNoClip", function()
    stopNoClipNoGround()
end)

-- =============================================================================
-- ADMIN CAMERA (FreeCameraAdmin / EndCameraAdmin)
-- A free-fly scripted camera that can be decoupled from the ped.
-- =============================================================================

-- Admin camera state
local adminCam       = nil
local adminCamPitch  = 0.0    -- X rotation
local adminCamRoll   = 0.0    -- Y rotation
local adminCamYaw    = 0.0    -- Z rotation
local adminCamFov    = 60
local adminCamPos    = nil    -- last camera position
local adminCamActive = false  -- used by loopAdminCamera

local ADMIN_CAM_MOVE_SPEED = 6.0

-- Controls disabled while admin camera is active
local adminCamDisabledControls = { 24, 36, 44, 38, 85, 86 }

local ADMIN_TURN_LEFT  = 34
local ADMIN_TURN_RIGHT = 35
local ADMIN_MOUSE_SENS = 5.0
local ADMIN_FLY_SPEED  = 6.0

-- ---------------------------------------------------------------------------
-- loopAdminCamera()
-- Spawns the per-frame admin camera update thread.
-- ---------------------------------------------------------------------------
function loopAdminCamera()
    CreateThread(function()
        while true do
            Wait(0)
            if adminCam then
                ProcessCamControlsAdmin()
            else
                EndCameraAdmin()
                return
            end
        end
    end)
end

RegisterCommand("getcamrot", function()
    if adminCam ~= nil then
        local rot   = GetCamRot(adminCam, 0)
        local coord = GetCamCoord(adminCam)
        print("Cam Rotation: " .. tostring(rot))
        print("Cam Coords: "   .. tostring(coord))
    end
end)

-- ---------------------------------------------------------------------------
-- FreeCameraAdmin()
-- Creates and activates the admin free camera, inheriting gameplay cam rotation.
-- ---------------------------------------------------------------------------
function FreeCameraAdmin()
    ClearFocus()

    local gameRot = GetGameplayCamRot(2)
    adminCamPitch = gameRot.x
    adminCamRoll  = gameRot.y
    adminCamYaw   = gameRot.z

    adminCam = CreateCamWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        GetEntityCoords(noclipEntity),
        adminCamPitch, adminCamRoll, adminCamYaw,
        adminCamFov * 1.0
    )

    adminCamPos = GetCamCoord(adminCam)

    SetCamActive(adminCam, true)
    RenderScriptCams(true, false, 0, true, false)
    SetCamAffectsAiming(adminCam, false)
    SetEntityHeading(noclipEntity, gameRot.z)

    loopAdminCamera()
end

-- ---------------------------------------------------------------------------
-- EndCameraAdmin()
-- Destroys the admin camera and returns to gameplay camera.
-- ---------------------------------------------------------------------------
function EndCameraAdmin()
    ClearFocus()
    RenderScriptCams(false, false, 0, true, false)
    DestroyCam(adminCam, false)

    adminCamPitch = 0.0
    adminCamRoll  = 0.0
    adminCamYaw   = 0.0
    adminCamFov   = 60
    adminCam      = nil
end

-- ---------------------------------------------------------------------------
-- ProcessCamControlsAdmin()
-- Per-frame admin camera update: reads mouse/key input, moves entity via
-- yaw-aligned forward vector, updates camera position and rotation.
-- ---------------------------------------------------------------------------
function ProcessCamControlsAdmin()
    DisableFirstPersonCamThisFrame()

    for _, ctrl in pairs(adminCamDisabledControls) do
        DisableControlAction(0, ctrl, true)
    end

    -- Mouse look (pitch = axis 2, yaw = axis 1)
    adminCamPitch = adminCamPitch - GetDisabledControlNormal(1, 2) * ADMIN_MOUSE_SENS
    adminCamYaw   = adminCamYaw   - GetDisabledControlNormal(1, 1) * ADMIN_MOUSE_SENS

    -- Clamp pitch and roll
    adminCamPitch = math.max(-90.0, math.min(90.0, adminCamPitch))
    adminCamRoll  = math.max(-90.0, math.min(90.0, adminCamRoll))

    -- Wrap yaw
    if adminCamYaw > 360.0 then
        adminCamYaw = adminCamYaw - 360.0
    elseif adminCamYaw < -360.0 then
        adminCamYaw = adminCamYaw + 360.0
    end

    local entityPos = GetEntityCoords(noclipEntity)

    -- FOV zoom (scroll up/down = controls 14/15)
    if IsDisabledControlPressed(0, 14) then
        if adminCamFov > 0 then
            adminCamFov = adminCamFov - 1.0
            SetCamFov(adminCam, adminCamFov)
        end
    elseif IsDisabledControlPressed(0, 15) then
        if adminCamFov < 120.0 then
            adminCamFov = adminCamFov + 1.0
            SetCamFov(adminCam, adminCamFov)
        end
    end

    -- Horizontal movement (turn left = 34, turn right = 35)
    local strafeDir = 0.0
    if IsDisabledControlPressed(0, ADMIN_TURN_LEFT)  then strafeDir = strafeDir - 1.0 end
    if IsDisabledControlPressed(0, ADMIN_TURN_RIGHT) then strafeDir = strafeDir + 1.0 end

    if strafeDir ~= 0.0 then
        local dt       = GetFrameTime()
        local yawRad   = math.rad(adminCamYaw)
        local cosYaw   = math.cos(yawRad)
        local sinYaw   = math.sin(yawRad)

        -- Ensure speed is at least 1
        if currentSpeed == nil or currentSpeed < 0.5 then
            currentSpeed = 1.0
        end

        local moveDist = ADMIN_FLY_SPEED * dt * strafeDir * currentSpeed

        local newX = entityPos.x + cosYaw * moveDist
        local newY = entityPos.y + sinYaw * moveDist
        SetEntityCoordsNoOffset(noclipEntity, newX, newY, entityPos.z, false, false, false)
        entityPos = GetEntityCoords(noclipEntity)
    end

    -- Update focus and camera
    SetFocusArea(entityPos.x, entityPos.y, entityPos.z, 0.0, 0.0, 0.0)
    SetCamCoord(adminCam, entityPos.x, entityPos.y, entityPos.z)
    SetCamRot(adminCam, adminCamPitch, adminCamRoll, adminCamYaw, 2)
    SetEntityRotation(noclipEntity, adminCamPitch, adminCamRoll, adminCamYaw, 2, false)
    SetEntityHeading(noclipEntity, adminCamYaw + 0.0)
end

-- ---------------------------------------------------------------------------
-- onResourceStart — restore safe state if resource restarts mid-noclip
-- ---------------------------------------------------------------------------
AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    index             = 1
    currentSpeed      = confignoclip.speeds[1].speed
    currentSpeedLabel = confignoclip.speeds[1].label

    if not pedVisible then
        SetEntityVisible(PlayerPedId(), true)
        pedVisible = true
    end

    EndCameraAdmin()

    local ped = PlayerPedId()
    SetEntityCollision(ped, not noclipActive, not noclipActive)
    FreezeEntityPosition(ped, noclipActive)
    SetEntityInvincible(ped, noclipActive)
    SetVehicleRadioEnabled(ped, false)
end)

-- ---------------------------------------------------------------------------
-- nohud command — toggle game HUD
-- ---------------------------------------------------------------------------
local noHudActive = false

RegisterCommand("nohud", function()
    noHudActive = not noHudActive
    if noHudActive then
        print("No hud attivo.")
    else
        print("No hud disattivo.")
    end
end)

exports("nohud", function()
    return noHudActive
end)
