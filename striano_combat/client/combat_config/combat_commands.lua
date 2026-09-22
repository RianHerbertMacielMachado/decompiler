local nextCastAllowed=0
local CAST_ANTIFLOOD=1500

CreateThread(function()
	Wait(3000)
	if GetResourceState('striano_combat')=='started' then
		for i=1,7 do
			RegisterKeyMapping('castslot'..i,'Cast Slot '..i,'keyboard',''..i..'')
			RegisterCommand('castslot'..i,function()
				local now=GetGameTimer()
				if now<nextCastAllowed then return end
				if castingSpell then return end
				nextCastAllowed=now+CAST_ANTIFLOOD

				-- print("COMMAND CASTSLOT:",i,now)

				local ped=PlayerPedId()
				if canCastSpell(ped) and not IsPedRagdoll(ped) and not IsPedFatallyInjured(ped) then 
					if exports.striano_combat:inCombat() or IsControlPressed(0,25) or IsDisabledControlPressed(0,25) then
						local getted=exports.striano_combat:getSpellIdBySlot(i)
						if getted~=nil and getted and #getted>0 then 
							CastSpell(getted,i)
						else
							print("WARNING: SPELL NOT GETTED! ID:",i)
						end
					end
				end
			end)
		end
	end
end)

local noFloodCombat = 0
RegisterKeyMapping("combatMode", "Striano Combat", "MOUSE_BUTTON", "MOUSE_RIGHT") -- You can change and translate where you see "Striano Combat"
RegisterCommand("combatMode",function(source)
	if GetGameTimer()-noFloodCombat > 450 and not CombatActive then
		StartCombatMode()
		noFloodCombat = GetGameTimer()
	end
end)

local noFloodSwordExtract = 0
RegisterKeyMapping("equipSword", "Equip Striano Sword", "keyboard", "R") -- You can change and translate where you see "Striano Combat"
RegisterCommand("equipSword",function(source)
	if IsPedRagdoll(PlayerPedId()) then return end 
	if exports.striano_editor:stoposizionando() or exports.striano_editor:editorattivo() then print("CAN'T EQUIP WEAPON!") return end -- DELETE THIS STRING IF YOU DONT HAVE SOD PROJECT COMPLETE!
	if IsEntityPositionFrozen(PlayerPedId()) then return end
	if GetGameTimer()-noFloodSwordExtract > 250 then
		ManageBowAndSword()
		noFloodSwordExtract = GetGameTimer()
	end
end)
local noFloodBowExtract = 0
RegisterKeyMapping("equipBow", "Equip Striano Bow", "keyboard", "E") -- You can change and translate where you see "Striano Combat"
RegisterCommand("equipBow",function(source)
	if IsPedRagdoll(PlayerPedId()) then return end
	if GetResourceState('striano_core') == 'started' and exports.striano_core:inNoClip() then return end
	if exports.striano_editor:stoposizionando() or exports.striano_editor:editorattivo() then return end -- DELETE THIS STRING IF YOU DONT HAVE SOD PROJECT COMPLETE!
	if IsEntityPositionFrozen(PlayerPedId()) then return end
	if GetGameTimer()-noFloodBowExtract > 250 then
		ManageBowAndSword2()
		noFloodBowExtract = GetGameTimer()
	end
end)

-- THIS IS A COMMAND TO OPEN A DEBUG MENU TO TEST FIGHT SCRIPT, LIKE SPAWN ENEMY OR TEST ALL THE WEAPONS YOU CREATE!
-- IF YOU NEED YOU CAN USE SAME FUNCTION AND MAKE IT WITH YOUR OWN MENU!
RegisterCommand('combatset', function(source, args) 
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("[ Create Combat Style ]", function()
		CombatListFull()
	end, true)
	exports['striano_fastmenu']:addMenuItem("[ Manage Default Styles ]", function()
		ExecuteCommand("listCombat")
	end, true)
	exports['striano_fastmenu']:addMenuItem("[ Manage Own Created Styles ]", function()
		ExecuteCommand("myListCombat")
	end, true)
	exports['striano_fastmenu']:addMenuItem("[ Swords List ]", function()
		ExecuteCommand("swordlist")
	end, true)
	exports['striano_fastmenu']:addMenuItem("[ Shields List ]", function()
		ExecuteCommand("shieldlist")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Bow List ]", function()
		ExecuteCommand("myBow")
	end, true)
	exports['striano_fastmenu']:addMenuItem("[ Arrow List ]", function()
		ExecuteCommand("myArrow")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Spells Book ]", function()
		ExecuteCommand("spellBook")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Spawn Melee Enemy ]", function()
		ExecuteCommand("scav")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Delete Enemys ]", function()
		ExecuteCommand("delnemici")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Buffer List ]", function()
		ExecuteCommand("buffer")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Max Mana ]", function()
		ExecuteCommand("maxmana")
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Heal Me! ]", function()
		SetEntityHealth(ped, 500)
		if GetResourceState('striano_core') == 'started' then
			TriggerServerEvent("PlayEffectEnt", { a="scr_rcbarry1",b="scr_alien_teleport", ent=PedToNet(PlayerPedId()), s=1.4 } )
			TriggerServerEvent("status:set", GetPlayerServerId(PlayerId()), 'vitapl', 500)
		end
	end, true)
	
	exports['striano_fastmenu']:addMenuItem("[ Spells Manager ]", function()
		ExecuteCommand("editspells " .. GetPlayerServerId(PlayerId()))
	end, true)
	
	exports['striano_fastmenu']:openMenu()
end)

RegisterCommand('maxmana', function()
	TriggerEvent("loadFullMana")
	TriggerEvent("rechargeMana")
end)

-- THIS COMMAND WILL GIVE YOU THE BOW, BUT PLEASE CONSIDER THAT IT'S STILL WORK IN PROGRESS, AT MOMENT FOR TESTING PURPOSE ARROWS ARE INFINITE!
RegisterCommand('myBow', function(source, args, raw) 
	exports['striano_fastmenu']:clearMenu() Wait(75)
	exports['striano_fastmenu']:addMenuItem("* BOW LIST", function() end, false)
	exports['striano_fastmenu']:addMenuItem("NO BOW", function()
		ResetBowVars()
		myBow = 0 
		if DoesEntityExist(BowObj) then
			SetEntityAsMissionEntity(BowObj) DeleteEntity(BowObj) BowObj = nil
		end
		exports.striano_combat:submexInfo("Bow resetted!")
	end, true)
	for k, v in ipairs(BowList) do
		local nomeOggetto = "BOW_" .. k
		exports['striano_fastmenu']:addMenuItem(nomeOggetto, function()
			myBow = k 
			GeneraBow()
			ShowInstructionalButtonsTimed("~h~Equip & Unequip bow.", {38})
			TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow) -- PL, Sword, Shield, List, Style, Bow
		end, true)
	end
	exports['striano_fastmenu']:openMenu()
