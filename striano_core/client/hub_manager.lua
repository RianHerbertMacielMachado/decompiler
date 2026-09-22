-- ============================================================
--  hub_manager.lua  –  Hub UI Manager (clean rewrite)
--  Handles: main menu, 50 world interact points, shower system,
--           teleports, deposit inventory, character/clothing menus,
--           eteris drink system, animfreez debug command
-- ============================================================

-- ──────────────────────────────────────────────────────────────
--  Module-level state
-- ──────────────────────────────────────────────────────────────
local playerIdentifier        = nil    -- fetched once on first use
local identifierRequestPending = false

local DISTANCE_INTERACT       = 1.7   -- meters, normal range
local InDocciaPubblica        = false  -- true while shower anim is running
local showerCooldown          = false  -- debounce for /lavati command
local eterisInUse             = false  -- debounce for EterisFunc

-- These hold the prop entities spawned during the eteris animation
local eterisBottleEntity      = nil   -- "striano_eteris"   (held bottle)
local eterisCapEntity         = nil   -- "striano_eteris_2" (cap object)

-- listaNubi = the 50 interact-point definitions (set below)
local listaNubi               = {}

-- ──────────────────────────────────────────────────────────────
--  Utility helpers
-- ──────────────────────────────────────────────────────────────

--- Returns the server ID of the local player.
local function localServerId()
    return GetPlayerServerId(PlayerId())
end

--- Returns the player's ped handle.
local function myPed()
    return PlayerPedId()
end

--- Loads an anim-dict and waits until it is ready.
function RequestAndWaitAnim(dictName)
    if not HasAnimDictLoaded(dictName) then
        RequestAnimDict(dictName)
        while not HasAnimDictLoaded(dictName) do
            Wait(10)
        end
    end
end

--- Loads a named particle-FX asset and waits until it is ready.
function RequestAndWaitParticle(assetName)
    RequestNamedPtfxAsset(assetName)
    while not HasNamedPtfxAssetLoaded(assetName) do
        Wait(0)
    end
end

--- Plays a looped particle FX at a world coordinate.
-- @param asset      string  ptfx asset name
-- @param fxName     string  fx clip name
-- @param pos        vector3 world position
-- @param scale      number  scale multiplier (default 3.0)
-- @return           number  looped-fx handle
local function startLoopedFxAtPos(asset, fxName, pos, scale)
    scale = scale or 3.0
    if not HasNamedPtfxAssetLoaded(asset) then
        RequestNamedPtfxAsset(asset)
    end
    while not HasNamedPtfxAssetLoaded(asset) do Wait(0) end
    SetPtfxAssetNextCall(asset)
    UseParticleFxAssetNextCall(asset)
    return StartParticleFxLoopedAtCoord(fxName, pos, 0.0, 0.0, 0.0, scale, false, false, false, false)
end

--- Fires a one-shot "PlayEffectServer" for all nearby players.
local function playEffectServer(asset, fxName, pos, scale, color, rot)
    rot = rot or vector3(0.0, 0.0, 0.0)
    TriggerServerEvent("PlayEffectServer", {
        a   = asset,
        b   = fxName,
        pos = pos,
        s   = scale,
        o   = 1.0,
        rot = rot,
        c   = color,
    })
end

--- Returns true when the player can interact (not in NUI, not frozen, etc.)
-- This is also exported as canCore().
local function canCore()
    local ped = myPed()
    if IsNuiFocused()                                            then return false end
    if exports.striano_editor:editorattivo()                     then return false end
    if exports.striano_inventory:isopen()                        then return false end
    if exports.striano_combat:inCombat()                         then return false end
    if exports.skinchanger:menuaperto()                          then return false end
    if exports.striano_editor:intattooedit()                     then return false end
    if exports.striano_fastmenu:opened()                         then return false end
    if exports.striano_ridehorse:inShopAnimals()                 then return false end
    if IsEntityPositionFrozen(ped)                               then return false end
    return true
end

--- Returns true if ped is in water (swimming or submerged).
local function pedIsInWater(ped)
    return IsEntityInWater(ped)
        or IsPedSwimming(ped)
        or IsPedSwimmingUnderWater(ped)
end

-- ──────────────────────────────────────────────────────────────
--  Deposit inventory (chest keyed by player identifier)
-- ──────────────────────────────────────────────────────────────

--- Fetches the player identifier (once) then opens the 2-D chest inventory.
local function openDepositInventory()
    if playerIdentifier then
        exports.striano_inventory:OpenInventory2D("chest_" .. playerIdentifier)
        return
    end
    if identifierRequestPending then return end
    identifierRequestPending = true
    exports.striano_core:getPlayerIdentifier(function(id)
        playerIdentifier        = id
        identifierRequestPending = false
        exports.striano_inventory:OpenInventory2D("chest_" .. id)
    end)
end

-- ──────────────────────────────────────────────────────────────
--  Main menu  (mainmenu command + ESCAPE key)
-- ──────────────────────────────────────────────────────────────

