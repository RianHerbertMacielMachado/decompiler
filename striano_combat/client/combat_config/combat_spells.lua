-- PLEASE FOR THE WAND SYSTEM USE THESE:
-- ANIMATIONS:
	-- a="export@nib@wizardsv_wand_attack_1_run"
	-- b="nib@wizardsv_wand_attack_1_run"
-- SOUND TO PUT IN rechargeSound:
	-- shareSound("sounds/striano_combat/magic/basicWandAttack_"..math.random(1,3), 0.1, PlayerPedId(), 7.0) 
	
function GetSpellById(id)
	for _,v in ipairs(Spell_List) do
		if tonumber(v.id)==tonumber(id) then return v end
	end
	return nil
end

exports('getSpellList',function()
	return Spell_List
end)

exports('getSpellList_ID',function(id)
	return GetSpellById(id)
end)

explosionOnUltrafire = false

-- THIS IS STILL WORK IN PROGRESS PLEASE DO NOT TOUCH, but of course you can try it and let me know all the idea you have about it! <3
-- With this system every spell will be different, dinamyc and easy to setup and create new one!
-- At moment all players will cast this spell, in the next updates every player will have own spell list!

Spell_List = {
	-- SPELL 1
	{
		id=1, description = 'A powerfull bolt damage.', cooldown = 6000, manaCost = 10,
		name="Boltlight",
		a="flyingmage_attack_05",b="flyingmage_attack_05_clip", animSpeed=2.0,
		attackat=0.75, -- This means when the spell must be casted!
		delHP=50, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=10.0,
		rangeDamage=2.5,
		fxID=nil, fxTab={a="des_tv_smash", b="ent_sht_electrical_box_sp", s=5.5},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.9,c={0.0, 0.8, 1.8}} },
		customDistCam=-1.5,
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			-- local link = "sounds/striano_combat/magic/spellcharge.mp3" exports.xsound:PlayUrlPos("spellcharge", link, 0.3, pos)
			shareSound("sounds/striano_combat/magic/spellcharge", 0.15, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			-- local link = "sounds/striano_combat/magic/bigwind.mp3" exports.xsound:PlayUrlPos("bigwind", link, 0.3, pos)
			shareSound("sounds/striano_combat/magic/bigwind", 0.1, PlayerPedId(), 7.0)
		end,
		onHitID=9, customSizeHit=25,
	},
	
	-- SPELL 2
	{
		id=2, description = 'A magic fireball.', cooldown = 7000, manaCost = 10,
		name="Fireball",
		a="dbz@silkteam",b="kameha", animSpeed=1.5, -- 1.0 default!
		attackat=0.53, -- This means when the spell must be casted!
		delHP=70, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=15.0,
		rangeDamage=3.5,
		fxID=nil, fxTab={a="core", b="ent_amb_torch_fire", s=1.0},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.9} }, -- scr_powerplay sp_powerplay_beast_appear_trails
		customSize=1.0,
		customDistCam=-1.5,
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spellcharge", 0.15, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/bigwind", 0.1, PlayerPedId(), 7.0)
		end,
		endfunc=function()
			Wait(55)
			local ped = PlayerPedId()
			ClearPedSecondaryTask(ped) ClearPedTasks(ped) ecc() ResetStrafe(ped) Wait(25)
			faiAnim("hit_react_heavy_front_knockback_stagger", "hit_react_heavy_front_knockback_stagger_clip", 950, 1) 
			Wait(950) Scrocchia()
		end,
		onHitID=14, customSizeHit=15,
	},	
	
	-- SPELL 3!
	{
		id=3, description = 'Slow super fire but really damager.', cooldown = 15000, manaCost = 10,
		name="Ultrafire",
		a="dbzspirit2@silkteam",b="spiritbomb_2", animSpeed=2.5, -- 1.0 default!
		attackat=0.70, -- This means when the spell must be casted!
		delHP=150, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=20.0,
		rangeDamage=7.5,
		customDistCam=-2.5,
		fxID=nil, 
		fxTab={a="core", b="ent_amb_torch_fire", s=2.5},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.1} },
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spellcharge", 0.15, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/bigwind", 0.1, PlayerPedId(), 7.0)
		end,
		endfunc=function()
			Wait(55)
			local ped = PlayerPedId()
			ClearPedSecondaryTask(ped) ClearPedTasks(ped) ecc() ResetStrafe(ped) Wait(25)
			faiAnim("hit_react_heavy_front_knockback_stagger", "hit_react_heavy_front_knockback_stagger_clip", 950, 1) 
			Wait(950) Scrocchia()
		end,
		onHitID=14, customSizeHit=8,
		onHitCustomFunc=function()
			if DoesEntityExist(lastAROV) and explosionOnUltrafire then
				TriggerServerEvent('explosion:sync', GetEntityCoords(lastAROV), 6, 0.2, true, false, 0.0, 180.0)
			end
		end,
	},
	
	-- SPELL 4
	{
		id=4, description = 'A proibited spell very danger.', cooldown = 6500, manaCost = 5,
		name="Kevada",
		a="export@nib@wizardsv_wand_attack_1",b="nib@wizardsv_wand_attack_1", animSpeed=2.0, -- 1.0 default!
		attackat=0.75, -- This means when the spell must be casted!
		delHP=200, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=5.0,
		rangeDamage=7.5,
		customDistCam=-1.5,
		fxID=nil, 
		fxTab={a="scr_sum2_hal", b="scr_sum2_hal_rider_head_green", s=2.5},
		basicTrail = { {a="avalon_particles",b="avalon_magic_trail1", s=1.5}, {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.2} }, -- avalon_particles avalon_magic_trail1
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, PlayerPedId(), 15.0)
			shareSound("sounds/avadaa", 0.15, PlayerPedId(), 15.0)
			-- Wait(1800)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/bigwind", 0.1, PlayerPedId(), 15.0)
		end,
		onHitID=13, 
		customSizeHit=8,
		
		onHitCustomFunc=function()
			if DoesEntityExist(lastAROV) then
				TriggerServerEvent("PlayEffectServer", { a="scr_xs_props",b="scr_xs_exp_mine_sf", pos=GetEntityCoords(lastAROV) } )
			end
		end,
		
		propSpell=function()
			if wandObject == nil then 
				local ped = PlayerPedId()
				RequestModelStriano(`basicwand`)
				local c = GetEntityCoords(ped) wandObject = CreateObject(`basicwand`, c, true)
				SetEntityCollision(wandObject, false, false)
				local atp=0 while not DoesEntityExist(wandObject) and atp<100 do atp=atp+1 Wait(0) end
				if atp <= 100 then
					AttachEntityToEntity(wandObject, ped, GetPedBoneIndex(ped, 57005), 0.17,0.06,-0.01,29.5,-84.5,-38.0, true, true, false, true, 1, true)
				end
			end
		end
	},
	
	-- SPELL 5 (healer!)
	{
		id=5, description = 'Heal players.', cooldown = 9000, manaCost = 10,
		name="Healer Area",
		a="magic@motions_both_hands_lift_up", b="magic@motions_both_hands_lift_up_clip", animSpeed=0.6, -- 1.0 default!
		attackat=0.65, -- This means when the spell must be casted!
		delHP=0, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=5.0,
		customDistCam=-0.9,
		fxID=nil, 
		fxTab={a="scr_rcbarry1", b="scr_alien_teleport", s=0.4},	
		offsetEnt={0.48,0.37,0.005,0.0,0.0,0.0},boneEnt=24818,
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.1} },
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.2, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_7", 0.2, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			if pos ~= nil then 
				CastHealArea(10.0, 10, 10, 75, pos, false) -- radius, amount, ticks, interval, includeSelf, revive
			else
				print("Caster pos not detected, spell throw canceled!")
			end
		end,
	},
	
	-- HEAL AREA!
	{
		id=6, description = 'Heal and revive in area.', cooldown = 9000, manaCost = 10,
		name="Healer & Rev.",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default! -- a="export@nib@wizardsv_wand_attack_2", b="nib@wizardsv_wand_attack_2", animSpeed=1.5, -- 1.0 default!
		attackat=0.65, -- This means when the spell must be casted!
		delHP=0, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=5.0,
		customDistCam=-1.5,
		fxID=nil, 
		fxTab={a="scr_rcbarry1", b="scr_alien_teleport", s=0.4},	
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.1} },
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.2, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_7", 0.2, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			if pos ~= nil then 
				CastHealArea(10.0, 10, 10, 75, pos, true)
			else
				print("Caster pos not detected, spell throw canceled!")
			end
		end,
	},
	
	-- SPELL 7 (super jump!)
	{
		id=7, description = 'A spell to activate super jump and climber wall.', cooldown = 1000, manaCost = 1,
		name="Super Jump",
		a="dbzflight@landing1", b="flight_land_clip", animSpeed=1.5, -- 1.0 default!
		attackat=0.25, -- This means when the spell must be casted!
		-- pedAura={a="dbz_energy",b="energy_ball2", s=2.0}, -- DA USARE AD UN'ALTRA SPELL PIU' ADATTA!
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.2, PlayerPedId(), 7.0)
		end,
		-- diverso ~
		finalfunc=function()
			if not exports.striano_combat:checksuperjump() then
				local m, s = exports['striano_combat']:GetTimeLeft()
				if s > 0 or m > 0 then
					print("You have alredy a timer spell active?")
					return
				end

				local ped = PlayerPedId()
				if GetEntityModel(ped) ~= GetHashKey("WereWolf_Baruk_Kiml") then
					exports['striano_combat']:StartTimer(0, TIMER_SUPERJUMP, 'endSuperJump')
				end

				exports.striano_combat:startsuperjump()

				TriggerServerEvent("PlayEffectEnt", {
					a="scr_ba_bb",
					b="scr_ba_bb_plane_smoke_trail",
					ent=PedToNet(ped),
					s=0.15,
					c=vector3(0.9, 0.0, 10.0),
					o=0.1,
					timer=550
				})

				shareSound("sounds/striano_combat/magic/spells/spell_16", 0.2, ped, 1.0)
			else
				exports['striano_combat']:StopTimer()
				exports.striano_combat:stopsuperjump()
			end
		end
	},
	-- SPELL 8 (super speed!)
	{
		id=8, description = 'A spell to activate super speed.', cooldown = 1000, manaCost = 1,
		name="Super Speed",
		a="dbzflight@landing1", b="flight_land_clip", animSpeed=1.5, -- 1.0 default!
		attackat=0.3, -- This means when the spell must be casted!
		-- pedAura={a="scr_sum2_hal",b="scr_sum2_hal_rider_head_green", s=1.5}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_14", 0.1, PlayerPedId(), 3.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 3.0)
		end,
		startfunc=function()
			-- print("Start func!")
			if not SuperSpeed then 
				local ped = PlayerPedId()
				TriggerServerEvent("PlayEffectEnt", { a="scr_ba_bb",b="scr_ba_bb_plane_smoke_trail", ent=PedToNet(ped), s=0.15, o=0.05 } )
			end
		end,
		finalfunc=function()
			ToggleSuperSpeed()
		end,
	},
	
	-- SPELL 9 (Invisibility!)
	{
		id=9, description = 'A spell to activate invisibility.', cooldown = 1000, manaCost = 1,
		name="Invisibility",
		a="silk_air_break@animation", b="air_break_clip", animSpeed=1.5, -- 1.0 default!
		attackat=0.75, -- This means when the spell must be casted!
		pedAura={a="scr_srr_hal",b="scr_srr_hal_ghost_haze", s=0.7},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.2, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.2, PlayerPedId(), 7.0)
		end,
		finalfunc=function()
			if not myInvisible then 
				TriggerServerEvent("myInvis:start", GetPlayerServerId(PlayerId()))
			else
				StopInvisibility()
			end
		end,
	},
	
	-- SPELL 10 (Freezer!)
	{
		id=10, description = 'A powerfull spell to freeze everyone touch the bolt.', cooldown = 1000, manaCost = 1,
		name="FreezBolt",
		a="magic@motions_left_hand_crush",b="magic@motions_left_hand_crush_clip", animSpeed=2.0, -- 1.0 default!
		attackat=0.5, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=30.0,
		rangeDamage=2.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=18905,
		fxID=nil, 
		fxTab={a="des_tv_smash", b="ent_sht_electrical_box_sp", s=5.5},
		basicTrail = { {a="des_tv_smash",b="ent_sht_electrical_box_sp", s=2.4}, {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.9}, {a="cut_family4",b="cs_fam4_juice_pour", s=10.9} }, -- cut_family4 cs_fam4_juice_pour
		customDistCam=-1.1,
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_4", 0.2, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_5", 0.2, PlayerPedId(), 7.0)
		end,
		endfunc=function()
			local ped = PlayerPedId()
			Wait(25)
			ClearPedSecondaryTask(ped)
			ClearPedTasks(ped)
			Wait(222)
			ResetStrafe(PlayerPedId())
		end,
		finalfunc=function(pos)
			FreezeArea(2.5, pos) -- radius
		end,
		onHitID=9, customSizeHit=15,
	},
	
	-- SPELL 11 (Poison)
	{
		id=11, description = 'A fast spell.', cooldown = 1000, manaCost = 1,
		name="Poison",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default!
		attackat=0.65, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=30.0,
		rangeDamage=2.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=24818, -- SE COMMENTATO PRENDE BONE 57005
		fxID=nil, 
		fxTab={a="cut_family4", b="cs_fam4_juice_pour", s=5.0},
		basicTrail = { {a="avalon_particles",b="avalon_magic_trail1", s=0.5} }, -- cut_family4 cs_fam4_juice_pour
		customDistCam=-1.2,
		pedAura={a="avalon_particles",b="avalon_magic_trail1"},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_8", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_6", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			if DoesEntityExist(lastAROV) then
				PoisonArea(2.5, GetEntityCoords(lastAROV)) -- radius
			end
		end,
		-- onHitID=9, customSizeHit=15,
		onHitTabFx={ {a="scr_sum2_hal", b="scr_sum2_hal_bike_flames_green", s=15.0}, },
	},
	
	-- SPELL 12 (Lumos!)
	{
		id=12, description = 'A spell to activate light on you.', cooldown = 1000, manaCost = 1,
		name="Lumoz",
		finalfunc=function()
			if not isLightActive then
				shareSound("sounds/striano_combat/magic/spells/spell_14", 0.1, PlayerPedId(), 3.0)
				local a,b="export@nib@wizardsv_magicsprint_end", "nib@wizardsv_magicsprint_end"
				faiAnim(a,b, 650, 49) Wait(25)
				SetEntityAnimSpeed(PlayerPedId(), a,b, 5.0)
				LightOn()
			else
				lastStartTimeLumos = 0
				shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 3.0)
				faiAnim("export@nib@wizardsv_wand_attack_b1", "nib@wizardsv_wand_attack_b1", 650, 49)
			end
		end,
		-- IF YOU WANT WAND IN HAND UNCOMMENT THIS!
		--[[
		propSpell=function()
			if wandObject == nil then 
				local ped = PlayerPedId()
				RequestModelStriano(`basicwand`)
				local c = GetEntityCoords(ped) wandObject = CreateObject(`basicwand`, c, true)
				SetEntityCollision(wandObject, false, false)
				local atp=0 while not DoesEntityExist(wandObject) and atp<100 do atp=atp+1 Wait(0) end
				if atp <= 100 then
					AttachEntityToEntity(wandObject, ped, GetPedBoneIndex(ped, 57005), 0.17,0.06,-0.01,29.5,-84.5,-38.0, true, true, false, true, 1, true)
				end
			end
		end
		]]
	},
	
	-- SPELL 13 (Leviosa!)
	{
		id=13, description = 'A spell to move and inspect objects.', cooldown = 1000, manaCost = 1,
		name="Levioza",
		a="export@nib@wizardsv_magicsprint_end", b="nib@wizardsv_magicsprint_end", animflag=49, animSpeed=6.5, -- 1.0 default!
		attackat=0.5, -- This means when the spell must be casted!
		pedAura={a="scr_srr_hal",b="scr_srr_hal_ghost_haze", s=0.7},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function()	
			LeviosaFunc()
		end,
		propSpell=function()
			if wandObject == nil then 
				local ped = PlayerPedId()
				RequestModelStriano(`basicwand`)
				local c = GetEntityCoords(ped) wandObject = CreateObject(`basicwand`, c, true)
				SetEntityCollision(wandObject, false, false)
				local atp=0 while not DoesEntityExist(wandObject) and atp<100 do atp=atp+1 Wait(0) end
				if atp <= 100 then
					AttachEntityToEntity(wandObject, ped, GetPedBoneIndex(ped, 57005), 0.17,0.06,-0.01,29.5,-84.5,-38.0, true, true, false, true, 1, true)
				end
			end
		end
	},
	-- SPELL 14 FLY!
	{
		id=14, description = 'A spell to fly as human.', cooldown = 1000, manaCost = 1,
		name="Fly",
		pedAura={a="scr_srr_hal",b="scr_srr_hal_ghost_haze", s=0.7},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function()	
			local ped = PlayerPedId()
			ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, ped, 3.0)
			faiAnim("missexile3", "ex03_train_roof_idle", -1, 2)
			exports.striano_combat:submex("Release to fly!")
			while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
			exports.striano_combat:submex("")
			FreezeEntityPosition(ped, false)
			StartSuperMan() -- TriggerEvent("start:fly")
		end,
	},
	-- SPELL 15
	{
		id=15, description = 'A spell to trasformation in a Wolf.', cooldown = 2000, manaCost = 5,
		name="Werewolf",
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb", s=2.9},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function()
			if not IsEntityPlayingAnim(PlayerPedId(), "missexile3", "ex03_train_roof_idle", 3) then
				local ped = PlayerPedId()
				ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
				shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, ped, 7.0)
				faiAnim("missexile3", "ex03_train_roof_idle", -1, 2)
				exports.striano_combat:submex("Release to transform!")
				while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
				exports.striano_combat:submex("")
				local model = GetEntityModel(PlayerPedId())
				if model == GetHashKey("WereWolf_Baruk_Kiml") then
					-- COME BACK HUMAN!
					if GetResourceState('striano_core') == 'started' then
						TriggerEvent('no1-playerped:client:ResetPlayerPed') 
					else
						ResetPlayerPed()
					end
					shareSound("sounds/striano_combat/magic/spells/spell_1", 0.1, PlayerPedId(), 7.0)

					genGrunt()
					stopSuperSpeed()
					-- PlayEffect("scr_sm_trans", "scr_sm_trans_smoke", GetEntityCoords(PlayerPedId()), 0.8, 0.3)
					TriggerServerEvent("PlayEffectEnt", { a="scr_sm_trans",b="scr_sm_trans_smoke", ent=PedToNet(PlayerPedId()), s=1.0, c=vector3(0.0, 0.0, 0.0), o=0.07 } )
					if myLastSword > 0 then 
						mySword = myLastSword
						exports.striano_combat:fodera2()
						myLastSword = 0 
						myWStyle = SwordList[mySword].st
					end
					
					Wait(950)
					
					FreezeEntityPosition(PlayerPedId(), false)
					faiAnim("dbzflight@landing1", "flight_land_clip", 1500, 2)
					ResetMyHealth(PlayerPedId())
					exports.striano_combat:fodera()
				else
					-- WEREWOLF TRANSFORMATION!
					sexWas = GetEntityModel(PlayerPedId())
					DeleteAllAttached()
					delBowCam()
					SetPlayerPed("WereWolf_Baruk_Kiml")
					
					CombatActive = false
					Wait(25)
					myLastSword = mySword
					if GetResourceState('striano_inventory') == 'started' then TriggerEvent("inv3d:clearWeaponSlot") end
					exports.striano_combat:fodera()
					
					mySword = GetSwordIdByName("Knuckle: Berseker") -- ACTIVATE WEREWOLF FIGHT! KNUCKLE THAT IN combat_weapons.lua it's ID 48 in table SwordList list!
					myWStyle = SwordList[mySword].st
					
					-- PlayEffect("scr_sm_trans", "scr_sm_trans_smoke", GetEntityCoords(PlayerPedId()), 0.8, 0.3, vector3(0.0, 0.0, 0.0))
					TriggerServerEvent("PlayEffectEnt", { a="scr_sm_trans",b="scr_sm_trans_smoke", ent=PedToNet(PlayerPedId()), s=0.5, c=vector3(0.0, 0.0, 0.0), o=0.05 } )
					
					Wait(950)
					
					local nome = "sounds/striano_wolf/wolf" 
					local link = nome..".mp3" 
					TriggerServerEvent('wolfsound:playPos', {
					  id     = nome,
					  url    = link,
					  pos    = GetEntityCoords(PlayerPedId()),
					  volume = 0.9,
					  radius = 25.0,
					  loop   = false
					})
					
					local aa="melee@wfire@beast_werewolf_animset" local bb="wfire_wmg_were_beast_hyper_howl_taunt_clip"
					faiAnim(aa,bb, 2000, 2)
					FreezeEntityPosition(PlayerPedId(), false)
					exports.striano_combat:startsuperjump()
					activeSuperSpeed()
					
					Wait(25)
					ResetMyHealth(PlayerPedId()) -- PLEASE CHANGE THIS WITH YOUR OWN HEALTH SYSTEM!!!
					
					Wait(2950)					
					exports.striano_combat:randWolfSound()
				end
			end
		end,
	},
	-- SPELL 16
	{
		id=16, description = 'A spell to start a random wolf sound.', cooldown = 1000, manaCost = 1,
		name="Wolf Sound",
		finalfunc=function()
			AnimBark()
			exports.striano_combat:randWolfSound()
		end,
	},
	-- SPELL 17
	{
		id=17, description = 'A spell to wolf howl.', cooldown = 1000, manaCost = 1,
		name="Wolf Howl", -- ululato awl owl
		finalfunc=function()
			WolfHulu()
		end,
	},
	-- SPELL 18
	{
		id=18, description = 'A spell to move like a Werewolf.', cooldown = 1000, manaCost = 1,
		name="Wolf Mountain",
		pedAura={a="scr_srr_hal",b="scr_srr_hal_ghost_haze", s=0.7},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_1", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function()
			local ped = PlayerPedId()				
			-- local model = GetEntityModel(ped)
			-- if model == GetHashKey("WereWolf_Baruk_Kiml") then
				ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
				shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, ped, 3.0)
				faiAnim("missexile3", "ex03_train_roof_idle", -1, 2)
				exports.striano_combat:submex("Release to walk like wolf mountain!")
				while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
				exports.striano_combat:submex("")
				TriggerEvent("attivaLupo")
				exports.striano_combat:stopsuperjump()
			-- end
		end,
	},
	-- SPELL 19 (You need striano_ridehorse!)
	{
		id=19, description = 'A spell to become a crow.', cooldown = 1000, manaCost = 1, attackat=0.55,
		a="taxi_hail", b="hail_taxi", animflag=49,
		name="The Crow",
		finalfunc=function()
			TriggerEvent("trasformazioneAnimale")
		end,
	},
	
	-- SPELL 20 (Make a ragdoll to a player that hitted with this spell)
	{
		id=20, description = 'A spell to make lose controls of legs on victim hitted.', cooldown = 2500, manaCost = 1,
		name="Rictus",
		a="magic@motions_left_hand_crush",b="magic@motions_left_hand_crush_clip", animSpeed=2.0, -- 1.0 default!
		attackat=0.5, -- This means when the spell must be casted!
		moreSpeed=30.0,
		rangeDamage=2.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=18905,
		fxID=nil, 
		fxTab={a="core", b="proj_laser_enemy", s=0.3},
		basicTrail = { {a="des_fib_floor",b="ent_ray_fbi5a_ramp_metal_imp", s=5.0}, {a="core",b="exp_grd_flare", s=1.5}, {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.5,c={10.0, 0.0, 0.0}} }, -- cut_family4 cs_fam4_juice_pour
		customDistCam=-1.1,
		-- pedAura={a="core",b="proj_flare_fuse_fp", s=5.0}, -- silk_dbz_aura_elec aura_elec_rgb		
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_4", 0.3, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			genGrunt()
			shareSound("sounds/striano_combat/magic/spells/spell_5", 0.3, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			RagdollArea(2.5, pos) -- radius
		end,
		onHitTabFx={ {a="des_fib_floor", b="ent_ray_fbi5a_ramp_metal_imp", s=15.0}, {a="wpn_flare", b="proj_heist_flare_trail", s=5.0}, },       
	},
	-- SPELL 21 (Agua Normal)
	{
		id=21, description = 'A spell faster.', cooldown = 1000, manaCost = 1,
		name="Agua",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default!
		attackat=0.55, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=30.0,
		rangeDamage=5.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=18905, -- SE COMMENTATO PRENDE BONE 57005
		fxID=nil, 
		fxTab={a="core", b="ent_sht_water", s=1.0},      
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.5,c={0.0, 0.8, 1.8}} }, -- cut_family4 cs_fam4_juice_pour
		customDistCam=-1.1,
		pedAura={a="cut_trevor1",b="cs_trev1_ankle_water"},       		
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_8", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_6", 0.1, PlayerPedId(), 7.0)
		end,
		onHitTabFx={ {a="core", b="exp_water", s=0.5}, },
		finalfunc=function(pos)
			wetArea(2.5, pos)
		end,
	},
	-- SPELL 22 (Wrath Storm)
	{
		id = 22,
		description = 'Summon a violent electric storm around you.',
		cooldown = 8000,
		manaCost = 12,
		name = "Wrath Storm",

		finalfunc = function()
			local ped = PlayerPedId()
			if not DoesEntityExist(ped) then return end

			local pos = GetEntityCoords(ped)

			ClearPedSecondaryTask(ped)
			ClearPedTasks(ped)
			Wait(25)

			AnimQuake(ped)

			-- Carica iniziale
			shareSound(
				"sounds/striano_combat/magic/spellcharge",
				0.15,
				ped,
				12.0
			)

			PlayEffect(
				"silk_dbz_aura_elec",
				"aura_elec_rgb",
				pos,
				3.5,
				2.0
			)

			PlayEffect(
				"core",
				"ent_sht_electrical_box",
				vector3(pos.x, pos.y, pos.z + 0.2),
				1.5,
				1.5
			)

			ShakeCamQB()

			Wait(2200)

			if not IsEntityPlayingAnim(
				ped,
				"magic@motions_both_hands_lift_up",
				"magic@motions_both_hands_lift_up_clip",
				3
			) then
				return
			end

			ShakeCamQ()

			shareSound(
				"sounds/striano_combat/magic/spells/spell_3",
				0.18,
				ped,
				15.0
			)

			CreateThread(function()
				local strikeCount = 8
				local radius = 7.0

				for i = 1, strikeCount do
					local angle = math.random() * math.pi * 2.0
					local distance = math.random() * radius

					local strikePos = vector3(
						pos.x + math.cos(angle) * distance,
						pos.y + math.sin(angle) * distance,
						pos.z
					)

					-- Effetto fulmine dall'alto
					PlayEffect(
						"core",
						"ent_sht_electrical_box",
						vector3(strikePos.x, strikePos.y, strikePos.z + 1.0),
						2.5,
						1.0
					)

					PlayEffect(
						"scr_reconstructionaccident",
						"scr_reconstruct_pipe_impact",
						strikePos,
						1.5,
						1.0
					)

					PlayEffect(
						"core",
						"exp_grd_elec_fire_sp",
						strikePos,
						1.2,
						1.0
					)

					shareSound(
						"sounds/striano_combat/magic/bass1",
						0.22,
						ped,
						15.0
					)

					-- Danno ad area su ogni fulmine
					earthQArea(2.5, strikePos)

					Wait(math.random(140, 260))
				end
			end)

			Wait(1800)

			ClearPedSecondaryTask(ped)
			ClearPedTasks(ped)
		end,
	},
	-- SPELL 23 (Agua Extreme)
	{
		id=23, description = 'A spell extreme water.', cooldown = 7500, manaCost = 1,
		name="Agua Extreme",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default!
		attackat=0.55, -- This means when the spell must be casted!
		delHP=15, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=30.0,
		rangeDamage=9.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=18905, -- SE COMMENTATO PRENDE BONE 57005
		fxID=nil, 
		fxTab={a="core", b="ent_sht_water", s=3.0},      
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.5,c={0.0, 0.0, 1.8}} }, -- cut_family4 cs_fam4_juice_pour
		customDistCam=-1.1,
		pedAura={a="cut_trevor1",b="cs_trev1_ankle_water"},       		
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_8", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_6", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			RagdollArea(9.5, pos) -- radius
			wetArea(9.5, pos)
		end,
		onHitTabFx={ {a="core", b="exp_water", s=2.0}, },
	},
	-- SPELL 24 (Earthquake)
	{
		id=24, description = 'A spell to create a earthquake.', cooldown = 5000, manaCost = 5,
		name="Earthquake",
		finalfunc=function()
			ShakeCamQB()
			local ped = PlayerPedId()
			ClearPedSecondaryTask(ped)
			ClearPedTasks(ped)
			Wait(25)
			AnimQuake(ped)
			local pos = GetEntityCoords(ped)
			shareSound("sounds/striano_combat/magic/spellcharge", 0.1, PlayerPedId(), 7.0)
			PlayEffect("silk_dbz_aura_elec", "aura_elec_rgb", pos, 3.3, 0.5)
			PlayEffect("scr_reconstructionaccident", "scr_reconstruct_pipe_impact", vector3(pos.x,pos.y,pos.z-1.0), 0.9, 1.0)
			PlayEffect("scr_reconstructionaccident", "scr_reconstruct_pipe_impact", vector3(pos.x,pos.y,pos.z-1.0), 0.5, 1.0)		
			PlayEffect("core", "env_dust_devil_urban_lrg", pos, 0.8, 1.0)		
			Wait(2350)
			-- fadeSpellSound()
			if IsEntityPlayingAnim(ped, "magic@motions_both_hands_lift_up", "magic@motions_both_hands_lift_up_clip", 3) then
				ShakeCamQ()
				shareSound("sounds/striano_combat/magic/spells/spell_3", 0.1, PlayerPedId(), 7.0)
				CreateThread(function()
					shareSound("sounds/striano_combat/magic/bass1", 0.3, PlayerPedId(), 7.0)
					PlayEffect("core", "ent_dst_rocks", pos, 7.0, 1.0)
					Wait(125)
					PlayEffect("scr_exile1", "scr_ex1_dust_impact", pos, 5.0, 1.0) -- fumo intorno
					PlayEffect("scr_reconstructionaccident", "scr_reconstruct_pipe_impact", pos, 2.0, 1.0) -- fumo quasi uguale a sopra
					PlayEffect("core", "ent_dst_rocks", pos, 7.0, 1.0)
					Wait(125)
					PlayEffect("core", "ent_dst_rocks_small", pos, 10.0, 1.0)
				end)
				earthQArea(5.5, pos)
				Wait(1000)
				ClearPedSecondaryTask(ped)
				ClearPedTasks(ped)
			end
		end,
	},
	-- SPELL 25 (Create Portal)
	{
		id=25, description = 'A spell to create Portal.', cooldown = 5000, manaCost = 5,
		name="Portal",
		finalfunc=function()
			local ped = PlayerPedId()
			ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, ped, 7.0)
			faiAnim("silk_air_break@animation", "air_break_clip", -1, 2)
			PlayEffect("silk_dbz_aura_elec", "aura_elec_rgb", GetEntityCoords(ped), 3.3, 0.5)
			exports.striano_combat:submex("Release to start Portal!")
			while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
			exports.striano_combat:submex("")
			TriggerEvent("startPortale")
		end,
	},
	-- SPELL 26 (Witcher)
	{
		id=26, description = 'A spell to call a souls of Witcher.', cooldown = 5000, manaCost = 5,
		name="Witcher",
		finalfunc=function()
			local ped = PlayerPedId()
			ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.1, ped, 7.0)
			faiAnim("missexile3", "ex03_train_roof_idle", -1, 2)
			TriggerServerEvent("PlayEffectEnt", { a="scr_sm_trans",b="scr_sm_trans_smoke", ent=PedToNet(ped), s=1.0, c=vector3(0.0, 0.0, 0.0), o=0.07 } )
			exports.striano_combat:submex("Release to transform!")
			while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
			exports.striano_combat:submex("")
			shareSound("sounds/striano_combat/magic/spells/spell_15", 0.1, ped, 7.0)
			genGrunt()
			AttivaWitcher()
		end,
	},	
	
	-- SPELL 27 (Fiamme)
	{
		id=27, description = 'A spell to generate fire from hands.', cooldown = 5000, manaCost = 5,
		name="Flames",
		finalfunc=function()
			shareSound("sounds/striano_combat/magic/spells/spell_12", 0.1, PlayerPedId(), 7.0)
			genGrunt()
			TriggerEvent("striano:Fiamme")
		end,
	},
	-- SPELL 28 (Laser)
	{
		id=28, description = 'A spell to throw a laser from hands.', cooldown = 5000, manaCost = 0,
		name="Laser",
		finalfunc=function()
			shareSound("sounds/striano_combat/magic/spells/spell_12", 0.1, PlayerPedId(), 7.0)
			genGrunt()
			TriggerEvent("striano:Laser")
		end,
	},
	
	-- SPELL 29 (Teletrasporto)
	{
		id=29, description = 'A spell to move around world with magic.', cooldown = 5000, manaCost = 0,
		name="Teleportation",
		finalfunc=function()
			shareSound("sounds/striano_combat/magic/spells/spell_11", 0.02, PlayerPedId(), 7.0)
			genGrunt()
			TriggerEvent("striano:Teletrasporto")
		end,
	},
	
	-- SPELL 30 (Cloner)
	{
		id=30, description = 'A spell to clone you.', cooldown = 5000, manaCost = 25,
		name="Cloner",
		finalfunc=function()
			local ped = PlayerPedId()
			FreezeEntityPosition(ped, false)
			ecc() ClearPedSecondaryTask(ped) ClearPedTasks(ped) Wait(0)
			shareSound("sounds/striano_combat/magic/spells/spell_2", 0.2, ped, 7.0)
			faiAnim("dbzflight@landing1", "flight_land_clip", -1, 2)
			exports.striano_combat:submex("Release to clone!")
			while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do Wait(0) end
			exports.striano_combat:submex("")
			genGrunt()
			-- The number 3 means how many peds to spawn!
			ClonerPed(15000, 3) -- use -1 instead of 15000 to not remove the clonerPeds, not reccomended, do not change if you dont need them!
			-- To get the table with peds inside use: return ClonerPed(-1, 3)
		end,
	},
	
	-- SPELL 31 (Quaker)
	{
		id=31, description = 'A spell to create an earthquake where casted.', cooldown = 3000, manaCost = 5,
		name="Quaker",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default! -- a="export@nib@wizardsv_wand_attack_3", b="nib@wizardsv_wand_attack_3", animSpeed=9.0, -- 1.0 default!
		attackat=0.65, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=5.0,
		rangeDamage=7.5,
		customDistCam=-1.5,
		fxID=nil, 
		fxTab={a="core", b="veh_trailer_petrol_spray", s=2.5},
		basicTrail = { {a="core_snow",b="cs_mich1_spade_dirt_trail", s=2.2}, {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.2, c={10.0, 10.0, 0.0} } }, -- avalon_particles avalon_magic_trail1
		-- pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb", s=3.0}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			genGrunt()
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_9", 0.1, PlayerPedId(), 7.0)
		end,
		onHitTabFx={ {a="scr_xs_props", b="scr_xs_guided_missile_trail", s=10.0}, },
		onHitCustomFunc=function()
			if DoesEntityExist(lastAROV) then
				-- shareSound("sounds/striano_combat/magic/accio_hit", 0.1, lastAROV, 15.0)
				TriggerServerEvent("PlayEffectServer", { a="veh_xs_vehicle_mods",b="exp_xs_mine_tar", pos=GetEntityCoords(lastAROV), s=1.0 } )	
				earthQArea(2.5, GetEntityCoords(lastAROV))
				RagdollArea(2.5, GetEntityCoords(lastAROV))
			end
		end,
		endfunc=function()
			Wait(25)
			ecc()
			Wait(222)
			ResetStrafe(PlayerPedId())
		end,
	},
	
	-- SPELL 32 (Accio)
	{
		id=32, description = 'A fast spell.', cooldown = 1000, manaCost = 1,
		name="Accho",
		a="magic@motions_lift_up_and_crush", b="magic@motions_lift_up_and_crush_clip", animflag=49, animSpeed=3.1, -- 1.0 default!
		attackat=0.55, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=150.0,
		rangeDamage=2.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=18905, -- SE COMMENTATO PRENDE BONE 57005
		fxID=nil, 
		fxTab={a="veh_khanjali", b="proj_xm_khanjali_grenade_trail", s=3.5},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=0.1,c={0.0, 2.2, 10.0}} }, 
		customDistCam=-1.2,
		-- pedAura={a="avalon_particles",b="avalon_magic_trail1"},
		rechargeSound=function(pos)
			genGrunt()
			shareSound("sounds/striano_combat/magic/accio_hit", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/accio", 0.1, PlayerPedId(), 7.0)
		end,
		endfunc=function()
			Wait(25)
			ecc()
			Wait(222)
			ResetStrafe(PlayerPedId())
		end,
		-- onHitID=9, customSizeHit=15,
		onHitTabFx={ {a="veh_khanjali", b="proj_xm_khanjali_grenade_trail", s=10.0}, },
	},
	
	-- SPELL 33
	{
		id=33, description = 'Boltlight dark.', cooldown = 1750, manaCost = 5,
		name="Boltdark",
		a="flyingmage_attack_05",b="flyingmage_attack_05_clip", animSpeed=2.0,
		attackat=0.75, -- This means when the spell must be casted!
		delHP=50, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=10.0,
		rangeDamage=3.5,
		fxID=nil, fxTab={a="des_tv_smash", b="ent_sht_electrical_box_sp", s=5.5},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.2,c={0.8, 0.8, 0.8}} },
		customDistCam=-1.5,
		pedAura={a="silk_dbz_aura_elec",b="aura_elec_rgb"}, -- silk_dbz_aura_elec aura_elec_rgb
		rechargeSound=function(pos)
			-- local link = "sounds/striano_combat/magic/spellcharge.mp3" exports.xsound:PlayUrlPos("spellcharge", link, 0.3, pos)
			-- shareSound("sounds/striano_combat/magic/spellcharge", 0.15, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			-- local link = "sounds/striano_combat/magic/bigwind.mp3" exports.xsound:PlayUrlPos("bigwind", link, 0.3, pos)
			shareSound("sounds/striano_combat/magic/bigwind", 0.1, PlayerPedId(), 7.0)
		end,
		onHitID=9, customSizeHit=25,
	},
	
	-- SPELL 34 (Pegaz)
	{
		id=34, description = 'A fast spell.', cooldown = 1000, manaCost = 1,
		name="Pegaz",
		a="grruzam_dual_guns_set", b="grruzam_dual_guns_charge_double_shoot_clip", animflag=49, animSpeed=1.1,
		attackat=0.65, -- This means when the spell must be casted!
		delHP=5, -- need to be number, how much hp you want delete to the NPC/Player when cast touch it?
		moreSpeed=30.0,
		rangeDamage=2.0,
		offsetEnt={0.0,0.0,0.0,0.0,0.0,0.0},boneEnt=24818, -- SE COMMENTATO PRENDE BONE 57005
		fxID=nil, 
		fxTab={a="cut_family4", b="cs_fam4_juice_pour", s=5.0},
		basicTrail = { {a="scr_powerplay",b="sp_powerplay_beast_appear_trails", s=1.2,c={0.9, 0.9, 0.0}} },
		customDistCam=-1.2,
		pedAura={a="avalon_particles",b="avalon_magic_trail1"},
		rechargeSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_8", 0.1, PlayerPedId(), 7.0)
		end,
		customSound=function(pos)
			shareSound("sounds/striano_combat/magic/spells/spell_6", 0.1, PlayerPedId(), 7.0)
		end,
		finalfunc=function(pos)
			if DoesEntityExist(lastAROV) then
				PoisonArea(2.5, GetEntityCoords(lastAROV)) -- radius
			end
		end,
		-- onHitID=9, customSizeHit=15,
		onHitTabFx={ {a="scr_xs_props", b="scr_xs_guided_missile_trail", s=10.0}, },
	},
}

AddEventHandler('endSuperJump', function()
	if GetResourceState('striano_combat') == 'started' then
		if not exports.striano_combat:checksuperjump() then 
			exports.striano_combat:stopsuperjump()
			SuperJumpDisactive()
			SetPedCanRagdoll(PlayerPedId(), true)
		end
	end
end)

-- EXAMPLE OF USAGE TIMER!
-- exports['striano_combat']:StartTimer(1, 30, 'endSuperJump', { param = 'timeup' })
-- AddEventHandler('testHandlerTimer', function(payload)
    -- print(('[TIMER END] param: %s'):format(payload and payload.param or 'n/d'))
-- end)