end)

RegisterCommand('myArrow', function(source, args, raw) 
	exports['striano_fastmenu']:clearMenu() Wait(75)
	exports['striano_fastmenu']:addMenuItem("* ARROW LIST", function() end, false)
	for k, v in ipairs(ArrowList) do
		local nomeOggetto = "ARROW_" .. k
		exports['striano_fastmenu']:addMenuItem(nomeOggetto, function()
			myArrow = k 
			if DoesEntityExist(lastAROV) then SetEntityAsMissionEntity(lastAROV) DeleteEntity(lastAROV) AROV = nil end
			exports.striano_combat:submexInfo("Arrow " .. k .. " assigned! Every arrow have different effect and damage!")
		end, true)
	end
	exports['striano_fastmenu']:openMenu()
end)

-- THIS COMMAND ITS TO TEST THE TRAIN FIGHT SCRIPT! (WIP!)
RegisterCommand("combatTraining", function(source, args)
	-- if ImAdmin() then 
		TriggerEvent("trainCombat") 
	-- end 
end)

-- SOME COMMAND TEST
RegisterCommand("resetcolpi", function(source, args) ColpiPlayer = 0 end)
RegisterCommand("getcolpi", function(source, args) print("ColpiPlayer:", ColpiPlayer) end)
RegisterCommand('nostamina', function(source, args) 
	if ImAdmin() then
		nostamina = not nostamina
		if nostamina then print("No Stamina: ON") else print("No Stamina: OFF") end
	end
end)
RegisterCommand('IDFLAG', function(source, args) 
	if ImAdmin() then
		local id = tonumber(args[1])
		if id then IDFLAG = id else print("IDFLAG " .. IDFLAG) end -- else print(IDFLAG) end
	end
end)
RegisterCommand('mySword', function(source, args) -- "mysword" /mysword
	if ImAdmin() then
		local id = tonumber(args[1])
		if id and id >= 0 and id <= #SwordList then 
			exports.striano_combat:strianosetweapon(id)
		end
	end
end)
RegisterCommand('setStamina', function(source, args) -- "mysword" /mysword
	if ImAdmin() then
		local id = tonumber(args[1])
		if id and id >= 10 and id <= 1000 then 
			exports.striano_combat:setStamina(id)
		end
	end
end)
RegisterCommand('DelaySkill', function(source, args) 
	if args[1] then ExecuteCommand("SkillDelay " .. args[1]) end
end)
RegisterCommand('SkillDelay', function(source, args) -- WORK IN PROGRESS! THIS IS TO MAKE SOME FIGHT STYLE MORE SLOW OR MORE FAST!
	if ImAdmin() then
		local id = tonumber(args[1])
		if id and id >= 5 and id <= 350 then 
			DelaySkill = id
			mioCoolDown = DelaySkill * moltiplicatoreRoll
			exports.striano_combat:submexInfo("Skill delay " .. DelaySkill .. " assigned.")
		else
			exports.striano_combat:submexError("Insert a valid value.")
		end
	end
end)
RegisterCommand('maxAnimCombo', function(source, args) 
	if ImAdmin() then
		local id = tonumber(args[1])
		if id and id >= 1 and id <= 5 then 
			maxAnimCombo = id
			exports.striano_combat:submexInfo("maxAnimCombo " .. maxAnimCombo .. " assigned.")
		else
			exports.striano_combat:submexError("Insert a valid value.")
		end
	end
end)

RegisterCommand("getcolpi", function(source, args)  print("Hit getted: " .. ColpiPlayer) end)
RegisterCommand("sangue", function(source, args) -- this is blood
	if args[1] then local blood = tonumber(args[1]) ApplyBlood(PlayerPedId(), blood) end
end)

-- THIS COMMANDS LIST NEED TO TEST ALL THE ANIMATION IN THE TABLES!
RegisterCommand("idlelist", function(source, args)	
	CheckIdleList()
end)

RegisterCommand("HolsterList", function(source, args) 				
	indexHolster = 1
	Loadholster(indexHolster)
	CreateThread(function()
		while indexHolster > 0 do
			Wait(0)	
			local ped = PlayerPedId()
			string_HolsterList(stoCreandoStile)
			if IsDisabledControlJustPressed(0,26) then
				local idAnim = OpenInput('ID')
				local id = tonumber(idAnim)
				if id and id <= #holsterlist then 
					indexHolster = id
					Loadholster(indexHolster)
				end
			elseif IsControlJustPressed(0,175) then
				CreateThread(function()
					ClearPedSecondaryTask(ped) ClearPedTasks(ped)
					if indexHolster < #holsterlist then indexHolster = indexHolster + 1 else indexHolster = 1 end
					Loadholster(indexHolster)
				end)
			elseif IsControlJustPressed(0,174) then
				CreateThread(function()
					if indexHolster > 1 then indexHolster = indexHolster - 1 else indexHolster = #holsterlist end
					Loadholster(indexHolster)
				end)
			end
			if IsControlJustPressed(0,73) or IsDisabledControlJustPressed(0,25) or indexHolster == 0 or closeall then Wait(25) closeall = false ecc() ClearPedTasks(ped) return end
		end
		print("HolsterList closed.")
	end)
end)

RegisterCommand('checkmoveset', function(source, args) -- Just a checker command for moveset! ONLY FOR DEV PURPOSE!
	local founded = 0
	for k, v in ipairs(AnimFightList) do
		if v.start == v.tim then 
			founded = founded + 1
			print("Moveset " .. v.a .. " " .. v.b .. " (ID: "..k..") need to be fixed, start need to be less then start variable or sound will not work for this move!")
			CopyDataFight(v.b)
		end
	end
	if founded == 0 then 
		print("Checker not found any issue: ALL OK!")
	else
		print("You need to fix " .. founded .. " moves, the last one is copyed in clipboard, search and fix.")
	end
end)

RegisterCommand('tm', function(source, args) -- test move! (example /tm 415, this will test move id 415)  
	if args[1] == nil then return end
	PreviewMove(tonumber(args[1]))
end)
	
