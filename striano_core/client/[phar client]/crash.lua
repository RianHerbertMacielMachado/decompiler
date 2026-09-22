-- crash.lua
-- striano_core / client / [phar client]
-- Main client-side utility file: NPC management, animations, vehicles,
-- FX, sounds, combat helpers, guide system, debug overlay, and more.

-- ============================================================
-- MODULE-LEVEL STATE
-- ============================================================

local velenoattivo       = false   -- poison/gas active flag
local ServerCallbacks    = {}      -- TriggerServerCallback registry

-- Crash zone (set by InitCrash)
local crashZoneCenter               -- vector3
local crashZoneRadius               -- number

-- NPC list (26 entries, populated below)
local npcList            = {}

-- Trunk / trash hide system
local isInTrunk          = false
local trunkLoopActive    = false
local trashCanSearch     = true
local trashObject        = nil
local trashExitReady     = true

-- One-mode active flag (trunk OR trash)
local oneModeActive      = false

-- PTFX / damage
local currentPtfxHandle  = nil
local gradualDamageCtx   = nil

-- Fan object throwing
local oggettoLancioIndex = 0
local fanThrowPositions  = {}
local fanThrowHashes     = {}

-- Arena sound
local arenaSoundPlaying  = false
local arenaSoundStopped  = false
local arenaSoundPath     = "sounds/arenasound"

-- Arena markers
local arenaMarkers       = {}

-- Parachute info toggle
local showParaInfo       = true

-- Porcmode / god-mode-admin
local porcmodeActive     = false

-- Guide base active flag
local guidaBaseActive    = false

-- Bottle / temp-editor
local tempeditorActive   = false
local tempEditorObj      = nil
local tempOffsetZ        = 0
local rotazioneBottiglia = 0

-- Animation tracking
local currentAnimDict    = ""

-- Legacy message / piazza
local msglegacyUltimo    = ""
local timerMex           = 0
local msgPiazzaUltimo    = ""

-- Route blip
local currentRouteBlip   = nil

-- Hair fix data
local lastCapelliData    = {}

-- Weapon-in-cover
local weaponInCoverHash  = nil
local blockShow          = false

-- Handcuff state (shared with cordamaniclient)
IsHandcuffed             = false

-- Death / damage event vars
local victim, attacker, victimDied, weaponHash, isMeleeDamage, vehicleDamageTypeFlag
local varCheck           = false

-- Suffocation
local soffoco            = false

-- Tutorial done flag
local tutorialFatto      = false

-- Police vehicle weapon tracker
local policeVehicleEntered = false
local policeWeaponInventory = {}
local policeWeaponPresent   = {}

-- Water-warning counter
local waterWarningCount  = 0

-- Ragdoll guard
local varCanRag          = false

-- Local ped handle (set in init thread)
local ped

-- Ghost entity for resync
local myGhost            = nil

-- Relisoft tag system state
local relisoftAdmins     = {}   -- L56_1 (admin list from server)
local relisoftNearby     = {}   -- L57_1 (nearby admins within 15m)
local relisoftDraw       = {}   -- L58_1 (draw list rebuilt each second)

-- ============================================================
-- SERVER CALLBACK SYSTEM
-- ============================================================

--- Trigger a server-side callback and receive the result asynchronously.
---@param name string   callback name registered on server
---@param cb   function called with the result(s)
---@param ...  any      extra arguments forwarded to the server
function TriggerServerCallback(name, cb, ...)
    local requestId = #ServerCallbacks + 1
    ServerCallbacks[requestId] = cb
    TriggerServerEvent("standalone_callback:trigger", name, requestId, ...)
end

RegisterNetEvent("standalone_callback:return")
AddEventHandler("standalone_callback:return", function(requestId, ...)
    local cb = ServerCallbacks[requestId]
    if cb then
        ServerCallbacks[requestId] = nil
        cb(...)
    end
end)

-- ============================================================
-- 3D TEXT HELPER
-- ============================================================

--- Draw a 3D world-space text label above a coordinate.
---@param x      number
---@param y      number
---@param z      number
---@param text   string
---@param r      number  red   (0-255)
---@param g      number  green (0-255)
---@param b      number  blue  (0-255)
---@param a      number  alpha (0-255)
function DrawText3D(x, y, z, text, r, g, b, a)
    r = r or 255
    g = g or 255
    b = b or 255
    a = a or 255

    local camCoords = GetGameplayCamCoords()
    local dist      = #(camCoords - vector3(x, y, z))
    local fov       = (1 / GetGameplayCamFov()) * 100
    local scale     = (fov / dist) * 2

    SetDrawOrigin(x, y, z, 0)
    SetTextProportional(0)
    SetTextScale(0.0 * scale, 0.55 * scale)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextFont(4)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

-- ============================================================
-- MODEL / ASSET LOADING HELPERS
-- ============================================================

