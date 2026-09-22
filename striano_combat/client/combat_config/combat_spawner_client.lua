currentAreasInside = {}
function IsInAnyEnemyArea()
    for _ in pairs(currentAreasInside) do
        return true
    end
    return false
end

-- RUMORE DI SPARO
CreateThread(function()
    local lastShot = 0
    while true do
        -- se non sei in nessuna EnemyArea, non ha senso calcolare nulla
        if not IsInAnyEnemyArea() then
            Wait(1000) -- dorme mezzo secondo, consumi zero
        else
            local ped = PlayerPedId()
			local weapon = GetSelectedPedWeapon(ped)
			local isArmed = IsPedArmed(ped, 7)
            if IsPedShooting(ped) and weapon ~= `WEAPON_UNARMED` and isArmed then
                local now = GetGameTimer()
                if now - lastShot > 300 then
                    lastShot = now

                    local weapon = GetSelectedPedWeapon(ped)
                    local isSilenced = IsPedCurrentWeaponSilenced(ped)

                    -- taralo come vuoi
                    local baseRadius = 80.0      -- senza silenziatore
                    local silencedRadius = 5.0  -- con silenziatore

                    local radius = isSilenced and silencedRadius or baseRadius
                    local coords = GetEntityCoords(ped)

                    TriggerServerEvent("enemyAI:shotHeard", coords.x, coords.y, coords.z, radius)
                end
            end

            Wait(0) -- solo quando serve, quando sei in area nemici
        end
    end
end)

-- CONTROLLO INGRESSO/USCITA AREE
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for areaId, cfg in pairs(EnemyAreas) do
            local dist = #(coords - cfg.center)
            local inside = dist <= cfg.radius

            if inside and not currentAreasInside[areaId] then
                currentAreasInside[areaId] = true
                TriggerServerEvent("enemyArea:playerEntered", areaId)
            elseif (not inside) and currentAreasInside[areaId] then
                currentAreasInside[areaId] = nil
                TriggerServerEvent("enemyArea:playerLeft", areaId)
            end
        end
        Wait(1000) 
    end
end)

-- CARICA MODELLO + GROUND CHECK, POI AVVISA IL SERVER
RegisterNetEvent("enemySpawner:loadModelAndGround", function(model, areaId, x, y, hintZ)
    local hash = GetHashKey(model)

    -- carica modello
    RequestModelStriano(hash)

    -- ground check ultra robusto
    local groundZ = GetGroundZUltra(x, y, hintZ or 50.0)

    if not groundZ then
        -- impossibile trovare il terreno → retry server
        -- print(("GetGroundZUltra FAIL(1) area=%s x=%.2f y=%.2f z=%.2f"):format(areaId, x, y, hintZ or 0.0))
		TriggerServerEvent("enemySpawner:retrySpawn", areaId)
        return
    end

    -- piccoli offset anti-incastro
    groundZ = groundZ + 0.8

    local plyPed = PlayerPedId()
    local plyCoords = GetEntityCoords(plyPed)

    -- evita spawn troppo vicino al player
    if #(vector3(x, y, groundZ) - plyCoords) < 8.0 then
		-- print(("GetGroundZUltra FAIL(2) area=%s x=%.2f y=%.2f z=%.2f"):format(areaId, x, y, hintZ or 0.0))
        TriggerServerEvent("enemySpawner:retrySpawn", areaId)
        return
    end

    -- rimanda al server modello + coord definitive
    TriggerServerEvent(
        "enemySpawner:modelAndGroundReady",
        model,
        areaId,
        x,
        y,
        groundZ
    )
	-- print(("Ground OK area=%s groundZ=%.2f"):format(areaId, groundZ))
end)

-- CONFIGURAZIONE PED LATO CLIENT
function FixPedOnGround(ped)
	if not DoesEntityExist(ped) then return end

	-- Freeza mentre sistemi
	FreezeEntityPosition(ped, true)

	-- prendi coord attuali
	local coords = GetEntityCoords(ped)

	-- ricalcolo terreno ultra robusto
	local groundZ = GetGroundZUltra(coords.x, coords.y, coords.z)

	if groundZ then
		-- offset anti-incastro (ped)
		SetEntityCoordsNoOffset(
			ped,
			coords.x,
			coords.y,
			groundZ + 1.0,
			false, false, false
		)
	else
		-- fallback minimo (mai sottoterra)
		SetEntityCoordsNoOffset(
			ped,
			coords.x,
			coords.y,
			coords.z + 1.5,
			false, false, false
		)
	end

	-- lascia assestare
	Wait(200)
	
	if DoesEntityExist(ped) then
		-- sistema bene su superfici irregolari
		PlaceObjectOnGroundProperly(ped)
		
		DisablePedPainAudio(ped, true)
		StopPedSpeaking(ped, true)
		SetPedCanRagdoll(ped, false)

		FreezeEntityPosition(ped, false)
	end
