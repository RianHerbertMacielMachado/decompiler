DebugMode = false
looperPortalActive = false
function LoopPortali()
	if looperPortalActive then return end
	looperPortalActive = true
	CreateThread(function()
		while true do
			Wait(60000)
			if #Portali > 0 then 
				for i=1, #Portali, 1 do 
					if Portali[i] and Portali[i].tempo > 5 then -- Delete Portal every 5 min.
						Portali[i].tempo = Portali[i].tempo - 1
						if Portali[i].tempo <= 0 then 
							TriggerClientEvent("delPortale", -1, i)
							table.remove(Portali, i)
							print("Portal ID " .. i .. " deleted for timer to 0.")
						end
					end
				end
			else
				looperPortalActive = false
				return
			end
		end
	end)
end

function giveItemFunc(target, item, qt, metadata, slot)
    target = tonumber(target)
    qt = tonumber(qt) or 1
    metadata = metadata or {}

    if GetResourceState('ox_inventory') == 'started' then
        return exports.ox_inventory:AddItem(target, item, qt, metadata, slot)
    end

    if GetResourceState('qb-inventory') == 'started' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(target)
        if Player then
            return Player.Functions.AddItem(item, qt, slot, metadata)
        end
        return false
    end

    if GetResourceState('striano_inventory') == 'started' then
        TriggerEvent("inv3d:serverGiveItem", target, "player", item, qt, metadata)
        return true
    end

    TriggerEvent("inv3d:serverGiveItem", target, "player", item, qt, metadata)
    return true
end

RegisterNetEvent("enemyReward:pedDied", function(pedNet, rewardId)
	local src = source

	pedNet = tonumber(pedNet)
	rewardId = tonumber(rewardId)

	if not pedNet or pedNet <= 0 then return end
	if not rewardId or rewardId <= 0 then return end
	if not GetPlayerName(src) then return end

	local ped = NetworkGetEntityFromNetworkId(pedNet)
	if ped == 0 or not DoesEntityExist(ped) or GetEntityType(ped) ~= 1 then return end

	local state = Entity(ped).state
	if state.rewardClaimed then return end

	local realRewardId = tonumber(state.rewardId)
	if realRewardId ~= rewardId then
		print(("[enemyReward] Reward mismatch da %s: client=%s server=%s"):format(src, tostring(rewardId), tostring(realRewardId)))
		return
	end

	if not DoesEntityExist(ped) then return end
	if GetEntityHealth(ped) > 0 then return end

	local rewardList = EnemyRewardsList[realRewardId]
	if type(rewardList) ~= "table" or #rewardList == 0 then return end

	local chosen = rewardList[math.random(#rewardList)]
	if type(chosen) ~= "table" or not chosen.name then return end

	local amount = tonumber(chosen.amount)
	if not amount or amount <= 0 then return end

	state:set("rewardClaimed", true, true)

	giveItemFunc(src, chosen.name, amount)
	TriggerClientEvent("testo3dCombatClient", src, ("x%s %s"):format(amount, chosen.label or chosen.name))
end)

function identOf(srcOrIdent)
    if type(srcOrIdent) == "string" then
        if srcOrIdent:find(":") then
            return srcOrIdent
        end
        return nil
    end

    local src = tonumber(srcOrIdent)
    if not src then return nil end

    local ids = GetPlayerIdentifiers(src)
    if not ids or #ids == 0 then return nil end

    for i = 1, #ids do
        if ids[i]:sub(1, 8) == "license:" then
            return ids[i]
        end
    end

    return ids[1]
end

RegisterNetEvent("striano_combat:giveItem", function(target, item, amount)
    giveItemFunc(target, item, amount)
end)