local function openMainMenu()
    local fm = exports.striano_fastmenu
    fm:clearMenu()

    local function item(label, fn) fm:addMenuItem(label, fn, true) end

    item("⚙ Settings",       function() ActivateFrontendMenu(`FE_MENU_VERSION_CREATOR_PAUSE`, false, -1) end)
    item("🏰 Casata",         function() ExecuteCommand("casata") end)
    item("◰ Territorio",      function() ExecuteCommand("territorio") end)
    item("📖 Missions",       function() ExecuteCommand("ob") end)
    item("❌ Stop Missions",   function() ExecuteCommand("stopob") end)
    item("🗭 Map",             function() ExecuteCommand("openMap") end)
    item("⚔ Moveset",         function() ExecuteCommand("myListCombat") end)
    item("🐎 Mounts",          function() ExecuteCommand("myAnimals") end)
    item("🚗 Vehicles",        function() ExecuteCommand("garage") end)
    item("📜 Grimorie",        function() ExecuteCommand("spellbook") end)
    item("🏗 Builder",         function() ExecuteCommand("spawnables") end)
    item("👕 Clothes",         function() ExecuteCommand("i") end)
    item("⚡ Rapids",          function() ExecuteCommand("rapid") end)
    item("🔑 Keys",            function() ExecuteCommand("keys") end)
    item("🎯 Quest",           function() ExecuteCommand("striano_quest:respond") end)
    item("📱 Caller",          function() ExecuteCommand("openComm") end)

    fm:openMenu()
end

RegisterKeyMapping("mainmenu", "Main Menu", "keyboard", "ESCAPE")
RegisterCommand("mainmenu", function() openMainMenu() end)

-- ──────────────────────────────────────────────────────────────
--  Interact-point definitions  (50 entries)
-- ──────────────────────────────────────────────────────────────
-- Each entry:
--   pos      vector3   world position
--   testo    string    label shown on HintHud
--   funzione function  callback when player presses H
--   fx       handle    looped FX (managed at runtime, start nil)
--   visibile bool      HintHud currently shown (managed at runtime)

local function makePoint(x, y, z, label, fn)
    return {
        pos      = vector3(x, y, z),
        testo    = label,
        funzione = fn,
        fx       = nil,
        fx2      = nil,
        myalpha  = 1.0,
        myalpha2 = 1.0,
        vicino   = true,
        visibile = false,
    }
end

-- [1]  Wash – public shower near main hub
listaNubi[1] = makePoint(3827.147, 7279.063, 38.894, "Wash", function()
    DocciaPubblica(3827.147, 7279.063, 38.894 + 0.9)
end)

-- [2]  Get Mount – animal menu at hub stables
listaNubi[2] = makePoint(2880.448, 7484.36, 16.811, "Get Mount", function()
    ExecuteCommand("menuAnimal")
end)

-- [3]  Extra Mounts – alternate animal menu with instructions
listaNubi[3] = makePoint(3142.059, 7336.247, 14.753, "Extra Mounts", function()
    exports.striano_ridehorse:ShowInstructionalButtonsTimed()
    ExecuteCommand("animalMenu")
end)

-- [4]  What – cat guard message
listaNubi[4] = makePoint(3141.715, 7339.75, 14.826, "What", function()
    exports.striano_ridehorse:ShowInstructionalButtonsTimed()
    exports.striano_combat:submex(exports.striano_combat, "This area is guarded by the cat.")
end)

-- [5]  Wash – shower at secondary hub area
listaNubi[5] = makePoint(3194.138, 7370.683, 25.264, "Wash", function()
    DocciaPubblica(3194.138, 7370.683, 25.264 + 1.15)
end)

-- [6]  Damages – heal + shakeoff at main hub
listaNubi[6] = makePoint(3065.93, 7476.177, 19.61, "Damages", function()
    TriggerServerEvent("resetferite", localServerId())
    TriggerEvent("healAdmin")
    ExecuteCommand("shakeoff")
end)

-- [7]  Character – ped editor menu
listaNubi[7] = makePoint(2864.955, 7502.019, 19.402, "Character", function()
    fastMenuPed()
end)

-- [8]  Tattoo – tattoo editor menu
listaNubi[8] = makePoint(2865.758, 7505.45, 19.402, "Tattoo", function()
    fastMenuTattoo()
end)

-- [9]  Wash – shower at island hub (south map)
listaNubi[9] = makePoint(-988.211, -6904.468, 2.315, "Wash", function()
    DocciaPubblica(-988.211, -6904.468, 2.315 + 2.5)
end)

-- [10]  Edit Char – skin command at island hub
listaNubi[10] = makePoint(-979.658, -6900.432, 2.484, "Edit Char", function()
    ExecuteCommand("skin")
end)

-- [11]  Get Mount – animal menu at island hub
listaNubi[11] = makePoint(-974.841, -6955.991, 2.819, "Get Mount", function()
    ExecuteCommand("menuAnimal")
end)

-- [12]  Strip Vents – test/practice message at island hub
listaNubi[12] = makePoint(-973.322, -6895.702, 3.437, "Strip Vents", function()
    ExecuteCommand("prova Here you can test your combat ventilation skills.")
end)

-- [13]  Combat Set – combat settings at island hub
listaNubi[13] = makePoint(-991.462, -6930.446, 2.319, "Combat Set", function()
    ExecuteCommand("combatset")
end)

-- [14]  Shop Mounts – mount shop at main hub
listaNubi[14] = makePoint(3066.742, 7357.703, 15.813, "Shop Mounts", function()
    exports.striano_ridehorse:strianoMounts_openShop()
end)

-- [15]  Enter – teleport into special interior (arena / arena entry)
listaNubi[15] = makePoint(4263.334, 6897.815, 6.051, "Enter", function()
    gotopos(-590.924, 2069.406, 130.227, 200.0)
end)

-- [16]  Exit – teleport out of special interior
listaNubi[16] = makePoint(-590.924, 2069.406, 130.227, "Exit", function()
    gotopos(4263.334, 6897.815, 6.051, 59.0)
end)

-- [17]  Enter – teleport into mountain cave area
listaNubi[17] = makePoint(722.396, 8093.335, 222.023, "Enter", function()
    gotopos(4591.632, -2191.721, 48.455, 285.0)
end)