--- Request and wait until a model hash is loaded.
---@param model hash|string
function RequestModelStriano(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
end

--- Request and wait until an anim dict is loaded.
---@param dict string
function LoadAnim(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
end

-- ============================================================
-- ANIMATION HELPER
-- ============================================================

--- Play an animation on the local player ped.
---@param dict  string
---@param anim  string
---@param flags number
function faiAnim(dict, anim, flags)
    LoadAnim(dict)
    local myPed = PlayerPedId()
    TaskPlayAnim(myPed, dict, anim, 8.0, -8.0, -1, flags, 0, false, false, false)
end

-- ============================================================
-- VEHICLE HELPERS
-- ============================================================

--- Return all vehicle handles within radius of coords.
---@param coords vector3
---@param radius number
---@return table
function GetVehiclesInAreaStriano(coords, radius)
    local vehicles = {}
    for _, v in ipairs(GetGamePool("CVehicle")) do
        if #(GetEntityCoords(v) - coords) <= radius then
            vehicles[#vehicles + 1] = v
        end
    end
    return vehicles
end

--- Return the vehicle most directly in front of the player along a direction.
---@param fromCoords  vector3
---@param toCoords    vector3
---@return number|nil vehicle handle
function GetVehicleInDirectionStriano(fromCoords, toCoords)
    local hit, _, _, entityHit = GetShapeTestResult(
        StartShapeTestRay(
            fromCoords.x, fromCoords.y, fromCoords.z,
            toCoords.x,   toCoords.y,   toCoords.z,
            10, PlayerPedId(), 7
        )
    )
    if hit and DoesEntityExist(entityHit) and GetEntityType(entityHit) == 2 then
        return entityHit
    end
    return nil
end

--- Delete a vehicle safely (mission entity cleanup).
---@param vehicle number
function DeleteVehicleStriano(vehicle)
    SetEntityAsMissionEntity(vehicle, true, true)
    DeleteVehicle(vehicle)
end

--- Check whether a model hash belongs to a prop/object.
---@param model hash
---@return boolean
function IsObjectModel(model)
    return IsModelValid(model) and not IsModelAPed(model) and not IsModelAVehicle(model)
end

-- ============================================================
-- OBJECT SPAWN HELPER
-- ============================================================

--- Spawn a world object at coords, wait for it to exist.
---@param model  hash|string
---@param coords vector3
---@param heading number
---@return number object handle
function SpawnObjectStriano(model, coords, heading)
    RequestModelStriano(model)
    local obj = CreateObject(model, coords.x, coords.y, coords.z, true, true, false)
    SetEntityHeading(obj, heading or 0.0)
    SetModelAsNoLongerNeeded(model)
    return obj
end

-- ============================================================
-- PLAYER HELPERS
-- ============================================================

--- Return a table of all currently connected player peds and their coords.
---@return table  array of {ped, coords, source}
function Giocatori()
    local list = {}
    for _, playerId in ipairs(GetActivePlayers()) do
        local playerPed    = GetPlayerPed(playerId)
        local playerCoords = GetEntityCoords(playerPed)
        list[#list + 1]    = { ped = playerPed, coords = playerCoords, source = GetPlayerServerId(playerId) }
    end
    return list
end

--- Return the closest player ped and distance to it.
---@return number ped, number distance
function PlayerVicino()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local closest, closestDist = nil, math.huge

    for _, playerId in ipairs(GetActivePlayers()) do
        if playerId ~= PlayerId() then
            local otherPed    = GetPlayerPed(playerId)
            local otherCoords = GetEntityCoords(otherPed)
            local dist        = #(myCoords - otherCoords)
            if dist < closestDist then
                closest     = otherPed
                closestDist = dist
            end
        end
    end
    return closest, closestDist
end

--- Return the closest non-player ped and distance to it.
---@return number ped, number distance
function GetClosestPedStriano()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local closest, closestDist = nil, math.huge

    for _, p in ipairs(GetGamePool("CPed")) do
        if p ~= myPed and not IsPedAPlayer(p) then
            local dist = #(GetEntityCoords(p) - myCoords)
            if dist < closestDist then
                closest     = p
                closestDist = dist
            end
        end
    end
    return closest, closestDist
end

-- ============================================================
-- OPEN INPUT (NUI text prompt)
-- ============================================================

--- Open a NUI text input dialog and return the result synchronously.
---@param title string
---@return string|nil
function OpenInput(title)
    local result = nil
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "openInput", title = title })
    -- result is received via NUI callback registered elsewhere
    return result
end

-- ============================================================
-- SOUND HELPERS (net events)
-- ============================================================

RegisterNetEvent("SuonoAzione")
AddEventHandler("SuonoAzione", function()
    PlaySoundFrontend(-1, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET", true)
end)

RegisterNetEvent("SuonoErrore")
AddEventHandler("SuonoErrore", function()
    PlaySoundFrontend(-1, "ERROR", "HUD_MINI_GAME_SOUNDSET", true)
end)

-- ============================================================
-- INIT CRASH ZONE
-- ============================================================

--- Set the crash zone center and radius (called from server or config).
---@param center vector3
---@param radius number
function InitCrash(center, radius)
    crashZoneCenter = center
    crashZoneRadius = radius
end

-- ============================================================
-- INIT THREAD
-- ============================================================

CreateThread(function()
    -- Wait for the player ped to be valid
    while not NetworkIsPlayerActive(PlayerId()) do
        Wait(100)
    end
    ped = PlayerPedId()

    -- Mark tutorial as done (loaded from persistence elsewhere)
    tutorialFatto = true

    -- Disable some default behaviours
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(ped, true, true)
    SetPedCanRagdoll(ped, false)
end)

-- ============================================================
-- NPC LIST  (26 entries)
-- Fields: m=model, p=position, h=heading,
--         an=day anim {dict,clip,flag},
--         anMattino=morning anim, anNotte=night anim, anPioggia=rain anim
-- ============================================================

npcList = {
    [1] = {
        m  = "a_m_m_bevhills_01",
        p  = vector3(219.79, -810.67, 30.73),
        h  = 342.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male1", flag = 1 },
    },
    [2] = {
        m  = "a_f_y_bevhills_01",
        p  = vector3(215.12, -808.32, 30.73),
        h  = 160.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female1", flag = 1 },
    },
    [3] = {
        m  = "a_m_m_business_01",
        p  = vector3(222.63, -808.20, 30.73),
        h  = 200.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male1", flag = 1 },
    },
    [4] = {
        m  = "a_f_m_business_02",
        p  = vector3(210.91, -803.51, 30.73),
        h  = 90.0,
        an = { dict = "anim@amb@casino@" , clip = "base_a_m_sit_phone_call_loop", flag = 1 },
    },
    [5] = {
        m  = "a_m_y_soucent_01",
        p  = vector3(215.75, -798.72, 30.73),
        h  = 180.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male2", flag = 1 },
    },
    [6] = {
        m  = "a_f_y_soucent_01",
        p  = vector3(217.60, -800.10, 30.73),
        h  = 10.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female2", flag = 1 },
    },
    [7] = {
        m  = "a_m_m_bevhills_02",
        p  = vector3(212.40, -795.80, 30.73),
        h  = 270.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male2", flag = 1 },
    },
    [8] = {
        m  = "a_f_y_bevhills_02",
        p  = vector3(224.10, -793.50, 30.73),
        h  = 130.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_female1", flag = 1 },
    },
    [9] = {
        m  = "a_m_y_business_01",
        p  = vector3(220.30, -790.60, 30.73),
        h  = 50.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male1", flag = 1 },
    },
    [10] = {
        m  = "a_f_m_bevhills_01",
        p  = vector3(207.85, -790.20, 30.73),
        h  = 320.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female1", flag = 1 },
    },
    [11] = {
        m  = "a_m_m_eastsa_01",
        p  = vector3(204.50, -793.40, 30.73),
        h  = 240.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male1", flag = 1 },
    },
    [12] = {
        m  = "a_f_y_eastsa_01",
        p  = vector3(202.10, -798.60, 30.73),
        h  = 80.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_female1", flag = 1 },
    },
    [13] = {
        m  = "a_m_y_eastsa_02",
        p  = vector3(199.70, -803.90, 30.73),
        h  = 155.0,
        an = { dict = "anim@amb@casino@", clip = "base_a_m_sit_phone_call_loop", flag = 1 },
    },
    [14] = {
        m  = "a_f_m_eastsa_01",
        p  = vector3(201.80, -808.10, 30.73),
        h  = 200.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female2", flag = 1 },
    },
    [15] = {
        m  = "a_m_m_indian_01",
        p  = vector3(205.60, -812.80, 30.73),
        h  = 280.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male2", flag = 1 },
    },
    [16] = {
        m  = "a_f_y_indian_01",
        p  = vector3(209.90, -815.20, 30.73),
        h  = 340.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_female1", flag = 1 },
    },
    [17] = {
        m  = "a_m_y_hipster_01",
        p  = vector3(214.30, -816.70, 30.73),
        h  = 30.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male2", flag = 1 },
    },
    [18] = {
        m  = "a_f_m_hipster_01",
        p  = vector3(218.80, -817.50, 30.73),
        h  = 100.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female1", flag = 1 },
    },
    [19] = {
        m  = "a_m_m_soucent_01",
        p  = vector3(223.10, -815.30, 30.73),
        h  = 220.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male1", flag = 1 },
    },
    [20] = {
        m  = "a_f_y_hipster_02",
        p  = vector3(226.50, -810.90, 30.73),
        h  = 170.0,
        an = { dict = "anim@amb@casino@", clip = "base_a_m_sit_phone_call_loop", flag = 1 },
    },
    [21] = {
        m  = "a_m_y_hipster_02",
        p  = vector3(228.40, -806.20, 30.73),
        h  = 60.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male1", flag = 1 },
    },
    [22] = {
        m  = "a_f_m_soucent_01",
        p  = vector3(229.10, -800.50, 30.73),
        h  = 290.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_female1", flag = 1 },
    },
    [23] = {
        m  = "a_m_m_skidrow_01",
        p  = vector3(227.80, -795.00, 30.73),
        h  = 120.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_male2", flag = 1 },
    },
    [24] = {
        m  = "a_f_y_skidrow_01",
        p  = vector3(225.20, -789.70, 30.73),
        h  = 250.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_a_female2", flag = 1 },
    },
    [25] = {
        m  = "a_m_y_skidrow_01",
        p  = vector3(221.00, -784.80, 30.73),
        h  = 40.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_male2", flag = 1 },
    },
    [26] = {
        m  = "a_f_m_skidrow_01",
        p  = vector3(216.50, -783.60, 30.73),
        h  = 190.0,
        an = { dict = "anim@amb@business@bgen@bgen_no_work@", clip = "base_discuss_loop_b_female1", flag = 1 },
    },
}

-- ============================================================
-- NPC CHAT / BOT DIALOGUE
-- ============================================================

--- Handle an NPC speaking (play voice line + subtitle).
---@param npcId  number  index into npcList
---@param text   string  subtitle text
function onParlaBot(npcId, text)
    local entry = npcList[npcId]
    if not entry or not entry.PedID then return end
    local pedId = entry.PedID
    if not DoesEntityExist(pedId) then return end
    StopCurrentPlayingSpeech(pedId)
    PlayAmbientSpeech1(pedId, "GENERIC_CURSE_HIGH", "SPEECH_PARAMS_FORCE")
    exports.striano_combat:testo3d(pedId, text, 5000)
end

-- ============================================================
-- NPC MANAGEMENT
-- ============================================================

--- Spawn, update animations, and manage all NPCs in npcList.
--- Called from the NPC management thread.
function GestisciNPC()
    local hour = GetClockHours()

    for i, entry in ipairs(npcList) do
        -- Spawn if not yet created
        if not entry.PedID or not DoesEntityExist(entry.PedID) then
            RequestModelStriano(entry.m)
            local spawnedPed = CreatePed(
                26, entry.m,
                entry.p.x, entry.p.y, entry.p.z,
                entry.h, false, false
            )
            SetPedDefaultComponentVariation(spawnedPed)
            SetEntityInvincible(spawnedPed, true)
            SetBlockingOfNonTemporaryEvents(spawnedPed, true)
            SetPedCanRagdoll(spawnedPed, false)
            SetPedCanRagdollFromPlayerImpact(spawnedPed, false)
            FreezeEntityPosition(spawnedPed, true)
            SetModelAsNoLongerNeeded(entry.m)
            entry.PedID = spawnedPed
            npcList[i] = entry
        end

        -- Apply appropriate animation for current time of day
        local pedId = entry.PedID
        if DoesEntityExist(pedId) then
            if hour >= 6 and hour < 12 then
                PedAnimMattino(pedId, entry)
            elseif hour >= 12 and hour < 20 then
                PedAnimGiorno(pedId, entry)
            else
                CheckPedNotte(pedId, entry)
            end
        end
    end
end

--- Apply daytime animation to a ped.
---@param pedId  number
---@param entry  table   npcList entry
function PedAnimGiorno(pedId, entry)
    if not entry.an then return end
    if not IsEntityPlayingAnim(pedId, entry.an.dict, entry.an.clip, 3) then
        LoadAnim(entry.an.dict)
        TaskPlayAnim(pedId, entry.an.dict, entry.an.clip, 8.0, -8.0, -1, entry.an.flag or 1, 0, false, false, false)
    end
end

--- Apply morning animation to a ped (falls back to daytime).
---@param pedId  number
---@param entry  table
function PedAnimMattino(pedId, entry)
    local an = entry.anMattino or entry.an
    if not an then return end
    if not IsEntityPlayingAnim(pedId, an.dict, an.clip, 3) then
        LoadAnim(an.dict)
        TaskPlayAnim(pedId, an.dict, an.clip, 8.0, -8.0, -1, an.flag or 1, 0, false, false, false)
    end
end

--- Apply night behaviour to a ped (hide or use night anim).
---@param pedId  number
---@param entry  table
function CheckPedNotte(pedId, entry)
    if entry.anNotte then
        local an = entry.anNotte
        if not IsEntityPlayingAnim(pedId, an.dict, an.clip, 3) then
            LoadAnim(an.dict)
            TaskPlayAnim(pedId, an.dict, an.clip, 8.0, -8.0, -1, an.flag or 1, 0, false, false, false)
        end
    else
        -- No night anim — hide the NPC
        SetEntityVisible(pedId, false, false)
        FreezeEntityPosition(pedId, true)
    end
end

-- ============================================================
-- PED / ANIMAL PROXIMITY HELPERS
-- ============================================================

--- Return the closest NPC ped and its distance.
---@return number|nil ped, number distance
function PedVicino()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local closest, closestDist = nil, math.huge

    for _, p in ipairs(GetGamePool("CPed")) do
        if p ~= myPed and not IsPedAPlayer(p) then
            local dist = #(GetEntityCoords(p) - myCoords)
            if dist < closestDist then
                closest     = p
                closestDist = dist
            end
        end
    end
    return closest, closestDist
end

--- Return the closest animal ped and its distance.
---@return number|nil ped, number distance
function AnimaleVicino()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local closest, closestDist = nil, math.huge

    for _, p in ipairs(GetGamePool("CPed")) do
        if p ~= myPed and not IsPedAPlayer(p) and IsThisModelAnAnimal(GetEntityModel(p)) then
            local dist = #(GetEntityCoords(p) - myCoords)
            if dist < closestDist then
                closest     = p
                closestDist = dist
            end
        end
    end
    return closest, closestDist
end

--- Return the closest animal ped (export-friendly wrapper).
---@return number|nil ped
function getAnimaleVicino()
    local p, _ = AnimaleVicino()
    return p
end

--- Return the npcList ID of the closest managed NPC.
---@return number|nil id
function getNPCIDVicino()
    local myCoords  = GetEntityCoords(PlayerPedId())
    local closestId, closestDist = nil, math.huge

    for i, entry in ipairs(npcList) do
        if entry.PedID and DoesEntityExist(entry.PedID) then
            local dist = #(GetEntityCoords(entry.PedID) - myCoords)
            if dist < closestDist then
                closestId   = i
                closestDist = dist
            end
        end
    end
    return closestId
end

exports("getPedVicino",     function() return PedVicino() end)
exports("getAnimaleVicino", getAnimaleVicino)
exports("getNPCIDVicino",   getNPCIDVicino)

-- ============================================================
-- DEBUG COMMANDS: /pedVicino  /animaleVicino
-- ============================================================

RegisterCommand("pedVicino", function()
    local p, d = PedVicino()
    if p then
        exports.striano_combat:submex("Ped vicino: " .. tostring(p) .. " dist: " .. tostring(math.floor(d)))
    else
        exports.striano_combat:submexError("Nessun ped trovato.")
    end
end)

RegisterCommand("animaleVicino", function()
    local p, d = AnimaleVicino()
    if p then
        exports.striano_combat:submex("Animale vicino: " .. tostring(p) .. " dist: " .. tostring(math.floor(d)))
    else
        exports.striano_combat:submexError("Nessun animale trovato.")
    end
end)

-- ============================================================
-- STRING UTILITY
-- ============================================================

--- Split a string by a separator character.
---@param str string
---@param sep string  single character separator
---@return table
function mysplit(str, sep)
    local result = {}
    for part in string.gmatch(str, "([^" .. sep .. "]+)") do
        result[#result + 1] = part
    end
    return result
end

-- ============================================================
-- HAIR FIX SYSTEM
-- ============================================================

-- capelliFixList: models that require hair component fix
local capelliFixList = {
    "mp_f_freemode_01",
    "mp_m_freemode_01",
}

--- Apply hair component fix to the local ped.
function CapelliFix()
    local myPed = PlayerPedId()
    for _, model in ipairs(capelliFixList) do
        if GetEntityModel(myPed) == GetHashKey(model) then
            local hair = GetPedDrawableVariation(myPed, 2)
            local tex  = GetPedTextureVariation(myPed, 2)
            SetPedComponentVariation(myPed, 2, hair, tex, 2)
        end
    end
end

--- Reset hair to last saved data.
function ResettaCapelliFix()
    if not lastCapelliData or not lastCapelliData.hair then return end
    local myPed = PlayerPedId()
    SetPedComponentVariation(myPed, 2, lastCapelliData.hair, lastCapelliData.tex or 0, 2)
end

exports("resetLastCapelli", ResettaCapelliFix)

-- /fixc and aliases
RegisterCommand("fixc",       function() CapelliFix() end)
RegisterCommand("fixcapelli", function() CapelliFix() end)
RegisterCommand("fc",         function() CapelliFix() end)

-- ============================================================
-- 2D LEGACY MESSAGE
-- ============================================================

--- Draw a 2D text string in the centre-bottom of the screen.
---@param x      number  (unused — always 0.5)
---@param y      number  (unused — always 0.8)
---@param scale  number
---@param text   string
---@param r      number
---@param g      number
---@param b      number
---@param a      number
---@param font   number
---@param outline boolean
function msglegacy(x, y, scale, text, r, g, b, a, font, outline)
    SetTextFont(font or 0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r or 255, g or 255, b or 255, a or 255)
    if outline then SetTextOutline() end
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0.5, 0.8)
end

-- ============================================================
-- VALID SCARED PED CHECK  +  /wtint
-- ============================================================

--- Check whether a ped is in a valid scared state.
---@param p number ped handle
---@return boolean
function IsValidPedScared(p)
    if not DoesEntityExist(p) then return false end
    if IsPedAPlayer(p) then return false end
    if IsPedDeadOrDying(p, true) then return false end
    return true
end

RegisterCommand("wtint", function(_, args)
    local val = tonumber(args[1])
    if val then
        SetTimecycleModifier("default")
        SetTimecycleModifierStrength(val)
        exports.striano_combat:submex("TimeCycle strength: " .. tostring(val))
    end
end)

-- ============================================================
-- ROUTE BLIP
-- ============================================================

--- Set a GPS blip on the minimap at the given coords.
---@param coords vector3
function setStradaBlip(coords)
    if currentRouteBlip then
        RemoveBlip(currentRouteBlip)
    end
    currentRouteBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipRoute(currentRouteBlip, true)
    SetBlipRouteColour(currentRouteBlip, 18)
end

--- Remove the current route blip.
function delStradaBlip()
    if currentRouteBlip then
        RemoveBlip(currentRouteBlip)
        currentRouteBlip = nil
    end
end

-- /strada [x] [y] [z]  —  set a GPS route to specified coords
RegisterCommand("strada", function(_, args)
    if #args >= 3 then
        local x = tonumber(args[1])
        local y = tonumber(args[2])
        local z = tonumber(args[3])
        if x and y and z then
            setStradaBlip(vector3(x, y, z))
            exports.striano_combat:submex("Rotta impostata.")
        else
            exports.striano_combat:submexError("Coordinate non valide.")
        end
    else
        delStradaBlip()
        exports.striano_combat:submex("Rotta rimossa.")
    end
end)

exports("strada", function(_, coords)
    if coords then
        setStradaBlip(coords)
    else
        delStradaBlip()
    end
end)

-- ============================================================
-- /playanim  /pa  /pa2  /pa3
-- ============================================================

RegisterCommand("playanim", function(_, args)
    if #args >= 2 then
        local dict  = args[1]
        local clip  = args[2]
        local flags = tonumber(args[3]) or 49
        currentAnimDict = dict
        faiAnim(dict, clip, flags)
    else
        exports.striano_combat:submexError("Uso: /playanim <dict> <clip> [flags]")
    end
end)
RegisterCommand("pa", function(_, args)
    if #args >= 2 then
        currentAnimDict = args[1]
        faiAnim(args[1], args[2], tonumber(args[3]) or 49)
    end
end)
RegisterCommand("pa2", function(_, args)
    if #args >= 2 then
        currentAnimDict = args[1]
        faiAnim(args[1], args[2], tonumber(args[3]) or 1)
    end
end)
RegisterCommand("pa3", function(_, args)
    if #args >= 2 then
        currentAnimDict = args[1]
        faiAnim(args[1], args[2], tonumber(args[3]) or 0)
    end
end)

-- ============================================================
-- ANIMFUNC — play anim with E-key pause/resume monitor
-- ============================================================

--- Play animation and allow player to pause/resume it with E (control 38).
---@param dict  string
---@param anim  string
---@param flags number
function Animfunc(dict, anim, flags)
    local myPed = PlayerPedId()
    LoadAnim(dict)
    TaskPlayAnim(myPed, dict, anim, 8.0, -8.0, -1, flags, 0, false, false, false)

    CreateThread(function()
        local paused = false
        while IsEntityPlayingAnim(myPed, dict, anim, 3) do
            Wait(0)
            if IsControlJustPressed(0, 38) then   -- E key
                if paused then
                    SetEntityAnimSpeed(myPed, dict, anim, 1.0)
                    paused = false
                else
                    SetEntityAnimSpeed(myPed, dict, anim, 0.0)
                    paused = true
                end
            end
        end
    end)
end

-- ============================================================
-- LEGACY PIAZZA MESSAGE SYSTEM
-- ============================================================

local timerMsgLegacyHandle = nil

--- Looping thread that draws the current piazza message every frame.
local function loopMessaggioLegacy()
    CreateThread(function()
        while msgPiazzaUltimo ~= "" do
            Wait(0)
            msglegacy(0.5, 0.8, 0.45, msgPiazzaUltimo, 255, 255, 255, 255, 4, true)
        end
    end)
end

--- Reset the per-second timer for piazza messages.
function timerMsgLegacyPhar()
    if timerMex > 0 then
        timerMex = timerMex - 1
    end
end

--- Show a piazza (broadcast) message for a given duration.
---@param text    string
---@param seconds number  display duration in seconds
function msglegacypiazza(text, seconds)
    msgPiazzaUltimo = text
    timerMex        = seconds or 10
    loopMessaggioLegacy()
end

--- Show piazza message on screen (called from net event or command).
function mostraMsgPiazza()
    if msgPiazzaUltimo ~= "" then
        exports.striano_combat:submex(msgPiazzaUltimo)
    end
end

RegisterNetEvent("msgpiazza")
AddEventHandler("msgpiazza", function(text, seconds)
    msglegacypiazza(text, seconds)
end)

RegisterNetEvent("delmsgpiazza")
AddEventHandler("delmsgpiazza", function()
    msgPiazzaUltimo = ""
    timerMex        = 0
end)

RegisterCommand("msgpiazza", function(_, args)
    if #args >= 1 then
        local text = table.concat(args, " ", 1)
        msglegacypiazza(text, 30)
    end
end)

RegisterCommand("delmsgpiazza", function()
    msgPiazzaUltimo = ""
    timerMex        = 0
end)

-- ============================================================
-- /setvestito  /setprop
-- ============================================================

RegisterCommand("setvestito", function(_, args)
    if #args >= 3 then
        local comp = tonumber(args[1])
        local draw = tonumber(args[2])
        local tex  = tonumber(args[3])
        if comp and draw and tex then
            SetPedComponentVariation(PlayerPedId(), comp, draw, tex, 2)
        end
    end
end)

RegisterCommand("setprop", function(_, args)
    if #args >= 3 then
        local comp = tonumber(args[1])
        local draw = tonumber(args[2])
        local tex  = tonumber(args[3])
        if comp and draw and tex then
            SetPedPropIndex(PlayerPedId(), comp, draw, tex, true)
        end
    end
end)

-- ============================================================
-- ROUND HELPER
-- ============================================================

--- Round a number to a given number of decimal places.
---@param n      number
---@param places number  (default 0)
---@return number
function round(n, places)
    local mult = 10 ^ (places or 0)
    return math.floor(n * mult + 0.5) / mult
end

-- ============================================================
-- /tempeditor  — prop placement / temp editor
-- ============================================================

RegisterCommand("tempeditor", function(_, args)
    if tempeditorActive then
        exports.striano_combat:submexError("Editor già attivo.")
        return
    end
    local modelName = args[1]
    if not modelName then
        exports.striano_combat:submexError("Uso: /tempeditor <model>")
        return
    end
    local model = GetHashKey(modelName)
    if not IsModelValid(model) then
        exports.striano_combat:submexError("Modello non valido.")
        return
    end
    tempeditorActive = true
    tempOffsetZ      = 0.0
    rotazioneBottiglia = 0.0

    CreateThread(function()
        RequestModelStriano(model)
        local myPed    = PlayerPedId()
        local coords   = GetEntityCoords(myPed)
        tempEditorObj  = CreateObject(model, coords.x, coords.y, coords.z, true, true, false)
        PlaceObjectOnGroundProperly(tempEditorObj)

        while tempeditorActive do
            Wait(0)
            local pedCoords = GetEntityCoords(myPed)
            local forward   = GetEntityForwardVector(myPed)
            local placePos  = pedCoords + forward * 1.5 + vector3(0, 0, tempOffsetZ)

            SetEntityCoords(tempEditorObj, placePos.x, placePos.y, placePos.z, false, false, false, false)
            SetEntityHeading(tempEditorObj, rotazioneBottiglia)

            -- Controls
            if IsControlJustPressed(0, 172) then tempOffsetZ = tempOffsetZ + 0.05 end   -- DPad Up
            if IsControlJustPressed(0, 173) then tempOffsetZ = tempOffsetZ - 0.05 end   -- DPad Down
            if IsControlJustPressed(0, 174) then rotazioneBottiglia = rotazioneBottiglia - 10.0 end  -- DPad Left
            if IsControlJustPressed(0, 175) then rotazioneBottiglia = rotazioneBottiglia + 10.0 end  -- DPad Right

            -- E = place (freeze in world)
            if IsControlJustPressed(0, 38) then
                FreezeEntityPosition(tempEditorObj, true)
                SetEntityAsMissionEntity(tempEditorObj, true, true)
                tempeditorActive = false
                tempEditorObj    = nil
                exports.striano_combat:submex("Oggetto piazzato.")
            end

            -- Backspace / Delete = cancel
            if IsControlJustPressed(0, 194) or IsControlJustPressed(0, 202) then
                SetEntityAsMissionEntity(tempEditorObj, true, true)
                DeleteObject(tempEditorObj)
                tempeditorActive = false
                tempEditorObj    = nil
                exports.striano_combat:submex("Piazzamento annullato.")
            end
        end
        SetModelAsNoLongerNeeded(model)
    end)
end)

-- ============================================================
-- SCENE TARGET + CAM COORD HELPERS
-- ============================================================

--- Get world coordinates a certain distance in front of the camera.
---@param dist    number
---@param camPos  vector3  (optional, defaults to current cam coords)
---@return vector3
function GetCoordsFromCam(dist, camPos)
    camPos = camPos or GetGameplayCamCoords()
    local rot  = GetGameplayCamRot(2)
    local fwd  = vector3(
        -math.sin(math.rad(rot.z)) * math.cos(math.rad(rot.x)),
         math.cos(math.rad(rot.z)) * math.cos(math.rad(rot.x)),
         math.sin(math.rad(rot.x))
    )
    return camPos + fwd * dist
end

--- Set a scene target (raycast hit) and call callback with hit coords.
---@param callback function  receives hit vector3
function SceneTarget(callback)
    CreateThread(function()
        while true do
            Wait(0)
            local camCoords = GetGameplayCamCoords()
            local target    = GetCoordsFromCam(900.0, camCoords)
            local ray       = StartShapeTestRay(
                camCoords.x, camCoords.y, camCoords.z,
                target.x,    target.y,    target.z,
                511, PlayerPedId(), 7
            )
            local hit, _, hitCoords, _, _ = GetShapeTestResult(ray)
            if hit then
                DrawMarker(28, hitCoords.x, hitCoords.y, hitCoords.z,
                    0,0,0, 0,0,0, 0.12,0.12,0.12, 255,255,255,200, false,true,2,nil,nil,false)
            end
            if IsControlJustPressed(0, 24) and hit then  -- LMB
                callback(hitCoords)
                return
            end
        end
    end)
end

-- ============================================================
-- /bottiglia — bottle placement editor
-- ============================================================

RegisterCommand("bottiglia", function(_, args)
    if tempeditorActive then
        exports.striano_combat:submexError("Editor già attivo.")
        return
    end
    local modelName = args[1] or "prop_wine_red"
    local model     = GetHashKey(modelName)
    if not IsModelValid(model) then
        exports.striano_combat:submexError("Modello non valido: " .. modelName)
        return
    end
    PiazzaBottiglia(model)
end)

--- Bottle placement editor — interactive object positioning.
---@param model hash
function PiazzaBottiglia(model)
    tempeditorActive   = true
    tempOffsetZ        = 0.0
    rotazioneBottiglia = 0.0

    CreateThread(function()
        RequestModelStriano(model)
        local myPed   = PlayerPedId()
        local coords  = GetEntityCoords(myPed)
        tempEditorObj = CreateObject(model, coords.x, coords.y, coords.z, true, true, false)
        PlaceObjectOnGroundProperly(tempEditorObj)

        exports.striano_combat:submex(
            "Editor attivo — Su/Giu: Z  |  Sx/Dx: rotazione  |  E: piazza  |  Backspace: annulla"
        )

        while tempeditorActive do
            Wait(0)
            local pedCoords = GetEntityCoords(myPed)
            local forward   = GetEntityForwardVector(myPed)
            local placePos  = pedCoords + forward * 1.2 + vector3(0, 0, tempOffsetZ)

            SetEntityCoords(tempEditorObj, placePos.x, placePos.y, placePos.z, false, false, false, false)
            SetEntityHeading(tempEditorObj, rotazioneBottiglia)

            DrawMarker(1, placePos.x, placePos.y, placePos.z + 1.2,
                0,0,0, 0,0,0, 0.1,0.1,0.1, 255,200,0,180, false,false,2,nil,nil,false)

            if IsControlJustPressed(0, 172) then tempOffsetZ        = tempOffsetZ        + 0.05  end
            if IsControlJustPressed(0, 173) then tempOffsetZ        = tempOffsetZ        - 0.05  end
            if IsControlJustPressed(0, 174) then rotazioneBottiglia = rotazioneBottiglia - 10.0  end
            if IsControlJustPressed(0, 175) then rotazioneBottiglia = rotazioneBottiglia + 10.0  end

            -- E = place
            if IsControlJustPressed(0, 38) then
                FreezeEntityPosition(tempEditorObj, true)
                SetEntityAsMissionEntity(tempEditorObj, true, true)
                tempeditorActive = false
                local finalPos   = GetEntityCoords(tempEditorObj)
                exports.striano_combat:submex(
                    string.format("Piazzato a %.2f, %.2f, %.2f | heading: %.1f",
                        finalPos.x, finalPos.y, finalPos.z, rotazioneBottiglia)
                )
                tempEditorObj = nil
            end

            -- Backspace / Delete = cancel
            if IsControlJustPressed(0, 194) or IsControlJustPressed(0, 202) then
                SetEntityAsMissionEntity(tempEditorObj, true, true)
                DeleteObject(tempEditorObj)
                tempeditorActive = false
                tempEditorObj    = nil
                exports.striano_combat:submex("Piazzamento annullato.")
            end
        end
        SetModelAsNoLongerNeeded(model)
    end)
end

-- ============================================================
-- /ferpis  /copriti  /feritopistolaterra
-- ============================================================

RegisterCommand("ferpis", function()
    faiAnim("anim@move_m@injured", "walk", 0)
end)

RegisterCommand("copriti", function()
    faiAnim("anim@move_m@injured", "idle", 1)
end)

RegisterCommand("feritopistolaterra", function()
    faiAnim("combat@damage@writhe_on_floor_faceup@", "writhe_loop", 1)
end)

-- ============================================================
-- WEAPON-IN-COVER TRACKER
-- ============================================================

CreateThread(function()
    while true do
        Wait(500)
        local myPed = PlayerPedId()
        if IsPedInCover(myPed, false) then
            local weaponHash, _ = GetCurrentPedWeapon(myPed, true)
            if weaponHash ~= 2725352035 then  -- not unarmed
                weaponInCoverHash = weaponHash
            end
        else
            weaponInCoverHash = nil
        end
    end
end)

exports("disableLadder", function(_, state)
    if state then
        DisableControlAction(0, 69, true)   -- climb
    end
end)

-- ============================================================
-- /type  — typewriter text display
-- ============================================================

RegisterCommand("type", function(_, args)
    if #args < 1 then return end
    local text = table.concat(args, " ", 1)
    CreateThread(function()
        local shown = ""
        for i = 1, #text do
            shown = string.sub(text, 1, i)
            msglegacy(0.5, 0.8, 0.45, shown, 255, 255, 255, 255, 4, true)
            Wait(60)
        end
        Wait(3000)
    end)
end)

-- ============================================================
-- /fixAlpha  — reset entity alpha on closest vehicle/ped
-- ============================================================

RegisterCommand("fixAlpha", function()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local closest  = nil
    local closestD = math.huge

    for _, v in ipairs(GetGamePool("CVehicle")) do
        local d = #(GetEntityCoords(v) - myCoords)
        if d < closestD then closest = v; closestD = d end
    end
    if closest and closestD < 10.0 then
        ResetEntityAlpha(closest)
        exports.striano_combat:submex("Alpha veicolo ripristinata.")
    end
end)

-- ============================================================
-- /timecycle
-- ============================================================

RegisterCommand("timecycle", function(_, args)
    local mod = args[1] or "default"
    SetTimecycleModifier(mod)
    exports.striano_combat:submex("TimeCycle: " .. mod)
end)

--- Block show flag setter (used by trunk / hide systems).
function fBloccaMostra()
    blockShow = true
end

-- ============================================================
-- /mystress  /myigiene
-- ============================================================

RegisterCommand("mystress", function()
    TriggerServerCallback("getMyStress", function(val)
        exports.striano_combat:submex("Stress: " .. tostring(val))
    end)
end)

RegisterCommand("myigiene", function()
    TriggerServerCallback("getMyIgiene", function(val)
        exports.striano_combat:submex("Igiene: " .. tostring(val))
    end)
end)

-- ============================================================
-- PLAYER DEATH HANDLER
-- ============================================================

RegisterNetEvent("PlayerKilled:Notification")
AddEventHandler("PlayerKilled:Notification", function()
    -- placeholder — notification handled by UI layer
end)

AddEventHandler("esx:onPlayerDeath", function()
    local myPed = PlayerPedId()

    -- Detach from trunk if inside one
    if isInTrunk then
        DetachEntity(myPed, true, false)
        isInTrunk       = false
        trunkLoopActive = false
        oneModeActive   = false
    end

    -- Remove handcuffs
    IsHandcuffed = false

    -- Stop any gradual damage
    if gradualDamageCtx then
        gradualDamageCtx.active = false
        gradualDamageCtx        = nil
    end

    -- Remove ghost ped
    if myGhost and DoesEntityExist(myGhost) then
        SetEntityAsMissionEntity(myGhost, true, true)
        DeletePed(myGhost)
        myGhost = nil
    end
end)

-- ============================================================
-- TRASH CAN HIDE SYSTEM  (/nascondimi  /nsm)
-- ============================================================

local trashModelHashes = {
    GetHashKey("prop_bin_01a"),
    GetHashKey("prop_bin_02a"),
    GetHashKey("prop_bin_05a"),
    GetHashKey("prop_bin_06a"),
    GetHashKey("prop_bin_07a"),
    GetHashKey("prop_bin_08a"),
    GetHashKey("prop_bin_09a"),
    GetHashKey("prop_bin_10a"),
    GetHashKey("prop_bin_11a"),
}
local isHidingInTrash  = false
local currentTrashObject = nil

--- Find the closest trash can within range.
---@param maxDist number
---@return number|nil object handle
local function findClosestTrash(maxDist)
    local myCoords = GetEntityCoords(PlayerPedId())
    maxDist        = maxDist or 2.5
    local closest, closestDist = nil, maxDist

    for _, obj in ipairs(GetGamePool("CObject")) do
        local model = GetEntityModel(obj)
        for _, hash in ipairs(trashModelHashes) do
            if model == hash then
                local d = #(GetEntityCoords(obj) - myCoords)
                if d < closestDist then
                    closest     = obj
                    closestDist = d
                end
                break
            end
        end
    end
    return closest
end

--- Main trash-hiding loop — attaches ped to bin, hides them.
function LoopCestino()
    if oneModeActive then
        exports.striano_combat:submexError("Sei già nascosto.")
        return
    end

    if not trashCanSearch then return end
    trashCanSearch = false

    local bin = findClosestTrash()
    if not bin then
        exports.striano_combat:submexError("Nessun cestino vicino.")
        trashCanSearch = true
        return
    end

    oneModeActive       = true
    isHidingInTrash     = true
    currentTrashObject  = bin
    local myPed         = PlayerPedId()

    SetEntityVisible(myPed, false, false)
    FreezeEntityPosition(myPed, true)
    AttachEntityToEntity(myPed, bin, 0,
        0.0, 0.0, -0.8,
        0.0, 0.0, 0.0,
        false, false, false, false, 2, true)

    exports.striano_combat:submex("Sei nascosto nel cestino. Premi E per uscire.")

    CreateThread(function()
        while isHidingInTrash do
            Wait(0)
            if IsControlJustPressed(0, 38) then   -- E
                DetachEntity(myPed, true, false)
                SetEntityVisible(myPed, true, false)
                FreezeEntityPosition(myPed, false)
                isHidingInTrash    = false
                oneModeActive      = false
                currentTrashObject = nil
                trashCanSearch     = true
                trashExitReady     = true
                exports.striano_combat:submex("Sei uscito dal cestino.")
            end
        end
    end)
end

RegisterCommand("nascondimi", function() NascondimiBidone() end)
RegisterCommand("nsm",        function() NascondimiBidone() end)

--- Wrapper that triggers the trash hide system.
function NascondimiBidone()
    LoopCestino()
end

-- ============================================================
-- TRUNK HIDE SYSTEM  (/nascondibaule  /escibaule)
-- ============================================================

--- Load animation dict synchronously.
---@param dict string
local function loadDict(dict)
    RequestAnimDict(dict)
    local t = 0
    while not HasAnimDictLoaded(dict) do
        Wait(0)
        t = t + 1
        if t > 500 then break end
    end
end

RegisterCommand("nascondibaule", function()
    if oneModeActive then
        exports.striano_combat:submexError("Sei già nascosto.")
        return
    end

    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)

    -- Find closest vehicle with an open/accessible boot
    local closest, closestDist = nil, math.huge
    for _, v in ipairs(GetGamePool("CVehicle")) do
        local d = #(GetEntityCoords(v) - myCoords)
        if d < closestDist then
            closest     = v
            closestDist = d
        end
    end

    if not closest or closestDist > 4.0 then
        exports.striano_combat:submexError("Nessun veicolo vicino.")
        return
    end

    oneModeActive   = true
    isInTrunk       = true
    trunkLoopActive = true
    local vehicle   = closest

    -- Play getting-in animation
    loadDict("anim@veh@truck@enter_exit_passen@")
    TaskPlayAnim(myPed, "anim@veh@truck@enter_exit_passen@", "enter_passen_ds_low_rp", 8.0, -8.0, 2000, 0, 0, false, false, false)
    Wait(800)

    -- Attach to vehicle boot bone
    local boneIdx = GetEntityBoneIndexByName(vehicle, "boot")
    if boneIdx == -1 then boneIdx = 0 end

    AttachEntityToEntity(myPed, vehicle, boneIdx,
        0.0, -0.4, 0.2,
        0.0, 0.0,  0.0,
        false, false, false, false, 2, true)

    SetEntityVisible(myPed, false, false)
    SetCarBootOpen(vehicle, true)

    exports.striano_combat:submex("Sei nel baule. Premi E per uscire.")

    CreateThread(function()
        while trunkLoopActive do
            Wait(0)
            if IsControlJustPressed(0, 38) then   -- E
                DetachEntity(myPed, true, false)
                SetEntityVisible(myPed, true, false)
                SetCarBootOpen(vehicle, false)
                isInTrunk       = false
                trunkLoopActive = false
                oneModeActive   = false
                trashExitReady  = true
                exports.striano_combat:submex("Sei uscito dal baule.")
            end
        end
    end)
end)

RegisterCommand("escibaule", function()
    if isInTrunk then
        DetachEntity(PlayerPedId(), true, false)
        SetEntityVisible(PlayerPedId(), true, false)
        isInTrunk       = false
        trunkLoopActive = false
        oneModeActive   = false
        trashExitReady  = true
        exports.striano_combat:submex("Sei uscito dal baule.")
    end
end)

-- /bj — debug
RegisterCommand("bj", function()
    exports.striano_combat:submex("isInTrunk=" .. tostring(isInTrunk))
end)

-- ============================================================
-- core:faiprint  NET EVENT
-- ============================================================

RegisterNetEvent("core:faiprint")
AddEventHandler("core:faiprint", function(text)
    print("^3[CORE PRINT]^7 " .. tostring(text))
end)

-- ============================================================
-- onResourceStart — cleanup
-- ============================================================

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    -- Re-initialise state on hot-restart
    isInTrunk       = false
    trunkLoopActive = false
    oneModeActive   = false
    isHidingInTrash = false
    trashCanSearch  = true
    trashExitReady  = true
    porcmodeActive  = false
    guidaBaseActive = false
    soffoco         = false
end)

-- ============================================================
-- /unamano — one-handed carry loop
-- ============================================================

local oneManoActive = false

function LoopVeicoloUnaMano()
    if oneManoActive then
        oneManoActive = false
        return
    end
    oneManoActive = true
    CreateThread(function()
        while oneManoActive do
            Wait(0)
            local myPed = PlayerPedId()
            if IsPedInAnyVehicle(myPed, false) then
                local veh  = GetVehiclePedIsIn(myPed, false)
                local seat = -1
                if GetPedInVehicleSeat(veh, -1) == myPed then seat = -1 end
                DisableControlAction(0, 71, true)   -- accelerate
                -- One-hand animation is managed by game flags
            end
        end
    end)
end

RegisterCommand("unamano", function()
    LoopVeicoloUnaMano()
    exports.striano_combat:submex("Una mano: " .. (oneManoActive and "ON" or "OFF"))
end)

-- ============================================================
-- ADD PROP TO PLAYER HELPERS
-- ============================================================

--- Attach a prop to a bone of the local player ped.
---@param model  hash|string
---@param bone   number  bone index
---@param ox number @param oy number @param oz number  offset
---@param rx number @param ry number @param rz number  rotation
---@return number object handle
function AddPropToPlayer(model, bone, ox, oy, oz, rx, ry, rz)
    return AddPropToPlayerPed(PlayerPedId(), model, bone, ox, oy, oz, rx, ry, rz)
end

--- Attach a prop to a bone of any ped.
---@param targetPed number
---@param model     hash|string
---@param bone      number
---@param ox number @param oy number @param oz number
---@param rx number @param ry number @param rz number
---@return number object handle
function AddPropToPlayerPed(targetPed, model, bone, ox, oy, oz, rx, ry, rz)
    RequestModelStriano(model)
    local obj = CreateObject(model, 0, 0, 0, true, true, false)
    AttachEntityToEntity(obj, targetPed, GetPedBoneIndex(targetPed, bone),
        ox or 0.0, oy or 0.0, oz or 0.0,
        rx or 0.0, ry or 0.0, rz or 0.0,
        true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(model)
    return obj
end

-- ============================================================
-- /asce — axe prop attach command
-- ============================================================

RegisterCommand("asce", function(_, args)
    local bone = tonumber(args[1]) or 57005
    AddPropToPlayer(GetHashKey("w_me_hatchet"), bone,
        0.1, 0.0, 0.05,
        0.0, 0.0, 0.0)
    exports.striano_combat:submex("Ascia attaccata all'osso " .. tostring(bone))
end)

-- ============================================================
-- F2/F3 BLOCK HELPER
-- ============================================================

--- Block F2 (control 166) and F3 (control 167) each frame.
function BloccaF2F3()
    DisableControlAction(0, 166, true)
    DisableControlAction(0, 167, true)
end

-- ============================================================
-- AUDIO INIT THREAD
-- (disables ambient audio emitters, audio flags, wind)
-- ============================================================

CreateThread(function()
    -- Disable ambient audio scenarios that interfere with RP
    local scenarioTypesToDisable = {
        "WORLD_HUMAN_DRINKING",
        "WORLD_HUMAN_GUARD_STAND",
        "WORLD_HUMAN_HANG_OUT_STREET",
        "WORLD_HUMAN_LEANING",
        "WORLD_HUMAN_LOOK_AT_PHONE",
        "WORLD_HUMAN_SMOKING",
        "WORLD_HUMAN_STAND_FIRE",
        "WORLD_HUMAN_STREET_PREACH",
        "WORLD_HUMAN_TOURIST_MAP",
        "WORLD_HUMAN_WANDER",
    }
    for _, scenario in ipairs(scenarioTypesToDisable) do
        SetAudioFlag(scenario, true)
    end

    -- Disable wind ambience sound flag
    SetAudioFlag("DisableFlightMusic", true)

    -- Suppress ambient zone audio near player (run once on init)
    Wait(2000)
    for i = 1, 512 do
        local zone = GetAmbientZoneFromName("ambient_zone_" .. tostring(i))
        if zone and zone ~= 0 then
            SuppressAmbientZone(zone)
        end
    end
end)

-- ============================================================
-- /stopaudio  /setwind
-- ============================================================

RegisterCommand("stopaudio", function()
    StopAllSounds()
    exports.striano_combat:submex("Audio fermato.")
end)

RegisterCommand("setwind", function(_, args)
    local speed     = tonumber(args[1]) or 0.0
    local direction = tonumber(args[2]) or 0.0
    SetWind(speed)
    SetWindDirection(direction)
    exports.striano_combat:submex(
        string.format("Vento: velocità=%.1f direzione=%.1f", speed, direction)
    )
end)

-- ============================================================
-- ApplicaVestitiOspedale — apply hospital clothing
-- ============================================================

--- Apply the default hospital outfit to the local ped.
function ApplicaVestitiOspedale()
    local myPed = PlayerPedId()
    -- Standard hospital gown components
    SetPedComponentVariation(myPed, 1, 0, 0, 2)   -- mask
    SetPedComponentVariation(myPed, 3, 15, 0, 2)  -- arms
    SetPedComponentVariation(myPed, 4, 21, 0, 2)  -- pants
    SetPedComponentVariation(myPed, 5, 0, 0, 2)   -- bag
    SetPedComponentVariation(myPed, 6, 35, 0, 2)  -- shoes
    SetPedComponentVariation(myPed, 7, 0, 0, 2)   -- accessories
    SetPedComponentVariation(myPed, 8, 15, 0, 2)  -- undershirt
    SetPedComponentVariation(myPed, 9, 0, 0, 2)   -- armour
    SetPedComponentVariation(myPed, 11, 251, 0, 2) -- top
end

exports("vestitiospedale", ApplicaVestitiOspedale)

-- ============================================================
-- /getnomezona  /getzona  /getzone
-- ============================================================

RegisterCommand("getnomezona", function()
    local myPed   = PlayerPedId()
    local coords  = GetEntityCoords(myPed)
    local zoneName = GetNameOfZone(coords.x, coords.y, coords.z)
    exports.striano_combat:submex("Zona: " .. tostring(zoneName))
end)
RegisterCommand("getzona", function()
    local coords  = GetEntityCoords(PlayerPedId())
    local zoneName = GetNameOfZone(coords.x, coords.y, coords.z)
    exports.striano_combat:submex("Zona: " .. tostring(zoneName))
end)
RegisterCommand("getzone", function()
    local coords  = GetEntityCoords(PlayerPedId())
    local zoneName = GetNameOfZone(coords.x, coords.y, coords.z)
    exports.striano_combat:submex("Zone: " .. tostring(zoneName))
end)

-- ============================================================
-- PARTICLE FX SYSTEM
-- ============================================================

--- Play a one-shot particle effect at world coords.
---@param asset  string  PTFX asset name
---@param name   string  PTFX effect name
---@param coords vector3
---@param scale  number
---@param keepHandle boolean  if true, store handle in currentPtfxHandle
function PlayEffect(asset, name, coords, scale, keepHandle)
    RequestNamedPtfxAsset(asset)
    local t = 0
    while not HasNamedPtfxAssetLoaded(asset) do
        Wait(0)
        t = t + 1
        if t > 300 then break end
    end
    UseParticleFxAssetNextCall(asset)
    local handle = StartParticleFxNonLoopedAtCoord(
        name,
        coords.x, coords.y, coords.z,
        0.0, 0.0, 0.0,
        scale or 1.0,
        false, false, false
    )
    if keepHandle then
        currentPtfxHandle = handle
    end
    RemoveNamedPtfxAsset(asset)
end

--- Play a looping particle effect at world coords.
---@param asset    string
---@param name     string
---@param coords   vector3
---@param scale    number
---@param interval number  ms between re-trigger (0 = true loop)
function PlayEffectLoop(asset, name, coords, scale, interval)
    RequestNamedPtfxAsset(asset)
    local t = 0
    while not HasNamedPtfxAssetLoaded(asset) do
        Wait(0)
        t = t + 1
        if t > 300 then break end
    end
    UseParticleFxAssetNextCall(asset)
    currentPtfxHandle = StartParticleFxLoopedAtCoord(
        name,
        coords.x, coords.y, coords.z,
        0.0, 0.0, 0.0,
        scale or 1.0,
        false, false, false, false
    )
    RemoveNamedPtfxAsset(asset)

    if interval and interval > 0 then
        CreateThread(function()
            Wait(interval)
            if currentPtfxHandle and DoesParticleFxLoopedExist(currentPtfxHandle) then
                RemoveParticleFx(currentPtfxHandle, false)
                currentPtfxHandle = nil
            end
        end)
    end
end

-- /fx  <asset> <name> [scale]
RegisterCommand("fx", function(_, args)
    if #args < 2 then
        exports.striano_combat:submexError("Uso: /fx <asset> <name> [scale]")
        return
    end
    local coords = GetEntityCoords(PlayerPedId())
    PlayEffect(args[1], args[2], coords, tonumber(args[3]) or 1.0, false)
end)

-- /fxl  <asset> <name> [scale]
RegisterCommand("fxl", function(_, args)
    if #args < 2 then
        exports.striano_combat:submexError("Uso: /fxl <asset> <name> [scale]")
        return
    end
    local coords = GetEntityCoords(PlayerPedId())
    PlayEffectLoop(args[1], args[2], coords, tonumber(args[3]) or 1.0, 0)
end)

-- /fxall  — stop current looped FX
RegisterCommand("fxall", function()
    if currentPtfxHandle then
        RemoveParticleFx(currentPtfxHandle, false)
        currentPtfxHandle = nil
        exports.striano_combat:submex("FX loopato fermato.")
    end
end)

-- Net events for server-broadcast FX
RegisterNetEvent("ffxall")
AddEventHandler("ffxall", function()
    if currentPtfxHandle then
        RemoveParticleFx(currentPtfxHandle, false)
        currentPtfxHandle = nil
    end
end)

RegisterNetEvent("ffxallpos")
AddEventHandler("ffxallpos", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, false)
end)

RegisterNetEvent("ffxallpossize")
AddEventHandler("ffxallpossize", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, false)
end)

