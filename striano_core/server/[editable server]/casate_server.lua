local RESOURCE_NAME = GetCurrentResourceName()
local DATA_FILE = "casate.json"

local Casate = {}
local PlayerCasata = {}
local PendingInvites = {}

local function SetPlayerCasataState(src, casataId)
	src = tonumber(src)
	if not src then return end

	local player = Player(src)
	if not player then return end

	player.state:set("casataId", casataId or false, true)
end

local function NotifyCasataMembers(casataId, message)
	if not casataId or not Casate[casataId] then return end

	for _, playerId in ipairs(GetPlayers()) do
		local src = tonumber(playerId)

		if PlayerCasata[src] == casataId then
			TriggerClientEvent("casate:notify", src, message)
		end
	end
end

local function Trim(value)
	value = tostring(value or "")
	return value:match("^%s*(.-)%s*$")
end

local function GetIdentifier(src)
	src = tonumber(src)
	if not src then return nil end

	local player = Player(src)
	if player and player.state and player.state.primaryIdentifier then
		return player.state.primaryIdentifier
	end

	return GetPlayerIdentifierByType(src, "license")
end

local function GetSafePlayerName(src)
	return GetPlayerName(src) or ("Player " .. tostring(src))
end

local function Notify(src, message)
	TriggerClientEvent("casate:notify", src, message)
end

local function SaveCasate()
	local encoded = json.encode(Casate)

	if not encoded then
		print("^1[CASATE] ERRORE json.encode^7")
		return false
	end

	print("^3[CASATE] JSON DA SALVARE:^7", encoded)
	print("^3[CASATE] RISORSA:^7", RESOURCE_NAME)
	print("^3[CASATE] FILE:^7", DATA_FILE)

	local success = SaveResourceFile(RESOURCE_NAME, DATA_FILE, encoded, -1)

	print("^3[CASATE] RISULTATO SALVATAGGIO:^7", success)

	if not success then
		print("^1[CASATE] IMPOSSIBILE SCRIVERE IL FILE JSON^7")
		return false
	end

	return true
end

local function SyncAllPlayersCasataState()
	for _, playerId in ipairs(GetPlayers()) do
		local src = tonumber(playerId)
		local identifier = GetIdentifier(src)

		if identifier then
			SetPlayerCasataState(src, PlayerCasata[identifier])
		else
			SetPlayerCasataState(src, false)
		end
	end
end

local function RebuildPlayerCasata()
	PlayerCasata = {}

	for casataId, casata in pairs(Casate) do
		if type(casata.members) == "table" then
			for identifier in pairs(casata.members) do
				if not PlayerCasata[identifier] then
					PlayerCasata[identifier] = casataId
				else
					print(("^1[CASATE] L'identifier %s risulta presente in più Casate.^7"):format(identifier))
				end
			end
		end
	end
end

local function NormalizeCasata(casataId, casata)
	if type(casata) ~= "table" then return false end

	local changed = false

	if casata.id ~= casataId then casata.id = casataId changed = true end
	if type(casata.members) ~= "table" then casata.members = {} changed = true end
	if type(casata.territories) ~= "table" then casata.territories = {} changed = true end
	if type(casata.stats) ~= "table" then casata.stats = {} changed = true end
	if type(casata.settings) ~= "table" then casata.settings = {} changed = true end

	local defaultStats = {
		deliveriesCompleted = 0,
		deliveriesFailed = 0,
		cratesOpened = 0,
		cratesLost = 0
	}

	for key, value in pairs(defaultStats) do
		if casata.stats[key] == nil then casata.stats[key] = value changed = true end
	end

	local defaultSettings = {
		friendlyFire = false,
		private = false,
		color = "",
		emblem = ""
	}

	for key, value in pairs(defaultSettings) do
		if casata.settings[key] == nil then casata.settings[key] = value changed = true end
	end

	return changed
end

local function LoadCasate()
	local content = LoadResourceFile(RESOURCE_NAME, DATA_FILE)

	if not content or content == "" then
		Casate = {}
		SaveCasate()
		RebuildPlayerCasata()
		return
	end

	local success, decoded = pcall(json.decode, content)

	if not success or type(decoded) ~= "table" then
		print("^1[CASATE] Il file casate.json non è valido.^7")
		Casate = {}
		return
	end

	Casate = decoded
	
	local changed = false
	for casataId, casata in pairs(Casate) do
		if NormalizeCasata(casataId, casata) then changed = true end
	end

	if changed then SaveCasate() end

	RebuildPlayerCasata()
	SyncAllPlayersCasataState()

	print(("[CASATE] Caricate %s Casate."):format(GetCasateCount()))
end

function GetCasateCount()
	local count = 0
	for _ in pairs(Casate) do count = count + 1 end
	return count
end

local function GenerateCasataId()
	local highestId = 0

	for casataId in pairs(Casate) do
		local numericId = tonumber(tostring(casataId):match("^casata_(%d+)$"))
		if numericId and numericId > highestId then highestId = numericId end
	end

	return "casata_" .. (highestId + 1)
end

local function CasataNameExists(name)
	name = string.lower(Trim(name))

	for _, casata in pairs(Casate) do
		if string.lower(Trim(casata.name)) == name then return true end
	end

	return false
end

local function GetCasataByIdentifier(identifier)
	local casataId = PlayerCasata[identifier]
	if not casataId then return nil, nil end

	return Casate[casataId], casataId
end

local function GetMemberRank(casata, identifier)
	if not casata or not casata.members or not casata.members[identifier] then return nil end
	return casata.members[identifier].rank
end

local function GetRankLevel(rank)
	local rankData = CasateConfig.Ranks[rank]
	return rankData and rankData.level or 0
end

local function HasRank(casata, identifier, minimumRank)
	local currentRank = GetMemberRank(casata, identifier)
	return GetRankLevel(currentRank) >= GetRankLevel(minimumRank)
end

local function CountMembers(casata)
	local count = 0
	for _ in pairs(casata.members or {}) do count = count + 1 end
	return count
end

local function FindOnlinePlayerByIdentifier(identifier)
	for _, playerId in ipairs(GetPlayers()) do
		local src = tonumber(playerId)
		if GetIdentifier(src) == identifier then return src end
	end

	return nil
end

local function BuildClientCasataData(identifier)
	local casata, casataId = GetCasataByIdentifier(identifier)
	if not casata then return nil end

	local members = {}

	for memberIdentifier, member in pairs(casata.members or {}) do
		members[#members + 1] = {
			identifier = memberIdentifier,
			name = member.name or "Sconosciuto",
			rank = member.rank or "member",
			joinedAt = member.joinedAt or 0,
			online = FindOnlinePlayerByIdentifier(memberIdentifier) ~= nil
		}
	end

	table.sort(members, function(a, b)
		local rankA = GetRankLevel(a.rank)
		local rankB = GetRankLevel(b.rank)

		if rankA == rankB then
			return string.lower(a.name) < string.lower(b.name)
		end

		return rankA > rankB
	end)

	return {
		id = casataId,
		name = casata.name,
		owner = casata.owner,
		createdAt = casata.createdAt,
		points = casata.points or 0,
		territories = casata.territories or {},
		stats = casata.stats or {},
		members = members,
		memberCount = #members,
		myIdentifier = identifier,
		myRank = GetMemberRank(casata, identifier)
	}
end