RegisterCommand('getmossa', function(source, args) -- ONLY FOR DEV PURPOSE
	if args[1] == nil then return end
	for k, v in ipairs(AnimFightList) do
		if k == tonumber(args[1]) then 
			print("Move found and copied in clipboard. " .. v.a .. " " .. v.b .. " (ID: "..k..")")
			CopyDataFight(v.b)
		end
	end
end)

-- diverso ~
RegisterCommand('getweap', function(source, args) -- Just insert the model object! Like: getweap vikingsword
	if args[1] == nil then return end
	for k, v in ipairs(SwordList) do
		if tostring(v.m) == tostring(args[1]) then 
			print("Weapon found! (ID: "..k..")")
			CopyDataFight(k)
		end
	end
end)

RegisterCommand('delpropweap', function(source, args) -- This delete all the weapons in the world
	for k, v in ipairs(SwordList) do
		if v.m ~= nil then
			ExecuteCommand("delprop " .. v.m)
		end
		Wait(25)
	end
end)

RegisterCommand('getmossa2', function(source, args) -- DEV COMMAND!
	if args[1] == nil then return end
	for k, v in ipairs(AnimFightList) do
		if v.b == tostring(args[1]) then 
			print("Anim founded and copied in clipboard. " .. v.a .. " " .. v.b .. " (ID: "..k..")")
			CopyDataFight(v.b)
		end
	end
end)

RegisterCommand('fightlist', function(source, args)
	exports['striano_fastmenu']:clearMenu() Wait(75)
	for k, v in ipairs(FightWStyle) do
		exports['striano_fastmenu']:addMenuItem(v.Name, function()
			AssignCombatStyle(k)
		end, true)
	end
	exports['striano_fastmenu']:openMenu()
end)

prevAttached = nil
function startPrevAttach(modello, idSword)
	if Sfoggiate then
		exports.striano_combat:fodera2()
		CombatActive = false
	end

	local ped = PlayerPedId()
	local obj = nil
	local c = GetEntityCoords(ped)
	local modelHash = type(modello) == "number" and modello or GetHashKey(modello)
		
	if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
		print("Model sword not valid:", modello)
		return
	end

	RequestModel(modelHash)
	while not HasModelLoaded(modelHash) do
		Wait(0)
	end

	if prevAttached ~= nil and DoesEntityExist(prevAttached) then
		if GetEntityModel(prevAttached) ~= modelHash then
			SetEntityAsMissionEntity(prevAttached, true, true)
			DeleteEntity(prevAttached)
			prevAttached = nil

			obj = CreateObject(modelHash, c.x, c.y, c.z, false, false, false)
			while obj == nil or not DoesEntityExist(obj) do
				Wait(0)
			end

			prevAttached = obj
		else
			obj = prevAttached
		end
	else
		obj = CreateObject(modelHash, c.x, c.y, c.z, false, false, false)
		while obj == nil or not DoesEntityExist(obj) do
			Wait(0)
		end

		prevAttached = obj
	end

	SetModelAsNoLongerNeeded(modelHash)

	if obj ~= nil and DoesEntityExist(obj) then
		FreezeEntityPosition(obj, true)
		SetEntityCollision(obj, false, false)
		SetEntityAsMissionEntity(obj, true, true)
		
		ClearPedTasks(ped)
		local Style = FightWStyle[SwordList[idSword].st] -- getStyleCombat()
		
		local d = SwordList[idSword].att
		AttachEntityToEntity(
			obj, ped, GetPedBoneIndex(ped, 57005),
			d[1], d[2], d[3], d[4], d[5], d[6],
			false, false, false, true, 1, true
		)
	
		if Style.Idle == nil then Style.Idle = 4 end 
		if Style.Idle ~= nil then LoadIdleFight(Style.Idle) end -- faiAnim("mp_character_creation@lineup@female_b", "loop", -1)

		CreateThread(function()
			while exports.striano_fastmenu:opened() do
				Wait(0)
				DisableControlAction(0, 0, true)
				DisableFirstPersonCamThisFrame()
			end
			if prevAttached ~= nil and prevAttached == obj and DoesEntityExist(prevAttached) then
				SetEntityAsMissionEntity(prevAttached, true, true)
				DeleteEntity(prevAttached)
				prevAttached = nil
			end
			ClearPedTasks(ped)
		end)
	end
end

-- THIS IS A COMMAND TO TEST ALL THE SWORD LIST YOU CREATE!
local function OpenSwordList(search)
	local ped = PlayerPedId()
	if not IsPedHuman(ped) then print("You can open swordList only as human.") return end
	exports['striano_fastmenu']:clearMenu()
	Wait(75)

	if search then
		search = tostring(search)
		search = search:match("^%s*(.-)%s*$") -- rimuove spazi iniziali/finali
		search = string.lower(search)

		if search == "" then
			search = nil
		end
	end

	exports['striano_fastmenu']:addMenuItem("🔎 Search Sword", function()
		exports['striano_fastmenu']:closeMenu()

		SetTimeout(100, function()
			local text = exports['striano_core']:OpenInput(
				"Search sword name",
				"",
				{ maxLen = 64 }
			)

			if text and tostring(text):match("%S") then
				OpenSwordList(text)
			else
				OpenSwordList()
			end
		end)
	end, false)

	exports['striano_fastmenu']:addMenuItem("[ No Sword ]", function()
		TriggerEvent('combat:ApplySword', 0)
	end, true)

	local found = 0

	for k, v in ipairs(SwordList) do
		local swordId = k
		local swordData = v
		local swordName = tostring(swordData.Name or ("Sword " .. swordId))
		local normalizedName = string.lower(swordName)

		if not search or string.find(normalizedName, search, 1, true) then
			found = found + 1

			exports['striano_fastmenu']:addMenuItemAdvanced({
				label = ("[%d] %s"):format(swordId, swordName),
				autoClose = true,

				onClick = function()
					if prevAttached and DoesEntityExist(prevAttached) then
						SetEntityAsMissionEntity(prevAttached, true, true)
						DeleteEntity(prevAttached)
						prevAttached = nil
					end

					TriggerEvent('combat:ApplySword', swordId)
				end,

				onHover = function()
					startPrevAttach(swordData.m, swordId)
				end,

				hoverInfo = {
					title = swordName,
					description = "Damage: " .. tostring(swordData.dmg or 0),
					footer = "ID: " .. tostring(swordId),
					icon = "⚔",
					theme = "white"
				}
			})
		end
	end

	if search and found == 0 then
		exports['striano_fastmenu']:addMenuItem(
			"❌ No swords found for: " .. search,
			function()
				OpenSwordList()
			end,
			false
		)
	end

	exports['striano_fastmenu']:openMenu()
