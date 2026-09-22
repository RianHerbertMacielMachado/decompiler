-- ============================================================
--  striano_core - client/fpsboost.lua
--  Modos de otimização de sombras e iluminação (/fps)
-- ============================================================

local currentFpsMode = nil   -- modo ativo: "reset" | "ulow" | "low" | "medium"

-- ------------------------------------------------------------
-- Helpers de sombras / iluminação
-- ------------------------------------------------------------

--- Configurar sombras de corda e modo de aeronave
local function setShadowBasic(ropeEnabled, aircraftMode)
    RopeDrawShadowEnabled(ropeEnabled)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(aircraftMode)
end

--- Configurar sombras em cascata
local function setShadowCascade(entityTracker, dynamicDepthMode, entityTrackerScale, dynamicDepthValue, cascadeBoundsScale)
    CascadeShadowsEnableEntityTracker(entityTracker)
    CascadeShadowsSetDynamicDepthMode(dynamicDepthMode)
    CascadeShadowsSetEntityTrackerScale(entityTrackerScale)
    CascadeShadowsSetDynamicDepthValue(dynamicDepthValue)
    CascadeShadowsSetCascadeBoundsScale(cascadeBoundsScale)
end

--- Configurar distâncias de iluminação
local function setLightDistances(flashlightFade, lightsCutoff)
    SetFlashLightFadeDistance(flashlightFade)
    SetLightsCutoffDistanceTweak(lightsCutoff)
end

--- Aplicar modo de FPS
local function applyFpsMode(mode)
    if mode == "reset" then
        setShadowBasic(true, true)
        setShadowCascade(true, true, 5.0, 5.0, 5.0)
        setLightDistances(10.0, 10.0)
        print("Mode: Reset")

    elseif mode == "ulow" then
        setShadowBasic(false, false)
        setShadowCascade(true, false, 0.0, 0.0, 0.0)
        setLightDistances(0.0, 0.0)
        print("Mode: Ultra Low")

    elseif mode == "low" then
        setShadowBasic(false, false)
        setShadowCascade(true, false, 0.0, 0.0, 0.0)
        setLightDistances(5.0, 5.0)
        print("Mode: Low")

    elseif mode == "medium" then
        setShadowBasic(true, false)
        setShadowCascade(true, false, 5.0, 3.0, 3.0)
        setLightDistances(3.0, 3.0)
        print("Mode: Medium")

    else
        print("Usage: /fps [reset/ulow/low/medium]")
        print("Invalid type: " .. tostring(mode))
        return
    end

    currentFpsMode = mode
end

-- ------------------------------------------------------------
-- Comando /fps [reset/ulow/low/medium]
-- ------------------------------------------------------------

RegisterCommand("fps", function(src, args)
    if args[1] == nil then
        print("Usage: /fps [reset/ulow/low/medium]")
        return
    end
    applyFpsMode(args[1])
end, false)
