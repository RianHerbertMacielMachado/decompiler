-- STRIANO SCRIPT presents:
-- COMBAT SYSTEM v1.99 by StrianoDev
-- DOCUMENTATION: https://strianodev.com/
-- If you have problem with dp_emotes or with other animations resources, please remove the folder combat_animations and let only striano_combat with melee animations only!

function ImAdmin()
	return true -- EVERYONE ARE ADMIN! REPLACE WITH THIS IF YOU WANT ENABLE ADMIN CHECK ----> return LocalPlayer.state.isAdmin
end

function GetSFXVolume(maxVolume)
	local sfx=tonumber(GetConvar("profile_sfxVolume","10")) or 10
	return (sfx/10.0)*(maxVolume or 1.0)
end
exports('GetSFXVolume', function(maxVolume) GetSFXVolume(maxVolume) end)


-- NEW! 30/05/2026
-- WITH THIS VARIABLE YOU CAN ENABLE THE EASY FIGHT MODE, THAT MEANS THAT TO FIGHT YOU NEED JUST PRESS MOUSE LEFT LIKE THE FIRST VERSION!
EasyCombat = true -- Put this to true if you would test it, use the test command if you need, remember to disable in release mode. Put to false if you want the classic combat like dark souls with 6 moves for every combat set with WASD SHIFT fight system!
RegisterCommand('EasyCombat', function() EasyCombat = not EasyCombat  if EasyCombat then print("Easy combat ENABLED!") else print("Easy combat DISABLED!") end PlaySoundFrontend(-1,'Event_Message_Purple','GTAO_FM_Events_Soundset',0) end)
damageAdderLastEasyHit = 5 -- heavyHit add damage
ResetEasyHeavyHit = 5000 -- how many ms before reset the heavy hit while fighing

-- ITS BETTER MAKES THE GTA PUNCH WITH LESS DAMAGE!
-- DISABLE THIS IF YOU WANT ALSO USE PUNCH OF GTA FOR PVP
CreateThread(function()
    while true do
        Wait(1000)
        SetPlayerMeleeWeaponDamageModifier(PlayerId(), 0.05) -- 5% DAMAGE OF MELEE WEAPONS OF GTA (NOT STRIANO SCRIPTS!)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.03) -- DAMAGE OF PUNCHES OF GTA
    end
end)

-- WARNING: THE COVENANT SYSTE IS STILL WORK IN PROGRESS, PLEASE BE PATIENT.
-- WHAT IS COVENANT? LIKE PARTY SYSTEM WHERE YOU CANT DAMAGE YOUR FRIENDS IN A WAR FIGHT WITH MORE PLAYERS!
DebugMode = false -- set to false if works all!
BloodActive = true -- Set this to false to disbale Blood default! Players can enable blood with command /BloodCombat
myOwnSpeed = 1.0 -- Do not touch this, will be managed by script! This is how fast is a player fight?
-- To increase the speed fight movement lets use the event TriggerEvent("trainCombat") to give chance to the player to be more fast, will be not saved only for session at moment!
delStaminaFight = 50 -- How much stamina remove while fighting on every hit? Recover stamina will be this variable *2 (without shift pressed)
shakeEveryWash = true -- shake cam every wash?
shakeEveryHit = true -- shake cam every hit?
-- timeLockParata = 0
-- maxParataTime = 3500
maxStamina = 750 -- was 750 and was ok, maybe a little bit too much, lets try 500 for a more intense match.
nostamina = false -- put true if you dont want stamina!
tastoDifesa = 25 -- WAS 210 IN OLD COMBAT SYSTEM -- era 33 S! KEY OF DEFENCE!
tastoStrafe = 25 -- DO NOT NEED ANYMORE CAUSE NOW COMBAT START WHEN YOU EQUIP WEAPON!
fiatoneDash = 35
wandObject = nil
myLastSword = 0 -- Serve alla spell della trasformazione, ti ridà l'arma che avevi!
sexWas = `mp_m_freemode_01`
distMaxTele = 200 -- Distance Maxium on Teleport Spell!
myMana = 100
staminaDownOnDefence = true -- Put to false if you dont want the stamina goes down while defence!
staminaDownOnDefence_HOWMUCH = 0.15
penalSameMove = true -- If the player make the same move every hit you want a penal? it's cool like this players not make the same moveset every hit! Put false to make same damage also if you spam same moveset or true to make half!
lastHitMorePower = 3 -- This means that every hit will be damage+3 if it's the last one. (Doesnt work for the moves with one hit.)
CreatureDeleteMoreDamage = 2 -- If a ped ImACreaturePed then remove more stamina (10*CreatureDeleteMoreDamage) but makes more damage! Damge * CreatureDeleteMoreDamage! (sane value 2-3)
DefaultNewStyleDmg = 10
arrowDamage = 15 -- What's the damage of arrow when hit a npc/player? FOR ANIMAL IT'S *2!
totBloodCreature = 2 -- DO NOT INCREASE TOO MUCH, TOO PARTICLES MAKES LAG! (THIS IS A MULTIPLAYER!)
totBloodPunch = 1 -- DO NOT INCREASE TOO MUCH, TOO PARTICLES MAKES LAG! (THIS IS A MULTIPLAYER!)
totBloodSword = 1 -- DO NOT INCREASE TOO MUCH, TOO PARTICLES MAKES LAG! (THIS IS A MULTIPLAYER!)
sizeBloodCreature = 2.0 -- The size of the particle!
sizeSwordBlood = 1.8 -- Size of Particles with Swords
sizeBatBlood = 1.1
sizePunchBlood = 1.0
pushForceAfterDead = 10.0 -- When NPC die push! It's cool!
UNARMED_TEXT = "~p~U n a r m e d" -- when an NPC have too low health  will lose the melee weapon and will fight with hands!
everyMovesOneHP = false -- put this to true to make every moveset with NO MELEE WEAPON 1 HP!
oneHPweaponAlso = false -- HIGHLY RECCOMENDED AS false BECAUSE EVERY WEAPON HAVE DIFFERENT STYLE OF COMBAT AND STYLE OF DAMAGE MANAGED WITH BALANCED DAMAGES!
stealthKillEnabled = false -- PUT FALSE TO DISABLE STEALTH KILL!
NewTraceActive = true -- if you dont like the black trace just put this to false! Please remember that at moment it's only black!
TRAIL_LIFE = 550 -- How much ms trace will live
TraceBasicAlpha = 25.0 -- put to 255 to make more dark!
SuperSpeedVelocity = 2.0

-- PLEASE AT MOMENT DO NOT PUT THIS TO FALSE, IS STILL WORK IN PROGRESS! I DID A LOT OF OPTIMISATION ABOUT THIS, SO NOW NOT TOUCH UNTILL NEXT AWESOME UPDATE!
DisableDashRoll = true -- Disable roll Souls like and make only a standard movement to avoid attacks?

gruntSound = true -- If you dont like the sound of grunt while fighting make this false!
volumeGlobal = 0.03

-- RANGE OF ATTACKS! -- DISTANCE OF ATTACK
grandezzaAtk = 0.7 -- was 0.3
grandezzaAtkBase = 0.7 -- was 0.3
grandezzaAtkHeavySword = 0.85 -- was 0.7
grandezzaAtkSword = 0.7 -- was 0.7
grandezzaEnemy = 0.9 -- was 0.9

costManaSingleTeleport = 2
costManaSingleWitcher = 5
costManaSingleLaser = 2
TIMER_SUPERJUMP = 59 -- IN SECONDS!
moreDamageInRagdoll = false -- If ped is in ragdoll will get more damage by NPC! (Cool to manage good the stamina)
TIMER_INVISIBILITY = 15000 -- SPELL invisibility HOW MUCH TIME ACTIVE!
TIMER_SUPERSPEED = 35000 -- SPELL superspeed HOW MUCH TIME ACTIVE!
increaseSpecialOnHit = 2 -- HOW MANY POINT GET FOR THE SPECIAL MOVE? ON 100 YOU CAN PERFORM SPECIAL MOVE!
putNearCameraOnCombat = true -- Do you want the camera zoom on fight? If not put false!
CombatGTA = false -- Do you want a GTA Fight as base? Put this as true, or let your players decide with the downside command!

-- AIM COMBAT SYSTEM CONFIG
aimbotEnabled = true
PushFrwdFightInAim = true -- PUT THIS TO FALSE IF YOU WANT DISABLE THAT THE PLAYER WILL BE HELPED TO REACH THE ENEMY WHILE FIGHT!
pushForwardOnlyForNPC = false -- If you want push forward velocity only for NPC put this true!
OPTIMAL_DISTANCE = 0.2
APPROACH_SPEED = 3.3
RETREAT_SPEED = 0.7
TARGET_RANGE = 5.5  
keyCamLock = 47 -- THIS IS G! 

-- IF IM A CREATURE FROM SPELL COME BACK HUMAN IF SERVER RESTART!
CreateThread(function()
	local ped = PlayerPedId()
	if ImACreaturePed(ped) then
		ResetPlayerPed()
		Wait(950)
		ResetMyHealth(ped)
	end
end)

-- NECESSARY TO DISABLE DEFAULT PUNCHES AND FIGHT!
CreateThread(function()
	while true do 
		if not CombatGTA then
			local ped = PlayerPedId()
			if IsControlPressed(0, 25) then	else
				if not IsPedInCover(ped, true) and not IsPedInCover(ped, false) then 
					if Sfoggiate then 
						DisableControlAction(1, 24, true) DisableControlAction(0, 24, true)
					end
					DisableControlAction(1, 142, true) DisableControlAction(0, 142, true)
					DisableControlAction(0, 26, true) DisableControlAction(1, 26, true) -- Disable Key C while fighting!
				end
			end
			
			if not IsControlPressed(0, 25) then 
				DisableControlAction(0,24,true) DisableControlAction(1,24,true) DisableControlAction(2,24,true)
				DisableControlAction(0,257,true) DisableControlAction(1,257,true) DisableControlAction(2,257,true)
			end
			
			if not IsPedArmed(ped, 4) and not IsPedArmed(ped, 1) and not IsPedArmed(ped, 2) then
				if Sfoggiate then 
					DisableControlAction(0, 24, true) DisableControlAction(1, 24, true)
					DisableControlAction(0, 25, true) DisableControlAction(1, 25, true) 
				end
				DisableControlAction(0, 257, true) DisableControlAction(1, 257, true) -- Attack 2
				DisableControlAction(0, 263, true) DisableControlAction(1, 263, true) -- Melee Attack 1
			end
		else
			Wait(1000)
		end
		Wait(0)
	end
end)

CreateThread(function()
	if GetResourceState('striano_fastmenu') ~= 'started' then
		print("PLEASE REMEMBER TO HAVE striano_fastmenu IN YOUR RESOURCE TO TEST THE SCRIPT!")
		print("You can remove this message in combat_configuration.lua!")
	end
end)

function StartCombatMode()
	if not CombatActive then -- combatmode
		local ped = PlayerPedId()
		local goon = true
		if exports.striano_combat.getlupo() ~= nil then goon = false end
		-- New check
		if SfoggiatoBow then -- Se ho l'arco in mano allora parto subito con la camera mira?
			if CanCombatCheck() 
				and not IsPedGettingUp(ped) 
				and not IsPedRagdoll(ped) 
				and not IsPedInAnyVehicle(ped) 
				and not FeritoCombat() 
				and not IsPedArmed(ped, 4) 
				and not IsPedArmed(ped, 1) 
				and not IsPedArmed(ped, 2) 
				and not inWitcher -- NEW!
				and goon
			then
				EnableCombatMode()
			end
		else
			if not Sfoggiate then
				-- era attivo prima di R keymap
				--[[
				if mySword > 0 or myBow > 0 then
					CreateThread(function()
						while CombatActive or IsDisabledControlPressed(0, 25) or IsControlPressed(0, 25) do
							Wait(0)
							if Sfoggiate or SfoggiatoBow then CombatActive = false return end
							ManageBowAndSword()
						end
					end)
				end
				]]
			else
				if CanCombatCheck() 
					and not IsPedGettingUp(ped) 
					and not IsPedRagdoll(ped) 
					and not IsPedInAnyVehicle(ped) 
					and not FeritoCombat() 
					and not IsPedArmed(ped, 4) 
					and not IsPedArmed(ped, 1) 
					and not IsPedArmed(ped, 2) 
					and not inWitcher -- NEW!
					and goon
				then
					StartControlCombat()
				end
			end
		end
	end
end

-- Here insert all the variable you need to know if the player can combat or not!
function CanCombatCheck() -- REMOVE ALL THE CHECK YOU DONT HAVE IN YOUR SERVER!
	local ped = PlayerPedId()
	local goon = true
	
	local isActive = exports["striano_editor"]:IsFollowHandsPropActive() if isActive then goon = false end -- DELETE IF YOU DONT HAVE!
	
	-- PLEASE DELETE ALL THE CHECKER OF THE RESOURCE THAT YOU DONT HAVE AND DELETE!
	if GetResourceState('striano_editor')=='started' and exports.striano_editor:isProne() then goon=false end
	if GetResourceState('striano_inventory') == 'started' and exports.striano_inventory:isopen() then goon = false end
	if GetResourceState('striano_core') == 'started' and exports.striano_core:eteris() ~= nil then goon = false end
	if GetResourceState('striano_editor') == 'started' and exports.striano_editor:stopescando() then goon = false end
	if GetResourceState('striano_editor') == 'started' and exports.striano_editor:crouchato() then goon = false end
	if GetResourceState('striano_editor') == 'started' and exports.striano_editor:inEDITORsyt() then goon = false end
	if GetResourceState('striano_cards') == 'started' and exports.striano_cards:modalitaCarte() then goon = false end
	if GetResourceState('striano_editor') == 'started' and exports.striano_editor:intattooedit() then goon = false end
	if GetResourceState('skinchanger') == 'started' and exports.skinchanger:ineditskin() then goon = false end
	if GetResourceState('striano_editor') == 'started' and exports.striano_editor:editorattivo() then goon = false end
	if GetResourceState('striano_boat') == 'started' and exports.striano_boat:getMyBoat() ~= nil then goon = false end
	
	
	-- TILL HERE!
	
	if exports.striano_combat.isflying() then goon = false end
	if exports.striano_combat.inclimbmode() then goon = false end
	if exports.striano_combat.getPP() ~= nil then goon = false end
	
	if mySword == 0 and not SfoggiatoBow then goon = false end
	
	if not IsPauseMenuActive() and 
		not exports.striano_combat:incombatanim() and
		#(GetEntityCoords(ped)-vector3(3836.253,6438.734,0.613)) > 10.0 and -- Tutorial purpose.
		not IsPedOpeningADoor(ped) and 
		not IsNuiFocusKeepingInput() and 
		not IsNuiFocused() and
		not inSpellAnim(ped) and
		-- GetGameTimer()-timeLockParata > maxParataTime/2 and
		not IsEntityPlayingAnim(ped, "missheist_agency3astumble_getup", "stumble_getup", 3) and
		not IsEntityPlayingAnim(ped, "mp_bank_heist_1", "prone_l_loop", 3) and 
		not IsEntityPlayingAnim(ped, "hit_react_heavy_front_knockback_stagger", "hit_react_heavy_front_knockback_stagger_clip", 3) and -- anim resisti
		not IsEntityPlayingAnim(ped, "magic@motions_left_hand_beam_struggle", "magic@motions_left_hand_beam_struggle_clip", 1) and -- e magic
		not IsEntityPlayingAnim(ped, "nightmare_anim", "victim_armpull", 3) and
		not IsEntityPlayingAnim(ped, "kp_9cg_knockdown_wounded_loop", "kp_9cg_knockdown_wounded_loop_clip", 3) and
		not IsEntityPlayingAnim(ped, "kp_9cg_knockdown_wounded_start", "kp_9cg_knockdown_wounded_start_clip", 3) and
		not inLeviosa
		and goon
		and not CombatGTA
	then 
		return true 
	else 
		return false 
	end