-- [18]  Exit – teleport out of mountain cave area
listaNubi[18] = makePoint(4663.26, -2169.816, 20.424, "Exit", function()
    gotopos(672.807, 7981.091, 137.692, 209.0)
end)

-- [19]  Enter – portal to south ocean area
listaNubi[19] = makePoint(3818.608, 7203.763, -1.44, "Enter", function()
    gotopos(3948.657, -2968.021, 2.973, 89.0)
end)

-- [20]  Exit – portal back from south ocean area
listaNubi[20] = makePoint(3877.471, -2954.143, -2.78, "Exit", function()
    gotopos(3884.855, 7294.207, -2.253, 0.0)
end)

-- [21]  Enter – portal to west coast area
listaNubi[21] = makePoint(1920.197, 8471.172, 2.616, "Enter", function()
    gotopos(1813.624, -4937.357, 3.577, 100.0)
end)

-- [22]  Exit – portal back from west coast area
listaNubi[22] = makePoint(1813.624, -4937.357, 3.577, "Exit", function()
    gotopos(1920.197, 8471.172, 2.616, 340.0)
end)

-- [23]  Enter – portal to far south area
listaNubi[23] = makePoint(4214.363, 3439.974, 13.796, "Enter", function()
    gotopos(-1078.572, -5243.869, 6.477, 150.0)
end)

-- [24]  Exit – portal back from far south area
listaNubi[24] = makePoint(-1078.572, -5243.869, 6.477, "Exit", function()
    gotopos(4214.363, 3439.974, 13.796, 300.0)
end)

-- [25]  Enter – portal to underground area
listaNubi[25] = makePoint(2708.744, 7550.53, 3.809, "Enter", function()
    gotopos(-1.669, -0.098, -121.084, 88.0)
end)

-- [26]  Exit – portal back from underground area
listaNubi[26] = makePoint(-1.669, -0.098, -121.084, "Exit", function()
    gotopos(2708.056, 7548.121, 3.573, 162.0)
end)

-- [27]  Leave Island – return to main map from island hub
listaNubi[27] = makePoint(-968.647, -6926.817, 3.598, "Leave Island", function()
    gotopos(2877.98, 7459.116, 15.5, 175.0)
end)

-- [28]  Travel – long-range portal to far north
listaNubi[28] = makePoint(2721.824, 7532.068, 18.089, "Travel", function()
    gotopos(-5825.758, 2691.199, 3.549, 175.0)
end)

-- [29]  Travel – return from far north portal
listaNubi[29] = makePoint(-5825.758, 2691.199, 3.549, "Travel", function()
    gotopos(2721.824, 7532.068, 18.089, 175.0)
end)

-- [30]  Deposit – open chest inventory at harbor
listaNubi[30] = makePoint(3549.454, 7158.725, 10.744, "Deposit", function()
    openDepositInventory()
end)

-- [31]  Clothes – outfit manager at main hub
listaNubi[31] = makePoint(2878.605, 7500.158, 19.402, "Clothes", function()
    fastMenuVestiti()
end)

-- [32]  Wash – shower at lower hub area
listaNubi[32] = makePoint(2862.386, 7495.005, 16.342, "Wash", function()
    DocciaPubblica(2862.386, 7495.005, 16.342 + 0.9)
end)

-- [33]  Damages – heal + shakeoff at upper hub balcony
listaNubi[33] = makePoint(3802.283, 7251.56, 39.025, "Damages", function()
    TriggerServerEvent("resetferite", localServerId())
    TriggerEvent("healAdmin")
    ExecuteCommand("shakeoff")
end)

-- [34]  Spawn Seashark – spawns a temporary seashark vehicle
listaNubi[34] = makePoint(3349.348, 7328.856, 0.0, "Spawn Seashark", function()
    local veh = exports.striano_core:getVehTemp()
    if veh then
        exports.striano_core:spawnVehSession("seashark")
    end
end)

-- [35]  Your Outfits – outfit list at south hub
listaNubi[35] = makePoint(3365.364, 7371.799, 7.185, "Your Outfits", function()
    TriggerEvent("ApriAbbigliamento")
end)

-- [36]  Recycler – open inventory recycler
local pt36 = makePoint(3367.658, 7371.802, 7.185, "Recycler", function()
    exports.striano_inventory:openRecycler()
end)
pt36.size = 0.5
listaNubi[36] = pt36

-- [37]  Trade – open random trade menu
local pt37 = makePoint(3363.563, 7358.475, 7.182, "Trade", function()
    TriggerServerEvent("randomTrade:requestMenu")
end)
pt37.size = 0.5
listaNubi[37] = pt37

-- [38]  Old Diary – open book #2 from inventory
local pt38 = makePoint(-998.45, -6940.177, 2.319, "Old Diary", function()
    local bookName = exports.striano_inventory:getBookName(2)
    TriggerEvent("gmm-books:client:OpenBook", bookName)
end)
pt38.size = 0.5
listaNubi[38] = pt38

-- [39]  Trade (disabled) – placeholder at harbor outpost
local pt39 = makePoint(3561.093, 7155.043, 10.744, "Trade", function()
    exports.striano_combat:submex(exports.striano_combat, "Import no needed objects at moment.")
    ExecuteCommand("e shrug5")
end)
pt39.size = 0.5
listaNubi[39] = pt39

-- [40]  Mission: Crates Shipping
local pt40 = makePoint(3167.186, 7499.352, 19.402, "~h~Mission: ~h~Crates Shipping", function()
    TriggerEvent("LGM:Missione", 1)
end)
listaNubi[40] = pt40

