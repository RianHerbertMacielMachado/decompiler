local Areas = {}
CreateThread(function()	
    for areaId, cfg in pairs(EnemyAreas) do
        Areas[areaId] = {
            cfg = cfg,
            players = {},
            npcs = {},
            hasSpawned = false,   -- 🔹 l’area ha già spawnato la sua ondata attuale?
            needsRespawn = true,  -- 🔹 all’inizio sì, deve spawnare quando entra qualcuno
            emptySince = nil      -- 🔹 da quanto tempo non ci sono player nell’area
        }
        -- print(("[Enemies] Area Registed: %s"):format(areaId))
    end
end)

RegisterNetEvent("enemyArea:playerEntered", function(areaId)
    local src = source
    local area = Areas[areaId]
    if not area then return end

    area.players[src] = true
    -- print(("[Enemies] Player %d è entrato in %s"):format(src, areaId))
end)

RegisterNetEvent("enemyArea:playerLeft", function(areaId)
    local src = source
    local area = Areas[areaId]
    if not area then return end

    area.players[src] = nil
    -- print(("[Enemies] Player %d è uscito da %s"):format(src, areaId))
end)

AddEventHandler("playerDropped", function()
    local src = source
    for _, area in pairs(Areas) do
        area.players[src] = nil
    end
end)

local function startRandomPatrol(areaId, npcIndex)
    CreateThread(function()
        local area = Areas[areaId]
        if not area then return end

        local cfg = area.cfg
        local npcData = area.npcs[npcIndex]
        if not npcData then return end

        local ped = npcData.ped

        while DoesEntityExist(ped) do
            -- Se questo NPC è in combat, non pattuglia più
            if npcData.inCombat then
                break
            end

            -- Se non ci sono player nell'area, fermiamo il ped e usciamo
            local hasPlayers = false
            for _ in pairs(area.players) do
                hasPlayers = true
                break
            end

            if not hasPlayers then
                ClearPedTasks(ped)
                break
            end

            -- Punto random dentro il radius
            local angle = math.random() * 2.0 * math.pi
            local r = math.random() * cfg.radius

            local dest = vector3(
                cfg.center.x + math.cos(angle) * r,
                cfg.center.y + math.sin(angle) * r,
                cfg.center.z
            )

            TaskGoStraightToCoord(ped, dest.x, dest.y, dest.z, 1.0, -1, 0.0, 0.0)

            local startTime = GetGameTimer()

            while DoesEntityExist(ped) do
                -- Se nel frattempo entra in combat, smetti di muoverlo
                if npcData.inCombat then
                    break
                end

                local coords = GetEntityCoords(ped)
                if #(coords - dest) < 2.0 then
                    break
                end

                -- timeout per evitare che rimanga bloccato
                if GetGameTimer() - startTime > 15000 then
                    break
                end

                Wait(1000)
            end

            if npcData.inCombat then
                break
            end

            -- piccola pausa prima di scegliere un altro punto
            Wait(2000)
        end
    end)
end

