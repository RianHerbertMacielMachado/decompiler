-- SUPERJUMP by STRIANO SCRIPTS v1.0
SuperJump = false -- DO NOT MOVE THIS VARIABLE!
FallingCheck = true -- If you let this true, the player will not fall from oblique terrain, useful to not go ragdoll while falling terrain while jump. Let this true, is better.
KeyToStartClimb = 25 -- The key to press to try to attach player on wall!
animationtryGrab = { a="anim@zombie_walk_3", b="zombie_walk_3_clip" }
EnableFailControl = true -- If the player wrong land on terrain create blood effect?
RemoveHealthFailJump = false -- Remove Health when player wrong rotate player while super jump?
HowManyDelHP = 1 -- Will remove just 1 HP to the player! (If it's enable up here)

-- NOTIFICATION IN LOOP
-- PLEASE REPLACE WITH YOUR OWN NOTIFICATION
function InfoWhileSuperJump() -- INSERT YOUR OWN LOOP NOTIFY
	-- exports.striano_combat:draw(22, "Super Jump", 44,"Slide")
end

function InfoWhileClimb() -- INSERT YOUR OWN LOOP NOTIFY
	-- if exports.striano_editor:IsPlayerProne() then return end -- PLEASE REMOVE THIS IF I FORGOT (It's from my test server)
	draw(25,"Detach", 22,"Detach & Jump (x2)")
end

function InfoWhileGrab() -- INSERT YOUR OWN LOOP NOTIFY
	-- if exports.striano_editor:IsPlayerProne() then return end -- PLEASE REMOVE THIS IF I FORGOT (It's from my test server)
	draw(25,"Grab surface")
end

-- TEST COMMAND, PLEASE REMEMBER TO REMOVE IF YOU USE IN YOUR PRODUCT SERVER!
RegisterCommand("superjump", function()
	-- if not exports.striano_core:gettutorial() then exports.striano_combat:submex("Please complete the intro before testing commands.") return end
	if not SuperJump then
		AttivaSuperJump()
	else
		StopSuperJump()
	end
end)

-- FXTraceActive = true -- You do not like the trace effect? Just set to false! DISABLED AT MOMENT FOR OPTIMISATION PURPOSE!
EffectOnGround = true -- Effects when player go on ground after superjump!
animGroundMode = true -- This will make the super jump not floodable
flyingAnimA = "fly@r9@one" -- "parkour@customnine" -- "fly@r9@one", "down"
flyingAnimB = "down" -- "parkour_jmp_n_two"

function StartEffectOnSuperJump()
	-- HandFX(3, {true, true, true, true}, 0.1) -- 3 is the ID of handeffect; In this case is: scr_powerplay
end

-- useful exports to check functions in other scripts!
-- if exports.striano_combat:inclimbmode() then -- This check if player is attached on some wall in climb mode!
-- exports.striano_combat:insuperjump() -- return false or true, depends if player is in super jump or not!
-- exports.striano_combat:stopsuperjump() -- stop super jump from client!
-- exports.striano_combat:startsuperjump() -- enable super jump from client from any script you need!

-- FROM CLIENT: TriggerEvent("SuperJumpClient", true) / TriggerEvent("SuperJumpClient", false)
-- FROM SERVER: TriggerClientEvent(source, "SuperJumpClient", true) / TriggerClientEvent(source, "SuperJumpClient", false)

-- NEED HELP? COME HERE: https://discord.gg/VgTGW5St9E

function onFallFunction(ped)
	local pp = GetEntityCoords(ped)
	-- PlayEffectSuperJump("core","blood_stab", vector3(pp.x,pp.y,pp.z-0.8), 5.0)	
	PlaySoundFrontend(-1, 'LEADERBOARD', 'HUD_MINI_GAME_SOUNDSET', 1) 
	if GetEntityHealth(ped) > 110 and RemoveHealthFailJump then 
		ApplyDamageToPed(ped, HowManyDelHP, false)
	end
end

rotateInAir = true
function GruntFunc() 
	if GetResourceState('striano_combat') == 'started' then
		exports.striano_combat:gengrunt() -- REMEMBER TO SETUP xsound ON THE RESOURCE!
	else
		PlaySoundFrontend(-1,'LIMIT','GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS',1)
	end
end
function onClimbSound() 
	if GetResourceState('striano_combat') == 'started' then
		exports.striano_combat:genpunchwosh() -- REMEMBER TO SETUP xsound ON THE RESOURCE!
	else
		PlaySoundFrontend(-1,'LIMIT','GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS',1)
	end
end

exports('insuperjump', function() return SuperJump and EroInAria end) -- IN AIR!
exports('checksuperjump', function() return SuperJump end)
exports('togglesuperjump', function() if SuperJump then StopSuperJump() else AttivaSuperJump() end end) -- IN AIR!
exports('stopsuperjump', function() StopSuperJump() end)
exports('startsuperjump', function() AttivaSuperJump() end)

function canAirCheck()
	if GetResourceState('striano_combat') == 'started' then
		if exports.striano_combat:getdebuggerClb() == nil then -- REMOVE IF YOU DONT HAVE MY COMBAT SCRIPT!
			return true 
		else 
			return false
		end
	else
		return true
	end
end

function onSuperJumpStop()
	if GetResourceState('striano_combat') == 'started' then
		TriggerEvent("resetTimerSpells")
	end
end