end

RegisterNetEvent("enemySpawner:configurePed", function(pedNetId, silence, walkStyle, healthBase, Zombie)
    local ped = SafeNetToPed(pedNetId, 2500)
    if ped == 0 then return end
		
	-- 🔒 blocca migrazione/dynamic lato client (compatibile)
    SetNetworkIdCanMigrate(pedNetId, false)
    NetworkSetNetworkIdDynamic(pedNetId, false)
    SetNetworkIdExistsOnAllMachines(pedNetId, false)

    SetEntityAsMissionEntity(ped, true, true)

    -- IMPORTANTISSIMO: rimuovi armi subito
    RemoveAllPedWeapons(ped, true)
    SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
	CreateThread(function()	
		if DoesEntityExist(ped) then
			Wait(25) SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
		end
	end)

    -- 📌 Stats base
    SetPedArmour(ped, 0)          -- armatura
    SetPedAccuracy(ped, 25)        -- mira moderata
    SetPedAlertness(ped, 3)        -- molto reattivo

    -- 📌 Comportamento in fight
    SetPedCombatAbility(ped, 2)           -- abilità alta
    SetPedCombatMovement(ped, 2)          -- aggressivo
    SetPedCombatRange(ped, 2)             -- medio-lungo
    SetPedCombatAttributes(ped, 46, true) -- ALWAYS FIGHT
    SetPedCombatAttributes(ped, 5, true)  -- ricarica aggressiva
    SetPedSeeingRange(ped, 50.0)
	
    -- SetBlockingOfNonTemporaryEvents(ped, true)
	SetPedFleeAttributes(ped, 0, false)
	SetPedCanPlayAmbientAnims(ped, false)
	SetPedCanPlayAmbientBaseAnims(ped, false)
	
	if silence ~= nil then 
		-- 🔇 RENDILO TOTALMENTE SILENZIOSO
		-- SetBlockingOfNonTemporaryEvents(ped, true)
		SetPedFleeAttributes(ped, 0, false)
		SetPedCanPlayAmbientAnims(ped, false)
		SetPedCanPlayAmbientBaseAnims(ped, false)
		
		DisablePedPainAudio(ped, true)
		StopPedSpeaking(ped, true)
		SetPedMute(ped, true)
		SetAmbientVoiceName(ped, "MUTE")
		SetPedCanPlayAmbientAnims(ped, false)
		SetPedCanPlayAmbientBaseAnims(ped, false)
		SetPedIsDrunk(ped, false)
		
		SilPedFunc(ped)
	end
	
	if walkStyle ~= nil then 
		RequestAnimSet(walkStyle)
		local atp=0 while not HasAnimSetLoaded(walkStyle) and atp<100 do atp=atp+1 Wait(0) end
		SetPedMovementClipset(ped, walkStyle, 0.5)
	end
	
	if healthBase ~= nil then 
		if healthBase < 200 then healthBase = 200 end
		if healthBase < 110 then healthBase = 110 end
		SetPedMaxHealth(ped, healthBase)
		SetEntityHealth(ped, healthBase)
	else
		SetPedMaxHealth(ped, 200)
		SetEntityHealth(ped, 200)
	end
	
	RemoveAllPedWeapons(ped, true)      -- <— QUESTA È LA CHIAVE
    SetPedCanSwitchWeapon(ped, false)   -- non cambia arma
    SetPedDropsWeaponsWhenDead(ped, false)
	
	if Zombie then 
		ApplyBlood(ped, 13)
	end
	
	SetTimeout(0, function()
		FixPedOnGround(ped)
	end)
end)

-- RESET ALL NPCS LOCALE (CLIENT)
function resetAllEnemys()
    for _, data in pairs(MioNemico) do
        local ped = data.p
        if DoesEntityExist(ped) then
            CreateThread(function()
                local att = 0
                while not NetworkHasControlOfEntity(ped) and att < 100 do
                    att = att + 1
                    NetworkRequestControlOfEntity(ped)
                    Wait(0)
                end
                if NetworkHasControlOfEntity(ped) then
                    SetEntityAsMissionEntity(ped, true, true)
                    DeletePed(ped)
                end
            end)
        end
    end
    MioNemico = {}
