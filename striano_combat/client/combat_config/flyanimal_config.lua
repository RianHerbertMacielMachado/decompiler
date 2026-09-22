-- STRIANO ADVANCE FLY ANIMAL 1.0
-- IF YOU WANT HAVE ALL MY ANIMAL MODEL LIST PLEASE DOWNLOAD THIS to have owl, eagle, falcon etc: https://github.com/elajnabe/flight-animals

-- Variables
commandStartFly = "startvolo" -- Command to start the fly mode, in my server test i just start this command when player change the skin in animal fly form!
commandStopFly = "stopvolo" -- I call this command when the player come back as human!
commandLetterTask = "letterMission" -- This is just a command to start a mini-mission, if you want test it :) (It's a spoiler for my new script missions!)
letterCoords = vector3(2881.02,7501.696,29.604) -- change the coords of the mission letter here!
headLetter = -20.0 -- Rotation of letter!
deliverLetter = vector3(3199.565,7897.034,51.642) -- Coord where the fly animal need to deliver the letter

RegisterCommand(commandStopFly, function()
	if VoloAttivo then 
		VoloAttivo = false 
		SetNightvision(false)
		SetSeethrough(false)
		Calore = false
		Notturno = false
		EndOrbitCam()
		OnFlyModeStop()
	end
end)

exports('EndOrbitCam_flyanimal', function()
	EndOrbitCam()
end)

function ApplyBackHuman()
	TriggerEvent("trasformazioneAUmano") -- HEY, please change this event with yours to come back as Human while you are a fly animal! (OPTIONAL, if you dont want just comment this line!)
end

KeyComeBackHuman = 47 -- Key G! The key to come back Human (Optional: this depends on the kind of project you have!)
function ComeBackHuman() -- In my server test if you press F6 you come back as human, but this need to configurate from your project!
	if GetResourceState('striano_core') == 'started' then
		if exports.striano_core:gettutorial() then
			ApplyBackHuman()
		else
			-- NOTHIGN CAUSE WHILE TUTORIAL CANT BACK HUMAN!
		end
	else
		ApplyBackHuman()
	end
end

function OnLetterTake() -- What's the message player receive when the letter mini-mission it's ready to be delivered?
	exports.striano_combat:testo3d("Deliver the letter.") -- CHANGE WITH YOUR NOTIFY SYSTEM MESSAGE! ENG: "You take the letter"
end
function OnLetterDelivered() -- What's the message player receive when the letter mini-mission is complete?
	exports.striano_combat:testo3d("Letter mission complete.") -- CHANGE WITH YOUR NOTIFY SYSTEM MESSAGE! ENG: "Mission Complete"
end

function OnStartFlyMode()
	exports["text_guide"]:ClearGuideText() exports.text_guide:GuidaNascondi() -- REMOVE THIS line IF YOU DONT MY SCRIPT GUIDE!
	ExecuteCommand("hudoff2")
end

orbitcam = false -- NOT TOUCH!
tutorialfly = true -- NOT TOUCH!

function InfoLoopWhileFly()
	if tutorialfly then
		if IsEntityInWater(PlayerPedId()) or GetEntityCoords(PlayerPedId()).z < 1.0 then 
			drawInfo(21, "Start Fly")
		else
			if orbitcam then 								
				drawInfo(21, "Go fast", 36, "Slowly", 19, "Aim Mode", 22, "Camera", 15, "Zoom", 74, "Info")
			else
				drawInfo(21, "Go Fast", 36, "Slowly", 19, "Aim Mode", 22, "Camera", 74, "Info")
			end
		end
	end
end

-- BIRDS CAN AIM AND GO IN NIGHT VISOR OR THERMAL VISOR! This while pressing left ALT
function InfoLoopWhileAim()
	if tutorialfly then 
		if GetEntityModel(PlayerPedId()) == `wyvern` then
			exports.striano_core:draw(34, "Night Visor", 35, "Heat Visor", 33, "Back", 32, "Forward", 38, "Breathes Fire")
		else
			exports.striano_core:draw(34, "Night Visor", 35, "Het Visor", 33, "Back", 32, "Forward")
		end
	end
end

-- here set all the ped list that need to have the fly mode advanced.
local Birds = { `vulture`, `owl`, `eagle`, `falcon`, `a_c_seagull`, `wyvern`, `macaw`, `parrot`, `sparrow`, `warbler`, `a_c_cormorant`, `a_c_crow`, `a_c_pigeon`, `a_c_chickenhawk` }
function IsValidBird(ped)
	if not IsPedHuman(ped) then 
		for i = 1, #Birds do
			if GetEntityModel(ped) == Birds[i] then 
				return true
			end
		end
	end
	return false	
end

function LoopInfoFloor()
	if tutorialfly then
		if GetResourceState('striano_core') == 'started' then
			if exports.striano_core:gettutorial() then
				drawInfo(21, "Fly", KeyComeBackHuman, "Back human")
			else
				drawInfo(21, "Fly")
			end
		else
			drawInfo(21, "Fly", KeyComeBackHuman, "Back human")
		end
	end
end

function OnFlyBirdDead() -- REMEMBER: ANIMAL IN THIS VERSION CAN'T DIE!
	-- When the fly animal die do you want to do something? Put here!
	TriggerServerEvent('vSync:requestSync') -- REMOVE THIS LINE IF YOU DONT HAVE MY CORE SCRIPT!
end

-- PLEASE DO NOT MOVE THIS PART!
RegisterCommand("tutorialfly", function() tutorialfly = true end)
RegisterCommand("notutorialfly", function() tutorialfly = false end)
RegisterCommand("flyorbitno", function() orbitcam = false EndOrbitCam() end)
RegisterCommand("startorbitcamfly", function() orbitcam = true StartOrbitCam(vector3(0.0, 0.0, 0.5), PlayerPedId()) end)

function OnFlyModeStop()
	-- PUT HERE ALL THE LOGIC YOU NEED WHEN THE FLY MODE END (FOX EXAMPLE TO COME BACK HUMAN?)
	ExecuteCommand("hudon2")
end

-- NEW 23/04
Transformed = false
function BecomePed(modelWant)
	local ped = PlayerPedId()
	local crow = GetHashKey(modelWant)
	RequestModel(crow)
	local atp = 0 while not HasModelLoaded(crow) and atp < 100 do Wait(0) atp=atp+1 end
	if atp < 100 then
		Transformed = true
		SetPlayerModel(PlayerId(), crow)
		SetModelAsNoLongerNeeded(crow)
		SetPedDefaultComponentVariation(PlayerPedId())
		ExecuteCommand(commandStartFly)
		if GetResourceState('striano_combat') == 'started' then
			exports.striano_combat:delallarmi2()
		end
		if GetResourceState('striano_inventory') == 'started' then
			exports.striano_inventory:clearWeaponSlot()
		end
	else
		print("Ped model insert not valid.")
	end
end

RegisterCommand("flyAnimal", function() ExecuteCommand("striano_crow") end)
RegisterCommand("striano_crow", function()
	if GetResourceState('striano_editor') == 'started' then
		TriggerEvent("trasformazioneAnimale")
	else
		if not Transformed then
			BecomePed("a_c_crow")
		else
			ComeBackHuman() -- PLEASE HERE YOU SHOULD USE YOUR OWN LoadSkin BASED ON YOUR SKIN CHANGER RESOURCE!
			Transformed = false
		end
	end
end)
	