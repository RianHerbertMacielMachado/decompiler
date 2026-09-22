-- dispugnoclient.lua
-- striano_core / client / [phar client]
-- World-cleanup, scenario suppression, idle-cam invalidation and /film mode.

-- ──────────────────────────────────────────────────────────────────────────────
-- Suppress ambient vehicle models that should never spawn on this server.
-- ──────────────────────────────────────────────────────────────────────────────

local suppressedVehicles = {
    "mammatus", "duster",  "policeb",    "police",
    "rhino",    "polmav",  "blimp",      "barracks3",
    "barracks2","barracks","titan",      "lazer",
    "blimp2",   "blimp3",  "annihilator","buzzard",
    "buzzard2", "cargobob","cargobob2",  "cargobob3",
    "cargobob4","frogger", "frogger2",   "maverick",
    "savage",   "skylift", "supervolito","supervolito2",
    "swift",    "swift2",  "valkyrie",   "valkyrie2",
    "volatus",  "savage",  "trailers",   "trailers2",
    "trailers3","trailers4","tanker",    "tvtrailer",
    "tanker2",  "trailerlarge","trailerlogs","tr2",
    "tr3",      "tr4",     "trflat",     "armytrailer",
}

CreateThread(function()
    for _, model in ipairs(suppressedVehicles) do
        SetVehicleModelIsSuppressed(GetHashKey(model), true)
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- World-population and scenario suppression.
-- ──────────────────────────────────────────────────────────────────────────────

local suppressedScenarios = {
    "WORLD_VEHICLE_ATTRACTOR",
    "WORLD_VEHICLE_AMBULANCE",
    "WORLD_VEHICLE_BICYCLE_BMX",
    "WORLD_VEHICLE_BICYCLE_BMX_BALLAS",
    "WORLD_VEHICLE_BICYCLE_BMX_FAMILY",
    "WORLD_VEHICLE_BICYCLE_BMX_HARMONY",
    "WORLD_VEHICLE_BICYCLE_BMX_VAGOS",
    "WORLD_VEHICLE_BICYCLE_MOUNTAIN",
    "WORLD_VEHICLE_BICYCLE_ROAD",
    "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE",
    "WORLD_VEHICLE_BIKER",
    "WORLD_VEHICLE_BOAT_IDLE",
    "WORLD_VEHICLE_BOAT_IDLE_ALAMO",
    "WORLD_VEHICLE_BOAT_IDLE_MARQUIS",
    "WORLD_VEHICLE_BOAT_IDLE_MARQUIS",
    "WORLD_VEHICLE_BROKEN_DOWN",
    "WORLD_VEHICLE_BUSINESSMEN",
    "WORLD_VEHICLE_HELI_LIFEGUARD",
    "WORLD_VEHICLE_CLUCKIN_BELL_TRAILER",
    "WORLD_VEHICLE_CONSTRUCTION_SOLO",
    "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS",
    "WORLD_VEHICLE_DRIVE_PASSENGERS",
    "WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED",
    "WORLD_VEHICLE_DRIVE_SOLO",
    "WORLD_VEHICLE_FIRE_TRUCK",
    "WORLD_VEHICLE_EMPTY",
    "WORLD_VEHICLE_MARIACHI",
    "WORLD_VEHICLE_MECHANIC",
    "WORLD_VEHICLE_MILITARY_PLANES_BIG",
    "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
    "WORLD_VEHICLE_PARK_PARALLEL",
    "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN",
    "WORLD_VEHICLE_PASSENGER_EXIT",
    "WORLD_VEHICLE_POLICE_BIKE",
    "WORLD_VEHICLE_POLICE_CAR",
    "WORLD_VEHICLE_POLICE",
    "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
    "WORLD_VEHICLE_QUARRY",
    "WORLD_VEHICLE_SALTON",
    "WORLD_VEHICLE_SALTON_DIRT_BIKE",
    "WORLD_VEHICLE_SECURITY_CAR",
    "WORLD_VEHICLE_STREETRACE",
    "WORLD_VEHICLE_TOURBUS",
    "WORLD_VEHICLE_TOURIST",
    "WORLD_VEHICLE_TANDL",
    "WORLD_VEHICLE_TRACTOR",
    "WORLD_VEHICLE_TRACTOR_BEACH",
    "WORLD_VEHICLE_TRUCK_LOGS",
    "WORLD_VEHICLE_TRUCKS_TRAILERS",
    "WORLD_VEHICLE_DISTANT_EMPTY_GROUND",
}

Citizen.CreateThread(function()
    -- Disable all ambient ped groups 1–12.
    for i = 1, 12 do
        Citizen.InvokeNative(-2589708906090604458, i, false)
    end

    DisableVehicleDistantlights(true)
    SetPedPopulationBudget(0)
    SetVehiclePopulationBudget(0)
    SetRandomEventFlag(false)

    for _, scenario in pairs(suppressedScenarios) do
        SetScenarioTypeEnabled(scenario, false)
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- Idle camera invalidation — prevent the auto-rotate idle cam.
-- ──────────────────────────────────────────────────────────────────────────────

CreateThread(function()
    while true do
        InvalidateIdleCam()
        InvalidateVehicleIdleCam()
        Wait(20000)
    end
end)

-- ──────────────────────────────────────────────────────────────────────────────
-- /film — cinematic letterbox / film mode toggle
-- ──────────────────────────────────────────────────────────────────────────────

local filmModeActive = false
local filmOffset     = { x = 0.0, y = -0.001 }

--- Draw a rectangle from its top-left corner (converts to centre-based coords
--- expected by the native DrawRect).
function drawRct(x, y, w, h, r, g, b, a)
    DrawRect(x + w / 2, y + h / 2, w, h, r, g, b, a)
end

--- Hide the main HUD components for the current frame.
function HideHUDThisFrame()
    HideHelpTextThisFrame()
    for _, component in ipairs({ 1, 2, 3, 4, 6, 7, 8, 9, 13, 15, 18, 19 }) do
        HideHudComponentThisFrame(component)
    end
end

--- Spawn the per-frame letterbox drawing thread (runs until film mode is off).
function LoopFilm()
    CreateThread(function()
        while true do
            Wait(0)
            if filmModeActive then
                HideHUDThisFrame()
                -- Top bar
                drawRct(filmOffset.x + 0.0, filmOffset.y + 0.0,   1.0, 0.15,  0, 0, 0, 255)
                -- Bottom bar
                drawRct(filmOffset.x + 0.0, filmOffset.y + 0.85,  1.0, 0.151, 0, 0, 0, 255)
            else
                return  -- exit thread when film mode is deactivated
            end
        end
    end)
end

RegisterCommand("film", function()
    filmModeActive = not filmModeActive

    if filmModeActive then
        ExecuteCommand("clearwaypoints")
        ExecuteCommand("hudoff")
        ExecuteCommand("hudoff2")
        exports.sod_watermark:sod_mark(false)
        LoopFilm()
    else
        ExecuteCommand("hudon")
        ExecuteCommand("hudon2")
        exports.striano_core:setwatermark(true)
    end
end, false)
