-- ============================================================
--  vsyncclient.lua  –  Weather / Time / Atmosphere / Fog System
--  Refactored from decompiled bytecode to clean idiomatic Lua
-- ============================================================

-- ---------------------------------------------------------------------------
--  SpecialCoords: locations with custom weather, time and gameplay overrides
-- ---------------------------------------------------------------------------
SpecialCoords = {
    -- [1] Pier / intro area
    {
        coords  = vector3(0.0, 0.0, -120.0),
        meteo   = "FOGGY",
        range   = 150.0,
        ore     = 19,
        tc      = "V_FIB_IT3_alt",
        tcp     = 1.0,
    },
    -- [2] Island 1
    {
        coords          = vector3(4591.632, -2191.721, 48.455),
        meteo           = "FOGGY",
        range           = 150.0,
        ore             = 19,
        tc              = "WATER_silverlake",
        tcp             = 0.9,
        falldamage      = false,
        enemySpawnRange = 27.0,
    },
    -- [3] Island 2
    {
        coords          = vector3(3813.173, -2939.818, 2.035),
        meteo           = "FOGGY",
        range           = 150.0,
        ore             = 19,
        tc              = "WATER_silverlake",
        tcp             = 0.9,
        falldamage      = false,
        enemySpawnRange = 27.0,
    },
    -- [4] Island 3
    {
        coords          = vector3(-1078.572, -5243.869, 6.477),
        meteo           = "FOGGY",
        range           = 150.0,
        ore             = 19,
        tc              = "WATER_silverlake",
        tcp             = 0.9,
        falldamage      = false,
        enemySpawnRange = 27.0,
    },
    -- [5] Snowy region
    {
        coords    = vector3(-979.98, -6926.839, 5.0),
        meteo     = "SNOWLIGHT",
        range     = 900.0,
        ore       = 20,
        calmWater = true,
        tc        = "WATER_silty",
        tcp       = 0.4,
    },
    -- [6] Snow outpost
    {
        coords          = vector3(-326.885, -5506.058, 5.249),
        meteo           = "SNOWLIGHT",
        range           = 650.0,
        ore             = 10,
        tc              = "WATER_silty",
        tcp             = 1.0,
        enemySpawnRange = 25.0,
    },
    -- [7] Snow outpost 2
    {
        coords          = vector3(3540.203, -6513.19, 6.162),
        meteo           = "SNOWLIGHT",
        range           = 650.0,
        ore             = 10,
        tc              = "WATER_silty",
        tcp             = 0.8,
        enemySpawnRange = 15.0,
    },
    -- [8] Mountain area
    {
        coords = vector3(-528.026, 2043.931, 130.07),
        meteo  = "SNOWLIGHT",
        range  = 150.0,
        ore    = 0,
        tc     = "winning_room",
        tcp    = 1.08,
    },
}

-- ---------------------------------------------------------------------------
--  Initialise persistent time speed (frozen at start until synced)
-- ---------------------------------------------------------------------------
SetMillisecondsPerGameMinute(0)

-- ---------------------------------------------------------------------------
--  Global state
-- ---------------------------------------------------------------------------
local fogTimerNext   = 0          -- game-timer target for next fog damage/enemy cycle
local fogSpawnInterval = 9000     -- ms between enemy spawns during fog

NEBBIA            = false         -- is the night fog currently active?
defaultMeteo      = "SNOWLIGHT"   -- default weather when outside all special zones
timerNebbia       = 0.0           -- unused timer for future fog duration tracking
cyclenebbia       = "NG_filmic11"          -- timecycle modifier when fog is active
NebbiaCycleForce  = 0.7                    -- strength when in fog
CoveredCycleForce = 0.25                   -- strength when covered/indoors
defaultCycle      = "heist_boat_norain"    -- default timecycle
defaultCycleForce = 0.2                    -- default timecycle strength
defaultH          = 19                     -- default hour

-- Dark atmosphere zone (near spawning pond)
atmosferaDark = {
    pos      = vector3(3847.609, 6494.366, 10.309),
    cycle    = "morgue_dark_ovr",
    strenght = 2.0,
    active   = false,
}

-- ---------------------------------------------------------------------------
--  Export: nebbia (is fog active?)
-- ---------------------------------------------------------------------------
exports("nebbia", function()
    return NEBBIA
end)

CurrentWeather = "SNOWLIGHT"

-- ---------------------------------------------------------------------------
--  settamiMeteo(weatherName)
--  Applies weather immediately and persists it.
-- ---------------------------------------------------------------------------
function settamiMeteo(weatherName)
    SetWeatherTypeNowPersist(weatherName)
    ClearOverrideWeather()
    ClearWeatherTypePersist()
    SetWeatherTypePersist(weatherName)
    SetWeatherTypeNow(weatherName)
    SetWeatherTypeNowPersist(weatherName)
