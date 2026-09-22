-- =============================================================================
-- orbitcamera.lua
-- Orbit/death camera system for striano_core
-- Provides a spherical orbit camera around a tracked entity or fixed point,
-- with mouse yaw/pitch input, scroll zoom, and 4-corner LOS collision probe.
-- =============================================================================

-- ---------------------------------------------------------------------------
-- Constants
-- ---------------------------------------------------------------------------
local DEFAULT_FOV            = 50.0
local DEFAULT_MIN_DIST       = 2.5
local DEFAULT_MAX_DIST       = 35.0
local SCROLL_SENSITIVITY     = 0.5
local BLEND_DURATION_MS      = 1000
local MOUSE_SENSITIVITY_YAW  = 8.0
local MOUSE_SENSITIVITY_PITCH = 1.5
local DEG_TO_RAD             = math.pi / 180.0

local mCos = math.cos
local mSin = math.sin
local mMin = math.min
local mMax = math.max

-- ---------------------------------------------------------------------------
-- State
-- ---------------------------------------------------------------------------
local camFov         = DEFAULT_FOV
local orbitCam       = nil          -- active scripted camera handle
local trackedEntity  = nil          -- entity being tracked (or nil for fixed point)
local focusOrigin    = vector3(0, 0, 0) -- world position the camera orbits around
local trackedOffset  = nil          -- vector3 offset applied to entity coords

local orbitRadius    = DEFAULT_MIN_DIST
local minOrbitDist   = DEFAULT_MIN_DIST
local maxOrbitDist   = DEFAULT_MAX_DIST
local orbitPitch     = 0.0          -- vertical angle in degrees
local orbitYaw       = 0.0          -- horizontal angle in degrees

-- Controls disabled while orbit cam is active
local disabledControls = { 14, 15, 16, 17, 81, 82, 99 }

-- ---------------------------------------------------------------------------
-- rayCastCollision(from, to, ignoreEntity)
-- LOS probe from `from` to `to`, ignoring `ignoreEntity`.
-- Returns: hit (bool), endCoords (vector3)
-- ---------------------------------------------------------------------------
local function rayCastCollision(from, to, ignoreEntity)
    local handle = StartExpensiveSynchronousShapeTestLosProbe(
        from.x, from.y, from.z,
        to.x,   to.y,   to.z,
        -1,
        ignoreEntity,
        4
    )
    local _, hit, endCoords = GetShapeTestResult(handle)
    return hit, endCoords
end

-- ---------------------------------------------------------------------------
-- updateOrbitInputs()
-- Reads mouse axes and scroll wheel to update yaw, pitch, and radius.
-- Also updates focusOrigin if a trackedEntity is set.
-- Returns the computed raw (unclamped-radius) orbit position vector3.
-- ---------------------------------------------------------------------------
local function updateOrbitInputs()
    -- Mouse sensitivity: keyboard/gamepad vs mouse
    local sensitivity = IsInputDisabled(0) and MOUSE_SENSITIVITY_YAW or MOUSE_SENSITIVITY_PITCH

    -- Yaw (horizontal rotation) — control axis 1
    local yawDelta = GetDisabledControlUnboundNormal(1, 1) * sensitivity
    orbitYaw = orbitYaw - yawDelta

    -- Pitch (vertical rotation) — control axis 2
    local pitchDelta = GetDisabledControlUnboundNormal(1, 2) * sensitivity
    orbitPitch = orbitPitch + pitchDelta
    orbitPitch = mMax(mMin(orbitPitch, 89.0), -89.0)

    -- Scroll wheel zoom — controls 16 (scroll up) and 17 (scroll down)
    local scrollUp   = GetDisabledControlNormal(0, 16)
    local scrollDown = GetDisabledControlNormal(0, 17)
    local scrollDelta = (scrollUp - scrollDown) * SCROLL_SENSITIVITY
    orbitRadius = orbitRadius + scrollDelta
    orbitRadius = mMax(mMin(orbitRadius, maxOrbitDist), minOrbitDist)

    -- Update focus origin from tracked entity
    if trackedEntity and DoesEntityExist(trackedEntity) then
        focusOrigin = GetEntityCoords(trackedEntity) + trackedOffset
    end

    -- Compute spherical orbit position
    local pitchRad = orbitPitch * DEG_TO_RAD
    local yawRad   = orbitYaw   * DEG_TO_RAD
    local cosP     = mCos(pitchRad)
    local sphereDir = vector3(
        mCos(yawRad) * cosP,
        mSin(yawRad) * cosP,
        mSin(pitchRad)
    )
    local rawCamPos = focusOrigin + (sphereDir * orbitRadius)
    return rawCamPos