end

RegisterCommand('swordlist', function(source, args)
	OpenSwordList()
end)

RegisterCommand('shieldlist', function(source, args)
	exports['striano_fastmenu']:clearMenu() Wait(75)
	exports['striano_fastmenu']:addMenuItem("[ No Shield ]", function()
		exports.striano_combat:strianosetshield(0)
	end, true)
	for k, v in ipairs(ShieldList) do
		exports['striano_fastmenu']:addMenuItem(v.Name, function()
			exports.striano_combat:strianosetshield(k)
		end, true)
	end
	exports['striano_fastmenu']:openMenu()
end)

-- SOME COMMAND WORK IN PROGRESS ABOUT GET KOed!
RegisterCommand('ko', function(source, args) 
	local ped = PlayerPedId()
	ClearPedSecondaryTask(ped) ClearPedTasks(ped)
	local a = "hit_react_heavy_knockdown_face" local b = "hit_react_heavy_knockdown_face_clip"
	if not HasAnimDictLoaded(a) then
		RequestAnimDict(a)
		while not HasAnimDictLoaded(a) do Wait(10) end
	end
	TaskPlayAnim(ped, a,b, 3.0, 1.0, -1, 0, 0, 0, 0, 0)  Wait(950)
	SetPedToRagdollWithFall(ped, 3 * 550, 3 * 550, 1, GetEntityForwardVector(ped), 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
end)
RegisterCommand('ko2', function(source, args) 
	local ped = PlayerPedId()
	ClearPedSecondaryTask(ped) ClearPedTasks(ped)
	local a = "kp_9cg_knockdown" local b = "kp_9cg_knockdown_clip"
	if not HasAnimDictLoaded(a) then
		RequestAnimDict(a)
		while not HasAnimDictLoaded(a) do Wait(10) end
	end
	TaskPlayAnim(ped, a, b, 3.0, 1.0, -1, 0, 0, 0, 0, 0)  Wait(550)
	SetPedToRagdollWithFall(ped, 3 * 550, 3 * 550, 1, GetEntityForwardVector(ped), 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
end)
RegisterCommand('ko3', function(source, args) 
	local ped = PlayerPedId()
	local a = "hit_react_heavy_knockdown_back_01" local b = "hit_react_heavy_knockdown_back_01_clip"
	if not IsEntityPlayingAnim(ped, a,b, 3) and not IsPedRagdoll(ped) then 
		ClearPedSecondaryTask(ped) ClearPedTasks(ped)
		ecc()
		if not HasAnimDictLoaded(a) then
			RequestAnimDict(a)
			while not HasAnimDictLoaded(a) do Wait(10) end
		end
		TaskPlayAnim(ped, a, b, 3.0, 1.0, 1150, 0, 0, 0, 0, 0) 
		Wait(750)
		SetPedToRagdollWithFall(ped, 3 * 550, 3 * 550, 1, GetEntityForwardVector(ped), 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		ExecuteCommand("vairagdoll") -- If you dont have this command please COMMENT THIS LINE!
	end
end)
RegisterCommand('steso', function(source, args) 
	local a = "wing_chun@anim" local b = "down_2"
	local ped = PlayerPedId()
	if not IsEntityPlayingAnim(ped, a,b, 3) and not IsPedRagdoll(ped) then 
		if not HasAnimDictLoaded(a) then
			RequestAnimDict(a)
			while not HasAnimDictLoaded(a) do Wait(10) end
		end
		TaskPlayAnim(ped, a, b, 3.0, 1.0, -1, 2, 0, 0, 0, 0) 
	end
end)
RegisterCommand('resisti', function(source, args) -- "resisti" 
	CreateThread(function()
		local ped = PlayerPedId()
		local a = "hit_react_heavy_front_knockback_stagger" local b = "hit_react_heavy_front_knockback_stagger_clip"
		local randomAnimRest = math.random(1,5)
		if randomAnimRest == 2 then a="melee@ghost@fixed5@dead_as_disco@standard_anims" b="gt_fixed5_dad_reaction_big_hurt_knee_charlie_clip" 
		elseif randomAnimRest == 3 then a="melee@ghost@fixed5@dead_as_disco@standard_anims" b="gt_fixed5_dad_reaction_big_hurt_head_v2_charlie_clip" 
		elseif randomAnimRest == 4 then a="melee@ghost@fixed5@dead_as_disco@standard_anims" b="gt_fixed5_dad_reaction_big_hurt_head_v8_charlie_clip" 
		elseif randomAnimRest == 5 then a="melee@ghost@fixed5@dead_as_disco@standard_anims" b="gt_fixed5_dad_reaction_big_hurt_neck_v3_charlie_clip" 
		end
		if not IsEntityPlayingAnim(ped, a,b, 3) and not IsPedRagdoll(ped) then 
			PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1)
			if not HasAnimDictLoaded(a) then
				RequestAnimDict(a)
				while not HasAnimDictLoaded(a) do Wait(10) end
			end
			ClearPedSecondaryTask(ped) ClearPedTasks(ped) ecc()
			MyHit = 0
			TaskPlayAnim(ped, a, b, 3.0, 1.0, 1400, 0, 0, 0, 0, 0) 
			Wait(1400)
			HoRollato = false 
			-- EndRoll() 
			caprioleTotali = 0
			PossoCapriola = true
		end
	end)
end)
RegisterCommand('resisti2', function(source, args) -- "resisti2" 
	CreateThread(function()
		local ped = PlayerPedId()
		local a = "hit_react_heavy_front_knockback_stagger" local b = "hit_react_heavy_front_knockback_stagger_clip"
		if not IsEntityPlayingAnim(ped, a,b, 3) and not IsPedRagdoll(ped) then 
			PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1)
			if not HasAnimDictLoaded(a) then
				RequestAnimDict(a)
				while not HasAnimDictLoaded(a) do Wait(10) end
			end
			ClearPedSecondaryTask(ped) ClearPedTasks(ped) ecc()
			TaskPlayAnim(ped, a, b, 3.0, 1.0, 100, 0, 0, 0, 0, 0) 
			Wait(1500)
			HoRollato = false EndRoll() caprioleTotali = 0
			PossoCapriola = true
			-- print("Resisti 2")			
		end
	end)
end)
RegisterCommand('crampo', function(source, args) -- "/crampo" "crampo"
	outchFunc()
end)

-- USEFUL FOR SOME IMPORTANT MESSAGE (maybe? I don't know if you like it, maybe you can insert your own message system.)
RegisterCommand("mexImportant",function(source, args) -- Please do not touch this
	local testo = table.concat(args, " ")
	strianoImportant(testo)
end)

-- THIS COMMAND ITS FOR CREATE A NEW COMBAT STYLE! WILL BE SAVED ON DATABASE!
RegisterCommand('combatlistfull', function(source, args) 
	CombatListFull()
end)

-- SPAWN THIS COMMAND IF YOU WANT SPAWN SOME ENEMYS AND LEARN TO FIGHT, SOME OF THEM ARE VERY STRONG! PLAY WITH CONFIGURATION TO CREATE COOL ENEMYS FOR YOUR PROJECT
RegisterCommand("scav", function(source, args) 
	if #MioNemico > 10 then exports.striano_combat:submexError("You have too much enemy active, scav blocked!") return end
	-- print("Attivo uno Scav")
	DeleteDeathEnemy()
	local scav = exports.striano_combat:scav(true) -- true è il forceSpawn
	-- if scav == nil then print("Nessuna coordinata rilevata con uno scav che ti potrebbe attaccare.") return end
end)
RegisterCommand("scav2", function(source, args) 
	if #MioNemico > 10 then exports.striano_combat:submexError("You have too much enemy active, scav blocked!") return end
	-- print("Attivo uno Scav")
	DeleteDeathEnemy()
	local scav = exports.striano_combat:scav2(nil, true, "a_m_m_rurmeth_01", 150) -- true è il forceSpawn
	-- if scav == nil then print("Nessuna coordinata rilevata con uno scav che ti potrebbe attaccare.") return end
end)
RegisterCommand("scav3", function(source, args) 
	if #MioNemico > 10 then exports.striano_combat:submexError("You have too much enemy active, scav blocked!") return end
	-- print("Attivo uno Scav")
	DeleteDeathEnemy()
	local scav = exports.striano_combat:scav2(nil, true, "cs_wade", 150, 68) -- true è il forceSpawn
	-- if scav == nil then print("Nessuna coordinata rilevata con uno scav che ti potrebbe attaccare.") return end
end)

RegisterCommand("delEnemy", function(source, args)
	for k, v in ipairs(MioNemico) do 
		-- print("Enemy " .. k .. " found.")
		FastDelEnemy(v.p, v.sword_obj)
	end
	TriggerServerEvent("enemyArea:resetAllPatrols") resetAllEnemys() -- DELETE THE ENEMY IN THE SPAWN AREAS!
end)

-- A COMMAND TEST TO CHECK HOW MANY ENEMYS ARE ACTIVE, JUST A DEBUG AT MOMENT
RegisterCommand("HandleAttivi", function(source, args)
	print("Handle Attivi: " .. handleAttivi)
end)

-- WITH THIS COMMAND YOU CAN CHANGE THE FONT OF 3D TEXT ON PLAYER WHILE FIGHT, LIKE HP DAMAGE ETC ETC.
RegisterCommand("IDFONT_combat", function(source, args)
	if args[1] then IDFONT = tonumber(args[1]) end
end)

-- WIP FOR SOME EXPLOSIVE PUNCH!
RegisterCommand('IDBOMBA_combat', function(source, args) 
	if ImAdmin() then
		if args[1] then IDBOMBA = tonumber(args[1]) end
	end
end)
RegisterCommand('potenza', function(source, args)  -- power of explosion test on everyHit
	if ImAdmin() then
		if args[1] then potenza = tonumber(args[1]) end
	end
end)

RegisterCommand("closeCombatList",function(source)
	closeall = true
end)

RegisterCommand("myDelay",function(source) -- ONLY A DEV COMMAND AT MOMENT!
	print("Your delay: " .. DelaySkill .. "ms (Low = More fast fighting and rolling)")
	PlaySoundFrontend(-1,'Faster_Bar_Full','RESPAWN_ONLINE_SOUNDSET',1)
end)

-- THIS IS TO FOLD SWORD!
RegisterCommand('foderaArmi', function() FoderaArmi() end)

RegisterCommand("CloseAllMenuCombat", function(source, args) CloseAllMenuCombat() end)

RegisterCommand("myListCombat", function(source, args)
	CombatListAperta = false
	Wait(225)
	PlaySoundFrontend(-1,'OTHER_TEXT','HUD_AWARDS',1)

	local tabella = myCombatList
	if not tabella or #tabella <= 0 then
		strianoSub("You haven't created an own fighting style yet.", true)
		return
	end

	CloseAllMenuCombat()

	local currentIndex = 1
	local menuOpen = true

	CombatListAperta = true
	AggiornaStrigCombat(currentIndex)
	strianoSub("")
	Wait(225)

	CreateThread(function()
		while menuOpen do
			Wait(0)

			draw(25,"Close", 74, "Apply Set", 47,"Delete Set", 29,"Assign Near Player", 175,"", 174,"")
			DisableControlAction(0, 47, true)
			DisableControlAction(0, 29, true)

			if IsControlJustPressed(0,175) or IsDisabledControlJustPressed(0,175) then
				if currentIndex < #tabella then
					currentIndex = currentIndex + 1
				else
					currentIndex = 1
				end
				PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1)
				AggiornaStrigCombat(currentIndex)
			elseif IsControlJustPressed(0,174) or IsDisabledControlJustPressed(0,174) then
				if currentIndex > 1 then
					currentIndex = currentIndex - 1
				else
					currentIndex = #tabella
				end
				PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1)
				AggiornaStrigCombat(currentIndex)
			elseif IsControlJustPressed(0,29) or IsDisabledControlJustPressed(0,29) then
				local closestPlayer, closestDistance = PlayerVicinoPed(PlayerPedId())
				if closestPlayer ~= -1 and closestDistance <= 3.0 then
					TriggerServerEvent("AssignNearPlayer", FightWStyle[myWStyle], GetPlayerServerId(closestPlayer))
					menuOpen = false
					CombatListAperta = false
					CloseAllMenuCombat()
					Wait(750)
					strianoSub("Fight Style " .. FightWStyle[myWStyle].Name .. " gived to the nearest player.", true)
					PlaySoundFrontend(-1,'ERROR','HUD_AMMO_SHOP_SOUNDSET',1)
					faiAnim("mp_common", "givetake1_a", 950)
					return
				else
					exports.striano_combat:submexError("No one nearby to assign this moveset.")
				end

			elseif IsControlJustPressed(0,74) then
				myWStyle = #FightWStyle + 1
				FightWStyle[myWStyle] = {
					Name = tabella[currentIndex].Name,
					Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" },
					Idle = tabella[currentIndex].Idle,
					WithoutShift = { CombatA = tnsa, CombatD = tnsd, CombatW = tnsw },
					WithShift = { CombatA = tsa, CombatD = tsd, CombatW = tsw }
				}

				menuOpen = false
				CombatListAperta = false
				CloseAllMenuCombat()
				Wait(750)
				strianoSub("Fight Style " .. FightWStyle[myWStyle].Name .. " assigned.", true)
				PlaySoundFrontend(-1,'ERROR','HUD_AMMO_SHOP_SOUNDSET',1)
				return

			elseif IsDisabledControlJustPressed(0,47) then
				PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)

				while menuOpen do
					Wait(0)
					draw(73,"Confirm and Delete", 194, "Cancel")

					if IsControlJustPressed(0,73) or IsDisabledControlJustPressed(0,73) then
						table.remove(tabella, currentIndex)
						table.remove(FightWStyle, currentIndex)
						myWStyle = 1

						if currentIndex > #tabella and #tabella > 0 then
							currentIndex = #tabella
						end

						Wait(7)
						TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow)

						menuOpen = false
						CombatListAperta = false
						CloseAllMenuCombat()
						strianoSub("Fight Style deleted.", true)
						PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)
						return
					end

					if IsControlJustPressed(0,194) then
						break
					end
				end
			end

			if IsDisabledControlJustPressed(0,25) or IsControlJustPressed(0,73) then
				menuOpen = false
				CombatListAperta = false
				CloseAllMenuCombat()
				return
			end
		end
	end)