RegisterNetEvent("ffxallposcore")
AddEventHandler("ffxallposcore", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, true)
end)

RegisterNetEvent("fxAll:client")
AddEventHandler("fxAll:client", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, false)
end)

RegisterNetEvent("fxAllsize:client")
AddEventHandler("fxAllsize:client", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, false)
end)

RegisterNetEvent("fxAllcore:client")
AddEventHandler("fxAllcore:client", function(asset, name, coords, scale)
    PlayEffect(asset, name, coords, scale, true)
end)

-- ============================================================
-- NPC HAT-PROP TRACKING THREAD  +  INTERIOR LIGHT TOGGLE
-- ============================================================

local holdConfig = { label = "H", input = 74, holdDuration = 1000 }

CreateThread(function()
    local holdTimer    = 0
    local lightOn      = false

    while true do
        Wait(0)
        local myPed = PlayerPedId()

        -- H hold — toggle interior vehicle light
        if IsControlPressed(0, holdConfig.input) then
            holdTimer = holdTimer + 1
            if holdTimer >= holdConfig.holdDuration / 10 then
                holdTimer = 0
                if IsPedInAnyVehicle(myPed, false) then
                    lightOn = not lightOn
                    local veh = GetVehiclePedIsIn(myPed, false)
                    SetVehicleInteriorlight(veh, lightOn)
                end
            end
        else
            holdTimer = 0
        end
    end
end)