local function CreateCasata(src, name)
	print("[CASATE SERVER] CreateCasata:", src, name)

	local identifier = GetIdentifier(src)
	if not identifier then
		print("[CASATE SERVER] Identifier non trovato")
		return Notify(src, "Identifier non trovato.")
	end
	if not identifier then return Notify(src, "Identifier non trovato.") end

	if PlayerCasata[identifier] then
		return Notify(src, "Fai già parte di una Casata.")
	end

	name = Trim(name)

	if #name < CasateConfig.MinNameLength then
		return Notify(src, ("Il nome deve contenere almeno %s caratteri."):format(CasateConfig.MinNameLength))
	end

	if #name > CasateConfig.MaxNameLength then
		return Notify(src, ("Il nome può contenere massimo %s caratteri."):format(CasateConfig.MaxNameLength))
	end

	if CasataNameExists(name) then
		return Notify(src, "Esiste già una Casata con questo nome.")
	end

	local casataId = GenerateCasataId()
	local now = os.time()

	Casate[casataId] = {
		id = casataId,
		name = name,
		owner = identifier,
		createdAt = now,
		points = CasateConfig.StartingPoints,

		members = {
			[identifier] = {
				name = GetSafePlayerName(src),
				rank = "owner",
				joinedAt = now
			}
		},

		territories = {},

		stats = {
			deliveriesCompleted = 0,
			deliveriesFailed = 0,
			cratesOpened = 0,
			cratesLost = 0
		},

		settings = {
			friendlyFire = false,
			private = false,
			color = nil,
			emblem = nil
		}
	}

	PlayerCasata[identifier] = casataId
	SetPlayerCasataState(src, casataId)
	SaveCasate()

	Notify(src, ("Hai creato la Casata %s."):format(name))
	TriggerClientEvent("casate:refreshMenu", src)
end

local function CreatePendingInvite(identifier, invite, duration)
	duration = math.max(1, tonumber(duration) or 60)

	invite.expiresAt = os.time() + duration
	PendingInvites[identifier] = invite

	local expectedExpiresAt = invite.expiresAt

	SetTimeout(duration * 1000, function()
		local currentInvite = PendingInvites[identifier]
		if not currentInvite then return end

		-- Impedisce a un vecchio timeout di eliminare un invito nuovo.
		if currentInvite.expiresAt ~= expectedExpiresAt then return end

		PendingInvites[identifier] = nil
	end)
end

local function InvitePlayer(src, targetId)
	targetId = tonumber(targetId)

	if not targetId or not GetPlayerName(targetId) then
		return Notify(src, "Giocatore non valido.")
	end

	if src == targetId then
		return Notify(src, "Non puoi invitare te stesso.")
	end

	local identifier = GetIdentifier(src)
	local targetIdentifier = GetIdentifier(targetId)

	if not identifier or not targetIdentifier then
		return Notify(src, "Identifier non valido.")
	end

	local casata, casataId = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if not HasRank(casata, identifier, "officer") then
		return Notify(src, "Non hai il permesso di invitare giocatori.")
	end

	if PlayerCasata[targetIdentifier] then
		return Notify(src, "Questo giocatore fa già parte di una Casata.")
	end
	
	CreatePendingInvite(targetIdentifier, {
		casataId = casataId,
		invitedBy = identifier,
		invitedByName = GetSafePlayerName(src)
	}, CasateConfig.InviteDuration)

	Notify(src, ("Hai invitato %s."):format(GetSafePlayerName(targetId)))

	TriggerClientEvent(
		"casate:receiveInvite",
		targetId,
		casata.name,
		GetSafePlayerName(src),
		CasateConfig.InviteDuration
	)
end

local function AcceptInvite(src)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	if PlayerCasata[identifier] then
		PendingInvites[identifier] = nil
		return Notify(src, "Fai già parte di una Casata.")
	end

	local invite = PendingInvites[identifier]

	if not invite then
		return Notify(src, "Non hai inviti attivi.")
	end

	if invite.expiresAt <= os.time() then
		PendingInvites[identifier] = nil
		return Notify(src, "L'invito è scaduto.")
	end

	local casata = Casate[invite.casataId]

	if not casata then
		PendingInvites[identifier] = nil
		return Notify(src, "La Casata non esiste più.")
	end

	casata.members[identifier] = {
		name = GetSafePlayerName(src),
		rank = "member",
		joinedAt = os.time()
	}

	PlayerCasata[identifier] = invite.casataId
	SetPlayerCasataState(src, invite.casataId)
	PendingInvites[identifier] = nil

	SaveCasate()

	Notify(src, ("Sei entrato nella Casata %s."):format(casata.name))

	for memberIdentifier in pairs(casata.members) do
		local memberSource = FindOnlinePlayerByIdentifier(memberIdentifier)

		if memberSource and memberSource ~= src then
			Notify(memberSource, ("%s è entrato nella Casata."):format(GetSafePlayerName(src)))
		end
	end

	TriggerClientEvent("casate:refreshMenu", src)
end

local function DeclineInvite(src)
	local identifier = GetIdentifier(src)
	if not identifier then return end

	if not PendingInvites[identifier] then
		return Notify(src, "Non hai inviti attivi.")
	end

	PendingInvites[identifier] = nil
	Notify(src, "Hai rifiutato l'invito.")
end

local function LeaveCasata(src)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	local casata, casataId = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if casata.owner == identifier then
		return Notify(src, "Il Capocasata deve trasferire la proprietà oppure sciogliere la Casata.")
	end

	casata.members[identifier] = nil
	PlayerCasata[identifier] = nil
	SetPlayerCasataState(src, false)

	SaveCasate()

	Notify(src, ("Hai abbandonato la Casata %s."):format(casata.name))

	for memberIdentifier in pairs(casata.members) do
		local memberSource = FindOnlinePlayerByIdentifier(memberIdentifier)
		if memberSource then Notify(memberSource, ("%s ha abbandonato la Casata."):format(GetSafePlayerName(src))) end
	end

	TriggerClientEvent("casate:refreshMenu", src)
end

local function KickMember(src, targetIdentifier)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	local casata = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if not HasRank(casata, identifier, "officer") then
		return Notify(src, "Non hai il permesso di espellere membri.")
	end

	local targetMember = casata.members[targetIdentifier]

	if not targetMember then
		return Notify(src, "Il membro non esiste.")
	end

	if targetIdentifier == identifier then
		return Notify(src, "Non puoi espellere te stesso.")
	end

	if targetIdentifier == casata.owner then
		return Notify(src, "Non puoi espellere il Capocasata.")
	end

	local myLevel = GetRankLevel(GetMemberRank(casata, identifier))
	local targetLevel = GetRankLevel(targetMember.rank)

	if myLevel <= targetLevel then
		return Notify(src, "Non puoi espellere un membro con grado uguale o superiore.")
	end

	casata.members[targetIdentifier] = nil
	PlayerCasata[targetIdentifier] = nil

	SaveCasate()

	Notify(src, ("%s è stato espulso dalla Casata."):format(targetMember.name))

	local targetSource = FindOnlinePlayerByIdentifier(targetIdentifier)

	if targetSource then
		SetPlayerCasataState(targetSource, false)
		Notify(targetSource, ("Sei stato espulso dalla Casata %s."):format(casata.name))
		TriggerClientEvent("casate:refreshMenu", targetSource)
	end
end

local function SetMemberRank(src, targetIdentifier, newRank)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	local casata = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if casata.owner ~= identifier then
		return Notify(src, "Solo il Capocasata può modificare i gradi.")
	end

	if newRank ~= "member" and newRank ~= "officer" then
		return Notify(src, "Grado non valido.")
	end

	local targetMember = casata.members[targetIdentifier]

	if not targetMember then
		return Notify(src, "Membro non trovato.")
	end

	if targetIdentifier == identifier then
		return Notify(src, "Non puoi modificare il tuo grado.")
	end

	targetMember.rank = newRank
	SaveCasate()

	local rankLabel = CasateConfig.Ranks[newRank].label

	Notify(src, ("%s ora è %s."):format(targetMember.name, rankLabel))

	local targetSource = FindOnlinePlayerByIdentifier(targetIdentifier)
	if targetSource then Notify(targetSource, ("Il tuo nuovo grado è %s."):format(rankLabel)) end