end

-- ---------------------------------------------------------------------------
-- updateOrbitFrame()
-- Full per-frame orbit camera update:
--   1. Reads input and gets raw camera position.
--   2. Probes 4 corners for wall collision.
--   3. Clamps radius to keep camera out of geometry.
--   4. Sets camera position and makes it look at the focus origin.
-- ---------------------------------------------------------------------------
local function updateOrbitFrame()
    -- Disable first-person and block orbit-related input controls
    DisableFirstPersonCamThisFrame()
    for _, ctrl in ipairs(disabledControls) do
        DisableControlAction(0, ctrl, true)
    end

    local rawCamPos = updateOrbitInputs()

    -- Determine ignore entity for ray casts (player ped if no tracked entity)
    local ignoreEnt = trackedEntity or PlayerPedId()

    -- Get camera right/up vectors for the 4-corner spread
    local _, _, camRight, camUp = GetCamMatrix(orbitCam)
    local rightOff = camRight * 0.125
    local upOff    = camUp    * 0.07

    -- Four corner probes
    local corners = {
        { focusOrigin, rawCamPos + rightOff + upOff    },
        { focusOrigin, rawCamPos + rightOff - upOff    },
        { focusOrigin, rawCamPos - rightOff - upOff    },
        { focusOrigin, rawCamPos - rightOff + upOff    },
    }

    -- Find closest collision across all corners
    local clampedRadius = orbitRadius
    for _, probe in ipairs(corners) do
        local hit, hitCoords = rayCastCollision(probe[1], probe[2], ignoreEnt)
        if hit then
            local dist = #(focusOrigin - hitCoords)
            if clampedRadius > dist then
                clampedRadius = dist
            end
        end
    end

    -- Re-compute camera position with clamped radius
    local fraction = clampedRadius / orbitRadius
    local finalCamPos = focusOrigin + (rawCamPos - focusOrigin) * fraction

    -- Apply to scripted camera
    SetCamCoord(orbitCam, finalCamPos.x, finalCamPos.y, finalCamPos.z)
    PointCamAtCoord(orbitCam, focusOrigin.x, focusOrigin.y, focusOrigin.z)
    SetFocusPosAndVel(focusOrigin.x, focusOrigin.y, focusOrigin.z, 0.0, 0.0, 0.0)
end

-- ---------------------------------------------------------------------------
-- logError(fmt, ...)
-- Internal error logger with red console colour.
-- ---------------------------------------------------------------------------
local function logError(fmt, ...)
    print(string.format("^1[ERROR] " .. fmt .. "^0", ...))
end

-- ---------------------------------------------------------------------------
-- StartOrbitCam(offset, entity, blendMs, minDist, maxDist)
-- Creates and activates the orbit camera.
--   offset  — vector3 offset from entity (or fixed world position when entity is nil)
--   entity  — entity handle to orbit around (nil = treat offset as absolute position)
--   blendMs — camera blend-in duration in milliseconds (default: BLEND_DURATION_MS)
--   minDist — minimum zoom distance (default: DEFAULT_MIN_DIST)
--   maxDist — maximum zoom distance (default: DEFAULT_MAX_DIST)
-- ---------------------------------------------------------------------------
local function StartOrbitCam(offset, entity, blendMs, minDist, maxDist)
    if orbitCam then
        -- Already active
        return
    end

    ClearFocus()

    -- Set up tracking
    if entity then
        trackedEntity = entity
        trackedOffset = offset
        focusOrigin   = GetEntityCoords(entity) + offset
    else
        trackedEntity = nil
        trackedOffset = nil
        focusOrigin   = offset
    end

    -- Determine min/max orbit distance
    if minDist == nil or maxDist == nil then
        minOrbitDist = DEFAULT_MIN_DIST
        maxOrbitDist = DEFAULT_MAX_DIST
        if minOrbitDist < 0.5 then
            minOrbitDist = 0.5
            maxOrbitDist = 25.0
        end
    else
        minOrbitDist = minDist + 0.0
        maxOrbitDist = maxDist + 0.0
    end
    orbitRadius = minOrbitDist

    -- Inherit current gameplay camera rotation so the orbit starts facing the
    -- same direction the player was looking
    local gameplayCamRot = GetGameplayCamRot(2)
    orbitPitch = -(gameplayCamRot.x)
    orbitYaw   = gameplayCamRot.z - 90

    -- Create scripted camera at focus origin
    local blendTime = blendMs or BLEND_DURATION_MS
    orbitCam = CreateCamWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        focusOrigin.x, focusOrigin.y, focusOrigin.z,
        0, 0, 0,
        GetGameplayCamFov()
    )

    SetCamActive(orbitCam, true)
    RenderScriptCams(true, true, blendTime, true, false)
    SetCamNearClip(orbitCam, 0.05)
    SetCamFov(orbitCam, camFov)

    -- Update loop
    CreateThread(function()
        while orbitCam do
            updateOrbitFrame()
            Wait(0)
        end
    end)
