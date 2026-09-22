-- ffclient.lua
-- Core client module: craft/class system, BB mode, resync, report, animal/prop editors,
-- skinning, prop freeze, hurt/bleed loop, boat anchor, vehicle rescue, class selector, etc.

-- ============================================================
-- Module-level state
-- ============================================================
local craftLevel     = 1          -- player craft level
local craftXP        = 0          -- player craft XP
local classePL       = 0          -- player class/rank index
local jobClass       = "Tuttofare"-- player job class name (unused display)

-- Positional snapshot tables (used by BB mode)
local bbPosA         = { pos = vector3(0.0, 0.0, 0.0) }
local bbPosB         = { pos = vector3(0.0, 0.0, 0.0) }

bbadmin              = false       -- global: BB admin mode active
local lastTargetEntity = nil       -- last entity selected in BB / prop mode
local resyncReady    = true        -- cooldown flag for /resync
local isHurt         = false       -- player is in hurt/bleed state
local hurtLoopActive = false       -- LoopInciampare thread running flag

-- Report system
local reportModeActive = false
local reportText       = ""

-- Animal attachment offsets
local animalAttOffX = 0.0
local animalAttOffY = 0.0
local animalAttOffZ = 0.0
local animalAttRotX = 0.0
local animalAttRotY = 0.0
local animalAttRotZ = 0.0
local currentAnimal = nil

-- Player prop editor offsets
local currentEditorProp = nil
local editorBone        = nil
local edOffX, edOffY, edOffZ = 0.0, 0.0, 0.0
local edRotX, edRotY, edRotZ = 0.0, 0.0, 0.0

InEditV              = nil         -- global: vehicle editor prop

-- Boat anchor (stores last boat used)
local anchoredBoat   = nil

-- "Editor panda" mode (entity-outline selector)
local editorPandaActive = false
local pandaSelectedEnt  = 0       -- currently outlined entity

-- Skinning cooldown
local scuoiaReady    = true

-- ============================================================
-- Pickup hash → item name map  (24 entries)
-- ============================================================
local pickupHashMap = {
    { 3383496913,   "carta"         },
    { 1832502141,   "bottigliavuota"},
    { 683570518,    "bottigliavuota"},
    { 746336278,    "bottigliavuota"},
    { 1020618269,   "bottigliavuota"},
    { 2976174023,   "bottigliavuota"},
    { -1318793273,  "bottigliavuota"},
    { -1122944124,  "bottigliavuota"},
    { -598185919,   "bottigliavuota"},
    { 2094167240,   "bottigliavuota"},
    { 1450083036,   "lattinasporca" },
    { 242383520,    "plastica"      },
    { -1782124930,  "carta"         },
    { -934709748,   "lattinasporca" },
    { -318675343,   "bottigliavuota"},
    { 373968603,    "bottigliavuota"},
    { -2034186658,  "bottigliavuota"},
    { 128947832,    "bottigliavuota"},
    { 1865096345,   "bottigliavuota"},
    { 1683627545,   "bottigliavuota"},
    { -1972908162,  "bottigliavuota"},
    { 677373472,    "bottigliavuota"},
    { 69171637,     "bottigliavuota"},
    { 1318242715,   "bottigliavuota"},
}

-- ============================================================
-- Helper: suppressed airport scenario groups / vehicle hashes
-- ============================================================
local suppressedAirportScenarios = {
    "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
    "WORLD_VEHICLE_MILITARY_PLANES_BIG",
}
local suppressedAirportGroups = {
    2017590552,
    2141866469,
    1409640232,
    "ng_planes",
}
local suppressedAirportVehicles = {
    "SHAMAL","LUXOR","LUXOR2","JET","LAZER","TITAN",
    "BARRACKS","BARRACKS2","CRUSADER","RHINO","AIRTUG","RIPLEY",
}

-- ============================================================
-- Helper: wheel-surface material groups for /blocca commands
-- ============================================================
local wheelMatSlots = { 0,1,2,3,4,5,6,7,8,9,10,11,12,17,18,19,20 }

-- ============================================================
-- rotToFwd(rotation) → {x,y,z} forward vector
-- ============================================================
local function rotToFwd(rotation)
    local rad = {
        x = math.pi / 180 * rotation.x,
        y = math.pi / 180 * rotation.y,
        z = math.pi / 180 * rotation.z,
    }
    return {
        x = -math.sin(rad.z) * math.abs(math.cos(rad.x)),
        y =  math.cos(rad.z) * math.abs(math.cos(rad.x)),
        z =  math.sin(rad.x),
    }
end

-- ============================================================
-- GetCamTarget(distance, flags) → hit, hitCoords, hitEntity
--   Shape-test ray from camera to distance, returns first hit.
-- ============================================================
local function GetCamTarget(distance, flags)
    local camRot   = GetGameplayCamRot()
    local camCoord = GetGameplayCamCoord()
    local fwd      = rotToFwd(camRot)
    local dest     = {
        x = camCoord.x + fwd.x * distance,
        y = camCoord.y + fwd.y * distance,
        z = camCoord.z + fwd.z * distance,
    }
    if flags == nil then flags = -1 end
    local rayHandle = StartShapeTestRay(
        camCoord.x, camCoord.y, camCoord.z,
        dest.x, dest.y, dest.z,
        flags, PlayerPedId(), 7
    )
    local hit, coords, _, entity = GetShapeTestResult(rayHandle)
    return hit, coords, entity
end

-- ============================================================
-- round3(n, decimals) — round to N decimal places
-- ============================================================
function round3(n, decimals)
    local mult = 10 ^ (decimals or 0)
    return math.floor(n * mult + 0.5) / mult
end

-- ============================================================
-- Init thread: wait for collision + session, load status vars
-- ============================================================
AddEventHandler("esx:onPlayerDeath", function()
    if isHurt then
        ExecuteCommand("inbraccio")
    end
end)

CreateThread(function()
    Wait(3000)
    local ped = PlayerPedId()
    while not HasCollisionLoadedAroundEntity(ped) do Wait(1000) end
    while not NetworkIsSessionStarted()             do Wait(1000) end

    local v
    v = exports.striano_core:getStatusClient("classepl")
    if v then classePL = v end
    v = exports.striano_core:getStatusClient("craftxp")
    if v then craftXP = v end
    v = exports.striano_core:getStatusClient("craftlv")
    if v then craftLevel = v end
end)

