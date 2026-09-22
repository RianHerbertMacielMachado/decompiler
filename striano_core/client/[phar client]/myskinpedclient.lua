-- myskinpedclient.lua
-- Player ped/skin management: model switching, skin loading, component editor,
-- tattoo management, setskin/settattoo admin commands.

-- ---------------------------------------------------------------------------
-- MODULE STATE
-- ---------------------------------------------------------------------------

Player = {}
Player.SkinModel = nil

-- Saved component variations for the current ped (populated by LoadComponents)
local savedComponents = {}

-- Whether /setskin and /settattoo are enabled for this player
AbilitatoSetSkin = false

-- Current tattoo list (set by /settattoo)
currentTattoos = nil

-- ---------------------------------------------------------------------------
-- Player.GetModel
-- Returns a table of { [slotId] = {drawable, texture} } for slots 0-11
-- ---------------------------------------------------------------------------
function Player.GetModel()
    local ped = PlayerPedId()
    local components = {}
    for slot = 0, 11 do
        local drawable = GetPedDrawableVariation(ped, slot)
        local texture = GetPedTextureVariation(ped, slot)
        if drawable ~= nil then
            components[slot] = { drawable, (texture > 0) and texture or 0 }
        end
    end
    return components
end

-- ---------------------------------------------------------------------------
-- SetPlayerPed (internal, also wired to net event)
-- Switches the local player to the given ped model name.
-- Waits for power saving mode, pause menu, session start, and ped validity.
-- On success: applies model, loads skin, fires appropriate weapon/holster hooks.
-- On failure: triggers "tornaUmano" server event.
-- ---------------------------------------------------------------------------
local function SetPlayerPed(modelName)
    -- Wait until not in power saving mode
    while IsInPowerSavingMode() do
        exports.striano_core:draw(-1, "Loading focus...")
        Wait(0)
    end
    -- Wait until pause menu is closed
    while IsPauseMenuActive() do
        exports.striano_core:draw(-1, "Waiting pause menu...")
        Wait(0)
    end
    -- Wait until network session is started
    while not NetworkIsSessionStarted() do
        exports.striano_core:draw(-1, "Loading session...")
        Wait(0)
    end
    -- Wait until local ped is valid
    while PlayerPedId() == nil do
        Wait(0)
    end

    local spawnCoords = GetEntityCoords(PlayerPedId())
    local modelHash = GetHashKey(modelName)

    -- Request model
    RequestModelStriano(modelHash)
    local attempts = 0
    local maxAttempts = 350
    while not HasModelLoaded(modelHash) and attempts < maxAttempts do
        attempts = attempts + 1
        RequestModelStriano(modelHash)
        exports.striano_core:draw(-1, "Caricamento skin (modello: " .. modelName .. ") [tentativi: " .. attempts .. "]...")
        Wait(0)
    end

    if attempts < maxAttempts then
        -- Wait for model collision
        while not HasCollisionForModelLoaded(modelHash) do
            exports.striano_core:draw(-1, "Loading model collisions...")
            Wait(0)
        end
        -- Wait for world collision around the ped
        while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
            exports.striano_core:draw(-1, "Loading collisions...")
            RequestCollisionAtCoord(spawnCoords.x, spawnCoords.y, spawnCoords.z)
            SetFocusPosAndVel(spawnCoords.x, spawnCoords.y, spawnCoords.z, 0.0, 0.0, 0.0)
            Wait(0)
        end

        FreezeEntityPosition(PlayerPedId(), true)

        -- Apply model only if different from current
        if GetEntityModel(PlayerPedId()) ~= modelHash then
            SetPlayerModel(PlayerId(), modelHash)
            SetPedDropsWeaponsWhenDead(PlayerPedId(), false)

            -- Trigger vSync if tutorial is done
            if exports.striano_core:gettutorial() then
                TriggerServerEvent("vSync:requestSync")
            end

            -- Reset component variation
            ReleasePedPreloadVariationData(PlayerPedId())
            SetPedPreloadVariationData(PlayerPedId(), 0, 0, 0)
            if IsPedComponentVariationValid(PlayerPedId(), 0, 0, 0) then
                SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 0)
            end
            SetPedDefaultComponentVariation(PlayerPedId())
            SetModelAsNoLongerNeeded(modelHash)
            ClearFocus()
            FreezeEntityPosition(PlayerPedId(), false)
            RenderScriptCams(false, false, 0, true, false)

            -- Post-model hooks
            if IsPedHuman(PlayerPedId()) then
                exports.striano_combat:fodera2()
                exports.striano_combat:delallarmi()
                exports.striano_inventory:aggiornaHolders()
                exports.striano_combat:fodera()
            else
                exports.striano_combat:checkarmi()
            end
        end

        -- Wait additional collision around ped after model change
        FreezeEntityPosition(PlayerPedId(), true)
        local deadline = GetGameTimer() + 3000
        while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
            if GetGameTimer() >= deadline then break end
            RequestCollisionAtCoord(spawnCoords.x, spawnCoords.y, spawnCoords.z)
            RequestAdditionalCollisionAtCoord(spawnCoords.x, spawnCoords.y, spawnCoords.z)
            Wait(0)
        end
        FreezeEntityPosition(PlayerPedId(), false)

        -- Load skin and post-spawn setup
        if IsPedHuman(PlayerPedId()) then
            TriggerEvent("legacy:loadskin")
            LoadComponents()
            CheckClothError()
            exports.striano_combat:eliminaArmi()
            ExecuteCommand("foderaarmi")
        else
            exports.striano_combat:checkarmi()
            exports.striano_combat:eliminaArmi()
            ExecuteCommand("startvolo")
        end

        -- Async: update sex variable and reload skin
        CreateThread(function()
            if modelName == "mp_m_freemode_01" then
                TriggerServerEvent("esx_Pharmacy:setVarDB", "sex", "M")
                CreateThread(function()
                    TriggerEvent("skinchanger:change", "sex", 1)
                    Wait(100)
                    TriggerEvent("skinchanger:change", "sex", 0)
                end)
                exports.striano_core:updateSex("M")
            elseif modelName == "mp_f_freemode_01" then
                TriggerServerEvent("esx_Pharmacy:setVarDB", "sex", "F")
                CreateThread(function()
                    TriggerEvent("skinchanger:change", "sex", 0)
                    Wait(100)
                    TriggerEvent("skinchanger:change", "sex", 1)
                end)
                exports.striano_core:updateSex("F")
            end

            SetEntityVisible(PlayerPedId(), true)
            TriggerEvent("CaricamiCamminata")
            Wait(25)
            TriggerEvent("legacy:loadskin")
        end)

        -- Correct position if ped drifted far from spawn
        local currentPos = GetEntityCoords(PlayerPedId())
        local drift = #(currentPos - vector(0, 0, 0))
        if drift < 50.0 then
            FreezeEntityPosition(PlayerPedId(), true)
            SetEntityCoordsNoOffset(PlayerPedId(), spawnCoords.x, spawnCoords.y, spawnCoords.z, false, false, false, true)
            Wait(500)
            FreezeEntityPosition(PlayerPedId(), false)
        end
    else
        -- Model failed to load — attempt recovery
        TriggerServerEvent("tornaUmano", nil, GetPlayerServerId(PlayerId()))
        print("ERRORE NEL CARICAMENTO DELLA SKIN (Provo a tornare umano)! (" .. modelName .. ")")
    end
