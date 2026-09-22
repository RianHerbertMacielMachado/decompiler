-- ============================================================
--  menupersoclient.lua  –  Personal / Character Menus (Client)
--  Refactored from decompiled bytecode
-- ============================================================

-- ─────────────────────────────────────────────────────────────
--  RAYCAST / CAMERA HELPERS
-- ─────────────────────────────────────────────────────────────
local function GetEntityInCrosshair()
    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    local fwdPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 4.0, 0.0)
    local ray    = CastRayPointToPoint(pedPos.x, pedPos.y, pedPos.z,
                                       fwdPos.x, fwdPos.y, fwdPos.z,
                                       10, ped, 0)
    local _, _, _, _, entity = GetRaycastResult(ray)
    return entity
end

local function EulerToDirection(rot)
    local rad = {
        x = rot.x * (math.pi / 180),
        y = rot.y * (math.pi / 180),
        z = rot.z * (math.pi / 180),
    }
    return {
        x = -math.sin(rad.z) * math.abs(math.cos(rad.x)),
        y =  math.cos(rad.z) * math.abs(math.cos(rad.x)),
        z =  math.sin(rad.x),
    }
end

local function GetShapeTestHitFromCamera(distance, flags)
    local rot    = GetGameplayCamRot()
    local camPos = GetGameplayCamCoord()
    local dir    = EulerToDirection(rot)
    local dest   = {
        x = camPos.x + dir.x * distance,
        y = camPos.y + dir.y * distance,
        z = camPos.z + dir.z * distance,
    }
    local handle = StartShapeTestRay(camPos.x, camPos.y, camPos.z,
                                     dest.x, dest.y, dest.z,
                                     -1, -1, 1)
    local retval, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(handle)
    return hit, endCoords, entityHit
end

-- ─────────────────────────────────────────────────────────────
--  SPAWN POINT SYSTEM  (admin shortcuts /mys, /go, /mys2, /go2, /mys3, /go3)
-- ─────────────────────────────────────────────────────────────
local spawnPoint1 = nil   -- /mys  → /go
local spawnPoint2 = nil   -- /mys2 → /go2
local spawnPoint3 = nil   -- /mys3 → /go3

RegisterCommand("clearmys", function()
    spawnPoint1 = nil
    spawnPoint2 = nil
    spawnPoint3 = nil
    exports.striano_combat:submexError("Punti spawn resettati con successo.")
end)

