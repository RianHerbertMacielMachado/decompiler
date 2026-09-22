-- THIS LIST OF ADMIN ARE ABLE TO DO THE COMMANDS:
-- /assignHorse ID_Player ID_Horse_Of_Your_List
-- /mounts ID_Player
-- /delmount ID_Player ID_Mount

varLICENSE="steam:"

local AdminList={
	"steam:11000011791d738", -- THIS IS MY STEAM HEX, CHANGE WITH YOUR STEAM HEX
	-- "steam:11000011791d738",
	-- "license:XXXXXXXXXX",
}

function ImAdmin(hex)
	for k,v in ipairs(AdminList) do
		if string.match(v,hex) then
			return true
		end
	end
	return false
end

-- MOUNTS JSON STORAGE
local MOUNTS_FILE="mounts.json"
local MountsData={}
local MountsFileCorrupted=false

local function GetMountIdentifier(player)
	player=tonumber(player)
	if not player then return nil end
	local identifiers=GetPlayerIdentifiers(player)
	if not identifiers or #identifiers==0 then return nil end
	-- Mantiene il comportamento originale tramite varLICENSE
	for _,identifier in ipairs(identifiers) do
		if identifier:sub(1,#varLICENSE)==varLICENSE then
			return identifier
		end
	end
	-- Fallback license FiveM
	for _,identifier in ipairs(identifiers) do
		if identifier:sub(1,8)=="license:" then
			return identifier
		end
	end

	return identifiers[1]
end

local function LoadMounts()
	local raw=LoadResourceFile(GetCurrentResourceName(),MOUNTS_FILE)
	if not raw or raw=="" then
		MountsData={}
		SaveResourceFile(GetCurrentResourceName(),MOUNTS_FILE,"{}",2)
		print("^2[MOUNTS]^7 mounts.json creato.")
		return true
	end
	local ok,data=pcall(json.decode,raw)
	if not ok or type(data)~="table" then
		MountsFileCorrupted=true
		print("^1[MOUNTS]^7 mounts.json corrotto. Salvataggio BLOCCATO per sicurezza.")
		return false
	end
	MountsData=data
	return true
end

local function SaveMounts()
	if MountsFileCorrupted then
		print("^1[MOUNTS]^7 Salvataggio bloccato: mounts.json era corrotto all'avvio.")
		return false
	end
	local ok,raw=pcall(json.encode,MountsData)
	if not ok or type(raw)~="string" or raw=="" then
		print("^1[MOUNTS]^7 Errore json.encode.")
		return false
	end
	if raw:find("%z") then
		print("^1[MOUNTS]^7 Byte NUL rilevato. Salvataggio annullato.")
		return false
	end
	local saved=SaveResourceFile(GetCurrentResourceName(),MOUNTS_FILE,raw,#raw)
	if not saved then
		print("^1[MOUNTS]^7 SaveResourceFile fallito.")
		return false
	end
	return true
end

local function GetPlayerMounts(identifier)
	if not identifier then return {} end
	local data=MountsData[identifier]
	if type(data)~="table" or type(data.mounts)~="table" then
		return {}
	end
	return data.mounts
end

local function SetPlayerMounts(identifier,name,mounts)
	if not identifier then return false end
	if type(mounts)~="table" then mounts={} end
	MountsData[identifier]=MountsData[identifier] or {}
	MountsData[identifier].name=name or MountsData[identifier].name or identifier
	MountsData[identifier].mounts=mounts
	return SaveMounts()
end

CreateThread(function()
	LoadMounts()
end)

-- GET HORSE LIST
RegisterServerEvent('getHorseList')
AddEventHandler('getHorseList',function()
	local player = source player=tonumber(player)
	if not player then return end
	local identifier=GetMountIdentifier(player)
	if not identifier then
		TriggerClientEvent("getBackMyAnimals",player,{})
		return
	end
	local mounts=GetPlayerMounts(identifier)
	TriggerClientEvent("getBackMyAnimals",player,mounts)
end)

-- ASSIGN HORSE
RegisterCommand('assignHorse',function(source,args,showError)
	local myIdent=GetMountIdentifier(source)
	if not myIdent then return end
	if args and #args>0 then
		if ImAdmin(myIdent) then
			local target=tonumber(args[1])
			local id=tonumber(args[2])

			if target and id and id>0 then
				TriggerClientEvent("AssignHorse",source,id,target)
			end
		end
	end
end)

-- SAVE PLAYER ANIMALS
RegisterServerEvent('Striano:SaveAnimal')
AddEventHandler('Striano:SaveAnimal',function(player,info)
	player=tonumber(player)
	if not player then return end
	local identifier=GetMountIdentifier(player)
	if not identifier then
		print("^1[MOUNTS]^7 Identifier non trovato per player "..tostring(player))
		return
	end
	if type(info)~="table" then
		print("^1[MOUNTS]^7 Tentativo di salvare una lista cavalcature non valida.")
		return
	end
	SetPlayerMounts(
		identifier,
		GetPlayerName(player),
		info
	)
end)

RegisterNetEvent('getOtherHorseList')
AddEventHandler('getOtherHorseList',function(target)
	local source=source
	local myIdent=GetMountIdentifier(source)
	if not myIdent or not ImAdmin(myIdent) then return end
	target=tonumber(target)
	if not target or not GetPlayerName(target) then
		TriggerClientEvent("getBackOtherAnimals",source,{},target)
		return
	end
	local identifier=GetMountIdentifier(target)
	if not identifier then
		TriggerClientEvent("getBackOtherAnimals",source,{},target)
		return
	end
	local mounts=GetPlayerMounts(identifier) or {}
	TriggerClientEvent("getBackOtherAnimals",source,mounts,target,GetPlayerName(target))
end)

-- ADMIN: DELETE SINGLE MOUNT
-- /delmount ID_PLAYER ID_MOUNT
RegisterCommand("delmount",function(source,args)
	local myIdent=GetMountIdentifier(source)
	if not myIdent or not ImAdmin(myIdent) then return end
	local target=tonumber(args[1])
	local mountIndex=tonumber(args[2])
	if not target or not GetPlayerName(target) then
		print("/delmount ID_PLAYER ID_MOUNT")
		return
	end
	if not mountIndex or mountIndex<1 then
		print("^1[MOUNTS]^7 INDEX MOUNT NOT FOUND.")
		return
	end
	local identifier=GetMountIdentifier(target)
	if not identifier then
		print("^1[MOUNTS]^7 IDENTIFIER NOT FOUND.")
		return
	end
	local mounts=GetPlayerMounts(identifier)
	if not mounts[mountIndex] then
		print(("^1[MOUNTS]^7 MOUNT %d NOT FOUND."):format(mountIndex))
		return
	end
	table.remove(mounts,mountIndex)
	if not SetPlayerMounts(identifier,GetPlayerName(target),mounts) then
		print("^1[MOUNTS]^7 ERROR TO SAVE.")
		return
	end
	-- Aggiorna immediatamente la lista del player
	TriggerClientEvent("getBackMyAnimals",target,mounts)
	print(("^2[MOUNTS]^7 MOUNT ID ^3%d^7 DELETED [admin: %s] FROM ^5%s^7. NOW ARE: ^3%d^7"):format(
		mountIndex,
		GetPlayerName(source),
		GetPlayerName(target),
		#mounts
	))
end)

-- ADMIN: DELETE ALL PLAYER MOUNTS
-- /delmounts ID_PLAYER
RegisterCommand("delAllMounts",function(source,args)
	local myIdent=GetMountIdentifier(source)
	if not myIdent or not ImAdmin(myIdent) then return end
	local target=tonumber(args[1])
	if not target or not GetPlayerName(target) then
		-- print("^1[MOUNTS]^7 Usa /delmounts ID_PLAYER")
		return
	end
	local identifier=GetMountIdentifier(target)
	if not identifier then return end
	MountsData[identifier]=nil
	if not SaveMounts() then
		-- print("^1[MOUNTS]^7 Errore durante il salvataggio.")
		return
	end
	TriggerClientEvent("getBackMyAnimals",target,{})
	print(("^2[MOUNTS]^7 ALL THE MOUNTS OF ^5%s^7 HAS BEEN DELETED FROM ^5%s^7."):format(
		GetPlayerName(target), GetPlayerName(source)
	))
end)

RegisterNetEvent("adminDeleteMount")
AddEventHandler("adminDeleteMount",function(target,mountIndex)
	local source=source
	local myIdent=GetMountIdentifier(source)
	if not myIdent or not ImAdmin(myIdent) then return end
	target=tonumber(target)
	mountIndex=tonumber(mountIndex)
	if not target or not GetPlayerName(target) then
		print("^1[MOUNTS]^7 PLAYER NOT VALID.")
		return
	end
	if not mountIndex or mountIndex<1 then
		print("^1[MOUNTS]^7 INDEX MOUNT NOT VALID.")
		return
	end
	local identifier=GetMountIdentifier(target)
	if not identifier then
		print("^1[MOUNTS]^7 IDENTIFIER NOT FOUND.")
		return
	end
	local mounts=GetPlayerMounts(identifier)
	if not mounts or not mounts[mountIndex] then
		print(("^1[MOUNTS]^7 MOUNT ID %d NOT FOUND."):format(mountIndex))
		return
	end
	table.remove(mounts,mountIndex)
	if not SetPlayerMounts(identifier,GetPlayerName(target),mounts) then
		print("^1[MOUNTS]^7 ERROR TO SAVE DEL MOUNT.")
		return
	end
	TriggerClientEvent("getBackMyAnimals",target,mounts)
	print(("^2[MOUNTS]^7 %s DELETED THE MOUNT ^3%d^7 di ^5%s^7. NOW ARE: ^3%d^7"):format(GetPlayerName(source),mountIndex,GetPlayerName(target),#mounts))
end)

RegisterNetEvent("adminTakeMount") -- Here you can get mounts from other players list as admin!
AddEventHandler("adminTakeMount",function(target,mountIndex)
	local source=source
	local myIdent=GetMountIdentifier(source)
	if not myIdent or not ImAdmin(myIdent) then return end
	target=tonumber(target)
	mountIndex=tonumber(mountIndex)
	if not target or not GetPlayerName(target) then return end
	if target==source then return end
	if not mountIndex or mountIndex<1 then return end
	local targetIdent=GetMountIdentifier(target)
	if not targetIdent then return end
	local targetName=GetPlayerName(target)
	local adminName=GetPlayerName(source)
	local targetMounts=GetPlayerMounts(targetIdent) or {}
	local adminMounts=GetPlayerMounts(myIdent) or {}
	local mount=targetMounts[mountIndex]
	if not mount then
		print(("^1[MOUNTS]^7 MOUNT ID %d NOT FOUND."):format(mountIndex))
		return
	end
	table.remove(targetMounts,mountIndex)
	adminMounts[#adminMounts+1]=mount
	if not SetPlayerMounts(targetIdent,targetName,targetMounts) then
		print("^1[MOUNTS]^7 ERROR SAVE TARGET FOR TAKE MOUNT.")
		return
	end
	if not SetPlayerMounts(myIdent,adminName,adminMounts) then
		table.insert(targetMounts,mountIndex,mount)
		SetPlayerMounts(targetIdent,targetName,targetMounts)

		print("^1[MOUNTS]^7 ERROR TAKE MOUNT, FAILED.")
		return
	end
	TriggerClientEvent("getBackMyAnimals",target,targetMounts)
	TriggerClientEvent("getBackMyAnimals",source,adminMounts)
	print(("^2[MOUNTS]^7 ^5%s^7 TAKED ^3%s^7 FROM ^5%s^7."):format(adminName,mount.model or "unknown",targetName))
end)

-- FOR OX VERSION!
-- ============================================================
-- OX_INVENTORY AUTO MONEY BRIDGE
-- Automatically used only when ox_inventory is running
-- ============================================================

local OxMoneyItem='money' -- Change to 'cash' if your server uses cash

local function OxInventoryAvailable()
	if GetResourceState('striano_inventory')=='started' then return false end
	return GetResourceState('ox_inventory')=='started'
end

RegisterNetEvent("inv3d:tryPayCoins")
AddEventHandler("inv3d:tryPayCoins",function(reqId,price,invName)
	if not OxInventoryAvailable() then return end

	local src=source
	reqId=tonumber(reqId) or 0
	price=math.floor(tonumber(price) or 0)
	invName=tostring(invName or "player")

	if price<=0 then
		local have=exports.ox_inventory:GetItemCount(src,OxMoneyItem) or 0
		TriggerClientEvent("inv3d:payCoinsResult",src,reqId,true,have)
		return
	end

	local have=exports.ox_inventory:GetItemCount(src,OxMoneyItem) or 0

	if have<price then
		TriggerClientEvent("inv3d:payCoinsResult",src,reqId,false,have)
		return
	end

	local removed=exports.ox_inventory:RemoveItem(src,OxMoneyItem,price)

	if not removed then
		local nowHave=exports.ox_inventory:GetItemCount(src,OxMoneyItem) or have
		TriggerClientEvent("inv3d:payCoinsResult",src,reqId,false,nowHave)
		return
	end

	local left=exports.ox_inventory:GetItemCount(src,OxMoneyItem) or 0
	TriggerClientEvent("inv3d:payCoinsResult",src,reqId,true,left)
end)

RegisterNetEvent('ridehorse:giveMoney')
AddEventHandler('ridehorse:giveMoney',function(amount)
	if not OxInventoryAvailable() then return end

	local src=source
	amount=math.floor(tonumber(amount) or 0)
	if amount<=0 then return end

	exports.ox_inventory:AddItem(src,OxMoneyItem,amount)
end)