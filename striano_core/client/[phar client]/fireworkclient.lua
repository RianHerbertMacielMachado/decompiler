-- fireworkclient.lua
-- Firework placement and particle sync for 4 firework types:
--   box (trailburst), cone (fountain), cylinder (shotburst), rocket (starburst)

local PTFX_ASSET = "scr_indep_fireworks"
local ANIM_DICT  = "anim@mp_fireworks"

-- ============================================================
-- Helper: load PTFX asset then fire bursts at coords
-- ============================================================
local function loadPtfxAsset()
    RequestNamedPtfxAsset(PTFX_ASSET)
    while not HasNamedPtfxAssetLoaded(PTFX_ASSET) do Wait(1) end
end

local function loadAnimDict()
    if not HasAnimDictLoaded(ANIM_DICT) then
        RequestAnimDict(ANIM_DICT)
        while not HasAnimDictLoaded(ANIM_DICT) do Wait(10) end
    end
end

-- ============================================================
-- Helper: play placement animation and create prop on ground
-- Returns the created prop object handle.
-- ============================================================
local function placeFireworkProp(animClip, propModel)
    local ped    = PlayerPedId()
    local offset = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, -1.02)
    local x, y, z = offset.x, offset.y, offset.z

    loadAnimDict()
    TaskPlayAnim(ped, ANIM_DICT, animClip, 8.0, -1, -1, 0, 0, 0, 0, 0)
    Wait(1250)
    ClearPedSecondaryTask(ped)

    local hash = GetHashKey(propModel)
    local obj  = CreateObject(hash, x, y, z, true, false, true)
    SetEntityHeading(obj, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(obj)
    return obj, x, y, z
end

-- ============================================================
-- Helper: fire a burst of networked particle effects at coords
-- Each entry: { effectName, delay, minScale, maxScale }
-- ============================================================
local function fireBursts(x, y, z, bursts)
    loadPtfxAsset()
    for _, b in ipairs(bursts) do
        Wait(b.delay)
        UseParticleFxAssetNextCall(PTFX_ASSET)
        local scale = math.random() * b.scaleRange + b.scaleBase
        StartNetworkedParticleFxNonLoopedAtCoord(
            b.effect, x, y, z,
            0.0, 0.0, 0.0,
            scale,
            false, false, false, false)
    end
end

-- ============================================================
-- Firework: BOX (trailburst × 8, 1500 ms between each + 4000 gap)
-- ============================================================
RegisterNetEvent("fireworks:box")
AddEventHandler("fireworks:box", function()
    local obj, x, y, z = placeFireworkProp("place_firework_3_box", "ind_prop_firework_03")
    exports.striano_combat:submexError("In azione tra 9 secondi.")
    ExecuteCommand("cinv")
    Wait(9000)
    TriggerServerEvent("syncbad4", x, y, z)
    Wait(18000)
    DeleteObject(obj)
end)

RegisterNetEvent("syncbad_cl4")
AddEventHandler("syncbad_cl4", function(x, y, z)
    -- 7 × trailburst at 1500 ms, then 1 bigger burst after 4000 ms
    local trailBursts = {}
    for i = 1, 7 do
        trailBursts[i] = {
            effect     = "scr_indep_firework_trailburst",
            delay      = (i == 1) and 0 or 1500,
            scaleBase  = 0.8,
            scaleRange = 0.5,
        }
    end
    trailBursts[8] = {
        effect     = "scr_indep_firework_trailburst",
        delay      = 4000,
        scaleBase  = 1.8,
        scaleRange = 0.5,
    }
    fireBursts(x, y, z, trailBursts)
end)

-- ============================================================
-- Firework: CONE (fountain × 5 + 1 big, 1500 ms between each)
-- ============================================================
RegisterNetEvent("fireworks:cone")
AddEventHandler("fireworks:cone", function()
    local obj, x, y, z = placeFireworkProp("place_firework_4_cone", "ind_prop_firework_04")
    exports.striano_combat:submexError("In azione tra 9 secondi.")
    ExecuteCommand("cinv")
    Wait(9000)
    TriggerServerEvent("syncbad3", x, y, z)
    Wait(18000)
    DeleteObject(obj)
end)

RegisterNetEvent("syncbad_cl3")
AddEventHandler("syncbad_cl3", function(x, y, z)
    local bursts = {}
    for i = 1, 5 do
        bursts[i] = {
            effect     = "scr_indep_firework_fountain",
            delay      = (i == 1) and 0 or 1500,
            scaleBase  = 0.8,
            scaleRange = 0.5,
        }
    end
    bursts[6] = {
        effect     = "scr_indep_firework_fountain",
        delay      = 2500,
        scaleBase  = 1.8,
        scaleRange = 1.5,
    }
    fireBursts(x, y, z, bursts)
end)

-- ============================================================
-- Firework: CYLINDER (shotburst × 5 + 3 big, mixed delays)
-- ============================================================
RegisterNetEvent("fireworks:cylinder")
AddEventHandler("fireworks:cylinder", function()
    local ped    = PlayerPedId()
    local offset = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, -1.02)
    local x, y, z = offset.x, offset.y, offset.z

    loadAnimDict()
    TaskPlayAnim(ped, ANIM_DICT, "place_firework_2_cylinder", 8.0, -1, -1, 0, 0, 0, 0, 0)
    Wait(1250)
    ClearPedSecondaryTask(ped)

    local hash = GetHashKey("ind_prop_firework_02")
    local obj  = CreateObject(hash, x, y, z, true, false, true)
    SetEntityHeading(obj, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(obj)

    exports.striano_combat:submexError("In azione tra 9 secondi.")
    ExecuteCommand("cinv")
    Wait(9000)
    TriggerServerEvent("syncbad2", x, y, z)
    Wait(18000)
    DeleteObject(obj)
end)

RegisterNetEvent("syncbad_cl2")
AddEventHandler("syncbad_cl2", function(x, y, z)
    -- 5 × small at 1500 ms, then 3 × big at 2500 ms
    local bursts = {}
    for i = 1, 5 do
        bursts[i] = {
            effect     = "scr_indep_firework_shotburst",
            delay      = (i == 1) and 0 or 1500,
            scaleBase  = 0.8,
            scaleRange = 0.5,
        }
    end
    for i = 6, 8 do
        bursts[i] = {
            effect     = "scr_indep_firework_shotburst",
            delay      = 2500,
            scaleBase  = 1.8,
            scaleRange = 1.5,
        }
    end
    fireBursts(x, y, z, bursts)
end)

-- ============================================================
-- Firework: ROCKET (single starburst particle, no delay loop)
-- ============================================================
RegisterNetEvent("fireworks:rocket")
AddEventHandler("fireworks:rocket", function()
    local ped    = PlayerPedId()
    local offset = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, -1.02)
    local x, y, z = offset.x, offset.y, offset.z

    loadAnimDict()
    TaskPlayAnim(ped, ANIM_DICT, "place_firework_1_rocket", 8.0, -1, -1, 0, 0, 0, 0, 0)
    Wait(1250)
    ClearPedSecondaryTask(ped)

    local hash = GetHashKey("ind_prop_firework_01")
    local obj  = CreateObject(hash, x, y, z, true, false, true)
    SetEntityHeading(obj, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(obj)

    exports.striano_combat:submexError("In azione tra 9 secondi.")
    ExecuteCommand("cinv")
    Wait(9000)
    TriggerServerEvent("syncbad1", x, y, z)
    Wait(8500)
    DeleteObject(obj)
end)

RegisterNetEvent("syncbad_cl1")
AddEventHandler("syncbad_cl1", function(x, y, z)
    loadPtfxAsset()
    UseParticleFxAssetNextCall(PTFX_ASSET)
    StartParticleFxNonLoopedAtCoord(
        "scr_indep_firework_starburst",
        x, y, z,
        0.0, 0.0, 0.0,
        2.5,
        false, false, false, false)
end)