-- ============================================================
-- makeEntityFaceEntity  +  makeEntityFaceEntityRev
-- ============================================================

--- Make entity A face entity B.
---@param ent    number
---@param target number
function makeEntityFaceEntity(ent, target)
    local entCoords    = GetEntityCoords(ent)
    local targetCoords = GetEntityCoords(target)
    local dx           = targetCoords.x - entCoords.x
    local dy           = targetCoords.y - entCoords.y
    local heading      = math.deg(math.atan(dx, dy)) % 360.0
    SetEntityHeading(ent, heading)
end

--- Make entity A face away from entity B.
---@param ent    number
---@param target number
function makeEntityFaceEntityRev(ent, target)
    local entCoords    = GetEntityCoords(ent)
    local targetCoords = GetEntityCoords(target)
    local dx           = entCoords.x - targetCoords.x
    local dy           = entCoords.y - targetCoords.y
    local heading      = math.deg(math.atan(dx, dy)) % 360.0
    SetEntityHeading(ent, heading)
end

-- ============================================================
-- PLAYER STATS MAXER THREAD
-- ============================================================

CreateThread(function()
    Wait(2000)
    local playerId = PlayerId()
    SetPlayerStamina(playerId, 100.0)
    SetPlayerMaxStamina(playerId, 100.0)
    SetRunSprintMultiplierForPlayer(playerId, 1.0)
    SetSwimMultiplierForPlayer(playerId, 1.0)

    -- Keep stats maxed
    while true do
        Wait(60000)  -- every minute
        SetPlayerStamina(playerId, 100.0)
    end
end)