end

exports("StartOrbitCam", StartOrbitCam)
StartOrbitCam = StartOrbitCam  -- expose as global for direct calls

-- ---------------------------------------------------------------------------
-- updateFOVcam(direction)
-- Adjusts camera FOV while orbit cam is active.
--   direction == 1 → zoom in  (decrease FOV)
--   direction ~= 1 → zoom out (increase FOV)
-- ---------------------------------------------------------------------------
exports("updateFOVcam", function(direction)
    if not orbitCam then return end

    if direction == 1 then
        -- Zoom in
        if camFov > 0.5 then
            camFov = camFov - 0.7
            SetCamFov(orbitCam, camFov)
        end
    else
        -- Zoom out
        if camFov < 89.5 then
            camFov = camFov + 0.7
            SetCamFov(orbitCam, camFov)
        end
    end
end)

-- ---------------------------------------------------------------------------
-- EndOrbitCam(blendMs)
-- Destroys the orbit camera and blends back to gameplay camera.
--   blendMs — blend-out duration in milliseconds (default: BLEND_DURATION_MS)
-- ---------------------------------------------------------------------------
local function EndOrbitCam(blendMs)
    if orbitCam == nil then return end

    ClearFocus()
    camFov = DEFAULT_FOV

    local blendTime = blendMs or BLEND_DURATION_MS
    RenderScriptCams(false, true, blendTime, true, false)
    DestroyCam(orbitCam, false)

    orbitCam       = nil
    trackedEntity  = nil
end

exports("EndOrbitCam", EndOrbitCam)
EndOrbitCam = EndOrbitCam  -- expose as global

-- ---------------------------------------------------------------------------
-- IsOrbitCamActive()
-- Returns true if the orbit camera is currently active.
-- ---------------------------------------------------------------------------
local function IsOrbitCamActive()
    return orbitCam ~= nil
end

exports("IsOrbitCamActive", IsOrbitCamActive)
IsOrbitCamActive = IsOrbitCamActive

-- ---------------------------------------------------------------------------
-- IsEntityBeingTracked(entity)
-- Returns true if `entity` is the currently tracked entity.
-- ---------------------------------------------------------------------------
local function IsEntityBeingTracked(entity)
    if not entity then return false end
    return entity == trackedEntity
end

exports("IsEntityBeingTracked", IsEntityBeingTracked)
IsEntityBeingTracked = IsEntityBeingTracked

-- ---------------------------------------------------------------------------
-- GetTrackedEntity()
-- Returns the currently tracked entity handle, or nil.
-- ---------------------------------------------------------------------------
local function GetTrackedEntity()
    return trackedEntity
end

exports("GetTrackedEntity", GetTrackedEntity)
GetTrackedEntity = GetTrackedEntity

-- ---------------------------------------------------------------------------
-- ChangeTrackedEntity(entity)
-- Replaces the tracked entity without restarting the camera.
-- ---------------------------------------------------------------------------
local function ChangeTrackedEntity(entity)
    trackedEntity = entity
end

exports("ChangeTrackedEntity", ChangeTrackedEntity)
ChangeTrackedEntity = ChangeTrackedEntity
