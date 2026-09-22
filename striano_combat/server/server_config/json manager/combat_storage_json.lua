local COMBAT_FILE="combat_players.json"

CombatStorage={}
CombatStorage.Data={}
CombatStorage.Corrupted=false

local function DefaultCombatData()
	return {
		style=1,
		shield=0,
		sword=0,
		bow=0,
		list={}
	}
end

local function LoadCombatData()
	local raw=LoadResourceFile(GetCurrentResourceName(),COMBAT_FILE)

	if not raw or raw=="" then
		CombatStorage.Data={}

		local saved=SaveResourceFile(
			GetCurrentResourceName(),
			COMBAT_FILE,
			"{}",
			2
		)

		if not saved then
			print("^1[COMBAT STORAGE]^7 Impossible to create "..COMBAT_FILE)
			return false
		end

		print("^2[COMBAT STORAGE]^7 "..COMBAT_FILE.." creation complete.")
		return true
	end

	local ok,data=pcall(json.decode,raw)

	if not ok or type(data)~="table" then
		CombatStorage.Corrupted=true
		print("^1[COMBAT STORAGE]^7 "..COMBAT_FILE.." corrupted...")
		return false
	end

	CombatStorage.Data=data

	-- print("^2[COMBAT STORAGE]^7 "..COMBAT_FILE.." loaded.")
	return true
end

function CombatStorage.Save()
	if CombatStorage.Corrupted then
		print("^1[COMBAT STORAGE]^7 File json corrupted.")
		return false
	end

	local ok,raw=pcall(json.encode,CombatStorage.Data)

	if not ok or type(raw)~="string" or raw=="" then
		print("^1[COMBAT STORAGE]^7 Errore json.encode.")
		return false
	end

	if raw:find("%z") then
		-- print("^1[COMBAT STORAGE]^7 Byte NUL rilevato. Salvataggio annullato.")
		return false
	end

	local saved=SaveResourceFile(
		GetCurrentResourceName(),
		COMBAT_FILE,
		raw,
		#raw
	)

	if not saved then
		print("^1[COMBAT STORAGE]^7 Json save failed!")
		return false
	end

	return true
end

function CombatStorage.Get(identifier)
	if type(identifier)~="string" or identifier=="" then
		return nil
	end

	return CombatStorage.Data[identifier]
end

function CombatStorage.Ensure(identifier)
	if type(identifier)~="string" or identifier=="" then
		return nil
	end

	if type(CombatStorage.Data[identifier])~="table" then
		CombatStorage.Data[identifier]=DefaultCombatData()
	end

	local data=CombatStorage.Data[identifier]

	data.style=tonumber(data.style) or 1
	data.shield=tonumber(data.shield) or 0
	data.sword=tonumber(data.sword) or 0
	data.bow=tonumber(data.bow) or 0

	if type(data.list)~="table" then
		data.list={}
	end

	return data
end

function CombatStorage.Set(identifier,style,shield,sword,list,bow)
	if type(identifier)~="string" or identifier=="" then
		return false
	end

	CombatStorage.Data[identifier]={
		style=tonumber(style) or 1,
		shield=tonumber(shield) or 0,
		sword=tonumber(sword) or 0,
		bow=tonumber(bow) or 0,
		list=type(list)=="table" and list or {}
	}

	return CombatStorage.Save()
end

function CombatStorage.Delete(identifier)
	if type(identifier)~="string" or identifier=="" then
		return false
	end

	if CombatStorage.Data[identifier]==nil then
		return true
	end

	CombatStorage.Data[identifier]=nil
	return CombatStorage.Save()
end

function CombatStorage.GetAll()
	return CombatStorage.Data
end

exports("DeletePlayerCombatData",function(identifier)
	return CombatStorage.Delete(identifier)
end)

CreateThread(function()
	LoadCombatData()
end)

-- STORAGE COMBAT DATA
function SaveCombatData(src,style,shield,sword,list,bow)
	local owner=identOf(src)
	if not owner then return false end

	style=tonumber(style) or 1
	shield=tonumber(shield) or 0
	sword=tonumber(sword) or 0
	bow=tonumber(bow) or 0
	list=type(list)=="table" and list or {}

	return CombatStorage.Set(
		owner,
		style,
		shield,
		sword,
		list,
		bow
	)
end

RegisterServerEvent('getCombatList')
AddEventHandler('getCombatList',function()
	local src=source
	local identifier=identOf(src)
	if not identifier then
		print("^1[COMBAT LOAD]^7 IDENTIFIER NOT FOUND FOR ID:",src)
		return
	end
	local data=CombatStorage.Ensure(identifier)
	if not data then
		print("^1[COMBAT LOAD]^7 FAILED TO LOAD IDENTIFIER:",identifier)
		return
	end
	CombatStorage.Save()
	-- print("^2[COMBAT LOAD]^7",identifier,"sword:",data.sword,"shield:",data.shield,"style:",data.style,"bow:",data.bow)
	TriggerClientEvent("getBackCombatList",src,data.list or {},data.style or 1,data.shield or 0,data.sword or 0,data.bow or 0)
end)