end

-- ---------------------------------------------------------------------------
--  vSync:setOrario  –  Server sends current hour/minute to the client
-- ---------------------------------------------------------------------------
RegisterNetEvent("vSync:setOrario")
AddEventHandler("vSync:setOrario", function(hour, minute)
    if GetResourceState("striano_core") ~= "started" then return end
    if GetResourceState("striano_editor") ~= "started" then return end
    if NEBBIA then return end
    if exports.striano_editor:induskfalls() then return end
    if not exports.striano_core:introBaseFinita() then return end
    if not exports.striano_core:gettutorial() then return end
    if atmosferaDark.active then return end

    -- Check if inside a special zone
    local pedCoords   = GetEntityCoords(PlayerPedId())
    local specialZone = nil
    for _, zone in ipairs(SpecialCoords) do
        if zone.ore ~= nil and zone.meteo then
            local dist = #(pedCoords - zone.coords)
            if dist < zone.range then
                specialZone = zone
                break
            end
        end
    end

    if specialZone then
        NetworkOverrideClockTime(specialZone.ore, 0, 0)
        settamiMeteo(specialZone.meteo)
    else
        settamiMeteo(CurrentWeather)
        NetworkOverrideClockTime(hour, minute, 0)
        defaultH = hour
    end

    Atmosfera()
end)

-- ---------------------------------------------------------------------------
--  fogComing  –  Fog warning (2 minutes before fog arrives)
-- ---------------------------------------------------------------------------
RegisterNetEvent("fogComing")
AddEventHandler("fogComing", function(hour, minute)
    if GetResourceState("striano_core") ~= "started" then return end
    if GetResourceState("striano_combat") ~= "started" then return end
    if NEBBIA then return end
    if not exports.striano_core:gettutorial() then return end
    if exports.striano_core:sonoUnUccello() then return end

    exports.striano_combat:submex("Fog is coming in 2 minutes, find a safe place for the night.")
    PlaySoundFrontend(-1, "NET_RACE_START_EVENT_MASTER", "0", 1)
end)

-- ---------------------------------------------------------------------------
--  xMas mode toggle
-- ---------------------------------------------------------------------------
xMasMode = false

exports("inxmas", function()
    return xMasMode
end)

function ActiveXmas()
    xMasMode = not xMasMode
    TriggerServerEvent("vSync:getSync", GetPlayerServerId(PlayerId()))
end

exports("ActiveXmas", function()
    ActiveXmas()
end)

-- ---------------------------------------------------------------------------
--  vSync:setMeteo  –  Server sends the current weather name
-- ---------------------------------------------------------------------------
RegisterNetEvent("vSync:setMeteo")
AddEventHandler("vSync:setMeteo", function(weatherName)
    if xMasMode then weatherName = "XMAS" end

    if weatherName == "XMAS" then
        SetForcePedFootstepsTracks(true)
        SetForceVehicleTrails(true)
    else
        SetForcePedFootstepsTracks(false)
        SetForceVehicleTrails(false)
    end

    if exports.striano_editor:induskfalls() then return end
    if not exports.striano_core:gettutorial() then return end

    -- Do not change weather if inside a special zone
    local pedCoords = GetEntityCoords(PlayerPedId())
    for _, zone in ipairs(SpecialCoords) do
        local dist = #(pedCoords - zone.coords)
        if dist <= zone.range then return end
    end

    CurrentWeather = weatherName
    settamiMeteo(weatherName)
    print("METEO SET: " .. weatherName)
end)