RegisterCommand("mys", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    spawnPoint1 = GetEntityCoords(PlayerPedId())
    PlaySoundFrontend(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
    exports.striano_combat:submexError("Punto di spawn selezionato, usa ~/go~h~ per tornare qui.")
end)

RegisterCommand("go", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    if spawnPoint1 then
        SetEntityCoords(PlayerPedId(), vector3(spawnPoint1.x, spawnPoint1.y, spawnPoint1.z - 1.0))
        ExecuteCommand("gg")
    else
        exports.striano_combat:submexError("Non hai ancora selezionato un punto di spawn con ~/mys~h~.")
    end
end)

RegisterCommand("mys2", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    spawnPoint2 = GetEntityCoords(PlayerPedId())
    PlaySoundFrontend(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
    exports.striano_combat:submexError("Punto di spawn selezionato, usa ~/go2~h~ per tornare qui.")
end)

RegisterCommand("go2", function()
    if spawnPoint2 then
        SetEntityCoords(PlayerPedId(), vector3(spawnPoint2.x, spawnPoint2.y, spawnPoint2.z - 1.0))
        ExecuteCommand("gg")
    else
        exports.striano_combat:submexError("Non hai ancora selezionato un punto di spawn (2) con ~/mys2~h~.")
    end
end)

RegisterCommand("mys3", function()
    spawnPoint3 = GetEntityCoords(PlayerPedId())
    PlaySoundFrontend(-1, "5_Second_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0)
    exports.striano_combat:submexError("Punto di spawn selezionato, usa ~/go3~h~ per tornare qui.")
end)

RegisterCommand("go3", function()
    if spawnPoint3 then
        SetEntityCoords(PlayerPedId(), vector3(spawnPoint3.x, spawnPoint3.y, spawnPoint3.z - 1.0))
        ExecuteCommand("gg")
    else
        exports.striano_combat:submexError("Non hai ancora selezionato un punto di spawn (3) con ~/mys3~h~.")
    end
end)

-- /gg  – admin reset: revive + heal + reset dirt/wounds/armour
RegisterCommand("gg", function()
    local serverID = GetPlayerServerId(PlayerId())
    ExecuteCommand("revive")
    ExecuteCommand("heal")
    ExecuteCommand("rr")
    ExecuteCommand("resetsporco "  .. serverID)
    ExecuteCommand("resetferite "  .. serverID)
    ExecuteCommand("armour "       .. serverID)
end)

-- ─────────────────────────────────────────────────────────────
--  SECONDARY OUTFIT  (/sec = wear secondary,  /secno = remove)
-- ─────────────────────────────────────────────────────────────
SkinPrimaSecondario = nil   -- stores the saved primary skin while secondary is active

RegisterCommand("secno", function()
    if SkinPrimaSecondario == nil then
        exports.striano_combat:submexError("Non hai indossato ancora un outfit secondario.")
        return
    end
    -- Check if secondary jacket is set
    TriggerServerCallback("sp_menuperso:getGiacca", function(giacca)
        if giacca ~= nil and giacca then
            if SkinPrimaSecondario ~= nil then
                exports.striano_core:resetdpcloth()
                Wait(0)
                ExecuteCommand("e togligiub")
                Wait(1000)
                TriggerEvent("skinchanger:getSkin", function(currentSkin)
                    TriggerEvent("skinchanger:loadClothes", currentSkin, SkinPrimaSecondario)
                end)
                SkinPrimaSecondario = nil
            else
                exports.striano_combat:submexError("Non hai ancora indossato un outfit secondario.")
            end
        else
            exports.striano_combat:submexError("Non hai ancora impostato un ~q~outfit secondario ~w~da un armadio.")
            ExecuteCommand("e think5")
        end
    end)
end)

RegisterCommand("sec", function()
    if SkinPrimaSecondario == nil then
        TriggerServerCallback("sp_menuperso:getGiacca", function(giacca)
            if giacca ~= nil and giacca then
                -- Get current skin as primary backup
                TriggerServerCallback("esx_skin:getPlayerSkin", function(skin)
                    if skin ~= nil then
                        exports.striano_core:resetdpcloth()
                        TriggerEvent("skinchanger:loadSkin", skin)
                        SkinPrimaSecondario = skin
                    else
                        exports.striano_combat:submexError("Errore nel caricamento skin causato da connessione o database. (Outfit Secondario)")
                    end
                end)
                Wait(0)
                ExecuteCommand("e indossa2")
                Wait(1000)
                local secondaryClothes = json.decode(giacca)
                TriggerEvent("skinchanger:getSkin", function(currentSkin)
                    TriggerEvent("skinchanger:loadClothes", currentSkin, secondaryClothes)
                end)
            else
                exports.striano_combat:submex("Non hai ancora impostato un outfit secondario da un armadio.")
                ExecuteCommand("e think5")
            end
        end)
    else
        exports.striano_combat:submex("Stai già indossando outfit secondario.")
    end
end)

-- ─────────────────────────────────────────────────────────────
--  MISC COMMANDS
-- ─────────────────────────────────────────────────────────────
local sicurodecal = false

-- /qdeldecal  – safe-delete decals (requires confirmation)
RegisterCommand("qdeldecal", function()
    if sicurodecal then
        ExecuteCommand("deldecal")
    else
        sicurodecal = true
        exports.striano_combat:submex("DELETE DECALS PENDING. RE-DO TO APPLY")
        Wait(7000)
        sicurodecal = false
    end
end)

-- /vita / /health  – show current health
RegisterCommand("vita", function()
    exports.striano_combat:submexInfo("HEAL PLAYER: " .. GetEntityHealth(PlayerPedId()))
end)
RegisterCommand("health", function() ExecuteCommand("vita") end)

-- ─────────────────────────────────────────────────────────────
--  PLAYER MANAGEMENT EVENTS (cuff/warp)
-- ─────────────────────────────────────────────────────────────

-- Animations that indicate the target is captive / incapacitated
local captiveAnims = {
    {"anim@move_m@prisoner_cuffed_fp", "aim_low_loop"},
    {"combat@damage@rb_writhe",        "rb_writhe_loop"},
    {"anim@arrest_crooks",             "arrest_crooks_clip"},
    {"misstrevor2ig_5c",               "plead_loop"},
    {"missminuteman_1ig_2",            "handsup_base"},
}

local function IsTargetCaptive(targetPed)
    if IsPedRagdoll(targetPed) then return true end
    for _, anim in ipairs(captiveAnims) do
        if IsEntityPlayingAnim(targetPed, anim[1], anim[2], 3) then return true end
    end
    return false
end

RegisterNetEvent("menuperso:faisalire")
AddEventHandler("menuperso:faisalire", function()
    local nearestPlayerId, dist = PlayerVicino()
    if nearestPlayerId == -1 or dist > 3.0 then
        exports.striano_combat:submexError("Nessuno nelle vicinanze.")
        return
    end
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        exports.striano_combat:submexError("Devi essere fuori dal veicolo.")
        return
    end
    local targetPed = GetPlayerPed(nearestPlayerId)
    if IsTargetCaptive(targetPed) then
        TriggerServerEvent("menuperso:putInVehicle", GetPlayerServerId(nearestPlayerId))
        ExecuteCommand("e prendi2")
    else
        exports.striano_combat:submexError("Persona non ammanettata, ferita, svenuta o spaventata.")
    end
end)

RegisterNetEvent("menuperso:putInVehicle")
AddEventHandler("menuperso:putInVehicle", function()
    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    if not IsAnyVehicleNearPoint(pedPos, 5.0) then return end

    local veh = GetClosestVehicle(pedPos, 5.0, 0, 71)
    if not DoesEntityExist(veh) then return end

    -- Find a free seat from the highest passenger seat down
    local maxSeats = GetVehicleMaxNumberOfPassengers(veh)
    local freeSeat = nil
    for seat = maxSeats - 1, 0, -1 do
        if IsVehicleSeatFree(veh, seat) then
            freeSeat = seat
            break
        end
    end
    if freeSeat then
        TaskWarpPedIntoVehicle(ped, veh, freeSeat)
    end
end)

RegisterNetEvent("menuperso:OutVehicle")
AddEventHandler("menuperso:OutVehicle", function()
    local ped = PlayerPedId()
    if not IsPedSittingInAnyVehicle(ped) then return end
    TaskLeaveVehicle(ped, GetVehiclePedIsIn(ped, false), 16)
end)

RegisterNetEvent("menuperso:faiscendere")
AddEventHandler("menuperso:faiscendere", function()
    local nearestPlayerId, dist = PlayerVicino()
    if nearestPlayerId == -1 or dist > 3.0 then
        exports.striano_combat:submexError("Nessuno nelle vicinanze.")
        return
    end
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        exports.striano_combat:submexError("Devi essere fuori dal veicolo.")
        return
    end
    local targetPed = GetPlayerPed(nearestPlayerId)
    local veh       = GetVehiclePedIsIn(targetPed, false)
    -- Only eject if target is not the driver
    if GetPedInVehicleSeat(veh, -1) ~= targetPed then
        TriggerServerEvent("menuperso:OutVehicle", GetPlayerServerId(nearestPlayerId))
        ExecuteCommand("e prendi2")
    end
end)

-- ─────────────────────────────────────────────────────────────
--  SYSTEM MENU  (/sistema / /mod)
-- ─────────────────────────────────────────────────────────────
function MenuSistema()
    local items = {
        {"Character List",    function() ExecuteCommand("pg")            end},
        {"Fix Vocal Chat",    function() ExecuteCommand("fxm")           end},
        {"Clear Chat",        function() ExecuteCommand("clear")         end},
        {"Voice Icon",        function() ExecuteCommand("novoice")       end},
        {"Film",              function() ExecuteCommand("film")          end},
        {"Freecam",           function() ExecuteCommand("freecam")       end},
        {"Rockstar Editor",   function() ExecuteCommand("rockstareditor") end},
        {"Get String Skin",   function() ExecuteCommand("getskin")       end},
        {"Set String Skin",   function() ExecuteCommand("setskin")       end},
        {"Get String Tattoo", function() ExecuteCommand("gettattoo")     end},
        {"Set String Tattoo", function() ExecuteCommand("settattoo")     end},
    }
    exports.striano_fastmenu:clearMenu()
    for _, item in ipairs(items) do
        exports.striano_fastmenu:addMenuItem(item[1], item[2], true)
    end
end

RegisterCommand("sistema", function() MenuSistema() end)
RegisterCommand("mod",     function() MenuSistema() end)

-- ─────────────────────────────────────────────────────────────
--  PLAYER MANAGEMENT MENU  (/vicinanze / /vicino / /near)
-- ─────────────────────────────────────────────────────────────
function MenuGestioneGiocatore()
    local items = {
        {"Check Hurts",      function() ExecuteCommand("analizza")  end},
        {"Check Weapons",    function() ExecuteCommand("armi")      end},
        {"Cut Cuff Rope",    function() ExecuteCommand("slega")     end},
        {"Help Revive",      function() ExecuteCommand("aiuta")     end},
        {"Take on Shoulder", function() ExecuteCommand("inbraccio") end},
        {"Drag",             function() ExecuteCommand("trascina")  end},
        {"Check Inventory",  function() ExecuteCommand("fruga")     end},
        {"Take Hostage",     function() ExecuteCommand("th")        end},
    }
    exports.striano_fastmenu:clearMenu()
    for _, item in ipairs(items) do
        exports.striano_fastmenu:addMenuItem(item[1], item[2], true)
    end
end

RegisterCommand("vicinanze", function()
    if exports.striano_core:gettutorial() then
        MenuGestioneGiocatore()
    else
        ExecuteCommand("e no4")
    end
end)
RegisterCommand("vicino", function()
    if exports.striano_core:gettutorial() then
        MenuGestioneGiocatore()
    else
        ExecuteCommand("e no4")
    end
end)
RegisterCommand("near", function()
    if exports.striano_core:gettutorial() then
        MenuGestioneGiocatore()
    else
        ExecuteCommand("e no4")
    end
end)

-- ─────────────────────────────────────────────────────────────
--  SELECT PLAYER (crosshair raycast player selector)
-- ─────────────────────────────────────────────────────────────
inSelezionaPL   = false
local selectedPlayerServerId = nil  -- last selected player server ID (replaces L6_1)

function SelezionaIlGiocatore()
    if inSelezionaPL then return end
    CreateThread(function()
        selectedPlayerServerId = nil
        local ped = PlayerPedId()
        while true do
            Wait(0)
            if not inSelezionaPL then return end

            if IsControlJustPressed(0, 177) then return end  -- ESC = cancel

            local pedPos               = GetEntityCoords(ped)
            local hit, hitPos, hitEnt  = GetShapeTestHitFromCamera(30.0, 4)

            if hitEnt and hitPos
               and hitPos.x ~= 0 and hitPos.y ~= 0 and hitPos.z ~= 0
               and IsPedAPlayer(hitEnt) then
                DrawLine(pedPos.x, pedPos.y, pedPos.z + 0.7,
                         hitPos.x, hitPos.y, hitPos.z,
                         255, 0, 110, 255)
                DrawText3D(pedPos.x, pedPos.y, pedPos.z + 0.7, "~b~B ~w~Select")
            end

            if IsControljustPressed(0, 29) and hitEnt then  -- B button = select
                inSelezionaPL = false
                local ownerPlayerId = NetworkGetEntityOwner(hitEnt)
                selectedPlayerServerId = GetPlayerServerId(
                    GetPlayerPed(GetPlayerFromServerId(ownerPlayerId))
                )
                print("Player Selected: " .. selectedPlayerServerId)
                MenuGestioneGiocatore()
                Wait(1000)
            end
        end
    end)
end

-- ─────────────────────────────────────────────────────────────
--  ROCKSTAR EDITOR MENU  (/rockstareditor)
-- ─────────────────────────────────────────────────────────────
function MenuRockstarEditor()
    exports.striano_fastmenu:clearMenu()
    exports.striano_fastmenu:addMenuItem("Register",    function() TriggerEvent("nad_rockstar:record")  end, true)
    exports.striano_fastmenu:addMenuItem("Delete Clip", function() TriggerEvent("nad_rockstar:delclip") end, true)
    exports.striano_fastmenu:addMenuItem("Save Clip",   function() TriggerEvent("nad_rockstar:saveclip") end, true)
    exports.striano_fastmenu:addMenuItem("Open",        function()
        exports.striano_combat:submexInfo("Advice: Open the Rockstar Editor from the main page of FiveM.")
    end, true)
end

RegisterCommand("rockstareditor", function() MenuRockstarEditor() end)

RegisterNetEvent("nad_rockstar:record")
AddEventHandler("nad_rockstar:record", function() StartRecording(1) end)

RegisterNetEvent("nad_rockstar:saveclip")
AddEventHandler("nad_rockstar:saveclip", function()
    StartRecording(0)
    StopRecordingAndSaveClip()
end)

RegisterNetEvent("nad_rockstar:delclip")
AddEventHandler("nad_rockstar:delclip", function()
    StopRecordingAndDiscardClip()
end)

RegisterNetEvent("nad_rockstar:editor")
AddEventHandler("nad_rockstar:editor", function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
end)

-- ─────────────────────────────────────────────────────────────
--  CLOTHING SYSTEM
-- ─────────────────────────────────────────────────────────────

-- Default clothing IDs per gender
local defaultClothing = {
    male   = {shirt=15, pants=61, shoes=34, jewelry=-1, glasses=0, watch=-1, vest=0, mask=0, hat=11, bag=0, gloves=0},
    female = {shirt=15, pants=15, shoes=35, jewelry=-1, glasses=5,  watch=-1, vest=0, mask=0, hat=57, bag=0, gloves=0},
}

-- Saved drawable / texture / arm indices (for toggle-off)
local savedDrawable = {}
local savedTexture  = {}
local savedArm      = {}

-- Throttle flag
local isChangingCloth = true

-- Saved hat/glasses/mask for temp remove/restore
local removedPropDrawable = {}
local removedPropTexture  = {}

function GetPedGender(ped)
    local maleHash   = GetHashKey("mp_m_freemode_01")
    local femaleHash = GetHashKey("mp_f_freemode_01")
    local model      = GetEntityModel(ped)
    if model == maleHash   then return "male"   end
    if model == femaleHash then return "female" end
end

-- Clothing anim dict/clip/flag map
local clothingAnims = {
    shirt   = {"missmic4",                     "michael_tux_fidget",      51},
    pants   = {"re@construction",              "out_of_breath",           51},
    shoes   = {"random@domestic",              "pickup_low",               0},
    jewelry = {"clothingtie",                  "try_tie_positive_a",      51},
    glasses = {"clothingspecs",                "take_off",                51},
    watch   = {"nmt_3_rcm-10",                 "cs_nigel_dual-10",        51},
    vest    = {"clothingtie",                  "try_tie_negative_a",      51},
    mask    = {"misscommon@van_put_on_masks",   "put_on_mask_ps",          51},
    ear     = {"mp_cp_stolen_tut",             "b_think",                 51},
    hat     = {"mp_masks@standard_car@ds@",    "put_on_mask",             51},
    bag     = {"anim@heists@ornate_bank@grab_cash", "intro",              51},
    gloves  = {"nmt_3_rcm-10",                 "cs_nigel_dual-10",        51},
}

function PlayAnim(clothType)
    local ped   = PlayerPedId()
    local aData = clothingAnims[clothType]
    if not aData then return end
    local dict, clip, flag = aData[1], aData[2], aData[3]
    if not HasAnimDictLoaded(dict) then
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do Wait(10) end
    end
    TaskPlayAnim(ped, dict, clip, 3.0, 3.0, 750, flag, 0, false, false, false)
    Wait(500)
end

-- Set ped component with skinchanger event (both _1 and _2 variants)
function ApplicaSkinChangerProp(ped, componentId, drawable, texture)
    local componentMap = {
        [0]  = {"helmet_1",  "helmet_2"},
        [1]  = {"mask_1",    "mask_2"},
        [3]  = {"arms",      "arms_2"},
        [4]  = {"pants_1",   "pants_2"},
        [5]  = {"bags_1",    "bags_2"},
        [6]  = {"shoes_1",   "shoes_2"},
        [7]  = {"chain_1",   "chain_2"},
        [8]  = {"tshirt_1",  "tshirt_2"},
        [9]  = {"bproof_1",  "bproof_2"},
        [10] = {"decals_1",  "decals_2"},
        [11] = {"torso_1",   "torso_2"},
    }
    local names = componentMap[componentId]
    if names then
        TriggerEvent("skinchanger:change", names[1], drawable)
        if names[2] == "chain_2" then
            TriggerEvent("skinchanger:change", "bracelets_1", drawable)
        end
        TriggerEvent("skinchanger:change", names[2], texture)
        if names[2] == "chain_2" then
            TriggerEvent("skinchanger:change", "bracelets_2", texture)
        end
    end
end

function SetPedComponentVariationLegacy(ped, componentId, drawable, texture, palette)
    if IsPedComponentVariationValid(ped, componentId, drawable, texture) then
        SetPedComponentVariation(ped, componentId, drawable, texture, palette)
        ApplicaSkinChangerProp(ped, componentId, drawable, texture)
    end
end

-- Apply glasses default for gender
local function ApplyDefaultGlasses(ped)
    if savedDrawable.glasses == nil then return end
    local gender = GetPedGender(ped)
    local def    = defaultClothing[gender]
    if def then SetPedPropIndex(ped, 1, def.glasses, 0, false) end
end

-- Toggle clothing slot: first call saves current and replaces with default; second call restores
function GestisciIndumento(clothType)
    if not isChangingCloth then return end
    local ped    = PlayerPedId()
    local gender = GetPedGender(ped)
    local def    = defaultClothing[gender] or {}
    isChangingCloth = false

    if savedDrawable[clothType] == nil then
        -- SAVE current, set default
        if clothType == "shirt" then
            savedDrawable.shirt     = GetPedDrawableVariation(ped, 11)
            savedTexture.shirt      = GetPedTextureVariation(ped, 11)
            savedArm.shirt          = GetPedDrawableVariation(ped, 3)
            savedDrawable.shirt2    = GetPedDrawableVariation(ped, 8)
            savedTexture.shirt2     = GetPedTextureVariation(ped, 8)
            savedDrawable.decals_1  = GetPedDrawableVariation(ped, 10)
            savedTexture.decals_2   = GetPedTextureVariation(ped, 10)
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 10, 0, 0, 2)
            SetPedComponentVariationLegacy(ped, 11, def.shirt or 15, 0, 2)
            SetPedComponentVariationLegacy(ped, 8,  15, 0, 2)
            SetPedComponentVariationLegacy(ped, 3,  15, 0, 2)

        elseif clothType == "secondariosi" then
            ExecuteCommand("sec")
        elseif clothType == "secondariono" then
            ExecuteCommand("secno")
        elseif clothType == "capellifix" then
            ExecuteCommand("capellifix")
        elseif clothType == "casco" then
            ExecuteCommand("casco")

        elseif clothType == "pants" then
            savedDrawable.pants = GetPedDrawableVariation(ped, 4)
            savedTexture.pants  = GetPedTextureVariation(ped, 4)
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 4, def.pants or 15, 0, 2)

        elseif clothType == "shoes" then
            savedDrawable.shoes = GetPedDrawableVariation(ped, 6)
            savedTexture.shoes  = GetPedTextureVariation(ped, 6)
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 6, def.shoes or 34, 0, 2)

        elseif clothType == "jewelry" then
            savedDrawable.jewelry = GetPedDrawableVariation(ped, 7)
            savedTexture.jewelry  = GetPedTextureVariation(ped, 7)
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 7, def.jewelry or -1, 0, 2)

        elseif clothType == "glasses" then
            PlayAnim(clothType)
            savedDrawable.glasses = GetPedPropIndex(ped, 1)
            savedTexture.glasses  = GetPedPropTextureIndex(ped, 1)
            SetPedPropIndex(ped, 1, def.glasses or 0, 0, false)

        elseif clothType == "vest" then
            ExecuteCommand("braccia")

        elseif clothType == "mask" then
            exports.striano_core:resetLastCapelli()
            savedDrawable.mask = GetPedDrawableVariation(ped, 1)
            savedTexture.mask  = GetPedTextureVariation(ped, 1)
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 1, def.mask or 0, 0, 2)

        elseif clothType == "ear" then
            savedDrawable.ear = GetPedPropIndex(ped, 2)
            savedTexture.ear  = GetPedPropTextureIndex(ped, 2)
            PlayAnim(clothType)
            ClearPedProp(ped, 2)

        elseif clothType == "hat" then
            if GetPedPropIndex(ped, 0) > -1 then
                exports.striano_core:resetLastCapelli()
                savedDrawable.hat = GetPedPropIndex(ped, 0)
                savedTexture.hat  = GetPedPropTextureIndex(ped, 0)
                PlayAnim(clothType)
                SetPedPropIndex(ped, 0, def.hat or 11, 0, false)
                exports.striano_core:eliminatorcialuce()
            else
                ExecuteCommand("e no2")
            end

        elseif clothType == "gloves" then
            if GetPedDrawableVariation(ped, 3) > 15 then
                savedDrawable.gloves = GetPedDrawableVariation(ped, 3)
                savedTexture.gloves  = GetPedTextureVariation(ped, 3)
                PlayAnim(clothType)
                SetPedComponentVariationLegacy(ped, 3, def.gloves or 0, 0, 2)
            end
        end

        ApplyDefaultGlasses(ped)

    else
        -- RESTORE saved values
        if clothType == "shirt" then
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 11, savedDrawable.shirt,  savedTexture.shirt,  2)
            SetPedComponentVariationLegacy(ped, 3,  savedArm.shirt,       0,                   2)
            SetPedComponentVariationLegacy(ped, 8,  savedDrawable.shirt2, savedTexture.shirt2, 2)
            SetPedComponentVariationLegacy(ped, 10, savedDrawable.decals_1, savedTexture.decals_2, 2)
            savedDrawable.shirt2   = nil; savedTexture.shirt2   = nil
            savedDrawable.decals_1 = nil; savedTexture.decals_2 = nil
            savedArm.shirt         = nil
            savedDrawable.shirt    = nil; savedTexture.shirt    = nil

        elseif clothType == "pants" then
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 4, savedDrawable.pants, savedTexture.pants, 2)
            savedDrawable.pants = nil; savedTexture.pants = nil

        elseif clothType == "shoes" then
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 6, savedDrawable.shoes, savedTexture.shoes, 2)
            savedDrawable.shoes = nil; savedTexture.shoes = nil

        elseif clothType == "jewelry" then
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 7, savedDrawable.jewelry, savedTexture.jewelry, 2)
            savedDrawable.jewelry = nil; savedTexture.jewelry = nil

        elseif clothType == "glasses" then
            PlayAnim(clothType)
            SetPedPropIndex(ped, 1, savedDrawable.glasses, savedTexture.glasses, false)
            savedDrawable.glasses = nil; savedTexture.glasses = nil

        elseif clothType == "vest" then
            ExecuteCommand("braccia")

        elseif clothType == "mask" then
            exports.striano_core:resetLastCapelli()
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 1, savedDrawable.mask, savedTexture.mask, 2)
            savedDrawable.mask = nil; savedTexture.mask = nil

        elseif clothType == "ear" then
            PlayAnim(clothType)
            SetPedPropIndex(ped, 2, savedDrawable.ear, savedTexture.ear, false)
            savedDrawable.ear = nil; savedTexture.ear = nil

        elseif clothType == "hat" then
            if savedDrawable.hat then
                exports.striano_core:resetLastCapelli()
                PlayAnim(clothType)
                SetPedPropIndex(ped, 0, savedDrawable.hat, savedTexture.hat, false)
                savedDrawable.hat = nil; savedTexture.hat = nil
                exports.striano_core:eliminatorcialuce()
            else
                ExecuteCommand("e shrug3")
            end

        elseif clothType == "gloves" then
            PlayAnim(clothType)
            SetPedComponentVariationLegacy(ped, 3, savedDrawable.gloves, savedTexture.gloves, 2)
            savedDrawable.gloves = nil; savedTexture.gloves = nil
        end

        ApplyDefaultGlasses(ped)
    end

    Wait(550)
    isChangingCloth = true