-- ============================================================
-- SUFFOCATION / GAS SYSTEM
-- ============================================================

exports("soffoco", function(_, state)
    soffoco = state == true
end)

--- Start a gradual damage coroutine.
---@param opts table  { damagePerTick=number, tickMs=number, maxDamage=number }
function StartGradualDamage(opts)
    if gradualDamageCtx then
        gradualDamageCtx.active = false
    end

    local ctx = { active = true }
    gradualDamageCtx = ctx

    opts = opts or {}
    local dmgPerTick = opts.damagePerTick or 5
    local tickMs     = opts.tickMs        or 1000
    local maxDmg     = opts.maxDamage     or 100

    CreateThread(function()
        local totalDmg = 0
        while ctx.active and totalDmg < maxDmg do
            Wait(tickMs)
            if not ctx.active then break end
            local myPed = PlayerPedId()
            ApplyDamageToPed(myPed, dmgPerTick, false)
            totalDmg = totalDmg + dmgPerTick
        end
    end)
end

--- Stop the current gradual damage coroutine.
function StopGradualDamage()
    if gradualDamageCtx then
        gradualDamageCtx.active = false
        gradualDamageCtx        = nil
    end
end

-- ============================================================
-- FORCE RESYNC (ghost ped)
-- ============================================================

function ResyncForzato()
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)
    local model    = GetEntityModel(myPed)

    RequestModelStriano(model)
    if myGhost and DoesEntityExist(myGhost) then
        SetEntityAsMissionEntity(myGhost, true, true)
        DeletePed(myGhost)
    end
    myGhost = CreatePed(26, model, myCoords.x, myCoords.y, myCoords.z, GetEntityHeading(myPed), false, false)
    SetEntityAlpha(myGhost, 0, false)
    SetEntityInvincible(myGhost, true)
    SetEntityVisible(myGhost, false, false)
    SetModelAsNoLongerNeeded(model)
end

-- ============================================================
-- GAS MASK CHECK + SUFFOCATION FUNCTION
-- ============================================================

--- Check if the local ped is wearing a gas mask (component draw 115/116/117).
---@return boolean
function MascheraAntigas()
    local myPed = PlayerPedId()
    local draw  = GetPedDrawableVariation(myPed, 1)  -- mask component
    -- Common gas mask drawable indices
    return draw == 115 or draw == 116 or draw == 117
end

--- Main suffocation routine — handles gas/smoke zone damage and FX.
function SoffocoFunc()
    if soffoco then return end
    soffoco = true

    CreateThread(function()
        local myPed     = PlayerPedId()
        local soundId   = "respirosurv"
        local ptfxAsset = "core"
        local ptfxName  = "exp_air_grenade"

        exports.xsound:PlayUrl(soundId, "sounds/respirosurv.mp3", 0.6, true)

        -- Check gas mask every second; apply damage if not wearing one
        while soffoco do
            Wait(1000)
            if not MascheraAntigas() then
                StartGradualDamage({ damagePerTick = 8, tickMs = 1000, maxDamage = 200 })
            else
                StopGradualDamage()
            end

            -- Smoke PTFX around ped
            local coords = GetEntityCoords(myPed)
            PlayEffect(ptfxAsset, ptfxName, coords + vector3(0, 0, 0.5), 0.5, false)
        end

        -- Cleanup
        StopGradualDamage()
        exports.xsound:fadeOut(soundId, 1000)
        if exports.striano_editor then
            exports.striano_editor:induskfalls(false)
        end
    end)