-- [41]  Mission: Stolen Motorbike
local pt41 = makePoint(3603.89, 7394.839, 7.614, "~h~Mission: ~h~Stolen Motorbike", function()
    TriggerEvent("LGM:Missione", 2)
end)
listaNubi[41] = pt41

-- [42]  Mission: Box Delivery
local pt42 = makePoint(2918.585, 7523.472, 23.555, "~h~Mission: ~h~Box Delivery", function()
    TriggerEvent("LGM:Missione", 3)
end)
listaNubi[42] = pt42

-- [43]  Mission: Dangerous Boat
local pt43 = makePoint(3212.956, 7874.729, 6.845, "~h~Mission: ~h~Dangerous Boat", function()
    TriggerEvent("LGM:Missione", 4)
end)
listaNubi[43] = pt43

-- [44]  Mission: Traitors
local pt44 = makePoint(3526.866, 7501.093, 3.289, "~h~Mission: ~h~Traitors", function()
    TriggerEvent("LGM:Missione", 5)
end)
listaNubi[44] = pt44

-- [45]  Mission: Convoy
local pt45 = makePoint(1417.934, 6344.031, 23.0, "~h~Mission: ~h~Convoy", function()
    TriggerEvent("LGM:Missione", 6)
end)
listaNubi[45] = pt45

-- [46]  Your Outfits – secondary outfit point at north shore
listaNubi[46] = makePoint(3853.164, 7627.769, 6.981, "Your Outfits", function()
    TriggerEvent("ApriAbbigliamento")
end)

-- [47]  Craft Melee Weapons
listaNubi[47] = makePoint(2923.424, 7519.308, 24.584, "Craft Melee Weapopns", function()
    TriggerEvent("weaponCraft")
end)

-- [48]  Quest: Get Provisions
listaNubi[48] = makePoint(3152.488, 7493.19, 19.402, "~h~Quest: ~h~Get Provisions", function()
    exports.striano_editor:activeQuest(2)
end)

-- [49]  Fly Human – superman flight mode
listaNubi[49] = makePoint(738.64, 8332.21, 282.222, "~h~Fly Human", function()
    TriggerEvent("AttivaSuperMan")
end)

-- [50]  Fly Animal – animal transformation flight mode
listaNubi[50] = makePoint(688.753, 8340.123, 282.22, "~h~Fly Animal", function()
    TriggerEvent("trasformazioneAnimale")
end)

-- ──────────────────────────────────────────────────────────────
--  Shower system
-- ──────────────────────────────────────────────────────────────

--- Monitors the shower animation and resets dirt once it ends.
-- Exits as soon as the anim is no longer playing.
function LoopLavati()
    CreateThread(function()
        while true do
            local ped = myPed()
            local inWater = pedIsInWater(ped)
            if inWater then
                -- Player is in water
                if not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) then
                    if IsEntityPlayingAnim(ped, "anim@mp_yacht@shower@male@", "male_shower_idle_a", 3) then
                        exports.striano_editor:ResettaSporcoSingolo()
                        local pedPos  = GetEntityCoords(ped)
                        local forward = GetEntityForwardVector(ped)
                        local splash  = pedPos + forward * 0.2
                        PlayEffect("core", "water_splash_ped_wade", vector3(splash.x, splash.y, splash.z + 0.1))
                    else
                        return  -- anim ended, stop loop
                    end
                end
            else
                -- Not in water: check if anim is still playing
                if IsEntityPlayingAnim(ped, "anim@mp_yacht@shower@male@", "male_shower_idle_a", 3) then
                    if not InDocciaPubblica then
                        exports.striano_combat:submexError("Devi essere in acqua per lavarti.")
                        ExecuteCommand("e shrug4")
                        showerCooldown = false
                        return
                    end
                end
            end
            Wait(3000)
        end
    end)
end

-- /lavati – start shower animation
RegisterCommand("lavati", function()
    if showerCooldown then return end
    showerCooldown = true
    local ped = myPed()
    if not IsEntityPlayingAnim(ped, "anim@mp_yacht@shower@male@", "male_shower_idle_a", 3) then
        ExecuteCommand("e lavati")
        Wait(25)
        LoopLavati()
    end
    Wait(500)
    showerCooldown = false
end)

-- /lavami – alias for /lavati
RegisterCommand("lavami", function()
    ExecuteCommand("lavati")
end)

-- Export: returns true if the player is currently in the public shower
exports("indoccia", function()
    return InDocciaPubblica
end)

-- ──────────────────────────────────────────────────────────────
--  DocciaPubblica(x, y, z [, endPos [, prePos]])
--  Full public-shower sequence: proximity check → animation →
--  particle FX → dirt reset × N → status events → cleanup
-- ──────────────────────────────────────────────────────────────

--- Helper: applies one status-add/remove event pair for the shower.
local function showerStatusTick(ped)
    local srv = localServerId()
    TriggerServerEvent("status:remove", srv, "stress",  200000)
    TriggerServerEvent("status:add",    srv, "igiene",  500000)
end

--- Helper: sets wetness on ped for the shower effect.
local function applyWetness(ped)
    SetPedWetnessEnabledThisFrame(ped)
    SetPedWetnessHeight(ped, 5.0)
end

--- Helper: calls ResettaSporcoSingolo, then waits ms.
local function dirtReset(ms)
    exports.striano_editor:ResettaSporcoSingolo()
    if ms and ms > 0 then Wait(ms) end
end

--- Detects the ped gender hash and returns true if female.
local function pedIsFemale(ped)
    return GetEntityModel(ped) == -1667301416  -- mp_f_freemode_01
