-- General settings
debugSpellOn = false
DefaultKey = 'G' -- Key to open/close grimoire
SpellSlots = 7 -- Number of spell slots (slots 1-7)
SpellSlotKeys = {1, 2, 3, 4, 5, 6, 7} -- Keys for spell slots (visual reference only)

-- RemoveAllAtStart WINS on DisableAllAtStart!
RemoveAllAtStart = true -- (If you put true with this players can't see any spell and you need manage as admin with /editSpells Player_ID)

-- UI Settings
UISettings = {
    floatingSlotsEnabledAtStart = false -- Set to false to disable floating slots at startup
}

-- COMMENT THIS PART IF YOU WANT DISABLE GRIMORIE AND YOU WANT SETUP YOUR OWN CAST SPELLS WITH exports!
RegisterKeyMapping('spellBook', 'Spells Book', 'keyboard', DefaultKey)
RegisterCommand('openGrimorie', function() ExecuteCommand("openGrimoire") end)
RegisterCommand('spellBook', function() ExecuteCommand("openGrimoire") end)
RegisterCommand('spellsBook', function() ExecuteCommand("openGrimoire") end)
RegisterCommand('openGrimoire', function()
	if not PlayerData.grimoireOpen then
		-- CloseGrimoire()
		if IsPedHuman(PlayerPedId()) and canOpenGrimorie() then OpenGrimoire() end
	end
end)

-- START OF STRIANO GRIMORIE SETUP
PlayerData = {
    spells = {},
    assignedSpells = {},
    grimoireOpen = false,
    grimoireVisible = false, -- Start with grimoire hidden by default
    activeSpells = {}
}

function UpdateSpells(spell_list)
	PlayerData.spells = {}
    for _, spell in pairs(spell_list) do
        if spell and spell.id ~= nil then
            PlayerData.spells[tostring(spell.id)] = spell
            AddSpell(spell.id, spell)
        end
    end
end

-- INIT GRIMORIE!
CreateThread(function()
    Wait(3000)
	local ped = PlayerPedId()
	while not IsEntityVisible(ped) or IsEntityPositionFrozen(ped) do Wait(0) end	
    local spells = exports.striano_combat:getSpellList()
    UpdateSpells(spells)
	-- REMOVE OR DISABLE SPELLS AT START!
	if RemoveAllAtStart then -- or GetResourceState('striano_core') ~= 'started' then
		for _, spell in pairs(spells) do
			if spell and spell.id ~= nil then
				RemoveSpell(spell.id)
			end
		end
	end
	TriggerServerEvent("spells:RequestMyList", GetPlayerServerId(PlayerId()))
    print(('[SpellInit] Loaded %d spells.'):format(#spells))
end)

exports('updateSpellCooldown', function(slot, valiu)
    local key = _normId(slot)
    -- print("[updateSpellCooldown] slot:", slot, "key:", key, "valiu:", valiu)
    if not key then -- print("[updateSpellCooldown] ERROR: _normId(slot) is nil for slot ", slot)
        return
    end
    if not PlayerData then --print("[updateSpellCooldown] ERRORE: PlayerData is nil")
        return
    end
    if not PlayerData.spells then -- print("[updateSpellCooldown] ERRORE: PlayerData.spells is nil")
        return
    end
    if not PlayerData.spells[key] then -- print("[updateSpellCooldown] ERRORE: PlayerData.spells[" .. tostring(key) .. "] is nil") -- PlayerData.spells[key] = { cooldown = 0 }
        return
    end

    PlayerData.spells[key].cooldown = valiu or 0
    SendNUIMessage({
        type = 'upgradeGrimoire',
        spells = CreateCleanSpells(),
    })
end)

function notify(text)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandThefeedPostTicker(true, false)
end

local infoGrim = 0
-- Export functions
function OpenGrimoire()
    if PlayerData.grimoireOpen or exports.striano_combat:menuCombatOpen() or IsNuiFocused() or exports.striano_editor:stopescando() then return end
	local ped = PlayerPedId()
    PlayerData.grimoireOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'openGrimoire',
        spells = CreateCleanSpells(),
        assignedSpells = CreateCleanAssignedSpells(),
        activeSpells = PlayerData.activeSpells,
        grimoireVisible = PlayerData.grimoireVisible,
        floatingSlotsEnabledAtStart = UISettings.floatingSlotsEnabledAtStart
    })
    faiAnim("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", -1, 49)
	if infoGrim < 3 then 
		infoGrim = infoGrim + 1
		if GetResourceState('striano_combat') == 'started' then
			exports.striano_combat:submexInfo("To cast a spell holdpress [mouse right] + [number] key assigned.")
		end
	end
    -- Play opening sound/animation
    PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
end

function CloseGrimoire()
    if not PlayerData.grimoireOpen then return end
	local ped = PlayerPedId()
    PlayerData.grimoireOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'closeGrimoire'
    })    
	exports.striano_combat:submex("")
    -- Play closing sound
    PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
	ClearPedSecondaryTask(ped)
	Wait(225)
	if not PlayerData.grimoireOpen then ClearPedTasks(ped) end
