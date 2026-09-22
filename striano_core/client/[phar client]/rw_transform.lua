-- rw_transform.lua
-- Entity Transition/Animation Library — easing functions, move/rotate/transition with various curves

-- ─────────────────────────────────────────────
-- Transition Easing Functions
-- ─────────────────────────────────────────────

Transition = {}

-- Linear: no easing
Transition.Linear = function(t)
    return t
end

-- Quadratic ease in: accelerates from zero velocity
Transition.EaseIn = function(t)
    return t * t
end

-- Quadratic ease out: decelerates to zero velocity
Transition.EaseOut = function(t)
    return t * (2.0 - t)
end

-- Quadratic ease in-out: acceleration then deceleration
Transition.EaseInOut = function(t)
    if t < 0.5 then
        return 2.0 * t * t
    else
        return -1.0 + (4.0 - 2.0 * t) * t
    end
end

-- Cubic ease in
Transition.EaseInCubic = function(t)
    return t * t * t
end

-- Cubic ease out
Transition.EaseOutCubic = function(t)
    local u = t - 1.0
    return u * u * u + 1.0
end

-- Cubic ease in-out
Transition.EaseInOutCubic = function(t)
    if t < 0.5 then
        return 4.0 * t * t * t
    else
        local u = (2.0 * t) - 2.0
        return 0.5 * u * u * u + 1.0
    end
end

-- Elastic ease in: overshoot spring oscillation at start
Transition.ElasticIn = function(t)
    if t == 0.0 then return 0.0 end
    if t == 1.0 then return 1.0 end
    local period = (2.0 * math.pi) / 3.0
    return -(math.pow(2.0, 10.0 * t - 10.0) * math.sin((t * 10.0 - 10.75) * period))
end

-- Elastic ease out: overshoot spring oscillation at end
Transition.ElasticOut = function(t)
    if t == 0.0 then return 0.0 end
    if t == 1.0 then return 1.0 end
    local period = (2.0 * math.pi) / 3.0
    return math.pow(2.0, -10.0 * t) * math.sin((t * 10.0 - 0.75) * period) + 1.0
end

-- Elastic ease in-out
Transition.ElasticInOut = function(t)
    if t == 0.0 then return 0.0 end
    if t == 1.0 then return 1.0 end
    local period = (2.0 * math.pi) / 4.5
    if t < 0.5 then
        return -(math.pow(2.0, 20.0 * t - 10.0) * math.sin((20.0 * t - 11.125) * period)) / 2.0
    else
        return (math.pow(2.0, -20.0 * t + 10.0) * math.sin((20.0 * t - 11.125) * period)) / 2.0 + 1.0
    end
end

-- Bounce ease out helper
local function BounceEaseOut(t)
    local n1 = 7.5625
    local d1 = 2.75
    if t < 1.0 / d1 then
        return n1 * t * t
    elseif t < 2.0 / d1 then
        t = t - (1.5 / d1)
        return n1 * t * t + 0.75
    elseif t < 2.5 / d1 then
        t = t - (2.25 / d1)
        return n1 * t * t + 0.9375
    else
        t = t - (2.625 / d1)
        return n1 * t * t + 0.984375
    end
end

-- Bounce ease in
Transition.BounceIn = function(t)
    return 1.0 - BounceEaseOut(1.0 - t)
end

-- Bounce ease out
Transition.BounceOut = BounceEaseOut

-- Bounce ease in-out
Transition.BounceInOut = function(t)
    if t < 0.5 then
        return (1.0 - BounceEaseOut(1.0 - 2.0 * t)) / 2.0
    else
        return (1.0 + BounceEaseOut(2.0 * t - 1.0)) / 2.0
    end
end