end

local function AddCombatAnimations(destination, Style)
	if not Style then return end

	local groups = {
		Style.WithShift and Style.WithShift.CombatW,
		Style.WithShift and Style.WithShift.CombatA,
		Style.WithShift and Style.WithShift.CombatD,
		Style.WithoutShift and Style.WithoutShift.CombatW,
		Style.WithoutShift and Style.WithoutShift.CombatA,
		Style.WithoutShift and Style.WithoutShift.CombatD
	}

	for _, animations in ipairs(groups) do
		if type(animations) == "table" then
			for _, animation in ipairs(animations) do destination[#destination + 1] = animation end
		end
	end
end

RegisterNetEvent("becomeScav", function(pedNet, Weap, fireWeap, mySpeedVar, NoDel)
	pedNet = tonumber(pedNet)
	local ArmaID = tonumber(Weap) or 0
	mySpeedVar = tonumber(mySpeedVar) or 1.5

	if not pedNet or pedNet <= 0 then return end
	if inFinisher then return end

	local pedSpawn = WaitEntityFromNetId(pedNet, 1000)
	if not pedSpawn or not IsEntityAPed(pedSpawn) then
		print(("[becomeScav] Ped NetID %s non disponibile"):format(tostring(pedNet)))
		return
	end

	if IsPedFatallyInjured(pedSpawn) or IsPedDeadOrDying(pedSpawn, true) or IsPedRagdoll(pedSpawn) then return end

	-- Evita di gestire due volte lo stesso NPC.
	for _, enemyData in ipairs(MioNemico or {}) do
		if enemyData.p == pedSpawn then
			print(("[becomeScav] Ped NetID %s già gestito"):format(pedNet))
			return
		end
	end

	SetNetworkIdCanMigrate(pedNet, false)
	FightAttribute(pedSpawn)

	local pos = GetEntityCoords(pedSpawn)
	local setcombat = {}
	local Style

	if ArmaID == 1000 then
		if not SwordList or #SwordList <= 0 then return end
		ArmaID = math.random(1, #SwordList)
	end

	if ArmaID > 0 then
		local swordData = SwordList and SwordList[ArmaID]
		if not swordData then
			print(("[becomeScav] Sword ID non valido: %s"):format(ArmaID))
			return
		end

		Style = FightWStyle and FightWStyle[swordData.st]
		if not Style then
			print(("[becomeScav] Stile %s non valido per Sword ID %s"):format(tostring(swordData.st), ArmaID))
			return
		end

		AddCombatAnimations(setcombat, Style)
	else
		fireWeap = tonumber(fireWeap) or fireWeap

		if fireWeap and fireWeap ~= 0 then
			if type(fireWeap) == "string" then fireWeap = GetHashKey(fireWeap) end

			GiveWeaponToPed(pedSpawn, fireWeap, 999, false, true)
			Wait(25)
			SetCurrentPedWeapon(pedSpawn, fireWeap, true)
		else
			local fightStyleID = tonumber(stileLottaID) or 1
			if not FightWStyle or #FightWStyle <= 0 then return end
			if fightStyleID < 1 or fightStyleID > #FightWStyle then fightStyleID = 1 end

			Style = FightWStyle[fightStyleID]
			if not Style then return end

			AddCombatAnimations(setcombat, Style)
		end
	end

	if not DoesEntityExist(pedSpawn) or IsPedDeadOrDying(pedSpawn, true) then return end

	local buf = {
		p = pedSpawn,
		combatSet = setcombat,
		stamina = 100,
		level = 1,
		lotto = false,
		missionID = 0,
		sfidante = 1,
		posbase = pos,
		colpi = 0,
		weapEnemy = fireWeap,
		timing = nil,
		Id_Arma = ArmaID,
		sword_obj = nil,
		voice = math.random(1, 2),
		lastpos = pos,
		checktimer = 0,
		mySpeed = mySpeedVar
	}

	MioNemico[#MioNemico + 1] = buf
	handleNemico(buf, pedSpawn, NoDel)

	-- print(("[becomeScav] Gestione NPC avviata: NetID %s, arma %s, speed %.2f"):format(
		-- pedNet,
		-- tostring(ArmaID),
		-- mySpeedVar
	-- ))
end)

local function IsPlayerStealthFromCrawl()
    -- se la resource non è avviata, non rischiamo nulla
    if GetResourceState("striano_editor") ~= "started" then
        return false
    end

    local ok, result = pcall(function()
        -- qui puoi decidere se basta UNA delle condizioni o più di una
        -- io metto OR: se sei in stealth, o crouch, o prone -> stealth
        local stealth  = exports.striano_editor:stealth()
        local crouch   = exports.striano_editor:crouchato()
        local prone    = exports.striano_editor:IsPlayerProne()
        return stealth or crouch or prone
    end)

    if not ok then
        -- se l'export lancia un errore, evitiamo di crashare il thread
        print("^1[striano_combat] Error calling striano_editor exports:^0", result)
        return false
    end

    return result == true
end

local lastStealthCheck = 0
local lastStealthValue = false

local function IsPlayerStealthFromCrawlCached()
    local now = GetGameTimer()
    if now - lastStealthCheck < 200 then
        return lastStealthValue
    end

    lastStealthCheck = now
    lastStealthValue = IsPlayerStealthFromCrawl()
    return lastStealthValue
end

-- =========================
-- Anti-spam aggro (CLIENT)
-- =========================
local lastAggroSent = {}   -- [pedNet] = GetGameTimer()
local localAggroed  = {}   -- [pedNet] = true (blocco immediato su questo client)

-- =========================
-- Cleanup ottimizzato (CLIENT)
-- =========================
local CLEAN_DIST      = 120.0
local CLEAN_DIST2     = CLEAN_DIST * CLEAN_DIST
local SENT_TTL        = 120000  -- 2 minuti: stessa logica
local STALE_TTL       = 180000  -- 3 minuti: se ent non risolvibile da troppo, lo butto
local LOOP_WAIT       = 1000    -- frequenza pulizia
local PER_TICK_BUDGET = 60      -- quanti ped controllare per ciclo (50-100 ok)

local aggroKeys = {}            -- lista netId in round-robin
local aggroKeySet = {}          -- set per evitare duplicati
local rrIndex = 1
local staleSince = {}           -- netId -> timer quando ent==0/non esiste

local function TrackAggroKey(pedNet)
    if not aggroKeySet[pedNet] then
        aggroKeySet[pedNet] = true
        aggroKeys[#aggroKeys+1] = pedNet
    end
end

local function UntrackAggroKey(pedNet)
    aggroKeySet[pedNet] = nil
    staleSince[pedNet] = nil
    lastAggroSent[pedNet] = nil
    localAggroed[pedNet] = nil
    -- non rimuovo subito da aggroKeys (costoso); verrà saltato
end

local function TryAggro(ped, pedNet, playerId, meleeID, fireWeap, mySpeed)
    if Entity(ped).state.aggroed then return false end
    if localAggroed[pedNet] then return false end

    local now = GetGameTimer()
    if lastAggroSent[pedNet] and (now - lastAggroSent[pedNet]) < 1500 then
        return false
    end

    lastAggroSent[pedNet] = now
    localAggroed[pedNet] = true
    TrackAggroKey(pedNet) -- <--- IMPORTANTISSIMO per la pulizia ottimizzata

    TriggerServerEvent("enemyAI:serverAggro", pedNet, GetPlayerServerId(playerId), meleeID, fireWeap, mySpeed)
    return true
end

RegisterNetEvent("enemyAI:checkVision", function(areaId, pedNet, aggroRange, aggroFov, meleeID, fireWeap, mySpeed)
	if pedNet == nil then return end
    local ped = SafeNetToEnt(pedNet)
    if ped == 0 then
        UntrackAggroKey(pedNet)
        return
    end

    -- se già aggrato, pulisci cache e stop
    if Entity(ped).state.aggroed then
        UntrackAggroKey(pedNet)
        return
    end

    local playerPed = PlayerPedId()
    local playerId = PlayerId()

    if GetEntityAlpha(playerPed) <= 0 then return end
    if IsPedFatallyInjured(playerPed) or IsPedDeadOrDying(playerPed) then return end

    local pedPos = GetEntityCoords(ped)
    local plyPos = GetEntityCoords(playerPed)

    -- distanza² (più veloce di #(a-b))
    local dx, dy, dz = (pedPos.x - plyPos.x), (pedPos.y - plyPos.y), (pedPos.z - plyPos.z)
    local distSq = dx*dx + dy*dy + dz*dz

    -- 1) movimento / stealth
    local isCrouched  = IsPlayerStealthFromCrawlCached()
    local isSprinting = IsPedSprinting(playerPed)
    local isRunning   = IsPedRunning(playerPed)
    local isWalking   = IsPedWalking(playerPed)

    local visionRange  = aggroRange
    local hearingRange = 0.0
    local noisyMove    = false

    if not isCrouched then
        if isSprinting then
            hearingRange = aggroRange * 1.8
            noisyMove = true
        elseif isRunning then
            hearingRange = aggroRange * 1.4
            noisyMove = true
        elseif isWalking then
			hearingRange = aggroRange * 0.6
			noisyMove = true
        else
            hearingRange = aggroRange * 0.8
            noisyMove = false
        end
    end

    -- 2) troppo lontano
    local maxRange = math.max(visionRange, hearingRange)
    if distSq > (maxRange * maxRange) then return end

    -- 3) danneggiato -> aggro diretto (ma non spammare)
    if HasEntityBeenDamagedByAnyPed(ped) then
        ClearEntityLastDamageEntity(ped)
        if TryAggro(ped, pedNet, playerId, meleeID, fireWeap, mySpeed) then
            return
        end
    end

    -- 4) visione (LOS + FOV)
    if distSq <= (visionRange * visionRange) then
        if HasEntityClearLosToEntity(ped, playerPed, 17) then
            local pedHeading  = GetEntityHeading(ped)
            local dirToPlayer = GetHeadingFromVector_2d(plyPos.x - pedPos.x, plyPos.y - pedPos.y)
            local angleDiff   = math.abs(((pedHeading - dirToPlayer + 180.0) % 360.0) - 180.0)

            if angleDiff <= ((aggroFov or 80.0) * 0.5) then -- era 90.0
                if TryAggro(ped, pedNet, playerId, meleeID, fireWeap, mySpeed) then
                    return
                end
            end
        end
    end

    -- 5) udito (solo se run/sprint e non stealth)
    if hearingRange > 0.0 and noisyMove and distSq <= (hearingRange * hearingRange) then
        TryAggro(ped, pedNet, playerId, meleeID, fireWeap, mySpeed)
    end
end)