end

-- ---------------------------------------------------------------------------
-- LoadComponents
-- Fetches saved component variations from the server and applies them.
-- ---------------------------------------------------------------------------
function LoadComponents()
    local ped = PlayerPedId()
    -- Skip non-freemode peds
    local model = GetEntityModel(ped)
    if model == 1885233650 or model == -1667301416 then return end

    TriggerServerCallback("myskinped:GETSKIN", function(skinData)
        if skinData ~= nil and skinData ~= "no" and skinData ~= "none" and #skinData > 0 then
            local components = json.decode(skinData)
            savedComponents = components
            if components ~= nil and #components > 0 then
                table.foreach(components, function(entry, slotStr)
                    local slot = tonumber(slotStr)
                    local drawable = entry[1]
                    local texture = entry[2]
                    SetPedPreloadVariationData(ped, slot, drawable, texture)
                    if IsPedComponentVariationValid(ped, slot, drawable, texture) then
                        SetPedComponentVariation(ped, slot, drawable, texture, 0)
                    end
                end)
            end
        else
            SetPedDefaultComponentVariation(ped)
        end
    end)
end

-- ---------------------------------------------------------------------------
-- ResetPlayerPed
-- Resets the player ped to the sex-appropriate freemode model from the DB.
-- ---------------------------------------------------------------------------
function ResetPlayerPed()
    if tutorialFatto then
        TriggerServerEvent("myskinped:resetPlayerSkin", GetPlayerServerId(PlayerId()))
    end

    TriggerServerCallback("esx_Pharmacy:getVarDB", function(sex)
        if tostring(sex) == "M" then
            TriggerEvent("skinchanger:loadDefaultModel", true)
            Wait(1000)
            TriggerEvent("skinchanger:setuomo", "mp_m_freemode_01")
        else
            TriggerEvent("skinchanger:loadDefaultModel", false)
            Wait(1000)
            TriggerEvent("skinchanger:setuomo", "mp_f_freemode_01")
        end
    end, "sex")

    Wait(1000)
    SetEntityVisible(PlayerPedId(), true)
    exports.striano_inventory:aggiornaHolders()
    exports.striano_combat:fodera()
    FreezeEntityPosition(PlayerPedId(), false)