end)

RegisterCommand("ListCombat", function(source, args)
	local tabella = FightWStyle
	if not tabella or #tabella <= 0 then return end

	CloseAllMenuCombat()

	local currentIndex = 1
	local menuOpen = true

	AggiornaStrigCombatBase(currentIndex)

	CreateThread(function()
		CombatListAperta = true
		strianoImportant("")
		strianoSub("")

		while menuOpen do
			Wait(0)

			draw(25,"Close", 74, "Assign Set", 45,"Manage My Created Set", 175,"", 174,"")

			if IsControlJustPressed(0,175) or IsDisabledControlJustPressed(0,175) then
				ClearPedSecondaryTask(PlayerPedId())
				ClearPedTasks(PlayerPedId())

				if currentIndex < #tabella then
					currentIndex = currentIndex + 1
				else
					currentIndex = 1
				end

				AggiornaStrigCombatBase(currentIndex)
				PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1)

			elseif IsControlJustPressed(0,74) or IsDisabledControlJustPressed(0,74) then
				strianoSub("Fight Style " .. FightWStyle[currentIndex].Name .. " assigned.", true)
				PlaySoundFrontend(-1,'ERROR','HUD_AMMO_SHOP_SOUNDSET',1)
				myWStyle = currentIndex
				menuOpen = false
				CombatListAperta = false
				CloseAllMenuCombat()
				return

			elseif IsDisabledControlJustPressed(0,45) or IsControlJustPressed(0,45) then
				menuOpen = false
				CombatListAperta = false
				CloseAllMenuCombat()
				ExecuteCommand("myListCombat")
				return

			elseif IsControlJustPressed(0,174) or IsDisabledControlJustPressed(0,174) then
				if currentIndex > 1 then
					currentIndex = currentIndex - 1
				else
					currentIndex = #tabella
				end

				AggiornaStrigCombatBase(currentIndex)
				PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1)
			end

			if IsControlJustPressed(0,25)
			or IsDisabledControlJustPressed(0,25)
			or IsControlJustPressed(0,177)
			or IsDisabledControlJustPressed(0,177)
			or IsControlJustPressed(0,73)
			or IsDisabledControlJustPressed(0,73) then
				menuOpen = false
				CombatListAperta = false
				CloseAllMenuCombat()
				return
			end
		end
	end)