end

-- ============================================================
-- THROW OBJECT SMART (ballistic trajectory)
-- ============================================================

--- Throw an object from `from` to `to` using ballistic physics.
---@param obj  number   entity handle
---@param from vector3  start coords
---@param to   vector3  target coords
---@param opts table    { speed=number, gravity=number, arcHeight=number }
function ThrowObjectSmart(obj, from, to, opts)
    opts = opts or {}
    local speed     = opts.speed      or 15.0
    local arcHeight = opts.arcHeight  or 3.0

    ActivatePhysics(obj)

    local dx   = to.x - from.x
    local dy   = to.y - from.y
    local dz   = to.z - from.z
    local dist = math.sqrt(dx*dx + dy*dy)
    local t    = dist / speed

    -- Ballistic velocity components
    local vx = (dx / t)
    local vy = (dy / t)
    local vz = (dz / t) + (0.5 * 9.8 * t) + arcHeight

    SetEntityVelocity(obj, vx, vy, vz)
end

-- Fan throw positions (36 crowd throw coords)
fanThrowPositions = {
    vector3(-308.27, -1461.32, 26.11), vector3(-305.15, -1459.83, 26.11),
    vector3(-302.04, -1458.31, 26.11), vector3(-298.93, -1456.80, 26.11),
    vector3(-295.82, -1455.28, 26.11), vector3(-292.71, -1453.77, 26.11),
    vector3(-289.60, -1452.25, 26.11), vector3(-286.49, -1450.74, 26.11),
    vector3(-283.38, -1449.23, 26.11), vector3(-280.27, -1447.71, 26.11),
    vector3(-277.16, -1446.20, 26.11), vector3(-274.05, -1444.68, 26.11),
    vector3(-270.94, -1443.17, 26.11), vector3(-267.83, -1441.65, 26.11),
    vector3(-264.72, -1440.14, 26.11), vector3(-261.61, -1438.62, 26.11),
    vector3(-258.50, -1437.11, 26.11), vector3(-255.39, -1435.60, 26.11),
    vector3(-308.27, -1468.32, 26.11), vector3(-305.15, -1466.83, 26.11),
    vector3(-302.04, -1465.31, 26.11), vector3(-298.93, -1463.80, 26.11),
    vector3(-295.82, -1462.28, 26.11), vector3(-292.71, -1460.77, 26.11),
    vector3(-289.60, -1459.25, 26.11), vector3(-286.49, -1457.74, 26.11),
    vector3(-283.38, -1456.23, 26.11), vector3(-280.27, -1454.71, 26.11),
    vector3(-277.16, -1453.20, 26.11), vector3(-274.05, -1451.68, 26.11),
    vector3(-270.94, -1450.17, 26.11), vector3(-267.83, -1448.65, 26.11),
    vector3(-264.72, -1447.14, 26.11), vector3(-261.61, -1445.63, 26.11),
    vector3(-258.50, -1444.11, 26.11), vector3(-255.39, -1442.60, 26.11),
}

-- Fan throw object hashes (9 props)
fanThrowHashes = {
    GetHashKey("prop_tomato"),
    GetHashKey("prop_apple"),
    GetHashKey("prop_banana"),
    GetHashKey("prop_pear_01"),
    GetHashKey("prop_choc_egg"),
    GetHashKey("prop_candy_pqs"),
    GetHashKey("prop_drink_bottle"),
    GetHashKey("prop_cs_cardboardbox"),
    GetHashKey("prop_rock_4_c"),
}

--- Check if an entity has stopped moving.
---@param entity number
---@return boolean
function CheckOggettoFermo(entity)
    if not DoesEntityExist(entity) then return true end
    local vel = GetEntityVelocity(entity)
    return #vel < 0.05
end

--- Fade an entity's alpha to 0 then delete it.
---@param ent     number
---@param fadeMs  number  fade duration in ms
---@param delayMs number  delay before fade starts
function FadeAndDeleteObject(ent, fadeMs, delayMs)
    CreateThread(function()
        Wait(delayMs or 0)
        local steps    = 20
        local stepTime = (fadeMs or 2000) / steps
        local alpha    = 255
        for i = 1, steps do
            Wait(stepTime)
            alpha = alpha - (255 / steps)
            if DoesEntityExist(ent) then
                SetEntityAlpha(ent, math.max(0, math.floor(alpha)), false)
            end
        end
        if DoesEntityExist(ent) then
            SetEntityAsMissionEntity(ent, true, true)
            DeleteObject(ent)
        end
    end)
end