-- ============================================================
-- RegisterKeyMapping + /resync command
-- ============================================================
RegisterKeyMapping("resync", "Resync PG", "keyboard", "f5")
RegisterCommand("resync", function()
    if not resyncReady then return end
    local ped = PlayerPedId()
    if not IsPedHuman(ped) then return end
    if IsPedRagdoll(ped) then return end
    if exports.striano_editor:IsPlayerProne() then return end
    if IsEntityPositionFrozen(ped) then return end

    if IsPedSittingInAnyVehicle(ped) then
        -- In vehicle: brief cooldown + ragdoll timer reset
        resyncReady = false
        Wait(2000)
        resyncReady = true
        ResetPedRagdollTimer(ped)
    elseif IsPedRunning(ped) or IsPedSprinting(ped) or IsPedWalking(ped) then
        -- Moving on foot: cooldown + ragdoll timer reset
        resyncReady = false
        Wait(2000)
        resyncReady = true
        ResetPedRagdollTimer(ped)
    else
        -- Standing idle: trigger walk reload + ragdoll fall stretch
        if resyncReady then
            TriggerEvent("CaricamiCamminata")
            PlaySoundFrontend(-1, "LEADERBOARD", "HUD_MINI_GAME_SOUNDSET", 1)
            SetPedToRagdollWithFall(ped, 75, 75, 1,
                GetEntityForwardVector(ped),
                1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
            Wait(250)
            ExecuteCommand("e stretch5")
            Wait(2000)
            resyncReady = true
        end
    end
end)

-- ============================================================
-- /fxm — toggle Mumble voice (voice reconnect)
-- ============================================================
RegisterCommand("fxm", function()
    MumbleSetActive(false)
    Wait(1000)
    MumbleSetActive(true)
end)

-- ============================================================
-- c_leva:rbv — remove a building gate by hash at a position
-- ============================================================
RegisterNetEvent("c_leva:rbv")
AddEventHandler("c_leva:rbv", function(pos, modelHash)
    local gate = GetClosestObjectOfType(pos, 0.1, modelHash, 0, 0, 0)
    if gate ~= 0 then
        SetEntityAsMissionEntity(gate)
        SetEntityAlpha(gate, 0)
        DeleteEntity(gate)
    end
end)

-- ============================================================
-- BB mode thread
-- B key held → raycast 25 m, draw marker, copy entity info
-- /copia — write coords+model to clipboard
-- /bbadmin — toggle bbadmin global
-- ============================================================
local BB_RAYCAST_DIST = 25.0
local bbCopyDone    = false
local bKeyCounter   = 0

CreateThread(function()
    while true do
        Wait(0)
        if not bbadmin then
            Wait(500)
        else
            local ped = PlayerPedId()
            if IsControlPressed(0, 29) then  -- B key
                local hit, hitCoords, entity = GetCamTarget(BB_RAYCAST_DIST, -1)
                if hit and entity and entity ~= 0 then
                    -- Draw target marker
                    DrawMarker(1,
                        hitCoords.x, hitCoords.y, hitCoords.z,
                        0.0, 0.0, 0.0,
                        0.0, 0.0, 0.0,
                        0.5, 0.5, 0.5,
                        255, 165, 0, 180,
                        false, true, 2, nil, nil, false)

                    lastTargetEntity = entity
                    bKeyCounter = bKeyCounter + 1

                    -- Store position snapshots
                    bbPosA.pos = GetEntityCoords(ped)
                    bbPosB.pos = hitCoords

                    if bbCopyDone then
                        bbCopyDone = false
                    end
                else
                    bKeyCounter = 0
                    lastTargetEntity = nil
                end
            else
                bKeyCounter = 0
            end
        end
    end
end)

-- /copia — copy BB entity coordinates and model to clipboard
RegisterCommand("copia", function()
    if lastTargetEntity == nil then
        exports.striano_combat:submexError("Nessuna entity selezionata con ~h~B~h~.")
        return
    end
    local coords = GetEntityCoords(lastTargetEntity)
    local model  = GetEntityModel(lastTargetEntity)
    local txt    = string.format("coords=vector3(%.4f,%.4f,%.4f) model=%d", coords.x, coords.y, coords.z, model)
    exports.striano_core:draw(txt)
    bbCopyDone = true
end)

RegisterCommand("bbadmin", function()
    bbadmin = not bbadmin
    if bbadmin then
        PlaySoundFrontend(-1, "Turn", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
    end
end)

-- ============================================================
-- Draw3DText(x, y, z, text) — world-space 3D text label
-- ============================================================
function Draw3DText(x, y, z, text)
    local str = "" .. text .. ""
    SetTextScale(0.35, 0.35)
    SetTextFont(7)
    SetTextOutline()
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(str)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

-- ============================================================
-- Report system
-- /rep, /report, /reporta → funcReport toggle
-- FunzioneReportPL() — aim at player → send ff:report event
-- ============================================================
local function funcReport(_, _)
    reportModeActive = not reportModeActive
    if not reportModeActive then
        reportText = ""
        return
    end
    CreateThread(function() FunzioneReportPL() end)
end

function FunzioneReportPL()
    while reportModeActive do
        Wait(0)
        local hit, _, entity = GetCamTarget(50.0, 2)  -- flag 2 = peds
        if hit and entity and entity ~= 0 and IsPedAPlayer(entity) then
            local targetServerId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity))
            exports.striano_combat:submexInfo("Reportando giocatore ID: " .. targetServerId)
            TriggerServerEvent("ff:report", targetServerId, reportText)
            reportModeActive = false
            reportText = ""
        end
    end
end

RegisterCommand("rep",     funcReport)
RegisterCommand("report",  funcReport)
RegisterCommand("reporta", funcReport)
RegisterCommand("users",   function() ExecuteCommand("user") end)

-- ============================================================
-- Animal attachment system
-- /ra — attach nearest animal to nearest vehicle
-- /sa — detach animal
-- UpdateMuoviAnimale() — live offset editor for attached animal
-- ============================================================
local function reattachAnimal()
    if currentAnimal and DoesEntityExist(currentAnimal) then
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        if veh ~= 0 then
            AttachEntityToEntity(
                currentAnimal, veh,
                0,
                animalAttOffX, animalAttOffY, animalAttOffZ,
                animalAttRotX, animalAttRotY, animalAttRotZ,
                false, false, false, false, 2, true
            )
        end
    end
end