-- Named alias lookup table
Transition.Functions = {
    Linear         = Transition.Linear,
    EaseIn         = Transition.EaseIn,
    EaseOut        = Transition.EaseOut,
    EaseInOut      = Transition.EaseInOut,
    EaseInCubic    = Transition.EaseInCubic,
    EaseOutCubic   = Transition.EaseOutCubic,
    EaseInOutCubic = Transition.EaseInOutCubic,
    ElasticIn      = Transition.ElasticIn,
    ElasticOut     = Transition.ElasticOut,
    ElasticInOut   = Transition.ElasticInOut,
    BounceIn       = Transition.BounceIn,
    BounceOut      = Transition.BounceOut,
    BounceInOut    = Transition.BounceInOut,
}

-- ─────────────────────────────────────────────
-- Cubic Bézier Interpolation
-- ─────────────────────────────────────────────

-- Evaluates a cubic Bézier curve at parameter t using a bezierDef = {x1, y1, x2, y2}
function CubicBezier(t, bezierDef)
    local x1, y1, x2, y2 = bezierDef[1], bezierDef[2], bezierDef[3], bezierDef[4]
    -- Newton–Raphson solver to find the x(t) → y(t) mapping
    local function bezierX(s)
        return 3.0 * s * (1.0 - s)^2 * x1 + 3.0 * s^2 * (1.0 - s) * x2 + s^3
    end
    local function bezierY(s)
        return 3.0 * s * (1.0 - s)^2 * y1 + 3.0 * s^2 * (1.0 - s) * y2 + s^3
    end

    -- Solve for s such that bezierX(s) ≈ t (binary search)
    local lo, hi = 0.0, 1.0
    for _ = 1, 20 do
        local mid = (lo + hi) * 0.5
        local xMid = bezierX(mid)
        if math.abs(xMid - t) < 0.0001 then
            return bezierY(mid)
        elseif xMid < t then
            lo = mid
        else
            hi = mid
        end
    end
    return bezierY((lo + hi) * 0.5)
end

-- Creates a Bézier definition table from control point coordinates
function Bezier(x1, y1, x2, y2)
    return { x1, y1, x2, y2 }
end

-- ─────────────────────────────────────────────
-- Vector3 Linear Interpolation
-- ─────────────────────────────────────────────

function LerpVec3(a, b, t)
    return vector3(
        a.x + (b.x - a.x) * t,
        a.y + (b.y - a.y) * t,
        a.z + (b.z - a.z) * t
    )
end

-- ─────────────────────────────────────────────
-- Internal Animator (shared by all entity movers)
-- ─────────────────────────────────────────────
-- Freezes the entity, accumulates frame time, lerps rotation and/or position,
-- then restores the entity's frozen state on completion.

local function RunEntityAnimation(easingFn, entity, startRot, targetRot, startPos, targetPos, duration)
    local wasFrozen = IsEntityPositionFrozen(entity)
    FreezeEntityPosition(entity, true)

    local elapsed = 0.0
    while elapsed < duration do
        local dt = GetFrameTime()
        elapsed = elapsed + dt
        local rawT = math.min(elapsed / duration, 1.0)
        local easedT = easingFn(rawT)

        if targetRot then
            local newRot = LerpVec3(startRot, targetRot, easedT)
            SetEntityRotation(entity, newRot.x, newRot.y, newRot.z, 2, true)
        end

        if targetPos then
            local newPos = LerpVec3(startPos, targetPos, easedT)
            SetEntityCoords(entity, newPos.x, newPos.y, newPos.z, false, false, false, false)
        end

        Wait(0)
    end

    -- Apply final exact values
    if targetRot then
        SetEntityRotation(entity, targetRot.x, targetRot.y, targetRot.z, 2, true)
    end
    if targetPos then
        SetEntityCoords(entity, targetPos.x, targetPos.y, targetPos.z, false, false, false, false)
    end

    FreezeEntityPosition(entity, wasFrozen)
end

-- ─────────────────────────────────────────────
-- Easing-based Entity Transformers
-- ─────────────────────────────────────────────

-- Rotate entity to targetRotVec over duration (seconds) using named easing
function RotateEntity(transitionName, entity, targetRotVec, duration)
    local easingFn = Transition.Functions[transitionName] or Transition.Linear
    local startRot = GetEntityRotation(entity, 2)
    CreateThread(function()
        RunEntityAnimation(easingFn, entity, startRot, targetRotVec, nil, nil, duration)
    end)