end

-- ---------------------------------------------------------------------------
-- CheckClothError
-- Detects default/bare freemode clothing state (all zeros) and corrects it.
-- ---------------------------------------------------------------------------
function CheckClothError()
    local ped = PlayerPedId()
    if not IsPedHuman(ped) then return end
    local model = GetEntityModel(ped)
    -- Only applies to freemode peds
    if model ~= 1885233650 and model ~= -1667301416 then
        -- Check for bare/default state (torso=15, jacket=0, bag=0, legs=26, shoes=0)
        if GetPedDrawableVariation(ped, 3) == 15
            and GetPedDrawableVariation(ped, 11) == 0
            and GetPedDrawableVariation(ped, 5) == 0
            and GetPedDrawableVariation(ped, 4) == 26
            and GetPedDrawableVariation(ped, 6) == 0
        then
            VestitoGonnaIniziale()
        end
    end
end

-- ---------------------------------------------------------------------------
-- ApplicamiPED
-- Fetches the player's registered ped from the server and applies it.
-- Falls back to loadskin/LoadComponents for human peds.
-- ---------------------------------------------------------------------------
function ApplicamiPED()
    TriggerServerCallback("no1-playerped:server:GetPlayerPed", function(pedModel)
        if pedModel ~= nil and pedModel ~= "none" then
            TriggerEvent("no1-playerped:client:SetPlayerPed", pedModel)
        else
            CreateThread(function()
                if IsPedHuman(PlayerPedId()) then
                    TriggerEvent("legacy:loadskin")
                    LoadComponents()
                    CheckClothError()
                end
            end)
        end
    end)
end

-- ---------------------------------------------------------------------------
-- NET EVENTS
-- ---------------------------------------------------------------------------

RegisterNetEvent("no1-playerped:client:SetPlayerPed")
AddEventHandler("no1-playerped:client:SetPlayerPed", function(modelName)
    SetPlayerPed(modelName)
end)

RegisterNetEvent("no1-playerped:client:ResetPlayerPed")
AddEventHandler("no1-playerped:client:ResetPlayerPed", function()
    ResetPlayerPed()
end)

RegisterNetEvent("no1-playerped:client:ModificaSkin")
AddEventHandler("no1-playerped:client:ModificaSkin", function()
    Modifica()
end)

RegisterNetEvent("no1-playerped:client:ModificaSkinVestiti")
AddEventHandler("no1-playerped:client:ModificaSkinVestiti", function()
    ModificaVestiti()
end)

-- ---------------------------------------------------------------------------
-- ModificaVestiti — opens the skin editor in clothing-only mode
-- ---------------------------------------------------------------------------
function ModificaVestiti()
    Modifica(true)
end

-- ---------------------------------------------------------------------------
-- COMMANDS
-- ---------------------------------------------------------------------------