function UpdateMuoviAnimale()
    CreateThread(function()
        while currentAnimal and DoesEntityExist(currentAnimal) do
            Wait(0)
            local step    = 0.01
            local rotStep = 1.0

            -- Space modifier → Z/rotation axes; LShift → rotation; plain → X/Y
            if IsControlPressed(0, 22) then      -- Space held
                if IsControlJustPressed(0, 172) then animalAttOffZ = animalAttOffZ + step; reattachAnimal() end
                if IsControlJustPressed(0, 173) then animalAttOffZ = animalAttOffZ - step; reattachAnimal() end
                if IsControlJustPressed(0, 174) then animalAttRotZ = animalAttRotZ - rotStep; reattachAnimal() end
                if IsControlJustPressed(0, 175) then animalAttRotZ = animalAttRotZ + rotStep; reattachAnimal() end
            elseif IsControlPressed(0, 21) then  -- LShift held
                if IsControlJustPressed(0, 172) then animalAttRotX = animalAttRotX + rotStep; reattachAnimal() end
                if IsControlJustPressed(0, 173) then animalAttRotX = animalAttRotX - rotStep; reattachAnimal() end
                if IsControlJustPressed(0, 174) then animalAttRotY = animalAttRotY - rotStep; reattachAnimal() end
                if IsControlJustPressed(0, 175) then animalAttRotY = animalAttRotY + rotStep; reattachAnimal() end
            else
                if IsControlJustPressed(0, 172) then animalAttOffX = animalAttOffX + step; reattachAnimal() end
                if IsControlJustPressed(0, 173) then animalAttOffX = animalAttOffX - step; reattachAnimal() end
                if IsControlJustPressed(0, 174) then animalAttOffY = animalAttOffY - step; reattachAnimal() end
                if IsControlJustPressed(0, 175) then animalAttOffY = animalAttOffY + step; reattachAnimal() end
            end

            -- E key: print offsets
            if IsControlJustPressed(0, 38) then
                exports.striano_combat:submexInfo(string.format(
                    "Animal off: %.3f %.3f %.3f | rot: %.1f %.1f %.1f",
                    animalAttOffX, animalAttOffY, animalAttOffZ,
                    animalAttRotX, animalAttRotY, animalAttRotZ))
            end
        end
    end)
end

function RimorchioAnimale(playerPed, animalPed)
    local veh = GetVehiclePedIsIn(playerPed, false)
    if veh == 0 then
        exports.striano_combat:submexError("Devi essere su un veicolo.")
        return
    end
    currentAnimal = animalPed
    animalAttOffX, animalAttOffY, animalAttOffZ = 0.0, 0.0, 0.0
    animalAttRotX, animalAttRotY, animalAttRotZ = 0.0, 0.0, 0.0
    AttachEntityToEntity(
        animalPed, veh, 0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        false, false, false, false, 2, true
    )
    UpdateMuoviAnimale()
    exports.striano_combat:submexInfo("Animale agganciato. Usa frecce/Space/LShift per regolare.")
end

RegisterCommand("ra", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh == 0 then
        exports.striano_combat:submexError("Sali su un veicolo prima.")
        return
    end
    -- Find closest ped that is not a player and not human
    local coords = GetEntityCoords(ped)
    local handle, animal = FindFirstPed()
    local closest, closestDist = nil, math.huge
    local found = handle ~= nil and handle ~= -1
    while found do
        if animal and animal ~= 0 and DoesEntityExist(animal)
           and not IsPedAPlayer(animal) and not IsPedHuman(animal) then
            local d = #(GetEntityCoords(animal) - coords)
            if d < closestDist then
                closestDist = d
                closest = animal
            end
        end
        found, animal = FindNextPed(handle)
    end
    EndFindPed(handle)
    if closest and closestDist < 5.0 then
        RimorchioAnimale(ped, closest)
    else
        exports.striano_combat:submexError("Nessun animale vicino.")
    end
end)

