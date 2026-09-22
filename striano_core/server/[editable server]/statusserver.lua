local StatusMax=1000000 -- 1 milione

local needs={
	{name="craftlv",val=1},
	{name="craftxp",val=0},
	{name="classepl",val=0},
	{name="linguapl",val=1},
	{name="puntiattesa",val=0},
	{name="npcuccisi",val=0},
	{name="sopravvivo",val=0},
	{name="vitapl",val=500},
	{name="armorpl",val=0},
	{name="stress",val=0},
	{name="skill_meccanica",val=0},
	{name="sete",val=1000000},
	{name="fame",val=1000000},
	{name="igiene",val=1000000},
}

-- Cache src -> identifier
local PlayerIdMap={}

-------------------------------------------------
-- IDENTIFIER
-------------------------------------------------

function GetMainIdentifier(src)
	src=tonumber(src)
	if not src then return nil end

	if PlayerIdMap[src] then return PlayerIdMap[src] end

	-- Usiamo prima l'identifier ufficiale del core
	if identOf then
		local identifier=identOf(src)
		if identifier then
			PlayerIdMap[src]=identifier
			return identifier
		end
	end

	-- Fallback license
	local identifiers=GetPlayerIdentifiers(src)

	for _,id in ipairs(identifiers) do
		if id:find("license:",1,true)==1 then
			PlayerIdMap[src]=id
			return id
		end
	end

	return nil
end

-------------------------------------------------
-- CREA STATUS DEFAULT
-------------------------------------------------

function MakeDefaultStatus()
	local st={}

	for _,n in ipairs(needs) do
		st[n.name]=n.val
	end

	return st
end

-------------------------------------------------
-- CLAMP
-------------------------------------------------

function ClampStatusValue(name,value)
	value=tonumber(value) or 0

	if name=="sete" or name=="fame" or name=="igiene" then
		if value<0 then value=0 end
		if value>StatusMax then value=StatusMax end
	end

	return value
end

-------------------------------------------------
-- OTTIENI / CREA STATUS PLAYER
-------------------------------------------------

function EnsureStatusFor(src)
	local identifier=GetMainIdentifier(src)
	if not identifier then return nil,nil end

	local user=UserData.Get(identifier)
	if not user then return nil,nil end

	if type(user.status)~="table" then
		user.status=MakeDefaultStatus()
		SetVarDB(identifier,"status",user.status)
	end

	-- Importantissimo per vecchi player:
	-- se aggiungiamo un nuovo status in needs, viene aggiunto
	-- automaticamente senza cancellare quelli esistenti.
	local changed=false

	for _,n in ipairs(needs) do
		if user.status[n.name]==nil then
			user.status[n.name]=n.val
			changed=true
		end
	end

	if changed then
		SetVarDB(identifier,"status",user.status)
	end

	return identifier,user.status
end

-------------------------------------------------
-- API INTERNA
-------------------------------------------------

function GetStatus(src)
	local identifier,st=EnsureStatusFor(src)
	return identifier,st
end

-------------------------------------------------
-- STATEBAG
-------------------------------------------------

function PushStatusKeyToState(src,key,value)
	local ply=Player(src)
	if not ply then return end

	ply.state:set(key,value,true)
end

function PushAllStatusToState(src)
	local _,st=EnsureStatusFor(src)
	if not st then return end

	local ply=Player(src)
	if not ply then return end

	for _,n in ipairs(needs) do
		local key=n.name
		local value=st[key]

		if value==nil then value=n.val end

		ply.state:set(key,value,true)
	end
end

-------------------------------------------------
-- SET
-------------------------------------------------

function SetStatusValue(src,key,value)
	local identifier,st=EnsureStatusFor(src)
	if not identifier or not st then return false end

	value=ClampStatusValue(key,value)
	st[key]=value

	SetVarDB(identifier,"status",st)
	PushStatusKeyToState(src,key,value)

	return true
end

-------------------------------------------------
-- ADD
-------------------------------------------------

function AddStatusValue(src,key,amount)
	local identifier,st=EnsureStatusFor(src)
	if not identifier or not st then return false end

	amount=tonumber(amount) or 0

	local old=tonumber(st[key]) or 0
	local newVal=ClampStatusValue(key,old+amount)

	st[key]=newVal

	SetVarDB(identifier,"status",st)
	PushStatusKeyToState(src,key,newVal)

	return newVal
end

-------------------------------------------------
-- REMOVE
-------------------------------------------------

function RemoveStatusValue(src,key,amount)
	local identifier,st=EnsureStatusFor(src)
	if not identifier or not st then return false end

	amount=tonumber(amount) or 0

	local old=tonumber(st[key]) or 0
	local newVal=ClampStatusValue(key,old-amount)

	st[key]=newVal

	SetVarDB(identifier,"status",st)
	PushStatusKeyToState(src,key,newVal)

	return newVal
end

-------------------------------------------------
-- CLEAR STATUS
-------------------------------------------------

function ClearStatusBySteamHex(rawIdentifier)
	if not rawIdentifier or rawIdentifier=="" then
		return false,"Identifier vuoto"
	end

	local identifier=tostring(rawIdentifier)

	if not identifier:find(":") then
		identifier="license:"..identifier
	end

	local user=UserData.Get(identifier)

	if not user then
		return false,identifier
	end

	-- Non cancelliamo il player.
	-- Reset solo degli status.
	user.status=MakeDefaultStatus()

	SetVarDB(identifier,"status",user.status)

	-- Se il player è online, aggiorna subito gli statebag
	for _,sid in ipairs(GetPlayers()) do
		sid=tonumber(sid)

		if GetMainIdentifier(sid)==identifier then
			PushAllStatusToState(sid)
			break
		end
	end

	return true,identifier
