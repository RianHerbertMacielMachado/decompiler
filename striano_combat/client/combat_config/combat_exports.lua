exports('updateMana', function(val) myMana = val end)
exports('delMana', function(val) myMana = myMana-val if myMana<0 then myMana=0 end end)
exports('getMana', function() return myMana end)
exports('inFinisher', function() return inFinisher end)
exports('inWitcher', function() return inWitcher end)
exports('EasyCombat', function() return EasyCombat end)

exports('GetItems', function() return SwordList end)

function DoesModelExistInItems(model)
    local modelHash = type(model) == "number" and model or GetHashKey(model)
    for _, itemData in pairs(SwordList) do
        if itemData.m then
            local itemModelHash = type(itemData.m) == "number"
                and itemData.m
                or GetHashKey(itemData.m)

            if itemModelHash == modelHash then
                return true
            end
        end
    end
    return false
end
exports('doesModelExist', function(model)
    return DoesModelExistInItems(model)
end)

exports('getweap', function(modello) 
	for k, v in ipairs(SwordList) do
		if tostring(v.m) == tostring(modello) then 
			return k
		end
	end
end)

exports('foldbow', function()
	if myBow > 0 and DoesEntityExist(BowObj) then
		local ped = PlayerPedId()
		if SfoggiatoBow then -- POSO L ARCO!
			delBowCam()
			if AROV ~= nil and DoesEntityExist(lastAROV) then SetEntityAsMissionEntity(lastAROV) DeleteEntity(lastAROV) AROV = nil end
			SfoggiatoBow = false
			DetachEntity(BowObj) Wait(0)
			local t = BowList[myBow].posato
			AttachEntityToEntity(BowObj, ped, GetPedBoneIndex(ped, 24818), t[1],t[2],t[3],t[4],t[5],t[6], true, true, false, true, 1, true)
		end
	end
end)

exports('getweap2', function(modello) 
	local trovata = false
	for k, v in ipairs(SwordList) do
		if tostring(GetHashKey(v.m)) == tostring(modello) and v.m2 == nil then 
			trovata = true
			return k
		end
	end
	if not trovata then 
		-- vado a fare getweap normale senza il controllo m2!
		for k, v in ipairs(SwordList) do
			if tostring(GetHashKey(v.m)) == tostring(modello) then 
				return k
			end
		end
	end
end)

-- LIST OF ALL exports TO MANAGE THE SCRIPT!
exports('inFullAnim', function() return inAnimList end) -- To check if a player it's in the editor combat to create new moveset!

exports('setbow', function(id) 
	myBow = id 
	ResetBowVars()
	if DoesEntityExist(BowObj) then
		SetEntityAsMissionEntity(BowObj) DeleteEntity(BowObj) BowObj = nil
	end
	GeneraBow()
	testo3d("bow type: ~h~"..id)
	if not InThrowWeap() and myArrow == 5 then myArrow = 1 end -- Resetto l'arrow nel caso sia la 5
end)
exports('getmybow', function() -- get bow style
	return myBow
end)
exports('setarrow', function(id) -- arrow style
	myArrow = id 
	if DoesEntityExist(lastAROV) then SetEntityAsMissionEntity(lastAROV) DeleteEntity(lastAROV) AROV = nil end
	testo3d("arrow type: ~h~"..id)
end)
exports('getmyarrow', function() -- get arrow style
	return myArrow
end)

exports('getmyshield', function() -- get shield style
	return myShield
end)

exports('castSpell', function(ID_SPELL) CastSpell(exports.striano_combat:getSpellIdBySlot(ID_SPELL)) end)
exports('castSpellFast', function(ID_SPELL) CastSpell(ID_SPELL) end) -- ID of spell getted from combat_spells.lua

exports('scav', function(forceSpawn) CreateScav(nil, forceSpawn) end) -- :scav()
exports('scav2', function(coords, forceSpawn, model, vita, weap) return CreateScav(coords, forceSpawn, model, vita, weap) end)