end

function ToggleGrimoireVisibility()
    PlayerData.grimoireVisible = not PlayerData.grimoireVisible
    SendNUIMessage({
        type = 'toggleVisibility',
        visible = PlayerData.grimoireVisible
    })
end

-- Spell management exports
function AddSpell(id)
    if id == nil then
        print('^1[Spell System] ^7Error: Invalid spell id provided to AddSpell')
        return false
    end

    local key = _normId(id)  -- 🔹 normalizza SEMPRE (stringa)
    PlayerData.spells          = PlayerData.spells or {}
    PlayerData.assignedSpells  = PlayerData.assignedSpells or {}

    -- prendi i dati della spell in sicurezza
    local ok, spellData = pcall(function()
        -- se l'export si aspetta numero, passiamogli tonumber
        return exports.striano_combat:getSpellList_ID(tonumber(key) or key)
    end)

    if not ok then
        print(('^1[Spell System] ^7Error fetching spell %s: %s'):format(key, tostring(spellData)))
        return false
    end

    if spellData == nil then
        print(('^3[Spell System] ^7This id %s spell does not exist in the list.'):format(key))
        return false
    end

    -- assicura coerenza del campo id dentro spellData (id numerico ok, ma key è la chiave string)
    if spellData.id == nil then
        -- se manca, imposta l'id “dati” coerente (usa numero se possibile)
        spellData.id = tonumber(key) or key
    end

    local existed = PlayerData.spells[key] ~= nil
    local prevDisabled = existed and PlayerData.spells[key].disabled or nil

    -- salva/aggiorna
    PlayerData.spells[key] = spellData

    -- NON toccare lo stato disabled se già esisteva (progressione)
    if prevDisabled ~= nil then
        PlayerData.spells[key].disabled = prevDisabled
    elseif PlayerData.spells[key].disabled == nil then
        -- se vuoi che di base le spell nuove siano disattive, metti true
        PlayerData.spells[key].disabled = false
    end

    -- aggiorna subito la UI (anche se il grimoire è chiuso) per riflettere disabled/assigned
    SendNUIMessage({
        type = 'updateSpells',
        spells = PlayerData.spells,
        assignedSpells = PlayerData.assignedSpells
    })
	
	if debugSpellOn then
		if existed then
			print(('^2[Spell System] ^7Updated spell: %s (%s)'):format(tostring(spellData.name or key), key))
		else
			print(('^2[Spell System] ^7Added spell: %s (%s)'):format(tostring(spellData.name or key), key))
		end
	end
	
    return true
end

function RemoveSpell(spellId)
    if not spellId then
        print('^1[Spell System] ^7Error: No spell ID provided to RemoveSpell')
        return false
    end

    local key = _normId(spellId)              -- 🔹 Normalizza l’ID
    PlayerData.spells         = PlayerData.spells or {}
    PlayerData.assignedSpells = PlayerData.assignedSpells or {}

    -- 🔹 Rimuovi prima dagli slot assegnati
    for slot, spell in pairs(PlayerData.assignedSpells) do
        if spell and _normId(spell.id) == key then
            PlayerData.assignedSpells[slot] = nil
        end
    end

    -- 🔹 Poi rimuovi dalla lista delle spell disponibili
    if PlayerData.spells[key] then
        PlayerData.spells[key] = nil
    else
        print(('^3[Spell System] ^7Spell %s not found in list'):format(key))
    end
	
	UnassignSpellById(spellId)

    -- 🔹 Invia sempre aggiornamento alla NUI (anche se il grimoire è chiuso)
    SendNUIMessage({
        type = 'updateSpells',
        spells = PlayerData.spells,
        assignedSpells = PlayerData.assignedSpells
    })

    print('^2[Spell System] ^7Removed spell: ' .. key)
    return true