end)

-- WIP - THIS IS A SYSTEM TO ASSIGN MOVE TO PLAYERS, AT MOMENT IS BETTER DO NOT USE!
--[[
RegisterCommand('addMove', function(source, args) 
	if ImAdmin() then
		if args[1] then 
			local id = tonumber(args[1])
			if id and id > 0 and id <= #AnimFightList then 				
				local closestPlayer, closestDistance = PlayerVicinoPed(PlayerPedId())
				if closestPlayer ~= -1 and closestDistance <= 3.0 then	
					TriggerServerEvent("AddMoveServer", id, GetPlayerServerId(closestPlayer))	
				else
					if GLG() == 1 then exports.striano_combat:submexError("Non sembra esserci nessuno nelle vicinanze per assegnare questa mossa.")
					else exports.striano_combat:submexError("There no one nearby to assign this move.") end
				end
			else
				exports.striano_combat:submexError("/addMove ID_Move")
			end
		end
	end
end)

RegisterCommand('addMoveMe', function(source, args) 
	if ImAdmin() then
		if args[1] then 
			local id = tonumber(args[1])
			if id and id > 0 and id <= #AnimFightList then 		
				TriggerServerEvent("AddMoveServer", id, GetPlayerServerId(PlayerId()))
			else
				exports.striano_combat:submexError("/addMoveMe ID_Move")
			end
		end
	end
end)
]]

-- THIS IS A SYSTEM THAT WHEN MORE PLAYER FIGHTS IF ARE IN THE SAME PATH THEY NOT GIVE DAMAGE FROM FRIENDS!
-- WORK IN PROGRESS, IS SOMEONE WANT HELP ME TEST IT PLEASE COME ON DISCORD <3
RegisterCommand('patto', function() ApriMenuPatto() end)
RegisterCommand('patti', function() ApriMenuPatto() end)
RegisterCommand('party', function() ApriMenuPatto() end)
RegisterCommand('covenant', function() ApriMenuPatto() end)

-- Command to test the first finisher i worked on
RegisterCommand("finisher",function(source, args) startFinisher(GetEntityHeading(PlayerPedId())) end)

RegisterCommand('CombatGTA', function() CombatGTA = not CombatGTA if CombatGTA then print("GTA COMBAT: ACTIVE!") PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1) else print("GTA COMBAT: DISABLED!") PlaySoundFrontend(-1,'Put_Away','Phone_SoundSet_Michael',1) end end)
RegisterCommand('maxSpecialMove', function()
	specialMove = 100
	mexSpecialMove()
end)