exports('countenemy', function() return #MioNemico end) -- To know how many enemy you have that want fight you!

exports('fodera', function() FoderaArmi() end) -- Fold Weapon

exports('fodera2', function() if Sfoggiate then CombatActive = false FoderaArmi(true) end end) -- Fold Weapon Fast (no anim)

exports('foderafast', function() 
	if Sfoggiate and mySword > 0 then
		Sfoggiate = false
		local ped = PlayerPedId()
		local p = GetEntityCoords(ped)
		local prop1 = SwordList[mySword].m
		resetSwords()
		SwordObj = CreateObjectNoOffset(GetHashKey(prop1), p.x, p.y, p.z-1.0,  true, true, false)
		SetEntityCollision(SwordObj, false, false)
		while not DoesEntityExist(SwordObj) do Wait(0) end
		MakeSwordNET(SwordObj)
		local t = SwordList[mySword].att
		if SwordList[mySword].posata1 ~= nil then t = SwordList[mySword].posata1 end
		a,b,c,d,e,f = table.unpack(t)
		AttachEntityToEntity(SwordObj, ped, GetPedBoneIndex(ped, SwordList[mySword].boneposata1), a,b,c,d,e,f, true, true, false, true, 1, true)
		SetModelAsNoLongerNeeded(prop1)		
		if SwordList[mySword].m2 then 
			local prop2 = SwordList[mySword].m2						
			SwordObj2 = CreateObjectNoOffset(GetHashKey(prop2), p.x, p.y, p.z-1.0,  true, true, false)
			SetEntityCollision(SwordObj2, false, false)
			while not DoesEntityExist(SwordObj2) do Wait(0) end
			MakeSwordNET(SwordObj2)
			local t = SwordList[mySword].posata2
			a,b,c,d,e,f = table.unpack(t)
			AttachEntityToEntity(SwordObj2, ped, GetPedBoneIndex(ped, SwordList[mySword].boneposata2), a,b,c,d,e,f, true, true, false, true, 1, true)
			SetModelAsNoLongerNeeded(prop2)
		end
	end
end)

exports('checkarmi', function()
	if SwordObj then SetEntityAsMissionEntity(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
	if SwordObj2 then SetEntityAsMissionEntity(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
	
end)
exports('delallarmi', function()
	if SwordObj and DoesEntityExist(SwordObj) then SetEntityAsMissionEntity(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
	if SwordObj2 and DoesEntityExist(SwordObj2) then SetEntityAsMissionEntity(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
	if BowObj and DoesEntityExist(BowObj) then SetEntityAsMissionEntity(BowObj) DeleteEntity(BowObj) BowObj = nil end
	if lastAROV and DoesEntityExist(lastAROV) then SetEntityAsMissionEntity(lastAROV) DeleteEntity(lastAROV) AROV = nil end
	if ShieldObj and DoesEntityExist(ShieldObj) then SetEntityAsMissionEntity(ShieldObj) DeleteEntity(ShieldObj) ShieldObj = nil end
	DeleteAllAttached()
	CombatActive = false
	Sfoggiate = false
end)

exports('weaponexist', function()
	if DoesEntityExist(SwordObj) or DoesEntityExist(SwordObj2) then 
		return true
	else
		return false
	end
end)

exports('inblock', function() if inblockfunc(PlayerPedId()) then return true else return false end end) -- Anim Difesa AnimDifesa Defence

exports('inanim', function() return HoRollato end)

exports('sfoggiate', function() return Sfoggiate end)

exports('inroll', function()
	local ped = PlayerPedId()
	if IsEntityPlayingAnim(ped, "kp_wm_gs_dodge_forwardroll", "kp_wm_gs_dodge_forwardroll_clip", 3) then return true 
	elseif IsEntityPlayingAnim(ped, "kp_wm_gs_dodge_leftroll", "kp_wm_gs_dodge_leftroll_clip", 3) then return true 
	elseif IsEntityPlayingAnim(ped, "kp_wm_gs_dodge_rightroll", "kp_wm_gs_dodge_rightroll_clip", 3) then return true 
	elseif IsEntityPlayingAnim(ped, "kp_wm_gs_dodge_backroll", "kp_wm_gs_dodge_backroll_clip", 3) then return true 
	else return false end
end)

exports('inCombat', function() return CombatActive end)

exports('menuCombatOpen', function() return editorcombatopen end)

exports('submex', function(mex, noSound) return strianoSub(mex, true, nil, noSound) end)
exports('submex2', function(mex) return strianoSub2(mex) end)

exports('MakePedAngry', function(ped) return MakePedAngry(ped) end)

exports('submexType', function(mex) return strianoSub(mex, false, true) end)

exports('submexError', function(mex, noSound)
	PlaySoundFrontend(-1,'ERROR','HUD_AMMO_SHOP_SOUNDSET',1) -- PlaySoundFrontend(-1,'Faster_Bar_Full','RESPAWN_ONLINE_SOUNDSET',1)
	return strianoSub(mex, true, nil, true)
end)

exports('submexInfo', function(mex, noSound)
	-- PlaySoundFrontend(-1,'HORDE_COOL_DOWN_TIMER','HUD_FRONTEND_DEFAULT_SOUNDSET',1)
	PlaySoundFrontend(-1,'Reset_Prop_Position','DLC_Dmod_Prop_Editor_Sounds',0)
	return strianoSub(mex, true, nil, true)
end)

exports('setMenuCombat', function(a,b,c)
	if a == nil then
		SendNUIMessage({ action = 'hide4' }) 
		SendNUIMessage({ action = 'hide3' }) 
		SendNUIMessage({ action = 'hide5' })
		closeall = true
	else
		SendNUIMessage({ action = 'show5', content = b })
		SendNUIMessage({ action = 'show3', content = a })
		SendNUIMessage({ action = 'show4', content = c })
	end
end)

exports('setRandomMove', function() fsetMossaRandom() end) -- This is still work in progress!

exports('setStamina', function(val) 
	local vall = val or maxStamina
	maxStamina = vall
	FiatoneCapriola = vall 
	PlaySoundFrontend(-1,'DELETE','HUD_DEATHMATCH_SOUNDSET',1) 
end)	

exports('setdelay', function(val) DelaySkill = val end) -- What should be the time that the player need to wait for every move to perform? At moment let standard, in future every player can be more fast and more strongher than another!

exports('resetcolpi', function() ColpiPlayer = 0 end)

exports('delallarmi2', function() DelAllArmi2() end)

exports('addMove', function(id) fAddMossa(id) end) -- With this you can add a specific new move to a player, BUT THIS IS WORK IN PROGRESS, please be patient im working on it to make it cool!

exports('setblood', function(ped, stringa, a, b) ApplyPedDamagePackLegacy(ped, stringa, a, b) end)

exports('submexImportant', function(mex, sec) strianoImportant(mex, sec) end)

exports('eliminaArmi', function()
	Sfoggiate = false
	if SwordObj then SetEntityAsMissionEntity(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
	if SwordObj2 then SetEntityAsMissionEntity(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
end)

exports('getTagliente', function()
	if mySword > 0 then return SwordList[mySword].tgn
	else return false end
end)

exports('getModelloArmaDaID', function(id)
	if SwordList[id] ~= nil then
		return GetHashKey(SwordList[id].m)
	else
		return GetHashKey("w_me_dagger")
	end
end)

exports('getSwordNameFromID', function(id)
	if SwordList[id] ~= nil then
		return SwordList[id].Name
	else
		return "Invalid Melee Weapon"
	end
end)

exports('getmysword', function() return mySword end)


exports('weaponAttachedAlpha', function(alpha)
	local reset = false
	if alpha == nil then 
		if SwordObj and DoesEntityExist(SwordObj) then ResetEntityAlpha(SwordObj) end
		if SwordObj2 and DoesEntityExist(SwordObj2) then ResetEntityAlpha(SwordObj2) end
		if BowObj and DoesEntityExist(BowObj) then ResetEntityAlpha(BowObj) end
		if lastAROV and DoesEntityExist(lastAROV) then ResetEntityAlpha(lastAROV) end
		if ShieldObj and DoesEntityExist(ShieldObj) then ResetEntityAlpha(ShieldObj) end
	else
		if SwordObj and DoesEntityExist(SwordObj) then SetEntityAlpha(SwordObj, alpha) end
		if SwordObj2 and DoesEntityExist(SwordObj2) then SetEntityAlpha(SwordObj2, alpha) end
		if BowObj and DoesEntityExist(BowObj) then SetEntityAlpha(BowObj, alpha) end
		if lastAROV and DoesEntityExist(lastAROV) then SetEntityAlpha(lastAROV, alpha) end
		if ShieldObj and DoesEntityExist(ShieldObj) then SetEntityAlpha(ShieldObj, alpha) end
	end
end)

--[[
-- NOT SO OPTIMISED!
exports('weaponValid', function(model)
    for id, data in pairs(SwordList) do
        if data.m == model then
            return true -- esiste
        end
    end
    return false -- non trovato
end)
]]

SwordModels = {}
for id, data in pairs(SwordList) do
    if data.m then
        local hash = type(data.m) == "number" and data.m or GetHashKey(data.m)
        SwordModels[hash] = true
    end
end
exports('weaponValid', function(model)
    if not model then return false end
    local hash = type(model) == "number" and model or GetHashKey(model)
    return SwordModels and SwordModels[hash] == true or false
end)

exports('setsword', function(id)
	exports.striano_combat:strianosetweapon(id)
end)

exports('strianosetweapon', function(id)
	Sfoggiate = false
	mySword = id
	if mySword == 0 then 
		if SwordObj then SetEntityAsMissionEntity(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
		if SwordObj2 then SetEntityAsMissionEntity(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
		myWStyle = 1
	else
		myWStyle = SwordList[mySword].st
	end
	FoderaArmi()
	TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow) -- PL, Sword, Shield, List, Style
	-- if not IsEntityPositionFrozen(PlayerPedId()) and mySword > 0 then strianoSub("To extract a weapon use [MOUSE RIGHT] + [R]") end
	if id > 0 then
		Wait(1000)
		if not IsEntityPositionFrozen(PlayerPedId()) and not IsEntityAttached(PlayerPedId()) then
			local ped = PlayerPedId()
			local coords = GetEntityCoords(ped)
			if #(coords - vector3(0.0,0.0,0.0)) < 100.0 then return end
			local spawn = vector3(3836.253, 6438.734, 0.613)
			local dist = #(coords - spawn)

			-- print("^3[WEAPON NOTIFY]^7 coords:", coords)
			-- print("^3[WEAPON NOTIFY]^7 distanza spawn:", dist)

			if dist > 25.0 then
				ShowInstructionalButtonsTimed("~h~Equip & Unequip melee weapon.", {45})
			end
		end
	end
end)

exports('strianosetshield', function(id)
	myShield = id
	if myShield == 0 then 
		if ShieldObj and DoesEntityExist(ShieldObj) then SetEntityAsMissionEntity(ShieldObj) DeleteEntity(ShieldObj) ShieldObj = nil end
	else
		GeneraShield()
	end
	TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow) -- PL, Sword, Shield, List, Style
	if not IsPedRagdoll(PlayerPedId()) then testo3d("shield type: ~h~"..id) end
end)

exports('gengrunt', function() genGrunt() end)
exports('genpunchwosh', function() genPunchWosh() end)

exports('getdebuggerClb', function()
	return debuggerClb
end)

exports('inAirCombat', function()
	return sonoInAria(PlayerPedId())
end)

exports('getLeviosaObject', function() return Finded end)

exports('e_shareSound', function(path, volume, ent, radius)
	shareSound(path, volume, ent, radius)
end)

exports('assignCombatStyle', function(k) -- Do not use at moment, use setsword!
	AssignCombatStyle(k)
end)

-- TIMER OF SPELLS! CONFIGURABLE!
stateTimer = {
    active = false,
    endsAt = 0,
    finishEvent = nil,
    payload = nil,
    loopRunning = false,   
    generation = 0
}

function StartTimer(minutes, seconds, finishEvent, payload)
    minutes = tonumber(minutes) or 0
    seconds = tonumber(seconds) or 0

    local total = math.floor(minutes) * 60 + math.floor(seconds)
    if total <= 0 then
        print("^1[Timer] Durata non valida (<=0). Ignorato.^0")
        return false
    end

    -- rimpiazza eventuale timer: invalidiamo il loop corrente
    stateTimer.active = true
    stateTimer.endsAt = GetGameTimer() + (total * 1000)
    stateTimer.finishEvent = type(finishEvent) == 'string' and finishEvent or nil
    stateTimer.payload = payload

    -- riavvia il loop (incrementa generation se già in corso)
    if stateTimer.loopRunning then
        stateTimer.generation = stateTimer.generation + 1
    end
    EnsureTimerLoop()
    return true
end
exports('StartTimer', StartTimer)

function StopTimer()
    -- spegne il timer
    stateTimer.active = false
    stateTimer.endsAt = 0
    stateTimer.finishEvent = nil
    stateTimer.payload = nil

    if stateTimer.loopRunning then
        stateTimer.generation = stateTimer.generation + 1
        stateTimer.loopRunning = false
    end
end
exports('StopTimer', StopTimer)

--- Ritorna se il timer è in esecuzione
--- @return boolean
function IsTimerRunning()
    return stateTimer.active
end
exports('IsTimerRunning', IsTimerRunning)

--- Ritorna minuti e secondi rimasti (arrotondati)
--- @return number minutes, number seconds
function GetTimeLeft()
    if not stateTimer.active then return 0, 0 end
    local ms = stateTimer.endsAt - GetGameTimer()
    if ms < 0 then ms = 0 end
    local total = math.ceil(ms / 1000)
    local m = math.floor(total / 60)
    local s = total % 60
    return m, s
end
exports('GetTimeLeft', GetTimeLeft)

local function drawTextCenteredTop(text, r,g,b, s)
    -- (facoltativo) sfondo semitrasparente
    -- stima larghezza rettangolo in base alla lunghezza del testo
    local w = 0.060 + (math.max(#text, 5) - 5) * 0.006
    local x, y = 0.5, 0.055
    -- DrawRect(x, y + 0.005, w, 0.045, 0, 0, 0, 120)

    SetTextFont(4)                
    SetTextScale(0.0, s)
    SetTextColour(r,g,b, 200)
    SetTextOutline()
    SetTextCentre(true)

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end

local handledText = ""
local textExpireTime = 0
local textThreadActive = false

exports('notify', function(mex, tempoSec)
    handledText = mex or ""

    -- 👇 LOGICA TIMER
    if tempoSec == 0 then
        textExpireTime = 0 -- infinito
    else
        local sec = (tempoSec and tempoSec > 0) and tempoSec or 7 -- local sec = tempoSec or 7 -- default 7 secondi
        textExpireTime = GetGameTimer() + (sec * 1000)
    end

    if textThreadActive then return end
    textThreadActive = true

    CreateThread(function()
        while true do
            Wait(0)

            if handledText == nil or handledText == "" then
                break
            end

            if textExpireTime > 0 and GetGameTimer() > textExpireTime then
                handledText = ""
                break
            end

            drawTextCenteredTop(handledText, 255,255,255, 0.45)
        end

        textThreadActive = false
    end)
end)

-- HOW TO USE
-- exports.striano_combat:notify("HAAAAAY")
--- exports.striano_combat:notify("HAY HAY", 3) -- FOR 3 SECOND!

function EnsureTimerLoop()
    if stateTimer.loopRunning then return end
    stateTimer.loopRunning = true
    stateTimer.generation = stateTimer.generation + 1
    local myGen = stateTimer.generation
	local lastBeep = -1
    CreateThread(function()
        while stateTimer.loopRunning and myGen == stateTimer.generation do
            if not stateTimer.active then
                -- niente da disegnare, chiudo il loop per evitare idling
                break
            end

            local msLeft = stateTimer.endsAt - GetGameTimer()
            if msLeft <= 0 then
                -- Fine timer
                local finishEvent = stateTimer.finishEvent
                local payload = stateTimer.payload
                -- reset stato (NON toccare generation qui)
                stateTimer.active = false
                stateTimer.endsAt = 0
                stateTimer.finishEvent = nil
                stateTimer.payload = nil

                -- chiudo il loop prima di notificare
                stateTimer.loopRunning = false

                if finishEvent then
                    TriggerEvent(finishEvent, payload)
                end
                break
            else
                local total = math.ceil(msLeft / 1000)
                local mm = math.floor(total / 60)
                local ss = total % 60
				
				-- 🔊 Beep una volta per secondo negli ultimi 10s
				if total <= 10 and total > 0 and total ~= lastBeep then
					lastBeep = total
					-- params: soundId, soundName, soundSet, p3
					-- p3 = true/1 (boolean)
					PlaySoundFrontend(-1, 'ERROR', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
				end
				
				if total <= 10 and total > 3 then
					drawTextCenteredTop(string.format("%02d:%02d", mm, ss), 150,150,0, 0.55) 
				elseif total <= 3 then
					drawTextCenteredTop(string.format("%02d:%02d", mm, ss), 200,10,10, 0.6) 
				else
					drawTextCenteredTop(string.format("%02d:%02d", mm, ss), 255,255,255, 0.5)
				end
            end

            Wait(0) -- disegna per frame solo mentre serve
        end

        -- sicurezza: se usciamo dal while per mismatch generation o break
        if myGen == stateTimer.generation then
            stateTimer.loopRunning = false
        end
    end)
end

exports('spawnSkeleton', function(coord) CreateSkeleton(coord) end)

exports('gethitted', function() return colpitoVarOut end)

exports('getDummyInArea', function(range)
    local dummyGetted = {}
    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    for _, data in ipairs(dummyObj) do
        local obj = data.o
        if DoesEntityExist(obj) then
            local oCoords = GetEntityCoords(obj)
            local dist = #(pCoords - oCoords)

            if dist <= range then
                table.insert(dummyGetted, {
                    obj = obj,
                    coords = oCoords,
                    distance = dist
                })
            end
        end
    end
    return dummyGetted
end)

-- With this exports you can apply speed of combat to player! More speed, more powerful to combat!
exports('setCombatSpeed', function(speed) myOwnSpeed = speed end) 
exports('getCombatSpeed', function() return myOwnSpeed end) 

exports('incombatanim', function()
	if indexCombat ~= nil then
		if AnimFightList[indexCombat] ~= nil then
			if IsEntityPlayingAnim(PlayerPedId(), AnimFightList[indexCombat].a, AnimFightList[indexCombat].b, 3) then
				return true
			end
		end
	end
	return false
end)

exports('incombatmenumanager', function()
	if CombatListAperta or inAnimList then return true end
	return false
end)

-- NEW 19/04/26
local function getPlayerEnemyArea()
    local ped = PlayerPedId()
    if not ped or ped == 0 then return false end

    local coords = GetEntityCoords(ped)

    local closest = nil
    local closestDist = 99999

    for name, data in pairs(enemyAreas) do
        local dist = #(coords - data.center)

        if dist < closestDist then
            closestDist = dist
        end

        if dist <= data.radius then
            return true, name, data, dist
        end
    end

    return false, nil, nil, closestDist
end

exports('GetPlayerEnemyArea', getPlayerEnemyArea)
-- HOW TO USE:
--[[
	local inside, name, data, dist = exports['striano_combat']:GetPlayerEnemyArea()

	if not inside and dist < 80.0 then
		print("You are near the zone named:", name)
	end
]]

-- NEW 01/05/26!
exports('CreateFollowObject', CreateFollowObject)

-- BUFFER
exports("UseBufferItem", function(data, slot)
    if not data then return false end
    local itemName = data.name or data
    if not itemName then
        print("[striano_combat] invalid buffer item")
        return false
    end
    local ped = PlayerPedId()
    for k, v in ipairs(BufferList or {}) do
        local expectedItem = "buffer_" .. string.lower(v.name or "")
        if expectedItem == string.lower(itemName) then
            local tt = "♾️"
            if v.timerBuff then
                tt = tostring(v.timerBuff / 1000) .. "s"
            end
            if v.ac then
                testo3d("~r~~h~Buff [" .. k .. "] already active", ped)
                return false
            end
            local dmg = v.dmg or 0
            testo3d("~g~~h~Buff [" .. k .. "]~n~+" .. dmg .. "dmg|n|" .. tt, ped)
            applyBuffer(k)
            return true
        end
    end
    print("[striano_combat] buffer not found:", itemName)
    return false
end)

-- NEW UPDATE EXPORTS 2/06/2026
-- STRIANO COMBAT - EXTRA EXPORTS / BUFF API
-- EXAMPLE ---> DOUBLE DAMAGE FOR 30 SECS! ---> exports.striano_combat:SetDamageMultiplier(2.0, 30000)
-- EXAMPLE ---> DOUBLE DEFENCE FOR 30 SECS! ---> exports.striano_combat:SetDefenseMultiplier(2.0, 30000)
CombatMultipliers = CombatMultipliers or {
    damage = 1.0,
    fist = 1.0,
    sword = 1.0,
    bow = 1.0,
    spell = 1.0,
    defense = 1.0
}

local MultiplierTimers = {}

local function SetTimedMultiplier(key, value, duration)
    value = tonumber(value) or 1.0
    duration = tonumber(duration)

    CombatMultipliers[key] = value

    MultiplierTimers[key] = (MultiplierTimers[key] or 0) + 1
    local gen = MultiplierTimers[key]

    if duration and duration > 0 then
        CreateThread(function()
            Wait(duration)

            if MultiplierTimers[key] == gen then
                CombatMultipliers[key] = 1.0
            end
        end)
    end

    return true
end

exports("SetDamageMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("damage", multiplier, duration)
end)

exports("GetDamageMultiplier", function()
    return CombatMultipliers.damage or 1.0
end)

exports("ResetDamageMultiplier", function()
    CombatMultipliers.damage = 1.0
    CombatMultipliers.fist = 1.0
    CombatMultipliers.sword = 1.0
    CombatMultipliers.bow = 1.0
    CombatMultipliers.spell = 1.0
    CombatMultipliers.defense = 1.0
    MultiplierTimers = {}
    return true
end)

exports("SetFistDamageMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("fist", multiplier, duration)
end)

exports("GetFistDamageMultiplier", function()
    return CombatMultipliers.fist or 1.0
end)

exports("SetSwordDamageMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("sword", multiplier, duration)
end)

exports("GetSwordDamageMultiplier", function()
    return CombatMultipliers.sword or 1.0
end)

exports("SetBowDamageMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("bow", multiplier, duration)
end)

exports("GetBowDamageMultiplier", function()
    return CombatMultipliers.bow or 1.0
end)

exports("SetSpellDamageMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("spell", multiplier, duration)
end)

exports("GetSpellDamageMultiplier", function()
    return CombatMultipliers.spell or 1.0
end)

exports("SetDefenseMultiplier", function(multiplier, duration)
    return SetTimedMultiplier("defense", multiplier, duration)
end)

exports("GetDefenseMultiplier", function()
    return math.max(0.01, CombatMultipliers.defense or 1.0)
end)

exports("GetCurrentWeaponType", function()
    if myBow and myBow > 0 and SfoggiatoBow then
        return "bow"
    end

    if mySword and mySword > 0 and Sfoggiate then
        return "sword"
    end

    return "fist"
end)

exports("GetCurrentDamageMultiplier", function()
    local weaponType = exports.striano_combat:GetCurrentWeaponType()
    local base = CombatMultipliers.damage or 1.0

    if weaponType == "bow" then
        return base * (CombatMultipliers.bow or 1.0)
    elseif weaponType == "sword" then
        return base * (CombatMultipliers.sword or 1.0)
    elseif weaponType == "spell" then
        return base * (CombatMultipliers.spell or 1.0)
    end

    return base * (CombatMultipliers.fist or 1.0)
end)

-- BUFF EXPORTS
exports("ApplyBuff", function(buffId, durationOverride)
    buffId = tonumber(buffId)
    if not buffId or not BufferList or not BufferList[buffId] then
        print("[striano_combat] ApplyBuff invalid buffId:", buffId)
        return false
    end

    if durationOverride then
        BufferList[buffId].timerBuff = tonumber(durationOverride)
    end

    if applyBuffer then
        applyBuffer(buffId)
        return true
    end

    -- fallback se applyBuffer non è disponibile
    BufferList[buffId].ac = true
    return true
end)

exports("RemoveBuff", function(buffId)
    buffId = tonumber(buffId)
    if not buffId or not BufferList or not BufferList[buffId] then
        return false
    end

    BufferList[buffId].ac = false

    -- Se nel tuo sistema hai una funzione tipo removeBuffer(buffId),
    -- sostituisci questa riga con:
    -- removeBuffer(buffId)

    return true
end)

exports("HasBuff", function(buffId)
    buffId = tonumber(buffId)
    if not buffId or not BufferList or not BufferList[buffId] then
        return false
    end

    return BufferList[buffId].ac == true
end)

exports("GetActiveBuffs", function()
    local active = {}

    if not BufferList then return active end

    for id, data in pairs(BufferList) do
        if data.ac == true then
            active[id] = data
        end
    end

    return active
end)

-- STRIANO COMBAT - CLIENT HOOK HANDLERS
AddEventHandler("striano_combat:client:onEnterCombat", function()
    -- Player enter in combat mode
end)

AddEventHandler("striano_combat:client:onExitCombat", function()
    -- Player exit from combat mode
end)

AddEventHandler("striano_combat:client:onDamageDealt", function(targetPed, damage)
    -- targetPed = ped Hitter
    -- damage = Damage done
end)

AddEventHandler("striano_combat:client:onDamageTaken", function(attackerPed, damage)
    -- attackerPed = Ped Hit you
    -- damage = Damage getted
end)

AddEventHandler("striano_combat:client:onWeaponEquipped", function(weaponId)
    -- weaponId = id WEAP
end)
AddEventHandler("striano_combat:client:onWeaponUnequipped", function(weaponId)
    -- weaponId = id WEAP
end)

AddEventHandler("striano_combat:client:onBowEquipped", function(weaponId)
    -- weaponId = id BOW
end)
AddEventHandler("striano_combat:client:onBowUnequipped", function(weaponId)
    -- weaponId = id BOW
end)

-- STRIANO COMBAT EXPORTS pt. 2
CombatBuffs = CombatBuffs or {
    staminaRegen = 1.0,
    staminaDrain = 1.0
}

local regenToken = 0
local drainToken = 0

local function n(v, fallback)
    return tonumber(v) or fallback
end

exports("SetMaxStamina", function(value)
    value = n(value, nil)
    if not value then return false end
    maxStamina = math.max(0.0, value)
    if FiatoneCapriola and FiatoneCapriola > maxStamina then
        FiatoneCapriola = maxStamina
    end

    return true
end)

exports("GetMaxStamina", function()
    return n(maxStamina, 750)
end)

exports("AddStamina", function(amount)
    amount = n(amount, nil)
    if not amount then return false end

    FiatoneCapriola = math.min(n(FiatoneCapriola, maxStamina), n(maxStamina, 750))
    FiatoneCapriola = math.min(FiatoneCapriola + amount, n(maxStamina, 750))

    return FiatoneCapriola
end)

exports("RemoveStamina", function(amount)
    amount = n(amount, nil)
    if not amount then return false end

    FiatoneCapriola = math.max(n(FiatoneCapriola, maxStamina) - amount, 0.0)

    return FiatoneCapriola
end)

exports("SetStaminaRegenMultiplier", function(multiplier, duration)
    CombatBuffs.staminaRegen = n(multiplier, 1.0)

    regenToken = regenToken + 1
    local token = regenToken

    duration = n(duration, nil)
    if duration and duration > 0 then
        CreateThread(function()
            Wait(duration)
            if regenToken == token then
                CombatBuffs.staminaRegen = 1.0
            end
        end)
    end

    return true
end)

-- Consume half stamina for 10 seconds: ---> exports.striano_combat:SetStaminaDrainMultiplier(0.5, 10000)
-- Consume double stamina for 10 seconds: ---> exports.striano_combat:SetStaminaDrainMultiplier(2.0, 10000)
exports("SetStaminaDrainMultiplier", function(multiplier, duration)
    CombatBuffs.staminaDrain = n(multiplier, 1.0)

    drainToken = drainToken + 1
    local token = drainToken

    duration = n(duration, nil)
    if duration and duration > 0 then
        CreateThread(function()
            Wait(duration)
            if drainToken == token then
                CombatBuffs.staminaDrain = 1.0
            end
        end)
    end

    return true
end)

exports("GetCurrentWeaponName", function()
    if myBow and myBow > 0 then
        return "bow"
    end

    if mySword and mySword > 0 then
        if type(GetSwordNameFromID) == "function" then
			local ok, name = pcall(GetSwordNameFromID, mySword)
			if ok and name then return name end
		end

        if SwordList and SwordList[mySword] then
            return SwordList[mySword].Name or SwordList[mySword].name or SwordList[mySword].item or ("sword_" .. mySword)
        end

        return "sword_" .. mySword
    end

    return "fist"
end)

exports("GetCurrentBowId", function()
    return myBow or 0
end)

exports("GetCurrentArrowId", function()
    return myArrow or 0
end)

exports("GetCurrentShieldId", function()
    return myShield or 0
end)

exports("ClearBuffs", function()
    CombatBuffs.staminaRegen = 1.0
    CombatBuffs.staminaDrain = 1.0

    regenToken = regenToken + 1
    drainToken = drainToken + 1

    if CombatMultipliers then
        CombatMultipliers.damage = 1.0
        CombatMultipliers.fist = 1.0
        CombatMultipliers.sword = 1.0
        CombatMultipliers.bow = 1.0
        CombatMultipliers.spell = 1.0
        CombatMultipliers.defense = 1.0
    end

    if MultiplierTimers then
        MultiplierTimers = {}
    end

    if BufferList then
        for k, v in pairs(BufferList) do
            if type(v) == "table" then
                v.ac = false
            end
        end
    end

    if type(stopCurrentMagicFX) == "function" then
        stopCurrentMagicFX()
    end

    return true
end)

exports("GetStaminaDrainMultiplier", function()
    return n(CombatBuffs.staminaDrain, 1.0)
end)

exports("GetStaminaRegenMultiplier", function()
    return n(CombatBuffs.staminaRegen, 1.0)
end)

-- FINAL TEST
-- exports.striano_combat:SetFistDamageMultiplier(3.0, 60000)
-- print(exports.striano_combat:GetFistDamageMultiplier())
-- print(exports.striano_combat:GetCurrentDamageMultiplier())

-- TRAIL PRESET (test command: /trailmenu) in combat_commands.lua
function GetOrderedTrailPresets()
	local list = {}
	for presetName, data in pairs(StrianoTrailPresets or {}) do
		list[#list + 1] = {
			name = presetName,
			id = data.id or presetName
		}
	end
	table.sort(list, function(a, b)
		return a.name < b.name
	end)
	return list
end

function GetTrailPresetFromInput(value)
	if not value then return nil end
	local n = tonumber(value)
	if n then
		local list = GetOrderedTrailPresets()
		local selected = list[math.floor(n)]
		return selected and selected.name or nil
	end
	value = tostring(value):lower()
	if StrianoTrailPresets[value] then
		return value
	end
	return nil
end

function SetCurrentSwordTrail(value)
	local preset = GetTrailPresetFromInput(value)
	if not preset then
		print("^1[Trail]^7 Preset not valid:", value)
		return false
	end
	if not mySword or not SwordList or not SwordList[mySword] then
		print("^1[Trail]^7 No sword equip.")
		return false
	end
	SwordList[mySword].trailPreset = preset
	if DoesEntityExist(SwordObj) then
		exports["striano_combat"]:StartTrailOnEntity(SwordObj, preset, 700)
	end
	if DoesEntityExist(SwordObj2) then
		exports["striano_combat"]:StartTrailOnEntity(SwordObj2, preset, 700)
	end
	print(("^2[Trail]^7 Trail updated: %s"):format(preset))
	return true
end
exports("SetCurrentSwordTrail", SetCurrentSwordTrail) -- EXAMPLE: exports["striano_combat"]:SetCurrentSwordTrail("dragon")

-- Usable: exports.striano_combat:getStyleCombat()
-- Usable: exports.striano_combat:getStyleCombat(ID)

-- DO NOT UNCOMMENT, BUT YOU CAN USE THIS exports IF YOU NEED!
-- exports("sethelm", SetHelm)
-- exports("removehelm", RemoveHelmet)
-- exports("detachhelm", DetachHelmet) -- Cool while fighting or some rp situation with HIT!