end

function DisableSpell(spellId)
    if not spellId then
        print('^1[Spell System] ^7Error: No spell ID provided to DisableSpell')
        return false
    end

    local key = _normId(spellId)             -- <== usa SEMPRE la stringa
    PlayerData.spells        = PlayerData.spells or {}
    PlayerData.assignedSpells= PlayerData.assignedSpells or {}

    local sp = PlayerData.spells[key]
    if not sp then
        print(('^1[Spell System]^7 Spell %s non trovata'):format(key))
        return false
    end

    sp.disabled = true
	
	UnassignSpellById(spellId)
	
    -- 🔔 IMPORTANTE: invia SEMPRE l’update (non solo se il grimoire è aperto)
    SendNUIMessage({
        type = 'updateSpells',
        spells = PlayerData.spells,               -- include il flag disabled aggiornato
        assignedSpells = PlayerData.assignedSpells-- serve per aggiornare gli slot a destra
    })

    print('^3[Spell System] ^7Disabled spell: ' .. key)
    return true
end

function EnableSpell(spellId)
    if not spellId then
        print('^1[Spell System] ^7Error: No spell ID provided to EnableSpell')
        return false
    end

    local key = _normId(spellId)             -- 🔹 normalizza sempre a stringa
    PlayerData.spells        = PlayerData.spells or {}
    PlayerData.assignedSpells= PlayerData.assignedSpells or {}

    local sp = PlayerData.spells[key]
    if not sp then
        print(('^1[Spell System]^7 Spell %s non trovata'):format(key))
        return false
    end

    sp.disabled = nil  -- o false, se preferisci esplicito
    print('^2[Spell System] ^7Enabled spell: ' .. key)

    -- 🔹 Invia sempre l’update (anche se il grimoire non è aperto)
    SendNUIMessage({
        type = 'updateSpells',
        spells = PlayerData.spells,               -- include il flag aggiornato
        assignedSpells = PlayerData.assignedSpells-- serve per aggiornare gli slot flottanti
    })

    return true
end

function UnassignSpellById(spellId)
    if not spellId then return false end
    local key = _normId(spellId)

    PlayerData.assignedSpells = PlayerData.assignedSpells or {}
    for slot, spell in pairs(PlayerData.assignedSpells) do
        if spell and _normId(spell.id) == key then
            PlayerData.assignedSpells[slot] = nil
        end
    end

    SendNUIMessage({
        type = 'updateAssignedSpells',
        assignedSpells = CreateCleanAssignedSpells()
    })

    print(('^2[Spell System]^7 Unassigned spell %s from all slots.'):format(key))
    return true
end

-- Export the functions
exports('addSpell', AddSpell)
exports('removeSpell', RemoveSpell)
exports('disableSpell', DisableSpell)
exports('enableSpell', EnableSpell)
exports('openGrimoire', OpenGrimoire)
exports('closeGrimoire', CloseGrimoire)
exports('toggleGrimoireVisibility', ToggleGrimoireVisibility)
exports('resetAllSpells', ResetAllSpells)

local function _normSlot(slot)
    return tostring(slot)
end

exports('checkSpell', function(slot)
    if slot == nil then return false, nil end
    local s = PlayerData.assignedSpells[_normSlot(slot)]
    if not s or s.disabled then
        return false, nil
    end
    return true, s
end)

exports('getSpellIdBySlot', function(slot)
    if slot == nil then return false, nil end
    local s = PlayerData.assignedSpells[_normSlot(slot)]
    if not s or not s.id or s.disabled then
        return false, nil
    end
    return _normId(s.id)
end)

exports('castSpellBySlot', function(slot)
    if slot == nil then return false end
    local s = PlayerData.assignedSpells[_normSlot(slot)]
    if not s or not s.id or s.disabled then
        return false
    end
    return CastSpellGrimorie(_normId(s.id)) == true
end)

RegisterNetEvent('spells:loadAll', function(spellList)
    -- spellList = { -- WHAT I GET?
    --   { id = "NAME SPELL 1", enabled = true },
    --   { id = "NAME SPELL 2",     enabled = false },
    --   ...
    -- }
	
	if #spellList > 0 then 
		-- RESET SPELLS CAUSE THIS PLAYER HAVE TO LAOD SOMETHING!
		ResetAllSpells() -- Rimuovo quelle assegnate!
		for _, spell in pairs(PlayerData.spells) do
			if spell and spell.id ~= nil then
				RemoveSpell(spell.id)
			end
		end
	end
	
	Wait(500)
	
	-- HERE YOU CAN MANAGE ALL THE SPELLS GETTED FROM SERVER!
    for _, spell in ipairs(spellList) do
        local spellId = spell.id
        local enabled = spell.enabled
		AddSpell(spellId)
		Wait(0)
        if enabled then
            EnableSpell(spellId)
        else
            DisableSpell(spellId)
        end
    end
end)