RegisterCommand("checkclotherror", function()
    CheckClothError()
end)

RegisterCommand("loadskin", function()
    ApplicamiPED()
end)

-- ---------------------------------------------------------------------------
-- COMPONENT SLOT DEFINITIONS
-- Used by the Modifica (skin edit) menu
-- ---------------------------------------------------------------------------

-- Freemode component slots (style: green in menu)
local freemodeSlots = {
    { id = 0,  name = "Head (0)" },
    { id = 1,  name = "Mask (1)" },
    { id = 2,  name = "Hair (2)" },
    { id = 3,  name = "Torso (3)" },
    { id = 4,  name = "Legs (4)" },
    { id = 5,  name = "Bag (5)" },
    { id = 6,  name = "Shoes (6)" },
    { id = 7,  name = "Accessories [1] (7)" },
    { id = 8,  name = "Accessories [2] (8)" },
    { id = 9,  name = "Accessories [3] (9)" },
    { id = 10, name = "Decal (10)" },
    { id = 11, name = "Jacket (11)" },
}

-- Variation-mode component slots (style: yellow in menu, labeled [V])
local variationSlots = {
    { id = 1,  name = "Mask [V] (1)" },
    { id = 2,  name = "Hair [V] (2)" },
    { id = 3,  name = "Torso [V] (3)" },
    { id = 4,  name = "Legs [V] (4)" },
    { id = 5,  name = "Bag [V] (5)" },
    { id = 6,  name = "Shoes [V] (6)" },
    { id = 7,  name = "Accessories [1-V] (7)" },
    { id = 8,  name = "Accessories [2-V] (8)" },
    { id = 9,  name = "Accessories [3-V] (9)" },
    { id = 10, name = "Decal [V] (10)" },
    { id = 11, name = "Jacket [V] (11)" },
}

-- Current multiplier offset for range sliders (unused placeholder from original)
local currentMultiplierOffset = 0

-- ---------------------------------------------------------------------------
-- Modifica — opens the ped component editor menu
-- ---------------------------------------------------------------------------
function Modifica(clothingOnly)
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)

    -- Block for non-freemode peds
    if model == 1885233650 or model == -1667301416 then
        exports.striano_combat:submexError("Operazione bloccata per il tuo modello di ped.")
        return
    end

    if not exports.striano_core:gettutorial() then return end

    -- Build menu items list
    local menuItems = {
        { header = "EDIT PEDS", subheader = "Press <span>SHIFT</span> for select item menu mode.", icon = "fa-solid fa-user" },
        { header = "SAVE EDIT",  icon = "fa-solid fa-video-camera", event = "salvaModifiche" },
        { header = "RESET EDIT", icon = "fa-solid fa-trash",        event = "ripristinaModifiche" },
        { header = "CLOSE MENU", icon = "fa-solid fa-times",        event = "chiudiMenuBtn" },
        { search = true, disabled = false },
    }

    -- Add variation slots (yellow)
    table.iforeach(variationSlots, function(slot)
        if GetNumberOfPedDrawableVariations(ped, slot.id) > 0 then
            local label = slot.name:upper()
            local currentDrawable = GetPedDrawableVariationCollectionLocalIndex(ped, slot.id)
            table.insert(menuItems, {
                header      = "MODELLO " .. label,
                subheader   = "",
                range_slider = true,
                style       = "color:yellow;",
                searchable  = true,
                currency    = slot.id,
                multiplier  = -1100,
                range       = { step = 1, min = 0, max = GetNumberOfPedDrawableVariations(ped, slot.id), value = currentDrawable },
            })
            table.insert(menuItems, {
                header      = "TEXTURE " .. label,
                subheader   = "",
                range_slider = true,
                style       = "color:yellow;",
                searchable  = true,
                currency    = slot.id,
                multiplier  = -1101,
                range       = { step = 1, min = 0, max = GetNumberOfPedDrawableVariations(ped, slot.id), value = currentDrawable },
            })
        end
    end)

    -- Add freemode slots (green)
    table.iforeach(freemodeSlots, function(slot)
        if GetNumberOfPedDrawableVariations(ped, slot.id) > 0 then
            local label = slot.name:upper()
            local currentDrawable = GetPedDrawableVariationCollectionLocalIndex(ped, slot.id)
            table.insert(menuItems, {
                header      = "MODEL " .. label,
                subheader   = "",
                range_slider = true,
                style       = "color:green;",
                searchable  = true,
                currency    = slot.id,
                multiplier  = -1100,
                range       = { step = 1, min = 0, max = GetNumberOfPedDrawableVariations(ped, slot.id), value = currentDrawable },
            })
            table.insert(menuItems, {
                header      = "TEXTURE " .. label,
                subheader   = "",
                range_slider = true,
                style       = "color:green;",
                searchable  = true,
                currency    = slot.id,
                multiplier  = -1101,
                range       = { step = 1, min = 0, max = GetNumberOfPedDrawableVariations(ped, slot.id), value = currentDrawable },
            })
        end
    end)

    exports.skinchanger:createMenu(menuItems, false)
