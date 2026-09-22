SwordNameToId = {}
CreateThread(function()
    for k, v in ipairs(SwordList) do
        if v.Name then
            SwordNameToId[string.lower(v.Name)] = k
        end
    end
end)

function GetSwordIdByName(name)
    if not name then return nil end
	-- print("Sword id detected: ", SwordNameToId[string.lower(name)])
	if SwordNameToId[string.lower(name)] then
		-- print(SwordNameToId[string.lower(name)])
		return SwordNameToId[string.lower(name)]
	else
		return 0
	end
end

RegisterNetEvent('striano_combat:setSwordByAdmin', function(idSword)
    local id = tonumber(idSword)
    if id and id >= 0 and id <= #SwordList then
        exports.striano_combat:strianosetweapon(id)
    end
end)

KnuckleName = "Knuckle" -- Insert the name of knuckle in your language that you will type in sword name that will activate a hand to hand combat!

-- THIS IS THE LIST OF SWORD / WEAPONS YOU WANT TO FIGHT!
-- DO NOT CHANGE THE ORDER AFTER THE PROJECT START OR PLAYERS WILL HAVE DIFFERENT SWORD SETTED!
SwordList = { -- it = item (but at moment it's not setup with, you need to create by yourself item if you need!)
	-- st = STYLE OF COMBAT WITH WEAPON, TAKED FROM TABLE FightWStyle!!!
	-- unholster = Animation id take from table unholsterlist
	-- holster = Animation id take from table holsterlist
	-- tgn = It's a weapon that cut? Working on a cut head funuction, but will work only on cuttable waeapon, for example make it false on BAT weapons kind. (How to check if you have a cutable sword? exports.striano_combat:getTagliente(), auto check if you have weapon.)
	-- trailsword={ {1.2,0.9,0.35, 0.5, 57005} } -- parameter 1,2,3 are offset of coord particles! the parameter (4) it's the size and the (5) it's the id from handeffect table. Parameter 6 it's the bone!
	-- Variable big=true means that it's an heavy weapon and the player cant defence himself with the weapon using CTRL LEFT, but the damage destroy enemy!
	-- dmg VARIABLE with SHIFT will be dmg/2, so if its 10, will be 15 damage with SHIFT while fighting! SHIFT + WAD it's a heavy hit!
	-- if you want Defence Roll with a weapon use the variable canRoll=true!
	
	--[[ WEAPON ID 1 ]] { dmg=10, st=1, trailPreset="silver", unholster=7,holster=7, tgn=true, Name="Machete", m="prop_ld_w_me_machette",att={0.095,0.005,-0.005,-63.8,13.8,-26.0}, bone=57005, posata1 = {0.34,-0.12,-0.1,7.5,-66.0,0.0}, boneposata1=24818 },
	{ dmg=7, st=20, unholster=3,holster=3, trailPreset="lime", tgn=true, canRoll=true, Name="Small Knife", m="w_me_dagger",att={0.11,0.01,-0.02,-71.0,-1.0,-52.0}, bone=57005, posata1 = {-0.16,0.03,-0.195,7.0,-103.4,93.0}, boneposata1=24816 },
	{ dmg=15, st=3, unholster=1,holster=1, trailPreset="lava", tgn=true, canRoll=true, Name="Katana Double", m="katana_striano", att={0.08,-0.035,-0.04,-65.2,79.200000000001,-6.0}, bone=57005, m2="katana_striano", att2={0.08,-0.06,0.05,-55.2,78.400000000001,-34.0}, bone2=18905, posata1 = {0.3,-0.12,-0.14,7.0,-52.0,0.0}, boneposata1=24818, posata2 = {0.28,-0.11,0.18, -11.0,-121.8,-196.0}, boneposata2=24818, trailsword={ {0.67,0.6,0.26, 0.5, 11, 57005} } },
	{ dmg=8, st=2, unholster=7,holster=7, tgn=true, Name="Katana Default", canRoll=true, m="prop_cs_katana_01", att={0.11,0.01,-0.02,-69.0,0.0,-41.0}, bone=57005, posata1 = {0.3,-0.12,-0.14,7.0,-52.0,0.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } }, 
	{ dmg=7, st=5, unholster=1,holster=1, tgn=true, Name="Double Axe", m="w_me_battleaxe", att={0.12, 0.03, 0.0,-57.9,23.7,-37.0}, bone=57005, m2="w_me_battleaxe", att2={0.11,0.02,0.0,-112.6,-9.2,-27.0}, bone2=18905, posata1 = {-0.03,-0.17,-0.11,0.9,35.8,188.0}, boneposata1=24818, posata2 = {-0.03,-0.2,0.04,-7.5,131.1,6.0}, boneposata2=24818 },
	{ dmg=5, st=28, unholster=1,holster=1, tgn=true, Name="Axe", m="prop_tool_fireaxe", heavstand={0.015,-0.215,-0.045,-72.0,46.0,-11.0}, att={0.055,-0.065,-0.06,67.6,0.0,152.0}, bone=57005, posata1 = {-0.445,-0.03,-0.3,12.8,71.2,12.0}, boneposata1=24818 },
	{ dmg=5, st=1, unholster=1,holster=1, tgn=true, Name="Small Axe", m="w_me_battleaxe", att={0.09,0.01,-0.03,-37.0,22.5,-28.0}, bone=57005, posata1 = {-0.07,-0.18,-0.02,-8.4,73.0,4.0}, boneposata1=24818 },
	{ dmg=3, st=28, unholster=1,holster=7, tgn=false, Name="Bat", m="w_me_bat", att={0.09,0.01,-0.03,-37.0,22.5,-28.0}, bone=57005, posata1 = {0.24,-0.14,-0.11,1.4,-56.8,22.0}, boneposata1=24818 },
	{ dmg=3, st=1, unholster=3,holster=2, tgn=true, Name="Cleaver", m="prop_cleaver", att={0.2,0.1,0.02,19.0,2.0,-28.0}, bone=57005, posata1 = {-0.22,-0.04,0.0,-105.2,-2.2,-96.0}, boneposata1=0 },
	--[[ WEAPON ID 10 ]] { dmg=2, st=1, unholster=3,holster=2, tgn=false, Name="Crowbar", m="w_me_crowbar", att={0.09,0.01,-0.03,-37.0,22.5,-28.0}, bone=57005, posata1 = {0.25,-0.03,-0.3,-2.0,-5.0,100.0}, boneposata1=0 },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Sword Special 1", m="alez_str_sword1", att={0.06,0.01,-0.03,-28.4,53.4,-45.0}, bone=57005, posata1 = {0.52,-0.08,0.18,7.0,-111.0,-8.0}, boneposata1=24818, trailsword={ {0.98,0.335,0.235, 1.5, 11, 57005} } },
	{ dmg=12, st=10, unholster=7,holster=7, tgn=true, Name="Sword Special 2", m="alez_str_sword2", att={0.09,0.0,-0.03,-65.5,75.5,26.0}, bone=57005, posata1 = {0.56,-0.08,-0.24,66.0,-4.0,-80.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Sword Special 3", m="alez_str_sword3", att={0.09,0.0,-0.03,-65.5,75.5,26.0}, bone=57005, posata1 = {0.56,-0.08,-0.24,66.0,-4.0,-80.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } },
	{ dmg=7, st=20, unholster=3,holster=3, tgn=true, Name="Switchblade", m="w_me_switchblade_b",att={0.1,0.02,-0.005,-48.2,44.2,-48.0}, bone=57005, posata1 = {-0.145,0.06,-0.205,11.0,-85.800000000001,-81.0}, boneposata1=24816, trailsword={ {0.1,0.02,-0.005, 0.2, 11, 57005} } },
	{ dmg=16, st=6, unholster=7,holster=7, tgn=true, Name="Viking Sword", m="sword",att={0.08,0.01,-0.05,46.5,36.5,-30.0}, bone=57005, posata1 = {0.42,-0.09,0.17,-83.5,68.0,186.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, } },
	{ dmg=2, st=1, unholster=1,holster=1, tgn=false, Name="Bat Blood", m="bat_bloody",att={0.07,-0.04,-0.1,37.0,21.5,-24.0}, bone=57005, posata1 = {0.33,-0.14,0.0,0.0,0.0,92.0}, boneposata1=24818 },
	{ dmg=3, st=1, unholster=7,holster=7, tgn=true, Name="Axe Survival", m="axe",att={-0.1,-0.1,-0.085,39.2,33.0,-45.0}, bone=57005, posata1 = {0.465,-0.15,0.0,-89.200000000001,84.800000000001,165.0}, boneposata1=24818 },
	{ dmg=15, st=10, unholster=7,holster=7, tgn=true, trailPreset="emerald", Name="Dark Sword", m="darksword",att={0.02,-0.06,-0.06,14.0,-1.0,-52.0}, bone=57005, posata1 = {0.56,-0.12,-0.17,96.0,-76.5,-8.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {1.2,0.9,0.35, 1.5, 11, 57005} } },
	{ dmg=8, st=28, unholster=7,holster=7, tgn=true, Name="Old Sword", m="vikingsword",att={0.07,0.01,-0.05,47.0,37.0,-36.0}, bone=57005, posata1 = {0.31,-0.2,0.09,-86.0,73.0,-4.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } },
	--[[ WEAPON ID 20 ]] { dmg=20, st=10, unholster=7,holster=7, tgn=true, Name="Runic Sword", m="runicsword",att={0.08,0.0,-0.03,29.0,29.5,-38.0}, bone=57005, posata1 = {0.39,-0.16,-0.03,-89.0,76.0,200.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } },
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana Custom", m="katana_striano", att={0.07,-0.03,-0.07,-78.5,110.5,48.0}, bone=57005, posata1 = {0.38,-0.11,-0.23,82.0,13.5,-84.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } }, 
	{ dmg=20, st=8, unholster=3,holster=2, tgn=true, Name="Val Knifes", canRoll=true, m="valknife", att={0.1,0.09,0.03,-78.5,87.0,114.0}, bone=57005, m2="valknife", att2={0.1,0.05,0.0,57.5,-73.0,110.0}, bone2=18905, posata1 = {-0.13,0.05,0.2,0.0,11.5,-8.0}, boneposata1=24816, posata2 = {-0.13,0.05,-0.21,6.0,-4.0,-8.0}, boneposata2=24816 },
	{ dmg=25, st=10, unholster=7,holster=7, tgn=true, Name="FF Sword", m="ffsword", heavstand={0.035,-0.23,-0.09,20.0,55.2,7.0}, att={-0.02,-0.07,-0.07,168.5,-4.5,132.0}, bone=57005, posata1 = {0.61,-0.16,0.16,-88.0,77.0,182.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {1.2,0.9,0.35, 0.5, 8, 57005} } },
	{ dmg=17, st=11, unholster=1,holster=1, tgn=true, Name="Double Blades", m="strianoblade", att={0.03,0.14,-0.53,-146.0,92.0,4.0}, bone=57005, m2="strianoblade", att2={-0.11,-0.35,-0.29,42.0,-59.0,-126.0}, bone2=18905, posata1 = {0.63,0.28,0.0,-66.0,-155.0,-242.0}, boneposata1=24818, posata2 = {0.6,-0.7,0.0,-32.0,3.0,-70.0}, boneposata2=24818 },
	{ dmg=20, st=13, unholster=7,holster=7, tgn=true, Name="Spear BoStaff", canRoll=true, m="striano_spear", trailRot = vec3(0.0, 0.0, 10.0), heavstand={-0.25,-0.94,-0.095,8.2,-13.6,-41.0}, att={-0.47,-0.57,-0.14,35.5,24.0,-62.0}, bone=57005, posata1 = {-0.99,-0.28,0.11,1.0,1.0,-104.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {0.94,0.86,0.18, 0.5, 11, 57005}, {-0.46,-0.56,-0.14, 0.5, 11, 57005} } },	
	{ dmg=18, st=6, unholster=1,holster=1, tgn=true, Name="Golden Axe", m="striano_goldenaxe",att={0.18,0.08,0.06,304.0,113.5,-48.0}, bone=57005, posata1 = {-0.2,-0.2,0.08,-92.0,13.0,184.0}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } },
	{ dmg=17, st=14, unholster=1,holster=1, tgn=true, Name="Rev Knifes", m="striano_revknife", att={0.1,0.04,-0.04,0.0,0.0,0.0}, bone=57005, m2="striano_revknife", att2={0.12,0.06,0.02,-13.0,-5.0,-20.0}, bone2=18905, posata1 = {0.38,-0.1,-0.12,78.0,111.0,-12.0}, boneposata1=24818, posata2 = {0.38,-0.1,0.14,80.0,67.0,8.0}, boneposata2=24818, trailsword={ {0.1,-0.69,-0.05, 0.5, 8, 57005},{0.1,-0.69,-0.05, 0.5, 11, 57005}, {-0.08,-0.58,0.14, 0.5, 8, 18905},{-0.08,-0.58,0.14, 0.5, 11, 18905} } },
	{ dmg=30, st=4, unholster=1,holster=1, tgn=true, Name="War Hammer", m="striano_warhammer",heavstand={-0.27,-0.95,-0.135,-79.000000000001,15.2,-18.0}, att={-0.16,-0.32,-0.32,-123.0,180.0,40.0}, bone=57005, big=true, posata1 = {-1.2,-0.22,-0.52,-1.0,63.0,0.0}, boneposata1=24818, trailsword={ {0.655,0.65,0.355, 2.5, 11, 57005}, {0.655,0.65,0.355, 2.5, 8, 57005} }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="boss_leftdodge",b="boss_leftdodge_clip"}, rgt={a="boss_rightdodge",b="boss_rightdodge_clip"}, }, },
	{ dmg=27, st=15, unholster=7,holster=7, tgn=true, Name="Evil Sword", m="evilswordmodel",att={0.105,0.01,-0.025,42.2,10.2,-7.0}, bone=57005, posata1 = {0.38,-0.115,0.0,81.200000000001,-67.4,180.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 1.0, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, {0.715,0.615,0.28, 1.0, "core","trail_splash_oil", 57005}   } },
	--[[ WEAPON ID 30 ]] { dmg=22, st=15, unholster=7,holster=7, tgn=true, Name="Grim Reaper", m="weapon_grim",att={0.05,-0.32,-0.23,58.5,5.0,170.0}, bone=57005, big=true, posata1 = {-0.92,-0.26,-0.27,-3.5,73.5,4.0}, boneposata1=24818, trailsword={ {0.65,0.61,0.32, 1.0, 11, 57005}, {0.65,0.61,0.32, 1.0, 8, 57005} }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, },
	{ dmg=21, st=9, unholster=7,holster=7, tgn=true, Name="Sword Fire", m="str_sword_c3",att={-0.324,-0.396,-0.198,-59.7,15.6,-23.7}, bone=57005, posata1 = {-0.774,0.027,-0.315,12.6,65.7,6.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 0.5, "scr_powerplay","sp_powerplay_beast_appear_trails", 57005}, {0.715,0.615,0.28, 1.0, "core","ent_amb_torch_fire", 57005}   } },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=false, Name="Zombie Arm", m="ch_prop_collectibles_limb_01a",att={0.325,0.105,-0.005,-30.6,-17.0,42.0},bone=57005, posata1 = {0.04,-0.145,-0.165,15.2,13.8,18.0},boneposata1=24818 },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Sword Lumy", m="espada_luminescente",att={0.135,0.045,0.0,-22.6,46.0,-20.0},bone=57005, posata1 = {0.315,-0.14,-0.195,5.2,-57.6,9.0},boneposata1=24818 },
	{ dmg=17, st=13, unholster=7,holster=7, tgn=true, Name="Black BoStaff", m="f_oln_spectrastaff", heavstand={0.09,-0.025,-0.035,-73.600000000001,33.6,-12.0}, att={0.09,-0.025,-0.035,-50.4,33.6,-44.0}, bone=57005, posata1={-0.095,-0.18,0.0,-8.2,103.8,-27.0},boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },	
	{ dmg=15, st=6, unholster=7,holster=7, tgn=true, Name="Black Sword", m="f_oln_yasuoblade",att={0.06,0.0,-0.025,-47.8,24.2,-27.0},bone=57005, posata1 = {0.37,-0.17,0.1,1.8,-113.8,4.0},boneposata1=24818 },
	{ dmg=18, st=6, unholster=7,holster=7, tgn=true, Name="Saw Sword", m="str_sword_c4",att={0.081,0.009,-0.072,0.0,-33.9,148.5},bone=57005, posata1 = {0.558,-0.225,-0.099,15.3,16.8,-98.099999999999},boneposata1=24818 },
	{ dmg=15, st=6, unholster=7,holster=7, tgn=true, Name="Caos Cutter", m="phobosbladeofcaos_01",att={0.11,0.01,-0.03,-61.2,0.0,-31.0},bone=57005, posata1 = {0.335,-0.11,-0.145,8.2,-63.4,0.0},boneposata1=24818 },	
	{ dmg=12, st=13, unholster=7,holster=7, tgn=true, Name="Dark BoStaff", m="m24_1_prop_m41_zombiestaff_01a", heavstand={0.155,0.19,-0.03,-85.800000000001,1.6,-16.0}, att={0.25,0.19,0.005,-77.800000000001,1.6,-38.0}, bone=57005, posata1={-0.205,-0.185,0.005,-9.6,109.2,1.0},boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 0.5, "scr_agencyheist","sp_fire_trail", 57005}, }, },	
	{ dmg=12, st=7, unholster=7,holster=7, tgn=true, Name="Rose Sword", m="w_me_espadaperse",att={0.105,-0.03,-0.03,-74.400000000001,-9.6,-33.0},bone=57005, posata1 = {0.305,-0.12,-0.055,8.0,-87.800000000001,-4.0},boneposata1=24818 },		
	--[[ WEAPON ID 40 ]] { dmg=18, st=7, unholster=7,holster=7, tgn=true, Name="Drudic Sword", m="w_me_fantasysword",att={0.085,0.005,-0.015,-63.4,10.0,-25.0},bone=57005, posata1 = {0.305,-0.12,-0.055,8.0,-87.800000000001,-4.0},boneposata1=24818 },		
	{ dmg=16, st=6, unholster=7,holster=7, tgn=true, Name="Medieval Sword", m="weapon_ssmedievalat",att={0.15,0.035,0.0,-62.0,9.6,-52.0},bone=57005, posata1 = {0.265,-0.14,-0.07,4.4,-66.0,10.0},boneposata1=24818 },
	{ dmg=16, st=13, unholster=7,holster=7, tgn=true, Name="Green Sword", m="str_sword_c2", att={0.018,-0.135,-0.063,110.7,7.5,-24.0}, bone=57005, posata1={0.738,-0.216,-0.117,9.9,87.3,11.1},boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },	
	{ dmg=5, st=1, unholster=7,holster=7, tgn=false, lessdmg=15, Name="Wood Sword", m="strianowoodsword",att={0.175,0.075,0.025,-46.4,21.0,-34.0},bone=57005, posata1 = {0.175,-0.15,-0.055,4.6,-77.600000000001,4.0},boneposata1=24818 },	
	{ dmg=15, st=14, unholster=1,holster=1, tgn=true, Name="Double Vikings", m="vikingsword", att={0.099,0.027,-0.018,33.0,34.5,-17.1}, bone=57005, m2="runicsword", att2={0.072,0.0,0.0,-4.2,-0.6,-28.50}, bone2=18905, posata1 = {0.405,-0.117,-0.216,86.1,-69.6,160.8}, boneposata1=24818, posata2 = {0.378,-0.171,0.0,-90.899999999999,75.6,7.5}, boneposata2=24818 },
	-- KNUCKLE ---> THIS ARE TO ENABLE HAND TO HAND COMBAT!
	{ dmg=12, st=16, unholster=3,holster=3, tgn=false, trailPreset="emerald", Name="Knuckle: Wingchu", m="w_me_knuckle_dmd",m2="w_me_knuckle_dmd",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	{ dmg=11, st=17, unholster=3,holster=3, tgn=false, trailPreset="ice", Name="Knuckle: Gruzman", m="w_me_knuckle_02",m2="w_me_knuckle_02",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	{ dmg=15, st=18, unholster=1,holster=3, tgn=false, trailPreset="ruby", Name="Knuckle: Drunkman", m="w_me_knuckle_pc",m2="w_me_knuckle_pc",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	{ dmg=12, st=19, unholster=3,holster=3, tgn=false, trailPreset="amethyst", Name="Knuckle: Berseker", m="w_me_knuckle_bg",m2="w_me_knuckle_bg",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	

	-- Tree like Crismon Desert LOL	(Video on TikTok @strianodev)
	{ dmg=100, st=4, unholster=3,holster=3, tgn=false, big=true, Name="Crismon Tree", m="prop_tree_log_01",heavyanim={a="missrappel", b="rope_idle"},heavstand={0.612,1.431,-0.72,-14.7,22.8,58.2},att={1.116,1.17,0.549,22.8,-25.2,43.2},bone=57005, posata1 = {1.449,-0.486,-0.36,0.0,0.0,-1.8},boneposata1=24818, trailsword={ {0.655,0.65,0.355, 2.5, 11, 57005}, {0.655,0.65,0.355, 2.5, 8, 57005} }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="boss_leftdodge",b="boss_leftdodge_clip"}, rgt={a="boss_rightdodge",b="boss_rightdodge_clip"}, } },	
	-- NEW DOUBLE BLADE COMBAT SET 01/04/2026
	--[[ WEAPON 50 ]] { dmg=10, st=21, unholster=3,holster=2, tgn=true, canRoll=true, trailPreset="pink", Name="KaramBit Dual", m="karambit_one", att={0.081,-0.081,-0.054,51.3,-19.8,-141.9}, bone=57005, m2="karambit_one", att2={0.099,-0.108,0.045,114.0,0.0,220.8}, bone2=18905, posata1 = {-0.081,-0.027,-0.207,-85.2,-9.9,1.8}, boneposata1=24816, posata2 = {-0.063,-0.054,0.189,-81.9,7.2,-0.9}, boneposata2=24816 },
	{ dmg=10, st=22, unholster=3,holster=2, trailPreset="cyan", tgn=true, canRoll=true, Name="Ancient Knifes (Combat-B)", m="knife", att={0.117,0.063,0.036,36.0,3.9,3.3}, bone=57005, m2="knife", att2={0.117,0.036,-0.009,-36.3,0.0,2.4}, bone2=18905, posata1 = {-0.018,0.09,0.189,-1.2,3.9,-67.8}, boneposata1=24816, posata2 = {-0.018,0.108,-0.216,4.5,3.9,-67.8}, boneposata2=24816 },
	-- NEW SAMURAI 06/04/2026
	{ dmg=20, st=23, unholster=3,holster=2, tgn=true, Name="Noda Sword (Combat-A)", canRoll=true, m="fury_sam_sword", att={0.1,-0.01,-0.025,-61.6,27.0,-34.0}, bone=57005, posata1 = {0.0,0.075,-0.225,-11.2,-80.000000000001,102.0}, boneposata1=24816, heavySword={frw={a="9cg_nodachi_dodge_forward",b="9cg_nodachi_dodge_forward_clip"}, bkw={a="9cg_nodachi_dodge_back",b="9cg_nodachi_dodge_back_clip"}, lft={a="9cg_nodachi_dodge_left",b="9cg_nodachi_dodge_left_clip"}, rgt={a="9cg_nodachi_dodge_right",b="9cg_nodachi_dodge_right_clip"}, delayer=750 }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },	
	{ dmg=22, st=24, unholster=7,holster=7, tgn=true, Name="Noda Sword (Combat-B)", canRoll=true, m="npds_sword_01", att={0.115,0.05,0.005,-50.2,1.2,-49.0}, bone=57005, posata1={0.345,-0.12,0.0,8.8,-82.200000000001,0.0},boneposata1=24818, heavySword={frw={a="9cg_nodachi_dodge_forward",b="9cg_nodachi_dodge_forward_clip"}, bkw={a="9cg_nodachi_dodge_back",b="9cg_nodachi_dodge_back_clip"}, lft={a="9cg_nodachi_dodge_left",b="9cg_nodachi_dodge_left_clip"}, rgt={a="9cg_nodachi_dodge_right",b="9cg_nodachi_dodge_right_clip"}, delayer=750 }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },		
	-- NEW SPEAR AND SWORD COMBAT 12/04/2026
	{ dmg=20, st=25, unholster=7,holster=7, tgn=true, Name="Striano Spear", m="striano_spear", trailRot = vec3(0.0, 0.0, 10.0), heavstand={-0.25,-0.94,-0.095,8.2,-13.6,-41.0}, att={-0.635,-0.515,-0.145,4.6,-14.4,-75.0}, bone=57005, posata1 = {-0.99,-0.28,0.11,1.0,1.0,-104.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {0.94,0.86,0.18, 0.5, 11, 57005}, {-0.46,-0.56,-0.14, 0.5, 11, 57005} } },	
	--[[ WEAPON ID 55 ]] { dmg=25, st=26, unholster=7,holster=7, trailPreset="gold", tgn=true, Name="Pirate Cut", m="piratecut_2", att={0.126,0.036,0.0,-39.9,192.6,2.4}, bone=57005, posata1 = {0.27,-0.126,0.0,-96.599999999999,74.7,1.2}, boneposata1=24818, heavySword={frw={a="randomsword_forward",b="randomsword_forward_clip"}, bkw={a="randomsword_jumpback",b="randomsword_jumpback_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {0.94,0.86,0.18, 0.5, 11, 57005}, {-0.46,-0.56,-0.14, 0.5, 11, 57005} } },

	-- { dmg=20, st=5, unholster=4,holster=6, tgn=true, Name="Dogma Mantis", trailsword={ {0.475,0.0,0.185, 0.5, 11, 57005}, {0.47,0.01,-0.185, 0.5, 11, 18905} }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, }, -- Mantis Blade (IF YOU WANT THIS WEAPON BUY HERE FROM DOGMA STUDIO: https://www.dogmastudio.cc/product/6631886)
	-- Pack by https://github.com/NukepugDesigns/
	{ dmg=15, st=13, unholster=7,holster=7, tgn=true, Name="Fury Fightstick", canRoll=true, m="fury_fightstick", trailRot = vec3(0.0, 0.0, 10.0), att={0.115,0.005,-0.02,80.200000000001,0.4,135.0}, bone=57005, posata1 = {0.12,-0.145,0.0,12.8,-81.000000000001,24.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {0.94,0.86,0.18, 0.5, 11, 57005}, {-0.46,-0.56,-0.14, 0.5, 11, 57005} } },	
	{ dmg=15, st=8, unholster=3,holster=2, tgn=true, Name="Fury Sai", canRoll=true, m="fury_sai", att={0.11,0.01,-0.005,-56.4,28.2,-26.0}, bone=57005, m2="fury_sai", att2={0.12,0.03,0.005,-110.2,-2.6,-43.0}, bone2=18905, posata1 = {-0.125,0.03,0.205,-73.400000000001,0.0,78.0}, boneposata1=24816, posata2 = {-0.105,0.035,-0.195,-100.4,0.0,78.0}, boneposata2=24816 },
	{ dmg=8, st=2, unholster=1,holster=1, tgn=true, Name="Fury Katana", canRoll=true, m="fury_sam_sword", att={0.1,-0.01,-0.025,-61.6,27.0,-34.0}, bone=57005, posata1 = {0.0,0.075,-0.225,-11.2,-80.000000000001,102.0}, boneposata1=24816, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } }, 	
	{ dmg=3, st=1, unholster=7,holster=7, tgn=true, Name="Fury Sword", canRoll=true, m="npds_sword_01", att={0.115,0.04,0.005,61.0,-12.0,128.0}, bone=57005, posata1 = {0.245,-0.115,0.0,9.6,-79.600000000001,0.0}, boneposata1=24818 },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Fury Sparta", canRoll=true, m="npds_sword_02", att={0.105,0.02,-0.01,-35.8,32.4,-15.0}, bone=57005, posata1 = {0.29,-0.09,-0.045,6.4,-76.800000000001,0.0}, boneposata1=24818 },

	-- WEAPON FOR THE JOB OF MINER!
	{ dmg=5, st=1, unholster=1,holster=1, tgn=true, Name="Pickaxe", m="prop_tool_pickaxe", att={0.06,-0.13,-0.06,-64.8,23.8,-10.0}, bone=57005, posata1 = {-0.455,-0.235,-0.145,-9.2,73.200000000001,-2.0}, boneposata1=24818 },
	-- NEW ZOMBIE COMBAT SET (useful for NPC in PvE) -- Very high damage but it's also very slow!
	--[[ WEAPON ID 62 ]] { dmg=80, st=27, unholster=3,holster=3, tgn=false, Name="Knuckle: Zombie Set", m="w_me_knuckle_dmd",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, posata1 = {0,0,0,0,0,0},boneposata1=24818 },	
	--[[ WEAPON ID 63 ]] { dmg=3, st=1, unholster=1,holster=7, tgn=false, Name="Wrench", m="w_me_wrench", att={0.125,0.05,0.0,-30.2,32.6,-25.0}, bone=57005, posata1 = {-0.09,-0.17,-0.14,-6.4,59.4,-8.0}, boneposata1=24818 },
	--[[ WEAPON ID 64 ]] { dmg=20, st=29, unholster=7,holster=7, tgn=true, Name="Spear Horse", m="medievalspear", trailRot = vec3(0.0, 0.0, 10.0), att={-0.105,-0.14,-0.16,55.4,1.6,128.0}, bone=57005, posata1 = {-1.335,-0.14,-0.405,-1.2,76.400000000001,96.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailsword={ {0.98,0.58,0.67, 0.5, 11, 57005} } },

	-- NEEEEEW 15/06/2026 FIGHT HAND TO HAND MY DEAR FRIEND <3 
	{ dmg=18, st=30, unholster=3,holster=3, tgn=false, trailPreset="holy", Name="Knuckle: Yakuza (A)", m="w_me_knuckle_dmd",m2="w_me_knuckle_dmd",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	{ dmg=18, st=31, unholster=3,holster=3, tgn=false, trailPreset="dragon", Name="Knuckle: Yakuza (B)", m="w_me_knuckle_02",m2="w_me_knuckle_02",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	{ dmg=18, st=32, unholster=3,holster=3, tgn=false, trailPreset="toxic", Name="Knuckle: Yakuza (C)", m="w_me_knuckle_pc",m2="w_me_knuckle_pc",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	--[[ WEAPON ID 68 ]] { dmg=18, st=33, unholster=3,holster=3, tgn=false, trailPreset="sapphire", Name="Knuckle: Yakuza (D)", m="w_me_knuckle_bg",m2="w_me_knuckle_bg",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },	
	
	--[[ WEAPON ID 69 ]] { dmg=12, st=6, unholster=7,holster=7, tgn=true, trailPreset="ice", Name="Witcher", m="aerondight_tex", att={-0.036,-0.216,-0.081,-12.9,0.0,150.6}, bone=57005, posata1 = {0.675,-0.072,0.036,-82.8,-103.8,-1.5}, boneposata1=24818 },
	--[[ WEAPON ID 70 ]] { dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Giant Sword", m="sword_obj", att={0.504,0.576,0.072,107.4,10.5,-36.9}, bone=57005, posata1 = {-0.054,-0.225,0.0,-5.1,49.2,2.1}, boneposata1=24818 },
	{ dmg=27, st=15, unholster=7,holster=7, tgn=true, Name="Saber", trailPreset="gold", m="saber",att={ 0.009,-0.216,-0.126,29.7,-39.9,53.7}, bone=57005, posata1 = {0.351,-0.171,0.0,-6.3,169.8,-0.3}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, trailswordFx={ {0.715,0.615,0.28, 1.0, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, {0.715,0.615,0.28, 1.0, "core","trail_splash_oil", 57005}   } },
	{ dmg=7, st=20, unholster=3,holster=3, trailPreset="holy", tgn=true, canRoll=true, Name="M9 Knife", m="m9_x",att={0.018,-0.081,-0.081,-29.4,21.3,156.0}, bone=57005, posata1 = {0.018,-0.081,-0.081,-29.4,21.3,156.0}, boneposata1=24816 },
	{ dmg=7, st=20, unholster=3,holster=3, trailPreset="poison", tgn=true, canRoll=true, Name="Triangle Knife", m="triangle_knife",att={0.045,-0.09,-0.045,-58.8,60.6,0.0}, bone=57005, posata1 = {0.063,0.018,0.162,1.5,-78.0,0.0}, boneposata1=24816 },
	{ dmg=7, st=20, unholster=3,holster=3, trailPreset="ice", tgn=true, canRoll=true, Name="Artes Knife", m="artesanal_faca",att={0.081,-0.027,-0.036,-30.6,20.4,162.6}, bone=57005, posata1 = {-0.09,0.018,0.207,1.8,14.4,-87.9}, boneposata1=24816 },
	{ dmg=7, st=4, unholster=3,holster=3, trailPreset="ice", tgn=true, canRoll=true, Name="Giant Gold Knife", m="dagger",att={0.045,-0.027,-0.072,-22.5,0.0,143.4}, bone=57005, posata1 = {0.261,-0.135,0.081,22.8,4.2,-88.8}, boneposata1=24818 },
	{ dmg=16, st=6, unholster=7,holster=7, tgn=true, trailPreset="blood", Name="Diabo Sword", m="curvesword",att={-0.009,-0.135,-0.081,-3.3,-18.0,141.9},bone=57005, posata1 = {0.576,-0.144,0.18,4.2,-15.6,-92.399999999999},boneposata1=24818 },
	{ dmg=16, st=6, unholster=7,holster=7, tgn=true, trailPreset="dragon", Name="Scimitarr", m="scimitarr",att={0.06,-0.07,-0.055,24.6,-74.400000000001,154.0},bone=57005, posata1 = {0.459,-0.144,-0.054,0.3,3.9,-88.8},boneposata1=24818 },
	-- Medieval Set
	{ dmg=5, st=28, unholster=1,holster=1, tgn=true, Name="Medieval Axe", m="striano_sword_low4", att={-0.054,-0.261,-0.117,-71.4,3.3,-26.4}, bone=57005, posata1 = {-0.783,-0.18,-0.09,-0.3,81.3,-11.7}, boneposata1=24818 },
	{ dmg=18, st=6, unholster=7,holster=7, tgn=true, Name="Medieval Sword", m="striano_sword_low1",att={-0.009,-0.198,-0.108,-63.0,15.3,-17.4},bone=57005, posata1 = {  0.531,-0.198,-0.171,-3.3,-66.3,3.3},boneposata1=24818 },
	{ dmg=17, st=10, unholster=7,holster=7, tgn=true, Name="Paladin Sword", m="striano_sword_low3",att={-0.036,-0.252,-0.099,-61.8,35.1,-10.8}, bone=57005, posata1 = {0.531,-0.144,-0.09,2.7,-76.5,0.0}, boneposata1=24818, trailsword={ {-0.036,-0.252,-0.099, 1.5, 11, 57005} } },
	{ dmg=12, st=6, unholster=7,holster=7, tgn=true, Name="Guardian Sword", m="striano_sword_low2", att={-0.144,-0.288,-0.117,-54.9,42.9,-18.0}, bone=57005, posata1 = {0.801,-0.126,-0.063,3.9,-81.3,3.6}, boneposata1=24818, trailsword={ {-0.144,-0.288,-0.117, 1.5, 11, 57005} } },
	{ dmg=5, st=1, unholster=1,holster=1, tgn=true, Name="Medival Hatchet", m="striano_sword_low5", att={-0.063,-0.207,-0.108,-64.5,20.4,-24.9}, bone=57005, posata1 = {-0.639,-0.225,0.162,-5.1,96.599999999999,-4.5}, boneposata1=24818 },
	-- MEDIEVAL PACK 2 25/07/2026
	{ dmg=5, st=28, unholster=1,holster=1, tgn=true, Name="Medieval Axe", m="axe01", att={-0.009,-0.144,-0.072,-56.1,70.2,8.1},bone=57005, posata1={-0.828,-0.225,-0.099,-4.2,83.1,0.0},boneposata1=24818 },
	{ dmg=18, st=6, unholster=1,holster=1, tgn=true, Name="Cutter Axe", m="axe02",att={0.009,-0.162,-0.09,-62.7,31.2,-9.9},bone=57005, posata1={-0.441,-0.18,0.153,-2.4,101.7,0.0},boneposata1=24818, trailsword={ {0.009,-0.162,-0.09, 1.5, 11, 57005} } },
	{ dmg=3, st=28, unholster=1,holster=7, tgn=false, Name="Medieval Bat", m="axe03", att={-0.018,-0.171,-0.081,-58.5,75.3,9.3},bone=57005, posata1={-0.684,-0.252,0.0,-6.3,88.2,37.2},boneposata1=24818 },
	{ dmg=3, st=1, unholster=3,holster=2, tgn=true, Name="Axe Killer", m="axe04", att={-0.045,-0.234,-0.108,-63.6,24.3,-25.2},bone=57005, posata1={-0.72,-0.243,-0.144,-6.0,79.8,0.0},boneposata1=24818 },
	{ dmg=100, st=4, unholster=3,holster=3, tgn=false, big=true, Name="Ultra Axe", m="axe05",att={0.054,-0.234,-0.189,-58.2,33.9,-17.4},bone=57005, posata1 = {-0.81,-0.243,-0.153,-5.1,80.4,0.0},boneposata1=24818, trailsword={ {0.054,-0.234,-0.189,-58.2, 0.5, 11, 57005} }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="boss_leftdodge",b="boss_leftdodge_clip"}, rgt={a="boss_rightdodge",b="boss_rightdodge_clip"}, } },	
	{ dmg=11, st=20, unholster=3,holster=3, trailPreset="dragon", tgn=true, canRoll=true, Name="Medieval Knife", m="dagger01",att={-0.009,-0.117,-0.045,-65.1,24.9,-25.5}, bone=57005, posata1 = {0.108,0.054,-0.162,0.0,-97.799999999999,75.3}, boneposata1=24816 },
	{ dmg=7, st=20, unholster=3,holster=3, trailPreset="lime", tgn=true, canRoll=true, Name="Medieval Knife", m="dagger01_2",att={0.054,-0.054,-0.036,-59.7,28.8,-13.2}, bone=57005, posata1 = {0,0,0,0,0,0}, boneposata1=0 },
	{ dmg=13, st=20, unholster=3,holster=3, tgn=true, canRoll=true, Name="Medieval Knife", m="dagger02_2",att={0.018,-0.099,-0.054,-57.3,36.0,-15.3},bone=57005, posata1 = {-0.009,-0.072,0.189,-81.6,0.0,73.5}, boneposata1=24816 },
	{ dmg=18, st=6, unholster=1,holster=1, tgn=true, Name="Cutter Knife", m="dagger02",att={-0.027,-0.171,-0.099,-56.7,37.5,-12.6},bone=57005, posata1={0.603,-0.126,0.027,6.6,-94.799999999999,-0.9},boneposata1=24818, trailsword={ {-0.027,-0.171,-0.099, 1.5, 11, 57005} } },
	{ dmg=20, st=6, unholster=7,holster=7, tgn=true, Name="Medieval Long Sword", m="longsword01",att={0.0,-0.144,-0.072,-63.9,22.2,-21.0},bone=57005, posata1 = {0.585,-0.09,-0.018,5.7,-89.4,0.0},boneposata1=24818 },
	{ dmg=22, st=10, unholster=7,holster=7, tgn=true, Name="Paladin Sword", m="striano_sword_low3",att={-0.036,-0.18,-0.081,-59.1,35.7,-15.9}, bone=57005, posata1 = {0.666,-0.081,-0.126,6.0,-79.2,0.0}, boneposata1=24818, trailsword={ {-0.036,-0.18,-0.081, 1.5, 11, 57005} } },
	{ dmg=30, st=4, unholster=1,holster=1, tgn=true, Name="Super Hammer", m="mace01",att={-0.153,-0.243,-0.09,-58.2,34.5,-19.8},bone=57005, big=true, posata1 = {-1.233,-0.261,-0.333,-3.6,73.2,-3.6}, boneposata1=24818, trailsword={ {-0.153,-0.243,-0.09, 1.5, 11, 57005}, }, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="boss_leftdodge",b="boss_leftdodge_clip"}, rgt={a="boss_rightdodge",b="boss_rightdodge_clip"}, }, },
	{ dmg=10, st=1, unholster=1,holster=1, tgn=false, Name="Medieval Bat", m="mace02",att={-0.009,-0.18,-0.108,-55.2,59.4,4.2},bone=57005, posata1 = {-0.657,-0.279,-0.018,-7.8,88.5,34.2},boneposata1=24818 },
	{ dmg=10, st=1, unholster=1,holster=1, tgn=false, Name="Medieval Mace", m="mace03",att={-0.117,-0.234,-0.081,-61.2,32.4,-15.6},bone=57005, posata1 = {-0.963,-0.144,-0.081,0.0,81.9,0.0},boneposata1=24818 },
	{ dmg=17, st=10, unholster=7,holster=7, tgn=true, Name="Medieval Basic", m="sword01", att={0.009,-0.153,-0.09,-62.4,16.8,-18.9},bone=57005, posata1 = {0.666,-0.144,-0.225,2.7,-69.9,0.0},boneposata1=24818, trailsword={ {0.009,-0.153,-0.09,-62.4, 1.5, 11, 57005} } },
	{ dmg=22, st=10, unholster=7,holster=7, tgn=true, Name="Medieval Knight", m="sword02", att={-0.045,-0.162,-0.063,-66.0,26.7,-28.5},bone=57005, posata1 = {0.648,-0.108,-0.171,3.0,-75.0,0.0},boneposata1=24818 },
	{ dmg=15, st=10, unholster=7,holster=7, tgn=true, Name="Pirate Sword", m="sword03", att={0.018,-0.072,-0.045,-57.9,34.5,-19.5},bone=57005, posata1 = {0.513,-0.099,-0.126,5.4,-78.6,0.0},boneposata1=24818 },
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana BG", m="striano_katana_c1", att={0.02,-0.06,-0.03,-49.359999999999,163.28,124.5}, bone=57005, posata1 = {0.459,-0.126,-0.063,-11.4,181.2,-2.7}, boneposata1=24818, trailsword={ {0.02,-0.06,-0.03, 1.1, 11, 57005} } }, 
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana Sensei", m="striano_katana_c2", att={0.153,0.126,0.018,-27.0,82.2,193.8}, bone=57005, posata1 = {0.135,-0.153,-0.099,54.0,124.2,95.699999999999}, boneposata1=24818, trailsword={ {0.153,0.126,0.018, 1.2, 11, 57005} } }, 
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana Samurai", m="striano_katana_c3", att={0.171,0.099,0.009,24.0,-39.0,-125.1}, bone=57005, posata1 = {0.324,-0.117,-0.072,0.0,0.0,2.7}, boneposata1=24818, trailsword={ {0.144,0.072,1.0408340855861, 1.3, 11, 57005} } }, 
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana King", m="striano_katana_c4", att={-0.036,-0.234,-0.108,-55.8,-31.2,56.1}, bone=57005, posata1 = {0.675,-0.216,-0.081,-14.4,0.0,-188.1}, boneposata1=24818, trailsword={ {0.67,0.6,0.26, 1.5, 11, 57005} } }, 
	{ dmg=15, st=7, unholster=7,holster=7, tgn=true, Name="Katana Custom", m="striano_katana_c5", att={0.18,0.099,0.045,-72.9,-44.7,58.8}, bone=57005, posata1 = {0.414,-0.171,-0.099,-24.0,0.0,172.5}, boneposata1=24818, trailsword={ {0.18,0.099,0.045, 1.5, 11, 57005} } }, 
	{ dmg=10, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 1", m="custom_bat_1", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=11, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 2", m="custom_bat_2", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=12, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 3", m="custom_bat_3", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=13, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 4", m="custom_bat_4", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=14, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 5", m="custom_bat_5", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=15, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 6", m="custom_bat_6", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=16, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 7", m="custom_bat_7", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=15, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 8", m="custom_bat_8", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=14, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 9", m="custom_bat_9", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=13, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 10", m="custom_bat_10", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=12, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 11", m="custom_bat_11", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=11, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 12", m="custom_bat_12", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=10, st=28, unholster=1,holster=7, tgn=false, Name="Custom Bat 13", m="custom_bat_13", att={0.009,-0.216,-0.117,-58.8,49.5,3.3},bone=57005, posata1={0.558,-0.207,0.045,-8.1,-97.199999999999,9.6},boneposata1=24818 },
	{ dmg=25, st=26, unholster=7,holster=7, tgn=true, Name="Fate Sword", m="str_sword_c1", att={-0.009,-0.135,-0.063,98.399999999999,-10.2,-27.9}, bone=57005, posata1 = {0.603,-0.225,-0.072,92.399999999999,-2.4,84.0}, boneposata1=24818, heavySword={frw={a="randomsword_forward",b="randomsword_forward_clip"}, bkw={a="randomsword_jumpback",b="randomsword_jumpback_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, },
	{ dmg=18, st=2, unholster=1,holster=1, tgn=true, Name="Titan Sword", canRoll=true, m="str_sword_c5", att={0.099,-0.036,-0.018,113.4,8.1,-24.6}, bone=57005, posata1 = {0.468,-0.126,-0.108,2.7,100.8,15.0}, boneposata1=24818, trailsword={ {0.099,-0.036,-0.018, 1.5, 11, 57005} } }, 	
	{ dmg=20, st=6, unholster=7,holster=7, tgn=true, Name="Angel Sword", m="str_sword_c6",att={-0.009,-0.117,-0.054,-56.7,34.8,-23.4},bone=57005, posata1 = {0.567,-0.153,-0.054,-2.7,-88.2,-11.1},boneposata1=24818 },
	{ dmg=25, st=10, unholster=7,holster=7, tgn=true, Name="Feral Sword", m="str_sword_c7", att={-0.054,-0.153,-0.09,-18.0,-0.9,147.3}, bone=57005, posata1 = {0.513,-0.225,0.0,102.3,78.3,15.0}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, },
	{ dmg=25, st=10, unholster=7,holster=7, tgn=true, Name="Souls Sword", m="str_sword_c9", att={0.027,-0.081,-0.054,-33.3,56.4,176.1}, bone=57005, posata1 = {0.423,-0.171,-0.063,20.1,30.6,-93.299999999999}, boneposata1=24818, heavySword={frw={a="wm_greatsword_forward_dash",b="wm_greatsword_forward_dash_clip"}, bkw={a="wm_greatsword_back_dash",b="wm_greatsword_back_dash_clip"}, lft={a="wm_greatsword_left_dash",b="wm_greatsword_left_dash_clip"}, rgt={a="wm_greatsword_right_dash",b="wm_greatsword_right_dash_clip"}, }, },
	{ dmg=25, st=28, unholster=1,holster=1, tgn=true, Name="Abyss Cutter", m="str_sword_c10", att={-0.054,-0.441,-0.279,57.0,34.8,-188.1},bone=57005, posata1={0.684,-0.171,-0.162,-3.3,-82.2,-12.3},boneposata1=24818 },
	{ dmg=18, st=2, unholster=1,holster=1, tgn=true, Name="Solar Sword", canRoll=true, m="str_sword_c11", att={-0.117,-0.333,-0.18,-54.3,40.5,-6.0}, bone=57005, posata1 = {0.918,-0.135,-0.18,2.1,-78.6,6.0}, boneposata1=24818 }, 	
	{ dmg=15, st=6, unholster=7,holster=7, tgn=true, Name="Caos Sword", m="str_sword_c12",att={0.18,0.144,0.027,-61.5,25.5,-23.1},bone=57005, posata1 = {0.252,-0.126,0.081,4.8,-104.1,-2.4},boneposata1=24818 },	
	{ dmg=22, st=24, unholster=7,holster=7, tgn=true, Name="Frontier Sword", canRoll=true, m="str_sword_c13", att={-0.018,-0.18,-0.09,-71.7,4.8,-25.8}, bone=57005, posata1={0.684,-0.117,-0.252,0.3,-75.9,-20.1},boneposata1=24818, heavySword={frw={a="9cg_nodachi_dodge_forward",b="9cg_nodachi_dodge_forward_clip"}, bkw={a="9cg_nodachi_dodge_back",b="9cg_nodachi_dodge_back_clip"}, lft={a="9cg_nodachi_dodge_left",b="9cg_nodachi_dodge_left_clip"}, rgt={a="9cg_nodachi_dodge_right",b="9cg_nodachi_dodge_right_clip"}, delayer=750 }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },		
	{ dmg=12, st=10, unholster=7,holster=7, tgn=true, Name="Skull Sword", m="str_sword_c14", att={-0.063,-0.216,-0.108,-61.8,21.3,-24.6}, bone=57005, posata1 = {0.666,-0.171,-0.099,-2.7,-89.1,-11.1}, boneposata1=24818, trailsword={ {-0.063,-0.216,-0.108, 1.5, 11, 57005} } },
	{ dmg=5, st=28, unholster=1,holster=1, tgn=true, Name="Deep Sword", m="str_sword_c15", att={-0.09,-0.297,-0.171,-59.1,28.8,-13.5},bone=57005, posata1={0.864,-0.225,0.018,-6.6,-102.3,-26.4},boneposata1=24818 },
	{ dmg=16, st=6, unholster=7,holster=7, tgn=true, Name="Ness Sword", m="str_sword_c16",att={-0.135,-0.234,-0.09,-51.3,50.4,-16.5},bone=57005, posata1 = {0.783,-0.198,-0.225,-3.6,-78.0,-13.5},boneposata1=24818 },
	{ dmg=17, st=10, unholster=7,holster=7, tgn=true, Name="Fear Sword", m="str_sword_c17",att={-0.054,-0.189,-0.063,-58.5,45.9,-15.9}, bone=57005, posata1 = {0.594,-0.144,-0.189,0.3,-79.5,-21.6}, boneposata1=24818, trailsword={ {-0.036,-0.252,-0.099, 1.5, 11, 57005} } },
	{ dmg=15, st=6, unholster=7,holster=7, tgn=true, Name="Inner Sword", m="str_sword_c18",att={-0.081,-0.243,-0.153,-59.7,21.3,-21.6},bone=57005, posata1 = {0.855,-0.135,-0.171,-1.5,-80.7,-7.8},boneposata1=24818 },	
	-- NEW 12/08/2026
	{ dmg=20, st=6, unholster=7,holster=7, tgn=true, Name="Gothical Sword 1", m="str_gothicsword_1",att={0.171,0.108,0.036,-36.0,19.8,149.4},bone=57005, posata1 = {0.36,-0.117,0.09,95.999999999999,73.8,-173.4},boneposata1=24818 },
	{ dmg=22, st=24, unholster=7,holster=7, tgn=true, Name="Gothical Sword 2", m="str_gothicsword_2", att={0.18,0.126,0.018,-27.6,25.2,151.2}, bone=57005, posata1={0.252,-0.135,0.126,-88.5,-111.9,-6.0},boneposata1=24818, heavySword={frw={a="9cg_nodachi_dodge_forward",b="9cg_nodachi_dodge_forward_clip"}, bkw={a="9cg_nodachi_dodge_back",b="9cg_nodachi_dodge_back_clip"}, lft={a="9cg_nodachi_dodge_left",b="9cg_nodachi_dodge_left_clip"}, rgt={a="9cg_nodachi_dodge_right",b="9cg_nodachi_dodge_right_clip"}, delayer=750 }, trailswordFx={ {0.715,0.615,0.28, 2.5, "veh_khanjali","proj_xm_khanjali_grenade_trail", 57005}, }, },		
	-- YAKUZA v2 THE COME BACK!
	{ dmg=15, st=34, unholster=3,holster=3, tgn=false, trailPreset="dragon", Name="Knuckle: Yakuza (v2)", m="w_me_knuckle_bg",m2="w_me_knuckle_bg",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },
	-- CLASSIC FIGHT FOR MODERN PROJECT!
	{ dmg=15, st=35, unholster=3,holster=3, tgn=false, trailPreset="white", Name="Knuckle: Street Fight (A)", m="w_me_knuckle_bg",m2="w_me_knuckle_bg",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },
	{ dmg=15, st=36, unholster=3,holster=3, tgn=false, trailPreset="cyan", Name="Knuckle: Street Fight (B)", m="w_me_knuckle_bg",m2="w_me_knuckle_bg",att={0.135,-0.02,0.015,-91.800000000001,-16.0,-5.0},bone=57005, att2={0.12,0.025,-0.005,58.2,0.0,0.0},bone2=18905, posata1={0,0,0,0,0,0},boneposata1=24818,posata2={0,0,0,0,0,0},boneposata2=24818 },
}

BowList = { -- OFFSETS: posato bone = 24818 EVER! attacco bone is ever 18905 LEFT HAND! idle bone = 57005!
	{m="striano_bow", posato={0.0,-0.2,0.0,-6.2,-60.6,179.0}, attacco={0.11,0.01,0.015,-120.8,-63.0,-2.0}, idle={0.04,1.7347234759768e-18,-0.04,97.800000000001,100.8,-139.0}},
	{m="striano_bow2", posato={0.03,-0.21,-0.01,0.39,30.39,-82.0}, attacco={0.11,0.07,0.04,3.93,39.420000000001,-28.0}, idle={0.08,0.03,-0.02,41.220000000001,5.01,0.0}},
	{m="striano_bow3", posato={-0.005,-0.145,0.045,-50.2,70.6,-86.0}, attacco={0.11,0.055,0.035,92.400000000001,33.8,-29.0}, idle={0.11,0.02,-0.055,-47.6,4.6,0.0}},
	{m="w_me_knuckle_vg", posato={0.105,0.015,-0.03,-134.2,161.6,184.0}, attacco={0.105,0.015,-0.03,-134.2,161.6,184.0}, idle={0.105,0.015,-0.03,-134.2,161.6,184.0}},
	{m="bow", posato={-0.144,-0.162,0.0,4.5,-84.3,0.0}, attacco={0.099,-0.018,0.009,92.099999999999,24.0,-24.6}, idle={0.117,0.054,0.0,-60.6,0.0,-1.5}},
}

ArrowList = { -- handpos is ever 57005!
	-- Every arrow can be different and have for example thunder effect or fire and more!
	{item="arrow", damage=10, damageRadius=2.5, m="striano_arrow", handpos={0.46,-0.15,0.11,157.0,4.5,60.0}, trail=12, hitEffects={}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_15"},
	{item="arrow2", damage=20, damageRadius=2.5, m="arrow_2", handpos={0.435,-0.115,0.095,65.4,76.400000000001,163.0}, trail=15, hitEffects={{a="des_tv_smash", b="ent_sht_electrical_box_sp",c=5.0,d=1.0},{a="scr_bike_adversary", b="scr_adversary_gunsmith_weap_smoke",c=1.0,d=0.7}}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_16", thunder=true},
	{item="arrow3", damage=30, damageRadius=3.5, m="arrow_3", handpos={0.44,-0.1,0.095,-111.8,-109.0,8.0}, trail=13, hitEffects={{a="wpn_flare", b="proj_heist_flare_trail",c=1.0,d=0.7}}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_16"},
	{item="arrow4", damage=50, damageRadius=5.5, m="striano_arrow2", handpos={0.46,-0.15,0.11,157.0,4.5,60.0}, trail=14, hitEffects={{a="scr_prologue", b="ent_ray_pro1_vault_exp_lit",c=1.0,d=1.0},{a="scr_josh3", b="scr_josh3_explosion",c=0.3,d=0.5}}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_14"},
	{item="spear", damage=10, damageRadius=2.5, m="striano_spear", handpos={0.415,0.835,0.14,-176.2,161.6,44.0}, trail=12, hitEffects={}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_15"},
	{item="arrow5", damage=10, damageRadius=2.5, m="arrow", handpos={0.44,-0.1,0.095,-111.8,-109.0,8.0}, trail=12, hitEffects={}, soundHit="sounds/striano_combat/sword/colpi_a_vuoto/audio_15"},
	
	
}
  
ShieldList = {
	{ Name="Viking Shield", m="striano_shield_1", att={0.07,-0.01,-0.06,126.5,-74.5,162.0}, bone=18905, attposato={-0.05,-0.14,0.0,0.0,0.0,4.0}, boneposato=24818 },
	{ Name="Viking Shield 2", m="striano_shield_2", att={0.17,0.02,-0.07,-31.5,-111.5,146.0}, bone=18905, attposato={-0.02,-0.17,0.04,175.0,1.5,-6.0}, boneposato=24818 },
	{ Name="Viking Shield 3", m="striano_shield_3", att={0.17,-0.01,-0.02,-0.5,30.0,232.0}, bone=18905, attposato={-0.02,-0.22,0.0,6.5,-88.5,182.0}, boneposato=24818 },
	{ Name="Viking Shield 4", m="striano_shield_4", att={0.15,0.01,-0.02,53.0,102.0,22.0}, bone=18905, attposato={-0.12,-0.2,-0.01,85.5,0.0,-8.0}, boneposato=24818 },
}

local SwordModelMap = {}

CreateThread(function()
    Wait(0)
    for _, data in pairs(SwordList) do
        if data.m then
            SwordModelMap[GetHashKey(data.m)] = true
        end
        if data.m2 then
            SwordModelMap[GetHashKey(data.m2)] = true
        end
    end
end)

exports("isACombatSword", function(model)
    if not model then return false end
    if type(model) == "string" then
        model = GetHashKey(model)
    end
    return SwordModelMap[model] == true
end)

-- TRAIL CONFIGURATION
-- EXAMPLE TO ADD IN SwordList -----> , trailPreset = "blue"
StrianoTrailPresets = {
	blue={id="blue",mode="ribbon",color={90,170,255},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	red={id="red",mode="ribbon",color={255,50,50},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	green={id="green",mode="ribbon",color={50,255,80},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	yellow={id="yellow",mode="ribbon",color={255,255,50},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	purple={id="purple",mode="ribbon",color={180,80,255},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	pink={id="pink",mode="ribbon",color={255,80,180},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	cyan={id="cyan",mode="ribbon",color={50,255,255},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	orange={id="orange",mode="ribbon",color={255,140,30},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	gold={id="gold",mode="ribbon",color={255,190,40},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	silver={id="silver",mode="ribbon",color={220,220,220},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=true},
	white={id="white",mode="ribbon",color={255,255,255},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=false},
	black={id="black",mode="ribbon",color={20,20,20},alpha=220,lifeMs=160,sampleMs=0,widthScale=1.0,light=false},
	blood={id="blood",mode="ribbon",color={150,0,0},alpha=230,lifeMs=170,sampleMs=0,widthScale=1.0,light=false},
	ice={id="ice",mode="ribbon",color={180,240,255},alpha=220,lifeMs=180,sampleMs=0,widthScale=1.0,light=true},
	poison={id="poison",mode="ribbon",color={120,255,0},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	emerald={id="emerald",mode="ribbon",color={0,220,120},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	ruby={id="ruby",mode="ribbon",color={220,20,60},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	amethyst={id="amethyst",mode="ribbon",color={170,100,255},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	sapphire={id="sapphire",mode="ribbon",color={0,120,255},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	lime={id="lime",mode="ribbon",color={180,255,0},alpha=80,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	fire={id="fire",mode="ribbon",color={255,90,0},alpha=230,lifeMs=170,sampleMs=0,widthScale=1.1,light=true},
	lava={id="lava",mode="ribbon",color={255,40,0},alpha=100,lifeMs=180,sampleMs=0,widthScale=1.1,light=true},
	shadow={id="shadow",mode="ribbon",color={80,0,120},alpha=230,lifeMs=180,sampleMs=0,widthScale=1.1,light=false},
	holy={id="holy",mode="ribbon",color={255,255,180},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	toxic={id="toxic",mode="ribbon",color={80,255,40},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true},
	plasma={id="plasma",mode="ribbon",color={255,0,255},alpha=180,lifeMs=180,sampleMs=0,widthScale=1.1,light=true},
	dragon={id="dragon",mode="ribbon",color={255,20,20},alpha=220,lifeMs=170,sampleMs=0,widthScale=1.0,light=true}
}

-- FOR MY INVENTORY
exports("GetMeleeWeaponModel", function(id)
	id = tonumber(id)
	if not id then return nil end
	local weapon = SwordList[id]
	if not weapon then return nil end
	return weapon.m
end)