RegisterNetEvent('spells:addSpell', function(spellId, adminName, spellListDB)
    -- ADD A SINGLE SPELL FROM ADMIN
	spellId = tonumber(spellId)
	print("You got Spell ID " ..  spellId .. " from admin: " ..  adminName)
	AddSpell(spellId)
	DisableSpell(spellId)
end)

RegisterNetEvent('spells:enableSpell', function(spellId, adminName, spellListDB)
    -- ADD A SINGLE SPELL FROM ADMIN
	spellId = tonumber(spellId)
	print("You get ENABLED Spell ID " ..  spellId .. " from admin: " ..  adminName)
	EnableSpell(spellId)
end)

RegisterNetEvent('spells:removeSpell', function(spellId, adminName, spellListDB)
    -- REMOVE A SPELL BY THE ADMIN
	spellId = tonumber(spellId)
	print("Spell ID " ..  spellId .. " REMOVED from admin: " ..  adminName)
	RemoveSpell(spellId)
end)

RegisterNetEvent('spells:disableSpell', function(spellId, adminName, spellListDB)
	spellId = tonumber(spellId)
    -- DISABLE A SPELL BY THE ADMIN
	print("Spell ID " ..  spellId .. " DISABLED from admin: " ..  adminName)
	DisableSpell(spellId)
end)

RegisterNetEvent('spells:clearAll', function(adminName)
    -- CLEAR ALL SPELLS BY ADMIN
	print("Your Grimorie Spells is Cleared by admin: " ..  adminName)
	ResetAllSpells() -- Rimuovo quelle assegnate!
	for _, spell in pairs(PlayerData.spells) do
		if spell and spell.id ~= nil then
			RemoveSpell(spell.id)
		end
	end
end)