end

-- ---------------------------------------------------------------------------
-- SKIN EDITOR EVENT HANDLERS
-- ---------------------------------------------------------------------------

AddEventHandler("chiudiMenuBtn", function()
    exports.striano_combat:submexInfo("")
    exports.skinchanger:closeMenu()
    ReleasePedPreloadVariationData(PlayerPedId())
end)

AddEventHandler("salvaModifiche", function()
    TriggerServerEvent("myskinped:updatePlayerSkin", Player.GetModel(), false)
    exports.striano_combat:submexInfo("Char saved.")
    exports.skinchanger:closeMenu()
    ReleasePedPreloadVariationData(PlayerPedId())
end)

AddEventHandler("ripristinaModifiche", function()
    SetPedDefaultComponentVariation(PlayerPedId())
    TriggerServerEvent("myskinped:resetPlayerSkin", GetPlayerServerId(PlayerId()))
    exports.striano_combat:submexInfo("Edits resetted.")
end)

-- NUI: change component drawable
RegisterNUICallback("CambiaComponente", function(data, cb)
    local slotId  = tonumber(data.currency)
    local drawable = tonumber(data.index)
    SetPedPreloadVariationData(PlayerPedId(), slotId, drawable, 0)
    if IsPedComponentVariationValid(PlayerPedId(), slotId, drawable, 0) then
        SetPedComponentVariation(PlayerPedId(), slotId, drawable, 0, 0)
    end
    cb("ok")
end)

-- NUI: change component texture
RegisterNUICallback("CambiaComponenteTexture", function(data, cb)
    local slotId  = tonumber(data.currency)
    local texture = tonumber(data.index)
    local drawable = GetPedDrawableVariation(PlayerPedId(), slotId)
    SetPedPreloadVariationData(PlayerPedId(), slotId, drawable, texture)
    if IsPedComponentVariationValid(PlayerPedId(), slotId, texture, 0) then
        SetPedComponentVariation(PlayerPedId(), slotId, drawable, texture, 0)
    end
    cb("ok")
end)

-- ---------------------------------------------------------------------------
-- table.foreach / table.iforeach helpers
-- ---------------------------------------------------------------------------
table.foreach = function(t, fn)
    for k, v in pairs(t) do fn(v, k) end
end
table.iforeach = function(t, fn)
    for i, v in ipairs(t) do fn(v, i) end
end

-- ---------------------------------------------------------------------------
-- GetSkinFunction — copies current ESX skin to clipboard via /copia command
-- ---------------------------------------------------------------------------
function GetSkinFunction()
    TriggerServerCallback("esx_skin:getPlayerSkin", function(skin)
        if skin ~= nil then
            exports.striano_combat:submex("Skin copied in clipboard, you can set in future with /setskin. Same works with /gettattoo.")
            ExecuteCommand("copia " .. json.encode(skin))
        else
            exports.striano_combat:submexError("You can't get your skin now, please try again later.")
        end
    end)
end

RegisterCommand("myskin",  function() GetSkinFunction() end)
RegisterCommand("getskin", function() GetSkinFunction() end)