function spawnAreaNpcs(areaId, count)
    local area = Areas[areaId]
    if not area then return end
    local cfg = area.cfg

    local minPlayerDist = cfg.minPlayerSpawnDist or 10.0 -- distanza minima dai player

    for i = 1, count do
        local modelName = cfg.models[math.random(#cfg.models)]

        local x, y

        -- tenta fino a 20 volte di trovare un punto abbastanza lontano dai player
        for attempt = 1, 20 do
            local angle = math.random() * 2.0 * math.pi
            local r = math.random() * cfg.radius
            local candX = cfg.center.x + math.cos(angle) * r
            local candY = cfg.center.y + math.sin(angle) * r

            local spawnPos = vector3(candX, candY, cfg.center.z)
            local tooClose = false

            for src, _ in pairs(area.players) do
                local playerPed = GetPlayerPed(src)
                if DoesEntityExist(playerPed) then
                    local pCoords = GetEntityCoords(playerPed)
                    if #(pCoords - spawnPos) < minPlayerDist then
                        tooClose = true
                        break
                    end
                end
            end

            if not tooClose then
                x, y = candX, candY
                break
            end
        end

        -- se non trova un punto safe, usa il centro area come fallback
        if not x or not y then
            x = cfg.center.x
            y = cfg.center.y
        end

        -- Z di partenza alta, il client farà ground check
        local hintZ = cfg.center.z + 5.0

        -- prendi un player qualsiasi DELL'AREA E STESSO BUCKET per fare il lavoro di model+ground
		local bucket = cfg.bucket
		local anyPlayer = nil

		for src, _ in pairs(area.players) do
			if not bucket or bucket == 0 then
				anyPlayer = src
				break
			else
				if GetPlayerRoutingBucket(src) == bucket then
					anyPlayer = src
					break
				end
			end
		end

		if anyPlayer then
			TriggerClientEvent("enemySpawner:loadModelAndGround", anyPlayer, modelName, areaId, x, y, hintZ)
		else
			-- nessun player valido nel bucket → NON spawno
			-- (volendo puoi anche fare un print di debug)
			-- print(("[Enemies] %s: nessun player nel bucket corretto, niente spawn"):format(areaId))
		end

    end
end

RegisterNetEvent("enemySpawner:retrySpawn", function(areaId)
    local area = Areas[areaId]
    if area then
        spawnAreaNpcs(areaId, 1)
    end
end)

local function assignEnemyReward(ped, areaCfg)
    if not DoesEntityExist(ped) then return end
    if not areaCfg or not areaCfg.reward_ID then return end

    Entity(ped).state:set("rewardId", areaCfg.reward_ID, true)
end

-- === EVENT (copia e incolla tutto) ===
RegisterNetEvent("enemySpawner:modelAndGroundReady", function(model, areaId, x, y, z)
    local area = Areas[areaId]
    if not area then return end

    local cfg = area.cfg
    local hash = GetHashKey(model)

    -- 1) server NON calcola il terreno: si fida della Z del client (ma fa sanity check)
	if type(z) ~= "number" or z < -50.0 or z > 2000.0 then
		return
	end

	local ped = CreatePed(
		4,
		hash,
		x, y, z + 1.0,
		math.random(0, 360),
		true,
		true
	)
	
	Wait(0)
	if not DoesEntityExist(ped) then return end
	
	local netId = NetworkGetNetworkIdFromEntity(ped)
	if not netId or netId == 0 then
		DeleteEntity(ped)
		return
	end
	
    SetPedCanRagdoll(ped, true)
	RemoveAllPedWeapons(ped, true)

    -- pulizia rapida di eventuali ped morti prima di contare
    local alive = {}
    for _, npcData in ipairs(area.npcs) do
        if DoesEntityExist(npcData.ped) then
            table.insert(alive, npcData)
        end
    end
    area.npcs = alive

    local maxPeds = cfg.maxPeds or 10

    -- se siamo già al limite, elimina subito questo ped
    if #area.npcs >= maxPeds then
        DeleteEntity(ped)
        return
    end

    -- se non ci sono più player nell’area, non tenere il ped
    local hasPlayers = false
    for _ in pairs(area.players) do
        hasPlayers = true
        break
    end
    if not hasPlayers then
        DeleteEntity(ped)
        return
    end
	
	-- reward/robaccia tua
    assignEnemyReward(ped, cfg)

    local bucket = area.cfg.bucket
    if bucket and bucket ~= 0 then
        SetEntityRoutingBucket(ped, bucket)
        onBucketChange(ped, bucket)
    end

    -- IMPORTANTISSIMO: netId + trigger SOLO DOPO i check (così eviti warning su entity già delete)
	-- local netId = NetworkGetNetworkIdFromEntity(ped)
    -- TriggerClientEvent("enemySpawner:configurePed", -1, netId, cfg.silent, cfg.walk, cfg.healthBase)
	for src, _ in pairs(area.players) do
		TriggerClientEvent("enemySpawner:configurePed", src, netId, cfg.silent, cfg.walk, cfg.healthBase, cfg.Zombie)
	end

    Entity(ped).state:set("onlyMeleePed", area.cfg.onlyMelee, true)

    local npcData = { ped = ped, netId = netId, inCombat = false }
    table.insert(area.npcs, npcData)

    local index = #area.npcs
    startRandomPatrol(areaId, index)
end)

CreateThread(function()
    while true do
        local now = GetGameTimer()

        for areaId, area in pairs(Areas) do
            local cfg = area.cfg
            local maxPeds = cfg.maxPeds or 10
            local respawnDelay = cfg.respawnDelayMs or 0 -- 0 = respawn immediato quando finiscono i mob
			
            -------------------------------------------------
            -- CONTA SOLO I PLAYER NELL'AREA E STESSO BUCKET
            -------------------------------------------------
            local playerCount = 0
            local bucket = cfg.bucket  -- può essere nil

            for src, _ in pairs(area.players) do
                if not bucket or bucket == 0 then
                    -- nessun bucket configurato: conta tutti
                    playerCount = playerCount + 1
                else
                    -- area usa un bucket: conto solo chi è in quel bucket
                    if GetPlayerRoutingBucket(src) == bucket then
                        playerCount = playerCount + 1
                    end
                end
            end
	
            if playerCount > 0 then
                -------------------------------------------------
                -- CI SONO PLAYER NELL'AREA
                -------------------------------------------------
                -- da questo momento l'area non è più "vuota"
                area.emptySince = nil

                -- pulizia ped inesistenti (server-side sanity)
                local alive = {}
                for _, npcData in ipairs(area.npcs) do
                    if DoesEntityExist(npcData.ped) then
                        table.insert(alive, npcData)
                    end
                end
                area.npcs = alive

                -------------------------------------------------
                -- 🔥 NUOVO: SE L'ONDATA ERA GIÀ PARTITA E ORA
                -- NON C'È PIÙ NESSUN NPC, E respawnDelayMs = 0
                -- → MARCA L'AREA PER RESPAWN
                -------------------------------------------------
                if area.hasSpawned and #area.npcs == 0 and respawnDelay == 0 then
                    area.needsRespawn = true
                end

                -- se è la prima volta che si entra, o l'area è da respawnare → spawna l'ondata
                if (not area.hasSpawned) or area.needsRespawn then
                    -- per sicurezza, pulisci eventuali ped residui
                    if #area.npcs > 0 then
                        for _, npcData in ipairs(area.npcs) do
                            if DoesEntityExist(npcData.ped) then
                                DeleteEntity(npcData.ped)
                            end
                        end
                        area.npcs = {}
                    end

                    -- print(("[Enemies] %s -> SPAWNER START (%d peds)"):format(areaId, maxPeds))
                    spawnAreaNpcs(areaId, maxPeds)

                    area.hasSpawned = true
                    area.needsRespawn = false
                end
            else
                -------------------------------------------------
                -- NESSUN PLAYER NELL'AREA
                -------------------------------------------------
                if #area.npcs > 0 then
                    -- se è appena diventata vuota, segna il momento
                    if not area.emptySince then
                        area.emptySince = now
                    end

                    -- se è vuota da abbastanza tempo → resetta l'area
                    if now - area.emptySince >= respawnDelay then
                        -- print(("[Enemies] %s -> RESET AREA dopo %d ms vuota"):format(areaId, respawnDelay))

                        for _, npcData in ipairs(area.npcs) do
                            if DoesEntityExist(npcData.ped) then
                                DeleteEntity(npcData.ped)
                            end
                        end
                        area.npcs = {}

                        area.hasSpawned = false      -- la prossima volta che entrano → nuova ondata
                        area.needsRespawn = true
                        area.emptySince = nil
                    end
                else
                    -- area già vuota, nessun NPC → nessun timer di reset necessario
                    area.emptySince = nil
                    area.hasSpawned = false
                    -- area.needsRespawn resta com'è: se era true, spawn alla prossima entrata
                end
            end
        end

        Wait(1000) -- tick ogni secondo, va benissimo per questo sistema
    end
end)

CreateThread(function()
    while true do
        for areaId, area in pairs(Areas) do
            local cfg = area.cfg
            local aggroRange = cfg.aggroRange or 20.0
            local areaBucket = cfg.bucket -- può essere nil o 0

            -- se non ci sono player registrati nell'area, salta
            if next(area.players) then
                for _, npcData in ipairs(area.npcs) do
                    local ped = npcData.ped

                    if DoesEntityExist(ped) then
                        local pedNet = NetworkGetNetworkIdFromEntity(ped)
                        local pedBucket = GetEntityRoutingBucket(ped)

                        -- per ogni player nell'area
                        for src, _ in pairs(area.players) do
                            local sameBucket = false

                            if not areaBucket or areaBucket == 0 then
                                -- nessun bucket configurato per l'area → comportamento come prima
                                sameBucket = true
                            else
                                -- area con bucket: considera solo player + ped nello stesso bucket
                                local playerBucket = GetPlayerRoutingBucket(src)
                                if playerBucket == areaBucket and pedBucket == areaBucket then
                                    sameBucket = true
                                end
                            end

                            if sameBucket then
                                -- invia SOLO al player interessato, non a tutti (-1)
                                TriggerClientEvent("enemyAI:checkVision", src, areaId, pedNet, aggroRange, cfg.aggroFov, cfg.weapMell_ID, cfg.weapFire, cfg.mySpeed)
                            end
                        end
                    end
                end
            end
        end

        Wait(1000) -- AI ogni secondo
    end
end)

local function WaitServerEntityFromNetId(netId, timeoutMs)
	netId = tonumber(netId)
	if not netId or netId <= 0 then return nil end
	local expiresAt = GetGameTimer() + (timeoutMs or 500)
	repeat
		local ent = NetworkGetEntityFromNetworkId(netId)
		if ent ~= 0 and DoesEntityExist(ent) then return ent end
		Wait(20)
	until GetGameTimer() >= expiresAt
	return nil
end

RegisterNetEvent("enemyAI:serverAggro", function(pedNetId, targetPlayer, meleeID, fireWeap, mySpeed)
	local src = source

	pedNetId = tonumber(pedNetId)
	targetPlayer = tonumber(targetPlayer)

	if not pedNetId or pedNetId <= 0 then return end
	if not targetPlayer or targetPlayer <= 0 or not GetPlayerName(targetPlayer) then return end

	local ped = WaitServerEntityFromNetId(pedNetId, 500)
	if not ped or GetEntityType(ped) ~= 1 then return end

	local state = Entity(ped).state
	if state.aggroed then return end

	-- Cerca prima il ped registrato nelle Areas.
	for _, area in pairs(Areas) do
		if area.npcs then
			for k, npcData in ipairs(area.npcs) do
				local npcNetId = tonumber(npcData.netId)

				if not npcNetId and npcData.ped and npcData.ped ~= 0 and DoesEntityExist(npcData.ped) then
					npcNetId = NetworkGetNetworkIdFromEntity(npcData.ped)
					if npcNetId and npcNetId > 0 then npcData.netId = npcNetId end
				end

				if npcNetId == pedNetId then
					state:set("aggroed", true, true)

					npcData.inCombat = true
					table.remove(area.npcs, k)

					TriggerClientEvent("becomeScav", targetPlayer, pedNetId, meleeID, fireWeap, mySpeed)
					return
				end
			end
		end
	end

	-- Fallback: il ped esiste, ma non è più presente nella lista Areas.
	state:set("aggroed", true, true)
	TriggerClientEvent("becomeScav", targetPlayer, pedNetId, meleeID, fireWeap, mySpeed)
end)

RegisterServerEvent("striano_combat:markScavInCombat")
AddEventHandler("striano_combat:markScavInCombat", function(pedNetId)
    if not pedNetId then return end

    for _, area in pairs(Areas) do
        for k = #area.npcs, 1, -1 do
            local npcData = area.npcs[k]
            local ent = npcData.ped

            local npcNet = npcData.netId
            if not npcNet and ent and ent ~= 0 and DoesEntityExist(ent) then
                npcNet = NetworkGetNetworkIdFromEntity(ent)
                npcData.netId = npcNet
            end

            if npcNet == pedNetId then
                table.remove(area.npcs, k)
                return
            end
        end
    end
end)

RegisterServerEvent("enemyArea:resetAllPatrols")
AddEventHandler("enemyArea:resetAllPatrols", function()
    for areaId, area in pairs(Areas) do
        for i = #area.npcs, 1, -1 do
            local npcData = area.npcs[i]
            local ped = npcData.ped
            if ped and ped ~= 0 and DoesEntityExist(ped) then
                DeleteEntity(ped)
            end
            area.npcs[i] = nil
        end
        area.npcs = {}
    end
end)

RegisterServerEvent("enemyAI:shotHeard")
AddEventHandler("enemyAI:shotHeard", function(x, y, z, radius)
    local src = source
    local shooterPed = GetPlayerPed(src)
    if shooterPed == 0 or not DoesEntityExist(shooterPed) then return end

    local shotPos = vector3(x, y, z)
    local now = GetGameTimer()

    for _, area in pairs(Areas) do
        for _, npcData in ipairs(area.npcs) do
            local ped = npcData.ped
            if ped and ped ~= 0 and DoesEntityExist(ped) then

                -- se è già aggroed (combat vero), non riassegnare task
                if Entity(ped).state.aggroed then
                    goto continue
                end

                -- anti-spam: 1.5s
                if npcData.lastCombatTask and (now - npcData.lastCombatTask) < 4000 then goto continue end

                local dist = #(GetEntityCoords(ped) - shotPos)
                if dist <= radius then
                    ClearPedTasksImmediately(ped)
                    TaskCombatPed(ped, shooterPed, 0, 16)
                    npcData.lastCombatTask = now
                end
            end

            ::continue::
        end
    end
end)