end

-- Move entity to targetPosVec over duration (seconds) using named easing
function MoveEntity(transitionName, entity, targetPosVec, duration)
    local easingFn = Transition.Functions[transitionName] or Transition.Linear
    local startPos = GetEntityCoords(entity)
    CreateThread(function()
        RunEntityAnimation(easingFn, entity, nil, nil, startPos, targetPosVec, duration)
    end)
end

-- Rotate AND move entity simultaneously over duration using named easing
function TransitionEntity(transitionName, entity, targetRot, targetPos, duration)
    local easingFn = Transition.Functions[transitionName] or Transition.Linear
    local startRot = GetEntityRotation(entity, 2)
    local startPos = GetEntityCoords(entity)
    CreateThread(function()
        RunEntityAnimation(easingFn, entity, startRot, targetRot, startPos, targetPos, duration)
    end)
end

exports("RotateEntity",    RotateEntity)
exports("MoveEntity",      MoveEntity)
exports("TransitionEntity", TransitionEntity)

-- ─────────────────────────────────────────────
-- Bézier Curve-based Animator (uses CubicBezier for t-mapping)
-- ─────────────────────────────────────────────

local function RunBezierAnimation(bezierDef, entity, startRot, targetRot, startPos, targetPos, duration)
    local wasFrozen = IsEntityPositionFrozen(entity)
    FreezeEntityPosition(entity, true)

    local elapsed = 0.0
    while elapsed < duration do
        local dt = GetFrameTime()
        elapsed = elapsed + dt
        local rawT = math.min(elapsed / duration, 1.0)
        local easedT = CubicBezier(rawT, bezierDef)

        if targetRot then
            local newRot = LerpVec3(startRot, targetRot, easedT)
            SetEntityRotation(entity, newRot.x, newRot.y, newRot.z, 2, true)
        end

        if targetPos then
            local newPos = LerpVec3(startPos, targetPos, easedT)
            SetEntityCoords(entity, newPos.x, newPos.y, newPos.z, false, false, false, false)
        end

        Wait(0)
    end

    if targetRot then
        SetEntityRotation(entity, targetRot.x, targetRot.y, targetRot.z, 2, true)
    end
    if targetPos then
        SetEntityCoords(entity, targetPos.x, targetPos.y, targetPos.z, false, false, false, false)
    end

    FreezeEntityPosition(entity, wasFrozen)
end

-- Rotate entity using a cubic Bézier curve for easing
function BezierRotateEntity(x1, y1, x2, y2, entity, targetRot, duration)
    local bezierDef = Bezier(x1, y1, x2, y2)
    local startRot = GetEntityRotation(entity, 2)
    CreateThread(function()
        RunBezierAnimation(bezierDef, entity, startRot, targetRot, nil, nil, duration)
    end)
end

-- Move entity using a cubic Bézier curve for easing
function BezierMoveEntity(x1, y1, x2, y2, entity, targetPos, duration)
    local bezierDef = Bezier(x1, y1, x2, y2)
    local startPos = GetEntityCoords(entity)
    CreateThread(function()
        RunBezierAnimation(bezierDef, entity, nil, nil, startPos, targetPos, duration)
    end)
end

-- Rotate AND move entity using a cubic Bézier curve for easing
function BezierTransitionCubicBezier(x1, y1, x2, y2, entity, targetRot, targetPos, duration, bezierDef)
    -- bezierDef may override the x1/y1/x2/y2 when supplied
    local activeBezier = bezierDef or Bezier(x1, y1, x2, y2)
    local startRot = GetEntityRotation(entity, 2)
    local startPos = GetEntityCoords(entity)
    CreateThread(function()
        RunBezierAnimation(activeBezier, entity, startRot, targetRot, startPos, targetPos, duration)
    end)
end

exports("BezierRotateEntity",           BezierRotateEntity)
exports("BezierMoveEntity",             BezierMoveEntity)
exports("BezierTransitionCubicBezier",  BezierTransitionCubicBezier)
