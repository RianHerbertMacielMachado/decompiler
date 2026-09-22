-- negoziovestiticlient.lua
-- Clothing shop / outfit management client.
-- Handles outfit saving, loading, sharing, editing (skin fields, braccia/giubbotto/casco/makeup),
-- barber shop, beard trimming, hair shaving, and beard growth timer.

-- ---------------------------------------------------------------------------
-- MODULE STATE
-- ---------------------------------------------------------------------------

local maxOutfits     = 7      -- max outfits a player can save
local savedSkinBeforeEdit = nil  -- skin snapshot before opening the shop menu (for cancel)
local pendingOutfit  = nil    -- last previewed outfit (for "Load Last")

-- /braccia2 helpers: previous and restored arms values
local braccia_pending  = nil  -- arms value queued to apply (/braccia2 applies it)
local braccia_restored = nil  -- arms value saved before /braccia2 was applied (/braccia3 restores it)

-- /rasacapelli two-step confirmation
local hairCutConfirmed = false
local hairCutPending   = false

-- ---------------------------------------------------------------------------
-- ApriNegozioVestitiMenu — open the clothing shop fastmenu
-- ---------------------------------------------------------------------------
function ApriNegozioVestitiMenu()
    ExecuteCommand("e shrug5")

    -- Snapshot current skin
    TriggerEvent("skinchanger:getSkin", function(skin)
        savedSkinBeforeEdit = skin
    end)

    local ped   = PlayerPedId()
    local model = GetEntityModel(ped)

    -- Block non-freemode peds
    if model ~= 1885233650 and model ~= -1667301416 then
        TriggerServerEvent("FaCrashare:editskin")
        return
    end

    -- Close any open skinchanger menu
    if GetResourceState("skinchanger") == "started" then
        exports.skinchanger:closeMenu()
    end

    if GetResourceState("striano_fastmenu") ~= "started" then return end

    exports.striano_fastmenu:clearMenu()

    local menuItems = {
        { label = "💾 SAVE CURRENT OUTFIT",  event = "saveOutfit" },
        { label = "⛔ CREATE NEW OUTFIT",     event = "creaNuovoOutfit" },
        { label = "👕 YOUR OUTFITS LIST",     event = "listaOutfit" },
        { label = "♻️ LOAD LAST OUTFIT",      event = "loadLast" },
    }

    for _, item in ipairs(menuItems) do
        exports.striano_fastmenu:addMenuItem(item.label, function()
            TriggerEvent("startEvent", item.event)
        end, true)
    end

    exports.striano_fastmenu:openMenu()
end

-- ---------------------------------------------------------------------------
-- startEvent helper — deferred event trigger (Wait 1ms avoids re-entrancy)
-- ---------------------------------------------------------------------------
AddEventHandler("startEvent", function(eventName)
    if type(eventName) ~= "string" or eventName == "" then return end
    Wait(1)
    TriggerEvent(eventName)
end)

-- ---------------------------------------------------------------------------
-- saveOutfit — saves current outfit immediately
-- ---------------------------------------------------------------------------
AddEventHandler("saveOutfit", function()
    AcquistaVestiti()
end)

-- ---------------------------------------------------------------------------
-- loadLast — loads the last previewed outfit; opens creaNuovoOutfit if none
-- ---------------------------------------------------------------------------
AddEventHandler("loadLast", function()
    TriggerEvent("skinchanger:getSkin", function(currentSkin)
        if pendingOutfit ~= nil then
            exports.skinchanger:closeMenu()
            savedSkinBeforeEdit = currentSkin
            TriggerEvent("skinchanger:loadSkin", pendingOutfit)
            ExecuteCommand("e indossa")
            pendingOutfit = nil
            TriggerEvent("creaNuovoOutfit")
        else
            ExecuteCommand("e shrug4")
        end
    end)
end)

-- ---------------------------------------------------------------------------
-- listaOutfit — shows the outfit list
-- ---------------------------------------------------------------------------
AddEventHandler("listaOutfit", function()
    DressingFunc()
end)

