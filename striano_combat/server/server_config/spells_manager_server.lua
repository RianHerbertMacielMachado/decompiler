-- Prima di tutto: json e nome resource
json = json or require('json')
local RESOURCE_NAME = GetCurrentResourceName()

-- HEY WARNING, THIS VARIABLE IT'S FOR TEST PURPOSE, REMEMBER TO SET true IN YOU MAIN SERVER!
allAdmins = false -- ALL PLAYERS ARE ADMIN? PLEASE PUT TO FALSE THIS AND SET YOU AS ADMIN IN admins.json!

AddEventHandler('playerJoining', function()
    local src = source
    local spells = GetPlayerSpellList(src) -- errore qui?

    if spells and #spells > 0 then
        -- print(('[SPELLS] %s have %d spells.'):format(src, #spells))
        TriggerClientEvent('spells:loadAll', src, spells)
    -- else
        -- print(('[SPELLS] %s has no spells!'):format(src))
    end
end)

function normId(id)
    if not id or id == '' then return nil end
    id = string.lower(id):gsub('%s+', '')
    if id:match('^1100001%x+$') and not id:find('^steam:') then id = 'steam:' .. id end
    if (id:match('^[0-9a-f]+$')) and not id:find(':') then id = 'license:' .. id end
    if not (id:find('^license:') or id:find('^steam:')) then return nil end
    return id
end

function getIds(src)
    local ids = {}
    for _, id in ipairs(GetPlayerIdentifiers(src)) do
        ids[#ids+1] = string.lower(id)
    end
    return ids
end

function reply(src, msg)
    if src == 0 then
        print('[SPELLS] ' .. msg)
    else
        TriggerClientEvent('combat:notify', src, msg) -- CHANGE WITH YOUR NOTIFY SYSTEM!
    end
end

function replyPrint(src, msg)
    if src == 0 then
        print('[SPELLS] ' .. msg)
    else
        TriggerClientEvent('combat:notifyPrint', src, msg)
    end
end

exports("GiveAllSpells", function(targetSrc)
    targetSrc = tonumber(targetSrc)
    if not targetSrc or not GetPlayerName(targetSrc) then
        return false, "invalid target"
    end

    TriggerClientEvent("spells:giveAllAndEnable", targetSrc)
    return true
end)

-- Percorsi file
SPELLS_PATH = 'spells.json'
ADM_PATH    = 'admins.json'

-- Funzioni JSON
function readJson(path)
    local raw = LoadResourceFile(RESOURCE_NAME, path)
    if not raw or raw == '' then return {} end
    local ok, data = pcall(json.decode, raw)
    if not ok or type(data) ~= 'table' then
        print(('[STORE] %s broken, creating-new. Err: %s'):format(path, tostring(data)))
        return {}
    end
    return data
end

function writeJson(path, tbl)
    local raw = json.encode(tbl or {})
    SaveResourceFile(RESOURCE_NAME, path, raw, #raw)
end

-- Carico i DB
SPELLS = readJson(SPELLS_PATH) or {}
ADMINS = readJson(ADM_PATH) or {}

function isAdmin(src) -- If player is in admins.json!
    if src == 0 then return true, "console" end -- From console ever admin!
	if GetResourceState('striano_core') == 'started' then return true, src end -- If you are in my server test you are ever admin!
	if allAdmins then return true, src end
    for _, id in ipairs(getIds(src)) do
        if ADMINS[id] then return true, id end
    end
    return false, nil
end

-- Normalizzazione DB spell (enabled)
local function normalizeSpellDb()
    for identifier, spellSet in pairs(SPELLS) do
        if type(spellSet) ~= "table" then
            SPELLS[identifier] = {}
        else
            for spellId, val in pairs(spellSet) do
                if type(val) ~= "table" then
                    spellSet[spellId] = { enabled = val and true or false }
                else
                    if val.enabled == nil then
                        val.enabled = true
                    end
                end
            end
        end
    end
end

local function saveSpells()
    writeJson(SPELLS_PATH, SPELLS)
end

RegisterCommand("deleteSpellPlayer",function(src,args)
	if not isAdmin or not isAdmin(src) then return reply(src,"Not a valid permission.") end

	local identifier=normId(args[1])
	if not identifier then return reply(src,"/deleteSpellPlayer <license:/steam:>") end

	if not SPELLS[identifier] then
		return reply(src,"Player not found in spells.json.")
	end

	SPELLS[identifier]=nil
	saveSpells()

	reply(src,("Player %s removed from spells.json."):format(identifier))
end)

-- Applico normalizzazione e salvo
normalizeSpellDb()
saveSpells()

-- Prende un identifier normalizzato da un player (server id)
local function getIdentifierFromSrc(src)
    local ids = GetPlayerIdentifiers(src)
    if not ids or #ids == 0 then return nil end
    -- usa il primo, puoi cambiarlo per usare sempre license:/steam: ecc.
    return normId(ids[1])
end

-- ottiene (spellSet, identifier) per quel player
-- spellSet: table tipo { ["fireball"] = { enabled = true }, ... }
local function getSpellSetForSrc(src, createIfMissing)
    local identifier = getIdentifierFromSrc(src)
    if not identifier then return nil, nil end
    if not SPELLS[identifier] and createIfMissing then
        SPELLS[identifier] = {}
    end
    return SPELLS[identifier], identifier
end

-- assicura che esista l'entry per una spell specifica
local function ensureSpellEntry(spellSet, spellId)
    if not spellSet[spellId] then
        spellSet[spellId] = { enabled = true }
    elseif spellSet[spellId].enabled == nil then
        spellSet[spellId].enabled = true
    end
    return spellSet[spellId]
end

-- Ritorna TUTTE le spell, con info enabled
local function spellSetToFullList(spellSet)
    local list = {}
    if not spellSet then return list end
    for spellId, data in pairs(spellSet) do
        if type(data) ~= "table" then
            data = { enabled = data and true or false }
        end
        list[#list+1] = {
            id = spellId,
            enabled = (data.enabled ~= false)
        }
    end
    return list
end

function GetPlayerSpellList(src)
    local spellSet = select(1, getSpellSetForSrc(src, false))
    return spellSetToFullList(spellSet)
end

-- /givespell <playerID> <spellID>
-- Se la spell NON esiste -> la crea e la abilita
-- Se esiste ma disabilitata -> la RIABILITA
-- Se esiste ed è già abilitata -> messaggio "ce l'ha già"
RegisterCommand('givespell', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    local spellId = args[2]

    if not target or not GetPlayerName(target) or not spellId then
        return reply(src, '/givespell <playerID> <spellID>')
    end

    local spellSet, identifier = getSpellSetForSrc(target, true)
    if not identifier then
        return reply(src, 'Identifier player not found.')
    end

    spellId = tostring(spellId)
    local entry = spellSet[spellId]

    if entry then
        reply(src, ('%s already have spell %s.'):format(GetPlayerName(target), spellId))
        reply(target, ('You already have the spell %s.'):format(spellId))
        return
    end

    -- crea o riattiva
    entry = ensureSpellEntry(spellSet, spellId)
    entry.enabled = false
    saveSpells()

    reply(src, ('Spell %s gived to %s (%s).'):format(spellId, GetPlayerName(target), identifier))
    reply(target, ('You get Spell %s, disable as default.'):format(spellId))

    TriggerClientEvent('spells:addSpell', target, spellId, GetPlayerName(src), SPELLS[identifier])
end)

-- /removeSpell <playerID> <spellID>
-- RIMUOVE definitivamente la spell dal JSON
RegisterCommand('removeSpell', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    local spellId = args[2]

    if not target or not GetPlayerName(target) or not spellId then
        return reply(src, '/removeSpell <playerID> <spellID>')
    end

    local spellSet, identifier = getSpellSetForSrc(target, false)
    if not identifier or not spellSet then
        return reply(src, 'This player has no spells in list.')
    end

    spellId = tostring(spellId)

    if not spellSet[spellId] then
        return reply(src, ('Spell %s not found in grimorie of %s.'):format(spellId, GetPlayerName(target)))
    end

    spellSet[spellId] = nil
    saveSpells()

    reply(src, ('Spell %s Removed from grimorie of %s (%s).'):format(spellId, GetPlayerName(target), identifier))
    reply(target, ('Spell %s removed from your grimorie.'):format(spellId))

    -- lato client: rimuovi singola spell
    TriggerClientEvent('spells:removeSpell', target, spellId, GetPlayerName(src), SPELLS[identifier])
end)

-- /disableSpell <playerID> <spellID>
-- NON la cancella, la mette solo enabled = false
RegisterCommand('disableSpell', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    local spellId = args[2]

    if not target or not GetPlayerName(target) or not spellId then
        return reply(src, '/disableSpell <playerID> <spellID>')
    end

    local spellSet, identifier = getSpellSetForSrc(target, false)
    if not identifier or not spellSet then
        return reply(src, 'No spells found for this player.')
    end

    spellId = tostring(spellId)
    local entry = spellSet[spellId]
    if not entry then
        return reply(src, (' %s has no spell called %s.'):format(GetPlayerName(target), spellId))
    end

    if entry.enabled == false then
        return reply(src, ('Spell %s is already disable for %s.'):format(spellId, GetPlayerName(target)))
    end

    entry.enabled = false
    saveSpells()

    reply(src, ('You disable the spell %s for  %s (%s).'):format(spellId, GetPlayerName(target), identifier))
    reply(target, ('Spell ID %s disabled from your grimorie.'):format(spellId))

    TriggerClientEvent('spells:disableSpell', target, spellId, GetPlayerName(src), SPELLS[identifier])
end)

-- /enableSpell <playerID> <spellID>
RegisterCommand('enableSpell', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    local spellId = args[2]

    if not target or not GetPlayerName(target) or not spellId then
        return reply(src, '/enableSpell <playerID> <spellID>')
    end

    local spellSet, identifier = getSpellSetForSrc(target, true)
    if not identifier or not spellSet then
        return reply(src, 'Spell not exist.')
    end

    spellId = tostring(spellId)
    local entry = ensureSpellEntry(spellSet, spellId)

    if entry.enabled ~= false and entry.enabled ~= nil then
        return reply(src, ('Spell %s already enabled for %s.'):format(spellId, GetPlayerName(target)))
    end

    entry.enabled = true
    saveSpells()

    reply(src, ('Spell %s enabled for %s (%s).'):format(spellId, GetPlayerName(target), identifier))
    reply(target, ('Spell %s enabled.'):format(spellId))

    TriggerClientEvent('spells:enableSpell', target, spellId, GetPlayerName(src), SPELLS[identifier])
end)

-- /clearSpells <playerID>
-- Cancella TUTTE le spell di quel player (anche le disabilitate)
RegisterCommand('clearSpells', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    if not target or not GetPlayerName(target) then
        return reply(src, '/clearSpells <playerID>')
    end

    local spellSet, identifier = getSpellSetForSrc(target, false)
    if not identifier or not spellSet then
        -- return reply(src, 'This player has not spells in grimorie.')
	else
		-- Modifico solo se ha spells!
		SPELLS[identifier] = nil
		saveSpells()
    end

    reply(src, ('You clear the grimorie of %s (%s).'):format(GetPlayerName(target), identifier))
    reply(target, 'Your grimorie is cleared now.')

    -- lato client: clear totale
    TriggerClientEvent('spells:clearAll', target, GetPlayerName(src))
end)

local function buildClientSpellState(identifier)
    local set = SPELLS[identifier]
    local out = {}

    if type(set) ~= "table" then
        return out
    end

    for spellKey, data in pairs(set) do
        local id = tonumber(spellKey)
        if id then
            if type(data) ~= "table" then
                data = { enabled = data and true or false }
            end
            out[id] = {
                enabled = (data.enabled ~= false)
            }
        end
    end

    return out
end

RegisterCommand('editspells', function(src, args)
    if not isAdmin or not (isAdmin(src)) then
        return reply(src, 'Not a valid permission.')
    end

    local target = tonumber(args[1])
    if not target or not GetPlayerName(target) then
        return reply(src, '/editspells <playerID>')
    end
	
	local identifier = getIdentifierFromSrc(target)
	local clientSpells = buildClientSpellState(identifier)
	TriggerClientEvent('spells:ManagerGiveSpells', src, GetPlayerName(target), target, clientSpells)
end)

RegisterNetEvent('spells:RequestManagerMenu', function(target, tipo)
    local src = source
    if not isAdmin or not isAdmin(src) then return end

    if not target or not GetPlayerName(target) then return end

    local identifier = getIdentifierFromSrc(target)
    local clientSpells = buildClientSpellState(identifier)

    TriggerClientEvent('spells:ManagerGiveSpells', src, GetPlayerName(target), target, clientSpells, tipo)
end)

RegisterNetEvent('spells:RequestMyList', function(target)
    local spells = GetPlayerSpellList(target)
	if spells and #spells > 0 then
		TriggerClientEvent('spells:loadAll', target, spells)
	end
end)

CreateThread(function()
	-- COMMENTATO PERCHE ALLA FINE RICHIEDONO STESSO I CLIENT LE LORO SPELL!
	--[[
	Wait(1000)
	for _, id in ipairs(GetPlayers()) do
		local src = tonumber(id)
		if src then
			local spells = GetPlayerSpellList(src)
			if spells and #spells > 0 then
				-- print(('[SPELLS] Reload -> %s has %d spells.'):format(src, #spells))
				TriggerClientEvent('spells:loadAll', src, spells)
			end
		end
	end
    local nPlayers = 0
    local nSpells = 0
    for _, spellSet in pairs(SPELLS) do
        nPlayers = nPlayers + 1
        for _, data in pairs(spellSet) do
            nSpells = nSpells + 1
        end
    end
    print(('[SPELLS] Loaded %d players / %d spells entries from %s'):format(nPlayers, nSpells, SPELLS_PATH))
	]]
end)