-- /gettattoo — copies current tattoo list to clipboard
RegisterCommand("gettattoo", function()
    TriggerServerCallback("SmallTattoos:GetPlayerTattoos", function(tattoos)
        if tattoos ~= nil then
            exports.striano_combat:submex("Tattoo copied in clipboard. Apply them in future with /settattoo.")
            ExecuteCommand("copia " .. json.encode(tattoos))
        else
            exports.striano_combat:submexError("Tattoo list not available.")
        end
    end)
end)

-- ---------------------------------------------------------------------------
-- abilitaskin — toggles permission for /setskin and /settattoo
-- ---------------------------------------------------------------------------
RegisterNetEvent("abilitaskin")
AddEventHandler("abilitaskin", function()
    AbilitatoSetSkin = not AbilitatoSetSkin
    if AbilitatoSetSkin then
        exports.striano_combat:submex("Sei abilitato ad usare /setskin & /settattoo.")
        ExecuteCommand("me ~g~*")
    else
        exports.striano_combat:submex("Set Skin & Tattoo disabilitati.")
        ExecuteCommand("me ~r~*")
    end
end)

-- ---------------------------------------------------------------------------
-- Skin validation: field list used to confirm a JSON blob is a valid skin
-- ---------------------------------------------------------------------------
local skinFieldNames = {
    "hair_color_2", "nose_2", "blemishes_2", "bracelets_1", "decals_2",
    "nose_4", "lip_thickness", "mask", "drawable", "palette", "undershirt",
    "bag", "chest", "tops", "accessory", "feet", "legs", "decals", "torso",
    "jaw_2", "mask_2", "chin_3", "ears_2", "bodyb_3", "nose_1", "beard_3",
    "nose_5", "sun_2", "lipstick_3", "makeup_3", "beard_4", "hair_color_1",
    "torso_1", "tshirt_1", "cheeks_3", "shoes_1", "eyebrows_4", "chest_1",
    "bags_2", "bproof_2", "lipstick_2", "complexion_2", "tshirt_2",
    "nose_6", "dad",
}

-- CheckValidSkin — returns (isValid, decodedTable) for a JSON skin string
function CheckValidSkin(skinStr)
    if type(skinStr) ~= "string" or skinStr == "" then return false end
    local ok, decoded = pcall(json.decode, skinStr)
    if not (ok and type(decoded) == "table") then return false end
    local matchCount = 0
    for _, field in ipairs(skinFieldNames) do
        if decoded[field] ~= nil then
            matchCount = matchCount + 1
        end
    end
    return matchCount > 5, decoded
end

-- ---------------------------------------------------------------------------
-- /setskin — admin command to paste a skin JSON onto the local ped
-- (requires AbilitatoSetSkin; currently only validates and counts fields)
-- ---------------------------------------------------------------------------
RegisterCommand("setskin", function()
    local input = OpenInput("Insert valid string skin.")
    local ok, decoded = pcall(json.decode, input)
    if not ok then
        print("^1JSON ERROR:^7", decoded)
        return
    end
    -- Count matching skin fields (validation; actual apply handled by skinchanger)
    local count = 0
    for _, field in ipairs(skinFieldNames) do
        if decoded[field] ~= nil then count = count + 1 end
    end
end)

-- ---------------------------------------------------------------------------
-- /settattoo — paste a tattoo JSON, apply decorations, and sync to server
-- ---------------------------------------------------------------------------
RegisterCommand("settattoo", function()
    local input = OpenInput("Insert valid string tattoo.")
    if input == nil then
        exports.striano_combat:submex("String not valid.")
        return
    end
    if input ~= nil and input ~= "" then
        local tattooData = json.decode(tostring(input))
        ClearPedDecorations(PlayerPedId())
        if type(tattooData) == "table" then
            for _, entry in pairs(tattooData) do
                if entry.collection ~= nil and entry.nameHash ~= nil then
                    SetPedDecoration(PlayerPedId(), entry.collection, entry.nameHash)
                end
            end
            currentTattoos = tattooData
        else
            print("tattoo not a table")
        end
        TriggerServerEvent("SmallTattoos:UpdateTattoo", tattooData, GetPlayerServerId(PlayerId()))
    else
        ClearPedDecorations(PlayerPedId())
        TriggerServerEvent("SmallTattoos:UpdateTattoo", nil, GetPlayerServerId(PlayerId()))
    end
end)