end

function StartControlCombat()
	local ped = PlayerPedId()
	local goon = true
	
	if exports.striano_editor:IsPlayerProne() then goon = false end

	if inblockfunc(ped) then ClearPedSecondaryTask(ped) ClearPedTasks(ped) end -- animblock
	
	if not inblockfunc(ped) 
		and IsPedHuman(ped) 
		and goon
	then -- and not IsEntityInAir(ped) and not IsPedFalling(ped)
		FixStealth()
		if canFightCheck() 
			and not IsEntityPlayingAnim(ped, "anim@move_m@prisoner_cuffed_fp", "aim_low_loop", 3) 
			and not IsEntityPlayingAnim(ped, "cellphone@", "cellphone_text_read_base", 3) 
			and not IsEntityPlayingAnim(ped, "amb@world_human_drinking@coffee@female@base", "base", 3) 
			and not CombatListAperta 
			and not IsEntityPlayingAnim(ped, "mp_am_hold_up", "cower_loop", 3) 
			and not IsEntityPlayingAnim(ped, "wing_chun@anim", "down_2", 3) 
			and GetPedParachuteState(ped) == -1 
			and not IsPedInParachuteFreeFall(ped) 
			and IsEntityVisible(ped) 
			and not IsEntityPlayingAnim(ped, "combat@damage@rb_writhe", "rb_writhe_loop", 3) 
			and not menuCombatOpen 
		then -- and not IsPedClimbing(ped) then 
			-- DisplayRadar(false)
			EnableCombatMode()
			onFirstStartCombat()
		end
	end
end
	
-- SUPER IMPORTANT, IF YOU HAVE YOUR OWN DIALOG SYSTEM PLEASE INSERT HERE, AT MOMENT IN MY TEST PROJECT I USE DIALOG FROM ESX! 
-- If you need it please come on discord i'll give you! But it's not so cool so it's better if you insert yours!
local function hasOxInput()
    return GetResourceState("ox_inventory") == "started"
        and lib ~= nil
        and type(lib.inputDialog) == "function"
end

local function hasStrianoInput()
    return GetResourceState("striano_core") == "started"
end

local function nativeKeyboardInput(label, maxLen)
    local testo = nil

    AddTextEntry('FMMC_KEY_TIP1', label or "Input")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", "", "", "", "", maxLen or 64)

    while UpdateOnscreenKeyboard() == 0 do
        DisableAllControlActions(0)
        Wait(0)
    end

    if GetOnscreenKeyboardResult() then
        testo = GetOnscreenKeyboardResult()
    else
        testo = ""
    end

    return testo
end

OpenInput = function(label)
    label = label or "Input"

    -- 1) OX
    if hasOxInput() then
        local ok, result = pcall(function()
            return lib.inputDialog(label, {
                {
                    type = 'input',
                    label = label,
                    max = 64,
                    required = false
                }
            })
        end)

        if ok and result and result[1] ~= nil then
            return tostring(result[1])
        end
    end

    -- 2) STRIANO ADMIN
    if hasStrianoInput() then
        local ok, result = pcall(function()
            return exports["striano_core"]:OpenInput(label, "", {})
        end)

        if ok and result ~= nil then
            return tostring(result)
        end
    end

    -- 3) FALLBACK NATIVO GTA
    local ok, result = pcall(function()
        return nativeKeyboardInput(label, 64)
    end)

    if ok and result ~= nil then
        return tostring(result)
    end

    -- fallback finale anti-anti-crash
    print("^1[OpenInput ERROR]^0 No input available.")
    return ""
end

function OnFineCombat() -- When combat end EndCombat
	-- DO SOMETHING? Like more stress
	TriggerEvent("striano_combat:client:onExitCombat")
	if wandObject ~= nil then 
		SetEntityAsMissionEntity(wandObject)
		DeleteEntity(wandObject)
		wandObject = nil
	end
end

function CheckIdleList()	
	indexIdle = 1
	LoadIdleFight(indexIdle)
	CreateThread(function()
		while true do
			Wait(0)		
			local ped = PlayerPedId()
			string_IdleList(stoCreandoStile)
			if IsDisabledControlJustPressed(0,26) then
				local idAnim = OpenInput('ID')
				local id = tonumber(idAnim)
				if id and id <= #idleFight then 
					indexIdle = id
					LoadIdleFight(indexIdle)
				end
			elseif IsControlJustPressed(0,38) and stoCreandoStile then
				myLastIdle = indexIdle
				ClearPedSecondaryTask(ped) ClearPedTasks(ped)
				ConfermaStileCombattimento()
				strianoSub("", true)
				indexIdle = 0
				return
			elseif IsControlJustPressed(0,175) then
				CreateThread(function()
					ClearPedSecondaryTask(ped) ClearPedTasks(ped)
					if indexIdle < #idleFight then indexIdle = indexIdle + 1 else indexIdle = 1 end
					LoadIdleFight(indexIdle)
				end)
			elseif IsControlJustPressed(0,174) then
				CreateThread(function()
					if indexIdle > 1 then indexIdle = indexIdle - 1 else indexIdle = #idleFight end
					LoadIdleFight(indexIdle)
				end)
			end
			if IsControlJustPressed(0,73) or IsDisabledControlJustPressed(0,25) or closeall then Wait(25) closeall = false ecc() ClearPedTasks(ped) indexIdle = 0 return end
		end
	end)
end

customEffects = { -- START FROM ID 15! -- a,b = effect_lib | s = size!
	{ a="scr_bike_adversary", b="scr_adversary_gunsmith_weap_smoke", s=5.5 }, -- ID 15
}

function delSpellCharge()
	FadeOutAndDestroy("spellcharge", 1000) -- exports.xsound:Destroy("spellcharge")
end

function finisherSound()
	shareSound("sounds/striano_combat/magic/finisher_1", 0.1, PlayerPedId(), 3.0)
end

function AssignCombatStyle(id)	
	myWStyle = id
	CreateThread(function()
		Wait(25)
		TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow) -- PL, Sword, Shield, List, Style
	end)
end

function outchFunc()
	local ped = PlayerPedId()
	-- print("Crampo!")
	local a = "hit_react_left_leg_stumble_knockdown" local b = "hit_react_left_leg_stumble_knockdown_clip"
	if not IsEntityPlayingAnim(ped, a,b, 3) and not IsPedRagdoll(ped) then 	
		local randRagdoll = math.random(1,4)
		if randRagdoll == 1 then SetPedToRagdollWithFall(ped, 3 * 250, 3 * 250, 2, GetEntityForwardVector(ped), 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) end
		testo3d2("~n~~r~No Stamina", ped)
		if GetResourceState('striano_editor') == 'started' then ExecuteCommand("addSporco") end
		DetachHelmet()
		if not IsPedRagdoll(ped) then
			Wait(7) ClearPedTasks(ped) ClearPedSecondaryTask(ped)
			shareSound("sounds/respirosurv.mp3", 0.3, ped, 7.0) -- Open ticket in strianodev.com discord and get this sound, this is when the player lose breath, only for dev that love details <3
			faiAnim("kp_9cg_knockdown_wounded_start", "kp_9cg_knockdown_wounded_start_clip", -1, 2)
			CombatActive = false 
		end
		genGrunt()
		
		if not IsPedRagdoll(ped) then
			Wait(455)
			faiAnim("kp_9cg_knockdown_wounded_loop", "kp_9cg_knockdown_wounded_loop_clip", -1, 1)
			local id = math.random(1,15)
			shareSound("sounds/striano_combat/grunt/male/audio_"..id, volumeGlobal, ped, 7.0)
		end
		while IsPedRagdoll(ped) do Wait(25) end -- print("Attesa dal crampo.")
		Wait(25)
		if IsEntityPlayingAnim(ped, "kp_9cg_knockdown_wounded_loop", "kp_9cg_knockdown_wounded_loop_clip", 3) then Wait(2950) end
		if IsEntityPlayingAnim(ped, "kp_9cg_knockdown_wounded_loop", "kp_9cg_knockdown_wounded_loop_clip", 3) then 
			faiAnim("get_up@directional@movement@from_knees@standard", "getup_l_0", 750, 1)
			FiatoneCapriola = maxStamina/4
			-- ClearPedTasks(ped) ClearPedSecondaryTask(ped)
		end
		HoRollato = false 
		-- EndRoll()
		caprioleTotali = 0
		MyHit = 0
		PossoCapriola = true 
		if randRagdoll == 1 then FiatoneCapriola = delStaminaFight * 4 end
		trail.lastBase = nil
		trail.lastTip = nil
		
		-- Lo tolgo proprio l'arma da mano, è meglio!
		testo3d2("~n~~y~Unarmed!", ped)
		exports.striano_combat:fodera2()
		HoRollato = false
		if FightPed ~= nil then FightPed = nil end
		if indexTarget > 0 then indexTarget = 0 end
		PossoCapriola = true
		FiatoneCapriola = maxStamina
		CombatActive = false
		delCaster()
		delBowCam()
	end
end

function onFirstStartCombat()
	-- Before fight you want make a stress data on player? Insert here. But i advice first setup all the script correctly before doind this roleplay stuff!
end

function canFightCheck()
	if GetResourceState('striano_rapidactions') ~= 'started' then
        return true
    end
	local goon = true
	-- PLEASE INSERT HERE ALL THE CHECK ABOUT YOUR PROJECT, WHEN THE PLAYER CAN'T FIGHT? INSERT HERE
	if exports.striano_editor:devanimopen() then -- Here i check if the player dont have any admin menu open from my project!
		goon = false -- CANT FIGHT!
	end
	
	return goon
end

function FixStealth()
    if GetResourceState('striano_editor') ~= 'started' then
        return
    end
    local result = exports.striano_editor:stealth()
    if result then
        SetPedStealthMovement(PlayerPedId(), false, "DEFAULT_ACTION")
    end
end

function canScav()
    if GetResourceState('striano_core') ~= 'started' then return true end
    local tutorial = exports.striano_core:gettutorial()
    return tutorial and true or false
end

function FixCrouch()
	if GetResourceState('striano_editor') ~= 'started' then SetPedStealthMovement(PlayerPedId(), false, "DEFAULT_ACTION") return true end
	if exports.striano_editor:crouchato() then ExecuteCommand("fixcrouch") end -- YOU DONT HAVE IT? DELETE THIS STRING!
	exports.text_guide:ClearGuideText() exports.text_guide:GuidaVisibileNV() -- REMOVE IF YOU DONT HAVE!
end

function CopyDataFight(finalData)
	ExecuteCommand("copia ".. finalData) -- Comment out if you dont have this command at moment!
end

function AddBlood()
	-- If you dont have striano_blood please comment this out, this is a resource that maybe its not yet available for everyone on store!
	ExecuteCommand("addsangue")
end

function DebugCopy(data)
	print("Executed fight moveset: " .. data) CopyDataFight(data) -- Just comment if you dont need, i use it for debug!
end

function FeritoCombat()	
	local ped = PlayerPedId()
	if IsPedRagdoll(ped) or IsPedFatallyInjured(ped) or IsPedGettingUp(ped) --[[ or IsEntityInWater(ped) ]] then return true else return false end
end