end

local function TransferOwnership(src, targetIdentifier)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	local casata = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if casata.owner ~= identifier then
		return Notify(src, "Solo il Capocasata può trasferire la proprietà.")
	end

	if targetIdentifier == identifier then
		return Notify(src, "Sei già il Capocasata.")
	end

	local targetMember = casata.members[targetIdentifier]

	if not targetMember then
		return Notify(src, "Membro non trovato.")
	end

	casata.members[identifier].rank = "officer"
	targetMember.rank = "owner"
	casata.owner = targetIdentifier

	SaveCasate()

	Notify(src, ("Hai trasferito la Casata a %s."):format(targetMember.name))

	local targetSource = FindOnlinePlayerByIdentifier(targetIdentifier)

	if targetSource then
		Notify(targetSource, ("Ora sei il Capocasata di %s."):format(casata.name))
	end
end

local function DeleteCasata(src)
	local identifier = GetIdentifier(src)
	if not identifier then return Notify(src, "Identifier non trovato.") end

	local casata, casataId = GetCasataByIdentifier(identifier)

	if not casata then
		return Notify(src, "Non fai parte di una Casata.")
	end

	if casata.owner ~= identifier then
		return Notify(src, "Solo il Capocasata può sciogliere la Casata.")
	end

	for memberIdentifier in pairs(casata.members) do
		SetPlayerCasataState(memberSource, false)
		PlayerCasata[memberIdentifier] = nil

		local memberSource = FindOnlinePlayerByIdentifier(memberIdentifier)

		if memberSource then
			Notify(memberSource, ("La Casata %s è stata sciolta."):format(casata.name))
			TriggerClientEvent("casate:refreshMenu", memberSource)
		end
	end

	Casate[casataId] = nil
	SaveCasate()
end

RegisterNetEvent("casate:create", function(name)
	local src = source
	print("[CASATE SERVER] Evento ricevuto da:", src)
	print("[CASATE SERVER] Nome ricevuto:", name, type(name))
	CreateCasata(src, name)
end)

RegisterNetEvent("casate:invitePlayer", function(targetId)
	InvitePlayer(source, targetId)
end)

RegisterNetEvent("casate:acceptInvite", function()
	AcceptInvite(source)
end)

RegisterNetEvent("casate:declineInvite", function()
	DeclineInvite(source)
end)

RegisterNetEvent("casate:leave", function()
	LeaveCasata(source)
end)

RegisterNetEvent("casate:kickMember", function(targetIdentifier)
	KickMember(source, targetIdentifier)
end)

RegisterNetEvent("casate:setMemberRank", function(targetIdentifier, newRank)
	SetMemberRank(source, targetIdentifier, newRank)
end)

RegisterNetEvent("casate:transferOwnership", function(targetIdentifier)
	TransferOwnership(source, targetIdentifier)
end)

RegisterNetEvent("casate:delete", function()
	DeleteCasata(source)
end)

RegisterNetEvent("casate:requestData", function()
	local src = source
	local identifier = GetIdentifier(src)

	if not identifier then
		return TriggerClientEvent("casate:receiveData", src, nil)
	end

	TriggerClientEvent("casate:receiveData", src, BuildClientCasataData(identifier))
end)

AddEventHandler("playerDropped", function()
	local src = source
	local identifier = GetIdentifier(src)
	if identifier then PendingInvites[identifier] = nil end
end)

CreateThread(function()
	math.randomseed(os.time())
	LoadCasate()
end)

-- Restituisce tutta la tabella della Casata.
-- local house = exports.striano_casate:GetCasata(casataId)
-- print(house.name)
exports("GetCasata", function(casataId)
    return Casate[tostring(casataId)]
end)

-- Restituisce la tabella della Casata del player.
-- local house = exports.striano_casate:GetPlayerCasata(source)
exports("GetPlayerCasata", function(source)
    local identifier = GetIdentifier(source)
    if not identifier then return nil end

    local houseId = PlayerCasata[identifier]
    if not houseId then return nil end

    return Casate[houseId]
end)

-- Restituisce solamente l'ID della Casata del player.
-- local houseId = exports.striano_casate:GetPlayerCasataId(source)
exports("GetPlayerCasataId", function(source)
    local identifier = GetIdentifier(source)
    if not identifier then return nil end

    return PlayerCasata[identifier]
end)

-- Legge qualsiasi valore della Casata.
-- Supporta anche chiavi annidate con il punto.
-- local points = exports.striano_casate:GetCasataData(id, "points")
-- local opened = exports.striano_casate:GetCasataData(id, "stats.cratesOpened")
-- local territories = exports.striano_casate:GetCasataData(id, "territories")
exports("GetCasataData", function(casataId, key)
    local house = Casate[tostring(casataId)]
    if not house then return nil end
    if not key or key == "" then return house end

    local value = house

    for part in tostring(key):gmatch("[^%.]+") do
        if type(value) ~= "table" then return nil end
        value = value[part]
        if value == nil then return nil end
    end

    return value
end)