-- ---------------------------------------------------------------------------
-- creaNuovoOutfit — opens the skinchanger for clothing-only edit, then prompts
-- to save or cancel. Blocked when secondary outfit is active.
-- ---------------------------------------------------------------------------
AddEventHandler("creaNuovoOutfit", function()
    if exports.striano_core:secondarioattivo() ~= nil then
        exports.striano_combat:submexError("First you must remove secondary outfit.")
        return
    end

    exports.skinchanger:closeMenu()
    exports.striano_fastmenu:closeMenu()
    Wait(500)

    -- Poll until skinchanger menu is closed, then ask for confirmation
    CreateThread(function()
        Wait(500)
        while exports.skinchanger:menuaperto() do
            Wait(1000)
        end

        local answer = OpenInput("Save? Type \"yes\".")
        if answer == "yes" then
            AcquistaVestiti()
        else
            exports.striano_combat:submexError("You do not confirm this outfit, if you change idea you can find it in menu.")
            -- Store current skin as pending outfit
            TriggerEvent("skinchanger:getSkin", function(skin)
                pendingOutfit = skin
            end)
            -- Restore previous skin
            if savedSkinBeforeEdit ~= nil then
                TriggerEvent("skinchanger:loadSkin", savedSkinBeforeEdit)
                savedSkinBeforeEdit = nil
            end
            ClearPedTasks(PlayerPedId())
        end
    end)

    -- Open skinchanger clothing editor
    TriggerEvent("striano_skin:edit", {
        "tshirt_1", "tshirt_2", "torso_1", "torso_2",
        "arms", "arms_2", "pants_1", "pants_2",
        "shoes_1", "shoes_2", "chain_1", "chain_2",
        "ears_1", "ears_2", "glasses_1", "glasses_2",
        "helmet_1", "helmet_2", "bracelets_1", "bracelets_2",
        "watches_1", "watches_2", "decals_1", "decals_2",
    })
end)