RegisterCommand("sa", function()
    if currentAnimal and DoesEntityExist(currentAnimal) then
        DetachEntity(currentAnimal, true, true)
        SetPedToRagdoll(currentAnimal, 1500, 1500, 0, false, false, false)
        ApplyForceToEntity(currentAnimal, 1, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
        TriggerServerEvent("ff:staccaAnimale", NetworkGetNetworkIdFromEntity(currentAnimal))
    end
    currentAnimal = nil
    exports.striano_combat:submexInfo("Animale sganciato.")
end)

RegisterNetEvent("ff:staccaAnimale")
AddEventHandler("ff:staccaAnimale", function(netId)
    local animal = NetToEnt(netId)
    if animal and DoesEntityExist(animal) then
        DetachEntity(animal, true, true)
        SetPedToRagdoll(animal, 1500, 1500, 0, false, false, false)
        ApplyForceToEntity(animal, 1, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
    end
end)

-- ============================================================
-- FaCrashare:msgAdminClient — relay crash message to server
-- ============================================================
RegisterNetEvent("FaCrashare:msgAdminClient")
AddEventHandler("FaCrashare:msgAdminClient", function(msg)
    TriggerServerEvent("FaCrashare:msgAdmin", msg)
end)

-- ============================================================
-- Player prop editor
-- AddPropToPlayerFF(model, boneId, x,y,z,rx,ry,rz)
-- ff:avviaEditorPlayer net event
-- /stopeditatt command
-- UpdateEditorAtt() — 6-axis interactive thread
-- ============================================================
function AddPropToPlayerFF(model, boneId, ox, oy, oz, rx, ry, rz)
    if currentEditorProp and DoesEntityExist(currentEditorProp) then
        DeleteEntity(currentEditorProp)
    end
    local hash = GetHashKey(model)
    RequestModel(hash)
    while not HasModelLoaded(hash) do Wait(0) end

    local ped  = PlayerPedId()
    local prop = CreateObject(hash, 0.0, 0.0, 0.0, true, true, false)
    SetEntityCollision(prop, false, false)
    AttachEntityToEntity(
        prop, ped,
        GetPedBoneIndex(ped, boneId),
        ox, oy, oz, rx, ry, rz,
        true, true, false, true, 1, true
    )
    currentEditorProp = prop
    editorBone = boneId
    edOffX, edOffY, edOffZ = ox, oy, oz
    edRotX, edRotY, edRotZ = rx, ry, rz
    SetModelAsNoLongerNeeded(hash)
end

RegisterNetEvent("ff:avviaEditorPlayer")
AddEventHandler("ff:avviaEditorPlayer", function(model, boneId, ox, oy, oz, rx, ry, rz)
    AddPropToPlayerFF(model, boneId, ox, oy, oz, rx, ry, rz)
    UpdateEditorAtt()
end)

RegisterCommand("stopeditatt", function()
    if currentEditorProp and DoesEntityExist(currentEditorProp) then
        DeleteEntity(currentEditorProp)
    end
    currentEditorProp = nil
    editorBone = nil
    edOffX, edOffY, edOffZ = 0.0, 0.0, 0.0
    edRotX, edRotY, edRotZ = 0.0, 0.0, 0.0
    exports.striano_combat:submexInfo("Editor prop rimosso.")
end)

function UpdateEditorAtt()
    if not currentEditorProp then
        exports.striano_combat:submexError("Editor già attivo.")
        return
    end
    CreateThread(function()
        while currentEditorProp and DoesEntityExist(currentEditorProp) do
            Wait(0)
            local step    = 0.005
            local rotStep = 0.5
            local changed = false

            -- Ctrl modifier → rotation on X/Y/Z
            if IsControlPressed(0, 155) then           -- Ctrl
                if IsControlJustPressed(0, 172) then edRotX = edRotX + rotStep; changed = true end
                if IsControlJustPressed(0, 173) then edRotX = edRotX - rotStep; changed = true end
                if IsControlJustPressed(0, 174) then edRotY = edRotY - rotStep; changed = true end
                if IsControlJustPressed(0, 175) then edRotY = edRotY + rotStep; changed = true end
                if IsControlJustPressed(0, 22)  then edRotZ = edRotZ + rotStep; changed = true end
                if IsControlJustPressed(0, 177) then edRotZ = edRotZ - rotStep; changed = true end
            -- Space modifier → Z offset
            elseif IsControlPressed(0, 22) then        -- Space
                if IsControlJustPressed(0, 172) then edOffZ = edOffZ + step; changed = true end
                if IsControlJustPressed(0, 173) then edOffZ = edOffZ - step; changed = true end
            else
                -- Plain arrows → X/Y offset
                if IsControlJustPressed(0, 172) then edOffX = edOffX + step; changed = true end
                if IsControlJustPressed(0, 173) then edOffX = edOffX - step; changed = true end
                if IsControlJustPressed(0, 174) then edOffY = edOffY - step; changed = true end
                if IsControlJustPressed(0, 175) then edOffY = edOffY + step; changed = true end
            end

            if changed then
                local ped = PlayerPedId()
                DetachEntity(currentEditorProp, false, false)
                AttachEntityToEntity(
                    currentEditorProp, ped,
                    GetPedBoneIndex(ped, editorBone),
                    edOffX, edOffY, edOffZ,
                    edRotX, edRotY, edRotZ,
                    true, true, false, true, 1, true
                )
            end

            -- E key: copy current values
            if IsControlJustPressed(0, 38) then
                exports.striano_combat:submexInfo(string.format(
                    "off: %.3f %.3f %.3f | rot: %.1f %.1f %.1f",
                    edOffX, edOffY, edOffZ, edRotX, edRotY, edRotZ))
            end
        end
    end)
end

-- ============================================================
-- Vehicle prop editor
-- AddPropToVehicleFF(vehicle, model, x,y,z,rx,ry,rz)
-- ff:avviaEditorVeicolo net event
-- UpdateVEditorAtt(vehicle) — 6-axis interactive thread
-- ============================================================
function AddPropToVehicleFF(vehicle, model, ox, oy, oz, rx, ry, rz)
    if InEditV and DoesEntityExist(InEditV) then
        DeleteEntity(InEditV)
    end
    local hash = GetHashKey(model)
    RequestModel(hash)
    while not HasModelLoaded(hash) do Wait(0) end

    local prop = CreateObject(hash, 0.0, 0.0, 0.0, true, true, false)
    SetEntityCollision(prop, false, false)
    AttachEntityToEntity(
        prop, vehicle, 0,
        ox, oy, oz, rx, ry, rz,
        false, false, false, false, 2, true
    )
    InEditV = prop
    edOffX, edOffY, edOffZ = ox, oy, oz
    edRotX, edRotY, edRotZ = rx, ry, rz
    SetModelAsNoLongerNeeded(hash)
end

RegisterNetEvent("ff:avviaEditorVeicolo")
AddEventHandler("ff:avviaEditorVeicolo", function(netVehId, model, ox, oy, oz, rx, ry, rz)
    local vehicle = NetToVeh(netVehId)
    if vehicle and vehicle ~= 0 then
        AddPropToVehicleFF(vehicle, model, ox, oy, oz, rx, ry, rz)
        UpdateVEditorAtt(vehicle)
    else
        exports.striano_combat:submexError("Editor già attivo.")
    end
end)

function UpdateVEditorAtt(vehicle)
    if not InEditV then
        exports.striano_combat:submexError("Editor già attivo.")
        return
    end
    CreateThread(function()
        while InEditV and DoesEntityExist(InEditV) do
            Wait(0)
            local step    = 0.005
            local rotStep = 0.5
            local changed = false

            if IsControlPressed(0, 155) then           -- Ctrl → rotation
                if IsControlJustPressed(0, 172) then edRotX = edRotX + rotStep; changed = true end
                if IsControlJustPressed(0, 173) then edRotX = edRotX - rotStep; changed = true end
                if IsControlJustPressed(0, 174) then edRotY = edRotY - rotStep; changed = true end
                if IsControlJustPressed(0, 175) then edRotY = edRotY + rotStep; changed = true end
                if IsControlJustPressed(0, 22)  then edRotZ = edRotZ + rotStep; changed = true end
                if IsControlJustPressed(0, 177) then edRotZ = edRotZ - rotStep; changed = true end
            elseif IsControlPressed(0, 22) then        -- Space → Z offset
                if IsControlJustPressed(0, 172) then edOffZ = edOffZ + step; changed = true end
                if IsControlJustPressed(0, 173) then edOffZ = edOffZ - step; changed = true end
            else
                if IsControlJustPressed(0, 172) then edOffX = edOffX + step; changed = true end
                if IsControlJustPressed(0, 173) then edOffX = edOffX - step; changed = true end
                if IsControlJustPressed(0, 174) then edOffY = edOffY - step; changed = true end
                if IsControlJustPressed(0, 175) then edOffY = edOffY + step; changed = true end
            end

            if changed then
                DetachEntity(InEditV, false, false)
                AttachEntityToEntity(
                    InEditV, vehicle, 0,
                    edOffX, edOffY, edOffZ,
                    edRotX, edRotY, edRotZ,
                    false, false, false, false, 2, true
                )
            end

            if IsControlJustPressed(0, 38) then
                exports.striano_combat:submexInfo(string.format(
                    "voff: %.3f %.3f %.3f | rot: %.1f %.1f %.1f",
                    edOffX, edOffY, edOffZ, edRotX, edRotY, edRotZ))
            end
        end
    end)
end

-- ============================================================
-- GetClosestDeadAnimal(coords, excludePed, maxDist²)
--   Returns closest dead non-player non-human ped and distance
-- ============================================================
function GetClosestDeadAnimal(coords, excludePed, maxDistSq)
    local limitSq = maxDistSq and (maxDistSq * maxDistSq) or math.huge
    local handle, ped = FindFirstPed()
    if not handle or handle == -1 then return nil, nil end

    local bestEnt, bestDistSq = nil, limitSq
    local found = true
    while found do
        if ped and ped ~= 0 and DoesEntityExist(ped)
           and (not excludePed or ped ~= excludePed) then
            if IsEntityDead(ped) and not IsPedAPlayer(ped) then
                local dx = GetEntityCoords(ped).x - coords.x
                local dy = GetEntityCoords(ped).y - coords.y
                local dz = GetEntityCoords(ped).z - coords.z
                local distSq = dx*dx + dy*dy + dz*dz
                if distSq < bestDistSq then
                    bestDistSq = distSq
                    bestEnt = ped
                end
            end
        end
        found, ped = FindNextPed(handle)
    end
    EndFindPed(handle)
    if bestEnt then
        return bestEnt, math.sqrt(bestDistSq)
    end
    return nil, nil
end

-- ============================================================
-- exports "scuoio" — returns scuoiaReady flag
-- ============================================================
exports("scuoio", function() return scuoiaReady end)

-- ============================================================
-- COD(ped) — check if cause of death is "cuttable" (not vehicle)
-- ============================================================
function COD(ped)
    local cause = GetPedCauseOfDeath(ped)
    if cause == "WEAPON_RUN_OVER_BY_CAR" or cause == "WEAPON_RAMMED_BY_CAR"
       or HasEntityBeenDamagedByAnyVehicle(ped) then
        return false
    end
    local group = GetWeapontypeGroup(cause)
    if group == nil then return false end
    if group == "GROUP_UNARMED" or group == "GROUP_MELEE"
       or group == "GROUP_PISTOL" or group == "GROUP_SMG"
       or group == "GROUP_SNIPER" or group == "GROUP_MG"
       or group == "GROUP_SHOTGUN" or group == "GROUP_RIFLE" then
        return "OK"
    end
    return false
end

-- ============================================================
-- Scuoia(ped, animalName) — skinning animation + give meat
-- ============================================================
local ANIMAL_MEAT_AMOUNTS = {
    Cervo = 5, Mucca = 5, Cinghiale = 5,
}
function Scuoia(ped, animalName)
    if not scuoiaReady then return end
    scuoiaReady = false

    if not IsPedDeadOrDying(ped) then
        ExecuteCommand("e shrug5")
        scuoiaReady = true
        return
    end
    if GetEntityAlpha(ped) < 255 then
        ExecuteCommand("e shrug5")
        scuoiaReady = true
        return
    end
    if not DoesEntityExist(ped) then
        scuoiaReady = true
        return
    end

    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    ClearPedTasks(playerPed)
    makeEntityFaceEntity(playerPed, ped)
    ExecuteCommand("e kneel3")
    Wait(500)
    ExecuteCommand("e cerca")
    Wait(8000)
    ExecuteCommand("e cc")
    ExecuteCommand("e alzati")
    Wait(1000)

    local meatQty = ANIMAL_MEAT_AMOUNTS[animalName] or 3
    -- Gallina gives nothing (default 0 from original), fallthrough gives 3

    DeleteEntity(ped)
    ExecuteCommand("e pickup")
    Wait(750)
    FreezeEntityPosition(playerPed, false)
    scuoiaReady = true

    TriggerServerEvent("inv3d:giveItem",
        GetPlayerServerId(PlayerId()),
        "player", "meat", meatQty)
end

-- ============================================================
-- /scuoia command — skin closest dead animal with hunter knife
-- ============================================================
local SKINNABLE_ANIMALS = {
    { hash = "a_c_chickenhawk", name = "Falco"     },
    { hash = "a_c_boar",        name = "Cinghiale"  },
    { hash = "a_c_mtlion",      name = "Ghepardo"   },
    { hash = "a_c_cormorant",   name = "Cormorano"  },
    { hash = "a_c_cow",         name = "Mucca"      },
    { hash = "a_c_deer",        name = "Cervo"      },
    { hash = "a_c_coyote",      name = "Coyote"     },
    { hash = "a_c_crow",        name = "Corvo"      },
    { hash = "a_c_hen",         name = "Gallina"    },
    { hash = "a_c_pig",         name = "Maiale"     },
    { hash = "a_c_rabbit_01",   name = "Coniglio"   },
    { hash = "a_c_rat",         name = "Ratto"      },
    { hash = "a_c_seagull",     name = "Gabbiano"   },
    { hash = "a_c_pigeon",      name = "Piccione"   },
    { hash = "a_c_panther",     name = "Ghepardo"   },
}

RegisterCommand("scuoia", function()
    local playerPed = PlayerPedId()
    if IsEntityPositionFrozen(playerPed) then return end

    -- Must not have another player close (2.5 m)
    local nearPlayer, nearDist = PlayerVicino()
    if nearPlayer ~= -1 and nearDist <= 2.5 then
        ExecuteCommand("e shrug5")
        return
    end

    -- Needs a cutting weapon in hand (sfoggiate = blade displayed, getmysword == 2)
    if not (exports.striano_combat:getTagliente()
            and exports.striano_combat:sfoggiate()
            and exports.striano_combat:getmysword() == 2) then
        exports.striano_combat:submexError("You need a hunter knife in hand.")
        ExecuteCommand("e shrug5")
        return
    end

    local coords = GetEntityCoords(playerPed)
    local animal, dist = GetClosestDeadAnimal(coords)
    if not animal or animal <= 0 then
        ExecuteCommand("e shrug5")
        return
    end
    if IsPedAPlayer(animal) or IsPedHuman(animal) then
        ExecuteCommand("e shrug5")
        return
    end
    if #(GetEntityCoords(animal) - coords) >= 2.0 then
        ExecuteCommand("e shrug5")
        return
    end

    NetworkRequestControlOfEntity(animal)
    if not DoesEntityExist(animal) then return end

    local animalModel = GetEntityModel(animal)
    local skinnedName = nil
    for _, entry in ipairs(SKINNABLE_ANIMALS) do
        if animalModel == GetHashKey(entry.hash) then
            skinnedName = entry.name
            break
        end
    end

    if skinnedName then
        Scuoia(animal, skinnedName)
    else
        ExecuteCommand("e shrug5")
    end
end)

-- ============================================================
-- Prop freeze system
-- BloccaProp / SbloccaProp — freeze/unfreeze lastTargetEntity
-- /bloccaprop, /bpr, /blocca, /sbloccaprop, /sp
-- freezeprop:syncAll net event
-- ============================================================
local function freezepropSend(frozen)
    if lastTargetEntity == nil then
        exports.striano_combat:submexError("Non hai ancora selezionato un oggetto tenendo premuto ~h~B~h~.")
        return false
    end
    local dist = #(GetEntityCoords(lastTargetEntity) - GetEntityCoords(PlayerPedId()))
    if dist > 3.5 then
        exports.striano_combat:submexError("Sei troppo distante dall'oggetto selezionato.")
        return false
    end
    return true
end

function BloccaProp()
    if not freezepropSend(true) then return end
    PlaySoundFrontend(-1, "Turn", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
    exports.striano_combat:submexError("Hai ~h~bloccato ~h~l'oggetto selezionato con ~h~B~h~.")
    local pos = bbPosB.pos
    TriggerServerEvent("freezeprop:sync",
        GetEntityModel(lastTargetEntity), true,
        vector3(pos.x, pos.y, pos.z))
    makeEntityFaceEntity(PlayerPedId(), lastTargetEntity)
    ExecuteCommand("e prendi5")
end

function SbloccaProp()
    if not freezepropSend(false) then return end
    PlaySoundFrontend(-1, "Turn", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
    exports.striano_combat:submexError("Hai ~h~sbloccato ~h~l'oggetto selezionato con ~h~B~h~.")
    local pos = bbPosB.pos
    TriggerServerEvent("freezeprop:sync",
        GetEntityModel(lastTargetEntity), false,
        vector3(pos.x, pos.y, pos.z))
    makeEntityFaceEntity(PlayerPedId(), lastTargetEntity)
    ExecuteCommand("e prendi5")
end

RegisterCommand("bloccaprop", function() BloccaProp() end)
RegisterCommand("bpr",        function() BloccaProp() end)
RegisterCommand("blocca", function()
    if lastTargetEntity == nil then
        exports.striano_combat:submexError("Non hai ancora selezionato un oggetto tenendo premuto ~h~B~h~.")
        return
    end
    if IsEntityPositionFrozen(lastTargetEntity) then
        SbloccaProp()
    else
        BloccaProp()
    end
end)
RegisterCommand("sbloccaprop", function() SbloccaProp() end, false)
RegisterCommand("sp",          function() SbloccaProp() end, false)

RegisterNetEvent("freezeprop:syncAll")
AddEventHandler("freezeprop:syncAll", function(frozen, modelHash, pos)
    local obj = GetClosestObjectOfType(pos, 0.1, modelHash, false, false, false)
    if obj ~= nil and obj ~= 0 then
        FreezeEntityPosition(obj, frozen)
        print("Prop bloccata da un giocatore")
    end
end)

-- ============================================================
-- Hurt / health check thread (every 5 s)
-- Checks player health band (105–120) to decide if hurt state
-- should be triggered or reset.
-- ============================================================
local HURT_HP_LOW  = 105
local HURT_HP_HIGH = 120

CreateThread(function()
    while true do
        Wait(5000)
        local ped = PlayerPedId()
        if not exports.striano_core:gettutorial() then
            Wait(1000)
        else
            if not IsEntityVisible(ped) then goto continue end
            if IsPedPerformingMeleeAction(ped) then goto continue end
            if IsEntityDead(ped, 1) then goto continue end
            if IsEntityPlayingAnim(ped, "ped", "hit_wall", 3) then goto continue end
            if IsPedRagdoll(ped) then goto continue end
            if IsEntityPlayingAnim(ped, "combat@damage@rb_writhe", "rb_writhe_loop", 3) then goto continue end
            if IsEntityPlayingAnim(ped, "amb@lo_res_idles@", "world_human_bum_slumped_right_lo_res_base", 3) then goto continue end
            if IsEntityPlayingAnim(ped, "anim@scripted@heist@ig25_beach@male@", "action", 3) then goto continue end

            if IsPedRagdoll(ped) or IsPedSwimming(ped) or IsPedSwimmingUnderWater(ped) then
                -- In water / ragdoll — check crouch/stealth fix
                if exports.striano_editor:crouchato() or exports.striano_editor:stealth() then
                    if not IsEntityInAir(ped) then
                        if not isHurt then
                            ExecuteCommand("fixcrouch")
                        end
                    end
                end
                Wait(1000)
            else
                -- On foot, not ragdoll
                if not IsPedInAnyVehicle(ped, true) and not IsEntityInAir(ped) then
                    if GetResourceState("striano_editor") ~= "started" then goto continue end
                    if exports.striano_editor:crouchato() then goto continue end

                    local hp = GetEntityHealth(ped)
                    if not isHurt then
                        if hp > HURT_HP_LOW and hp <= HURT_HP_HIGH then
                            setHurt()
                            Wait(1000)
                        end
                    else
                        -- Already hurt: check recovery
                        if hp > HURT_HP_HIGH then
                            isHurt = false
                            TriggerEvent("CaricamiCamminata")
                            Wait(1000)
                        else
                            Wait(1000)
                        end
                    end
                else
                    Wait(1000)
                end
            end
            ::continue::
        end
    end
end)

-- ============================================================
-- PlayEffectFF(assetName, x, y, z, scale)
--   Load particle asset, play looped effect at world coords for 2.5 s
-- ============================================================
function PlayEffectFF(assetName, x, y, z, scale)
    scale = scale or 3.0
    if not HasNamedPtfxAssetLoaded(assetName) then
        RequestNamedPtfxAsset(assetName)
    end
    while not HasNamedPtfxAssetLoaded(assetName) do Wait(0) end
    SetPtfxAssetNextCall(assetName)
    CreateThread(function()
        UseParticleFxAssetNextCall(assetName)
        local fx = StartParticleFxLoopedAtCoord(assetName, x, y, z,
            0.0, 0.0, 0.0, scale, false, false, false, false)
        Wait(2500)
        StopParticleFxLooped(fx)
        RemoveParticleFx(fx, true)
    end)
end

-- ============================================================
-- setHurt() — apply hurt/bleed state to local player
-- ============================================================
function setHurt()
    if not exports.striano_editor:crouchato() and not exports.striano_editor:stealth() then
        ExecuteCommand("w drunk2")
        isHurt = true
        LoopInciampare()
        SetPlayerStamina(PlayerId(), 0)
    end

    local ped = PlayerPedId()
    if not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) then
        if not exports.striano_editor:crouchato() then
            if GetEntitySpeed(ped) > 0.1 then
                DisableControlAction(0, 22)  -- disable Space/jump
            end
        end
    end
end

-- ============================================================
-- LoopInciampare() — bleeding/stumble loop while isHurt
--   Every 5 s: if running/sprinting → damage, blood effects, pain sound
-- ============================================================
function LoopInciampare()
    if hurtLoopActive then return end
    hurtLoopActive = true
    CreateThread(function()
        while true do
            if not isHurt then
                hurtLoopActive = false
                return
            end
            local ped = PlayerPedId()
            local speed = GetEntitySpeed(ped)
            if speed > 0.7
               and (IsPedWalking(ped) or IsPedRunning(ped) or IsPedSprinting(ped)) then
                if not IsEntityInWater(ped) and not IsPedFalling(ped)
                   and not IsPedRagdoll(ped) and not exports.striano_combat:insuperjump() then
                    local dmgSteps = 3
                    if IsPedRunning(ped) or IsPedSprinting(ped) then
                        ExecuteCommand("e inciampa")
                        ExecuteCommand("addsangue")
                        local hp = GetEntityHealth(ped)
                        SetEntityHealth(ped, hp - 1)
                        if not IsPedFatallyInjured(ped) then
                            exports.striano_combat:gengrunt()
                            exports.striano_combat:submexError(
                                "Stai sanguinando, non correre per non perdere ulteriore vita. " ..
                                "Cammina fino a quando non trovi un modo per curare la ferita. " ..
                                "Utilizza un veicolo o una cavalcatura per spostarti senza perdere vita.")
                            dmgSteps = 8
                        end
                    end

                    if not IsPedFatallyInjured(ped) then
                        local coords = GetEntityCoords(ped)
                        for _ = 1, dmgSteps do
                            local ox = math.random() - 0.1
                            local oy = math.random() - 0.1
                            local oz = math.random() * 0.9
                            TriggerServerEvent("PlayEffectServer", {
                                a = "core", b = "blood_stab",
                                pos = vector3(coords.x + ox, coords.y + oy, coords.z - oz)
                            })
                            TriggerServerEvent("PlayEffectServer", {
                                a = "core", b = "blood_entry_sniper",
                                pos = vector3(coords.x + ox, coords.y + oy, coords.z - oz)
                            })
                        end
                        PlaySoundFrontend(-1, "Pre_Screen_Stinger", "DLC_HEISTS_PREP_SCREEN_SOUNDS", 1)
                        if not IsControlPressed(0, 25) then
                            if math.random(1, 2) == 1 then
                                ExecuteCommand("e respiro" .. math.random(1, 2))
                            else
                                ExecuteCommand("e injured")
                            end
                        end
                        Wait(5000)
                    end
                end
            end
            Wait(5000)
        end
    end)
end

-- ============================================================
-- /closenui — force-close any open NUI and restore player control
-- ============================================================
RegisterCommand("closenui", function()
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    SetFrontendActive(false)
    SetMouseCursorVisibleInMenus(false)
    SetPlayerControl(PlayerId(), true, 0)
    SetCursorLocation(0.5, 0.5)
    print("focus NUI rilasciato e controlli ripristinati.")
end)

-- ============================================================
-- /tirafuori — pull nearby sunken vehicle out of water
-- ============================================================
RegisterCommand("tirafuori", function()
    local ped = PlayerPedId()
    if IsPedSwimming(ped) or IsPedSwimmingUnderWater(ped) then
        exports.striano_combat:submexError(
            "Non devi essere in acqua per questa operazione. " ..
            "Costruisci una pedana sull'acqua se serve a salvare un veicolo.")
        return
    end

    local coords = GetEntityCoords(ped)
    local veh    = GetClosestVehicle(coords.x, coords.y, coords.z, 20.0, 0, 70)
    if veh == 0 then
        exports.striano_combat:submexError("Non sembra esserci un veicolo in acqua da poter tirare fuori.")
        return
    end
    if not DoesEntityExist(veh) then return end

    -- Check if vehicle is in water or very low Z (< 41)
    local inWater = IsEntityInWater(veh)
    local lowZ    = GetEntityCoords(veh).z < 41.0
    if not inWater and not lowZ then
        exports.striano_combat:submexError("Il veicolo non sembra in acqua.")
        return
    end

    SetEntityAsMissionEntity(veh)
    local attempts = 0
    while not NetworkHasControlOfEntity(veh) and attempts < 100 do
        if not DoesEntityExist(veh) then break end
        Wait(1)
        NetworkRequestControlOfEntity(veh)
        attempts = attempts + 1
    end

    SetEntityCoords(veh, coords.x, coords.y, coords.z - 1)
    if exports.striano_core:getsubmisID() == 0 then
        TaskWarpPedIntoVehicle(ped, veh, -1)
    end
    Wait(250)
    TriggerEvent("fixaVeicolo", veh, true)
end)

-- ============================================================
-- has_valueff(tbl, val) — check if value exists in array
-- ============================================================
function has_valueff(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then return true end
    end
    return false
end

-- ============================================================
-- /mterra — print wheel surface material of current vehicle
-- ============================================================
RegisterCommand("mterra", function()
    local veh = GetVehiclePedIsIn(PlayerPedId())
    local mat = GetVehicleWheelSurfaceMaterial(veh, 1)
    print("Materiale " .. mat)
end)

-- ============================================================
-- /getsporco — print current vehicle dirt level
-- ============================================================
RegisterCommand("getsporco", function()
    print("Dirt of vehicle ", GetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false)))
end)

-- ============================================================
-- onResourceStop — cleanup editor prop state
-- ============================================================
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    if currentEditorProp and DoesEntityExist(currentEditorProp) then
        DeleteEntity(currentEditorProp)
    end
    currentEditorProp = nil
    editorBone = nil
    edOffX, edOffY, edOffZ = 0.0, 0.0, 0.0
    edRotX, edRotY, edRotZ = 0.0, 0.0, 0.0
end)

-- ============================================================
-- Legacy2D(text, font, color, scale, x, y)
--   Simple 2D text draw helper
-- ============================================================
function Legacy2D(text, font, color, scale, x, y)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(color[1], color[2], color[3], 255)
    SetTextEntry("STRING")
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(x, y)
end

-- ============================================================
-- /ancora — boat anchor toggle (H key mapping)
-- ============================================================
RegisterKeyMapping("ancora", "Ancora Barca", "keyboard", "h")
RegisterCommand("ancora", function()
    local ped = PlayerPedId()
    if not IsPedInAnyBoat(ped) then return end
    local boat = GetVehiclePedIsIn(ped)
    if GetPedInVehicleSeat(boat, -1) ~= ped then return end

    if GetEntitySpeed(boat) > 2.7777777777778 then
        exports.striano_combat:submexInfo("Too fast to anchor a boat.")
        return
    end

    if IsBoatAnchoredAndFrozen(boat) then
        -- Lift anchor
        SetBoatAnchor(boat, false)
        SetBoatFrozenWhenAnchored(boat, false)
        SetForcedBoatLocationWhenAnchored(boat, false)
        TriggerServerEvent("D_Ancorata:set", VehToNet(boat), false)
    else
        -- Drop anchor — must be in water or where it can anchor
        if not IsEntityInWater(boat) and not CanAnchorBoatHere(boat) then
            exports.striano_combat:submexInfo("You must be in water to anchor a boat.")
            return
        end
        SetBoatAnchor(boat, true)
        SetBoatFrozenWhenAnchored(boat, true)
        SetForcedBoatLocationWhenAnchored(boat, true)
        anchoredBoat = boat
        TriggerServerEvent("D_Ancorata:set", VehToNet(boat), true)
    end
end)

-- Boat anchor display thread — show "[H] Detach Anchor" label above anchored boat
CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if anchoredBoat == nil then
            -- Try to find current vehicle to track
            local veh = GetVehiclePedIsIn(ped, false)
            if veh ~= nil and veh ~= 0 then
                anchoredBoat = veh
            else
                Wait(1000)
            end
        else
            local state = Entity(anchoredBoat).state.D_Ancorata
            if state == true then
                if IsPedSittingInAnyVehicle(ped) then
                    if anchoredBoat == GetVehiclePedIsIn(ped, false) then
                        local coords = GetEntityCoords(anchoredBoat)
                        Draw3DText(coords.x, coords.y, coords.z + 0.5, "[H] Detach Anchor")
                    end
                end
            elseif state == nil then
                anchoredBoat = nil
                Wait(1000)
            end
        end
    end
end)