-- MENU MANAGER
function SpellAdder(NameOfPlayer, PL, spells, DBSpells)
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("➕ Add in " .. NameOfPlayer .. " spells.", function() end, false)
	
	exports['striano_fastmenu']:addMenuItem("[ ❌​ SPELL REMOVER ]", function() SpellRemover(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ 🔓 SPELL ENABLER ]", function() SpellEnabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ 🔒​ SPELL DISABLER ]", function() SpellDisabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("‎ ", function() end, false)
	
	local totSpells = 0
	for _, spell in pairs(spells) do
        if spell and spell.id ~= nil then
            local entry = DBSpells[spell.id]
            if not entry then
                totSpells = totSpells+1
				exports['striano_fastmenu']:addMenuItem(
                    "➕​ " .. spell.name .. " (ID: " .. spell.id .. ")",
                    function()
                        ExecuteCommand("giveSpell " .. PL .. " " .. spell.id)
						TriggerServerEvent('spells:RequestManagerMenu', PL, "adder")
                    end,
                    false
                )
            end
        end
    end
	if totSpells == 0 then 
		exports['striano_fastmenu']:addMenuItem("No spells found to add!", function() end, false)
	end
	exports['striano_fastmenu']:openMenu()
end

function SpellEnabler(NameOfPlayer, PL, spells, DBSpells)
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("🔓 Enable " .. NameOfPlayer .. " spells.", function() end, false)
	
	exports['striano_fastmenu']:addMenuItem("[ ❌​ SPELL REMOVER ]", function() SpellRemover(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ ➕​ SPELL ADDER ]", function() SpellAdder(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ 🔒​ SPELL DISABLER ]", function() SpellDisabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("‎ ", function() end, false)
	
	local totSpells = 0
	for _, spell in pairs(spells) do
        if spell and spell.id ~= nil then
            local entry = DBSpells[spell.id]
            if entry and entry.enabled == false then
                totSpells = totSpells+1
			    exports['striano_fastmenu']:addMenuItem(
                    "🔓 " .. spell.name .. " (ID: " .. spell.id .. ")",
                    function()
                        ExecuteCommand("enableSpell " .. PL .. " " .. spell.id)
						TriggerServerEvent('spells:RequestManagerMenu', PL, "enabler")
                    end,
                    false
                )
            end
        end
    end
	if totSpells == 0 then 
		exports['striano_fastmenu']:addMenuItem("No spells found to enable!", function() end, false)
	end
end

function SpellDisabler(NameOfPlayer, PL, spells, DBSpells)
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("🔒​ Disable in " .. NameOfPlayer .. " spells.", function() end, false)
	
	exports['striano_fastmenu']:addMenuItem("[ ❌​ SPELL REMOVER ]", function() SpellRemover(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ 🔓 SPELL ENABLER ]", function() SpellEnabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ ➕ SPELL ADDER ]", function() SpellAdder(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("‎ ", function() end, false)
	
	local totSpells = 0
	for _, spell in pairs(spells) do
        if spell and spell.id ~= nil then
            local entry = DBSpells[spell.id]
            if entry and entry.enabled == true then
				totSpells = totSpells+1
                exports['striano_fastmenu']:addMenuItem(
                    "🔒 " .. spell.name .. " (ID: " .. spell.id .. ")",
                    function()
                        ExecuteCommand("disableSpell " .. PL .. " " .. spell.id)
						TriggerServerEvent('spells:RequestManagerMenu', PL, "disabler")
                    end,
                    false
                )
            end
        end
    end
	if totSpells == 0 then 
		exports['striano_fastmenu']:addMenuItem("No spells found to disable!", function() end, false)
	end
end

function SpellRemover(NameOfPlayer, PL, spells, DBSpells)
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("❌​ Remove form " .. NameOfPlayer .. " spells.", function() end, false)
	
	exports['striano_fastmenu']:addMenuItem("[ 🔒​ SPELL DISABLER ]", function() SpellDisabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ 🔓 SPELL ENABLER ]", function() SpellEnabler(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("[ ➕ SPELL ADDER ]", function() SpellAdder(NameOfPlayer, PL, spells, DBSpells) end, false)
	exports['striano_fastmenu']:addMenuItem("‎ ", function() end, false)
	
	local totSpells = 0
	for _, spell in pairs(spells) do
        if spell and spell.id ~= nil then
            local entry = DBSpells[spell.id]
            if entry then
				totSpells = totSpells+1
                exports['striano_fastmenu']:addMenuItem(
                    "❌​ " .. spell.name .. " (ID: " .. spell.id .. ")",
                    function()
                        ExecuteCommand("removeSpell " .. PL .. " " .. spell.id)
						TriggerServerEvent('spells:RequestManagerMenu', PL, "remover")
                    end,
                    false
                )
            end
        end
    end
	if totSpells == 0 then 
		exports['striano_fastmenu']:addMenuItem("No spells found to remove!", function() end, false)
	end
end

-- USEFUL FOR EXAMPLE AFTER A TUTORIAL?
-- =========================
-- GIVE + ENABLE ALL SPELLS (FIRE & FORGET)
-- =========================

local _giveAllThreadRunning = false

local function _isReady()
    if GetResourceState('striano_combat') ~= 'started' then return false end
    if not PlayerData then return false end
    if not PlayerData.spells then PlayerData.spells = {} end
    if not PlayerData.assignedSpells then PlayerData.assignedSpells = {} end

    local spells = exports.striano_combat:getSpellList()
    return spells and #spells > 0
end

local function _giveAllInternal()
    local spells = exports.striano_combat:getSpellList()
    if not spells then return end

    local count = 0
    for _, spell in pairs(spells) do
        if spell and spell.id ~= nil then
            AddSpell(spell.id)
            EnableSpell(spell.id)
            count = count + 1
            Wait(0)
        end
    end

    SendNUIMessage({
        type = 'updateSpells',
        spells = PlayerData.spells,
        assignedSpells = PlayerData.assignedSpells
    })

    print(('^2[striano_combat]^7 %d Spells enabled'):format(count))
end

function GiveAllSpellsAndEnable()
    if _giveAllThreadRunning then return end
    _giveAllThreadRunning = true

    CreateThread(function()
        local timeout = GetGameTimer() + 15000 -- 15 secondi max

        while not _isReady() do
            if GetGameTimer() > timeout then
                print('^1[Spells manager]^7 Timeout: spells manager not yet ready.')
                _giveAllThreadRunning = false
                return
            end
            Wait(100)
        end

        _giveAllInternal()
        _giveAllThreadRunning = false
    end)
end

exports('giveAllSpellsAndEnable', GiveAllSpellsAndEnable)