end

-- ─────────────────────────────────────────────────────────────
--  TEMP REMOVE / RESTORE  –  EXPORTS
-- ─────────────────────────────────────────────────────────────
exports("toglicappello", function(ped)
    removedPropDrawable.hat = GetPedPropIndex(ped, 0)
    removedPropTexture.hat  = GetPedPropTextureIndex(ped, 0)
    local g = GetPedGender(ped)
    local d = defaultClothing[g] or {}
    SetPedPropIndex(ped, 0, d.hat or 11, 0, false)
end)

exports("togliocchiali", function(ped)
    removedPropDrawable.glass = GetPedPropIndex(ped, 1)
    removedPropTexture.glass  = GetPedPropTextureIndex(ped, 1)
    local g = GetPedGender(ped)
    local d = defaultClothing[g] or {}
    SetPedPropIndex(ped, 1, d.glasses or 0, 0, false)
end)

exports("toglimaschera", function(ped)
    removedPropDrawable.mask = GetPedDrawableVariation(ped, 1)
    removedPropTexture.mask  = GetPedTextureVariation(ped, 1)
    local g = GetPedGender(ped)
    local d = defaultClothing[g] or {}
    SetPedComponentVariationLegacy(ped, 1, d.mask or 0, 0, 2)
end)

exports("rimetticappello", function(ped)
    SetPedPropIndex(ped, 0, removedPropDrawable.hat, removedPropTexture.hat, false)
    removedPropDrawable.hat = nil; removedPropTexture.hat = nil
end)