-- If you want that players can't decide if enable of not, comment this command below!
RegisterCommand('aimCombat', function() PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1) aimbotEnabled = not aimbotEnabled print("aimCombat: ", aimbotEnabled) end) 

Combat_Bars = true
RegisterCommand("combatBars", function(source, args)
	Combat_Bars = not Combat_Bars
	print("Combat Bars 3D now are: ", Combat_Bars)
end)
Combat_HUD = true
RegisterCommand("CombatHUD", function(source, args)
	local current = Combat_HUD
	current = not current
	Combat_HUD = true
	-- print("Combat HUD now is: ", Combat_HUD)
	PlaySoundFrontend(-1,'FocusIn','HintCamSounds',1)
	if not current then 
		testo3d("Combat HUD: ~g~~h~ON") 
	else 
		testo3d("Combat HUD: ~r~~rh~OFF") 
	end
	Wait(25)
	Combat_HUD = current
end)

RegisterCommand("skeleton", function(source, args) -- Create Skeleton!
	if #MioNemico > 10 then exports.striano_combat:submexError("You have too much enemy active, skeleton blocked!") return end
	-- print("Attivo uno Scav")
	DeleteDeathEnemy()
	CreateSkeleton()
end)

RegisterCommand("getenemy", function(source, args)
	print("You have spawned enemy: " , #MioNemico)
end)

-- DUMMY SYSTEM
dummyPropModel = "prop_dummy_01"
RegisterCommand('dummy', function()
	local ped = PlayerPedId()		
	local forward   = GetEntityForwardVector(ped)
	local x, y, z   = table.unpack(GetEntityCoords(ped) + forward * 1.5)
	spawnDummy(vector3(x,y,z-1.0), rot)
end)
exports('dummy', function(x,y,z, rx,ry,rz) spawnDummy(x,y,z, rx,ry,rz) end)
exports('delAllDummy', function() 
	for k, v in ipairs(dummyObj) do
		SetEntityAsMissionEntity(v.o)
		DeleteEntity(v.o)
	end
	dummyObj = {}
end)

--[[
RegisterCommand("SpawnFinisherEnemy", function(source, args) -- JUST A TEST COMMAND
	if args[1] == nil then return end
	local id_finisher = tonumber(args[1])
	if id_finisher == nil or id_finisher <= 0 or id_finisher > #FinisherList then print("Id finisher not valid.") return end
	finisherNPC(id_finisher)
end)
]]

GodModeCombat = false -- Do you want a GTA Fight as base? Put this as true, or let your players decide with the downside command!
RegisterCommand('GodModeCombat', function() GodModeCombat = not GodModeCombat 
	if GodModeCombat then 
		print("GOD MODE: ACTIVE!") 
		TriggerServerEvent("PlayEffectEnt", { a="scr_rcbarry1",b="scr_alien_teleport", ent=PedToNet(PlayerPedId()), s=1.9 } ) 
		PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1) 
	else 
		print("GOD MODE: DISABLED!") 
		PlaySoundFrontend(-1,'Put_Away','Phone_SoundSet_Michael',1) 
	end 
end)

RegisterCommand("combatSpeed", function() -- THIS IS A TEST COMMAND! REMEMBER TO DISABLE! SANE VALUE ARE 1.0 <-> 1.6!
	local speedCombat = OpenInput('Insert own combat speed (Sane value: 1.0 to 1.6)')
	local id = tonumber(speedCombat)
	if id == nil then return end
	if id < 0.5 then id = 1.0 end
	if id > 2.0 then id = 2.0 end
	myOwnSpeed = id or 1.0
	myOwnSpeed = myOwnSpeed + 0.0
end)

RegisterCommand('buffer', function() 
	local ped = PlayerPedId()
	exports['striano_fastmenu']:clearMenu() Wait(75)
	exports['striano_fastmenu']:addMenuItem("[ No buffer ]", function()
		applyBuffer(0)
	end, true)
	for k, v in ipairs(BufferList) do
		local active = "off" if v.ac then active = "on" end
		local name = v.name or "Buffer"
		local tt = "♾️" if v.timerBuff then tt = v.timerBuff/1000 .. "s" end	
		exports['striano_fastmenu']:addMenuItem(name .. " " .. k .. " ["..active.."] " .. tt, function()
			local pedNet = SafeEntToNet(ped)
			if pedNet then 
				if BufferList[k].ac then
					testo3d("~r~~h~Buff [" .. k .. "]", ped)
				else
					local buftext = BufferList[k].dmg
					testo3d("~g~~h~Buff [" .. k .. "]~n~+" .. buftext .. "dmg|n|"..tt, ped)
				end
				applyBuffer(k)
			end
		end, true)
	end
	exports['striano_fastmenu']:openMenu()
end)

RegisterCommand("horrortest", function(source) 
	if ImAdmin() then
		exports.striano_combat:spawnHorror(GetEntityCoords(PlayerPedId()))
	end
end)

RegisterCommand("prova", function(source, args)
    local msg = table.concat(args, " ")
	strianoSub(msg or " ")
end)
RegisterCommand("prova2", function(source, args)
    local msg = table.concat(args, " ")
	strianoSub2(msg or " ")
end)
RegisterCommand("prova3", function(source, args)
    local msg = table.concat(args, " ")
	strianoSub3(msg or " ")
end)
RegisterCommand("prova4", function(source, args)
    local msg = table.concat(args, " ")
	exports.striano_combat:showZone("", msg or "")
end)

RegisterCommand('boarZ', function(source, args, raw) exports.striano_combat:cinghialez() end)

RegisterCommand("spiderZ", function()
	PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1)
	SpawnSpiderEnemy()
end)

CavewormSizes = {
	[1] = { -- medio/default
		model = "alezlab_caveworm_medium",
		anim = "alezlab_caveworm_medium@anim",
		life = 50,
		speed = 0.0075,
		maxSpeed = 0.025,
		stopDistance = 1.5,
		damage = 8,
		radius = 3.5,
		animspeedVar = 1.1
	},

	[2] = { -- piccolo
		model = "alezlab_caveworm_small",
		anim = "alezlab_caveworm_small@anim",
		life = 30,
		speed = 0.0105,
		maxSpeed = 0.035,
		stopDistance = 1.5,
		damage = 5,
		radius = 3.0,
		animspeedVar = 1.9
	},

	[3] = { -- grande
		model = "alezlab_caveworm_big",
		anim = "alezlab_caveworm_big@anim",
		life = 150,
		speed = 0.0063,
		maxSpeed = 0.025,
		stopDistance = 1.5,
		damage = 20,
		radius = 3.5,
		animspeedVar = 0.85
	}
}