-- ============================================================
-- Editor Panda mode  (/editorpanda)
-- Aims at entity up to 300 m, draws outline + line + marker,
-- toggles entity outline on selection.
-- ============================================================
RegisterCommand("editorpanda", function()
    editorPandaActive = not editorPandaActive
    if editorPandaActive then
        fPanda()
    end
end)

function fPanda()
    CreateThread(function()
        while editorPandaActive do
            Wait(0)
            local color = { r = 255, g = 0, b = 110, a = 200 }
            local pedCoords = GetEntityCoords(PlayerPedId())
            local hit, hitCoords, entity = GetCamTarget(300.0)

            if entity and entity > 0 then
                Legacy2D("Sto selezionando entity ID: " .. entity,
                    4, { 255, 255, 255 }, 0.4, 0.55, 0.888)
                DrawLine(
                    pedCoords.x, pedCoords.y, pedCoords.z + 0.5,
                    hitCoords.x, hitCoords.y, hitCoords.z,
                    color.r, color.g, color.b, color.a)
                DrawMarker(28,
                    hitCoords.x, hitCoords.y, hitCoords.z,
                    0.0, 0.0, 0.0, 0.0, 180.0, 0.0,
                    0.05, 0.05, 0.05,
                    color.r, color.g, color.b, color.a,
                    false, true, 2, nil, nil, false)

                if pandaSelectedEnt == 0 then
                    if pandaSelectedEnt ~= entity then
                        pandaSelectedEnt = entity
                        SetEntityDrawOutline(entity, true)
                        SetEntityDrawOutlineColor(255, 0, 110, 150)
                    else
                        SetEntityDrawOutline(pandaSelectedEnt, false)
                        pandaSelectedEnt = 0
                    end
                else
                    if pandaSelectedEnt ~= entity then
                        SetEntityDrawOutline(pandaSelectedEnt, false)
                        pandaSelectedEnt = 0
                    end
                end
            else
                Legacy2D("Nessuna entity rilevata, puntala con la telecamera.",
                    4, { 255, 255, 255 }, 0.4, 0.55, 0.888)
                if pandaSelectedEnt ~= 0 then
                    SetEntityDrawOutline(pandaSelectedEnt, false)
                    pandaSelectedEnt = 0
                end
            end
        end
    end)