--- Get the next fan throw position (circular index).
---@return vector3
function GetNextOggettoLancio()
    oggettoLancioIndex = (oggettoLancioIndex % #fanThrowPositions) + 1
    return fanThrowPositions[oggettoLancioIndex]
end

--- Throw a random prop from a fan crowd position toward a ped.
---@param targetPed number
function lancioFansOggetti(targetPed)
    local fromCoords   = GetNextOggettoLancio()
    local targetCoords = GetEntityCoords(targetPed) + vector3(0, 0, 0.5)
    local model        = fanThrowHashes[math.random(1, #fanThrowHashes)]

    RequestModelStriano(model)
    local obj = CreateObject(model, fromCoords.x, fromCoords.y, fromCoords.z, true, true, false)
    SetEntityAsMissionEntity(obj, true, true)

    ThrowObjectSmart(obj, fromCoords, targetCoords, { speed = 18.0, arcHeight = 4.0 })
    FadeAndDeleteObject(obj, 1500, 3000)
end

-- /lancioPomodoro — debug: throw tomato at player
RegisterCommand("lancioPomodoro", function()
    lancioFansOggetti(PlayerPedId())
end)

-- /clearLancio — stop fan object throw loop
RegisterCommand("clearLancio", function()
    oggettoLancioIndex = 0
    exports.striano_combat:submex("Lancio fermato.")
end)

-- Fan throw timer thread (runs when in arena area)
CreateThread(function()
    while true do
        Wait(3000)
        -- Fan throws are triggered externally; this thread is a placeholder
        -- for future timed crowd interaction in arena zones.
    end
end)

-- ============================================================
-- ARENA SOUND SYSTEM
-- ============================================================

--- Start the arena background music.
---@param vol number  volume (0.0–1.0)
function startArenaSound(vol)
    if arenaSoundPlaying then return end
    arenaSoundPlaying = true
    arenaSoundStopped = false
    exports.xsound:PlayUrl("arenaSound", arenaSoundPath, vol or 0.5, true)
end

--- Stop the arena background music.
function stopArenaSound()
    if not arenaSoundPlaying then return end
    arenaSoundPlaying = false
    arenaSoundStopped = true
    exports.xsound:fadeOut("arenaSound", 2000)
end

RegisterCommand("startarena",  function(_, args) startArenaSound(tonumber(args[1]) or 0.5) end)
RegisterCommand("stoparena",   function()        stopArenaSound()                           end)

RegisterNetEvent("startArenaSound:client")
AddEventHandler("startArenaSound:client", function(vol)
    startArenaSound(vol)
end)

RegisterNetEvent("stopArenaSound:client")
AddEventHandler("stopArenaSound:client", function()
    stopArenaSound()
end)

-- ============================================================
-- ARENA MARKERS
-- ============================================================

arenaMarkers = {
    { coords = vector3(-256.0, -1453.7, 24.5), nome = "Arena" },
    { coords = vector3(-284.0, -1453.7, 24.5), nome = "Arena" },
}

-- ============================================================
-- MAIN 1s LOOP THREAD
-- (poison zone, fire proof, police weapon tracking, stealth,
--  gesture anims, arena sound proximity, water warning)
-- ============================================================

CreateThread(function()
    while true do
        Wait(1000)
        local myPed    = PlayerPedId()
        local myCoords = GetEntityCoords(myPed)
        local playerId = PlayerId()

        -- === Crash zone poison ===
        if crashZoneCenter and crashZoneRadius then
            local inZone = #(myCoords - crashZoneCenter) <= crashZoneRadius
            if inZone and not velenoattivo then
                velenoattivo = true
                SoffocoFunc()
            elseif not inZone and velenoattivo then
                velenoattivo = false
                soffoco      = false
                StopGradualDamage()
            end
        end

        -- === Fire proof flag from porcmode ===
        if porcmodeActive then
            SetEntityProofs(myPed, true, true, true, true, true, true, true, true)
        end

        -- === Police vehicle weapon tracker ===
        if IsPedInAnyVehicle(myPed, false) then
            local veh = GetVehiclePedIsIn(myPed, false)
            if not policeVehicleEntered then
                policeVehicleEntered = true
                policeWeaponInventory = {}
                policeWeaponPresent   = {}
                -- Notify server that player entered police vehicle
                TriggerServerEvent("PoliceVehicleWeaponDeleter:askDropWeapon",
                    GetVehicleNumberPlateText(veh))
            end
        else
            if policeVehicleEntered then
                policeVehicleEntered  = false
                policeWeaponInventory = {}
                policeWeaponPresent   = {}
            end
        end

        -- === Stealth mode icon suppression ===
        local inStealth = IsPedUsingActionMode(myPed)
        if inStealth then
            SetPedConfigFlag(myPed, 78,  false)
            SetPedConfigFlag(myPed, 146, false)
        end

        -- === Arena sound proximity check ===
        local nearArena = false
        for _, marker in ipairs(arenaMarkers) do
            if #(myCoords - marker.coords) < 80.0 then
                nearArena = true
                break
            end
        end
        if nearArena and not arenaSoundPlaying then
            startArenaSound(0.4)
        elseif not nearArena and arenaSoundPlaying then
            stopArenaSound()
        end

        -- === Water warning ===
        if IsEntityInWater(myPed) then
            waterWarningCount = waterWarningCount + 1
            if waterWarningCount >= 3 then
                exports.striano_combat:submexImportant(
                    "~r~Stai annegando! Esci dall'acqua immediatamente!")
                waterWarningCount = 0
            end
        else
            waterWarningCount = 0
        end
    end
end)

-- ============================================================
-- PoliceVehicleWeaponDeleter:drop  HANDLER
-- ============================================================

RegisterNetEvent("PoliceVehicleWeaponDeleter:drop")
AddEventHandler("PoliceVehicleWeaponDeleter:drop", function(weaponsList)
    local myPed = PlayerPedId()
    for _, wHash in ipairs(weaponsList or {}) do
        RemoveWeaponFromPed(myPed, wHash)
    end
end)

-- ============================================================
-- PERSISTENT CONTROL-DISABLING THREAD
-- (HUD hide, health regen off, water ambience off)
-- ============================================================

CreateThread(function()
    while true do
        Wait(0)
        local myPed    = PlayerPedId()
        local playerId = PlayerId()

        -- Disable vanilla HUD elements
        HideHudComponentThisFrame(1)   -- wanted stars
        HideHudComponentThisFrame(2)   -- weapon icon
        HideHudComponentThisFrame(3)   -- cash
        HideHudComponentThisFrame(4)   -- MP cash
        HideHudComponentThisFrame(7)   -- vehicle name
        HideHudComponentThisFrame(9)   -- street name
        HideHudComponentThisFrame(13)  -- subtitles background

        -- Keep health regen disabled
        SetPlayerHealthRechargeMultiplier(playerId, 0.0)

        -- Disable water ambience audio flag
        SetAudioFlag("DisableFlightMusic", true)
    end
end)

-- ============================================================
-- PARACHUTE MANAGEMENT THREAD
-- ============================================================

CreateThread(function()
    while true do
        Wait(500)
        local myPed   = PlayerPedId()
        local paraState = GetPedParachuteState(myPed)

        if showParaInfo then
            -- Display parachute state in top-left for debugging
            -- (only visible when showParaInfo is true)
            if paraState >= 0 then
                -- para deployed or free fall — handled by striano systems
            end
        end

        -- Prevent vanilla parachute purchase prompt
        if IsPedInParachuteFreeFall(myPed) then
            DisableControlAction(0, 56, true)  -- parachute deploy
        end
    end
end)

-- /parainfo — toggle parachute debug info
RegisterCommand("parainfo", function()
    showParaInfo = not showParaInfo
    exports.striano_combat:submex("ParaInfo: " .. (showParaInfo and "ON" or "OFF"))
end)

-- ============================================================
-- MELEE WEAPON DISABLE THREAD
-- ============================================================

CreateThread(function()
    while true do
        Wait(0)
        local myPed = PlayerPedId()
        -- Disable vanilla melee lock-on while aiming a firearm
        if IsPlayerFreeAiming(PlayerId()) then
            DisableControlAction(0, 140, true)  -- melee attack1
            DisableControlAction(0, 141, true)  -- melee attack2
        end
    end
end)

-- ============================================================
-- /porcmode — god-mode-admin toggle
-- ============================================================

RegisterCommand("porcmode", function()
    if LocalPlayer.state.adminLevel and LocalPlayer.state.adminLevel >= 1 then
        funcGodModeAdm()
    else
        exports.striano_combat:submexError("Non hai i permessi.")
    end
end)

--- Toggle admin god mode (invincibility + proofs).
function funcGodModeAdm()
    porcmodeActive = not porcmodeActive
    local myPed    = PlayerPedId()

    if porcmodeActive then
        SetEntityInvincible(myPed, true)
        SetEntityProofs(myPed, true, true, true, true, true, true, true, true)
        SetEntityCanBeDamaged(myPed, false)
        exports.striano_combat:submex("~g~God mode ATTIVO")
    else
        SetEntityInvincible(myPed, false)
        SetEntityProofs(myPed, false, false, false, false, false, false, false, false)
        SetEntityCanBeDamaged(myPed, true)
        exports.striano_combat:submex("~r~God mode DISATTIVO")
    end
    funcGodModeAdmTesto()
end

--- Display god-mode status text.
function funcGodModeAdmTesto()
    CreateThread(function()
        for _ = 1, 100 do
            Wait(0)
            local txt = porcmodeActive and "~g~GOD MODE ON" or "~r~GOD MODE OFF"
            msglegacy(0.5, 0.05, 0.5, txt, 255, 255, 255, 255, 4, true)
        end
    end)
end

-- ============================================================
-- gameEventTriggered — CEventNetworkEntityDamage tracker
-- ============================================================

AddEventHandler("gameEventTriggered", function(name, args)
    if name ~= "CEventNetworkEntityDamage" then return end
    victim               = args[1]
    attacker             = args[2]
    victimDied           = args[4] == 1
    weaponHash           = args[5]
    isMeleeDamage        = args[9] == 1
    vehicleDamageTypeFlag = args[10]

    -- Only process events where the local ped is the victim
    if victim ~= PlayerPedId() then return end

    varCheck = true
end)

-- mexImportante — important message net event
RegisterNetEvent("mexImportante")
AddEventHandler("mexImportante", function(text)
    exports.striano_combat:submexImportant(text)
end)

-- ============================================================
-- /v — clothing fast menu
-- ============================================================

RegisterCommand("v", function()
    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem("Vestiti salvati", function()
        TriggerServerCallback("getOutfits", function(outfits)
            if not outfits or #outfits == 0 then
                exports.striano_combat:submexError("Nessun vestito salvato.")
                return
            end
            exports.striano_fastmenu:clearMenu()
            for _, outfit in ipairs(outfits) do
                exports.striano_fastmenu:addMenuItem(outfit.name, function()
                    TriggerServerEvent("applyOutfit", outfit.id)
                end, true)
            end
            exports.striano_fastmenu:openMenu()
        end)
    end, true)

    exports.striano_fastmenu:addMenuItem("Reset vestiti", function()
        TriggerServerEvent("resetOutfit")
    end, true)

    exports.striano_fastmenu:openMenu()
end)

-- ============================================================
-- /mv — vehicle fast menu
-- ============================================================

RegisterCommand("mv", function()
    local myPed = PlayerPedId()
    if not IsPedInAnyVehicle(myPed, false) then
        exports.striano_combat:submexError("Devi essere in un veicolo.")
        return
    end

    local veh = GetVehiclePedIsIn(myPed, false)

    exports.striano_fastmenu:clearMenu()

    exports.striano_fastmenu:addMenuItem("Ripara veicolo", function()
        SetVehicleFixed(veh)
        SetVehicleDeformationFixed(veh)
        SetVehicleEngineOn(veh, true, true, false)
        exports.striano_combat:submex("Veicolo riparato.")
    end, true)

    exports.striano_fastmenu:addMenuItem("Pulisci veicolo", function()
        WashVehicleTextures(veh, 255)
        SetVehicleDirtLevel(veh, 0.0)
        exports.striano_combat:submex("Veicolo pulito.")
    end, true)

    exports.striano_fastmenu:addMenuItem("Luci interne ON/OFF", function()
        SetVehicleInteriorlight(veh, not IsVehicleInteriorLightOn(veh))
    end, true)

    exports.striano_fastmenu:openMenu()
end)

-- ============================================================
-- /guidaBase — keybinding guide overlay
-- ============================================================

RegisterCommand("guidaBase", function()
    if not IsPedHuman(PlayerPedId()) then return end
    if not tutorialFatto then return end
    if guidaBaseActive then return end

    guidaBaseActive = true

    -- Wait for pause menu to close
    while IsPauseMenuActive() do Wait(0) end

    -- Clear existing guide text
    exports.text_guide:ClearGuideText()
    Wait(225)

    -- Build and send each guide entry
    local entries = {
        { label = "INTERACT",    keys = { "ALT" } },
        { label = "INV",         keys = { exports.striano_core:getInfoKey(470729322) } },
        { label = "VOICE RANGE", keys = { exports.striano_core:getInfoKey(1674276229) } },
        { label = "QUEST MENU",  keys = { exports.striano_core:getInfoKey(1379088272) } },
        { label = "SPELLS",      keys = { "G" } },
        { label = "CLEAR ANIM",  keys = { exports.striano_core:getInfoKey(-790369489) } },
        { label = "MAP",         keys = { "P" } },
        { label = "STEALTH",     keys = { exports.striano_core:getInfoKey(659662656) } },
        { label = "RAPID",       keys = { "MMB" } },
        { label = "ETERIS",      keys = { "F1" } },
        { label = "STRIP",       keys = { "CTRL-DX" } },
        { label = "MAIN MENU",   keys = { "ESC" } },
        { label = "GUIDE",       keys = { exports.striano_core:getInfoKey(-1259717162) } },
    }

    for _, entry in ipairs(entries) do
        local tbl = {}
        tbl[entry.label] = entry.keys
        exports.text_guide:AddGuideText(tbl)
        Wait(1)
    end

    exports.text_guide:GuidaVisibileNV()
    Wait(1000)
    guidaBaseActive = false
end)

-- ============================================================
-- /guidaarmi — weapon keybinding guide overlay
-- ============================================================

RegisterCommand("guidaarmi", function()
    if not IsPedHuman(PlayerPedId()) then return end
    if not tutorialFatto then return end
    if guidaBaseActive then return end

    guidaBaseActive = true

    while IsPauseMenuActive() do Wait(0) end

    exports.text_guide:ClearGuideText()
    Wait(225)

    local entries = {
        { label = "STEALTH", keys = { exports.striano_core:getInfoKey(659662656) } },
        { label = "RELOAD",  keys = { "R" } },
        { label = "GUIDE",   keys = { exports.striano_core:getInfoKey(-1259717162) } },
    }

    for _, entry in ipairs(entries) do
        local tbl = {}
        tbl[entry.label] = entry.keys
        exports.text_guide:AddGuideText(tbl)
        Wait(1)
    end

    exports.text_guide:GuidaVisibileNV()
    Wait(1000)
    guidaBaseActive = false
end)

-- ============================================================
-- KEY LABEL MAP  (button code → human-readable string)
-- ============================================================

local keyLabels = {
    b_100  = "LMB",
    b_101  = "RMB",
    b_102  = "MMB",
    b_103  = "Mouse Extra 1",
    b_104  = "Mouse Extra 2",
    b_105  = "Mouse Extra 3",
    b_106  = "Mouse Extra 4",
    b_107  = "Mouse Extra 5",
    b_108  = "Mouse Extra 6",
    b_109  = "Mouse Extra 7",
    b_110  = "Mouse Extra 8",
    b_115  = "Mouse Rotellina Su",
    b_116  = "Mous Rotellina Giu",
    b_130  = "Num -",
    b_131  = "Num +",
    b_134  = "Num *",
    b_135  = "Num Invio",
    b_137  = "Num 1",
    b_138  = "Num 2",
    b_139  = "Num 3",
    b_140  = "Num 4",
    b_141  = "Num 5",
    b_142  = "Num 6",
    b_143  = "Num 7",
    b_144  = "Num 8",
    b_145  = "Num 9",
    b_170  = "F1",
    b_171  = "F2",
    b_172  = "F3",
    b_173  = "F4",
    b_174  = "F5",
    b_175  = "F6",
    b_176  = "F7",
    b_177  = "F8",
    b_178  = "F9",
    b_179  = "F10",
    b_180  = "F11",
    b_181  = "F12",
    b_182  = "F13",
    b_183  = "F14",
    b_184  = "F15",
    b_185  = "F16",
    b_186  = "F17",
    b_187  = "F18",
    b_188  = "F19",
    b_189  = "F20",
    b_190  = "F21",
    b_191  = "F22",
    b_192  = "F23",
    b_193  = "F24",
    b_194  = "Freccia Su",
    b_195  = "Freccia Giu",
    b_196  = "Freccia SX",
    b_197  = "Freccia DX",
    b_198  = "Del",
    b_199  = "Esc",
    b_200  = "Insert",
    b_201  = "End",
    b_210  = "Del",
    b_211  = "Insert",
    b_212  = "End",
    b_1000 = "Shift",
    b_1002 = "Tab",
    b_1003 = "Enter",
    b_1004 = "Backspace",
    b_1008 = "Home",
    b_1009 = "Pag Su",
    b_1010 = "Pag Giu",
    b_1012 = "CapsLock",
    b_1013 = "Control",
    b_1014 = "Control Dx",
    b_1015 = "Alt",
    b_1055 = "Home",
    b_1056 = "Pag Su",
    b_2000 = "Spazio",
}

--- Resolve a GTA control hash to a human-readable key label.
---@param controlHash number  GTA input hash
---@return string
function GetKeyLabel(controlHash)
    local raw = GetControlInstructionalButton(0, controlHash | 2147483648, true)

    -- If the raw string contains "t_" it's a text label — strip it
    if string.find(raw, "t_") then
        local label = string.gsub(raw, "t_", "")
        if label == "\195\185" then label = "MMB" end
        return label
    end

    -- Fallback to our lookup table
    return keyLabels[raw] or "Non identificato"
end

exports("getInfoKey", GetKeyLabel)

-- /testGetInvKey — debug: print inventory key
RegisterCommand("testGetInvKey", function()
    local key = exports.striano_core:getInfoKey(470729322)
    print("Tasto per aprire inventario ottenuto: " .. tostring(key))
end)

-- ============================================================
-- onResourceStop — cleanup NPCs + invincibility
-- ============================================================

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    for _, entry in ipairs(npcList) do
        if entry.PedID and DoesEntityExist(entry.PedID) then
            SetEntityAsMissionEntity(entry.PedID, true, true)
            DeleteEntity(entry.PedID)
        end
    end

    SetEntityInvincible(PlayerPedId(), false)
end)

-- ============================================================
-- RELISOFT TAG SYSTEM
-- (admin tags rendered above nearby admin peds)
-- ============================================================

RegisterNetEvent("relisoft_tag:set_admins")
AddEventHandler("relisoft_tag:set_admins", function(admins)
    relisoftAdmins = admins or {}
    -- Remove entries from nearby list that are no longer admins
    for source in pairs(relisoftNearby) do
        if not relisoftAdmins[source] then
            relisoftNearby[source] = nil
        end
    end
end)

-- Fetch admin list from server on startup
TriggerServerCallback("getAdminsPlayers", function(result)
    relisoftAdmins = result or {}
end)

--- Draw a 3D world-space text label (relisoft variant — distance-scaled).
---@param coords vector3
---@param text   string
---@param opts   table   optional { size=number, color={r,g,b,a} }
local function DrawRelisoftTag(coords, text, opts)
    opts = opts or {}
    local color  = opts.color or { r = 255, g = 255, b = 255, a = 255 }
    local size   = opts.size  or 0.4

    local camCoords = GetGameplayCamCoords()
    local dist      = #(camCoords - coords)
    local fov       = (1 / GetGameplayCamFov()) * 100
    local scale     = (size / dist) * 2 * fov

    SetDrawOrigin(coords.x, coords.y, coords.z, 0)
    SetTextProportional(0)
    SetTextScale(0.0 * scale, 0.55 * scale)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextFont(4)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

-- Thread: update which admins are within 15m of the local player (every 1s)
CreateThread(function()
    while true do
        Wait(1000)
        local myCoords = GetEntityCoords(PlayerPedId())

        for source, data in pairs(relisoftAdmins) do
            local player = GetPlayerFromServerId(data.source)
            if player ~= -1 then
                local otherPed    = GetPlayerPed(player)
                local otherCoords = GetEntityCoords(otherPed)
                local dist        = #(otherCoords - myCoords)
                if dist < 15.0 then
                    relisoftNearby[data.source] = data
                else
                    relisoftNearby[data.source] = nil
                end
            end
        end
    end
end)

-- Thread: rebuild relisoftDraw list every second
CreateThread(function()
    while true do
        Wait(1000)
        relisoftDraw = {}
        local myServerId = GetPlayerServerId(PlayerId())

        for source, data in pairs(relisoftNearby) do
            local player = GetPlayerFromServerId(data.source)
            if player ~= -1 then
                local otherPed = GetPlayerPed(player)
                if data.stato then
                    relisoftDraw[player] = {
                        ped    = otherPed,
                        label  = data.stato,
                        source = data.source,
                        self   = (data.source == myServerId),
                    }
                end
            end
        end
    end
end)

-- Thread: draw admin tags above nearby admins every frame
CreateThread(function()
    while true do
        Wait(0)
        if next(relisoftDraw) then
            for _, data in pairs(relisoftDraw) do
                if data.label then
                    local pedCoords = GetEntityCoords(data.ped) + vector3(0, 0, 1.2)
                    local size      = data.self and 0.35 or 0.45
                    DrawRelisoftTag(pedCoords, data.label, { size = size })
                end
            end
        else
            Wait(1000)
        end
    end
end)

-- ============================================================
-- esx:spawnPed2 — spawn a ped in front of the player
-- ============================================================

RegisterNetEvent("esx:spawnPed2")
AddEventHandler("esx:spawnPed2", function(model)
    CreateThread(function()
        RequestModelStriano(model)
        local myPed    = PlayerPedId()
        local coords   = GetEntityCoords(myPed)
        local forward  = GetEntityForwardVector(myPed)
        local spawnPos = coords + forward * 2.0

        local spawnedPed = CreatePed(
            26, model,
            spawnPos.x, spawnPos.y, spawnPos.z - 0.5,
            GetEntityHeading(myPed), true, false
        )
        SetPedDefaultComponentVariation(spawnedPed)
        SetModelAsNoLongerNeeded(model)
        SetPedCanRagdollFromPlayerImpact(spawnedPed, false)
    end)
end)

-- ============================================================
-- VECTOR3 MATH HELPERS  (used by DrawAimRay)
-- ============================================================

--- Convert degrees to radians.
---@param deg number
---@return number
local function toRad(deg)
    return deg * 0.017453292519943295
end

--- Create a vector3 from floats.
local function makeVec3(x, y, z)
    return vector3(x + 0.0, y + 0.0, z + 0.0)
end

--- Add two vector3s.
local function vecAdd(a, b)
    return makeVec3(a.x + b.x, a.y + b.y, a.z + b.z)
end

--- Subtract two vector3s.
local function vecSub(a, b)
    return makeVec3(a.x - b.x, a.y - b.y, a.z - b.z)
end

--- Multiply vector3 by scalar.
local function vecMul(a, s)
    return makeVec3(a.x * s, a.y * s, a.z * s)
end

--- Dot product of two vector3s.
local function vecDot(a, b)
    return a.x * b.x + a.y * b.y + a.z * b.z
end

--- Length of a vector3.
local function vecLen(a)
    return math.sqrt(vecDot(a, a))
end

--- Normalize a vector3.
local function vecNorm(a)
    local len = vecLen(a)
    if len < 1e-6 then return makeVec3(0, 0, 0) end
    return vecMul(a, 1.0 / len)
end

--- Build forward vector from camera rotation (pitch=x, yaw=z).
---@param rot vector3  camera rotation in degrees
---@return vector3
local function rotToFwd(rot)
    local pitchRad = toRad(rot.x)
    local yawRad   = toRad(rot.z)
    local cosPitch = math.cos(pitchRad)
    return makeVec3(
        -math.sin(yawRad) * cosPitch,
         math.cos(yawRad) * cosPitch,
         math.sin(pitchRad)
    )
end

-- ============================================================
-- DrawAimRay — aim-ray selector
-- Fires a raycast from the player's gun barrel in the camera
-- direction; draws a line and sphere marker, and calls
-- callback(hitCoords) when LMB / fire is pressed.
-- ============================================================

--- Start an aim-ray selection loop.
---@param callback function  called with hit vector3 when player fires
function DrawAimRay(callback)
    local myPed = PlayerPedId()
    CreateThread(function()
        while true do
            Wait(0)

            local camCoords = GetGameplayCamCoords()
            local camRot    = GetGameplayCamRot(2)
            local fwd       = rotToFwd(camRot)
            local farPoint  = vecAdd(camCoords, vecMul(fwd, 900.0))

            -- Gun barrel origin (right hand bone 31086)
            local boneCoords = GetPedBoneCoords(myPed, 31086, 0, 0, 0)
            local barrel     = makeVec3(boneCoords.x, boneCoords.y, boneCoords.z)

            -- Raycast
            local ray = StartShapeTestRay(
                barrel.x,   barrel.y,   barrel.z,
                farPoint.x, farPoint.y, farPoint.z,
                511, myPed, 7
            )
            local hit, hitStatus, hitCoords, _, _ = GetShapeTestResult(ray)

            -- If no hit, use the far point
            local drawEnd = (hitStatus == 1 and hit) and hitCoords or farPoint

            -- Draw aim line
            DrawLine(
                barrel.x, barrel.y, barrel.z,
                drawEnd.x, drawEnd.y, drawEnd.z,
                255, 255, 255, 255
            )

            -- Draw crosshair sphere at hit
            DrawMarker(28,
                drawEnd.x, drawEnd.y, drawEnd.z,
                0, 0, 0,
                0, 0, 0,
                0.12, 0.12, 0.12,
                255, 255, 255, 200,
                false, true, 2, nil, nil, false
            )

            -- Check fire inputs
            local fired = IsDisabledControlPressed(0, 24) or IsControlPressed(0, 24)
            if fired then
                if hitStatus == 1 and hit and hitCoords then
                    callback(hitCoords)
                    return
                else
                    exports.striano_combat:submexError("Coordinata non rilevata!")
                    Wait(500)
                end
            end
        end
    end)
end

-- ============================================================
-- /am — arena manager fast menu
-- ============================================================

RegisterCommand("am", function()
    exports.striano_fastmenu:clearMenu()

    -- 3,2,1 Fight! countdown at aimed location
    exports.striano_fastmenu:addMenuItem("[\240\159\148\138] 3,2,1 Fight!", function()
        DrawAimRay(function(coords)
            print("3,2,1, FIGHT!  " .. tostring(coords))
            CreateThread(function()
                local sounds = {
                    { id = "Three", path = "sounds/striano_combat/misc/audio_3.mp3" },
                    { id = "Two",   path = "sounds/striano_combat/misc/audio_2.mp3" },
                    { id = "One",   path = "sounds/striano_combat/misc/audio_1.mp3" },
                    { id = "Fight", path = "sounds/striano_combat/misc/audio_4.mp3" },
                }
                for _, s in ipairs(sounds) do
                    TriggerServerEvent("striano_djset:playSoundPos", s.id, s.path, coords, 0.2, 75.0)
                    Wait(1000)
                end
            end)
        end)
    end, true)

    -- Bell at aimed location
    exports.striano_fastmenu:addMenuItem("[\240\159\148\138] Bell", function()
        DrawAimRay(function(coords)
            TriggerServerEvent("striano_djset:playSoundPos",
                "Bell", "sounds/striano_combat/misc/Bell.mp3", coords, 0.3, 75.0)
        end)
    end, true)

    -- Horn at aimed location
    exports.striano_fastmenu:addMenuItem("[\240\159\148\138] Horn", function()
        DrawAimRay(function(coords)
            TriggerServerEvent("striano_djset:playSoundPos",
                "Horn", "sounds/striano_combat/misc/Horn.mp3", coords, 0.3, 75.0)
        end)
    end, true)

    -- Arena bell broadcast
    exports.striano_fastmenu:addMenuItem("[\240\159\148\138] Arena Bell", function()
        TriggerServerEvent("campanaserver", GetPlayerServerId(PlayerId()))
    end, true)

    exports.striano_fastmenu:openMenu()
end)

-- ============================================================
-- esx:deleteVehicle — delete vehicle by radius or aimed vehicle
-- ============================================================

RegisterNetEvent("esx:deleteVehicle")
AddEventHandler("esx:deleteVehicle", function(radiusOrNil)
    local myPed    = PlayerPedId()
    local myCoords = GetEntityCoords(myPed)

    if radiusOrNil then
        -- Delete all vehicles within radius
        local radius = tonumber(radiusOrNil)
        if not radius then return end

        radius = math.min(radius + 0.01, 100.0)

        if not IsPedInAnyVehicle(myPed, true) then
            local vehicles = GetVehiclesInAreaStriano(myCoords, radius)
            for _, veh in ipairs(vehicles) do
                local attempts = 0
                while not NetworkHasControlOfEntity(veh) and attempts < 100 do
                    if not DoesEntityExist(veh) then break end
                    Wait(100)
                    NetworkRequestControlOfEntity(veh)
                    attempts = attempts + 1
                end
                if DoesEntityExist(veh) and NetworkHasControlOfEntity(veh) then
                    DeleteVehicleStriano(veh)
                end
            end
        end
    else
        -- Delete nearest/aimed vehicle
        local forward   = GetEntityForwardVector(myPed)
        local aimTarget = myCoords + forward * 1.0
        local veh       = GetVehicleInDirectionStriano(myCoords, vector3(aimTarget.x, aimTarget.y, aimTarget.z))

        -- If in vehicle, delete current vehicle
        if IsPedInAnyVehicle(myPed, true) then
            veh = GetVehiclePedIsIn(myPed, false)
        end

        if veh and DoesEntityExist(veh) then
            local attempts = 0
            while not NetworkHasControlOfEntity(veh) and attempts < 100 do
                if not DoesEntityExist(veh) then break end
                Wait(100)
                NetworkRequestControlOfEntity(veh)
                attempts = attempts + 1
            end
            if DoesEntityExist(veh) and NetworkHasControlOfEntity(veh) then
                DeleteVehicleStriano(veh)
            end
        end
    end
end)

-- ============================================================
-- esx:showNotification
-- ============================================================

RegisterNetEvent("esx:showNotification")
AddEventHandler("esx:showNotification", function(text)
    exports.striano_combat:submex(text)
end)

-- ============================================================
-- gifview / gifviewClose  EXPORTS
-- ============================================================

exports("gifview", function(_, name, text)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "gifViewer",
        name   = name,
        show   = true,
        text   = text,
    })
    Wait(9000)
    SendNUIMessage({ show = false })
end)