end

function DocciaPubblica(x, y, z, endPos, prePos)
    -- Check no one is within 1.8 m
    local nearbyPlayer, dist = PlayerVicino()
    if nearbyPlayer ~= -1 and dist < 1.8 then
        exports.striano_combat:submexError("Non devono esserci persone nelle vicinanze per fare una doccia.")
        return
    end

    -- Teleport to optional pre-position (e.g. inside shower cabin)
    ExecuteCommand("prova3 ")
    local showerPos = vector3(x, y, z)
    local ped       = myPed()
    if prePos ~= nil then
        SetEntityCoords(ped, prePos)
    end

    local isFemale = pedIsFemale(ped)
    InDocciaPubblica = true
    ClearPedTasks(ped)

    -- Play shower anim (female or male)
    if isFemale then
        RequestAndWaitAnim("anim@mp_yacht@shower@female@")
        TaskPlayAnim(ped, "anim@mp_yacht@shower@female@", "shower_idle_a", 1.0, -1.0, 10000, 0, 51, true)
    else
        RequestAndWaitAnim("anim@mp_yacht@shower@male@")
        TaskPlayAnim(ped, "anim@mp_yacht@shower@male@", "male_shower_idle_a", 1.0, -1.0, 10000, 0, 51, true)
    end

    -- Start shower sound at ped position
    exports.xsound:PlayUrlPos("shower", "sounds/shower.mp3", 0.1, GetEntityCoords(ped))

    Wait(750)
    FreezeEntityPosition(ped, true)

    -- Particle FX: overhead shower spray
    RequestAndWaitParticle("scr_mp_house")
    RequestAndWaitParticle("core")
    SetPtfxAssetNextCall("scr_mp_house")
    local fxShower = StartParticleFxLoopedAtCoord(
        "ent_amb_shower", showerPos, -40.0, 0.0, 0.0, 1.0, false, false, false, false
    )

    SetPtfxAssetNextCall("core")
    local fxWater = StartParticleFxLoopedAtCoord(
        "ent_sht_water", showerPos.x, showerPos.y, showerPos.z,
        0.0, 0.0, 0.0, 1.0, false, false, false, false
    )

    -- Phase 1: dirt removal + status × 3 waves
    dirtReset(1000) dirtReset(250) dirtReset(250)
    applyWetness(ped)
    SetPedWetnessHeight(ped, 5.0)
    Wait(1000)
    dirtReset(250) dirtReset(250)
    applyWetness(ped)
    Wait(1000)
    dirtReset(250) dirtReset(250) dirtReset(0)
    applyWetness(ped)

    -- Replay shower anim (ensure it's still running)
    if isFemale then
        RequestAndWaitAnim("anim@mp_yacht@shower@female@")
        TaskPlayAnim(ped, "anim@mp_yacht@shower@female@", "shower_idle_a", 1.0, -1.0, 10000, 0, 51, true)
    else
        RequestAndWaitAnim("anim@mp_yacht@shower@male@")
        TaskPlayAnim(ped, "anim@mp_yacht@shower@male@", "male_shower_idle_a", 1.0, -1.0, 10000, 0, 51, true)
    end

    showerStatusTick(ped)

    -- Phase 2: stop first FX, restart water splash
    Wait(250)
    StopParticleFxLooped(fxWater) ; RemoveParticleFx(fxWater, true)
    dirtReset(250) dirtReset(250) dirtReset(250)

    SetPtfxAssetNextCall("core")
    fxWater = StartParticleFxLoopedAtCoord(
        "ent_sht_water", showerPos.x, showerPos.y, showerPos.z,
        0.0, 0.0, 0.0, 1.0, false, false, false, false
    )

    dirtReset(250) ; applyWetness(ped)
    Wait(250)
    dirtReset(250) ; dirtReset(250)
    Wait(1000)
    dirtReset(0)   ; applyWetness(ped)

    showerStatusTick(ped)

    -- Phase 3: final rinse
    Wait(1500)
    dirtReset(0) ; applyWetness(ped)

    StopParticleFxLooped(fxWater)  ; RemoveParticleFx(fxWater, true)
    SetPtfxAssetNextCall("core")
    fxWater = StartParticleFxLoopedAtCoord(
        "ent_sht_water", showerPos.x, showerPos.y, showerPos.z,
        0.0, 0.0, 0.0, 1.0, false, false, false, false
    )

    Wait(1500) ; dirtReset(0) ; applyWetness(ped)

    -- Finish: clear tasks, shakeoff, cleanup events
    Wait(1500)
    ClearPedTasks(ped)
    ExecuteCommand("shakeoff")
    TriggerEvent("esx_ambulancejjj:cleanme")
    applyWetness(ped)
    exports.striano_editor:ResettaSporcoSingolo()

    StopParticleFxLooped(fxShower) ; RemoveParticleFx(fxShower, true)
    StopParticleFxLooped(fxWater)  ; RemoveParticleFx(fxWater, true)

    -- Optional: teleport to endPos (e.g. exit shower cabin)
    if endPos ~= nil then
        SetEntityCollision(PlayerPedId(), true, true)
        SetEntityCoords(PlayerPedId(), endPos)
    end

    FreezeEntityPosition(ped, false)
    InDocciaPubblica = false
    exports.striano_core:EndOrbitCam()
    TriggerEvent("xnTattoos:resetsporco")
    ExecuteCommand("prova3 ")
end

-- ──────────────────────────────────────────────────────────────
--  gotopos(x, y, z [, heading])
--  Teleports the player with fade + smoke FX
-- ──────────────────────────────────────────────────────────────

function gotopos(x, y, z, heading)
    local ped = myPed()
    FreezeEntityPosition(ped, true)
    RequestCollisionAtCoord(x, y, z)
    ExecuteCommand("e teleport")

    -- Sound at origin
    exports.xsound:PlayUrlPos("menu_open", "sounds/menu_open.mp3", 0.1, GetEntityCoords(ped))

    -- Smoke FX at origin
    local fxOrigin = startLoopedFxAtPos("cut_josh_4", "scr_josh3_house_smoked", GetEntityCoords(ped), 2.0)
    CreateThread(function()
        Wait(5000)
        StopParticleFxLooped(fxOrigin)
        RemoveParticleFx(fxOrigin, true)
    end)

    exports.striano_editor:setbloccoanim(true)
    Wait(1550)
    DoScreenFadeOut(550)
    Wait(650)

    ExecuteCommand("e c")
    SetEntityCoords(ped, x, y, z)
    SetEntityHeading(ped, heading or math.random(1, 359))

    Wait(2450)

    -- Smoke FX at destination
    local fxDest = startLoopedFxAtPos("cut_josh_4", "scr_josh3_house_smoked", GetEntityCoords(ped), 2.5)
    CreateThread(function()
        Wait(5000)
        StopParticleFxLooped(fxDest)
        RemoveParticleFx(fxDest, true)
    end)

    Wait(750)
    exports.striano_editor:setbloccoanim(false)

    CreateThread(function()
        Wait(250)
        ExecuteCommand("loadtattoo")
        Wait(250)
        ExecuteCommand("e endladderdown")
        DoScreenFadeIn(1000)
        ExecuteCommand("atmosfera")
        FreezeEntityPosition(ped, false)
    end)
end

-- ──────────────────────────────────────────────────────────────
--  canCore guard  (also exported)
-- ──────────────────────────────────────────────────────────────
-- Note: reassigned here to the final version that includes all checks
canCore = canCore  -- already defined above; kept as global for legacy calls
exports("canCore", function() return canCore() end)

-- ──────────────────────────────────────────────────────────────
--  actionCore command + H key
--  Activates the nearest interact-point callback
-- ──────────────────────────────────────────────────────────────
RegisterKeyMapping("actionCore", "Azione", "keyboard", "h")
RegisterCommand("actionCore", function()
    local ped     = myPed()
    if not canCore() then return end

    local pedPos  = GetEntityCoords(ped)
    local inWater = pedIsInWater(ped)
    local checkDist = inWater and (DISTANCE_INTERACT * 2) or DISTANCE_INTERACT

    for _, point in pairs(listaNubi) do
        local dist = #(pedPos - point.pos)
        if dist < checkDist then
            if not IsNuiFocused()
            and not IsEntityAttached(ped)
            and not IsPedRagdoll(ped)
            and not IsPedFatallyInjured(ped) then
                if point.visibile then
                    exports.striano_editor:HintHud_SetVisible(false)
                end
                point.funzione()
                break
            end
        end
    end
end)

-- ──────────────────────────────────────────────────────────────
--  Character / Tattoo / Clothes fast-menus
-- ──────────────────────────────────────────────────────────────

function fastMenuPed()
    local fm = exports.striano_fastmenu
    fm:clearMenu()
    fm:addMenuItem("Edit Ped Character", function()
        TriggerEvent("PersonalizzaPed")
    end, true)
    fm:addMenuItem("Save Character", function()
        TriggerEvent("SaveMySkin")
        ExecuteCommand("shakeoff")
    end, true)
    fm:openMenu()
end

function fastMenuTattoo()
    local fm = exports.striano_fastmenu
    fm:clearMenu()
    fm:addMenuItem("Editor Tattoo", function()
        TriggerEvent("PersonalizzaTattoo")
    end, true)
    fm:addMenuItem("Your Tattoo List", function()
        ExecuteCommand("mytattoo")
    end, true)
    fm:openMenu()
end

function fastMenuVestiti()
    local fm = exports.striano_fastmenu
    fm:clearMenu()
    fm:addMenuItem("Create New Outfit", function()
        TriggerEvent("editVestiti")
    end, true)
    fm:addMenuItem("Manage Outfit", function()
        TriggerEvent("ApriAbbigliamento")
    end, true)
    fm:openMenu()
end

-- ──────────────────────────────────────────────────────────────
--  Proximity loop  (1 000 ms tick)
--  - Spawns the interact-point FX when within 25 m
--  - Shows/hides the HintHud button prompt
-- ──────────────────────────────────────────────────────────────
CreateThread(function()
    while true do
        Wait(1000)
        local ped     = myPed()
        local pedPos  = GetEntityCoords(ped)
        local inWater = pedIsInWater(ped)
        local checkDist = inWater and (DISTANCE_INTERACT * 2) or DISTANCE_INTERACT

        for _, point in pairs(listaNubi) do
            local dist = #(pedPos - point.pos)

            if dist < 25.0 then
                -- Spawn FX beacon if not already active
                if point.fx == nil then
                    if canCore() then
                        -- Drop the FX position down 0.1 to sit just above ground
                        local fxPos = vector3(point.pos.x, point.pos.y, point.pos.z - 0.1)
                        point.pos   = fxPos
                        point.fx    = exports.striano_core:StartFxCoord(
                            "scr_rcbarry1", "scr_alien_charging",
                            vector3(fxPos.x, fxPos.y, fxPos.z + 0.5),
                            vector3(0, 0, 0),
                            0.1, 0.9
                        )
                    end
                end

                -- HintHud prompt: show when close enough
                if dist < checkDist then
                    if not point.visibile then
                        if canCore() then
                            exports.striano_editor:HintHud_SetPosition(
                                point.pos.x, point.pos.y, point.pos.z, 0.95
                            )
                            exports.striano_editor:HintHud_RefreshButtons({
                                { control = 74, label = point.testo }
                            })
                            exports.striano_editor:HintHud_SetMaxDistance(80.0)
                            exports.striano_editor:HintHud_SetVisible(true)
                            point.visibile = true
                        end
                    end
                else
                    if point.visibile then
                        point.visibile = false
                        exports.striano_editor:HintHud_SetVisible(false)
                    end
                end
            else
                -- Too far: stop FX beacon
                if point.fx ~= nil then
                    exports.striano_core:StopFxCoord(point.fx)
                    point.fx = nil
                end
            end
        end
    end
end)

-- ──────────────────────────────────────────────────────────────
--  animfreez  – developer animation freeze/scrub tool
--  Usage:  /animfreez [dict] [clip] [flag]
--  Press H to freeze/unfreeze current anim frame.
-- ──────────────────────────────────────────────────────────────
RegisterCommand("animfreez", function(_, args)
    local ped      = myPed()
    local dict     = args[1] or "mp_player_intdrink"
    local clip     = args[2] or "intro_bottle"
    local flag     = tonumber(args[3]) or 1
    local frozen   = false
    local frozenAt = 0.0

    -- Play the anim with an indefinite duration
    faiAnim(dict, clip, -1, flag)

    CreateThread(function()
        while true do
            -- Exit when anim stops
            if not IsEntityPlayingAnim(ped, dict, clip, 3) then break end

            Wait(0)

            if not frozen then
                -- Waiting for H press to freeze
                if IsEntityPlayingAnim(ped, dict, clip, 3) then
                    local pressed = IsControlJustPressed(0, 74)
                        or IsDisabledControlJustPressed(0, 74)
                    if pressed then
                        SetEntityAnimSpeed(ped, dict, clip, 0.0)
                        frozenAt = GetEntityAnimCurrentTime(ped, dict, clip)
                        print("Current frame: " .. frozenAt)
                        frozen = true
                    end
                end
            else
                -- Frozen: press H again to restore and re-freeze at same frame
                local pressed = IsControlJustPressed(0, 74)
                    or IsDisabledControlJustPressed(0, 74)
                if pressed then
                    ClearPedTasks(ped)
                    faiAnim(dict, clip, -1, 49)
                    -- Wait for the anim to restart
                    while not IsEntityPlayingAnim(ped, dict, clip, 3) do Wait(0) end
                    SetEntityAnimCurrentTime(ped, dict, clip, frozenAt)
                    SetEntityAnimSpeed(ped, dict, clip, 0.0)
                    print("Tempo riconfermato.")
                    return
                end
            end
        end
    end)
end)

-- ──────────────────────────────────────────────────────────────
--  Eteris drink system  (/eteris command + F1 key)
-- ──────────────────────────────────────────────────────────────
RegisterCommand("eteris", function() EterisFunc() end)
exports("eteris", function() return eterisBottleEntity end)
RegisterKeyMapping("eteris", "Drink Eteris", "keyboard", "f1")

RegisterNetEvent("drinkEteris")
AddEventHandler("drinkEteris", function() EterisFunc() end)

--- Main eteris consume routine:
--   1. Checks guards (in combat, dying, ragdoll, no item)
--   2. Removes item from inventory
--   3. Spawns bottle + cap props, plays eat anim
--   4. Heals player up toward getliferank() ceiling
--   5. If player has another eteris, pops the cork; otherwise deletes props cleanly
function EterisFunc()
    if eterisInUse then return end

    local ped = myPed()

    -- Guards: firing / attacking
    if IsControlPressed(0, 24) or IsControlPressed(0, 25) then
        eterisInUse = false
        return
    end
    if IsPedFatallyInjured(ped) or IsPedRagdoll(ped) then
        eterisInUse = false
        return
    end
    if exports.striano_combat:inFinisher() or exports.striano_combat:inCombat() then
        eterisInUse = false
        return
    end

    eterisInUse = true

    -- Check item
    local hasItem = exports.striano_inventory:HasItem("eteris", 1, "player")
    if not hasItem then
        ExecuteCommand("e shrug6")
        exports.striano_combat:testo3d("You don't have an Eteris.")
        Wait(1000)
        eterisInUse = false
        return
    end

    local currentHealth = GetEntityHealth(ped)
    local maxHealth     = exports.striano_core:getliferank()

    if currentHealth >= maxHealth then
        ExecuteCommand("e no3")
        ExecuteCommand("prova3 ~y~You don't need drink Eteris.")
        Wait(1000)
        eterisInUse = false
        return
    end

    -- Remove item
    TriggerServerEvent("inv3d:removeItemByName", "player", "eteris", 1)
    Wait(75)

    -- Clean up any existing prop entities
    if DoesEntityExist(eterisBottleEntity) then
        SetEntityAsMissionEntity(eterisBottleEntity)
        DeleteEntity(eterisBottleEntity)
    end
    if DoesEntityExist(eterisCapEntity) then
        SetEntityAsMissionEntity(eterisCapEntity)
        DeleteEntity(eterisCapEntity)
    end

    ClearPedTasks(ped)

    local capModel    = "striano_eteris_2"
    local bottleModel = "striano_eteris"

    -- Spawn cap object (hidden)
    RequestModelStriano(GetHashKey(capModel))
    local capHandle = CreateObject(GetHashKey(capModel), GetEntityCoords(ped), false)
    eterisCapEntity = capHandle
    local waitCap = 0
    while not DoesEntityExist(eterisCapEntity) and waitCap < 100 do
        waitCap = waitCap + 1
        Wait(0)
    end
    SetModelAsNoLongerNeeded(GetHashKey(capModel))
    SetEntityVisible(eterisCapEntity, false)

    -- Spawn bottle object (held)
    RequestModelStriano(GetHashKey(bottleModel))
    local bottleHandle = CreateObject(GetHashKey(bottleModel), GetEntityCoords(ped), true)
    eterisBottleEntity = bottleHandle
    local waitBottle = 0
    while not DoesEntityExist(eterisBottleEntity) and waitBottle < 100 do
        waitBottle = waitBottle + 1
        Wait(0)
    end

    -- Attach bottle to right hand (bone 18905)
    local boneIdx = GetPedBoneIndex(ped, 18905)
    AttachEntityToEntity(
        eterisBottleEntity, ped, boneIdx,
        0.06, -0.19, 0.09, -69.0, 108.5, -10.0,
        true, true, false, true, 1, true
    )
    SetModelAsNoLongerNeeded(GetHashKey(bottleModel))

    -- Attach cap to bottle
    AttachEntityToEntity(
        eterisCapEntity, eterisBottleEntity, 0,
        0, 0, 0, 0, 0, 0,
        true, true, false, true, 1, true
    )

    -- Block attack controls while drinking
    CreateThread(function()
        while eterisBottleEntity do
            Wait(0)
            DisableControlAction(0, 24)
            DisableControlAction(0, 25)
        end
    end)

    -- Drink anim
    local drinkDict = "mp_player_inteat@pnq"
    local drinkClip = "loop"
    faiAnim(drinkDict, drinkClip, 1500, 49)

    exports.striano_combat:e_shareSound(
        "sounds/striano_combat/magic/soulsteal", 0.1, PlayerPedId(), 3.0
    )

    Wait(7)
    SetEntityAnimSpeed(ped, drinkDict, drinkClip, 1.1)

    -- Wait for drink anim to finish (or player dies / ragdolls)
    while IsEntityPlayingAnim(ped, drinkDict, drinkClip, 3) do
        if IsPedFatallyInjured(ped) or IsPedRagdoll(ped) then break end
        Wait(0)
    end

    -- Outro anim
    faiAnim(drinkDict, "outro", 500, 49)

    -- Teleport FX at player position
    local fxPos      = GetEntityCoords(ped)
    local fxTeleport = playEffectServer("scr_rcbarry1", "scr_alien_teleport", fxPos, 0.5)
    CreateThread(function()
        Wait(2500)
        -- fxTeleport is server-side, cleanup handled remotely
    end)

    Wait(7)
    while IsEntityPlayingAnim(ped, drinkDict, "outro", 3) do
        if IsPedFatallyInjured(ped) or IsPedRagdoll(ped) then break end
        Wait(0)
    end

    -- Compute heal amount (capped at maxHealth)
    local healAmount = math.min(currentHealth + 250, maxHealth)

    -- Schedule a resync if we healed to full
    if healAmount >= maxHealth then
        CreateThread(function()
            Wait(2500)
            ExecuteCommand("resync")
        end)
    end

    SetEntityHealth(ped, healAmount)
    TriggerServerEvent("status:set", localServerId(), "vitapl", GetEntityHealth(ped))

    -- Check if player has another eteris → pop-cork animation
    local hasMore = exports.striano_inventory:HasItem("eteris", 1, "player")
    if hasMore then
        -- Pop-cork gesture with the bottle
        local gestDict = "gestures@f@standing@casual"
        local gestClip = "gesture_hand_down"
        faiAnim(gestDict, gestClip, 500, 49)
        Wait(7)
        while IsEntityPlayingAnim(ped, gestDict, gestClip, 3) do
            if IsPedFatallyInjured(ped) or IsPedRagdoll(ped) then break end
            Wait(0)
        end

        -- Detach and toss the cap prop
        DetachEntity(eterisCapEntity)
        SetEntityVisible(eterisCapEntity, true)

        -- Delete the bottle
        SetEntityAsMissionEntity(eterisBottleEntity)
        DeleteEntity(eterisBottleEntity)
        eterisBottleEntity = nil

        -- Apply downward force to cap, then let it settle
        ApplyForceToEntity(
            eterisCapEntity, 1,
            0.0, 0.0, -0.2, 0.0, 0.0, 0.0,
            0, true, true, true, false, true
        )
        Wait(25)
        while DoesEntityExist(eterisCapEntity) do
            local speed = GetEntitySpeed(eterisCapEntity)
            if speed <= 0.02 then break end
            Wait(0)
        end
        Wait(25)
        SetEntityAsNoLongerNeeded(eterisCapEntity)
    else
        -- No more eteris: just clean up both props
        SetEntityAsMissionEntity(eterisBottleEntity)
        DeleteEntity(eterisBottleEntity)
        eterisBottleEntity = nil

        SetEntityAsMissionEntity(eterisCapEntity)
        DeleteEntity(eterisCapEntity)
        eterisCapEntity = nil
    end

    eterisInUse = false
end

-- ──────────────────────────────────────────────────────────────
--  Resource stop cleanup
-- ──────────────────────────────────────────────────────────────
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    if DoesEntityExist(eterisBottleEntity) then
        SetEntityAsMissionEntity(eterisBottleEntity)
        DeleteEntity(eterisBottleEntity)
        eterisBottleEntity = nil
    end
end)