CreateThread(function()
    while true do
        Wait(LOOP_WAIT)

        if #aggroKeys == 0 then
            Wait(4000)
        else
            local now = GetGameTimer()

            local pPed = PlayerPedId()
            local px, py, pz = table.unpack(GetEntityCoords(pPed))

            local processed = 0
            local total = #aggroKeys

            while processed < PER_TICK_BUDGET and total > 0 do
                if rrIndex > total then rrIndex = 1 end

                local pedNet = aggroKeys[rrIndex]
                rrIndex = rrIndex + 1
                processed = processed + 1

                -- se è roba vecchia già rimossa, skip
                if pedNet and aggroKeySet[pedNet] then
                    local tSent = lastAggroSent[pedNet]

                    if not tSent then
                        UntrackAggroKey(pedNet)
                    else
                        -- prima condizione: TTL scaduto
                        if (now - tSent) > SENT_TTL then
                            local ent = SafeNetToEnt(pedNet)
							if ent == 0 then
								local s = staleSince[pedNet]
								if not s then
									staleSince[pedNet] = now
								elseif (now - s) > STALE_TTL then
									UntrackAggroKey(pedNet)
								end
							else
								staleSince[pedNet] = nil

								local ex, ey, ez = table.unpack(GetEntityCoords(ent))
								local d2 = Vdist2(px, py, pz, ex, ey, ez)

								if d2 > CLEAN_DIST2 then
									UntrackAggroKey(pedNet)
								end
							end
                        end
                    end
                end
            end

            -- compattazione rara (evita crescita infinita della lista)
            if (now % 30000) < LOOP_WAIT then
                local alive = 0
                for _ in pairs(aggroKeySet) do alive = alive + 1 end

                if alive == 0 then
                    aggroKeys = {}
                    rrIndex = 1
                elseif #aggroKeys > alive * 3 then
                    local newKeys = {}
                    for k in pairs(aggroKeySet) do
                        newKeys[#newKeys+1] = k
                    end
                    aggroKeys = newKeys
                    rrIndex = 1
                end
            end
        end
    end
end)