-- ---------------------------------------------------------------------------
--  Startup sync: wait for collision + session, then request vSync data
-- ---------------------------------------------------------------------------
CreateThread(function()
    Wait(3000)
    local ped = PlayerPedId()
    while not HasCollisionLoadedAroundEntity(ped) do
        Wait(1000)
    end
    while not NetworkIsSessionStarted() do
        Wait(1000)
    end
    TriggerServerEvent("vSync:getSync", GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
--  onResourceStart: re-request sync when the resource restarts
-- ---------------------------------------------------------------------------
AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    TriggerEvent("stopSodMusic", "darkpiano")
    TriggerServerEvent("vSync:getSync", GetPlayerServerId(PlayerId()))

    -- Clear wetness if not in water
    local ped = PlayerPedId()
    if not IsEntityInWater(ped) then
        ClearPedWetness(ped)
    end

    FreezeEntityPosition(ped, false)
    SetArtificialLightsState(false)
    Wait(3000)
    InitMeteo()
end)

-- ---------------------------------------------------------------------------
--  RayCastCustom(from, to)
--  Returns: hit (bool), hitCoords (vector3), hitEntity (int)
-- ---------------------------------------------------------------------------
function RayCastCustom(fromPos, toPos)
    local handle = StartShapeTestCapsule(
        fromPos.x, fromPos.y, fromPos.z,
        toPos.x,   toPos.y,   toPos.z,
        0.25, 1, 0, 7)
    local _, hit, hitCoords, _, hitEntity = GetShapeTestResult(handle)
    return hit, hitCoords, hitEntity
end

-- ---------------------------------------------------------------------------
--  Wet / rain exposure system
-- ---------------------------------------------------------------------------
BagnatoPioggia = -1.0   -- current wetness level (0 = dry, negative = dry/reset)
BagnatoDa      = 0      -- accumulated rain-exposure counter
ammalato       = false  -- player is ill from rain exposure
local hasPlayedCoughWarning = false   -- local throttle flag (was L2_1)

function SottoLaPioggia()
    if not exports.striano_core:gettutorial() then
        Wait(5000)
        return
    end

    local pedCoords = GetEntityCoords(PlayerPedId())
    local abovePed  = vector3(pedCoords.x, pedCoords.y, 1000.0)
    local _, _, hitEntity = RayCastCustom(abovePed, pedCoords)

    if hitEntity > 0 then
        -- Covered: dry out over time
        if not IsEntityInWater(PlayerPedId()) then
            if BagnatoPioggia > -1.0 then
                BagnatoPioggia = BagnatoPioggia - 0.01
                SetPedWetnessHeight(PlayerPedId(), BagnatoPioggia)
                if BagnatoDa > 0 then
                    BagnatoPioggia = -1.0
                    ClearPedWetness(PlayerPedId())
                    ammalato  = false
                    BagnatoDa = 0
                end
            end
        end
    else
        -- Not covered: check rain
        local exposed = true

        if CurrentWeather == "RAIN" and BagnatoPioggia == -1.0 then
            if not IsEntityInWater(PlayerPedId()) and not ammalato then
                if IsPedInAnyVehicle(PlayerPedId()) then
                    local veh     = GetVehiclePedIsIn(PlayerPedId())
                    local vehType = GetVehicleTypeRaw(veh)
                    if vehType >= 11 and vehType <= 13 then
                        -- open-top vehicle: still exposed
                    else
                        exposed = false
                    end
                end

                if exposed then
                    if not hasPlayedCoughWarning then
                        hasPlayedCoughWarning = true
                    end
                    Wait(5000)
                    ExecuteCommand("e cc")
                end
            end
        end

        if exposed then
            if not ammalato then
                local inRain  = CurrentWeather == "RAIN"
                local inWater = IsEntityInWater(PlayerPedId())
                if inRain or inWater then
                    BagnatoPioggia = BagnatoPioggia + 0.01
                    if BagnatoPioggia > -0.1 then
                        BagnatoPioggia = -0.1
                        BagnatoDa      = BagnatoDa + 1
                    else
                        SetPedWetnessHeight(PlayerPedId(), BagnatoPioggia)
                    end

                    if BagnatoDa == 30 then
                        exports.striano_combat:testo3d("You feel sick.")
                    elseif BagnatoDa == 60 then
                        ExecuteCommand("e cough")
                        BagnatoDa = 0
                        exports.striano_combat:testo3d("You are sick.")
                        ammalato = true
                    end
                end
            end
        else
            print("Non continuo perché risulto coperto in altri modi, tipo veicolo.")
        end
    end
end

-- ---------------------------------------------------------------------------
--  imCovered(ped) → bool
--  Returns true if the ped has something overhead (roof/ceiling).
-- ---------------------------------------------------------------------------
function imCovered(ped)
    local pos   = GetEntityCoords(ped)
    local above = vector3(pos.x, pos.y, 35.0)
    local _, _, hitEntity = RayCastCustom(above, pos)
    return hitEntity > 0
end

-- ---------------------------------------------------------------------------
--  GetCoperto(ped) → bool
--  Returns true if there is geometry directly above the ped (+50 z ray).
-- ---------------------------------------------------------------------------
function GetCoperto(ped)
    local pos   = GetEntityCoords(ped)
    local above = vector3(pos.x, pos.y, pos.z + 50.0)
    local _, _, hitEntity = RayCastCustom(above, pos)
    return hitEntity > 0
end

SonoCoperto = false   -- player is currently sheltered from the fog

-- ---------------------------------------------------------------------------
--  pioggia debug command
-- ---------------------------------------------------------------------------
RegisterCommand("pioggia", function(source, args)
    if tonumber(args[1]) == 1 then
        print("Var Pioggia: " .. tostring(BagnatoPioggia))
    end

    if CurrentWeather == "RAIN" then
        local pedCoords = GetEntityCoords(PlayerPedId())
        local abovePed  = vector3(pedCoords.x, pedCoords.y, 1000.0)
        local _, _, hitEntity = RayCastCustom(abovePed, pedCoords)
        if hitEntity > 0 then
            if not IsEntityInWater(PlayerPedId()) then
                exports.striano_combat:testo3d("Covered from water.")
            end
        else
            exports.striano_combat:testo3d("Not covered from wataer.")
        end
    else
        exports.striano_combat:testo3d("Not rain.")
    end
end)

-- ---------------------------------------------------------------------------
--  lerpTimecycleStrength(from, to, durationMs)
--  Smoothly transitions the timecycle modifier strength over time.
-- ---------------------------------------------------------------------------
local function lerpTimecycleStrength(fromStrength, toStrength, durationMs)
    CreateThread(function()
        local startTime = GetGameTimer()
        while true do
            local elapsed = GetGameTimer() - startTime
            local t       = math.min(elapsed / durationMs, 1.0)
            SetTimecycleModifierStrength(fromStrength + (toStrength - fromStrength) * t)
            if t >= 1.0 then break end
            Wait(0)
        end
        SetTimecycleModifierStrength(toStrength)
    end)
end

-- ---------------------------------------------------------------------------
--  Fall-damage toggle + ragdoll protection system
-- ---------------------------------------------------------------------------
local fallDamageEnabled    = false
local fallDamageThreadRunning = false

function SetPlayerFallDamage(disabled)
    fallDamageEnabled = not disabled
    if fallDamageEnabled and not fallDamageThreadRunning then
        fallDamageThreadRunning = true
        CreateThread(function()
            local wasAirborne = false
            while fallDamageEnabled do
                local ped = PlayerPedId()
                Wait(0)
                if IsPedRagdoll(ped) then
                    local height = GetEntityHeightAboveGround(ped)
                    if not wasAirborne and height > 1.0 then
                        wasAirborne = true
                        if math.random(1, 2) == 1 then
                            ExecuteCommand("addSporco")
                        else
                            ExecuteCommand("addSangue")
                        end
                        SetEntityInvincible(ped, true)
                        print("Invincibile!")
                    end
                elseif wasAirborne then
                    wasAirborne = false
                    SetEntityInvincible(ped, false)
                    local hp = GetEntityHealth(ped)
                    if hp - 10 > 110 then
                        SetEntityHealth(ped, hp - 10)
                    end
                    print("Ritorno normale not invicible!")
                end
            end
            fallDamageThreadRunning = false
        end)
    end
end

-- ---------------------------------------------------------------------------
--  EnemySpawner(maxZ, fogOnly)
--  Spawns night creatures near a stationary player during fog.
-- ---------------------------------------------------------------------------
local spawnerOriginCoords = nil   -- was L7_1

function EnemySpawner(maxZ, fogOnly)
    maxZ = maxZ or 9999.0
    local stationaryPos   = nil
    local stationaryTime  = nil
    local STATIONARY_DIST = 0.75
    local STATIONARY_MS   = 30000

    if spawnerOriginCoords ~= nil then return end  -- already running

    spawnerOriginCoords = GetEntityCoords(PlayerPedId())
    CreateThread(function()
        while true do
            if spawnerOriginCoords == nil then break end

            local pedCoords = GetEntityCoords(PlayerPedId())
            local distFromOrigin = #(pedCoords - spawnerOriginCoords)
            if distFromOrigin >= 150 then break end

            Wait(1000)
            local ped     = PlayerPedId()
            local timer   = GetGameTimer()

            -- Fog-only mode: abort if fog ended
            if fogOnly ~= nil and not NEBBIA then
                print("EnemySpawner FORCE CLOSED!")
                break
            end

            -- Check if the fog-damage timer has elapsed
            if timer >= fogTimerNext then
                local inVehicle = IsPedInAnyVehicle(ped)
                if inVehicle then fogSpawnInterval = 3000 end

                fogTimerNext = timer + fogSpawnInterval

                -- Spawn conditions: not prone/crouching/stealth/attached/dead/walking/safe
                if not exports.striano_editor:isProne()
                    and not IsPedWalking(ped)
                    and not inSafe
                    and not SonoCoperto
                    and not IsPedFatallyInjured(ped)
                    and not exports.striano_editor:crouchato()
                    and not exports.striano_editor:stealth()
                    and not IsEntityAttached(ped)
                then
                    local currentCoords = GetEntityCoords(ped)

                    if not stationaryPos then
                        stationaryPos  = currentCoords
                        stationaryTime = timer
                    end

                    local isStationary = #(currentCoords - stationaryPos) < STATIONARY_DIST
                    local longEnough   = isStationary and (timer - stationaryTime >= STATIONARY_MS)

                    if isStationary and longEnough then
                        -- Determine whether we can spawn (level check + fog check)
                        local canSpawn = true
                        if fogOnly ~= nil and not NEBBIA then canSpawn = false end

                        if canSpawn then
                            if currentCoords.z < maxZ then
                                -- Pick a random creature type
                                local creatureTypes = { "horror", "boarz", "spider", "skeleton", "coyote" }
                                local creature      = creatureTypes[math.random(1, #creatureTypes)]
                                local spawnOrigin   = GetEntityCoords(ped)
                                local minSpawnDist  = 7.0
                                if creature == "boarz" then minSpawnDist = 14.0 end

                                -- Wait for player to be at least minSpawnDist away from spawn origin
                                local waitPos = GetEntityCoords(ped)
                                while true do
                                    local curPos = GetEntityCoords(ped)
                                    if #(waitPos - curPos) >= minSpawnDist then break end
                                    Wait(500)
                                    fogTimerNext = timer + fogSpawnInterval
                                end

                                -- Verify spawn conditions again
                                if NEBBIA and not inSafe and not SonoCoperto
                                    and not IsPedFatallyInjured(ped)
                                    and not exports.striano_editor:crouchato()
                                    and not exports.striano_editor:stealth()
                                    and not IsEntityAttached(ped)
                                then
                                    local spawnCoords = GetEntityCoords(ped)
                                    if creature == "horror" then
                                        exports.striano_combat:spawnHorrorActive(spawnCoords)
                                    elseif creature == "boarz" then
                                        exports.striano_combat:cinghialez(spawnCoords)
                                    elseif creature == "spider" then
                                        exports.striano_combat:spiderz(spawnCoords)
                                    elseif creature == "skeleton" then
                                        exports.striano_combat:spawnSkeleton(spawnCoords)
                                    elseif creature == "coyote" then
                                        exports.striano_combat:spawnCoyoteEnemy(spawnCoords, "a_c_coyote")
                                    end

                                    -- Reset and wait for player to move away again
                                    spawnOrigin   = GetEntityCoords(ped)
                                    minSpawnDist  = minSpawnDist / 2
                                    while true do
                                        local cp = GetEntityCoords(ped)
                                        if #(spawnOrigin - cp) >= minSpawnDist then break end
                                        Wait(500)
                                        fogTimerNext = timer + fogSpawnInterval
                                    end
                                end
                            end
                        end
                    end

                    if isStationary and longEnough then
                        stationaryTime = timer
                        stationaryPos  = currentCoords
                    else
                        stationaryPos  = currentCoords
                        stationaryTime = timer
                    end
                else
                    stationaryPos  = nil
                    stationaryTime = timer
                end
            end
        end
        spawnerOriginCoords = nil
    end)
end

-- ---------------------------------------------------------------------------
--  Shift limiter (limits player movement speed)
-- ---------------------------------------------------------------------------
shiftLimiterActive = false

function StartShiftLimiter()
    if shiftLimiterActive then return end
    shiftLimiterActive = true
    CreateThread(function()
        while shiftLimiterActive do
            SetPedMaxMoveBlendRatio(PlayerPedId(), 2.0)
            Wait(0)
        end
    end)
end

function StopShiftLimiter()
    shiftLimiterActive = false
end

function ResetPlayerRun()
    local ped     = PlayerPedId()
    local player  = PlayerId()
    SetPedMaxMoveBlendRatio(ped, 10.0)
    SetPedMinMoveBlendRatio(ped, 0.0)
    SetPedMoveRateOverride(ped, 1.0)
    SetRunSprintMultiplierForPlayer(player, 1.0)
    SetPlayerSprint(player, true)
    ResetPedMovementClipset(ped, 1.0)
    ResetPedStrafeClipset(ped)
end

-- ---------------------------------------------------------------------------
--  Drunk / injured state (triggered when below 151 HP)
-- ---------------------------------------------------------------------------
pedDrunk         = false
local hurtTimer  = 0

-- ---------------------------------------------------------------------------
--  fuckDrunkDriver()
--  Returns a random movement-limiter entry (interaction key + time).
-- ---------------------------------------------------------------------------
local drunkDriverEntries = {
    { interaction = 7,  time = 800 },
    { interaction = 8,  time = 800 },
    { interaction = 10, time = 800 },
    { interaction = 11, time = 800 },
}

function fuckDrunkDriver()
    math.randomseed(GetGameTimer())
    return drunkDriverEntries[math.random(1, #drunkDriverEntries)]
end

-- ---------------------------------------------------------------------------
--  Whistle aliases
-- ---------------------------------------------------------------------------
RegisterCommand("fischio",  function() ExecuteCommand("e whistle") end)
RegisterCommand("fischia",  function() ExecuteCommand("e whistle") end)

-- ---------------------------------------------------------------------------
--  Atmosfera()
--  Main per-tick atmosphere updater: timecycle, weather, special zones,
--  fall damage, enemy spawner, calm-water toggling, drunk/hurt states.
-- ---------------------------------------------------------------------------
function Atmosfera()
    local ped     = PlayerPedId()

    -- Collect per-frame conditions
    local isInfiltri      = exports.striano_core:infiltri()
    local tutorialDone    = exports.striano_core:gettutorial()
    local inInduskfalls   = exports.striano_editor:induskfalls()
    local isSoffocating   = exports.striano_core:soffoco()
    local isFatallyHurt   = IsPedFatallyInjured(ped)
    local introFinished   = exports.striano_core:introBaseFinita()

    local shouldRun = not isInfiltri
        and tutorialDone
        and not inInduskfalls
        and not isSoffocating
        and not isFatallyHurt
        and (tutorialDone or introFinished)

    if not shouldRun then
        -- Reset the hurt timer when conditions aren't met
        local now = GetGameTimer()
        if now - hurtTimer > 1000 then
            hurtTimer = now
        end
        return
    end

    -- Hurt / health state
    SetPlayerFallDamage(true)
    local hp = GetEntityHealth(ped)

    if hp > 151 then
        -- Healthy: remove drunk state if it was active
        if pedDrunk then
            pedDrunk = false
            TriggerEvent("CaricamiCamminata")
            SetPedIsDrunk(ped, false)
            SetPedMotionBlur(ped, false)
            exports.striano_combat:showZone(" ", "you feel better.")
            shiftLimiterActive = false
            ResetPlayerRun()
            if GetEntitySpeed(ped) < 0.1 then
                ExecuteCommand("shakeoff")
            end
        end
    else
        -- Low health: activate drunk/injured state
        if not pedDrunk then
            if IsPedHuman(ped) then
                pedDrunk = true
                -- Bleed/splatter loop
                CreateThread(function()
                    while pedDrunk do
                        Wait(1000)
                        exports.striano_combat:splatterBlood(
                            GetEntityCoords(ped),
                            1.1, 1.1, 0.5,
                            vector3(80, 0, 0))
                    end
                end)
                -- Audio and visual feedback
                exports.xsound:PlayUrl("respirosurv", "sounds/respirosurv.mp3", 0.3)
                exports.striano_combat:showZone(" ", "you're hurt.")
                ExecuteCommand("addsangue")
                if GetEntitySpeed(ped) < 0.1 then
                    ExecuteCommand("e malditesta5")
                end
                SetPedIsDrunk(ped, true)
                SetPedMotionBlur(ped, true)
                ExecuteCommand("w injured")
                StartShiftLimiter()
            end
        end
    end

    -- Find which special zone (if any) the player is inside
    local pedCoords   = GetEntityCoords(ped)
    local activeZone  = nil
    local calmWaterOn = false

    for _, zone in ipairs(SpecialCoords) do
        local dist = #(pedCoords - zone.coords)
        if dist < zone.range then
            activeZone = zone
            break
        end
    end

    if activeZone then
        -- Apply zone timecycle
        if activeZone.tc ~= nil then
            SetTimecycleModifier(activeZone.tc)
            SetTimecycleModifierStrength(activeZone.tcp or 1.0)
        end
        -- Apply fall damage override
        if activeZone.fallDamage ~= nil then
            SetPlayerFallDamage(activeZone.fallDamage)
        end
        -- Start enemy spawner if configured
        if activeZone.enemySpawnRange then
            EnemySpawner(activeZone.enemySpawnRange)
        end
        -- Calm water
        if activeZone.calmWater then
            exports.striano_boat:calmWater(true)
            calmWaterOn = true
        end
    else
        -- Outside all special zones: reset to defaults
        if not calmWaterOn then
            exports.striano_boat:calmWater(false)
        end
        -- Restore weather unless xmas mode is active
        if not exports.striano_core:inxmas() then
            settamiMeteo(CurrentWeather)
        end
        SetTimecycleModifier(defaultCycle)
        SetTimecycleModifierStrength(defaultCycleForce)
    end
end

-- Export and command alias
exports("atmosfera", function() return Atmosfera() end)
RegisterCommand("atmosfera", function() Atmosfera() end)

-- ---------------------------------------------------------------------------
--  Startup mesh-wait: wait for ped to exist, then sync + init
-- ---------------------------------------------------------------------------
CreateThread(function()
    Wait(1000)
    while not DoesEntityExist(PlayerPedId()) do
        Wait(1000)
        print("Loading Mesh Player from vSync...")
    end
    TriggerServerEvent("vSync:getSync", GetPlayerServerId(PlayerId()))
    InitMeteo()
end)

-- ---------------------------------------------------------------------------
--  InitMeteo()
--  Requests time/weather sync and configures shadow / lighting settings.
-- ---------------------------------------------------------------------------
function InitMeteo()
    TriggerServerEvent("vSync:getSync", GetPlayerServerId(PlayerId()))
    Atmosfera()
    RopeDrawShadowEnabled(false)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(false)
    CascadeShadowsEnableEntityTracker(true)
    CascadeShadowsSetDynamicDepthMode(false)
    CascadeShadowsSetEntityTrackerScale(0.0)
    CascadeShadowsSetDynamicDepthValue(0.0)
    CascadeShadowsSetCascadeBoundsScale(0.0)
    SetFlashLightFadeDistance(0.0)
    SetLightsCutoffDistanceTweak(0.0)
    DistantCopCarSirens(false)
end

-- ---------------------------------------------------------------------------
--  Night fog – startNebbia
--  Activates night fog: sets weather, timecycle, starts spotlight + fog
--  tick threads, then triggers the enemy spawner after a 25-second delay.
-- ---------------------------------------------------------------------------
RegisterNetEvent("startNebbia")
AddEventHandler("startNebbia", function()
    if not exports.striano_core:gettutorial() then
        print("Non hai ancora fatto il tutorial per attivare la nebbia.")
        return
    end

    local ped       = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)

    if not exports.striano_core:sonoUnUccello() then
        if not exports.striano_core:introBaseFinita() then return end

        -- Must be far enough from the yacht (intro spawn)
        local yachtPos = vector3(3836.253, 6438.734, 0.613)
        if #(pedCoords - yachtPos) <= 15.0 then
            print("Still Night fog!")
            return
        end
        if pedCoords.z <= -10.0 then return end
        if IsEntityPlayingAnim(ped, "missfam1_yachtbattleonyacht02_", "onboom_hangloop_j", 1) then return end
        if NEBBIA then
            print("Still Night fog!")
            return
        end

        print("NIGHT FOG IS HERE!")
        NEBBIA = true

        -- Apply fog timecycle and weather
        SetTimecycleModifier(cyclenebbia)
        SetTimecycleModifierStrength(NebbiaCycleForce)
        NetworkOverrideClockTime(0, 0, 0)
        settamiMeteo("FOGGY")

        -- Sounds and notifications
        PlaySoundFrontend(-1, "Parcel_Vehicle_Lost", "GTAO_FM_Events_Soundset", 0)
        exports.striano_combat:submex(
            "Night is here, stay covered and use torch to survive the darkness. Check the end timer on top right of screen.")
        PlaySoundFrontend(-1, "Object_Dropped_Remote", "GTAO_FM_Events_Soundset", 0)
        exports.xsound:PlayUrl("darkpiano", "sounds/darkpiano.mp3", 0.01, true)
        ExecuteCommand("clearWaypoints")

        -- Check initial cover state
        local isCovered  = GetCoperto(ped)
        local inSafeZone = InSafeZone()
        local hasLight   = exports.striano_editor:lightProp()
        local inShelter  = false   -- shelter state (covered + safe)

        -- Spotlight thread: draws a spotlight around the ped while fog is active
        CreateThread(function()
            while NEBBIA do
                Wait(0)
                local covered = hasLight or IsEntityInWater(ped)
                if not covered then
                    Wait(1000)
                else
                    local zOffset = 1.3
                    if IsEntityInWater(ped) then zOffset = 2.5 end

                    local pos = GetEntityCoords(ped)
                    local fwd = GetEntityForwardVector(ped)
                    local frontPos = pos + fwd * 1.0
                    local rot = GetEntityRotation(ped)

                    DrawSpotLightWithShadow(
                        frontPos.x, frontPos.y, frontPos.z + zOffset,
                        rot.x, rot.y, rot.z - 180,
                        255, 90, 10, 7.0, 0.15, 5.0, 150.0, 10.0)
                    DrawSpotLightWithShadow(
                        frontPos.x, frontPos.y, frontPos.z + zOffset,
                        rot.x, rot.y, rot.z - 180,
                        255, 90, 10, 7.0, 0.15, 5.0, 150.0, 10.0)
                end
            end
        end)

        -- Cover-state monitor: transitions timecycle strength when player goes in/out of shelter
        CreateThread(function()
            while NEBBIA do
                Wait(1000)

                local nowPed    = PlayerPedId()
                local nowTimer  = GetGameTimer()
                hasLight        = exports.striano_editor:lightProp()
                local nowCover  = GetCoperto(nowPed) or hasLight
                isCovered       = nowCover

                inSafeZone = InSafeZone()
                if inSafeZone and isCovered then
                    inShelter = true
                else
                    inShelter = false
                end

                if isCovered then
                    if not IsPedRagdoll(nowPed) and not IsPedFatallyInjured(nowPed) then
                        if not SonoCoperto then
                            lerpTimecycleStrength(NebbiaCycleForce, CoveredCycleForce, 3000)
                            SonoCoperto = true
                            exports.striano_combat:testo3d("Covered from Fog")
                            fogTimerNext = nowTimer + fogSpawnInterval
                            if IsEntityPlayingAnim(nowPed, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 3) then
                                ExecuteCommand("e cc")
                            end
                        end
                    end
                else
                    if SonoCoperto then
                        if not IsPedRagdoll(nowPed) and not IsPedFatallyInjured(nowPed) then
                            lerpTimecycleStrength(CoveredCycleForce, NebbiaCycleForce, 3000)
                            SonoCoperto = false
                            local hasHat = Citizen.InvokeNative(-7918206464511161279, nowPed)
                            if not hasHat then
                                ExecuteCommand("e occhi")
                                fogTimerNext = nowTimer + fogSpawnInterval
                                exports.striano_combat:testo3d("You feel the Fog")
                                Wait(1500)
                                if IsEntityPlayingAnim(nowPed, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 3) then
                                    ExecuteCommand("e cc")
                                end
                            end
                        end
                    end
                end
            end
            TriggerEvent("stopSodMusic", "darkpiano")
        end)

        -- 25-second grace period before enemies start spawning
        local graceEnd = GetGameTimer() + 25000
        while GetGameTimer() < graceEnd do
            Wait(0)
            if not NEBBIA then return end
        end
        Wait(25000)
        if NEBBIA then
            EnemySpawner(nil, true)
        end
    else
        print("Tutorial not complete for Fog Night!")
    end
end)

-- ---------------------------------------------------------------------------
--  localFog debug command  –  toggles fog locally for testing
-- ---------------------------------------------------------------------------
RegisterCommand("localFog", function()
    NEBBIA = not NEBBIA
    if not NEBBIA then
        TriggerEvent("endNebbia")
    else
        NEBBIA = false
        TriggerEvent("startNebbia")
        Wait(1500)
        NetworkOverrideClockTime(0, 0, 0)
        defaultH = 0
    end
end)

-- ---------------------------------------------------------------------------
--  endNebbia  –  Deactivates the night fog, restores atmosphere
-- ---------------------------------------------------------------------------
RegisterNetEvent("endNebbia")
AddEventHandler("endNebbia", function()
    if not exports.striano_core:gettutorial() then return end

    local ped = PlayerPedId()
    if IsEntityPlayingAnim(ped, "missfam1_yachtbattleonyacht02_", "onboom_hangloop_j", 1) then return end
    if not NEBBIA then return end

    NEBBIA      = false
    timerNebbia = 0.0

    Wait(1500)
    ExecuteCommand("Atmosfera")
    Wait(1500)

    if not IsEntityAttached(ped) then
        if not SonoCoperto then
            if not exports.striano_editor:isProne() then
                if not IsEntityInWater(ped) then
                    local suffix = math.random(2, 4)
                    ExecuteCommand("e malditesta" .. suffix)
                end
            end
        end
    end

    exports.striano_combat:submex("Night is over.")
    SetArtificialLightsState(false)
    ExecuteCommand("delEnemy")
    PlaySoundFrontend(-1, "Player_Exit_Line", "GTAO_FM_Cross_The_Line_Soundset", 0)

    Wait(1500)

    if not SonoCoperto then
        if not exports.striano_editor:isProne() then
            TriggerEvent("funcUccellini")
            ExecuteCommand("fixcrouch")
        end
    end

    SonoCoperto = false
end)

-- ---------------------------------------------------------------------------
--  resetFameSete  –  Reset hunger/thirst drunk state
-- ---------------------------------------------------------------------------
RegisterNetEvent("resetFameSete")
AddEventHandler("resetFameSete", function()
    SetPedIsDrunk(PlayerPedId(), false)
    sonoAffamato = false
    sonoAssetato = false
end)

-- ---------------------------------------------------------------------------
--  sod:safemode:update  –  Safe-mode timer HUD update
-- ---------------------------------------------------------------------------
RegisterNetEvent("sod:safemode:update")
AddEventHandler("sod:safemode:update", function(data)
    SendNUIMessage({
        action  = "safeModeTimer",
        enabled = data.enabled == true,
        active  = data.active  == true,
        seconds = tonumber(data.seconds) or 0,
    })
end)

-- ---------------------------------------------------------------------------
--  Startup: request nebbia state and safe-mode sync
-- ---------------------------------------------------------------------------
CreateThread(function()
    Wait(3000)
    TriggerServerEvent("sod:safemode:getNebbia")
    TriggerServerEvent("sod:safemode:requestSync")
end)

-- ---------------------------------------------------------------------------
--  GetNebbiaBack  –  Server tells client to restore fog on reconnect
-- ---------------------------------------------------------------------------
RegisterNetEvent("GetNebbiaBack")
AddEventHandler("GetNebbiaBack", function(state)
    if state == 1 then
        NEBBIA = false
        TriggerEvent("startNebbia")
        Wait(1500)
        NetworkOverrideClockTime(0, 0, 0)
        defaultH = 0
    end
end)
