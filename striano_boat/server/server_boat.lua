RegisterNetEvent("striano_obj_sync:update", function(netId, coords, rot) 
	local src = source 
	TriggerClientEvent("striano_obj_sync:update", -1, src, netId, coords, rot) 
end)

RegisterNetEvent("striano_bridge:giveOxItem", function(item, amount)
    local src = source
    amount = tonumber(amount) or 1
    if GetResourceState('ox_inventory') ~= 'started' then return end
    exports.ox_inventory:AddItem(src, item, amount)
end)

RegisterNetEvent("striano_bridge:giveQbItem", function(item, amount)
    local src = source
    amount = tonumber(amount) or 1
    if GetResourceState('qb-core') ~= 'started' then return end
    local QBCore = exports['qb-core']:GetCoreObject()
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then Player.Functions.AddItem(item, amount) end
end)

-- SERVER - BOAT PASSEGGERO SIT
local BoatSeats={}
local PlayerBoatSeat={}
local PendingBoatInvites={}

RegisterNetEvent("striano_boat:invitePassenger",function(target,boatNetId, idBoat, seats)
	local src=source
	target=tonumber(target)
	boatNetId=tonumber(boatNetId)

	if not target or not boatNetId or target==src then return end
	if not GetPlayerName(target) then return end
	if PlayerBoatSeat[target] then return end
	if PendingBoatInvites[target] then return end

	BoatSeats[boatNetId]=BoatSeats[boatNetId] or {}

	PendingBoatInvites[target]={
		driver=src,
		boatNetId=boatNetId,
		idBoat=idBoat,
		seatCount=tonumber(seats) or 0,
		expires=os.time()+10
	}
	
	TriggerClientEvent("striano_boat:sendInvite",src)
	TriggerClientEvent("striano_boat:receiveInvite",target,src,boatNetId, idBoat, seats)

	SetTimeout(10000,function()
		local invite=PendingBoatInvites[target]
		if invite and invite.driver==src and invite.boatNetId==boatNetId then
			PendingBoatInvites[target]=nil
		end
	end)
end)

RegisterNetEvent("striano_boat:acceptInvite",function(idBoat)
	local src=source
	-- print("[ACCEPT 1] ricevuto",src,idBoat)

	local invite=PendingBoatInvites[src]
	if not invite then print("[ACCEPT STOP] invite nil") return end

	PendingBoatInvites[src]=nil

	if invite.expires<os.time() then print("[ACCEPT STOP] expired") return end
	if not GetPlayerName(invite.driver) then print("[ACCEPT STOP] driver offline") return end
	if PlayerBoatSeat[src] then print("[ACCEPT STOP] gia seduto") return end

	local boatNetId=invite.boatNetId
	local boat=NetworkGetEntityFromNetworkId(boatNetId)
	if not boat or boat==0 or not DoesEntityExist(boat) then print("[ACCEPT STOP] boat non esiste",boatNetId) return end

	local seatCount=tonumber(invite.seatCount) or 0
	-- print("[ACCEPT 2] boat:",boatNetId,"seatCount:",seatCount)

	if seatCount<=0 then print("[ACCEPT STOP] seatCount 0") return end

	BoatSeats[boatNetId]=BoatSeats[boatNetId] or {}

	local seatId=nil

	for i=1,seatCount do
		if not BoatSeats[boatNetId][i] then
			seatId=i
			break
		end
	end

	-- print("[ACCEPT 3] seatId:",seatId)

	if not seatId then
		TriggerClientEvent("striano_boat:noFreeSeats",src)
		return
	end

	BoatSeats[boatNetId][seatId]=src
	PlayerBoatSeat[src]={boatNetId=boatNetId,seatId=seatId}

	-- print("[ACCEPT 4] INVIO seatAssigned",src,boatNetId,seatId,idBoat)
	TriggerClientEvent("striano_boat:seatAssigned",src,boatNetId,seatId,idBoat)
end)

RegisterNetEvent("striano_boat:declineInvite",function()
	PendingBoatInvites[source]=nil
end)

RegisterNetEvent("striano_boat:releaseSeat",function()
	local src=source
	local data=PlayerBoatSeat[src]
	if not data then return end

	if BoatSeats[data.boatNetId] and BoatSeats[data.boatNetId][data.seatId]==src then
		BoatSeats[data.boatNetId][data.seatId]=nil

		if not next(BoatSeats[data.boatNetId]) then
			BoatSeats[data.boatNetId]=nil
		end
	end

	PlayerBoatSeat[src]=nil
end)

AddEventHandler("playerDropped",function()
	local src=source
	local data=PlayerBoatSeat[src]

	if data then
		if BoatSeats[data.boatNetId] and BoatSeats[data.boatNetId][data.seatId]==src then
			BoatSeats[data.boatNetId][data.seatId]=nil

			if not next(BoatSeats[data.boatNetId]) then
				BoatSeats[data.boatNetId]=nil
			end
		end

		PlayerBoatSeat[src]=nil
	end

	PendingBoatInvites[src]=nil

	for target,invite in pairs(PendingBoatInvites) do
		if invite.driver==src then PendingBoatInvites[target]=nil end
	end
end)