-- ---------------------------------------------------------------------------
-- aggiornaSecondario — update secondary outfit slot on server
-- ---------------------------------------------------------------------------
RegisterNetEvent("aggiornaSecondario")
AddEventHandler("aggiornaSecondario", function(outfitIndex)
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        for i = 1, #outfits do
            if i == outfitIndex then
                TriggerServerEvent("ward:updategiacca", outfits[i].skin)
                return
            end
        end
    end, GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
-- editVestiti — close skinchanger and reopen the clothing shop
-- ---------------------------------------------------------------------------
RegisterNetEvent("editVestiti")
AddEventHandler("editVestiti", function()
    exports.skinchanger:closeMenu()
    Wait(255)
    ApriNegozioVestitiMenu()
end)

-- ---------------------------------------------------------------------------
-- AcquistaVestiti(outfitIndex) — save current outfit to server
-- outfitIndex = nil or 0 → free save (no coins check skipped)
-- ---------------------------------------------------------------------------
function AcquistaVestiti(outfitIndex)
    local idx = outfitIndex or 0
    if not outfitIndex then idx = 0 end

    exports.skinchanger:closeMenu()
    exports.striano_combat:submex("")

    if idx == nil then idx = 0 end

    TriggerServerCallback("soldi:check", function(hasMoney)
        if idx == 0 or hasMoney then
            local name = OpenInput("Name of outfit")
            if name ~= nil and name ~= "" then
                TriggerServerCallback("getPlayerOutfits", function(outfits)
                    local count = (outfits == nil) and 0 or #outfits

                    -- Store pending outfit from current skin
                    TriggerEvent("skinchanger:getSkin", function(skin)
                        pendingOutfit = skin
                    end)

                    -- Restore pre-edit skin
                    if savedSkinBeforeEdit ~= nil then
                        TriggerEvent("skinchanger:loadSkin", savedSkinBeforeEdit)
                        savedSkinBeforeEdit = nil
                    end

                    if count < maxOutfits then
                        TriggerEvent("skinchanger:getSkin", function(skin)
                            TriggerServerEvent("esx_eden_clotheshop:saveOutfit", name, skin, GetPlayerServerId(PlayerId()))
                        end)
                        exports.striano_combat:submexInfo("Outfit insert in your own list.")
                    else
                        exports.striano_combat:submexInfo("Operation locked, your account can save till " .. maxOutfits .. " outfits.")
                    end
                end, GetPlayerServerId(PlayerId()))
            else
                exports.striano_combat:submexError("Invalid name, outfit stored as last in the menu.")
                TriggerEvent("skinchanger:getSkin", function(skin)
                    pendingOutfit = skin
                end)
                if savedSkinBeforeEdit ~= nil then
                    TriggerEvent("skinchanger:loadSkin", savedSkinBeforeEdit)
                    savedSkinBeforeEdit = nil
                end
                ExecuteCommand("e shrug5")
            end
        else
            exports.striano_combat:submexError("You don't have enough coins, outfit stored as last in the menu.")
            TriggerEvent("skinchanger:getSkin", function(skin)
                pendingOutfit = skin
            end)
            if savedSkinBeforeEdit ~= nil then
                TriggerEvent("skinchanger:loadSkin", savedSkinBeforeEdit)
                savedSkinBeforeEdit = nil
            end
            ExecuteCommand("e shrug5")
        end
    end, idx)
end

-- ---------------------------------------------------------------------------
-- /deldecal — remove decal overlays from skinchanger
-- ---------------------------------------------------------------------------
RegisterCommand("deldecal", function()
    TriggerEvent("skinchanger:change", "decals_1", 0)
    TriggerEvent("skinchanger:change", "decals_2", 0)
    exports.striano_combat:submex("Decals removed.")
end)

-- ---------------------------------------------------------------------------
-- EditBraccia — open skinchanger for arms edit
-- /braccia / /guanti
-- ---------------------------------------------------------------------------
function EditBraccia()
    TriggerEvent("striano_skin:edit", { "arms" })
end

RegisterCommand("braccia", function() EditBraccia() end)
RegisterCommand("guanti",  function() EditBraccia() end)

-- ---------------------------------------------------------------------------
-- /braccia2 — apply pending arms value (swap and save previous)
-- /braccia3 — restore previous arms value
-- ---------------------------------------------------------------------------
RegisterCommand("braccia2", function()
    if braccia_pending == nil then
        exports.striano_combat:submexError("Non hai ancora effettuato modifiche in /braccia.")
    else
        TriggerEvent("skinchanger:getSkin", function(skin)
            braccia_restored = skin.arms
        end)
        TriggerEvent("skinchanger:change", "arms", braccia_pending)
        ExecuteCommand("e adjusttie")
        braccia_pending = nil
        exports.striano_combat:submexError("Hai rimosso le tue ultime braccia che avevi modificato.")
    end
end)

RegisterCommand("braccia3", function()
    if braccia_restored == nil then
        exports.striano_combat:submexError("Non hai ancora applicato modifiche in /braccia.")
    else
        TriggerEvent("skinchanger:getSkin", function(skin)
            braccia_pending = skin.arms
        end)
        TriggerEvent("skinchanger:change", "arms", braccia_restored)
        ExecuteCommand("e adjusttie")
        exports.striano_combat:submexError("Hai rimesso le tue ultime braccia modificate.")
    end
end)

-- ---------------------------------------------------------------------------
-- EditGiubotto — open bulletproof vest editor
-- ---------------------------------------------------------------------------
function EditGiubotto()
    TriggerEvent("striano_skin:edit", { "bproof_1", "bproof_2" })
end

RegisterNetEvent("esx:EditGiubb")
AddEventHandler("esx:EditGiubb", function()
    EditGiubotto()
end)

-- Armour set
RegisterNetEvent("esx:settamiArmour")
AddEventHandler("esx:settamiArmour", function()
    SetPedArmour(PlayerPedId(), 100)
end)

-- ---------------------------------------------------------------------------
-- EditCasco — open helmet texture editor (blocked for slots 52 and 53)
-- ---------------------------------------------------------------------------
function EditCasco(helmetSlot)
    if helmetSlot == nil then return end
    if helmetSlot == 52 or helmetSlot == 53 then return end
    TriggerEvent("striano_skin:edit", { "helmet_2" })
end

-- ---------------------------------------------------------------------------
-- editMakeup — open makeup/facial features editor
-- ---------------------------------------------------------------------------
function editMakeup()
    TriggerEvent("striano_skin:edit", {
        "eyebrow_size", "eyebrow_color_1", "eyebrow_color_2",
        "eyebrow_depth", "eyebrow_height",
        "makeup_thickness", "makeup_color_1", "makeup_color_2",
        "lipstick_thickness", "lipstick_color_1", "lipstick_color_2",
        "blush_1", "blush_color", "freckles", "freckles_1",
        "beard_color_1", "hair_color_1", "hair_color_2",
    })
end

-- ---------------------------------------------------------------------------
-- eliminaOutfit — remove outfit by index
-- ---------------------------------------------------------------------------
RegisterNetEvent("eliminaOutfit")
AddEventHandler("eliminaOutfit", function(outfitIndex)
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        table.remove(outfits, outfitIndex)
        TriggerServerEvent("updateOutfits", outfits)
    end, GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
-- rinominaOutfit — rename outfit at given index to newLabel
-- ---------------------------------------------------------------------------
RegisterNetEvent("rinominaOutfit")
AddEventHandler("rinominaOutfit", function(outfitIndex, newLabel)
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        for i = 1, #outfits do
            if i == outfitIndex then
                outfits[i].label = newLabel
            end
        end
        TriggerServerEvent("updateOutfits", outfits)
    end, GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
-- indossaOutfit — wear outfit at given index (clothes-only load)
-- ---------------------------------------------------------------------------
RegisterNetEvent("indossaOutfit")
AddEventHandler("indossaOutfit", function(outfitIndex)
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        for i = 1, #outfits do
            if i == outfitIndex then
                TriggerEvent("skinchanger:getSkin", function(currentSkin)
                    TriggerEvent("skinchanger:loadClothes", currentSkin, outfits[i].skin)
                end)
                break
            end
        end
    end, GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
-- GestisciOutfitNegozio(outfitIndex, outfitList)
-- Opens a sub-menu for a specific outfit: Wear / Rename / Share / Secondary / Delete
-- ---------------------------------------------------------------------------
function GestisciOutfitNegozio(outfitIndex, outfitList)
    exports.striano_fastmenu:clearMenu()
    exports.striano_fastmenu:close()
    Wait(255)

    -- Wear
    exports.striano_fastmenu:addMenuItem("Wear " .. outfitList[outfitIndex].label, function()
        TriggerServerEvent("esx_eden_clotheshop:indossaOutfit", outfitIndex)
        CreateThread(function()
            Wait(1500)
            ExecuteCommand("e indossa2")
            TriggerEvent("SaveMySkin")
        end)
        savedSkinBeforeEdit = nil
    end, true)

    -- Rename
    exports.striano_fastmenu:addMenuItem("Rename", function()
        local newName = OpenInput("Insert name.")
        if newName == "" or (newName ~= "" and #newName <= 1) then
            ExecuteCommand("e shrug4")
            return
        end
        TriggerServerEvent("esx_eden_clotheshop:renameOutfit", outfitIndex, newName)
        exports.striano_combat:testo3d("Renamed.")
        Wait(1000)
        DressingFunc()
    end, true)

    -- Share with Nearest
    exports.striano_fastmenu:addMenuItem("Share with Nearest", function()
        local nearId, dist = PlayerVicino()
        if nearId ~= -1 and dist <= 2.5 then
            TriggerServerEvent("condividiOutfit",
                GetPlayerServerId(PlayerId()),
                GetPlayerServerId(nearId),
                outfitIndex)
        else
            ExecuteCommand("e shrug")
        end
    end, true)

    -- Set as Secondary
    exports.striano_fastmenu:addMenuItem("Secondary", function()
        local confirm = OpenInput("Sure? Type \"yes\".")
        if confirm == "si" or confirm == "sI" or confirm == "Si" or confirm == "SI" then
            TriggerServerEvent("aggiornaSecondario", outfitIndex)
            exports.striano_combat:testo3d("Done.")
            Wait(1000)
            DressingFunc()
        else
            ExecuteCommand("e shrug4")
        end
    end, true)

    -- Delete
    exports.striano_fastmenu:addMenuItem("Delete", function()
        local confirm = OpenInput("Sure? Type \"yes\".")
        if confirm == "yes" then
            TriggerServerEvent("esx_eden_clotheshop:deleteOutfit", outfitIndex)
            exports.striano_combat:testo3d("Deleted.")
            Wait(1000)
            DressingFunc()
        else
            ExecuteCommand("e shrug4")
        end
    end, true)

    exports.striano_fastmenu:openMenu()
end

-- ---------------------------------------------------------------------------
-- condividiOutfit — send outfit data to another player (server → client chain)
-- ---------------------------------------------------------------------------
RegisterNetEvent("condividiOutfit")
AddEventHandler("condividiOutfit", function(senderServerId, outfitIndex)
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        for i = 1, #outfits do
            if i == outfitIndex then
                TriggerEvent("riceviOutfit", senderServerId, outfits[i].skin, outfits[i].label)
                break
            end
        end
    end, GetPlayerServerId(PlayerId()))
end)

-- ---------------------------------------------------------------------------
-- riceviOutfit — receive a shared outfit with accept/decline prompt
-- Controls: E (25) = Yes, G (73) = No
-- ---------------------------------------------------------------------------
RegisterNetEvent("riceviOutfit")
AddEventHandler("riceviOutfit", function(skinData, outfitLabel)
    exports.striano_combat:submexInfo("A player want share with you outfit name " .. outfitLabel .. ", you accept it?")

    while true do
        exports.striano_core:draw(38, "Yes, take it.", 73, "No, don't do it")

        -- G key = decline
        if IsDisabledControlPressed(0, 73) or IsControlPressed(0, 73) then
            exports.striano_combat:submex("")
            return
        end

        -- E key = accept
        if IsDisabledControlPressed(0, 25) or IsControlPressed(0, 25) then
            TriggerEvent("skinchanger:getSkin", function(currentSkin)
                TriggerEvent("skinchanger:loadClothes", currentSkin, skinData)
            end)
            Wait(1000)
            ExecuteCommand("e indossa2")
            return
        end

        Wait(0)
    end
end)

-- ---------------------------------------------------------------------------
-- ApriAbbigliamento — open outfit list (from NPC/server trigger)
-- ---------------------------------------------------------------------------
RegisterNetEvent("ApriAbbigliamento")
AddEventHandler("ApriAbbigliamento", function()
    DressingFunc()
end)

-- ---------------------------------------------------------------------------
-- DressingFunc — fetch and display the player's outfit list
-- ---------------------------------------------------------------------------
function DressingFunc()
    TriggerServerCallback("getPlayerOutfits", function(outfits)
        if outfits ~= nil and #outfits > 0 then
            exports.skinchanger:closeMenu()
            exports.striano_fastmenu:close()
            exports.striano_fastmenu:clearMenu()
            Wait(255)

            for i = 1, #outfits do
                local label = "[" .. i .. "] " .. outfits[i].label
                local idx   = i
                exports.striano_fastmenu:addMenuItem(label, function()
                    GestisciOutfitNegozio(idx, outfits)
                end, false)
            end

            exports.striano_fastmenu:openMenu()
        else
            exports.striano_combat:submexError("No outfits in list.")
        end
    end, GetPlayerServerId(PlayerId()))
end

-- ---------------------------------------------------------------------------
-- apriBarbiere — open barber/hair editor (blocked when secondary outfit active)
-- ---------------------------------------------------------------------------
RegisterNetEvent("apriBarbiere")
AddEventHandler("apriBarbiere", function()
    if exports.striano_core:secondarioattivo() ~= nil then
        exports.striano_combat:submexError("First use /secno.")
        return
    end

    TriggerEvent("striano_skin:edit", {
        "beard_1", "beard_2", "beard_3", "beard_4",
        "hair_1", "hair_color_1", "hair_color_2",
        "eyebrows_1", "eyebrows_2", "eyebrows_3", "eyebrows_4",
        "makeup_1", "makeup_2", "makeup_3", "makeup_4",
        "lipstick_1", "lipstick_2", "lipstick_3", "lipstick_4",
        "ears_1", "ears_2",
        "blush_1", "blush_2", "blush_3",
    })
end)

-- ---------------------------------------------------------------------------
-- /rasabarba — trim beard to a specific length (1-10)
-- Only shortens; cannot lengthen. Valid range 0-10.
-- ---------------------------------------------------------------------------
RegisterCommand("rasabarba", function()
    local input = OpenInput("Beard long (1-10).")

    if input == "" and #input <= 1 then
        ExecuteCommand("e shrug4")
        exports.striano_combat:testo3d("No beard valid.")
        return
    end

    TriggerEvent("skinchanger:getSkin", function(skin)
        if skin == nil then return end
        local targetLength = input
        if skin.beard_2 > targetLength then
            if skin.beard_2 >= 0 and skin.beard_2 <= 10 then
                skin.beard_2 = targetLength
                exports.striano_core:resetdpcloth()
                TriggerEvent("skinchanger:loadSkin", skin)
                ExecuteCommand("e lavafaccia")
            else
                ExecuteCommand("e shrug4")
                exports.striano_combat:testo3d("No beard valid.")
            end
        end
    end)
end)

-- ---------------------------------------------------------------------------
-- /rasacapelli — shave head (two-step confirmation within 7 seconds)
-- Applies "e rasoio" animation, sets hair_1=1/hair_2=0, then hair_1=0/hair_2=10
-- ---------------------------------------------------------------------------
RegisterCommand("rasacapelli", function()
    if hairCutConfirmed then return end  -- already processing

    if hairCutPending then
        -- Second press within 7s → confirm and execute
        hairCutPending  = false
        hairCutConfirmed = true

        Wait(1000)
        TriggerServerCallback("esx_skin:getPlayerSkin", function(skin)
            if skin ~= nil then
                exports.striano_core:resetdpcloth()
                TriggerEvent("skinchanger:loadSkin", skin)
                ExecuteCommand("e rasoio") ; Wait(2000)
                ExecuteCommand("e rasoio") ; Wait(2000)
                TriggerEvent("skinchanger:change", "hair_1", 1)
                TriggerEvent("skinchanger:change", "hair_2", 0)
                ExecuteCommand("e rasoio") ; Wait(2000)
                ExecuteCommand("e rasoio") ; Wait(2000)
                ExecuteCommand("shakeoff")
                TriggerEvent("skinchanger:change", "hair_1", 0)
                TriggerEvent("skinchanger:change", "hair_2", 10)
                Wait(2000)
                ExecuteCommand("shakeoff")
                hairCutPending   = false
                hairCutConfirmed = false
            else
                exports.striano_combat:submexError("Error on skin for this operation")
            end
        end)
    else
        -- First press → start confirmation window
        exports.striano_combat:submexInfo("To confirm use the command again in 7 secondi.")
        hairCutPending = true
        Wait(7000)
        hairCutPending = false
    end
end)

-- ---------------------------------------------------------------------------
-- /maxbarba — admin command to set beard_2 to max (10)
-- ---------------------------------------------------------------------------
RegisterCommand("maxbarba", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end
    TriggerEvent("skinchanger:change", "beard_2", 10)
end)

-- ---------------------------------------------------------------------------
-- BEARD GROWTH THREAD
-- Every hour, if the player is male freemode and beard < 10, grow beard by 1
-- ---------------------------------------------------------------------------
CreateThread(function()
    while true do
        Wait(3600000)  -- 1 hour
        TriggerEvent("skinchanger:getSkin", function(skin)
            if skin == nil then return end
            if skin.beard_2 < 10 then
                if GetEntityModel(PlayerPedId()) == 1885233650 then
                    TriggerEvent("skinchanger:change", "beard_2", skin.beard_2 + 1)
                    print("Beard growing: " .. (skin.beard_2 + 1))
                end
            end
        end)
    end
end)