exports("rimettiocchiali", function(ped)
    SetPedPropIndex(ped, 1, removedPropDrawable.glass, removedPropTexture.glass, false)
    removedPropDrawable.glass = nil; removedPropTexture.glass = nil
end)

exports("rimettimaschera", function(ped)
    SetPedComponentVariationLegacy(ped, 1, removedPropDrawable.mask, removedPropTexture.mask, 2)
    removedPropDrawable.mask = nil; removedPropTexture.mask = nil
end)

exports("resetdpcloth", function()
    SendNUIMessage({action = "hide"})
    SetNuiFocus(false, false)
    opened = false
    savedDrawable = {}
    savedTexture  = {}
    savedArm      = {}
end)

-- ─────────────────────────────────────────────────────────────
--  CLOTHING MENU  (/vestiti / /cloth / /clothes / /i / /indumenti)
-- ─────────────────────────────────────────────────────────────
function MenuIndumenti()
    SetFollowPedCamViewMode(4)
    SetFollowPedCamViewMode(2)
    SetCamViewModeForContext(GetCamActiveViewModeContext(), 2)
    DisableControlAction(0, 0, true)
    DisableFirstPersonCamThisFrame()

    local items = {
        {"MASK",           function() ExecuteCommand("mask")         end},
        {"TORSO",          function() ExecuteCommand("torso")        end},
        {"PANTS",          function() ExecuteCommand("pant")         end},
        {"SHOES",          function() ExecuteCommand("scarpe")       end},
        {"GLASSES",        function() ExecuteCommand("glasses")      end},
        {"GLOVES",         function() ExecuteCommand("guanti")       end},
        {"EAR",            function() ExecuteCommand("ear")          end},
        {"ARMS",           function()
            exports.striano_fastmenu:close()
            ExecuteCommand("braccia")
        end},
        {"HELMET",         function() ExecuteCommand("casco")        end},
        {"CHAIN",          function() ExecuteCommand("coll")         end},
        {"CAP",            function() ExecuteCommand("hat")          end},
        {"FIX HAIRS",      function() ExecuteCommand("capellifix")   end},
        {"WEAR SECONDRY",  function() ExecuteCommand("secondariosi") end},
        {"REMOVE SECONDRY",function() ExecuteCommand("secondariono") end},
        {"PARACHUTE",      function() ExecuteCommand("menupara")     end},
    }

    exports.striano_fastmenu:clearMenu()
    for _, item in ipairs(items) do
        exports.striano_fastmenu:addMenuItem(item[1], item[2], false)
    end
    exports.striano_fastmenu:openMenu()
