-- STRIANO SUPERMAN / FLYMODE / FLY SYSTEM 1.4 ~
-- exports.striano_combat:getPP() ~= nil then print("haaaaay im flying mothadddffffffcccc") end

RegisterCommand('flyhuman', function() -- "superman" -- HEY COMMENT OUT THIS COMMAND AFTER YOU TEST IT IN YOUR TEST SERVER OR ANY PLAYER CAN FLY FREE!
	local ped = PlayerPedId()
	if IsPedSwimmingUnderWater(ped) then return end
	if not exports.striano_core:gettutorial() then exports.striano_combat:submex("Please complete the intro before testing commands.") return end -- (IF I FORGOT DELETE THIS LINE, IT'S FOR TEST WITH OTHER MY FUTURE RELEASE!!!)	
	StartSuperMan()
end)

function canDoSuperFly()
	if IsPedFatallyInjured(PlayerPedId()) then return false else return true end 
	-- Here maybe you can put some check about admin, or VIP member or JOB that can do the superman function!
	return true -- Or delete all the uppercode and let only this to delete checking!
end

RegisterCommand("tutflyno", function(source, args) -- Delete the tutorial fly info
	FlyTut = false
end)

speedToStartAnim = 18.0 -- This variable is to detect speed to change animation Fly Fast
IDHandEffect = 1 -- If 0 doesnt appear Hand Effect
SoundWhenMoveAir = true -- put false to disable the sound and the effect of Air
AirAlpha = 0.09 -- Set to 0 to make invisible, it's useful to make the effect of wind? For me yes, but you can change if you want!
customFxAir1 = "" customFxAir2 = "" -- Let empty if you dont want change main air movement! (EXAMPLE usage "core" "effect_fx")
FlyTut = true

-- List of All Hand Effect
-- This list is useful to create more set and change the ID Fx for every player with your own project!
handeffect = {
	{ FxSpeedWait=150, a="scr_powerplay", b="sp_powerplay_beast_appear_trails", size=0.2, rot=vector3(0.0,0.0,0.0), color=vector3(255,255,255), trail=true, alpha=0.1 }, -- 1 = IDHandEffect -- color if fx have need to be vector3!
	{ FxSpeedWait=150, a="scr_powerplay", b="sp_powerplay_beast_appear_trails", size=0.6, rot=vector3(0.0,0.0,0.0), color=vector3(255,100,0), trail=true, alpha=0.5 },
	{ FxSpeedWait=150, a="scr_rcbarry1", b="scr_alien_teleport", size=0.5, rot=vector3(0.0,0.0,0.0), color=nil, trail=true, alpha=0.3 },
	{ FxSpeedWait=50, a="scr_rcbarry1", b="scr_alien_teleport", size=0.1, rot=vector3(0.0,0.0,0.0), color=vector3(255,100,0), trail=true, alpha=0.1 },
	-- FxSpeedWait = 150 -- This is how many ms for every Fx, Please dont move this if you dont know! Do not set less to stay optimised! (min 50 - 150 are ok)
	-- here you can add all the effect you want, useful to switch fast and to set different FX for every player with exports!
	-- FxSpeedWait MAX 150
}        

-- This is a command to test the fx Fly! Plese comment if you put the script in production mode or every player can change the ID of fly effects!
RegisterCommand("setfxfly", function(source, args) -- at moment you can /setfxfly 1 | setfxfly 2 | /setfxfly 3
	if args[1] then
		local id = tonumber(args[1])
		if handeffect[id] ~= nil then
			OnChangeIdFX(IDHandEffect, tonumber(args[1]))
		else
			OnChangeIdFX(IDHandEffect, #handeffect)
		end
	end
end)

function WhileLoopFly()
	if FlyTut then drawInfo(36,"", 24,"", 44,"", 38,"", 21,"", 75,"Stop") end
end

-- Effect on Ped when Fly (To the body, for the hands setup the line up handeffect)
partDictFx1 = "scr_bike_adversary" partDictFx2 = "scr_adversary_weap_smoke" -- This is the black smoke in the video!
posFx = vector3(0.0,0.0,0.0)
rotFx = vector3(0.0,0.0,0.0)
sizeFx = 1.0
fxAlpha = 0.1

function WhenSupermanStart()
	exports.striano_combat:delallarmi()
	-- DO YOU NEED START SOME FUNCTIONS WHEN FLY START? LETS FCKNG PUT HERE
	-- If you need apply for example wings do i on this entity:
	-- local pedEntity = exports.striano_combat:getPP()
end

function WhenPlayerStopFly()
	-- INSERT YOUR FUNCTION HERE!
	exports.striano_combat:fodera()
end

RegisterNetEvent("AttivaSuperMan")
AddEventHandler("AttivaSuperMan", function()
	local ped = PlayerPedId()
	if not IsPedFatallyInjured(ped) and not IsPedSwimmingUnderWater(ped) then
		StartSuperMan()
	end
end)

timerAfterDie = 5000 -- How many seconds pass after a player that fly die for bullet or other way?
EffectSize = 0.9