-- Imposta qualsiasi valore della Casata.
-- Crea automaticamente le tabelle mancanti.
-- Salva il JSON automaticamente.
-- exports.striano_casate:SetCasataData(id, "points", 250)
-- exports.striano_casate:SetCasataData(id, "stats.cratesOpened", 50)
-- exports.striano_casate:SetCasataData(id, "territories", myTable)
exports("SetCasataData", function(casataId, key, value)
    local house = Casate[tostring(casataId)]
    if not house then return false end
    if not key or key == "" then return false end

    local current = house
    local parts = {}

    for part in tostring(key):gmatch("[^%.]+") do
        parts[#parts + 1] = part
    end

    for i = 1, #parts - 1 do
        local part = parts[i]

        if type(current[part]) ~= "table" then
            current[part] = {}
        end

        current = current[part]
    end

    current[parts[#parts]] = value

    SaveCasate()
    return true
end)

RegisterNetEvent("casate:addCasataPoints", function(casataName)
	local src = source

	if not exports["striano_core"]:IsAdmin(src) then return end

	local casataId

	if not casataName or casataName == "" then
		casataId = exports[RESOURCE_NAME]:GetPlayerCasataId(src)
	else
		for id, casata in pairs(Casate) do
			if casata.name and string.lower(casata.name) == string.lower(casataName) then
				casataId = id
				break
			end
		end
	end

	if not casataId then return Notify(src, "Casata non trovata.") end

	local casata = Casate[casataId]
	if not casata then return Notify(src, "Casata non trovata.") end

	local newPoints = (tonumber(casata.points) or 0) + 100

	if not exports[RESOURCE_NAME]:SetCasataData(casataId, "points", newPoints) then
		return Notify(src, "Errore durante il salvataggio dei punti.")
	end

	Notify(src, ("Aggiunti 100 punti alla Casata '%s'. Totale: %s"):format(
		casata.name,
		newPoints
	))
end)

--========================================================--
--                 SISTEMA TERRITORI                      --
--========================================================--

-- I territori disponibili vengono definiti nel config:
--
-- CasateConfig.Territories = {
--     territorio_1 = {
--         name = "Bosco Settentrionale",
--         coords = vector3(100.0, 200.0, 30.0),
--         radius = 35.0,
--         claimCost = 50
--     }
-- }
--
-- Questo file salva nel JSON soltanto i territori che vengono
-- realmente utilizzati. Un territorio mai toccato non viene
-- scritto dentro territori.json.
--
-- File JSON richiesto nella root della risorsa:
--
-- territori.json
--
-- Contenuto iniziale:
--
-- {}

local TERRITORIES_FILE = "territori.json"

local TerritoryStates = {}

-- Costruisce una copia dello stato da inviare al client.
-- owner resta l'ID tecnico della Casata; ownerName contiene il nome leggibile.
-- ownerName non viene salvato in territori.json.
local function BuildClientTerritoryState(state)
	if type(state) ~= "table" then return nil end

	local clientState = {}

	for key, value in pairs(state) do
		if type(value) == "table" then
			clientState[key] = {}
			for childKey, childValue in pairs(value) do clientState[key][childKey] = childValue end
		else
			clientState[key] = value
		end
	end

	local owner = state.owner
	clientState.ownerName = owner and Casate[owner] and Casate[owner].name or nil
	return clientState
end

local function BuildClientTerritoryStates()
	local clientStates = {}
	for territoryId, state in pairs(TerritoryStates) do clientStates[territoryId] = BuildClientTerritoryState(state) end
	return clientStates
end

local function Notify(src, message)
	TriggerClientEvent("casate:notify", src, tostring(message or ""))
end

local function CountTable(tbl)
	local count = 0
	for _ in pairs(tbl or {}) do count = count + 1 end
	return count
end

local function SplitKeyPath(key)
	local parts = {}

	for part in tostring(key or ""):gmatch("[^.]+") do
		parts[#parts + 1] = part
	end

	return parts
end

local function GetTerritoryConfig(territoryId)
	territoryId = tostring(territoryId or "")
	return CasateConfig.Territories and CasateConfig.Territories[territoryId] or nil
end

-- Cerca la license del giocatore.
-- Se nel tuo sistema hai già una funzione specifica per recuperare
-- l'identificatore primario, puoi sostituire questa funzione.
local function GetPlayerLicense(src)
	src = tonumber(src)
	if not src then return nil end

	local stateIdentifier = Player(src).state.primaryIdentifier
	if stateIdentifier and stateIdentifier ~= "" then return stateIdentifier end

	for _, identifier in ipairs(GetPlayerIdentifiers(src)) do
		if identifier:sub(1, 8) == "license:" then return identifier end
	end

	return nil
end

local function SaveTerritories()
	local encoded = json.encode(TerritoryStates)

	if not encoded then
		print("^1[TERRITORI] Impossibile codificare TerritoryStates.^7")
		return false
	end

	local saved = SaveResourceFile(
		RESOURCE_NAME,
		TERRITORIES_FILE,
		encoded,
		-1
	)

	if not saved then
		print(("^1[TERRITORI] Impossibile scrivere %s/%s.^7"):format(
			RESOURCE_NAME,
			TERRITORIES_FILE
		))

		return false
	end

	return true
end

local function NormalizeTerritoryState(territoryId, state)
	if type(state) ~= "table" then return false end

	local changed = false

	if state.owner == "" then state.owner = nil changed = true end
	if state.status == nil then state.status = state.owner and "owned" or "neutral" changed = true end
	if state.claimedAt == nil then state.claimedAt = 0 changed = true end
	if state.lastActivityAt == nil then state.lastActivityAt = os.time() changed = true end
	if type(state.stats) ~= "table" then state.stats = {} changed = true end

	local defaultStats = {
		cratesOpened = 0,
		cratesLost = 0,
		deliveriesCompleted = 0,
		deliveriesFailed = 0
	}

	for key, value in pairs(defaultStats) do
		if state.stats[key] == nil then state.stats[key] = value changed = true end
	end

	-- Se il territorio non esiste più nel config, lo lasciamo nel JSON.
	-- In questo modo non perdiamo dati per errore.
	if not GetTerritoryConfig(territoryId) then
		print(("^3[TERRITORI] %s esiste nel JSON ma non nel config.^7"):format(territoryId))
	end

	return changed
end

local function LoadTerritories()
	local raw = LoadResourceFile(RESOURCE_NAME, TERRITORIES_FILE)

	if not raw or raw == "" then
		TerritoryStates = {}

		if SaveTerritories() then
			print("^3[TERRITORI] territori.json creato o inizializzato.^7")
		end

		return
	end

	local ok, decoded = pcall(json.decode, raw)

	if not ok or type(decoded) ~= "table" then
		print("^1[TERRITORI] territori.json non valido. Caricamento annullato.^7")
		TerritoryStates = {}
		return
	end

	TerritoryStates = decoded

	local changed = false

	for territoryId, state in pairs(TerritoryStates) do
		if NormalizeTerritoryState(territoryId, state) then changed = true end
	end

	if changed then SaveTerritories() end

	print(("^2[TERRITORI] Caricati %s territori con stato salvato.^7"):format(
		CountTable(TerritoryStates)
	))
end

--========================================================--
--                  CREAZIONE LAZY                         --
--========================================================--

-- Crea lo stato del territorio soltanto quando serve davvero.
-- Questa funzione da sola NON salva immediatamente il JSON.
local function EnsureTerritoryState(territoryId)
	territoryId = tostring(territoryId or "")

	if not GetTerritoryConfig(territoryId) then return nil end
	if TerritoryStates[territoryId] then return TerritoryStates[territoryId] end

	TerritoryStates[territoryId] = {
		owner = nil,
		status = "neutral",
		claimedAt = 0,
		lastActivityAt = os.time(),

		stats = {
			cratesOpened = 0,
			cratesLost = 0,
			deliveriesCompleted = 0,
			deliveriesFailed = 0
		}
	}

	return TerritoryStates[territoryId]
end

-- Legge lo stato senza crearlo.
-- Se ritorna nil, il territorio non è mai stato utilizzato.
local function GetTerritoryState(territoryId)
	territoryId = tostring(territoryId or "")

	if not GetTerritoryConfig(territoryId) then return nil end
	return TerritoryStates[territoryId]
end

local function GetTerritoryOwner(territoryId)
	local state = GetTerritoryState(territoryId)
	return state and state.owner or nil
end

--========================================================--
--                  GET E SET GENERICI                     --
--========================================================--

local function GetTerritoryData(territoryId, key)
	local state = GetTerritoryState(territoryId)
	if not state then return nil end

	if key == nil or key == "" then return state end

	local parts = SplitKeyPath(key)
	if #parts == 0 then return nil end

	local value = state

	for _, part in ipairs(parts) do
		if type(value) ~= "table" then return nil end
		value = value[part]
	end

	return value
end

local function SetTerritoryData(territoryId, key, value)
	territoryId = tostring(territoryId or "")

	if not GetTerritoryConfig(territoryId) then return false end

	local parts = SplitKeyPath(key)
	if #parts == 0 then return false end

	local state = EnsureTerritoryState(territoryId)
	if not state then return false end

	local target = state

	for i = 1, #parts - 1 do
		local part = parts[i]

		if type(target[part]) ~= "table" then target[part] = {} end
		target = target[part]
	end

	target[parts[#parts]] = value
	state.lastActivityAt = os.time()

	return SaveTerritories()
end

-- Incrementa un valore numerico.
-- Se il valore non esiste, parte automaticamente da zero.
local function AddTerritoryData(territoryId, key, amount)
	amount = tonumber(amount) or 1

	local currentValue = tonumber(GetTerritoryData(territoryId, key)) or 0
	return SetTerritoryData(territoryId, key, currentValue + amount)
end

--========================================================--
--                       CLAIM                             --
--========================================================--

local function ClaimTerritory(territoryId, casataId)
	territoryId = tostring(territoryId or "")
	casataId = tostring(casataId or "")

	if casataId == "" then return false, "Casata non valida." end

	local config = GetTerritoryConfig(territoryId)
	if not config then return false, "Territorio non valido." end

	local currentState = GetTerritoryState(territoryId)

	if currentState and currentState.owner then
		return false, "Questo territorio appartiene già a una Casata."
	end

	local state = EnsureTerritoryState(territoryId)
	if not state then return false, "Impossibile creare lo stato del territorio." end

	local now = os.time()

	state.owner = casataId
	state.status = "owned"
	state.claimedAt = now
	state.lastActivityAt = now

	if not SaveTerritories() then
		state.owner = nil
		state.status = "neutral"
		state.claimedAt = 0
		return false, "Errore durante il salvataggio del territorio."
	end

	return true
end

local function ResetTerritoryProduction(territoryId)
	local state = TerritoryStates[tostring(territoryId or "")]
	if not state then return end
	state.progress = 0
	state.rewardsAvailable = 0
	state.processing = {
		active = false,
		startedAt = 0,
		readyAt = 0
	}
end
local function ReleaseTerritory(territoryId)
	local state = GetTerritoryState(territoryId)
	if not state then return false, "Il territorio non possiede uno stato salvato." end
	state.owner = nil
	state.status = "neutral"
	state.claimedAt = 0
	state.lastActivityAt = os.time()
	ResetTerritoryProduction(territoryId)
	if not SaveTerritories() then return false, "Errore durante il salvataggio." end
	return true
end

--========================================================--
--                   EVENTO CLAIM                          --
--========================================================--

RegisterNetEvent("casate:claimTerritory", function(territoryId)
	local src = source
	territoryId = tostring(territoryId or "")

	local config = GetTerritoryConfig(territoryId)
	if not config then return Notify(src, "Territorio non valido.") end

	local casataId = exports[RESOURCE_NAME]:GetPlayerCasataId(src)
	if not casataId then return Notify(src, "Non appartieni a nessuna Casata.") end

	local casata = exports[RESOURCE_NAME]:GetCasata(casataId)
	if not casata then return Notify(src, "Casata non trovata.") end

	local identifier = GetPlayerLicense(src)
	if not identifier then return Notify(src, "Identificatore del giocatore non trovato.") end

	local member = casata.members and casata.members[identifier]
	if not member then return Notify(src, "Non risulti tra i membri della Casata.") end
	if member.rank ~= "owner" then return Notify(src, "Solo il Capocasata può reclamare un territorio.") end

	local claimCost = tonumber(config.claimCost) or 0
	local currentPoints = tonumber(casata.points) or 0

	if currentPoints < claimCost then
		return Notify(src, ("Servono %s punti Casata. La tua casata ne ha %s."):format(claimCost, currentPoints))
	end

	local success, reason = ClaimTerritory(territoryId, casataId)
	if not success then return Notify(src, reason) end

	local pointsSaved = exports[RESOURCE_NAME]:SetCasataData(
		casataId,
		"points",
		currentPoints - claimCost
	)

	if not pointsSaved then
		ReleaseTerritory(territoryId)
		return Notify(src, "Errore durante il pagamento dei punti Casata.")
	end

	local territories = casata.territories or {}
	territories[territoryId] = true

	local territoriesSaved = exports[RESOURCE_NAME]:SetCasataData(
		casataId,
		"territories",
		territories
	)

	if not territoriesSaved then
		ReleaseTerritory(territoryId)
		exports[RESOURCE_NAME]:SetCasataData(casataId, "points", currentPoints)
		return Notify(src, "Errore durante il salvataggio del territorio nella Casata.")
	end

	Notify(src, ("La tua Casata ha reclamato %s per %s punti."):format(
		config.name or territoryId,
		claimCost
	))
	
	exports['striano_inventory']:addNotification("La Casata " .. config.name .. " ha reclamato il territorio " .. territoryId .. " per " .. claimCost .. " punti.", 90000)

	TriggerClientEvent("casate:territoryUpdated", -1, territoryId, BuildClientTerritoryState(TerritoryStates[territoryId]))
	TriggerClientEvent("casate:casataUpdated", src, exports[RESOURCE_NAME]:GetCasata(casataId))
end)

--========================================================--
--                    EVENTO RELEASE                       --
--========================================================--

RegisterNetEvent("casate:releaseTerritory", function(territoryId)
	local src = source
	territoryId = tostring(territoryId or "")

	local config = GetTerritoryConfig(territoryId)
	if not config then return Notify(src, "Territorio non valido.") end

	local casataId = exports[RESOURCE_NAME]:GetPlayerCasataId(src)
	if not casataId then return Notify(src, "Non appartieni a nessuna Casata.") end

	local casata = exports[RESOURCE_NAME]:GetCasata(casataId)
	if not casata then return Notify(src, "Casata non trovata.") end

	local identifier = GetPlayerLicense(src)
	local member = identifier and casata.members and casata.members[identifier]

	if not member or member.rank ~= "owner" then
		return Notify(src, "Solo il Capocasata può abbandonare un territorio.")
	end

	local state = GetTerritoryState(territoryId)

	if not state or state.owner ~= casataId then
		return Notify(src, "Questo territorio non appartiene alla tua Casata.")
	end

	local success, reason = ReleaseTerritory(territoryId)
	if not success then return Notify(src, reason) end

	Notify(src, ("La Casata ha abbandonato %s."):format(config.name or territoryId))
	TriggerClientEvent("casate:territoryUpdated", -1, territoryId, BuildClientTerritoryState(TerritoryStates[territoryId]))
end)

--========================================================--
--                     SINCRONIZZAZIONE                    --
--========================================================--

-- Il client può richiedere tutti gli stati già esistenti.
-- Non vengono inviati territori mai utilizzati.
RegisterNetEvent("casate:requestTerritories", function()
	TriggerClientEvent("casate:receiveTerritories", source, BuildClientTerritoryStates())
end)

--========================================================--
--                         EXPORT                          --
--========================================================--

-- Restituisce la configurazione fissa del territorio.
--
-- Esempio:
--
-- local config = exports["striano_core"]:GetTerritoryConfig("territorio_1")
-- print(config.name)
-- print(config.coords)
-- print(config.radius)
--
exports("GetTerritoryConfig", function(territoryId)
	return GetTerritoryConfig(territoryId)
end)

-- Restituisce lo stato dinamico completo.
--
-- IMPORTANTE:
-- non crea il territorio nel JSON.
--
-- Se il territorio non è mai stato utilizzato, ritorna nil.
--
-- Esempio:
--
-- local state = exports["striano_core"]:GetTerritoryState("territorio_1")
--
-- if state then
--     print(state.owner)
-- else
--     print("Territorio mai utilizzato")
-- end
--
exports("GetTerritoryState", function(territoryId)
	return GetTerritoryState(territoryId)
end)

-- Restituisce soltanto la Casata proprietaria.
--
-- Ritorna:
--
-- "casata_1" se posseduto
-- nil se neutrale o mai utilizzato
--
-- Esempio:
--
-- local owner = exports["striano_core"]:GetTerritoryOwner("territorio_1")
--
exports("GetTerritoryOwner", function(territoryId)
	return GetTerritoryOwner(territoryId)
end)

-- Legge un valore specifico attraverso un percorso.
--
-- Esempi:
--
-- local status = exports["striano_core"]:GetTerritoryData(
--     "territorio_1",
--     "status"
-- )
--
-- local crates = exports["striano_core"]:GetTerritoryData(
--     "territorio_1",
--     "stats.cratesOpened"
-- )
--
-- Passando nil come chiave restituisce l'intero stato:
--
-- local state = exports["striano_core"]:GetTerritoryData(
--     "territorio_1"
-- )
--
exports("GetTerritoryData", function(territoryId, key)
	return GetTerritoryData(territoryId, key)
end)

-- Imposta qualsiasi dato del territorio.
--
-- Se il territorio non esiste ancora nel JSON, viene creato.
--
-- Esempi:
--
-- exports["striano_core"]:SetTerritoryData(
--     "territorio_1",
--     "status",
--     "contested"
-- )
--
-- exports["striano_core"]:SetTerritoryData(
--     "territorio_1",
--     "owner",
--     "casata_2"
-- )
--
-- exports["striano_core"]:SetTerritoryData(
--     "territorio_1",
--     "stats.cratesOpened",
--     25
-- )
--
exports("SetTerritoryData", function(territoryId, key, value)
	return SetTerritoryData(territoryId, key, value)
end)

-- Aggiunge o sottrae una quantità a un dato numerico.
--
-- Esempi:
--
-- Aggiunge una cassa aperta:
--
-- exports["striano_core"]:AddTerritoryData(
--     "territorio_1",
--     "stats.cratesOpened",
--     1
-- )
--
-- Aggiunge una consegna fallita:
--
-- exports["striano_core"]:AddTerritoryData(
--     "territorio_1",
--     "stats.deliveriesFailed",
--     1
-- )
--
-- Sottrae cinque punti da un valore personalizzato:
--
-- exports["striano_core"]:AddTerritoryData(
--     "territorio_1",
--     "defensePoints",
--     -5
-- )
--
exports("AddTerritoryData", function(territoryId, key, amount)
	return AddTerritoryData(territoryId, key, amount)
end)

-- Reclama direttamente un territorio lato server.
--
-- Questo export NON controlla:
--
-- - il grado del giocatore;
-- - i punti della Casata;
-- - la distanza dalle coordinate;
--
-- Serve per gli altri script server che hanno già eseguito i controlli.
--
-- Esempio:
--
-- local success, reason = exports["striano_core"]:ClaimTerritory(
--     "territorio_1",
--     "casata_1"
-- )
--
exports("ClaimTerritory", function(territoryId, casataId)
	return ClaimTerritory(territoryId, casataId)
end)

-- Rende neutrale un territorio.
--
-- Le statistiche restano salvate.
--
-- Esempio:
--
-- local success, reason = exports["striano_core"]:ReleaseTerritory(
--     "territorio_1"
-- )
--
exports("ReleaseTerritory", function(territoryId)
	return ReleaseTerritory(territoryId)
end)

-- Forza il salvataggio manuale.
--
-- Normalmente non serve perché Set, Add, Claim e Release
-- salvano automaticamente.
--
-- Esempio:
--
-- exports["striano_core"]:SaveTerritories()
--
exports("SaveTerritories", function()
	return SaveTerritories()
end)

RegisterNetEvent("casate:requestTerritoryStates", function()
	TriggerClientEvent("casate:receiveTerritoryStates", source, BuildClientTerritoryStates())
end)

-- SISTEMA TERRITORI PER OTTENERE LA CASSA REWARD!
local TerritoryFuelLocks = {}

-- Cambia soltanto queste 3 funzioni in base agli export reali del tuo inventario.

local function HasPlayerItem(src, itemName, amount)
	return exports["striano_inventory"]:HasItem(src, itemName, amount)
end

local function RemovePlayerItem(src, itemName, amount)
	return exports["striano_inventory"]:RemoveItem(src, itemName, amount)
end

local function GivePlayerItem(src, itemName, amount)
	return exports["striano_inventory"]:GiveItem(src, itemName, amount)
end

-- Se la tua funzione di salvataggio ha un altro nome, cambiala soltanto qui.

local function SaveFuelStates()
	SaveTerritories()
end

local function GetTerritoryConfig(territoryId)
	territoryId = tostring(territoryId or "")
	return CasateConfig.Territories[territoryId]
end

local function GetTerritoryOwner(state)
	if not state then return nil end
	return state.owner or state.ownerCasataId or state.casataId
end

local function GetTerritoryState(territoryId)
	territoryId = tostring(territoryId or "")

	local state = TerritoryStates[territoryId]
	if not state then return nil end

	state.progress = tonumber(state.progress) or 0
	state.rewardsAvailable = tonumber(state.rewardsAvailable) or 0
	state.totalCratesProduced = tonumber(state.totalCratesProduced) or 0

	if type(state.processing) ~= "table" then
		state.processing = {
			active = false,
			startedAt = 0,
			readyAt = 0
		}
	end

	state.processing.active = state.processing.active == true
	state.processing.startedAt = tonumber(state.processing.startedAt) or 0
	state.processing.readyAt = tonumber(state.processing.readyAt) or 0

	return state
end

local function SyncTerritoryState(territoryId)
	TriggerClientEvent(
		"casate:territoryUpdated",
		-1,
		territoryId,
		BuildClientTerritoryState(TerritoryStates[territoryId])
	)
end

local function GetRemainingTime(state)
	if not state or not state.processing or not state.processing.active then return 0 end
	return math.max(0, (tonumber(state.processing.readyAt) or 0) - os.time())
end

local function FormatRemainingTime(seconds)
	seconds = math.max(0, tonumber(seconds) or 0)

	local minutes = math.floor(seconds / 60)
	local remainingSeconds = seconds % 60

	if minutes > 0 then return ("%sm %ss"):format(minutes, remainingSeconds) end
	return ("%ss"):format(remainingSeconds)
end

local function CanUseTerritory(src, territoryId)
	local config = GetTerritoryConfig(territoryId)
	if not config then return false, "Territorio non valido." end

	local state = GetTerritoryState(territoryId)
	if not state then return false, "Stato del territorio non trovato." end

	local casataId = exports[RESOURCE_NAME]:GetPlayerCasataId(src)
	if not casataId then return false, "Non appartieni a nessuna Casata." end

	local ownerCasataId = GetTerritoryOwner(state)
	if not ownerCasataId then return false, "Questo territorio non è controllato da nessuna Casata." end

	if tostring(ownerCasataId) ~= tostring(casataId) then
		return false, "La tua Casata non controlla questo territorio."
	end

	return true, config, state, casataId
end

local function CompleteTerritoryBatch(territoryId)
	territoryId = tostring(territoryId or "")

	local config = GetTerritoryConfig(territoryId)
	local state = GetTerritoryState(territoryId)
	if not config or not state then return false end
	if not state.processing.active then return false end
	if os.time() < state.processing.readyAt then return false end

	local progressPerBatch = tonumber(config.progressPerBatch) or 10

	state.progress = math.min(100, state.progress + progressPerBatch)
	state.processing = {
		active = false,
		startedAt = 0,
		readyAt = 0
	}

	if state.progress >= 100 then
		state.progress = 0
		state.rewardsAvailable = state.rewardsAvailable + 1
		state.totalCratesProduced = state.totalCratesProduced + 1
		NotifyCasataMembers(territoryId, "Il territorio " .. territoryId .. " ha generato una cassa ritirabile.")
	end

	return true
end

local function DepositTerritoryFuel(src, territoryId)
	territoryId = tostring(territoryId or "")
	if territoryId == "" then return false, "Territorio non valido." end

	local config = CasateConfig.Territories[territoryId]
	if not config then return false, "Configurazione territorio non trovata." end

	local ped = GetPlayerPed(src)
	if ped == 0 then return false, "Ped non valido." end

	local coords = GetEntityCoords(ped)
	if #(coords - config.coords) > (config.radius or 35.0) then return false, "Devi essere all'interno del territorio." end
	if TerritoryFuelLocks[territoryId] then return false, "Il territorio sta già elaborando una richiesta." end

	TerritoryFuelLocks[territoryId] = true

	local pcallSuccess, actionSuccess, message = pcall(function()
		local allowed, territoryConfig, state = CanUseTerritory(src, territoryId)
		if not allowed then return false, territoryConfig end

		config = territoryConfig

		if state.processing.active and os.time() >= state.processing.readyAt then
			NotifyCasataMembers(territoryId, "Il territorio " .. territoryId .. " ha completato il processo del materiale consegnato.")
			if CompleteTerritoryBatch(territoryId) then
				SaveFuelStates()
				SyncTerritoryState(territoryId)
			else
				NotifyCasataMembers(territoryId, "Il territorio " .. territoryId .. " ha completato il processo del materiale consegnato.")
			end
		end

		state = GetTerritoryState(territoryId)

		if state.processing.active then
			local remaining = GetRemainingTime(state)
			return false, ("Il territorio sta già lavorando. Tempo rimanente: %s."):format(FormatRemainingTime(remaining))
		end

		if state.rewardsAvailable > 0 then return false, "È già presente una cassa da ritirare nel territorio." end

		local fuelItem = tostring(config.fuelItem or "")
		local fuelLabel = config.fuelLabel or fuelItem
		local fuelAmount = math.max(1, math.floor(tonumber(config.fuelAmount) or 10))
		local processTime = math.max(1, math.floor(tonumber(config.processTime) or 600))

		if fuelItem == "" then return false, "Il carburante del territorio non è configurato." end

		local hasFuel = exports.striano_inventory:HasItem(src, "player", fuelItem, fuelAmount)
		if not hasFuel then return false, ("Servono %s di %s per aumentare la cultura di questo territorio."):format(fuelAmount, fuelLabel) end

		local removed = exports.striano_inventory:RemoveItem(src, "player", fuelItem, fuelAmount)
		if not removed then return false, "Non è stato possibile rimuovere il carburante." end

		local now = os.time()

		state.processing = {
			active = true,
			startedAt = now,
			readyAt = now + processTime
		}

		SaveFuelStates()
		SyncTerritoryState(territoryId)
		exports['striano_inventory']:addNotification("La Casata " .. config.name .. " ha rifornito il territorio " .. territoryId .. " per aumentarne la Cultura.", 90000)
		return true, ("%s x %s consegnati. La lavorazione terminerà tra %s."):format(
			fuelAmount,
			fuelLabel,
			FormatRemainingTime(processTime)
		)
	end)

	TerritoryFuelLocks[territoryId] = nil

	if not pcallSuccess then
		print(("[CASATE] Errore DepositTerritoryFuel per %s: %s"):format(territoryId, actionSuccess))
		return false, "Errore interno durante la consegna del carburante."
	end

	return actionSuccess, message
end

RegisterNetEvent("casate:depositTerritoryFuel", function(territoryId)
	local src = source
	local success, message = DepositTerritoryFuel(src, territoryId)
	print("[CASATE] Deposito carburante:", success, message)
	Notify(src, message or "Nessun risultato ricevuto.")
end)

RegisterNetEvent("casate:collectTerritoryReward", function(territoryId)
	local src = source
	territoryId = tostring(territoryId or "")

	if territoryId == "" then return Notify(src, "Territorio non valido.") end
	if TerritoryFuelLocks[territoryId] then return Notify(src, "Il territorio sta già elaborando una richiesta.") end

	TerritoryFuelLocks[territoryId] = true

	local success, errorMessage = pcall(function()
		local allowed, config, state = CanUseTerritory(src, territoryId)
		if not allowed then return Notify(src, config) end

		if state.processing.active and os.time() >= state.processing.readyAt then
			if CompleteTerritoryBatch(territoryId) then
				SaveFuelStates()
				SyncTerritoryState(territoryId)
			end
		end

		state = GetTerritoryState(territoryId)

		if state.rewardsAvailable <= 0 then
			return Notify(src, "Nessuna cassa disponibile.")
		end
		
		local config = CasateConfig.Territories[territoryId]
		if not config then return Notify(src, "Config non valido.") end
		local territoryCoords = config.coords
	
		Notify(src, "Cassa ritirata.")
		TriggerEvent("placer:addpool", `sf_prop_sf_crate_01a`, territoryCoords.x,territoryCoords.y,territoryCoords.z, 0.0,0.0,0.0, true, 1)

		-- local rewardItem = tostring(config.rewardItem or "")
		-- local rewardLabel = config.rewardLabel or rewardItem

		-- if rewardItem == "" then return Notify(src, "La ricompensa del territorio non è configurata.") end
		
		state.rewardsAvailable = math.max(0, state.rewardsAvailable - 1)

		SaveFuelStates()
		SyncTerritoryState(territoryId)
	end)

	TerritoryFuelLocks[territoryId] = nil

	if not success then
		print(("[CASATE] Errore ritiro reward territorio %s: %s"):format(territoryId, errorMessage))
		Notify(src, "Errore interno durante il ritiro della cassa.")
	end
end)

CreateThread(function()
	while true do
		Wait(5000)

		local changedTerritories = {}
		local states = TerritoryStates or {}

		for territoryId in pairs(states) do
			if not TerritoryFuelLocks[territoryId] then
				local state = GetTerritoryState(territoryId)

				if state and state.processing.active and os.time() >= state.processing.readyAt then
					TerritoryFuelLocks[territoryId] = true

					if CompleteTerritoryBatch(territoryId) then
						changedTerritories[#changedTerritories + 1] = territoryId
					end

					TerritoryFuelLocks[territoryId] = nil
				end
			end
		end

		if #changedTerritories > 0 then
			SaveFuelStates()

			for i = 1, #changedTerritories do
				SyncTerritoryState(changedTerritories[i])
			end
		end
	end
end)

RegisterNetEvent("casate:syncPlayerState", function()
	local src = source
	local identifier = GetIdentifier(src)
	if not identifier then return SetPlayerCasataState(src, false) end
	SetPlayerCasataState(src, PlayerCasata[identifier])
end)

CreateThread(function()
	Wait(0)
	LoadTerritories()
end)

-- BOX DELIVERY SCRIPT SERVER
local DeliveryBoxes = {}
local NextDeliveryBoxId = 0

local function GetForwardVectorFromHeading(heading)
	local rad = math.rad(heading)
	return vector3(-math.sin(rad), math.cos(rad), 0.0)
end

-- Modelli consentiti: non accettare qualsiasi modello mandato dal client.
local AllowedBoxModels = {
	[`sf_prop_sf_crate_01a`] = true
}

local BOX_PICKUP_DISTANCE = 3.0

local function GenerateDeliveryBoxId()
	NextDeliveryBoxId = NextDeliveryBoxId + 1
	return ("delivery_box_%s"):format(NextDeliveryBoxId)
end

local function VecToTable(coords)
	return {
		x = coords.x + 0.0,
		y = coords.y + 0.0,
		z = coords.z + 0.0
	}
end

local function GetBoxPublicData(box)
	return {
		id = box.id,
		netId = box.netId,
		model = box.model,
		state = box.state,
		carrier = box.carrier,
		coords = box.coords
	}
end

local function SyncDeliveryBox(box, target)
	TriggerClientEvent("deliveryBox:syncBox", target or -1, GetBoxPublicData(box))
end

local function RemoveDeliveryBox(boxId)
	local box = DeliveryBoxes[boxId]
	if not box then return false end

	if box.entity ~= 0 and DoesEntityExist(box.entity) then DeleteEntity(box.entity) end

	DeliveryBoxes[boxId] = nil
	TriggerClientEvent("deliveryBox:removeBox", -1, boxId)
	return true
end

local function StartDeliveryBox(targetSrc, model)
	targetSrc = tonumber(targetSrc)
	if not targetSrc or targetSrc <= 0 or not GetPlayerName(targetSrc) then return false, "Giocatore non valido." end

	model = type(model) == "string" and joaat(model) or tonumber(model)
	if not model or not AllowedBoxModels[model] then return false, "Modello cassa non consentito." end

	local ped = GetPlayerPed(targetSrc)
	if ped == 0 or not DoesEntityExist(ped) then return false, "Ped non valido." end

	local playerCoords = GetEntityCoords(ped)
	local heading = GetEntityHeading(ped)
	local forward = GetForwardVectorFromHeading(heading)

	local spawnCoords = vector3(
		playerCoords.x + forward.x * 1.0,
		playerCoords.y + forward.y * 1.0,
		playerCoords.z + 0.2
	)

	local entity = CreateObject(model, spawnCoords.x, spawnCoords.y, spawnCoords.z, true, true, false)
	if entity == 0 then return false, "Creazione della cassa fallita." end

	local expireAt = GetGameTimer() + 3000
	while not DoesEntityExist(entity) and GetGameTimer() < expireAt do Wait(50) end

	if not DoesEntityExist(entity) then
		DeleteEntity(entity)
		return false, "La cassa non è stata creata correttamente."
	end

	SetEntityHeading(entity, heading)
	SetEntityOrphanMode(entity, 2)

	local netId = NetworkGetNetworkIdFromEntity(entity)
	if not netId or netId <= 0 then
		DeleteEntity(entity)
		return false, "Network ID della cassa non valido."
	end

	local boxId = GenerateDeliveryBoxId()

	DeliveryBoxes[boxId] = {
		id = boxId,
		entity = entity,
		netId = netId,
		model = model,
		state = "carried",
		carrier = targetSrc,
		coords = VecToTable(spawnCoords),
		createdAt = os.time()
	}

	Entity(entity).state:set("deliveryBoxId", boxId, true)
	Entity(entity).state:set("deliveryBoxState", "carried", true)
	Entity(entity).state:set("deliveryBoxCarrier", targetSrc, true)

	SyncDeliveryBox(DeliveryBoxes[boxId])
	TriggerClientEvent("deliveryBox:attachToPlayer", targetSrc, boxId, netId)

	return true, boxId
end

-- Puoi richiamarlo da qualsiasi altro file server:
-- TriggerEvent("deliveryBox:StartDeliveryBox", src, "prop_box_wood02a_pu")
AddEventHandler("deliveryBox:StartDeliveryBox", function(targetSrc, model)
	local success, result = StartDeliveryBox(targetSrc, model)
	if not success then print(("[DeliveryBox] Errore creazione: %s"):format(result)) end
end)

-- Eventuale chiamata client. Il modello viene comunque controllato nell'allowlist.
RegisterNetEvent("deliveryBox:start", function(model)
	local src = source
	local success, result = StartDeliveryBox(src, model)

	if not success then
		TriggerClientEvent("deliveryBox:error", src, result)
		return
	end

	TriggerClientEvent("deliveryBox:created", src, result)
end)

RegisterNetEvent("deliveryBox:requestPickup", function(boxId, netId)
	local src = source
	local box = DeliveryBoxes[boxId]

	if not box then
		local entity = NetworkGetEntityFromNetworkId(netId)
		if entity ~= 0 and DoesEntityExist(entity) then
			DeleteEntity(entity)
		end

		TriggerClientEvent("deliveryBox:pickupResult", src, false, "Cassa inesistente.")
		TriggerClientEvent("anim:cmd", src, "prova3 La cassa era vuota.")
		return
	end

	-- Questo è il vero blocco contro il doppio pickup.
	if box.state ~= "dropped" or box.carrier ~= nil then
		TriggerClientEvent("deliveryBox:pickupResult", src, false, "La cassa è già stata presa.")
		return
	end

	if box.entity == 0 or not DoesEntityExist(box.entity) then
		RemoveDeliveryBox(boxId)
		TriggerClientEvent("deliveryBox:pickupResult", src, false, "La cassa non esiste più.")
		return
	end

	local ped = GetPlayerPed(src)
	if ped == 0 or not DoesEntityExist(ped) then return end

	local playerCoords = GetEntityCoords(ped)
	local boxCoords = GetEntityCoords(box.entity)

	if #(playerCoords - boxCoords) > BOX_PICKUP_DISTANCE then
		TriggerClientEvent("deliveryBox:pickupResult", src, false, "Sei troppo lontano dalla cassa.")
		return
	end

	-- Lock atomico: dalla prossima richiesta la cassa risulta già occupata.
	box.state = "carried"
	box.carrier = src
	box.coords = VecToTable(boxCoords)

	Entity(box.entity).state:set("deliveryBoxState", "carried", true)
	Entity(box.entity).state:set("deliveryBoxCarrier", src, true)

	SyncDeliveryBox(box)
	TriggerClientEvent("deliveryBox:attachToPlayer", src, box.id, box.netId)
	TriggerClientEvent("deliveryBox:pickupResult", src, true, "Hai raccolto la cassa.")
end)

RegisterNetEvent("deliveryBox:drop", function(boxId)
	local src = source
	local box = DeliveryBoxes[boxId]

	if not box then return end
	if box.state ~= "carried" or box.carrier ~= src then return end
	if box.entity == 0 or not DoesEntityExist(box.entity) then
		RemoveDeliveryBox(boxId)
		return
	end

	local ped = GetPlayerPed(src)
	if ped == 0 or not DoesEntityExist(ped) then return end

	local playerCoords = GetEntityCoords(ped)
	local heading = GetEntityHeading(ped)
	local forward = GetForwardVectorFromHeading(heading)

	local dropCoords = vector3(
		playerCoords.x + forward.x * 1.0,
		playerCoords.y + forward.y * 1.0,
		playerCoords.z - 0.85
	)

	box.state = "dropped"
	box.carrier = nil
	box.coords = VecToTable(dropCoords)

	Entity(box.entity).state:set("deliveryBoxState", "dropped", true)
	Entity(box.entity).state:set("deliveryBoxCarrier", 0, true)

	-- Prima aggiorniamo lo stato server, poi ordiniamo il distacco.
	SyncDeliveryBox(box)
	TriggerClientEvent("deliveryBox:detach", -1, box.id, box.netId, box.coords)
end)

RegisterNetEvent("deliveryBox:requestSync", function()
	local src = source
	local boxes = {}

	for boxId, box in pairs(DeliveryBoxes) do
		if box.entity ~= 0 and DoesEntityExist(box.entity) then
			boxes[boxId] = GetBoxPublicData(box)
		end
	end

	TriggerClientEvent("deliveryBox:syncAll", src, boxes)
end)

RegisterNetEvent("deliveryBox:delete", function(boxId)
	local src = source
	local box = DeliveryBoxes[boxId]
	if not box then return end

	-- Nell'utilizzo reale aggiungi qui il controllo consegna/apertura.
	if box.carrier ~= src then return end

	RemoveDeliveryBox(boxId)
end)

AddEventHandler("playerDropped", function()
	local src = source

	for _, box in pairs(DeliveryBoxes) do
		if box.state == "carried" and box.carrier == src then
			local entityCoords = box.coords

			if box.entity ~= 0 and DoesEntityExist(box.entity) then
				local currentCoords = GetEntityCoords(box.entity)
				entityCoords = VecToTable(currentCoords)
			end

			box.state = "dropped"
			box.carrier = nil
			box.coords = entityCoords

			if box.entity ~= 0 and DoesEntityExist(box.entity) then
				Entity(box.entity).state:set("deliveryBoxState", "dropped", true)
				Entity(box.entity).state:set("deliveryBoxCarrier", 0, true)
			end

			SyncDeliveryBox(box)
			TriggerClientEvent("deliveryBox:detach", -1, box.id, box.netId, box.coords)
		end
	end
end)

exports("StartDeliveryBox", StartDeliveryBox)
exports("RemoveDeliveryBox", RemoveDeliveryBox)

exports("GetDeliveryBox", function(boxId)
	return DeliveryBoxes[boxId]
end)

exports("GetDeliveryBoxes", function()
	return DeliveryBoxes
end)

-- Comando server di prova: /createbox [ID] [modello]
RegisterCommand("createbox", function(src, args)
	local target = tonumber(args[1]) or src
	local model = args[2] or "sf_prop_sf_crate_01a"

	local success, result = StartDeliveryBox(target, model)
	print(success and ("[DeliveryBox] Creata: " .. result) or ("[DeliveryBox] Errore: " .. result))
end, true)