end

-- ============================================================
-- Airport / military vehicle suppression thread (every 10 s)
-- ============================================================
CreateThread(function()
    while true do
        for _, scenario in ipairs(suppressedAirportScenarios) do
            SetScenarioTypeEnabled(scenario, false)
        end
        for _, group in ipairs(suppressedAirportGroups) do
            SetScenarioGroupEnabled(group, false)
        end
        for _, model in ipairs(suppressedAirportVehicles) do
            SetVehicleModelIsSuppressed(GetHashKey(model), true)
        end
        Wait(10000)
    end
end)

-- ============================================================
-- exports "onSpostaItem" — item move hook (spell/content filter)
-- ============================================================
exports("onSpostaItem", function(_, itemName, _, containerType, _, _)
    if string.find(containerType, "content") then
        if string.find(itemName, "spell") then
            -- reserved for future handling
        end
    end
end)

-- ============================================================
-- Class selector (/class command + fastmenu)
-- Opens a menu with 5 class options; requires double-confirm.
-- Resets craftLevel and craftXP when class changes.
-- ============================================================
local function openClassMenu()
    local ped = PlayerPedId()
    if not exports.striano_core:gettutorial() then return end
    if IsEntityPositionFrozen(ped) then return end
    if IsPedFatallyInjured(ped) then return end

    local pendingClass = -1
    local classes = {
        { label = "Generalist",  value = 0 },
        { label = "Engineer",    value = 1 },
        { label = "Explorer",    value = 2 },
        { label = "Forgemaster", value = 3 },
        { label = "Alchemist",   value = 4 },
    }

    local function buildMenu()
        exports.striano_fastmenu:clearMenu()
        for _, cls in ipairs(classes) do
            exports.striano_fastmenu:addMenuItem(cls.label, function()
                if pendingClass == -1 then
                    -- First press: warn
                    if craftLevel > 0 then
                        exports.striano_combat:submexInfo(
                            "Select again to choose, remember you will lose you current Craft Level. " ..
                            "(LV: " .. craftLevel .. " [" .. craftXP .. "])")
                    else
                        exports.striano_combat:submexInfo("Select again to confirm this Class.")
                    end
                    pendingClass = cls.value
                    return
                end
                if classePL == pendingClass then
                    exports.striano_combat:submexError("Can't select same Class.")
                    pendingClass = -1
                    return
                end
                if cls.value ~= pendingClass then
                    exports.striano_combat:submexError("You must select the same class 2 times to Apply.")
                    pendingClass = -1
                    return
                end
                -- Confirmed: apply class change
                local myServerId = GetPlayerServerId(PlayerId())
                TriggerServerEvent("status:set", myServerId, "classepl", cls.value)
                exports.striano_combat:submexInfo("Class selected correctly.")
                craftLevel = 0
                TriggerServerEvent("status:set", myServerId, "craftlv", craftLevel)
                craftXP = 0
                TriggerServerEvent("status:set", myServerId, "craftxp", craftXP)
                classePL  = cls.value
                pendingClass = -1
                exports.striano_fastmenu:closeMenu()
            end)
        end
        exports.striano_fastmenu:openMenu()
    end

    buildMenu()
end

RegisterCommand("class", function() openClassMenu() end)