end

-------------------------------------------------
-- EVENTI PER ALTRI SCRIPT
-------------------------------------------------

RegisterNetEvent("status:add",function(targetSrc,key,amount)
	if not targetSrc or not key then return end
	AddStatusValue(targetSrc,key,amount or 1)
end)

RegisterNetEvent("status:remove",function(targetSrc,key,amount)
	if not targetSrc or not key then return end
	RemoveStatusValue(targetSrc,key,amount or 1)
end)

RegisterNetEvent("status:set",function(targetSrc,key,value)
	if not targetSrc or not key then return end
	SetStatusValue(targetSrc,key,value)
end)

RegisterNetEvent("status:request",function()
	local src=source
	local identifier,st=GetStatus(src)

	TriggerClientEvent("status:response",src,identifier,st)
end)

RegisterNetEvent("status:requestVar",function(key)
	local src=source
	local _,st=GetStatus(src)

	if not st then
		TriggerClientEvent("status:responseVar_"..key,src,nil)
		return
	end

	TriggerClientEvent("status:responseVar_"..key,src,st[key])
end)

-------------------------------------------------
-- PLAYER JOIN
-------------------------------------------------

AddEventHandler("playerJoining",function()
	local src=source

	EnsureStatusFor(src)
	PushAllStatusToState(src)
end)

-------------------------------------------------
-- PLAYER DROP
-------------------------------------------------

AddEventHandler("playerDropped",function()
	PlayerIdMap[source]=nil
end)

-------------------------------------------------
-- /mystatus
-------------------------------------------------

RegisterCommand("mystatus",function(src,args,raw)
	if src==0 then return end

	local identifier,st=GetStatus(src)
	if not identifier or not st then return end

	TriggerClientEvent("chat:addMessage",src,{
		args={
			"[STATUS]",
			("ID: %s | craftlv: %d | craftxp: %d | vitapl: %d | sete: %d | fame: %d | igiene: %d"):format(
				identifier,
				st.craftlv or 0,
				st.craftxp or 0,
				st.vitapl or 0,
				st.sete or 0,
				st.fame or 0,
				st.igiene or 0
			)
		}
	})
end,false)

-------------------------------------------------
-- /setstatus
-------------------------------------------------

RegisterCommand("setstatus",function(src,args,raw)
	if GetPlayerName(src)~="scofield" then return end

	local targetId=tonumber(args[1])
	local key=args[2]
	local value=args[3]

	if not targetId or not key or not value then
		if src==0 then
			print("Uso: /setstatus [ID_Player] [Status_Name] [Value]")
		else
			TriggerClientEvent("chat:addMessage",src,{
				args={"[STATUS]","/setstatus [ID_Player] [Status_Name] [Value]"}
			})
		end
		return
	end

	value=tonumber(value) or value

	if not GetPlayerName(targetId) then
		if src==0 then
			print("Player con ID "..targetId.." non trovato.")
		else
			TriggerClientEvent("chat:addMessage",src,{
				args={"[STATUS]","Player ID "..targetId.." not found."}
			})
		end
		return
	end

	local _,st=GetStatus(targetId)
	if not st then return end

	if st[key]==nil then
		if src==0 then
			print("Status '"..key.."' non esiste.")
		else
			TriggerClientEvent("chat:addMessage",src,{
				args={"[STATUS]","Status '"..key.."' not exist."}
			})
		end
		return
	end

	SetStatusValue(targetId,key,value)

	if src==0 then
		print("SetStatus: "..key.." impostato a "..tostring(value).." per Player "..targetId)
	else
		TriggerClientEvent("chat:addMessage",src,{
			args={"[STATUS]",key.." = "..value.." for "..targetId}
		})
	end

	TriggerClientEvent("chat:addMessage",targetId,{
		args={"[STATUS]",key.." updated to "..value}
	})
end,false)

-------------------------------------------------
-- CLEAR STATUS BY IDENTIFIER
-------------------------------------------------

RegisterNetEvent("status:clearBySteamHex",function(steamHex)
	local src=source
	local ok,identifier=ClearStatusBySteamHex(steamHex)

	if src~=0 then
		if ok then
			TriggerClientEvent("chat:addMessage",src,{
				args={"[STATUS]","Cleared data for "..(identifier or "?")}
			})
		else
			TriggerClientEvent("chat:addMessage",src,{
				args={"[STATUS]","No data found "..(identifier or steamHex)}
			})
		end
	else
		if ok then
			print("[STATUS] clearBySteamHex: reset datas for "..(identifier or "?"))
		else
			print("[STATUS] clearBySteamHex: no data for "..(identifier or steamHex))
		end
	end
end)

-------------------------------------------------
-- RESOURCE START
-------------------------------------------------

AddEventHandler("onResourceStart",function(res)
	if res~=GetCurrentResourceName() then return end

	-- Se fai restart del core con player già online,
	-- ricrea/cachea gli status e rispedisce gli statebag.
	for _,sid in ipairs(GetPlayers()) do
		sid=tonumber(sid)
		EnsureStatusFor(sid)
		PushAllStatusToState(sid)
	end
end)