end

RegisterCommand("vestiti",   function() MenuIndumenti() end)
RegisterCommand("cloth",     function() MenuIndumenti() end)
RegisterCommand("clothes",   function() MenuIndumenti() end)
RegisterCommand("i",         function() MenuIndumenti() end)
RegisterCommand("indumenti", function() MenuIndumenti() end)
RegisterKeyMapping("indumenti", "Clothes Menu", "keyboard", "i")

-- Individual clothing toggle commands
RegisterCommand("mask",    function() GestisciIndumento("mask")    end)
RegisterCommand("torso",   function() GestisciIndumento("shirt")   end)
RegisterCommand("pants",   function() GestisciIndumento("pants")   end)
RegisterCommand("pant",    function() GestisciIndumento("pants")   end)
RegisterCommand("scarpe",  function() GestisciIndumento("shoes")   end)
RegisterCommand("glass",   function() GestisciIndumento("glasses") end)
RegisterCommand("glasses", function() GestisciIndumento("glasses") end)
RegisterCommand("guanti",  function() GestisciIndumento("gloves")  end)
RegisterCommand("ear",     function() GestisciIndumento("ear")     end)
RegisterCommand("coll",    function() GestisciIndumento("jewelry") end)
RegisterCommand("hat",     function() GestisciIndumento("hat")     end)