RegisterCommand("cavewormz", function(source, args, raw)
	PlaySoundFrontend(-1,'QUIT_WHOOSH','HUD_MINI_GAME_SOUNDSET',1)
	SpawnCavewormEnemy(args[1] or 1)
end)

RegisterCommand("stopSpider", function()
    StopAllFollowObjects()
end)

-- COMMAND TO GET STYLE FROM ANOTHER PLAYER AND MANAGE THEM!
RegisterCommand("getcombatlist", function(_, args)
    local target = tonumber(args[1])
    if not target then print("Insert a player ID to get a combat list of players.") return end
    TriggerServerEvent("combatAdmin:getPlayerCombatList", target)
end)

RegisterNetEvent("combatAdmin:receivePlayerCombatList", function(target, list, myStyle, myShield, mySword, Bow)
    exports["striano_fastmenu"]:clearMenu()

    exports["striano_fastmenu"]:addMenuItem("Combat list [" .. target .. "]", function() end, false)

    exports["striano_fastmenu"]:addMenuItem("Current Style: " .. tostring(myStyle), function() end, false)

    exports["striano_fastmenu"]:addMenuItem("Shield: " .. tostring(myShield), function() end, false)
    exports["striano_fastmenu"]:addMenuItem("Sword: " .. tostring(mySword), function() end, false)
    exports["striano_fastmenu"]:addMenuItem("Bow: " .. tostring(Bow), function() end, false)

    exports["striano_fastmenu"]:addMenuItem(" ", function() end, false)

    for k, v in pairs(list or {}) do
        local label = nil
        local styleId = nil

        if type(v) == "table" then
            label = v.label or v.name or v.Name or v.id or ("Name: " .. tostring(k))
            styleId = v.id or v.style or k
        else
            label = tostring(v)
            styleId = v
        end

        exports["striano_fastmenu"]:addMenuItem(label, function()
			exports["striano_fastmenu"]:close() Wait(25)
            OpenCombatStyleManageMenu(target, styleId, label)
        end, false)
    end

    exports["striano_fastmenu"]:openMenu()
end)

function OpenCombatStyleManageMenu(target, styleId, NameStyle)
    exports["striano_fastmenu"]:clearMenu()
    exports["striano_fastmenu"]:addMenuItem("Style: " .. NameStyle, function() end, false)
    exports["striano_fastmenu"]:addMenuItem("Remove from list", function()
		strianoSub("Style " ..  NameStyle .. " removed.")
        TriggerServerEvent("combatAdmin:removePlayerStyle", target, styleId)
		exports["striano_fastmenu"]:close()
    end, false)
    exports["striano_fastmenu"]:openMenu()
end

RegisterCommand("trailmenu", function()
	exports["striano_fastmenu"]:clearMenu()
	local list = GetOrderedTrailPresets()
	for i, data in ipairs(list) do
		exports["striano_fastmenu"]:addMenuItem(("[%02d] %s"):format(i, data.name), function()
			SetCurrentSwordTrail(data.name)
		end)
	end
	exports["striano_fastmenu"]:openMenu()
end)

RegisterCommand('myVoiceGruntId', function(source, args)
	if ImAdmin() then
		local id = tonumber(args[1])
		local maxVoice = 10 -- this can be determinated with folder in xsound gunt/male_10 etc (You can increase by creating new voice folder!)
		if id and id > 0 and id <= maxVoice then myVoiceGruntId = id print("Voice ID setted:", id) else print("Error on voice ID! (1-"..maxVoice..")") end
	end
end)

-- TEST COMMAND
RegisterCommand("spawndummy", function()
    local ped = PlayerPedId()
    RequestModel(testDummyModel)
    while not HasModelLoaded(testDummyModel) do
        Wait(0)
    end
    local coords = GetOffsetFromEntityInWorldCoords(
        ped,
        0.0,
        2.5,
        0.0
    )
    local entity = CreateObject(
        testDummyModel,
        coords.x,
        coords.y,
        coords.z,
        false,
        false,
        false
    )
    SetEntityHeading(entity, GetEntityHeading(ped))
    PlaceObjectOnGroundProperly(entity)
    FreezeEntityPosition(entity, true)
    RegisterTrainingDummy(entity, 100)
    SetModelAsNoLongerNeeded(testDummyModel)
end)

-- DEBUG COMMAND HELM
RegisterCommand("helm", function(_, args)
	local id = tonumber(args[1])
	if DoesEntityExist(CurrentHelmet) and not IsEntityAttached(CurrentHelmet) then 
		RemoveHelmet() 
	end
	if not id or Helmets[id] == nil then
		return
	end
	if DoesEntityExist(CurrentHelmet) and IsEntityAttached(CurrentHelmet) and GetEntityModel(CurrentHelmet) == GetHashKey(Helmets[id].m) then 
		RemoveHelmet()
		return
	end
	if DoesEntityExist(CurrentHelmet) and IsEntityAttached(CurrentHelmet) and GetEntityModel(CurrentHelmet) ~= GetHashKey(Helmets[id].m) then 
		RemoveHelmet() 
	end
	exports.striano_combat:sethelm(id)
end)

RegisterCommand("detachhelm", function(_, args)
	DetachHelmet()
end)

RegisterCommand("BloodCombat", function(source, args) -- this is blood
	BloodActive = not BloodActive
	PlaySoundFrontend(-1,'OOB_Cancel','GTAO_FM_Events_Soundset',0)
	if BloodActive then print("BLODD EFFECTS ARE NOW ENABLED!") else print("BLODD EFFECTS ARE NOW DISABLED!") end
end)

-- JUST A DEBUG TO SHOW YOU THAT IS OPTIMISED THE LOADING OF ANIMS!
--[[
RegisterCommand("combat_animdebug", function()
    print("COMBAT ANIM DEBUG")
    for res, dicts in pairs(AnimTracker) do
        local count = 0
        for _ in pairs(dicts) do count = count + 1 end
        if count > 0 then
            print(("Resource %s: %d dict loaded."):format(res, count))
            for dict, _ in pairs(dicts) do
                print("   - " .. dict)
            end
        end
    end
end)
RegisterCommand("combatanimclean", function()
    print("ANIM CLEAN")
    for res, dicts in pairs(AnimTracker) do
        for dict, _ in pairs(dicts) do
            print(("Clearing %s (%s)"):format(dict, res))
            RemoveAnimDict(dict)
        end
        AnimTracker[res] = {}
    end
    print("Combat Anim clear complete.")
end)
]]