function CaricaListaTastiMosse()
	-- IF YOU HAVE AN UI TO EXPLAIN KEYS TO CREATE A NEW MOVESET INSERT HERE!
	-- exports["text_guide"]:ClearGuideText() Wait(50)
	-- if GLG() == 1 then
		-- local datastextG = { ["SCORRI MOSSE"] = {"➞"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["PROVA LA MOSSA"] = {"H"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["GESTISCI MOSSA"] = {"G"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["GESTISCI SET"] = {"G"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["CHIUDI TUTTO"] = {"X"} } exports["text_guide"]:AddGuideText(datastextG)
	-- else
		-- local datastextG = { ["SCROLL MOVES"] = {"➞"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["TRY MOVE"] = {"H"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["MANAGE MOVE"] = {"G"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["MANAGE SET"] = {"G"} } exports["text_guide"]:AddGuideText(datastextG)
		-- datastextG = { ["CLOSE ALL"] = {"X"} } exports["text_guide"]:AddGuideText(datastextG)
	-- end
	-- exports.text_guide:GuidaVisibileNV()
end

function PossoAttaccare() -- sono OR
	if UltimaMossa > 0 then
		local uID = UltimaMossa
		if IsEntityPlayingAnim(PlayerPedId(), AnimFightList[uID].a, AnimFightList[uID].b, 3) then return false end
	end
	if IsNuiFocusKeepingInput() or IsNuiFocused() or IsEntityPlayingAnim(PlayerPedId(), "wing_chun@anim","down_2", 3) or IsEntityPlayingAnim(PlayerPedId(), "mp_am_hold_up", "cower_loop", 3) then 
		return false
	else 
		return true 
	end
end

function splatterSound()
	shareSound("sounds/striano_combat/magic/wolf_sound2", 0.12, PlayerPedId(), 7.0)
end

function arrowSound(p)
	if myArrow > 0 and myBow > 0 then
		shareSound(ArrowList[myArrow].soundHit, 0.10, PlayerPedId(), 7.0)
	end
end

-- WORK IN PROGRESS! DO NOT TOUCH!
FinisherList = {
	{ a="finishers_part_three@anim",b="finisher_14_atc",c="finisher_14_vic", astopat=0.7031, bstopat=0.6031, ff=function() playerGetHit() end }, -- Suplex
	{ a="finishers_part_three@anim",b="finisher_13_atc",c="finisher_13_vic", astopat=0.7031, bstopat=0.5531, ff=function() playerGetHit() end }, -- DDT
	{ a="hand_to_hand_finishers_p2",b="atc_finisher_9",c="vic_finisher_9", astopat=0.7904, bstopat=0.5904, ff=function() playerGetHit() end }, -- Powerbomb	
}

myVoiceGruntId = 1 -- max voice ID in xsound is male_9! (Sorry at moment there are different voice only for male, female have only a single set with 18 audio fight!)
function genGrunt()
	local vol = volumeGlobal
	if v ~= nil then vol = v end
	local ped = PlayerPedId()
	if gruntSound and IsPedHuman(ped) then
		-- CUSTOM SOUND FOR CREATURES? YOU CAN ADD MORE!
		if ImACreaturePed(ped) then			
			local id = math.random(1,6)
			local ped = PlayerPedId()
			shareSound("sounds/striano_wolf/wolf_"..id, vol*2, ped, 15.0)
		-- CONTINUE AS HUMAN
		else
			if GetEntityModel(ped) == `mp_m_freemode_01` then -- MAN
				local id = math.random(1,30)
				if myVoiceGruntId == 1 then
					shareSound("sounds/striano_combat/grunt/male/audio_"..id, vol, ped, 7.0)
				else
					-- For these sounds please remember to update the new folder XSOUND SETUP provided in main folder of striano_combat!
					if myVoiceGruntId == 2 or myVoiceGruntId == 3 then 
						id = math.random(1,10)
					elseif myVoiceGruntId == 4 then 
						id = math.random(1,15)
						vol = volumeGlobal * 3
					elseif myVoiceGruntId == 5 then 
						id = math.random(1,8)
						vol = volumeGlobal * 3
					elseif myVoiceGruntId == 6 then 
						id = math.random(1,7)
						vol = volumeGlobal * 2
					elseif myVoiceGruntId == 7 then 
						id = math.random(1,5)
						vol = volumeGlobal * 3
					elseif myVoiceGruntId == 8 then 
						id = math.random(1,6)
						vol = volumeGlobal * 2
					elseif myVoiceGruntId == 9 then 
						id = math.random(1,8)
						vol = volumeGlobal * 3
					elseif myVoiceGruntId == 10 then 
						id = math.random(1,6)
						vol = volumeGlobal * 2
					end
					shareSound("sounds/striano_combat/grunt/male_"..myVoiceGruntId.."/audio_"..id, vol, ped, 7.0)
				end
			else
				local id = math.random(1,18)
				shareSound("sounds/striano_combat/grunt/female/audio_"..id, vol, ped, 7.0)
			end
		end
	end
end
function genGrunt2(ene, voice) -- enemy
	local vol = 0.03
	if not ImACreaturePed(ene) and not ImAMonster(ene) then 	
		if voice == 1 then
			shareSound("sounds/striano_combat/misc/enemy_grunt_1/audio_"..math.random(1,6), vol, ene, 7.0) 
		else
			shareSound("sounds/striano_combat/misc/enemy_grunt_2/audio_"..math.random(1,5), vol, ene, 7.0) 
		end	
	else
		if GetResourceState('striano_combat') == 'started' then 
			local id = math.random(1,6)
			local ped = PlayerPedId()
			shareSound("sounds/striano_wolf/wolf_"..id, vol*2, ene, 15.0)
		else
			local id = math.random(1,30)
			shareSound("sounds/striano_combat/grunt/male/audio_"..id, vol, ene, 7.0)
		end
	end
end
function genGruntMonster(ene) -- enemy
	local vol = 0.05
	local m = GetEntityModel(ene)
	if m == GetHashKey("cs_orleans") then
		shareSound("sounds/striano_combat/monster_2/audio_"..math.random(1,6), vol, ene, 7.0) -- shareSound("sounds/striano_combat/monster_1/audio_"..math.random(1,6), vol, ene, 7.0)  
	end
end

function genSwordWosh()
	genGrunt()
	local id = math.random(1,18)
	shareSound("sounds/striano_combat/sword/colpi_a_vuoto/audio_"..id, volumeGlobal, PlayerPedId(), 7.0)
end
function genSwordWosh2(ene, voice)
	if not ImASkeleton(ene) then genGrunt2(ene, voice) end
	local id = math.random(1,18)
	shareSound("sounds/striano_combat/sword/colpi_a_vuoto/audio_"..id, volumeGlobal, ene, 7.0)
end
function genSwordHit()
	local id = math.random(1,7)
	shareSound("sounds/striano_combat/sword/colpi_a_segno/audio_"..id, volumeGlobal, PlayerPedId(), 3.0)
end
function genSwordParry()
	local ped = PlayerPedId()
	local id = math.random(1,10)
	shareSound("sounds/striano_combat/sword/colpi_parry/audio_"..id, volumeGlobal, ped, 7.0)
	PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", GetEntityCoords(ped), 0.3, 0.9)
end

function genSwordSpecial()
	local id = math.random(1,4)
	shareSound("sounds/striano_combat/sword/colpi_special/audio_"..id, volumeGlobal, PlayerPedId(), 7.0)
end

function holsterSound()
	local id = 1
	shareSound("sounds/striano_combat/sword/estrai_e_posa/audio_"..id, volumeGlobal, PlayerPedId(), 7.0)
end
function unholsterSound()
	local id = 2
	shareSound("sounds/striano_combat/sword/estrai_e_posa/audio_"..id, volumeGlobal, PlayerPedId(), 7.0)
end

function genPunchWosh()
	genGrunt()
	if GetEntityModel(PlayerPedId()) == GetHashKey("WereWolf_Baruk_Kiml") then
		genSwordWosh()
	else
		local id = math.random(1,18)
		shareSound("sounds/striano_combat/punch/colpi_vuoto/audio_"..id, 0.02, PlayerPedId(), 7.0)
	end
end
function genPunchWosh2(ene)
	if DoesEntityExist(ene) then
		if not ImASkeleton(ene) then 
			if ImAMonster(ene) then
				genGruntMonster(ene)
			else
				genGrunt2(ene)
			end
		end
		local id = math.random(1,18)
		shareSound("sounds/striano_combat/punch/colpi_vuoto/audio_"..id, 0.02, ene, 7.0)
	end
end
function genPunchHit()
	if GetEntityModel(PlayerPedId()) == GetHashKey("WereWolf_Baruk_Kiml") then
		genSwordHit()
	else
		local id = math.random(1,7)
		shareSound("sounds/striano_combat/punch/colpi_segno/audio_"..id, 0.02, PlayerPedId(), 7.0)
	end
end
function genPunchHit2(ene)
	if DoesEntityExist(ene) then
		local id = math.random(1,7)
		shareSound("sounds/striano_combat/punch/colpi_segno/audio_"..id, 0.02, ene, 7.0)
	end
end

filmBands = true -- put false if you dont want Black Bands on bottom and on top of screen while finisher or special move is performed.
function hideHudFunc()
	-- ExecuteCommand("clearwaypoints") ExecuteCommand("hudoff") ExecuteCommand("hudoff2") exports.striano_core:setwatermark(false) -- COMMENT THIS STRING CAUSE THIS IS FROM MY SERVER TEST AND MAYBE I FORGOT TO COMMENT!
	-- Here if you want you can insert the Hide HUD of your project function to hide Logo or anything you need when a finisher is performed with film bands.
end
function showHudFunc()
	-- ExecuteCommand("hudon") ExecuteCommand("hudon2") exports.striano_core:setwatermark(true) -- COMMENT THIS STRING CAUSE THIS IS FROM MY SERVER TEST AND MAYBE I FORGOT TO COMMENT!
	-- Here insert the function to show again the HUD you want from your project!
end

function mex_NewStyleCreated(nameCombat)
	if not IsEntityPositionFrozen(PlayerPedId()) then
		strianoSub("Style " .. nameCombat .. " created and assigned", true)
	end
end

-- TRANSLATE IF YOU NEED! -- BUT DO NOT CHANGE NUMBERS OR VARIABLES!
function draw_DelConfirmBefore(indexCombat) 
	strianoSub("Press a key WAD & SHIFT + WAD to assign move ID: " .. indexCombat)
end
function draw_DelConfirm() 
	draw(194,"Delete move", 74, "Confirm style combat", 73,"Back") 
end
function draw_ManageMove(indexCombat, tabella)
	if tabella[indexCombat].realid == nil then 
		draw(47,"Manage", 73,"Close", 175,"", 174, "", 74, "Play [" .. indexCombat .. "/".. #tabella.."] ")
	else
		draw(47,"Manage", 73,"Close", 175,"", 174, "", 74, "Play [" .. indexCombat .. "/".. #tabella.."] (" .. tabella[indexCombat].realid .. ") ")
	end
end
function draw_Close() 
	draw(25,"Close", 14,"", 15,"", 24,"Select")
end

function CreateScav(coords, forceSpawn, modelName, lifeSet, swordID)
	if not canScav() then return end
	local choosenPed = modelName or "g_m_m_korboss_01" -- Change with the enemy you like! You can duplicate and create new functions with different enemys!
	local stamina = 100 -- WIP!
	local missionID = 0 -- WIP!
	local level = 1 -- WIP!
	
	local coordZomb = coords or nil
	-- Nuovo calcolo per evitare di spawnare gli zombie in posti strani?
	local ped = PlayerPedId()
	local playercoords = GetEntityCoords(ped)
	if coordZomb == nil then
		if not ZonaNatura() then
			x, y, z = table.unpack(playercoords)
			local m = -15 -- era -50
			local mm = 15 -- era 50
			newX = x + math.random(m, mm)
			newY = y + math.random(m , mm)
			local newZ = GetGroundZUltra(newX+.0,newY+.0,z+999.0)
			local ret, coordsTemp, heading = GetClosestVehicleNodeWithHeading(newX, newY, newZ, 1, 3.0, 0)
			if ret then 
				local retval, coordsSide = GetPointOnRoadSide(coordsTemp.x, coordsTemp.y, coordsTemp.z)
				if retval then
					if #(GetEntityCoords(ped)-coordsSide) <= 15.0 then 
						coordZomb = coordsSide
					else
						coordZomb = nil
					end
				end
			end
			-- print("Trovato qualcosa fuori zona natura")
		else
			-- print("Zona natura, quindi spawno il ped un po dove mi pare.")
			if #(GetEntityCoords(ped)-coordZomb) < 15.0 then 
				coordZomb = vector3(newX, newY, newZ)
			else
				coordZomb = nil
			end
		end
	end
	
	if coordZomb == nil and forceSpawn then 
		local pos = GetEntityCoords(ped)
		local forward   = GetEntityForwardVector(ped)
		local x, y, z   = table.unpack(pos + forward * 3.5)
		coordZomb = vector3(x,y,z)
	end

	if coordZomb ~= nil and #(coordZomb-vector3(0.0,0.0,0.0)) > 10.0 then -- and GetNameOfZone(coordZomb) ~= "ISHEIST" 
		if #(GetEntityCoords(ped)-coordZomb) > 2.5 then 
			local newCCC = SottoSonoLibero(coordZomb)
			if newCCC then coordZomb = newCCC end
			
			local pos = coordZomb
			local head = h
			local fastEnemy = false
			local vita = lifeSet or 200
			local sfidante = 1
			local ArmaID = swordID or math.random(1,#SwordList)
			local setcombat = {}
			local Style = FightWStyle[SwordList[ArmaID].st]
			
			local tabAnim = Style.WithShift.CombatW for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithShift.CombatA for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithShift.CombatD for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatW for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatA for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatD for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			
			print("Scav created with style ID assigned: " .. #setcombat)
			
			local renemy = CreateNemico(choosenPed, pos, setcombat, level, stamina, fastEnemy, vita, missionID, sfidante, 0.0, true, nil, ArmaID)
			MakePedAngry(renemy)
			return renemy	
		end
	end
	
	return nil
end	

-- OPTIONAL NOT RECCOMENDED!
function TutorialDraw()
	-- TUTORIAL COMBAT SYSTEM (Disabled it to optimise, but you like you can uncomment!)
	-- Anyway it's better you learn fight your players with my tutorial on https://strianodev.com/
	--[[
	if not IsPedRagdoll(ped) and not IsEntityAttached(ped) and not Citizen.InvokeNative(0x921CE12C489C4C41, ped) then 					
		if not IsDisabledControlPressed(0, 24) and not editorcombatopen then
			if not IsDisabledControlPressed(0, 22) then					
				local Style = getStyleCombat()
				if Style and Style.LockRoll == nil then 
					if Sfoggiate and mySword > 0 then
						if mySword > 0 and SwordObj then										
							-- if GLG() == 1 then draw(22,"Dash", 45,"Fodera", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
							draw(22,"Dash", 45,"Fold", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
						else
							-- if GLG() == 1 then draw(22,"Dash", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
							draw(22,"Dash", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
						end
					else
						if FightPed ~= nil then 
							local Dist = 0.5
							local pos = GetEntityCoords(FightPed)
							local forward   = GetEntityForwardVector(FightPed)
							local x, y, z   = table.unpack(pos + forward * Dist * -1)
							if MarkerOn then DrawMarker(28, x, y, z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Dist, Dist, Dist, 255, 0, 0, 50, false, true, 2, nil, nil, false) end
							if #(GetEntityCoords(ped) - vector3(x,y,z)) < 0.5 and GetEntitySpeed(FightPed) <= 1.0 then
								-- if GLG() == 1 then draw(22,"Dash", 23,"Spezza Collo", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
								draw(22,"Dash", 23,"Break Neck", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end 
							else
								if mySword > 0 and SwordObj then
									-- if GLG() == 1 then draw(22,"Dash", 45,"Sfodera", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
									draw(22,"Dash", 45,"Fold", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
								else
									-- if GLG() == 1 then draw(22,"Dash", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
									draw(22,"Dash", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
								end
							end
						else
							if mySword > 0 and SwordObj then
								-- if GLG() == 1 then draw(22,"Dash", 44,"IF", 45,"Sfodera", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
								draw(22,"Dash", 44,"IF", 45,"Fold", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
							else
								-- if GLG() == 1 then draw(22,"Dash", 44,"IF", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
								draw(22,"Dash", 44,"IF", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
							end
						end
					end
				else
					-- if GLG() == 1 then draw(24, "Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
					draw(24, "Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
				end
			else
				-- if GLG() == 1 then draw(32,"",33,"",34,"",35,"", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
				draw(32,"",33,"",34,"",35,"", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
			end
		else
			if not editorcombatopen then 
				if not IsDisabledControlPressed(0, 22) then
					if IsDisabledControlPressed(0, 21) then -- SHIFT 
						-- if GLG() == 1 then draw(32,"Combo",34,"",35,"", 24,"Lotta " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
						draw(32,"Combo",34,"",35,"", 24,"Fight " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
					else 									
						local Style = getStyleCombat()
						if Style.LockRoll == nil then 
							-- if GLG() == 1 then draw(33,"Parry", 22,"Dash", 21,"Combo",   32,"Lotta",34,"",35,"", 24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
							draw(33,"Parry", 22,"Dash", 21,"Combo",   32,"Fight",34,"",35,"",   24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
						else
							-- if GLG() == 1 then draw(33,"Parry", 21,"Combo",   32,"Lotta",34,"",35,"", 24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
							draw(33,"Parry", 21,"Combo",   32,"Fight",34,"",35,"",   24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
						end
					end
				else
					local Style = getStyleCombat()
					if Style.LockRoll == nil then 
						-- if GLG() == 1 then draw(32,"Dash",33,"",34,"",35,"",    32,"Lotta",34,"",35,"", 24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
						draw(32,"Dash",33,"",34,"",35,"",    32,"Fight",34,"",35,"",    24,"Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
					else
						-- if GLG() == 1 then draw(    32,"Lotta",34,"",35,"", 24, "Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) else 
						draw(    32,"Fight",34,"",35,"", 24, "Stamina " .. math.floor(FiatoneCapriola) .. "/"..maxStamina) -- end
					end
				end
			end
		end
	end 
	]]
end

function ResetMyHealth(ped)
	-- change with your health system that fix your hud and health for new ped!
	if GetResourceState('striano_core') == 'started' then
		exports['striano_editor']:updateMaxHealth(500)
		SetPedMaxHealth(ped, 500)
		TriggerEvent("esx_ambulancejjj:healAdminNoAnim")
	end
end

function Draw3DText(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local scale = (1 / #(vec3(px,py,pz) - vec3(x,y,z))) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255,0,0,215)
        SetTextCentre(1)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(_x,_y)
    end
end

function ResetPlayerPed()
	if GetResourceState('illenium-appearance') == 'started' then
		TriggerEvent("illenium-appearance:client:reloadSkin", true)
		-- IF YOU NEED SERVER SIDE: TriggerClientEvent("illenium-appearance:client:reloadSkin", targetId, true)
	elseif GetResourceState('skinchanger') == 'started' then
		if sexWas == GetHashKey("mp_m_freemode_01") then
			TriggerEvent('skinchanger:loadDefaultModel', true) -- MAN
		else
			TriggerEvent('skinchanger:loadDefaultModel', false) -- FEMALE
		end
	else
		print("Please configure your ResetPlayerPed() function in ^5combat_editable.lua^7 (function name: ^5ResetPlayerPed()^7)")
	end
	FoderaArmi()
end

--[[
-- FOR ILLENIUM APPARENCE -- https://github.com/iLLeniumStudios/illenium-appearance
function ResetPlayerPed()
	print("HELLO THIS IS MERCURIO SERVEEEEEEEEEEEER!!!")
	TriggerEvent("illenium-appearance:client:reloadSkin", true)
	FoderaArmi()
end
]]

local function BuildEasyStyle(style)
    return {
        Name = style.Name,
        Block = style.Block,
        Idle = style.Idle,
        hitSound = style.hitSound,
        NormalHit = FirstHits(style.WithoutShift),
        HeavyHit = FirstHits(style.WithShift)
    }
end

function ConfermaStileCombattimento() -- CONFIRM COMBAT STYLE!
	local giocatore = PlayerPedId()
	local tabellaFinale = {}
	if myTabMove then  
		for k=1, #myMoves, 1 do
			local id = myMoves[k]
			tabellaFinale[k] = AnimFightList[id]
			tabellaFinale[k].realid = id
			-- print("maxhit: " .. myMoves[k].maxhit) -- funziona
		end
	else
		tabellaFinale = AnimFightList
	end
	goon = true
	stoCreandoStile = false
	ClearPedTasks(giocatore)
	ClearPedSecondaryTask(giocatore)
	ecc()
	local txtCombat = "Combat Style Name." -- Combat Name Combat
	-- if GLG() == 2 then txtCombat = "Combat Style Name." end
	local nameCombat = OpenInput(txtCombat)
	if #nameCombat < 24 and #nameCombat > 0 then 			
		if #tnsa>0 and  #tnsd>0 and #tnsw>0 and #tsa>0 and #tsd>0 and #tsw>0 then
			-- exports["text_guide"]:ClearGuideText() -- IF YOU DONT HAVE THIS DELETE THIS LINE!		
			myWStyle = #FightWStyle+1 
			-- print("myWStyle " .. myWStyle)
			FightWStyle[myWStyle] = {
				Name=nameCombat, Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = myLastIdle or 4,
				WithoutShift = { CombatA = tnsa, CombatD = tnsd, CombatW = tnsw },
				WithShift = { CombatA = tsa, CombatD = tsd, CombatW = tsw }, dmg=DefaultNewStyleDmg
			} 			
			table.insert(myCombatList, FightWStyle[myWStyle]) 
			Wait(1)
			TriggerServerEvent("updatePlayerInfo", mySword, myShield, myCombatList, myWStyle, myBow) Wait(0) -- PL, Sword, Shield, List, Style
			
			local finalData = {	tnsa, tnsd, tnsw, tsa, tsd, tsw }
			finalData = json.encode(finalData)
			CopyDataFight(finalData)
			closeall = true
			myLastIdle = 0
			PlaySoundFrontend(-1,'ROUND_ENDING_STINGER_CUSTOM','CELEBRATION_SOUNDSET',0)
			ClearPedTasks(PlayerPedId())
			mex_NewStyleCreated(nameCombat)
			EasyCombatStyle[myWStyle] = BuildEasyStyle(FightWStyle[myWStyle]) -- Aggiungo anche all'EasyCombat mode!
		else
			-- if GLG() == 1 then strianoSub("Set mancanti, creazione annullata.", true)
			--else 
				strianoSub("Uncompleted set, failed creation.", true) 
			-- end
			goon = true
		end
	else
		-- if GLG() == 1 then strianoSub("Non hai assegnato un nome valido al set.", true)
		-- else 
			strianoSub("Was not a valid name for fight style.", true) 
		-- end
		goon = true
	end
end

imDEAD = false
CreateThread(function() -- onPlayerDeath
	while true do -- CONTROLLO MORTE!
		local ped = PlayerPedId()
		if IsPedFatallyInjured(ped) or IsPedDeadOrDying(ped) then
			if IsPedHuman(ped) then 	
				if not imDEAD then 
					imDEAD = true 
					OnPlayerDie(ped) -- When player die what happends? Change here if you need!
					Wait(1000)
				end
			end
		else
			if imDEAD then
				imDEAD = false
				-- MioNemico = {}
				-- IF YOU WANT YOU CAN ADD SOMETHING HERE, WHEN A PLAYER WAS DEAD AND COMEBACK ALIVE!
				-- local coords = GetEntityCoords(ped)
				-- local head = GetEntityHeading(ped)
				-- Wait(0)
				-- NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, head, true, false)
				-- Wait(2000)
			end
		end
		Wait(1000)
	end
end)

function OnPlayerDie(ped)
	ecc()
	ClearPedTasks(ped)
	ClearPedSecondaryTask(ped)
	stopCurrentMagicFX()
	FoderaArmi()
	HoRollato = false
	if FightPed ~= nil then FightPed = nil end
	if indexTarget > 0 then indexTarget = 0 end
	PossoCapriola = true
	FiatoneCapriola = maxStamina
	CombatActive = false
	delCaster()
	delBowCam()
	TriggerServerEvent("disableInvis", GetPlayerServerId(PlayerId())) -- This will disable invisibility Spell if active!
end

function RequestModelStriano(model)
	if model == nil then 
		print('COMBAT MODEL INSERT IS NIL!') 
		return 
	end
	local hash = (type(model) == 'number') and model or GetHashKey(model)
    if not IsModelInCdimage(hash) or not IsModelValid(hash) then print('COMBAT MODEL NOT EXIST ', model) return end
    RequestModel(hash)
    local deadline = GetGameTimer() + 5000 -- 5s timeout
    while not HasModelLoaded(hash) do Wait(0) if GetGameTimer() > deadline then print('THIS COMBAT MODEL NOT EXIST (time out)', hash) return end end 
end

function canCastSpell(ped)
    local anim = IsEntityPlayingAnim(ped, "magic@motions_left_hand_beam_struggle", "magic@motions_left_hand_beam_struggle_clip", 3)
	local onBoat = exports.striano_boat:getMyBoat() ~= nil and IsEntityAttached(ped)
	if onBoat then return false end
	if exports.striano_inventory:isopen() then return false end
	if exports.striano_editor:stoposizionando() or exports.striano_editor:editorattivo() then return false end
	if exports.striano_editor:eInteractPos() ~= nil then return false end
    if not anim and not exports.striano_core:notutorial() then -- if t and a and not anim then
        return true
    else
		-- print("Nope castSpell!")
        return false
    end
end

DEFAULT_RADIUS  = 8.0    
DEFAULT_AMOUNT  = 10     
DEFAULT_TICKS   = 5       
DEFAULT_INTERVAL= 500
function CastHealArea(radius, amount, ticks, interval, pos, revive)
    radius   = radius   or DEFAULT_RADIUS
    amount   = amount   or DEFAULT_AMOUNT
    ticks    = ticks    or DEFAULT_TICKS
    interval = interval or DEFAULT_INTERVAL
	revive = revive or false
	
    TriggerServerEvent('my_spells:healArea:server', {
        x = pos.x, y = pos.y, z = pos.z,
        radius = radius,
        amount = amount,
        ticks = ticks,
        interval = interval,
		revive = revive,
    })
end

-- THIS EVENT IS TO HEAL PLAYER WITH SPELLCAST!
RegisterNetEvent('my_spells:healArea:apply', function(amount, ticks, interval, revive)
	amount = amount or 5
    local ped = PlayerPedId()
    if not DoesEntityExist(ped) then return end
    ticks = ticks or 1
    interval = interval or 0	
	if IsPedFatallyInjured(ped) then
		if revive ~= nil then
			TriggerServerEvent('esx_ambulancejjj:revive', GetPlayerFromServerId(PlayerId())) -- REPLACE WITH YOUR FUNCTION OF REVIVE!
		end
	end
	TriggerServerEvent("PlayEffectEnt", { a="scr_rcbarry1",b="scr_alien_teleport", ent=PedToNet(ped), s=0.9 } )
	shareSound("sounds/striano_combat/magic/spells/spell_14", 0.1, ped, 1.0)
    for i = 1, ticks do
        if not DoesEntityExist(ped) then return end
        local vitapg = GetEntityHealth(ped)
        if vitapg <= 0 then return end
		local vitafinale = vitapg + amount
		SetEntityHealth(ped, vitafinale)
        if i < ticks and interval > 0 then Wait(interval) end
    end
end)

function shareSoundPos(path, volume, pos, radius) -- path, volume, pos, radius | path: sounds/striano_wolf/wolf" 
	if pos == nil then pos = GetEntityCoords(PlayerPedId()) end
	if volume == nil then volume = 0.9 end
	volume = GetSFXVolume(volume)
	if radius == nil then radius = 25.0 end
	local link = path..".mp3" 
	-- print("Sound: " .. link)
	TriggerServerEvent('strianoSoundPos', {
		id     = path,
		url    = link,
		pos    = pos,
		volume = volume,
		radius = radius,
		loop   = false
	})
end

function soundZone()
	CreateThread(function()
		exports.xsound:PlayUrl("sounds/magicstart", "sounds/magicstart.mp3", GetSFXVolume(0.1))
	end)
end

local function ensureNetId(ent, timeoutMs)
    timeoutMs = timeoutMs or MSDELAYSOUND
    local waited = 0
    if not DoesEntityExist(ent) then return nil end

    if not NetworkGetEntityIsNetworked(ent) then
        -- Prova a networkare (non funziona sul ped del player, ma non serve: i ped player sono già networked)
        NetworkRegisterEntityAsNetworked(ent)
    end

    local netId = NetworkGetNetworkIdFromEntity(ent)
    while (not netId or netId == 0) and waited < timeoutMs do
        Wait(50); waited = waited + 50
        if not DoesEntityExist(ent) then return nil end
        if not NetworkGetEntityIsNetworked(ent) then
            NetworkRegisterEntityAsNetworked(ent)
        end
        netId = NetworkGetNetworkIdFromEntity(ent)
    end
    return (netId ~= 0) and netId or nil
end

function shareSound(path, volume, ent, radius) -- path, volume, pos, radius | path: sounds/striano_wolf/wolf" 
	if ent == nil then ent = PlayerPedId() end
	if volume == nil then volume = 0.9 end
	if radius == nil then radius = 25.0 end
	local link = path..".mp3" 
	-- print("Sound: " .. link)
	local targetEnt = ent or PlayerPedId()
    local netId = ensureNetId(targetEnt)
	TriggerServerEvent('strianoSound', {
		id     = path,
		url    = link,
		ent    = netId,
		volume = volume,
		radius = radius,
		loop   = false
	})
end

RegisterNetEvent('wolfsound:clientPlayPos', function(d)
	if GetResourceState('xsound') ~= 'started' then return end
	if not d or not d.url or not d.pos then return end
	local id  = d.id or ('Wolf_snd_'..GetGameTimer())
	local pos = vector3(d.pos.x+0.0, d.pos.y+0.0, d.pos.z+0.0)
	exports.xsound:PlayUrlPos(id, d.url, GetSFXVolume(d.volume) or 0.4, pos, d.loop == true)
	if exports.xsound.Distance then
		exports.xsound:Distance(id, d.radius or 40.0)
	end
	if exports.xsound.setVolume then
		exports.xsound:setVolume(id, d.volume or 0.4)
	elseif exports.xsound.setVolumeMax then
		exports.xsound:setVolumeMax(id, d.volume or 0.4)
	end
	if exports.xsound.setSoundDynamic then
		exports.xsound:setSoundDynamic(id, true)
	end
end)

-- registro (solo fixed pos)
local __snd_fixed = __snd_fixed or {}

local function validFn(name)
    return type(exports.xsound and exports.xsound[name]) == "function"
end

RegisterNetEvent('strianoSoundPos', function(d)
    if GetResourceState('xsound') ~= 'started' then return end
    if not d or not d.url or not d.pos then return end

    __snd_fixed = __snd_fixed or {}

    -- ID base sempre dal timer (consente duplicati nello stesso frame con suffisso)
    local baseId = 'snd_' .. GetGameTimer()
    local id = d.id or baseId
    if validFn and validFn("soundExists") and exports.xsound:soundExists(id) then
        -- se l'ID è già in uso, crea un nuovo ID con suffisso (niente destroy!)
        id = ("%s_%05d_%03d"):format(baseId, (GetGameTimer() % 100000), math.random(0,999))
    end

    local pos = vector3(d.pos.x+0.0, d.pos.y+0.0, d.pos.z+0.0)

    local ok = pcall(function()
        exports.xsound:PlayUrlPos(id, d.url, GetSFXVolume(d.volume) or GetSFXVolume(0.4), pos, d.loop == true)
    end)
    if not ok then return end

    if not validFn or validFn("Distance") then pcall(function() exports.xsound:Distance(id, d.radius or 40.0) end) end

    if not validFn or validFn("setVolume") then
        pcall(function() exports.xsound:setVolume(id, d.volume or 0.4) end)
    elseif not validFn or validFn("setVolumeMax") then
        pcall(function() exports.xsound:setVolumeMax(id, d.volume or 0.4) end)
    end

    if not validFn or validFn("setSoundDynamic") then
        pcall(function() exports.xsound:setSoundDynamic(id, true) end)
    end

    __snd_fixed[id] = true

    -- se non è loop, autodistruggi dopo TTL (con fade)
    if d.loop ~= true then
        local ttl = tonumber(d.durationMs) or (rawget(_G, 'MSDELAYSOUND') or 5000)
        CreateThread(function()
            Wait(ttl)
            pcall(function()
                if (not validFn or validFn("soundExists")) and exports.xsound:soundExists(id) then
                    if exports.xsound.fadeOut then
                        exports.xsound:fadeOut(id, 1000)
                    else
                        FadeOutAndDestroy(id, 1000) -- o exports.xsound:Destroy(id)
                    end
                end
            end)
            __snd_fixed[id] = nil
        end)
    end
end)

function FadeOutAndDestroy(id, duration)
    if not exports.xsound or GetResourceState('xsound') ~= 'started' then return end
    if not id or id == '' then return end
    if not (exports.xsound.soundExists and exports.xsound:soundExists(id)) then return end
    if type(exports.xsound.fadeOut) ~= "function" then
        -- print(('[FadeOutAndDestroy] xsound non supporta fadeOut(), fallback su Destroy per %s'):format(id))
        exports.xsound:Destroy(id)
        return
    end
    duration = duration or 1000 -- durata in ms
    pcall(function()
        exports.xsound:fadeOut(id, duration)
    end)
end

__snd_threads = {}
RegisterNetEvent('strianoSound', function(d)
    if GetResourceState('xsound') ~= 'started' then return end
    if not d or not d.url or not d.ent then return end

    __snd_threads = __snd_threads or {}

    local netEnt = NetToEnt(d.ent)
    if not netEnt or not DoesEntityExist(netEnt) then return end

    -- ID base (se d.id è fisso e già occupato, creo un suffisso)
    local baseId = 'snd_' .. GetGameTimer() -- local baseId = d.id or ('snd_' .. GetGameTimer())
    local id = baseId
    if exports.xsound:soundExists(id) then
        id = ("%s_%05d"):format(baseId, (GetGameTimer() % 100000))
        -- in casi estremi, garantisci unicità anche con random
        if exports.xsound:soundExists(id) then
            id = ("%s_%05d_%03d"):format(baseId, (GetGameTimer() % 100000), math.random(0,999))
        end
    end

    -- NON bloccare i duplicati: niente early-return su __snd_threads[id]
    __snd_threads[id] = true

    local pos = GetEntityCoords(netEnt)
    exports.xsound:PlayUrlPos(id, d.url, GetSFXVolume(d.volume) or GetSFXVolume(0.4), pos, d.loop == true)

    if exports.xsound.Distance then
        exports.xsound:Distance(id, d.radius or 40.0)
    end
    if type(exports.xsound.setVolume) == "function" then
        exports.xsound:setVolume(id, d.volume or 0.4)
    elseif type(exports.xsound.setVolumeMax) == "function" then
        exports.xsound:setVolumeMax(id, d.volume or 0.4)
    end
    if type(exports.xsound.setSoundDynamic) == "function" then
        exports.xsound:setSoundDynamic(id, true)
    end

    CreateThread(function()
        local startedAt = GetGameTimer()
        local lifeMs = d.maxMs or (rawget(_G, 'MSDELAYSOUND') or 5000) -- fallback 5s se non loop

        while DoesEntityExist(netEnt) and exports.xsound:soundExists(id) do
            -- aggiorna posizione
            local ok = pcall(function()
                exports.xsound:Position(id, GetEntityCoords(netEnt))
            end)
            if not ok then break end

            -- se non è loop, termina dopo lifeMs
            if d.loop ~= true and (GetGameTimer() - startedAt) > lifeMs then
                break
            end
            Wait(300)
        end

        pcall(function()
            if exports.xsound:soundExists(id) then
                -- fade pulito
                if exports.xsound.fadeOut then
                    exports.xsound:fadeOut(id, 1000)
                else
                    FadeOutAndDestroy(id, 1000) -- se hai la helper; altrimenti Destroy(id)
                end
            end
        end)

        __snd_threads[id] = nil
    end)
end)

function fadeSpellSound()
	exports.xsound:fadeOut("spellcharge", 300)
end

function freezeSpellSound()
	shareSound("sounds/striano_combat/magic/spells/spell_9", 0.3, PlayerPedId(), 3.0)
end

RegisterNetEvent("combat:notify")
AddEventHandler("combat:notify", function(mex)
	exports.striano_combat:submex(mex)
end)
RegisterNetEvent("combat:notifyPrint")
AddEventHandler("combat:notifyPrint", function(mex)
	print(mex)
end)

-- PLEASE UPDATE THIS FUNCTION ABOUT MANA WITH YOUR HUD FUNCTIONS ABOUT MANA!
function DeleteMana(spellID)
	local spell=GetSpellById(spellID)
	if not spell then return end

	if myMana-spell.manaCost>0 and myMana>=myMana-spell.manaCost then
		myMana=myMana-spell.manaCost

		if GetResourceState('striano_editor')=='started' then
			-- print("DEBUG DELETE MANA | spellID:",spellID,"spell.id:",spell.id,"manaCost:",spell.manaCost)
			exports.striano_editor:delMana(spell.manaCost)
			TriggerEvent("striano_missions:updateMana",myMana)
		end
	end
end

function delManaSingle(val)
	myMana = myMana-val
	if GetResourceState('striano_editor') == 'started' then	
		exports.striano_editor:delMana(val)
		TriggerEvent("striano_missions:updateMana", myMana)
	end
end

RegisterNetEvent("rechargeMana")
AddEventHandler("rechargeMana", function()
	local ped = PlayerPedId()
	faiAnim("bowdown@upwards", "base", 2500, 49)
	local pos = GetEntityCoords(ped)
	TriggerServerEvent('strianoSoundPos', {
		id     = "sounds/striano_combat/magic/spells/spell_13.mp3",
		url    = "sounds/striano_combat/magic/spells/spell_13.mp3",
		pos    = pos,
		volume = 0.03,
		radius = 3.0,
		loop   = false
	})
	Wait(2500)
	myMana = exports.striano_editor:getMaxMana() or 100
	ecc()
	MaxManaFunc()
end)

lastTattooDetected = {}
function ApplyTattoo(ped, skin) -- HEY CHANGE WITH YOUR OWN SYSTEM ABOUT TATTOO DETECT TO MAKE CLONER SPELL WORKS!
	if GetResourceState('striano_editor') == 'started' then
		local tattooList = exports.striano_editor:getMyTattooList()
		if tattooList ~= nil then
			lastTattooDetected = tattooList
			ClearPedDecorations(ped)
			if type(tattooList) == "table" then
				for k, v in pairs(tattooList) do
					if v.collection ~= nil and v.nameHash ~= nil then 
						SetPedDecoration(ped, v.collection, v.nameHash)
					end
				end
			end
		end
	end
end

myInvisible = false
function setSelfInvisible(state)
    local ped = PlayerPedId()
    myInvisible = state  -- 👈 aggiorna il flag locale
    if state then
        SetEntityVisible(ped, true, false)
        SetEntityAlpha(ped, 100, false)
        SetPedConfigFlag(ped, 52, true)
		DeleteAllAttached()
    else
        ResetEntityAlpha(ped)
        SetPedConfigFlag(ped, 52, false)
        SetEntityVisible(ped, true, false)
		FoderaArmi()
    end
end

function ImACreaturePed(ped) -- Checkr for big creature! (Makes more damage and more blood)
	local m = GetEntityModel(ped)
	if m == GetHashKey("WereWolf_Baruk_Kiml") or m == GetHashKey("u_m_y_zombie_01") then -- continue with: or m == GetHashKey("ANOTHER_PED")
		return true
	else
		return false
	end
end
function ImASkeleton(ped) -- this is useful to disable voice and blood!
	local m = GetEntityModel(ped)
	if m == GetHashKey("Skeleton_Kiml") then -- continue with: or m == GetHashKey("ANOTHER_PED")
		return true
	else
		return false
	end
end
function ImAMonster(ped) -- this is useful to disable voice and blood!
	local m = GetEntityModel(ped)
	if m == GetHashKey("cs_orleans") then -- continue with: or m == GetHashKey("ANOTHER_PED")
		return true
	else
		return false
	end
end

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
		local ped = PlayerPedId()
		if SwordObj ~= nil and DoesEntityExist(SwordObj) then SetEntityAsMissionEntity(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
		if SwordObj2 ~= nil and DoesEntityExist(SwordObj2) then SetEntityAsMissionEntity(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
		if ShieldObj ~= nil then SetEntityAsMissionEntity(ShieldObj) DeleteEntity(ShieldObj) ShieldObj = nil end
		if BowObj ~= nil then SetEntityAsMissionEntity(BowObj) DeleteEntity(BowObj) BowObj = nil end
		if lastAROV ~= nil and DoesEntityExist(lastAROV) then SetEntityAsMissionEntity(lastAROV) DeleteEntity(lastAROV) lastAROV = nil end
		if debuggerClb ~= nil then SetEntityAsMissionEntity(debuggerClb) DeleteEntity(debuggerClb) debuggerClb = nil end
		if testPedEnemy ~= nil then SetEntityAsMissionEntity(testPedEnemy) DeleteEntity(testPedEnemy) testPedEnemy = nil end
		if objCava ~= nil then SetEntityAsMissionEntity(objCava) DeleteEntity(objCava) objCava = nil end
		if CurrentHelmet ~= nil then SetEntityAsMissionEntity(CurrentHelmet) DeleteEntity(CurrentHelmet) CurrentHelmet = nil end
		if wandObject ~= nil then 
			SetEntityAsMissionEntity(wandObject)
			DeleteEntity(wandObject)
		end
		DeleteAllTargets()
		
		for id in pairs(FollowEntities) do
			local inst = FollowEntities[id]
			SetEntityAsMissionEntity(inst.obj) DeleteEntity(inst.obj)
		end
		
		for k=1, #TrainingPed, 1 do 
			if DoesEntityExist(TrainingPed[k]) then
				SetEntityAsMissionEntity(TrainingPed[k]) 
				DeletePed(TrainingPed[k])
			end
		end
		if FightPed ~= nil then SetEntityAsMissionEntity(FightPed) DeletePed(FightPed) end
		for k=1, #MioNemico, 1 do
			if DoesEntityExist(MioNemico[k].p) then
				SetEntityAsMissionEntity(MioNemico[k].p, true)
				DeleteEntity(MioNemico[k].p)
			end
			if MioNemico[k].weapEnemy and DoesEntityExist(MioNemico[k].weapEnemy) then
				SetEntityAsMissionEntity(MioNemico[k].weapEnemy, true)
				DeleteEntity(MioNemico[k].weapEnemy)
			end
		end
		for k=1, #coltelli, 1 do 
			if DoesEntityExist(coltelli[k]) then 
				SetEntityAsMissionEntity(coltelli[k], true) DeleteEntity(coltelli[k]) 
			end
		end
		-- SOUNDS
		for id, _ in pairs(__snd_threads) do
			pcall(function()
				if exports.xsound and exports.xsound.soundExists and exports.xsound:soundExists(id) then
					FadeOutAndDestroy(id, 1000) -- exports.xsound:Destroy(id)
				end
			end)
			__snd_threads[id] = nil
		end
		-- SOUNDS FIXED
		for id, _ in pairs(__snd_fixed) do
			pcall(function()
				if validFn("soundExists") and exports.xsound:soundExists(id) then
					FadeOutAndDestroy(id, 1000) -- exports.xsound:Destroy(id)
				end
			end)
			__snd_fixed[id] = nil
		end
		for k, v in ipairs(dummyObj) do
			if DoesEntityExist(v.o) then
				SetEntityAsMissionEntity(v.o)
				DeleteEntity(v.o)
			end
		end
		resetAllEnemys() -- From Spawn Area!
	end
end)

function BarStamina(ped)
	if Combat_Bars then
		local x,y,z = table.unpack(GetPedBoneCoords(ped, 0))
		BarraHP(vector3(x,y,z-0.9), 15.0, FiatoneCapriola, maxStamina, nil, 0,210,210)
	end
end

function BarFinisher(ped)
	if Combat_Bars then 
		local x,y,z = table.unpack(GetPedBoneCoords(ped, 0))
		if specialMove < 100 then 
			BarraHP(vector3(x,y,z-0.95), 3.0, specialMove, 100, nil, 255,255,0, 100)
		else 
			BarraHP(vector3(x,y,z-0.95), 3.0, specialMove, 100, nil, 255,255,0, 255)
		end
	end
end

function DrawText3DCombatHP(x,y,z, testo, scale)
	local s = 0.25
	if scale then s = scale end
	local text = "" .. testo .. ""
    SetTextScale(s, s)
    SetTextFont(IDFONT)
    SetTextOutline()
	SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function DrawText3DCombatHP2(x,y,z, testo, scale)
	local s = 0.25
	if scale then s = scale end
	local text = "" .. testo .. ""
    SetTextScale(s, s)
    SetTextFont(IDFONT)
    SetTextOutline()
	SetTextProportional(1)
    SetTextColour(255, 255, 255, 150)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function DrawText3DCombatHP_NEW(x,y,z, testo, scale)
	local s = 0.22
	if scale then s = scale end
	local text = "" .. testo .. ""
    SetTextScale(s, s)
    SetTextFont(0)
    SetTextOutline()
	SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function DrawText3D(x,y,z, testo, scale)
	local s = 0.35
	if scale then s = scale end
	local text = "" .. testo .. ""
    SetTextScale(s, s)
    SetTextFont(IDFONT)
    SetTextOutline()
	SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

-- Stato interno per gestire sovrapposizioni e cancellazioni
testo3d_state = {
    token = 0,      -- aumenta ad ogni nuova chiamata
    endAt = 0       -- timestamp (ms) di fine
}

function stopTesto3d()
    testo3d_state.token = testo3d_state.token + 1
    testo3d_state.endAt = 0
end

MSDELAYSOUND = 2750

function markerFirstTarget(x,y,z, first)
	if Combat_HUD then
		local m = "💀"
		local r, g, b = 255, 255, 255 -- default WHITE
		if currentTarget ~= nil and first == currentTarget then
			r, g, b = 255, 255, 0 -- YELLOW for the enemy you aim!
			m = "☠️"
		end
		-- CHANGE THE STYLE IF YOU WANT!
		local p = coords
		DrawText3DCombatHP_NEW(x, y, z + 0.5, m, 0.25)
		--[[
		DrawMarker(
			28,          -- type
			x, y, z+0.5,    -- pos
			0.0, 0.0, 0.0, -- dir
			0.0, 0.0, 0.0, -- rot
			0.05, 0.05, 0.05, -- scale
			r, g, b, 200,   
			currentTarget ~= nil, true, 2,
			false, nil, nil, false
		)
		]]
	end
end

function CreateSkeleton(selectCoords, pedModel)
	local choosenPed = pedModel or "Skeleton_Kiml"
	local stamina = 100 -- WIP!
	local missionID = 0 -- WIP!
	local level = 1 -- WIP!
	
	local coordZomb = nil
	local ped = PlayerPedId()
	local playercoords = GetEntityCoords(ped)
	if selectCoords == nil then
		if not ZonaNatura() then
			x, y, z = table.unpack(playercoords)
			local m = -15 -- era -50
			local mm = 15 -- era 50
			newX = x + math.random(m, mm)
			newY = y + math.random(m , mm)
			local newZ = GetGroundZUltra(newX+.0,newY+.0,z+999.0)
			local ret, coordsTemp, heading = GetClosestVehicleNodeWithHeading(newX, newY, newZ, 1, 3.0, 0)
			if ret then 
				local retval, coordsSide = GetPointOnRoadSide(coordsTemp.x, coordsTemp.y, coordsTemp.z)
				if retval then
					if #(GetEntityCoords(ped)-coordsSide) <= 15.0 then 
						coordZomb = coordsSide
					else
						coordZomb = nil
					end
				end
			end
		else
			if #(GetEntityCoords(ped)-coordZomb) < 15.0 then 
				coordZomb = vector3(newX, newY, newZ)
			else
				coordZomb = nil
			end
		end
		
		if coordZomb == nil then 
			local pos = GetEntityCoords(ped)
			local forward   = GetEntityForwardVector(ped)
			local x, y, z   = table.unpack(pos + forward * 3.5)
			coordZomb = vector3(x,y,z)
		end
	else
		coordZomb = selectCoords
	end

	if coordZomb ~= nil and #(coordZomb-vector3(0.0,0.0,0.0)) > 10.0 then
		if #(GetEntityCoords(ped)-coordZomb) > 2.5 then 
			local newCCC = SottoSonoLibero(coordZomb)
			if newCCC then coordZomb = newCCC end
			
			local pos = coordZomb
			local head = h
			local fastEnemy = false
			local vita = 150
			local sfidante = 1
			local ArmaID = 15 -- math.random(1,#SwordList) 
					
			local setcombat = {}
			local Style = FightWStyle[SwordList[ArmaID].st]
			
			local tabAnim = Style.WithShift.CombatW for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithShift.CombatA for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithShift.CombatD for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatW for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatA for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end
			local tabAnim = Style.WithoutShift.CombatD for k, v in ipairs(tabAnim) do table.insert(setcombat, v) end			
			local renemy = CreateNemico(choosenPed, pos, setcombat, level, stamina, fastEnemy, vita, missionID, sfidante, 0.0, true, nil, ArmaID)
			local atp=0 while not DoesEntityExist(renemy) and atp < 100 do Wait(0) atp=atp+1 end
			if DoesEntityExist(renemy) then
				-- PlayEffect('core','ent_dst_wood_chunky', vector3(spawn.x,spawn.y,spawn.z-0.7), data.stopDistance*1.7, 0.5)
				SilPedFunc(renemy)
				CreateThread(function()
					Wait(0)
					faiAnim("get_up@directional@movement@from_knees@standard", "getup_l_0", 950, 1, renemy)
					Wait(0)
					PlayEffect("core", "ent_dst_rocks_small", GetEntityCoords(renemy), 5.0)
					for i = 1, 5 do
						SilPedFunc(renemy)
						Wait(25) -- intervallo tra i tentativi (modificabile)
					end				
				end)
			else 
				return nil
			end
			return renemy	
		end
	end
end

lessDamageWithLowStamina = true -- If you want hit all the time the same put this false! But it's better makes it like this if you want more competitive fights!

function loopArmorLose(hp, armour, ped, pos)
	testo3d(mex.."-"..hp, ped, nil)
	-- testo3d(mex.."|n||n||n||h|🛡️"..armour-hp, ped, pos, 0.20) -- THIS IS OPTIONAL, ENABLE IF YOU WANT!
end

function loopHealthLose(hp, health, ped, pos)
	testo3d(mex.."-"..hp, ped)
	-- testo3d(mex.."|n||n||n||n||n||n||h|❤️"..health-hp, ped, pos, 0.18) -- THIS IS OPTIONAL, ENABLE IF YOU WANT!
end

TARGET_SWITCH_KEY = 348   -- middle mouse TO CHANGE TARGET WHILE AUTO AIM!

function KruegerFunction(varped)
	-- WHAT HAPPENS WHEN YOU TRY STEALTH KILL WITH MELEE WEAPON?
	local idKrug = math.random(1,6)
	exports.striano_combat:callKrueger(idKrug, varped)
end

function BrokeNeckFunction()
	-- Stealth kill without melee weapon it's an anim to knockout from back!
	-- If you want  you can set as krueger up!
	BrokeNeck()
end

local function OnEnemyPedDied(ped)
    if not DoesEntityExist(ped) then return end
    local rewardId = Entity(ped).state.rewardId
    if not rewardId then print("The reward not exist!") return end
    local pedNetId = NetworkGetNetworkIdFromEntity(ped)
    TriggerServerEvent("enemyReward:pedDied", pedNetId, rewardId)
end

function onGetItemFromReward(pedENEMY) -- on REWARD
	local randRew = math.random(1,3)
	if not IsPedFatallyInjured(PlayerPedId()) and not IsPedRagdoll(PlayerPedId()) then
		if randRew == 1 or randRew == 2 then -- 2 change to 3 to get the item reward!
			OnEnemyPedDied(pedENEMY) 
			-- PlaySoundFrontend(-1,'LOCAL_PLYR_CASH_COUNTER_INCREASE','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',0)
			PlaySoundFrontend(-1,'NAV_LEFT_RIGHT','HUD_FREEMODE_SOUNDSET',1)
		end
	end
end

RegisterNetEvent('testo3dCombatClient')
AddEventHandler('testo3dCombatClient', function(msg)
	local pp = GetEntityCoords(PlayerPedId())
	local pos = vector3(pp.x,pp.y,pp.z-1.0)
	testo3d("~h~"..msg, nil, pos, 0.25) 
end)

-- NEW 11/01/26
-- Here you can choose if delete or not death enemy, and how!
function DetachAndDelete(pedNemico, ent) -- Del Enemy
	CreateThread(function()
		if DoesEntityExist(pedNemico) and pedNemico == FightPed then
			FightPed = nil
		end
		if ent ~= nil and DoesEntityExist(ent) then 
			SetEntityAsMissionEntity(ent)
			DetachEntity(ent)
			ReactivatePhysics(ent)
			Wait(25)
			ApplyForceToEntityCenterOfMass(ent, 2, 1.5, 1.5, 1.5, true, true, true, true)
			if not DoesEntityExist(pedNemico) then -- DELETE THE WEAPON OF THE ENEMY PORCO DIO E LA MADONNA
				DeleteEntity(ent)
			else
				Wait(2500)
				DeleteEntity(ent)
			end
		end
		
		if GetResourceState('striano_editor') == 'started' then
			if not exports.striano_editor:isPedMiss(pedNemico) then
				if not IsPedFatallyInjured(pedNemico) and not IsPedRagdoll(pedNemico) and not IsPedDeadOrDying(pedNemico) and IsPedHuman(pedNemico) then 
					ClearPedTasksImmediately(pedNemico)
					ClearPedSecondaryTask(pedNemico)
					ClearPedTasks(pedNemico)
					Wait(125)
					makeEntityFaceEntity(pedNemico, PlayerPedId())
					Wait(25)
					faiAnim("anim@mp_player_intincarsalutestd@ds@", "idle_a", -1, 2, pedNemico)
					Wait(3500)
				else
					Wait(1000)
				end
				SetEntityAsMissionEntity(pedNemico)	
				PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", GetEntityCoords(pedNemico), 0.8, 1.0)
				NetworkFadeOutEntity(pedNemico, true, true)
				Wait(550)
				if DoesEntityExist(pedNemico) then PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", GetEntityCoords(pedNemico), 0.3, 0.8) DeleteEntity(pedNemico) end
				if ent ~= nil and DoesEntityExist(ent) then 
					SetEntityAsMissionEntity(ent) 
					DeleteEntity(ent)
				end
			else
				SetEntityAsMissionEntity(pedNemico)
			end
		else
			SetEntityAsMissionEntity(pedNemico)
			-- NON ELIMINO IL PED SE PER CASO E' DI UNA MISSIONE ALTRIMENTI NON POSSO CONTROLLARE SE SONO MORTI O MENO!
		end
	end)
end

function Loadholster(id)
	local ped = PlayerPedId()
	if exports.striano_combat:incombatanim() then
		-- Non faccio niente sto combattendo?
		-- print("No holster in combat!")
	else
		if not IsEntityPlayingAnim(ped, "melee@wfire@beast_werewolf_animset", "wfire_wmg_werewolf_beast_forward_sprint_anim", 3) and not IsPedRagdoll(ped) then
			ecc()
			faiAnim(holsterlist[id].a, holsterlist[id].b, holsterlist[id].tim, 49) 
			local tempo = holsterlist[id].tim-50
			Wait(tempo/2)
			-- print("Holster fatto!")
		end
	end
end

function FoderaArmi(noAnim)
	local ped = PlayerPedId()
	local p = GetEntityCoords(ped)
	if not castingSpell and mySword > 0 and IsPedHuman(ped) and IsEntityVisible(ped) then 
		CreateThread(function()
			ResetEnemy()
			ResetStrafe(ped)
			TriggerEvent("striano_combat:client:onWeaponUnequipped", mySword)
			Sfoggiate = false inHeavyWeap = false
			if NewTraceActive then
				if trail.lastBase ~= nil then
					ResetSwordTrail()
				end
			end
			
			if lastAROV ~= nil and DoesEntityExist(lastAROV) then
				SetEntityAsMissionEntity(lastAROV)
				DeleteEntity(lastAROV)
			end
			
			if IsPedHuman(ped) and mySword > 0 then 
				local id = SwordList[mySword].unholster	
				if noAnim == nil then
					if not IsEntityPlayingAnim(ped, "mp_am_hold_up", "cower_loop", 3) and not IsEntityPlayingAnim(ped, "wing_chun@anim", "down_2", 3) and not IsEntityPlayingAnim(ped, "combat@damage@rb_writhe", "rb_writhe_loop", 3) and not IsEntityPlayingAnim(ped, "hit_react_left_leg_stumble_knockdown","hit_react_left_leg_stumble_knockdown_clip", 3) then -- and not inblockfunc(ped)
						Loadholster(id)						
					end
				end
				
				local swordName = GetSwordNameFromId(mySword)
				if string.find(swordName, "Mantis") then -- MANTIS PROP ARE FROM DOGMA STUDIO (Seakas on Discord!)
					if SwordObj ~= nil and DoesEntityExist(SwordObj) then SetEntityAsMissionEntity(SwordObj) DelIfOnClient(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
					if SwordObj2 ~= nil and DoesEntityExist(SwordObj2) then SetEntityAsMissionEntity(SwordObj2) DelIfOnClient(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
					ResumeAnimationAndDelete()
				end
				
				-- Wait(350) -- while inHolsterAnim() do Wait(0) end Wait(150)
				if mySword > 0 and not string.find(swordName, "Mantis") then 
					if not IsPedRagdoll(ped) and not IsEntityPlayingAnim(ped, "hit_react_left_leg_stumble_knockdown","hit_react_left_leg_stumble_knockdown_clip", 3) then -- SwordList[mySword].holster > 1 and				
						unholsterSound() -- local p = GetEntityCoords(ped) SuonoGlobal(-1,'Zoom_Left', p.x,p.y,p.z, 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1, 7.0, 0)
					end
					local prop1 = SwordList[mySword].m
					local p = GetEntityCoords(ped)
					
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
				
				local tempo = holsterlist[id].tim-50
				Wait(tempo/2)
				
				-- POSO L'ARCO DEL DIO CANE AUTOMATICAMENTE!
				resetBow()
				
				if myShield > 0 and IsPedHuman(ped) and IsEntityVisible(ped) and ShieldObj == nil then
					GeneraShield()
				end
				
				if myBow > 0 and not SfoggiatoBow then
					GeneraBow()
				end				
				-- IdleStrafe() -- FOR TESTING NOW! NEV
			end
			
			-- era attivo prima di R keymap			
			--[[
			if mySword > 0 or myBow > 0 then
				CreateThread(function()
					while CombatActive or (IsDisabledControlPressed(0, 25) or IsControlPressed(0, 25)) do
						Wait(0)
						if Sfoggiate or SfoggiatoBow then CombatActive = false return end
						ManageBowAndSword()
					end
				end)
			end
			]]
		end)
	end
end

function handleSword(fast)
	if fast==nil then fast=false end

	local ped=PlayerPedId()
	local p=GetEntityCoords(ped)

	-- print("========== HANDLE SWORD ==========")
	-- print("castingSpell:",castingSpell)
	-- print("mySword:",mySword)
	-- print("#SwordList:",#SwordList)
	-- print("mySword <= #SwordList:",mySword<=#SwordList)
	-- print("HoRollato:",HoRollato)
	-- print("hoRollato:",hoRollato)
	-- print("CanCombatCheck:",CanCombatCheck())
	-- print("incombatanim:",exports.striano_combat:incombatanim())

	if not castingSpell and mySword>0 and mySword<=#SwordList and not HoRollato and CanCombatCheck() and not exports.striano_combat:incombatanim() then
		CreateThread(function()
			ResetEnemy()
			ecc()
			Sfoggiate = true -- Wait(1)
			
			local swordName = GetSwordNameFromId(mySword)
			
			local id = SwordList[mySword].holster
			if not IsEntityPlayingAnim(ped, "mp_am_hold_up", "cower_loop", 3) and not IsEntityPlayingAnim(ped, "wing_chun@anim", "down_2", 3) and not IsEntityPlayingAnim(ped, "combat@damage@rb_writhe", "rb_writhe_loop", 3) and not inblockfunc(ped) then
				if string.find(swordName, "Mantis") then					
					LoadAnim("mantis@spawn")
					
					local a = "mantis@spawn"
					if not HasAnimDictLoaded(a) then
						RequestAnimDict(a)
						while not HasAnimDictLoaded(a) do Wait(10) end
					end
					
					RequestModelStriano("mantisblade")
					SpawnMantisBlades()
					Wait(500)
				else
					Loadholster(id)
				end
			end
			
			hoRollato = true

			-- if inHolsterAnim() or fast then -- print("Ci sono.")
				-- PlaySoundFrontend(-1,'WOODEN_DOOR_CLOSED_AT','0',1)
				-- if SwordList[mySword].holster > 1 then 
					holsterSound() -- SuonoGlobal(-1,'Zoom_Left', p.x,p.y,p.z, 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1, 7.0, 0)						
				-- end
				
				if not string.find(swordName, "Mantis") then -- SE NON SONO LE MANTIS!
					local prop1 = SwordList[mySword].m
					local p = GetEntityCoords(ped)					
					if SwordObj ~= nil and DoesEntityExist(SwordObj) then DetachEntity(SwordObj) SetEntityAsMissionEntity(SwordObj) DelIfOnClient(SwordObj) DeleteEntity(SwordObj) SwordObj = nil end
					SwordObj = CreateObjectNoOffset(GetHashKey(prop1), p.x, p.y, p.z-1.0,  true, true, false)
					SetEntityCollision(SwordObj, false, false)
					while not DoesEntityExist(SwordObj) do Wait(0) end
					MakeSwordNET(SwordObj)
					local t = SwordList[mySword].att 
					a,b,c,d,e,f = table.unpack(t)
					AttachEntityToEntity(SwordObj, ped, GetPedBoneIndex(ped, SwordList[mySword].bone), a,b,c,d,e,f, true, true, false, true, 1, true)
					SetModelAsNoLongerNeeded(prop1)
					if SwordList[mySword].m2 then 
						local prop2 = SwordList[mySword].m2					
						if SwordObj2 ~= nil and DoesEntityExist(SwordObj2) then DetachEntity(SwordObj2)SetEntityAsMissionEntity(SwordObj2) DelIfOnClient(SwordObj2) DeleteEntity(SwordObj2) SwordObj2 = nil end
						SwordObj2 = CreateObjectNoOffset(GetHashKey(prop2), p.x, p.y, p.z-1.0,  true, true, false)
						SetEntityCollision(SwordObj2, false, false)
						while not DoesEntityExist(SwordObj2) do Wait(0) end
						MakeSwordNET(SwordObj2)
						local t = SwordList[mySword].att2 
						a,b,c,d,e,f = table.unpack(t)
						AttachEntityToEntity(SwordObj2, ped, GetPedBoneIndex(ped, SwordList[mySword].bone2), a,b,c,d,e,f, true, true, false, true, 1, true)
						SetModelAsNoLongerNeeded(prop2)
					end
				end
			-- else
				-- Sfoggiate = false
			-- end
			
			local tempo = holsterlist[id].tim-50
			Wait(tempo/2)
			
			IdleStrafe()
			TriggerEvent("striano_combat:client:onWeaponEquipped", mySword)
			
			ClearPedTasks(ped)
			ClearPedSecondaryTask(ped)
			EnableCombatMode()
			onFirstStartCombat()
			IdleAnimFunc()
			
			hoRollato = false
			ResetStrafe(ped)
		end)
	end
end

function OnFinisherEnd()
	ExecuteCommand("addsangue") -- This is a command from my server test, maybe you should disable if you dont have all my resources!
end

function OnSetPlayerPed()
	if not IsPedHuman(PlayerPedId()) then 
		if GetResourceState('striano_combat') == 'started' then
			CreateThread(function() Wait(1500) ExecuteCommand("stopvolo") end)
		end
	end
end

function OnFixCrouch()
	ExecuteCommand("fixcrouch")
end

function OnActiveDummy()
	TriggerEvent("ActiveAutoDummy") -- FOR MY SERVER TEST START MISSION WITH DUMMY
end

function AttackPedAnimal(entity)
	local ped = PlayerPedId()
	if IsPedHuman(ped) and not inblockfunc(ped) and not exports.striano_combat:incombatanim() then 
		SetPedToRagdoll(ped, 550, 550, 6, 0, 0, 0) -- faiAnim("ped", "hit_wall", 300, 49, ped) 
	end
	if GetEntityModel(entity) == GetHashKey("a_c_coyote") then
		local anim={a="creatures@coyote@melee@streamed_core@",b="attack"}
		faiAnim(anim.a, anim.b, 950, 1, entity)
		if not inblockfunc(ped) then -- How much hp?
			if BloodActive then
				PlayEffect("scr_solomon3", "scr_trev4_747_blood_splash", GetEntityCoords(ped), 1.2, 0.9) -- blood effect is cool.
			else
				PlayEffect("scr_josh3", "scr_josh3_light_explosion", GetEntityCoords(ped), 0.05, 0.3)
			end
			Wait(550) ApplyDamageToPedLegacy(ped, 3) 
		end
	elseif GetEntityModel(entity) == GetHashKey("a_c_boar") then
		local anim={a="creatures@boar@melee@streamed_core@",b="attack"}
		faiAnim(anim.a, anim.b, 950, 1, entity)
		if not inblockfunc(ped) then -- How much hp?
			if BloodActive then
				PlayEffect("scr_solomon3", "scr_trev4_747_blood_splash", GetEntityCoords(ped), 1.5, 0.9) -- blood effect is cool.
			else
				PlayEffect("scr_josh3", "scr_josh3_light_explosion", GetEntityCoords(ped), 0.05, 0.3)
			end
			Wait(550) ApplyDamageToPedLegacy(ped, 3) 
		end
	else
		local anim={a="creatures@coyote@melee@streamed_core@",b="attack"}
		faiAnim(anim.a, anim.b, 950, 1, entity)
		if not inblockfunc(ped) then -- How much hp?
			if BloodActive then
				PlayEffect("scr_solomon3", "scr_trev4_747_blood_splash", GetEntityCoords(ped), 1.2, 0.9) -- blood effect is cool.
			else
				PlayEffect("scr_josh3", "scr_josh3_light_explosion", GetEntityCoords(ped), 0.05, 0.3)
			end
			Wait(550) ApplyDamageToPedLegacy(ped, 3)
		end
	end
	CreateThread(function()
		Wait(550)
		local playerpos = GetEntityCoords(ped)
		TaskGoStraightToCoord(entity, playerpos.x, playerpos.y, playerpos.z, 2.5, -1, 0, 1.5)
	end)
	Wait(1900) -- Change this, but not remove to not spam attack animal!
end

function callBaseCycle()
	if GetResourceState('striano_core') == 'started' then
		exports.striano_core:atmosfera()
	end
end

-- LUMBERJACK JOB WITH AXE
function HatchetFunc()
	if GetResourceState('striano_editor') == 'started' then
		if Sfoggiate then 
			local swordName = GetSwordNameFromId(mySword)
			if string.find(swordName, "Axe") or string.find(swordName, "Hatchet") then -- Insert weapon name fit for your project to get hatchet for wood.
				exports.striano_editor:hitTree()
			end
		end
	end
end
function pedNearTree() -- this works with striano_editor, if a ped is near a tree we can make something cool to get wood for example!
	if GetResourceState('striano_editor') == 'started' then
		return exports.striano_editor:nearTree() or false
	else
		return false
	end
end

function hitMonsters(p, dmg, entFreccia)
	DamageFollowObjectsNearCoords(p, 2.5, dmg, entFreccia) -- RAGNO
end

-- MINER JOB PICKAXE
function PickaxeFunc()
	if GetResourceState('striano_editor') == 'started' then
		if Sfoggiate then 
			local swordName = GetSwordNameFromId(mySword)
			if string.find(swordName, "Pick") then -- Insert weapon name fit for your project to get hatchet for wood.
				exports.striano_editor:hitStone()
			end
		end
	end
end

-- PARTY SYSTEM MANAGER
-- MARKER FOR PARTY SYSTEM!
PARTY_ICON_DIST = 35.0
function DrawPartyAllyIcon(ped)
    local coords = GetPedBoneCoords(ped, 0x796E, 0.0, 0.0, 0.35)
    DrawMarker(
        2,
        coords.x, coords.y, coords.z,
        0.0, 0.0, 0.0,
        0.0, 180.0, 0.0,
        0.22, 0.22, 0.22,
        80, 180, 255, 220,
        false, true, 2,
        true, nil, nil, false
    )
end

function closePattoMenu()
    exports['striano_fastmenu']:close()
end

function openConfirmMenu(msg, onConfirm, onCancel)
    exports['striano_fastmenu']:clearMenu() 
	exports['striano_fastmenu']:addMenuItem(msg, function() end, false)
	exports['striano_fastmenu']:addMenuItem("[ Confirm ]", function()
        ApriMenuPatto()
        if onConfirm then onConfirm() end
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ Cancel ]", function()
        ApriMenuPatto()
        if onCancel then onCancel() end
    end, false)

    exports['striano_fastmenu']:open()
end

function buildPattoLabel(realIndex, patto)
    local label = "Join -> " .. patto.nome -- :upper()

    if patto.owner == GetPlayerServerId(PlayerId()) then
        label = label .. " (Owner)"
    end

    if PattoDentro == realIndex then
        label = label .. " [Current]"
    end

    return label
end

function ListaPatti()
	local listaVisibile = getVisiblePatti()

    if #listaVisibile <= 0 then
        notifytt(txt_Covenant[6])
        Wait(100)
        ApriMenuPatto()
        return
    end
	
	exports['striano_fastmenu']:clearMenu() 

    for _, entry in ipairs(listaVisibile) do
        local realIndex = entry.realIndex
        local patto = entry.data

        exports['striano_fastmenu']:addMenuItem(buildPattoLabel(realIndex, patto), function()
            askJoinPatto(realIndex)
        end, false)
    end

    exports['striano_fastmenu']:addMenuItem("[ BACK ]", function()
        ApriMenuPatto()
    end, false)

    exports['striano_fastmenu']:open()
end

function EliminaMioPatto()
    if IlMioPatto <= 0 or not Patti[IlMioPatto] then
        notifytt(txt_Covenant[6])
        return
    end
	
	local patto = Patti and Patti[IlMioPatto]
    local nomePatto = Patti[IlMioPatto].nome or ("#" .. tostring(IlMioPatto))
    openConfirmMenu(
		"Delete " .. patto.nome .. "?",
        function()
            TriggerServerEvent("delPatto", IlMioPatto)
            notifytt(txt_Covenant[8])
            Wait(100)
            ApriMenuPatto()
        end,
        function()
            ApriMenuPatto()
        end
    )
end

function AbbandonaPatto()
    local leavingId = tonumber(PattoDentro)

    if not leavingId or leavingId <= 0 or not Patti or not Patti[leavingId] then
        notifytt(txt_Covenant[6])
        return
    end

    local patto = Patti[leavingId]
    local nomePatto = patto.nome or ("#" .. tostring(leavingId))

    openConfirmMenu(
        "Leave " .. nomePatto .. "?",
        function()
            TriggerServerEvent("leavePatto", leavingId)

            -- pulizia client locale
            PattoDentro = 0

            notifytt(txt_Covenant[11])

            SetTimeout(150, function()
                ApriMenuPatto()
            end)
        end,
        function()
            ApriMenuPatto()
        end
    )
end

function IlMioPattoFunc()
    if IlMioPatto <= 0 or not Patti[IlMioPatto] then
        notifytt(txt_Covenant[13])
        return
    end

    local persone = 0
    if PattoDentro > 0 and Patti[PattoDentro] and Patti[PattoDentro].listaPlayer then
        persone = #Patti[PattoDentro].listaPlayer
    end

    notifytt(
        txt_Covenant[14] .. "" .. IlMioPatto .. 
        "~n~(" .. (Patti[IlMioPatto].nome or "N/D") .. ")" ..
        "~n~" .. txt_Covenant[15] .. "" .. PattoDentro ..
        "~n~" .. txt_Covenant[16] .. "" .. persone
    )
end

function ApriMenuPatto()  
	exports['striano_fastmenu']:clearMenu() 

    SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)

    exports['striano_fastmenu']:addMenuItem("Party List", function()
        ListaPatti()
    end, false)

    exports['striano_fastmenu']:addMenuItem("Create New Party", function()
        closePattoMenu()
        CreaPattoFunc()
    end, false)

    exports['striano_fastmenu']:addMenuItem("Destroy Your Party", function()
        EliminaMioPatto()
    end, false)

    exports['striano_fastmenu']:addMenuItem("Leave Party", function()
        AbbandonaPatto()
    end, false)

    exports['striano_fastmenu']:addMenuItem("My Party", function()
        IlMioPattoFunc()
    end, false)

    exports['striano_fastmenu']:addMenuItem("Party Members", function()
        MembriPatto()
    end, false)

    exports['striano_fastmenu']:open()
end

RegisterNetEvent('exitPatto')
AddEventHandler('exitPatto', function(id)
	if PattoDentro > 0 and PattoDentro == id and IlMioPatto ~= id then 
		notifytt("You was in a coventant that now it's deleted.")
		PattoDentro = 0
	elseif IlMioPatto == id then 
		if IlMioPatto == PattoDentro then PattoDentro = 0 end 
		notifytt("Covenant delete succesfully.")
		IlMioPatto = 0
		Wait(25) ApriMenuPatto()
	end
	RefreshPartyAllyCache()
end)

function MembriPatto()
    exports['striano_fastmenu']:clearMenu()
	if PattoDentro == nil or PattoDentro == 0 then ApriMenuPatto() notifytt("No members in party.") return end
    local pattoId = PattoDentro
    if (not pattoId or pattoId <= 0) and IlMioPatto > 0 then
        pattoId = IlMioPatto
    end

    local patto = Patti[pattoId]
	if patto then
		local membri = patto.listaPlayer or {}

		if #membri <= 0 then
			exports['striano_fastmenu']:addMenuItem("[ NO MEMBERS ]", function()
			end, true)
		else
			for _, src in ipairs(membri) do
				local nome
				if patto.listaNomi and patto.listaNomi[src] then
					nome = ("[%s] %s"):format(tostring(src), patto.listaNomi[src])
				else
					nome = "ID " .. tostring(src)
				end

				exports['striano_fastmenu']:addMenuItem(nome, function()
				end, false)
			end
		end

		exports['striano_fastmenu']:addMenuItem("[ BACK ]", function()
			ApriMenuPatto()
		end, false)

		exports['striano_fastmenu']:open()
	end
end

function CreaPattoFunc()
    if IlMioPatto ~= 0 then
        notifytt("Before create a new party you need delete yours.")
        Wait(100)
        ApriMenuPatto()
        return
    end

    closePattoMenu()
    Wait(100)

    local txtName = "Insert a party name"
    local namePatto = OpenInput(txtName)
    namePatto = tostring(namePatto or ""):gsub("^%s+", ""):gsub("%s+$", "")

    if namePatto == "" or #namePatto > 24 then
        notifytt("Something goes wrong with name.")
        Wait(100)
        ApriMenuPatto()
        return
    end

    Wait(50)

    local txtMemb = "Max member 2-15 (Default: 2)"
    local maxPlayer = OpenInput(txtMemb)
    local id = tonumber(maxPlayer)
    if not id then id = 2 end

    if id < 2 or id > 15 then
        notifytt("Something goes wrong here.")
        Wait(100)
        ApriMenuPatto()
        return
    end

    Wait(50)

    local txtPASS = "Password (optional)"
    local pass = OpenInput(txtPASS)
    pass = tostring(pass or "")

    local databuf = {
        max = id,
        nome = namePatto,
        pin = pass,
        owner = GetPlayerServerId(PlayerId()),
        listaPlayer = {}
    }
    TriggerServerEvent("creaPatto", databuf, GetPlayerServerId(PlayerId()))
    local Password = "Password: No."
    if #pass > 0 then
        Password = "Password: '" .. pass .. "'"
    end
    notifytt("Party created: " .. namePatto .. " (Max: " .. id .. ") " .. Password)
    Wait(150)
    ApriMenuPatto()
end

InputNames = {
    [24] = "~INPUT_ATTACK~", -- Mouse Left
    [25] = "~INPUT_AIM~", -- Mouse Right
    [45] = "~INPUT_RELOAD~", -- R
    [44] = "~INPUT_COVER~", -- Q
    [21] = "~INPUT_SPRINT~", -- Shift
    [22] = "~INPUT_JUMP~", -- Space
    [32] = "~INPUT_MOVE_UP_ONLY~", -- W
    [33] = "~INPUT_MOVE_DOWN_ONLY~", -- S
    [34] = "~INPUT_MOVE_LEFT_ONLY~", -- A
    [35] = "~INPUT_MOVE_RIGHT_ONLY~", -- D
	[38] = "~INPUT_PICKUP~", -- E
	[23] = "~INPUT_ENTER~", -- F
	[73] = "~INPUT_VEH_DUCK~", -- F
	[166] = "~INPUT_SELECT_CHARACTER_MICHAEL~", -- F5
}
function notifyt(text, controls)
    local buttons = ""
    for i, control in ipairs(controls) do
        buttons = buttons .. (InputNames[control] or ("["..control.."]"))
        if i < #controls then buttons = buttons .. " + " end
    end
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName( ("%s %s"):format(buttons, text) )
    EndTextCommandDisplayHelp(0,false,true,-1)
end
InstructionalHintToken = 0
function notifytt(text, controls, timer)
    timer = tonumber(timer) or 9000
    InstructionalHintToken = InstructionalHintToken + 1
    local myToken = InstructionalHintToken
    local buttons = ""
    for i, control in ipairs(controls or {}) do
        buttons = buttons .. (InputNames[control] or ("[" .. tostring(control) .. "]"))
        if i < #controls then buttons = buttons .. " + " end
    end
    local finalText = ("%s %s"):format(buttons, text or "")
	if finalText ~= nil and finalText ~= "" then
		print(finalText) -- Useful to save notify but if you dont like push in f8 delete this!
	end
    CreateThread(function()
        local expire = GetGameTimer() + timer
        while GetGameTimer() < expire do
            -- se parte un'altra notifica, questa muore
            if myToken ~= InstructionalHintToken then
                return
            end
            BeginTextCommandDisplayHelp("STRING")
            AddTextComponentSubstringPlayerName(finalText)
            EndTextCommandDisplayHelp(0, false, false, -1)
            Wait(0)
        end
    end)
end

function NoArrowsMsg()
	testo3d("~h~~r~No arrows ("..myArrow..")")
end

function HasItemUniversal(item, amount)
    amount = tonumber(amount) or 1
    if not item or item == "" then return true end

    if GetResourceState("ox_inventory") == "started" then
        local count = exports.ox_inventory:Search("count", item)
        return (tonumber(count) or 0) >= amount
    end

    if GetResourceState("qb-core") == "started" then
        local QBCore = exports["qb-core"]:GetCoreObject()
        local PlayerDataQB = QBCore.Functions.GetPlayerData()
        for _, v in pairs(PlayerDataQB.items or {}) do
            if v.name == item and (tonumber(v.amount) or 0) >= amount then
                return true
            end
        end

        return false
    end

    if GetResourceState("striano_inventory") == "started" then
        return exports.striano_inventory:HasItem(item, amount, "player") == true
    end

    return false
end

function CheckArrowItem()
    -- local arrow = ArrowList[myArrow]
    -- if not arrow then return false end
    -- return HasItemUniversal(arrow.item, 1)
	return true
end
function onRemoveArrow()
	-- if ArrowList[myArrow].item ~= nil then
		-- RemoveItemUniversal(ArrowList[myArrow].item, 1)
	-- end
end
function GetBackThrowItem(item)
	-- if item ~= nil then GiveItemUniversal(item, 1) end
end

function GiveItemUniversal(item, amount, metadata, slot)
    amount = tonumber(amount) or 1
    if not item or item == "" or amount <= 0 then return false end

    -- OX INVENTORY
    if GetResourceState("ox_inventory") == "started" then
        TriggerServerEvent("ox_inventory:addItem", item, amount, metadata, slot)
        return true
    end

    -- QB INVENTORY
    if GetResourceState("qb-inventory") == "started" then
        TriggerServerEvent("QBCore:Server:AddItem", item, amount, slot, metadata)
        return true
    end

    -- STRIANO INVENTORY
    if GetResourceState("striano_inventory") == "started" then
        TriggerServerEvent("striano_combat:giveItem", GetPlayerServerId(PlayerId()), item, amount)
        return true
    end

    print("^1[GiveItemUniversal]^7 No inventory validated found!")
    return false
end

function RemoveItemUniversal(itemName, amount, invName, slot, metadata)
    amount = tonumber(amount) or 1
    if amount <= 0 then return false end

    if not itemName or itemName == "" then
        print("^1[RemoveItemUniversal]^7 itemName not valid!")
        return false
    end

    -- OX INVENTORY
    -- ox_inventory RemoveItem is a SERVER exports.
    -- Calling it client-side causes: "No such export RemoveItem in resource ox_inventory".
    if GetResourceState('ox_inventory') == 'started' then
        TriggerServerEvent('striano_combat:server:RemoveItemUniversal', itemName, amount, metadata, slot)
        return true
    end

    -- QB INVENTORY
    if GetResourceState('qb-inventory') == 'started' then
        TriggerServerEvent("QBCore:Server:RemoveItem", itemName, amount, slot)
        return true
    end

    -- STRIANO INVENTORY
    invName = invName or "player"
    if GetResourceState('striano_inventory') == 'started' then
        exports.striano_inventory:RemoveItem(itemName, amount, invName)
        return true
    end

    return false
end

function ApplyDirtyPed()
	ExecuteCommand("addSporco") -- this add dirty on body from striano_editor
end

function onInitCombat()
	TriggerServerEvent("getCombatList")
end

function LoadAnim(dict, timeout)
    if HasAnimDictLoaded(dict) then return true end
    timeout = timeout or 5000
    local expire = GetGameTimer() + timeout
    RequestAnimDict(dict) -- DebugRequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        if GetGameTimer() >= expire then
            print(("[LoadAnim] WARNING: anim dict not found: %s"):format(dict))
            return false
        end
        Wait(0)
    end
    return true
end

function ZonaNatura()  
	if retval == "CMSW" or retval == "CCREAK" or retval == "CANNY" or retval == "MTCHIL" or retval == "ARMYB" then
		return true
	else
		return false
	end
end

function DrawText3DCombat(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    if onScreen then
		SetTextScale(0.28, 0.28)
		SetTextFont(0)
		SetTextProportional(1)
		SetTextColour(255,255,255, 255)
		SetTextEntry("STRING")
		SetTextOutline()
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
	end
end

function BarraHP(coords, scale, currentHealth, maxHealth, vita, r,g,b, a)
	if r == nil then r = 255 end
	if g == nil then g = 0 end
	if b == nil then b = 0 end
	if vita == nil then 
		local normalizedHealth = math.max(0, math.min(100, ((currentHealth) / (maxHealth)) * 100)) 
		local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z) 
		local px, py, pz = table.unpack(GetGameplayCamCoord()) 
		local dist = #(vector3(px, py, pz)-coords)
		local scale = (1 / dist) * 2
		local fov = (1 / GetGameplayCamFov()) * 50
		local scale = scale * fov
		if onScreen then      
			local barWidth = 0.05 * scale 
			local barHeight = 0.005 * scale 
			local barX = _x 
			local barY = _y + (0.012 * scale) 
			DrawRect(barX, barY, barWidth + 0.003, barHeight + 0.003, 0, 0, 0, 150)
			local healthWidth = math.max(0, barWidth * (normalizedHealth / 100)) 
			local healthBarX = barX - (barWidth / 2) + (healthWidth / 2) 
			DrawRect(healthBarX, barY, healthWidth, barHeight, r,g,b, a or 200) 
		end
	else
		local p = coords
		DrawText3DCombatHP_NEW(p.x, p.y, p.z - 1.5, "~y~" .. currentHealth, 0.25)
	end
end

function testo3d(mex, entity, pos, s)
    -- togli questo check per testare
    -- if not Combat_HUD then return end

    mex = tostring(mex or "")
    mex = string.gsub(mex, "|", "~")

    CreateThread(function()
        local startTime = GetGameTimer()
        local duration = 7000

        while GetGameTimer() - startTime < duration do
            Wait(0)

            local p = nil

            if pos then
                p = pos
            elseif entity and entity ~= 0 then
                -- se per sbaglio passi un netId
                if not DoesEntityExist(entity) and NetworkDoesNetworkIdExist(entity) then
                    entity = NetToEnt(entity)
                end

                if not DoesEntityExist(entity) then
                    -- print("^1[TESTO3D]^7 entity non esiste:", entity)
                    return
                end

                -- controllo ped SOLO se è ped
                if IsEntityAPed(entity) and IsPedFatallyInjured(entity) then
                    return
                end

                p = GetEntityCoords(entity)
            else
                p = GetEntityCoords(PlayerPedId())
            end

            local elapsed = GetGameTimer() - startTime
            local progress = elapsed / duration
            local zOffset = 0.8 + (progress * 0.8)

            DrawText3DCombatHP(
                p.x,
                p.y,
                p.z + zOffset,
                mex,
                s or 0.35
            )
        end
    end)
end

exports('testo3d', function(mex) testo3d(mex) end)

function testo3d2(mex, ped)
    if not ped or not DoesEntityExist(ped) then return end

    local startTime = GetGameTimer()
    local endTime = startTime + 2000
    local baseZ = 0.25
    local riseHeight = 0.75 -- quanto sale complessivamente
    local p = GetEntityCoords(ped)

    CreateThread(function()
        while true do
            Wait(0)

            if not DoesEntityExist(ped) then
                return
            end

            local now = GetGameTimer()
            if now >= endTime then
                return
            end

            -- calcolo progresso (0.0 → 1.0)
            local progress = (now - startTime) / (durataMs or 2000)
            -- calcola offset verticale
            local zOffset = baseZ + (progress * riseHeight)

            local pedCoords = GetEntityCoords(ped)
            DrawText3DCombatHP(pedCoords.x, pedCoords.y, pedCoords.z + zOffset, mex, 0.25)
        end
    end)
end

function DeleteDeathEnemy()
	for k, v in ipairs(MioNemico) do 
		if DoesEntityExist(v.p) then 
			if IsPedFatallyInjured(v.p) or IsPedDeadOrDying(v.p) then
				SetEntityAsMissionEntity(v.p, true)
				DeleteEntity(v.p)
				table.remove(MioNemico, k)
			end
		else
			table.remove(MioNemico, k)
		end
	end
end

function faiAnim(a,b, tempo, flag, ped)
	local pedInt = PlayerPedId()
	if flag == nil then flag = 49 end
	if ped ~= nil then pedInt = ped end
	if pedInt ~= nil then 
		LoadAnim(a)
		if not IsEntityPlayingAnim(pedInt, a,b, 3) then
			TaskPlayAnim(pedInt, a, b, 2.0, 2.0, tempo or -1, flag, false, false, false)
		end
	end
end

function SetPlayerPed(pedmodel)
	while IsInPowerSavingMode() do Wait(0) end
	while IsPauseMenuActive() do Wait(0) end
	while not NetworkIsSessionStarted() do Wait(0) end
	while PlayerPedId() == nil do Wait(0) end
	OnSetPlayerPed()
	local coordinate = GetEntityCoords(PlayerPedId())
	local hash = GetHashKey(pedmodel)
	RequestModelStriano(hash)
	local tentativi = 0 
	local maxtentativi = 350
	while not HasModelLoaded(hash) and tentativi < maxtentativi do tentativi = tentativi + 1 RequestModelStriano(hash) Wait(0) end 
	if tentativi < maxtentativi then 
		while not HasCollisionForModelLoaded(hash) do Wait(0) end
		while not HasCollisionLoadedAroundEntity(PlayerPedId()) do 
			RequestCollisionAtCoord(coordinate.x, coordinate.y, coordinate.z) 
			SetFocusPosAndVel(coordinate.x, coordinate.y, coordinate.z, 0.0, 0.0, 0.0) 
			Wait(0)
		end		
		if GetEntityModel(PlayerPedId()) == hash then 
		else 
			SetPlayerModel(PlayerId(), hash) 
			SetPedDropsWeaponsWhenDead(PlayerPedId(), false)
			if not exports.striano_core.notutorial() then TriggerServerEvent('vSync:requestSync') end
			ReleasePedPreloadVariationData(PlayerPedId()) -- NON ERA ATTIVO, MA FORSE SERVE PER OTTIMIZZAZIONE
			SetPedPreloadVariationData(PlayerPedId(), 0, 0, 0)
			if IsPedComponentVariationValid(PlayerPedId(), 0, 0, 0) then SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 0) end	
			SetPedDefaultComponentVariation(PlayerPedId())
			SetModelAsNoLongerNeeded(hash)
			ClearFocus()
			RenderScriptCams(false, false, 0, true, false)
		end

		if #(GetEntityCoords(PlayerPedId())-vector(0,0,0)) < 50.0 then 
			SetEntityCoordsNoOffset(PlayerPedId(), coordinate.x, coordinate.y, coordinate.z, false, false, false, true)
		end
	end
end

function FastDelEnemy(pedNemico, ent)
	CreateThread(function()
		if DoesEntityExist(pedNemico) then
			SetEntityAsMissionEntity(pedNemico, true)	
			PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", GetEntityCoords(pedNemico), 0.8, 1.0)
			NetworkFadeOutEntity(pedNemico, true, true)
			local start = GetGameTimer()
			while DoesEntityExist(pedNemico) and (GetGameTimer() - start) < 750 do Wait(0) end
			if DoesEntityExist(pedNemico) then PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", GetEntityCoords(pedNemico), 0.3, 0.8) DeleteEntity(pedNemico) end
		end
		if DoesEntityExist(ent) then
			SetEntityAsMissionEntity(ent) 
			DeleteEntity(ent)
		end
	end)
end

function onInitCombatCustom()
	-- INSERT YOUR SCRIPT CUSTOM WHEN COMBAT START
	-- INSERT SCRIPT HERE ONLY AFTER TESTED THE SCRIPT DEFAULT!
end

function InThrowWeap()
	if mySword == 64 or myArrow == 5 or myBow == 4 then return true else return false end
end

function onResist()
	CreateThread(function()
		Wait(550)
		ExecuteCommand("resisti")
	end)
end

testDummyModel = joaat("dummy")

-- NEW 30/07 for Sun Project
local function BuildNPCCombatSet(weaponId)
	weaponId = tonumber(weaponId)
	if not weaponId or not SwordList[weaponId] then return nil, "ID arma non valido." end
	local styleId = SwordList[weaponId].st
	local Style = FightWStyle[styleId]
	if not Style then return nil, ("FightWStyle inesistente per lo stile: %s"):format(tostring(styleId)) end
	if not Style.WithShift or not Style.WithoutShift then return nil, "Moveset incompleto." end
	local setcombat = {}
	local function AddAnimations(animTable)
		if type(animTable) ~= "table" then return end
		for _, anim in ipairs(animTable) do setcombat[#setcombat + 1] = anim end
	end
	AddAnimations(Style.WithShift.CombatW)
	AddAnimations(Style.WithShift.CombatA)
	AddAnimations(Style.WithShift.CombatD)
	AddAnimations(Style.WithoutShift.CombatW)
	AddAnimations(Style.WithoutShift.CombatA)
	AddAnimations(Style.WithoutShift.CombatD)
	if #setcombat == 0 then return nil, "Nessuna animazione trovata nel moveset." end
	return setcombat
end

local function FindRegisteredExternalNPC(entityPed)
	for index, enemyData in ipairs(MioNemico) do
		if enemyData.p == entityPed then return index, enemyData end
	end
	return nil, nil
end

local function RegisterExternalNPC(EntityPed, ID_ARMA)
	EntityPed = tonumber(EntityPed)
	ID_ARMA = tonumber(ID_ARMA)
	if not EntityPed or EntityPed == 0 then
		print("^1[RegisterExternalNPC] EntityPed non valido.^7")
		return false
	end
	if not DoesEntityExist(EntityPed) or not IsEntityAPed(EntityPed) then
		print("^1[RegisterExternalNPC] Il ped non esiste oppure non è un ped.^7")
		return false
	end
	if IsPedAPlayer(EntityPed) then
		print("^1[RegisterExternalNPC] Non puoi registrare un giocatore come NPC esterno.^7")
		return false
	end
	if not ID_ARMA or not SwordList[ID_ARMA] then
		print(("^1[RegisterExternalNPC] ID arma non valido: %s^7"):format(tostring(ID_ARMA)))
		return false
	end
	local setcombat, errorMessage = BuildNPCCombatSet(ID_ARMA)
	if not setcombat then
		print(("^1[RegisterExternalNPC] %s^7"):format(errorMessage or "Errore moveset."))
		return false
	end
	local existingIndex, existingData = FindRegisteredExternalNPC(EntityPed)
	if existingData then
		existingData.combatSet = setcombat
		existingData.Id_Arma = ID_ARMA
		existingData.stamina = existingData.stamina or 100
		existingData.level = existingData.level or 1
		existingData.posbase = GetEntityCoords(EntityPed)
		existingData.lastpos = GetEntityCoords(EntityPed)

		FightAttribute(EntityPed)
		handleNemico(existingData, EntityPed)

		print(("^2[RegisterExternalNPC] NPC %s aggiornato con arma ID %s.^7"):format(EntityPed, ID_ARMA))
		return true
	end
	local coords = GetEntityCoords(EntityPed)
	local buf = {
		p = EntityPed,
		combatSet = setcombat,
		stamina = 100,
		level = 1,
		lotto = false,
		missionID = 0,
		sfidante = 1,
		posbase = coords,
		colpi = 0,
		weapEnemy = nil,
		timing = nil,
		Id_Arma = ID_ARMA,
		sword_obj = nil,
		voice = math.random(1, 2),
		lastpos = coords,
		checktimer = 0,
		externalNPC = true
	}
	FightAttribute(EntityPed)
	table.insert(MioNemico, buf)
	handleNemico(buf, EntityPed)
	print(("^2[RegisterExternalNPC] NPC %s registrato con arma ID %s (%s).^7"):format(
		EntityPed,
		ID_ARMA,
		SwordList[ID_ARMA].Name or "Unknow Sword"
	))
	return true
end
exports("RegisterExternalNPC", RegisterExternalNPC)
-- HOW TO USE? exports["striano_combat"]:RegisterExternalNPC(	PED_VARIABLE	, 15) -- id weapon 15 in combat_Weapons.lua it's [ Viking Sword ]

local function UnregisterExternalNPC(EntityPed, deletePed)
	EntityPed = tonumber(EntityPed)
	if not EntityPed or EntityPed == 0 then
		print("^1[UnregisterExternalNPC] EntityPed non valido.^7")
		return false
	end
	for i = #MioNemico, 1, -1 do
		local data = MioNemico[i]
		if data.p == EntityPed then
			if data.sword_obj and DoesEntityExist(data.sword_obj) then
				DeleteEntity(data.sword_obj)
			end
			table.remove(MioNemico, i)
			if deletePed and DoesEntityExist(EntityPed) then
				DeleteEntity(EntityPed)
			end
			print(("[UnregisterExternalNPC] NPC %s rimosso."):format(EntityPed))
			return true
		end
	end
	return false
end
exports("UnregisterExternalNPC", UnregisterExternalNPC)
-- HOW TO USE? exports.striano_combat:UnregisterExternalNPC(	PED_VARIABLE	) -- Use true as last argue to delete also the Ped, if you let it nil Ped will be not deleted, just stop fight with you!

-- YOU WANT A FAST CAST SPELL? UNCOMMENT THIS AND COMMENT THE FUNCTION UP!
function checkCaster(idSpell, lastTime)
	return 450
end

function canOpenGrimorie()
	if GetResourceState('striano_inventory') == 'started' then
		if exports.skinchanger:menuaperto() then return false end
		if exports.striano_editor:stoposizionando() or exports.striano_editor:editorattivo() then return false end
		if exports.striano_editor:eInteractPos() ~= nil then return false end
		if exports.striano_boat:getMyBoat() ~= nil then return false end
		if exports.striano_inventory:isopen() or exports.striano_inventory:secchio() ~= nil then 
			return false
		else
			return true
		end
	else
		return true
	end
end

function GetMyHorseCustom()
	if GetResourceState('striano_ridehorse') ~= 'started' then return false end
	return exports.striano_ridehorse:myhorse()
end

function canPressSpace()
	if exports.striano_ridehorse:GetMyHorse() ~= nil then return false end -- DELETE THIS LINE IF YOU DONT HAVE striano_ridehorse
	return true
end