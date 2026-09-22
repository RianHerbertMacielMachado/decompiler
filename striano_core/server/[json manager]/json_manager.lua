JsonStorage={}
UserData={}

local Cache={}
local Dirty={}
local Corrupted={}

-- =========================================================
-- JSON STORAGE
-- =========================================================

local function normalizeName(name)
	name=tostring(name or "")
	if name=="" then return nil end
	if not name:match("%.json$") then name=name..".json" end
	return name
end

local function decodeJson(raw)
	if type(raw)~="string" or raw=="" then return nil end

	local ok,data=pcall(json.decode,raw)
	if not ok or type(data)~="table" then return nil end

	return data
end

local function encodeJson(data)
	local ok,raw=pcall(json.encode,data)

	if not ok or type(raw)~="string" or raw=="" or raw:find("%z") then
		return nil
	end

	return raw
end

local function writeFile(name,raw)
	if type(raw)~="string" or raw=="" then return false end

	SaveResourceFile(GetCurrentResourceName(),name,raw,#raw)

	local check=LoadResourceFile(GetCurrentResourceName(),name)

	if type(check)~="string" then
		print(("^1[JSON STORAGE]^7 Impossibile rileggere: ^5%s^7"):format(name))
		return false
	end

	if check~=raw then
		print(("^1[JSON STORAGE]^7 Verifica scrittura fallita: ^5%s^7"):format(name))
		return false
	end

	return true
end

local function createBackup(name)
	local oldRaw=LoadResourceFile(GetCurrentResourceName(),name)
	if not oldRaw then return true end

	-- Non creiamo mai un backup partendo da un JSON corrotto.
	if not decodeJson(oldRaw) then
		print(("^3[JSON STORAGE]^7 Backup saltato, file attuale non valido: ^5%s^7"):format(name))
		return false
	end

	SaveResourceFile(GetCurrentResourceName(),name..".bak",oldRaw,#oldRaw)

	local check=LoadResourceFile(GetCurrentResourceName(),name..".bak")

	if check~=oldRaw then
		print(("^3[JSON STORAGE]^7 Verifica backup fallita: ^5%s.bak^7"):format(name))
		return false
	end

	return true
end

function JsonStorage.Load(name,default)
	name=normalizeName(name)
	if not name then return nil end

	if Cache[name]~=nil then
		return Cache[name]
	end

	default=default or {}

	local raw=LoadResourceFile(GetCurrentResourceName(),name)

	-- File inesistente
	if not raw then
		local encoded=encodeJson(default)

		if not encoded then
			print(("^1[JSON STORAGE]^7 Impossibile creare: ^5%s^7"):format(name))
			return nil
		end

		Cache[name]=default
		Dirty[name]=false
		Corrupted[name]=false

		if not writeFile(name,encoded) then
			Dirty[name]=true
			print(("^1[JSON STORAGE]^7 Creazione fallita: ^5%s^7"):format(name))
		else
			print(("[JSON STORAGE] Nuovo file creato: %s"):format(name))
		end

		return Cache[name]
	end

	-- File valido
	local data=decodeJson(raw)

	if data then
		Cache[name]=data
		Dirty[name]=false
		Corrupted[name]=false
		return Cache[name]
	end

	print(("^1[JSON STORAGE]^7 File corrotto: ^5%s^7"):format(name))

	-- Tentativo recupero backup
	local backupRaw=LoadResourceFile(GetCurrentResourceName(),name..".bak")
	local backupData=decodeJson(backupRaw)

	if backupData then
		print(("^3[JSON STORAGE]^7 Backup recuperato: ^5%s.bak^7"):format(name))

		Cache[name]=backupData
		Dirty[name]=true
		Corrupted[name]=false

		return Cache[name]
	end

	-- Originale + backup corrotti.
	-- Manteniamo una cache vuota ma BLOCCATA:
	-- nessun salvataggio potrà sovrascrivere i file.
	Cache[name]=default
	Dirty[name]=false
	Corrupted[name]=true

	print(("^1[JSON STORAGE]^7 ERRORE: %s e backup non recuperabili. SALVATAGGIO BLOCCATO.^7"):format(name))

	return Cache[name]
end

function JsonStorage.Get(name)
	name=normalizeName(name)
	if not name then return nil end

	if Cache[name]==nil then
		return JsonStorage.Load(name,{})
	end

	return Cache[name]
end

function JsonStorage.MarkDirty(name)
	name=normalizeName(name)
	if not name then return false end
	if Corrupted[name] then return false end
	if Cache[name]==nil then return false end

	Dirty[name]=true
	return true
end

function JsonStorage.IsDirty(name)
	name=normalizeName(name)
	if not name then return false end

	return Dirty[name]==true
end

function JsonStorage.IsCorrupted(name)
	name=normalizeName(name)
	if not name then return true end

	return Corrupted[name]==true
end

function JsonStorage.Save(name)
	name=normalizeName(name)
	if not name then return false end

	if Corrupted[name] then
		print(("^1[JSON STORAGE]^7 Salvataggio bloccato, file corrotto: ^5%s^7"):format(name))
		return false
	end

	local data=Cache[name]

	if data==nil then
		print(("^1[JSON STORAGE]^7 Cache inesistente: ^5%s^7"):format(name))
		return false
	end

	local raw=encodeJson(data)

	if not raw then
		print(("^1[JSON STORAGE]^7 Errore json.encode: ^5%s^7"):format(name))
		return false
	end

	-- Prima salviamo il vecchio file valido nel .bak.
	-- Se il backup fallisce NON tocchiamo il file principale.
	if not createBackup(name) then
		print(("^1[JSON STORAGE]^7 Salvataggio annullato: backup fallito per ^5%s^7"):format(name))
		return false
	end

	-- Scrittura + verifica reale tramite rilettura.
	if not writeFile(name,raw) then
		print(("^1[JSON STORAGE]^7 Salvataggio fallito: ^5%s^7"):format(name))
		return false
	end

	Dirty[name]=false
	return true
end

function JsonStorage.Flush(name)
	name=normalizeName(name)
	if not name then return false end

	if not Dirty[name] then
		return true
	end

	return JsonStorage.Save(name)
end

function JsonStorage.FlushAll()
	local success=true

	for name,isDirty in pairs(Dirty) do
		if isDirty and not JsonStorage.Save(name) then
			success=false
		end
	end

	return success
end

-- =========================================================
-- USERS.JSON
-- =========================================================

local USER_FILE="users.json"
local Users=JsonStorage.Load(USER_FILE,{})

local function DefaultUser(identifier)
	return {
		identifier=identifier,
		firstname=nil,
		sex=nil,
		position=nil,
		mytutorial=nil,
		phone_number=nil,
		playtime=0,
		giacca=nil,
		legacy_outfits={},
		keys={},
		sim={},
		vehicles={},
		skin=nil,
		ped="none",
		myskinped="none",
		status={}
	}
end

function UserData.Exists(identifier)
	if not identifier then return false end
	return Users[identifier]~=nil
end

function UserData.Reload()
	local raw=LoadResourceFile(GetCurrentResourceName(),USER_FILE)
	if not raw then
		print("^1[USER DATA]^7 Impossibile rileggere users.json")
		return false
	end

	local data=decodeJson(raw)
	if not data then
		print("^1[USER DATA]^7 Reload users.json fallito: JSON non valido")
		return false
	end

	Users=data
	Cache[USER_FILE]=data
	Dirty[USER_FILE]=false
	Corrupted[USER_FILE]=false

	return true
end

function UserData.Get(identifier)
	if not identifier then return nil end
	return Users[identifier]
end

function UserData.Create(identifier)
	if not identifier or identifier=="" then return nil,false end
	if Users[identifier] then return Users[identifier],false end

	Users[identifier]=DefaultUser(identifier)

	if not JsonStorage.MarkDirty(USER_FILE) then
		Users[identifier]=nil
		return nil,false
	end

	return Users[identifier],true
end

function UserData.GetOrCreate(identifier)
	if not identifier or identifier=="" then return nil,false end

	if UserData.Exists(identifier) then
		return Users[identifier],false
	end

	return UserData.Create(identifier)
end

function UserData.GetValue(identifier,key)
	if not identifier or not key then return nil end

	local user=Users[identifier]
	if not user then return nil end

	return user[key]
end

function UserData.SetValue(identifier,key,value)
	if not identifier or not key then return false end

	local user=Users[identifier]
	if not user then return false end

	local oldValue=user[key]
	user[key]=value

	if not JsonStorage.MarkDirty(USER_FILE) then
		user[key]=oldValue
		return false
	end

	return true
end

function UserData.Save()
	if not UserData.IsStorageValid() then
		print("^1[USER DATA]^7 users.json corrotto. Salvataggio BLOCCATO.")
		return false
	end

	if not JsonStorage.MarkDirty(USER_FILE) then
		return false
	end

	return JsonStorage.Save(USER_FILE)
end

function UserData.Delete(identifier)
	if not identifier or identifier=="" then return false end

	local user=Users[identifier]
	if not user then return false end

	if not UserData.IsStorageValid() then
		print("^1[USER DATA]^7 Delete bloccato: users.json corrotto.")
		return false
	end

	Users[identifier]=nil
	JsonStorage.MarkDirty(USER_FILE)

	-- Salvataggio immediato perché una cancellazione
	-- non deve aspettare l'autosave.
	if JsonStorage.Save(USER_FILE) then
		return true
	end

	-- Se la scrittura fallisce ripristiniamo la RAM.
	Users[identifier]=user
	JsonStorage.MarkDirty(USER_FILE)

	print(("^1[USER DATA]^7 Delete fallito, rollback RAM: %s"):format(identifier))
	return false
end

function UserData.GetAll()
	return Users
end

function UserData.IsStorageValid()
	return not JsonStorage.IsCorrupted(USER_FILE)
end

-- =========================================================
-- EXPORTS
-- =========================================================

exports("GetAllValidUsers",function()
	local valid={}

	if not UserData.IsStorageValid() then
		return nil
	end

	for identifier in pairs(Users) do
		if type(identifier)=="string" and identifier~="" then
			valid[identifier]=true
		end
	end

	return valid
end)

-- =========================================================
-- DELETE USER - CONSOLE ONLY
-- =========================================================

RegisterCommand("deleteuser",function(source,args)
	if source~=0 then
		print("COMMAND AVAILABLE ONLY FROM CONSOLE.")
		return
	end

	local identifier=args[1]

	if not identifier or identifier=="" then
		print("USAGE: deleteuser license:xxxxxxxxxxxxxxxx")
		return
	end

	if not UserData.Exists(identifier) then
		print(("USER LICENSE NOT FOUND: ^5%s^7"):format(identifier))
		return
	end

	if not UserData.IsStorageValid() then
		print("FILE JSON USERS CORRUPTED.")
		return
	end

	if UserData.Delete(identifier) then
		print(("^2USER DELETED:^7 ^5%s^7"):format(identifier))
	else
		print(("^1ERROR WHILE DELETING:^7 ^5%s^7"):format(identifier))
	end
end,false)

-- =========================================================
-- AUTOSAVE
-- =========================================================

CreateThread(function()
	while true do
		Wait(60000)
		JsonStorage.FlushAll()
	end
end)

-- =========================================================
-- RESOURCE STOP
-- =========================================================

AddEventHandler("onResourceStop",function(resource)
	if resource~=GetCurrentResourceName() then return end
	JsonStorage.FlushAll()
end)