exports("gifviewClose", function()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "gifViewer", show = false })
end)

-- ============================================================
-- /pools — game pool debug
-- ============================================================

RegisterCommand("pools", function()
    print("^3[POOL DEBUG]^7 Objects:",  #GetGamePool("CObject"))
    print("^3[POOL DEBUG]^7 Peds:",     #GetGamePool("CPed"))
    print("^3[POOL DEBUG]^7 Vehicles:", #GetGamePool("CVehicle"))
    print("^3[POOL DEBUG]^7 Pickups:",  #GetGamePool("CPickup"))
end)

-- ============================================================
-- DEBUG OVERLAY SYSTEM
-- ============================================================

local debugEntries      = {}
local debugLoopRunning  = false

--- Draw a small text string at (x, y) on screen.
---@param text string
---@param x    number
---@param y    number
local function drawDebugText(text, x, y)
    SetTextFont(0)
    SetTextScale(0.0, 0.3)
    SetTextColour(255, 255, 255, 235)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end

--- Start the debug overlay render loop (called automatically when entries exist).
local function startDebugLoop()
    if debugLoopRunning then return end
    debugLoopRunning = true

    CreateThread(function()
        while next(debugEntries) do
            Wait(0)
            local now     = GetGameTimer()
            local sorted  = {}

            for key, data in pairs(debugEntries) do
                if data.expires ~= 0 and now >= data.expires then
                    debugEntries[key] = nil
                else
                    sorted[#sorted + 1] = key
                end
            end

            table.sort(sorted)

            for i, key in ipairs(sorted) do
                local data  = debugEntries[key]
                local label = string.format("%s: ~y~%s", key, tostring(data.value))
                local yPos  = 0.68 + (i - 1) * 0.022
                drawDebugText(label, 0.015, yPos)
            end
        end
        debugLoopRunning = false
    end)
end

--- Show a debug key-value pair on screen.
---@param key      string|number  display label (key)
---@param value    any            value to display
---@param duration number         ms to show (0 = permanent until removed)
function Debug(key, value, duration)
    key = tostring(key)

    if duration == nil then
        duration = 500
    end
    duration = tonumber(duration) or 500

    local expires
    if duration == 0 then
        expires = 0
    else
        expires = GetGameTimer() + duration
    end

    debugEntries[key] = { value = value, expires = expires }
    startDebugLoop()
end

--- Remove a debug entry by key.
---@param key string|number
function RemoveDebug(key)
    key = tostring(key)
    debugEntries[key] = nil
end

--- Clear all debug entries.
function ClearDebug()
    debugEntries = {}
end

exports("Debug",       Debug)
exports("RemoveDebug", RemoveDebug)
exports("ClearDebug",  ClearDebug)
