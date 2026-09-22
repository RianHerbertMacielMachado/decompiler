-- Hello, thank you to support this script, please remember for any problem type me on discord: https://discord.gg/VgTGW5St9E
-- QBCore = exports['qb-core']:GetCoreObject() -- Uncomment if you QB, but remember to delete line in fxmanifest.lua!

-- Here is the list of all animals Rideable!
-- WITH NEW SHOP SYSTEM: If you dont want an animal buyable in the shop, just delete price argument!
AnimalsModel = { -- Update this list with all the model you want ride, please be careful and remember that models need to be stramed with other resource to be used!
	-- Every animal can have their own speed configurable with: normal, fast, superfast & slow!
	{ model = "a_c_deer", att={0.33,-0.01,0.099999999999999,-87.0,180.0,92.0}, speedrate="fast", price=100, rentprice=3 },
	{ model = "a_c_boar", att={0.55,0.02,-0.36,-43.0,180.0,92.0}, speedrate="normal", runstyle="boar", price=50, rentprice=2, passengerSeats=0 },
	{ model = "a_c_cow", att={0.25,0.02,-0.12,-83.0,180.0,90.00}, speedrate="normal", runstyle="cow", price=50, rentprice=1 },
	{ model = "a_c_pig", att={0.24,-0.02,0.13,-43.0,177.0,91.0}, speedrate="fast", runstyle="pig", price=50, rentprice=1, passengerSeats=0 },
	{ model = "a_c_panther", att={0.24,-0.02,0.13,-43.0,177.0,91.0}, speedrate="fast", runstyle="rottweiler", price=150, rentprice=50 },
	
	-- IF YOU WANT THIS ANIMALS take the stream folder from here: https://github.com/elajnabe/flight-animals
	{ model = "donkey", att={0.36,0.02,-0.080000000000001,-82.0,10.0,278.0}, speedrate="superfast", runstyle="cow", price=30, rentprice=1 },
	{ model = "BrnBear", att={0.89,-0.05,0.079999999999999,-90.0,10.0,274.0}, speedrate="fast", runstyle="cow", price=150, rentprice=50 },
	{ model = "elephant", att={0.87,-0.05,0.079999999999999,-90.0,10.0,274.0}, speedrate="normal", runstyle="cow", price=150, rentprice=50 },
	
	-- STRIANO CUSTOM HORSES VOL 1,2 & 3
	{ model = "a_c_tortoise", att={0.725,0.013,0.328,-93.0,101.5,10.0}, speedrate="slow", runstyle="cow", price=100, rentprice=3, passengerSeats=0 },
	{ model = "a_c_buffalo", att={0.349,0.01,-0.199,-94.5,97.0,9.0}, speedrate="normal", runstyle="cow", price=100, rentprice=3, },
	{ model = "a_c_horse", att={0.378,0.006,-0.034,-94.0,97.0,10.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_1", att={0.44,-0.006,-0.038,-90.0,95.0,4.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_2", att={0.428,0.001,-0.024,-89.5,97.0,7.5}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_3", att={0.362,0.005,0.114,-87.0,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_4", att={0.445,0.01,0.063,-91.5,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_5", att={0.466,0.005,-0.015,-87.0,97.0,9.0}, speedrate="fast", price=100, rentprice=3, },
	{ model = "a_c_horse_6", att={0.372,0.018,0.111,-91.0,97.0,9.5}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_7", att={0.426,-0.025,0.0089999999999999,-91.0,97.0,5.5}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_8", att={0.415,0.009,-0.024,-88.5,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_9", att={0.437,0.01,-0.034,-92.0,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_10", att={0.397,0.011,0.11,-92.0,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_11", att={0.397,0.005,0.043,-92.0,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_wolf", att={0.558,0.02,0.082,-91.5,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },	
	{ model = "Direwolves", att={0.558,0.02,0.082,-91.5,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_13", att={0.387,-0.004,-0.053,-92.0,97.0,11.5}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_14", att={0.378,0.006,-0.034,-94.0,97.0,10.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_horse_15", att={0.378,0.006,-0.034,-94.0,97.0,10.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_memath", att={0.561,0.012,0.296,-87.0,97.5,9.0}, speedrate="normal", price=100, runstyle="cow", rentprice=3, },
	{ model = "a_c_got", att={0.481,0.04,-0.379,-90.5,97.0,6.5}, speedrate="normal", price=100,  runstyle="cow", rentprice=3, },
	{ model = "a_c_fox", att={0.233,0.015,0.11,-92.0,96.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_tahr", att={0.517,-0.01,-0.056,-91.0,98.0,8.5}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_bison", att={0.849,0.00099999999999999,-0.166,-91.0,97.0,9.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "a_c_himalayan_yak", att={0.652,-0.009,0.059,-89.0,97.0,9.0}, speedrate="normal", runstyle="cow", price=100, rentprice=3, },
	{ model = "a_c_horned_otter_dog", att={0.272,0.009,0.011,-87.0,97.0,9.0}, speedrate="normal", runstyle="rottweiler", price=100, rentprice=3, },
	{ model = "a_c_fantasy_mount_animal", att={0.394,0.01,0.13,-87.0,97.0,9.0}, speedrate="fast", runstyle="rottweiler", price=100, rentprice=3, },
	
	-- AQUATIC ANIMAL! -- IF YOU WANT INVISIBLE PLAYER ON MOUNT USE PARAM: hidePG=true
	{ model = "crocodile", att={-0.05,0.12,0.55,-31.0,1.0,173.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_dolphin", att={-0.58,0.06,0.029999999999999,-178.0,93.0,139.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_fish", att={-0.92,0.05,-0.02,-90.0,-94.0,40.0}, orbitActive=true, hidePG=true },
	{ model = "a_c_killerwhale", att={-0.94,0.09,-0.040000000000001,-2.0,-90.0,313.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_humpback", att={1.8,1.96,-0.020000000000001,3.0,92.0,68.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_sharkhammer", att={-0.02,0.02,0.47,-119.0,177.0,353.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_sharktiger", att={-0.01,-0.08,0.46,-157.0,177.0,358.0}, orbitActive=true, fishSpeed=2.0 },
	{ model = "a_c_stingray", att={0.04,-0.25,0.95,-57.0,177.0,168.0}, customAnim={"missbigscore2aig_5","push_trolly_walk",49}, fishSpeed=2.0 },
	
	{ model = "PDHorse", att={0.55,0.008,0.11,-89.0,96.5,8.0}, speedrate="normal", price=100, rentprice=3, },
	{ model = "RangerHorse", att={0.422,-0.002,-0.028,-95.5,98.5,7.5}, speedrate="normal", price=100, rentprice=3, },
	
	-- HUMANOID LIST
	-- { model = "Ostrich", att={0.581,0.114,-0.0040000000000001,6.0,91.5,16.5}, fastAnim=1.5, speedrateShift=1.75, superJumpPower=20.0, , customBaseAnim={"move_m@injured","run"}, customRunAnim={"move_m@injured","sprint"} },
	-- { model = "Trex", att={1.057,1.8489999999999,-0.0020000000000001,1.0,87.5,25.5}, fastAnim=0.0, speedrateShift=1.95, superJumpPower=35.0, , customBaseAnim={"move_m@injured","run"}, customRunAnim={"move_m@injured","sprint"} },
	-- { model = "werewolfdevil", att={0.947,0.184,-0.014,7.5,89.5,15.5}, fastAnim=0.0, speedrateShift=1.95, superJumpPower=35.0, , customBaseAnim={"move_m@injured","run"}, customRunAnim={"move_m@injured","sprint"} },
	-- Here you can insert more Models, if you need help to configure new position for new model please type me on discord. Link on: www.strianodev.com
}

function getSpeedFromModel(mdl)
	for k,v in ipairs(AnimalsModel) do
		if mdl == GetHashKey(v.model) then 
			return tostring(v.speedrate)
		end
	end
end
function getRunFromModel(mdl)
	for k,v in ipairs(AnimalsModel) do
		if mdl == GetHashKey(v.model) then 
			return tostring(v.runstyle)
		end
	end
end
-- USED FOR STAMINA SYSTEM
function IsFastAnimal(entity)
	if not entity or entity == 0 or not DoesEntityExist(entity) then
		return false
	end

	local modl=GetValidEntityModel(entity)
	if not modl then
		print("[RIDEHORSE] Invalid entity passed IsFastAnimal:",entity)
		return false
	end

	return IsFastAnimalModel(modl)
end

function AdjustSpeed(speed) -- speed is get by v.speedrate
	if speed == "superfast" then MyModelSpeedVar = 1.3
	elseif speed == "fast" then  MyModelSpeedVar = 1.2
	elseif speed == "normal" then MyModelSpeedVar = 1.1
	elseif speed == "slow" then MyModelSpeedVar = 1.0
	else MyModelSpeedVar = 1.0 end
end

MultipleFloatShif = 1.1

GoForwardKey = 32 -- If you need you can Replace the Keyboard to go forward! (Default: GoForwardKey = 32, Key = W) FOR EXAMPLE: With Frech keyboard you need replace 32 with 20!
GoBackwardKey = 33 -- Key to go back
ConfirmColorKey = 38 -- Confirm the color/texture of horse in editor when you go on for the first time: https://docs.fivem.net/docs/game-references/controls/
AnimHorseKey = 74 -- This is the "H" key, and at moment it's uset to do an anim of "eating" with horse. It's in beta and it's a small test, hope you like it. I will integrate with food system for horse.
StopMoveKey = 31 -- This is the key "S", at moment this function will turn your horse of 180 grade. Useful? Hope yes. :)
lightingHorseWhileColor = true -- This is useful to choose the color of horse when it's night in game, if you put on false this light will be disabled.
LeftKey = 174 -- Arrow key LEFT to choose color of Horse
RightKey = 175 -- Arrow key RIGHT to choose color of Horse
RightKeyHorse = 218 -- Key to go right Side with Horse Script (Do not touch if you dont know please)
LeftKeyHorse = 219 -- Key to go left Side with Horse Script (Do not touch if you dont know please)
RightKeyHorseRot = 35 -- Key to go right Side with Horse Script (Do not touch if you dont know please)
LeftKeyHorseRot = 34 -- Key to go left Side with Horse Script (Do not touch if you dont know please)
RunHorseKey = 21 -- The key to Sprint with horse.
-- BackHorseKey = 33 -- This is the S Key to stop the horse when you run and want stop!
SprintHorseKey = 22 -- The Key to press (SPACEBAR) while trottling to Spring with horse, to stop press S (BackHorseKey)
Zoom = 15 -- the key zoom, please do not change, this is only for tutorial info
CloseButton = 194 -- Backspace to close Horse List
DeleteButton = 47 -- If you want delete your own horse press G while you see you List. This wile choose model will change color hair if animal have!

-- RegisterKeyMapping
typeMapping = "keyboard" -- please do not touch if you dont know
KeyGoUpHorse = "f" -- This is the keymapping, please dont touch if you dont know, just change with the keyboard key you need, like example: "h"
commandMapping = "goOnHorse" -- this is command name for key mapping and go on horse to ride it.

-- TUTORIAL VARIABLES
TutorialHorse = false -- Set this to false if you dont want see the tutorial while on horse
Renting = false -- Not touch this var it's to rent horse!

-- Please translate this strings or check the english version down.
StopHorseTx = "Stop" -- Stop the horse from running
ForwardHorseTx = "Forward" -- Go forward with horse
SprintTx = "Run" -- Go fast with horse
RunTx = "Troth" -- Run a little bit with horse
RightTx = "Turn" -- Go right
LeftTx = "Turn" -- Go left
OkModelTx = "Buy" -- Confirm the color of horse on editor
GoOnHorseTx = "Ride Mount"  -- KeyMapping Text -- Go on Horse text ad KeyMapping in Settings.
ZoomTx = "Zoom"
CloseTx = "Cancel" -- Close text
BackTx = "Back" -- Back text
DeleteHorseTx = "Delete Mount" -- Delete Horse from Player List
hairColor = "Colore Extra" -- Hair color

commandTutorialHorse = "tuthorse" -- Disable / Enable tutorial in game command
RegisterCommand(commandTutorialHorse, function() TutorialHorse = not TutorialHorse end)

-- Commands List
holdHorseCommand = 'holdHorse' -- with this command you can teleport horse on you, useful to avoid obstacle when you not ride it.
RegisterCommand(holdHorseCommand, function() HoldHorse() end)
followmeCommand = 'mountFollow' -- with this command the horse will Follow you.
RegisterCommand(followmeCommand, function() FollowMeHorse() end)
stopHorseCommand = 'callMount' -- with this Command you can stop your horse and make it back to you if run away.
RegisterCommand(stopHorseCommand, function() ComeHorse() end)

RegisterCommand('mount', function() ExecuteCommand("horse") end)
RegisterCommand('mounts', function() ExecuteCommand("horse") end)
RegisterCommand('horse', function() -- "horse"
	if GetResourceState('striano_fastmenu') == 'started' then
		exports['striano_fastmenu']:clearMenu()
		
		exports['striano_fastmenu']:addMenuItem("🐴​ YOUR LIST", function() exports.striano_fastmenu:close() Wait(75) ExecuteCommand("myAnimals") end, true)
		
		exports['striano_fastmenu']:addMenuItem("🧲​ TELEPORT MOUNT", function() HoldHorse() end, true)
		if not CavalloMiSegue then 
			exports['striano_fastmenu']:addMenuItem("🐴​ FOLLOW ME!", function() FollowMeHorse() end, true) 
		else 
			exports['striano_fastmenu']:addMenuItem("🐴​ STOP FOLLOW ME!", function() StopFollowMeHorse() end, true) 
		end
		exports['striano_fastmenu']:addMenuItem("🐎​ COME HERE!", function() ComeHorse() end, true)
		
		exports['striano_fastmenu']:addMenuItem("🏇 DROP CURRENT MOUNT!", function() ExecuteCommand("dropHorse") end, true)
		
		exports['striano_fastmenu']:addMenuItem("[ 🎠​ MOUNTS SHOP ]", function() ExecuteCommand("shopAnimals") end, true)
		exports['striano_fastmenu']:addMenuItem("[ 🍎​ MENU MOUNTS ]", function() ExecuteCommand("menuanimal") end, true) -- COMMENT THIS IF YOU ARE IN PRODUCTION MODE!
		exports['striano_fastmenu']:addMenuItem("[ 🐬​ TEST AQUATIC ]", function() ExecuteCommand("testDolphin") end, true) -- COMMENT THIS IF YOU ARE IN PRODUCTION MODE!
		exports['striano_fastmenu']:openMenu()
	else
		print("HAAAAAY ERROR (not a real error, just to make you read)! To make the horse menu work you need downlaod from portal striano_fastmenu!")
	end
end)

-- Please edit this part of code as you need, for me is more optimised of while loop, if you dont know dont touch.
local antiFloodHorse = false
RegisterKeyMapping(commandMapping, GoOnHorseTx, typeMapping, KeyGoUpHorse)
RegisterCommand(commandMapping, function()
	if exports.striano_editor:IsFollowHandsPropActive() then return end
	if antiFloodHorse then return end
	antiFloodHorse = true
	CreateThread(function()
		Wait(350)
		antiFloodHorse = false
	end)
	StrianoRide()
end)

-- With function GetHorse() you can get the entity of your horse ped.
-- exports.striano_ridehorse:cadoCavallo() -- With this exports you can drop the player from the horse with some "hit" effect, after 5 hit the ped will fall. I use this in my zombie script when the zombie attack the horse.

function getPriceFromModel(mdl)
	for k,v in ipairs(AnimalsModel) do
		if mdl == GetHashKey(v.model) then 
			return v.price
		end
	end
end
function getRentPriceFromModel(mdl)
	for k,v in ipairs(AnimalsModel) do
		if mdl == GetHashKey(v.model) then 
			return v.rentprice
		end
	end
end

function BlipSetupHorse()
	local blipz = AddBlipForEntity(Animal.Handle)
	SetBlipDisplay(blipz, 4)
	SetBlipAsShortRange(blipz, true)
	SetBlipSprite(blipz, 141)
	SetBlipColour(blipz, 43) -- Change the color of blip
	SetBlipScale(blipz, 0.7) -- Change the scale of blip (If you want disable set it as 0.0, do not move this part of code)
	-- SetBlipHiddenOnLegend(blipz, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Mount') -- Translate as you need.
	EndTextCommandSetBlipName(blipz)
	return blipz
end

-- WARNING: This is a LOOP
-- Be careful and insert in this function all what you need to do while player is riding horse
-- For example if you need Disable a key while on horse, or just do some check about Job or other control to stay on horse. check out the Example
function WhileOnHorse() 
	DisableControlAction(0, 73, true)	
	DisableControlAction(1, 73, true)	
	DisableControlAction(2, 73, true)
	-- if Job == "police" then print("PLayer can ride because is police") else DropPlayerFromAnimal() end
end

function InfoWhileChooseModel(price, id, maxAnimals, RENT) -- maxAnimals IT'S THE NUMBER OF ANIMALS YOU HAVE, a number!
	if price ~= nil and price > -1 then -- If it's the shop
		InfoHorse(RightKey,"", LeftKey,"", ConfirmColorKey, OkModelTx .. " (~h~"..price.."~h~)", CloseButton,CloseTx)
	else 
		if RENT ~= nil then
			InfoHorse(RightKey,"", LeftKey,"", ConfirmColorKey, "Rent (~h~"..RENT.."~h~)", CloseButton,CloseTx)
		else
			-- Your list animal
			if PlayerCanDeleteHorse then
				InfoHorse(RightKey,"", LeftKey,"", ConfirmColorKey, "[~h~"..id.."/"..maxAnimals.."~h~]", DeleteButton,DeleteHorseTx, CloseButton,CloseTx)
			else
				InfoHorse(RightKey,"", LeftKey,"", ConfirmColorKey, "[~h~"..id.."/"..maxAnimals.."~h~]", CloseButton,CloseTx)
			end
		end
	end
end

function InfoWhileDelete()
	InfoHorse(ConfirmColorKey,DeleteHorseTx, CloseButton,CloseTx)
end

-- Remeber if you want drop player from animal for any other reason use this: DropPlayerFromAnimal()
function OnPlayerLeaveAnimalCustom() 
	-- Insert all the code you need. This function is called when the player drop from Horse.
end
exports('dropFromHorse', function() -- Use this to drop the player from any other scripts: exports.striano_ridehorse:dropFromHorse()
	DropPlayerFromAnimal()
end)

function OnPlayerGoOnHorseCustom()
	SetCurrentPedWeapon(PlayerPedId(), `WEAPON_UNARMED`, true)
	-- Insert all the code you need. This function is called when the player go on Horse.
end

-- NEW VARIABLES
ApplyEffectCoco = true -- You want apply the effect to the water when you are on a Cocodrile?
GoUpCoco = 32 -- the key to go down with Cocodrile -- To go up is Used the Key S -> variable: BackHorseKey
GoDownCoco = 33 -- the key to go up with Cocodrile -- Please do not change to not Bug the Forward movement!
GoDownCocoTx = "Go down" -- Text for cocodrile " Go UP" (In Water)
GoUpCocoTx = "Go up" -- Text for cocodrile "Go Down" (In Water)
UpTextHorse = "Tire up" -- Key to go up with horse, useful to avoid obstables!
HorseCanJump = true -- Alpha, please disable this if you don't like it, but it's a little bit usefull for go over obstacles, press Q to standup your horse!
checkHighFall = true -- If you set this to false, the horse not die when fall from highest fall. Useful for fantasy project, or just let your ped "Invicible" from your Core.

-- WHAT HAPPEND WHEN HORSE DIE?
local deleteFast = true -- If you want that the horse will be instanly delete while dead put this variable to true
-- HEY, IF YOU LET THIS VARIABLE FALSE: The horse will not delete instatly but only if you go far away from it. This can be good if you have some Item in a fantasy project to revive your horse before delete it 4 ever.
function onHorseDie(horseVarPed)
	if deleteFast then 
		Wait(5000)
		SetEntityAsMissionEntity(horseVarPed, true, true) 
		DeletePed(horseVarPed) DeleteEntity(horseVarPed)
		testo3d("~r~Mount dead and deleted fast.")
	end
end

-- PED RIDEABLE SPAWNER!
-- IF YOU DONT NEED BECAUSE YOU SPAWN HORSE FROM YOUR ITEMS PLEASE COMMENT ALL BELOW!
local TakeHorseSpawner = 74 -- If you need change this with the KEY you need: https://docs.fivem.net/docs/game-references/controls/
local TxtTakeHorse = "Rent mounts" -- Translate with your lanage -- "Take the horse " -- monete = $
local SpawnerHorse = {
	-- FOR THIS POSITIONS THANK TO: .Legacy · Tactical-Gaming.net
	{ x=439.28,y=6460.4,z=27.80}, --paleto barn
    { x=2958.42,y=5324.87,z=99.70}, --gordo campground
    { x=-890.03,y=4824.33,z=301.50}, --chiliad
    { x=-1951.02,y=4440.13,z=35.50}, --near O
    { x=-2211.77,y=2321.20,z=31.70}, --near S
    { x=-1922.11,y=2049.15,z=139.80}, --vineyard
    { x=-1550.53,y=1381.10,z=125.30}, --tonga valley
    { x=-3187.29,y=919.85,z=13.60}, --chumash
    { x=-2273.22,y=1078.21,z=197.50}, --banyon canyon
    { x=-2042.18,y=-137.73,z=26.20}, --kortz trail
    { x=-1458.77,y=-1014.42,z=4.60}, --vespucci
    { x=1455.27,y=-2607.40,z=47.50}, --oil fields south shore
    { x=2784.71,y=-715.38,z=4.20}, --near NOOSE
    { x=1216.98,y=-275.84,z=68.30}, --near mirror park north
    { x=1088.23,y=57.96,z=79.90}, --casino horse race track middle
    { x=1042.12,y=-135.10,z=73.30}, --casino horse race track south
    { x=1209.12,y=342.27,z=81.00}, --casino horse race track north
    { x=133.87,y=579.84,z=182.80}, --vinewood hills east
    { x=261.31,y=899.72,z=208.20}, --vinewood hills north east
    { x=-171.24,y=1286.94,z=302.20}, --vinewood hills north
    { x=-1158.08,y=931.92,z=197.00}, --vinewood hills west
    { x=-144.63,y=1913.08,z=196.30}, --great chaparral
    { x=-410.93,y=2808.45,z=44.50}, --5000
    { x=342.70,y=2462.04,z=46.90}, --harmony south west
    { x=1551.97,y=2193.61,z=78.00}, --4001
    { x=1048.99,y=2042.75,z=52.20}, --redwood lights track
    { x=-238.10,y=3909.61,z=37.60}, --near stab city
    { x=-117.79,y=4292.59,z=44.40}, --north calafia way
    { x=1694.77,y=4580.05,z=40.40}, --north calafia way in grapeseed
    { x=2156.80,y=5003.24,z=40.50}, --grapeseed middle
    { x=2483.82,y=4541.80,z=33.40}, --grapeseed south
    { x=1888.29,y=3329.76,z=43.10}, --senora park near flywheels
    { x=1598.31,y=6440.64,z=24.40}, --J senora fwy
	{ x=-1002.361,y=5045.683,z=175.11}, --near nudist
	{ x=3156.844,y=7491.798,z=19.402}, --striano_island
} 

HorseBlipActive = false -- Set to true to see the "H" icon on Radar"!
CreateThread(function()
	-- COMMENT THIS IF YOU DONT WANT BLIP ON MAP OF SPAWNER HORSE
	if HorseBlipActive then
		for _, info in pairs(SpawnerHorse) do 
			-- if info.y >= 2000 then -- THIS IS FOR TEST PLEASE REMOVE IF I FORGOT! (Remove also the end below!)
				local blip = AddBlipForCoord(info.x, info.y, info.z)
				SetBlipSprite(blip, 141) -- Deer Icon=141, Horse Icon=591, Choose yours here: https://docs.fivem.net/docs/game-references/blips/
				SetBlipDisplay(blip, 4)
				SetBlipScale(blip, 0.65)
				SetBlipColour(blip, 0)
				SetBlipAsShortRange(blip, true)
				SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
				-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
				--[[
					BeginTextCommandSetBlipName("STRING")
					local textOfBlip = "SPAWN HORSE"
					AddTextComponentString(textOfBlip)
					EndTextCommandSetBlipName(blip)
				]]
			-- end -- I MEAN THIS! (THE "below" end)
		end
	end
end)

-- THIS IS FOR RENT HORSE AROUND MAP!
CreateThread(function()
	Wait(1000)
	while true do 
		Wait(0)
		local trovato = false
		local ped = PlayerPedId()
		for k, v in pairs(SpawnerHorse) do
			if #(GetEntityCoords(ped) - vector3(v.x, v.y, v.z)) < 15.0 and IsEntityVisible(ped) and not exports.striano_ridehorse:inShopAnimals() and not ActiveMenu and not exports.striano_fastmenu:opened() and not IsEntityAttached(ped) then
				trovato = true
				DrawMarker(1, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 0.4, 255, 255, 255, 200, false, true, 2, false, false, false, false)
				if #(GetEntityCoords(ped) - vector3(v.x, v.y, v.z)) < 3.0 then
					InfoHorse(TakeHorseSpawner, TxtTakeHorse) -- Change this with a loop notify you like!
					if IsControlJustReleased(0, TakeHorseSpawner) or IsDisabledControlJustReleased(0, TakeHorseSpawner) then	
						if not DoesEntityExist(Animal.Handle) then						
							openShopAnimalMenuNew(true) -- this is to open menu with only rent!
							-- TriggerEvent("spawnHorse", v.model) -- Let only this if you dont want "pay" to get the horse.
						else
							TriggerEvent("dropHorse")
						end
						Wait(1000)
					end
				end
			end
		end		
		if not trovato then 
			Wait(2000)
		end
	end 
end)

local function NoMoneyFunction(priceMiss)
	notify("No money! ("..priceMiss..")")
	faiAnim("gestures@f@standing@casual", "gesture_shrug_hard", 750, 49)
	PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)
end

function OnBuyAnAnimal(data)
	if not Renting then
		-- BUY HORSE FUNCTION!
		local PRICE = data.price
		-- If is set a correct price it will check if the player have the money!
		if PRICE ~= nil and PRICE > -1 and PRICE > 0 then
			TryPayCoins(PRICE, function(ok, left)
				if not ok then
					NoMoneyFunction(PRICE)
					return
				end

				SuccessBuy( { price=data.price, model=data.model, components=data.components } )
			end, "player")	
		else
			-- If price is not correct set the animal will be assigned in database FREE.
			SuccessBuy( { model=data.model, components=data.components } )
		end
	else
		-- RENT FUCTION!
		local PRICE = data.rentprice
		if PRICE ~= nil then 	
			TryPayCoins(PRICE, function(ok, left)
				if not ok then
					NoMoneyFunction(PRICE)
					return
				end

				SuccessRent( { model=data.model, components=data.components } )
			end, "player")
		else
			testo3d("~r~Mount with not rent-price set.")
		end
	end
end

function SuccessRent(data)
	table.insert(MyAnimals, data)
	testo3d("~y~Mount rented & added in ~h~/myAnimals")
	-- ExecuteCommand("myAnimals")
end

-- COMMAND TO OPEN THE SHOP!
RegisterCommand('shopAnimals', function(source, args, raw) 
	OpenShopAnimals(nil, true) -- this is to open the menu with only BUY!
end)

exports('strianoMounts_openShop', function() OpenShopAnimals(nil, true) end)

-- If you want call this function from another script?
exports('ShopAnimals', function() OpenShopAnimals(nil, true) end)  -- exports.striano_ridehorse:ShopAnimals()
exports('RentAnimals', function() OpenShopAnimals(true, nil) end)  -- exports.striano_ridehorse:RentAnimals()

-- To get the list of all your animals!
RegisterCommand("MyAnimals", function(source, args, raw)
	-- print("Animals list: " .. #MyAnimals)
	if #MyAnimals == 0 then 
		faiAnim("gestures@f@standing@casual", "gesture_shrug_hard", 750, 49)
		PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)	
		testo3d("~r~No animals in list.")
	else
		OpenMyAnimals()
	end
end)

exports('getMyAnimals', function() return #MyAnimals end) -- here i get how many animals i have in the list, good to make some restrict.
exports('myHorseHandler', function() return Animal.Handle end)
exports('GetMyHorse', function() return Animal.Handle end)
RegisterCommand("myHorse", function(source, args, raw)
	print("myHorse var:", Animal.Handle)
end)

function NoAnimalsFunction()
	testo3d("~r~No animals in list.")
	faiAnim("gestures@f@standing@casual", "gesture_shrug_hard", 750, 49)
	PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)
end

function GetBackMoneyHorse(priceWas)
	-- If you sell the horse you want back 70% back of money? Edit as you need.
	local calc = priceWas * 70 / 100
	testo3d("~g~You get back " .. calc .. " from sell.")
	if calc and calc > 0 then -- Edit this as you need to get back money!
		if GetResourceState('striano_inventory') == 'started' then
			TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "moneta", math.floor(calc))
		else
			TriggerServerEvent('ridehorse:giveMoney', math.floor(calc)) -- ox_inventory version!
		end
	end
	PlaySoundFrontend(-1,'Highlight_Error','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)
end

function SoundChangeSelection()
	PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end

function AnimalInsertInList()
	-- Here you can insert a notification when player buy new animal!
end

-- If you need to know if player is in Shop animals from another script
-- exports.striano_ridehorse:inShopAnimals()
-- If you want delete your spawned animal use this in any script you want! TriggerEvent('dropHorse')

RegisterCommand('dropHorse', function(source, args, raw) TriggerEvent('dropHorse') end)

local ListAquatic = {
	"crocodile",
	"a_c_dolphin",
	"a_c_fish",
	"a_c_killerwhale",
	"a_c_humpback",
	"a_c_sharkhammer",
	"a_c_sharktiger",
	"a_c_stingray",	
}
function AquaticAnimalModel(model)
	local find = false
	for i = 1, #ListAquatic do
		if model == GetHashKey(ListAquatic[i]) then 
			find = true
			break
		end
	end
	return find
end
function AquaticAnimal(entity)
	if not entity or entity == 0 or not DoesEntityExist(entity) then
		return false
	end

	local modl=GetValidEntityModel(entity)
	if not modl then
		print("[RIDEHORSE] Invalid entity passed AquaticAnimal:",entity)
		return false
	end

	return AquaticAnimalModel(modl) and IsPedAnimale(entity)
end

function IsFastAnimalModel(model)
	if not model or model == 0 then return false end

	local run=getRunFromModel(model)
	local speed=getSpeedFromModel(model)

	return run == "deer" or speed == "normal" or speed == "fast"
end

function HideFunction(val)
	SetEntityVisible(PlayerPedId(), val, false)
	NetworkSetEntityInvisibleToNetwork(PlayerPedId(), val)
end

function TutorialHorseInfo(acquaticHandle)
	if not acquaticHandle then
		InfoHorse(GoForwardKey,ForwardHorseTx, RunHorseKey,RunTx, SprintHorseKey, SprintTx, RightKeyHorseRot, RightTx, LeftKeyHorseRot, LeftTx) -- Zoom,ZoomTx
	else
		InfoHorse(RunHorseKey,ForwardHorseTx, GoDownCoco,GoDownCocoTx, GoUpCoco,GoUpCocoTx, LeftKeyHorseRot,LeftTx, 45,"Pivot") -- Zoom,ZoomTx
	end
end

function TutorialHorseInfo2()
	InfoHorse(BackHorseKey,StopHorseTx, GoDownCoco,UpTextHorse, RightKeyHorseRot,RightTx, LeftKeyHorseRot,LeftTx) 
end

AddEventHandler('chiudiMenuBtnHorse', function(restore)
	RestorePedAppearance(LastNPCEdit)
	closeMenu()
	if LastNPCEdit ~= nil and DoesEntityExist(LastNPCEdit) then ReleasePedPreloadVariationData(LastNPCEdit) end
	if testHORSE ~= nil and DoesEntityExist(testHORSE) then ReleasePedPreloadVariationData(testHORSE) end
	LastNPCEdit = nil
	InShopHorse = false
	notBUY = nil
	-- if testHORSE ~= nil and DoesEntityExist(testHORSE) then
		-- SetEntityAsMissionEntity(testHORSE)
		-- DeleteEntity(testHORSE)
		-- Wait(25)
	-- end
end)

AddEventHandler('ConfirmBuyAnimal', function()
	if LastNPCEdit ~= nil then
		if DoesEntityExist(LastNPCEdit) then 
			local npc = LastNPCEdit
			SoundChangeSelection()
			local buf = {}
			buf.components = GetComponentAnimal(npc)
			
			local modl=GetValidEntityModel(npc)
			if not modl then
				print("[RIDEHORSE] Invalid entity passed CODE 3:",npc)
				return
			end
			
			buf.model = modl
			buf.price = getPriceFromModel(modl)
			buf.rentprice = getRentPriceFromModel(modl)
			if notBUY == nil then OnBuyAnAnimal(buf) end
			ResetCavalloMove(npc)
			
			closeMenu()
			if LastNPCEdit ~= nil and DoesEntityExist(LastNPCEdit) then ReleasePedPreloadVariationData(LastNPCEdit) end
			if testHORSE ~= nil and DoesEntityExist(testHORSE) then ReleasePedPreloadVariationData(testHORSE) end
			LastNPCEdit = nil
			InShopHorse = false
			notBUY = nil
			-- TriggerEvent("chiudiMenuBtnHorse", false)
		else
			closeMenu()
			print("ERROR TO BUY HORSE PLEASE REPORT THIS CODE TO STRIANODEV: bg-4678")
		end
	else
		closeMenu()
		print("ERROR TO BUY HORSE, entity IS NIL!")
	end
end)

menu = {
	{
		header = 'DONE 🆗',
		event = 'ConfirmBuyAnimal',
	},
	{
		header = 'CLOSE ❌',
		event = 'chiudiMenuBtnHorse',
	},
	{
		header = 'CAMERA 🔒',
		event = 'cameraLock',
	},
	{
		search = true,
		disabled = false
	},
}

testHORSE = nil

RegisterCommand('donkey', function() TryHorse("donkey") end) -- HEY COMMENT THIS COMMAND CAUSE ITS JUST FOR DEVELOPER AND OWNER OF SERVER TO TEST THE SCRIP!
RegisterCommand('testhorse', function() ExecuteCommand("testridehorse") end) -- HEY COMMENT THIS COMMAND CAUSE ITS JUST FOR DEVELOPER AND OWNER OF SERVER TO TEST THE SCRIP!
RegisterCommand('testridehorse', function()	TryHorse("a_c_deer") end) -- HEY COMMENT THIS COMMAND CAUSE ITS JUST FOR DEVELOPER AND OWNER OF SERVER TO TEST THE SCRIP!

function TryHorse(model)
	if testHORSE ~= nil and DoesEntityExist(testHORSE) then
		local posOLDHORSE = GetEntityCoords(testHORSE)
		local playerPed = PlayerPedId()
		SetEntityAsMissionEntity(testHORSE)
		DeleteEntity(testHORSE)
		testHORSE = nil
		-- ShowInstructionalButtonsTimed("You had a test mount, deleted.")
		Wait(25)
		if #(GetEntityCoords(playerPed)-posOLDHORSE) < 15.0 then return end -- Non ricreo un'altro cavallo dopo nel caso il mio cavallo attuale è vicino a me!
		Wait(125)
	end
	RequestModelStriano(model) 
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)
	local forward   = GetEntityForwardVector(playerPed)
	local x, y, z   = table.unpack(coords + forward * 0.8)
	testHORSE = CreatePed(26, model, x, y, z-0.5, GetEntityHeading(playerPed), true, false)
	while not DoesEntityExist(testHORSE) do Wait(0) end
	SetPedDefaultComponentVariation(testHORSE)
	SetModelAsNoLongerNeeded(model)
	SetPedCanBeTargetted(testHORSE, false)
	SetEntityAsMissionEntity(testHORSE)
	ApplyRandoms(testHORSE)
	Wait(125)
	exports.striano_ridehorse:saliCavalcatura()
	if oxTargetActive then
		AddOxEyeMountMenu(testHORSE)
	end
	onGetMountMsg()
	if testHORSE ~= nil and DoesEntityExist(testHORSE) then 
		return testHORSE
	else
		return nil
	end
end

function onGetMountMsg()
	CreateThread(function()
		Wait(255)
		local ped = PlayerPedId()
		if not ActiveMenu and IsEntityAttached(ped) then
			ShowInstructionalButtonsTimed("Mount & Dismount from Horse.", {23})
		end
	end)
end

-- diverso ~
RegisterCommand('testDolphin', function()
	if not IsEntityInWater(PlayerPedId()) then testo3d("~r~Not in water.") return end	
	TryHorse("a_c_dolphin")
end)

RegisterCommand('testhumanoid', function()
	TryHorse("Ostrich")
end)
RegisterCommand('testtrex', function()
	TryHorse("trex")
end)

RegisterCommand('horseColor', function(source, args, raw) -- USEFUL COMMAND TO SPAWN AN HORSE WITH A SPECIFIC COLOR ID! Example: /horseColor 5 (maximum is 15!!!)	
	TryHorse("a_c_deer")
	ApplySpecificColor(testHORSE, args[1] or 1)
end)

SavedPedAppearance={}

function SavePedAppearance(ped)
	if not ped or ped==0 or not DoesEntityExist(ped) then return false end

	local data={
		components={},
		props={}
	}

	for component=0,11 do
		data.components[component]={
			drawable=GetPedDrawableVariation(ped,component),
			texture=GetPedTextureVariation(ped,component),
			palette=GetPedPaletteVariation(ped,component)
		}
	end

	for prop=0,7 do
		data.props[prop]={
			index=GetPedPropIndex(ped,prop),
			texture=GetPedPropTextureIndex(ped,prop)
		}
	end

	SavedPedAppearance[ped]=data
	return true
end

function RestorePedAppearance(ped)
	if not ped or ped==0 or not DoesEntityExist(ped) then return false end

	local data=SavedPedAppearance[ped]
	if not data then return false end

	for component=0,11 do
		local c=data.components[component]
		if c then SetPedComponentVariation(ped,component,c.drawable,c.texture,c.palette) end
	end

	for prop=0,7 do
		local p=data.props[prop]
		if p then
			if p.index==-1 then
				ClearPedProp(ped,prop)
			else
				SetPedPropIndex(ped,prop,p.index,p.texture,true)
			end
		end
	end

	return true
end

local function ClearSavedPedAppearance(ped)
	SavedPedAppearance[ped]=nil
end

RegisterCommand('modhorse',function()
	local horse=Animal.Handle
	if not horse or horse==0 or not DoesEntityExist(horse) then return end
	SavePedAppearance(horse)
	notify("Mouse Right: ~h~Lock Cam")
	ActiveMenu=true
	notBUY=true
	LastNPCEdit=horse
	Modifica(LastNPCEdit)
end)

EnableOrbitCam = false -- Did you like the orbit cam of prev version? Just put this to true!

function OnShopOpen() -- DO YOU WANT SOME FUNCTION WHEN SHOP OPEN? INSERT HERE!
	if GetResourceState('striano_editor') == 'started' then exports['striano_editor']:HintHud_SetVisible(false) end -- COMMENT OUT THIS LINE OR JUST REMOVE THIS LINE IF YOU DONT HAVE striano_hints
end

function notify(text)
	testo3d(text) 
end

function checkCameraEdit(var) -- When you press SHIFT in edit ped mode!
	if var then
		PlaySoundFrontend(-1,'MP_IDLE_KICK','HUD_FRONTEND_DEFAULT_SOUNDSET',1) 
		notify("Camera: ~h~Locked")
	else
		PlaySoundFrontend(-1,'NAV_LEFT_RIGHT','HUD_FRONTEND_DEFAULT_SOUNDSET',0)
		notify("Camera: ~h~Freemode")
	end
end

-- MENU COMPONENTS
_components = {
	{ id = 0, name = 'Head (0)' },
	{ id = 1, name = 'Mask (1)' },
	{ id = 2, name = 'Hair (2)' },
	{ id = 3, name = 'Torso (3)' },
	{ id = 4, name = 'Leg (4)' },
	{ id = 5, name = 'Bag (5)' },
	{ id = 6, name = 'Shoes (6)' },
	{ id = 7, name = 'Accs [1] (7)' },
	{ id = 8, name = 'Accs [2] (8)' },
	{ id = 9, name = 'Accs [3] (9)' },
	{ id = 10, name = 'Decal (10)' },
	{ id = 11, name = 'Armor (11)' },
}

updaterDelay = 7 -- 25 is better for optimisation

-- REMOVE STAMINA TIMER
maxHorseStamina = 1000
horseStamina = 1000 -- PUT = nil TO DISABLE!
drainTimeMs = 60000 -- REMOVE in seconds         
drainPerMs = maxHorseStamina / drainTimeMs 

-- RECHARGE STAMINA TIMER
rechargeTimeMs = 15000 -- RECHAARGE in 30 secs
rechargePerMs = maxHorseStamina / rechargeTimeMs

exports('getHorseStamina', function() -- Useful to get the stamina of the horse and block some functions like despawn horse?
	return horseStamina
end)

function horseTiredMessage()
	testo3d("~r~~h~Horse tired.")
end

tooFar_txt = "Horse too far."
notDetectHorse_txt = "Horse not detected."

-- CHECKING OF MONEY (If you dont have striano_inventory you can remove this!)
payReq = 0
pendingPay = {}
function TryPayCoins(price, cb, invName)
	payReq = payReq + 1
	pendingPay[payReq] = cb
	TriggerServerEvent("inv3d:tryPayCoins", payReq, price, invName or "player")
end
RegisterNetEvent("inv3d:payCoinsResult", function(id, ok, leftCoins)
    if GetResourceState('striano_inventory') == 'started' then
		local cb = pendingPay[id]
		if cb then
			pendingPay[id] = nil
			cb(ok, tonumber(leftCoins) or 0)
		end
	else
		local cb = pendingPay[id]
		if cb then
			pendingPay[id] = nil
			cb(ok, tonumber(leftCoins) or 0)
		end
	end
end)
--[[
RegisterNetEvent("inv3d:payCoinsResult", function(id, ok, leftCoins)
	local cb = pendingPay[id]
	if cb then
		pendingPay[id] = nil
		cb(ok, tonumber(leftCoins) or 0)
	end
end)
]]

function LoopStaminaVisive(cavHandle)
	if horseStamina < maxHorseStamina then
		local x,y,z = table.unpack(GetPedBoneCoords(cavHandle, 0))
		if not IsEntityAttached(playerPed) then z = z+0.5 end
		local colore = {120,210,120}
		if tiredMode then colore = {120,0,0} end
		BarraHP(vector3(x,y,z-0.95), 25.0, horseStamina, maxHorseStamina, colore[1],colore[2],colore[3])
	end
end

-- EDIT THE BAR AS YOU NEED!
function BarraHP(coords, scale, currentHealth, maxHealth, r,g,b, a)
    if r == nil then r = 255 end
    if g == nil then g = 0 end
    if b == nil then b = 0 end

    local normalizedHealth = math.max(0, math.min(100, (currentHealth / maxHealth) * 100))

    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local px, py, pz = table.unpack(GetGameplayCamCoord())
    local dist = #(vector3(px, py, pz) - coords)

    -- meglio usare altro nome così non sovrascrivi il parametro
    local s = (1.0 / dist) * 2.0
    local fov = (1.0 / GetGameplayCamFov()) * 50.0
    s = s * fov

    -- fattore per ingrandire/ridurre la barra
    local sizeFactor = 1.5  -- aumenta questo per farla più grande

    if onScreen then      
        local barWidth = 0.05 * s * sizeFactor
        local barHeight = 0.005 * s * sizeFactor
        local barX = _x
        local barY = _y + (0.012 * s * sizeFactor)

        DrawRect(barX, barY, barWidth + 0.002 * sizeFactor, barHeight + 0.002 * sizeFactor, 0, 0, 0, 150)

        local healthWidth = math.max(0, barWidth * (normalizedHealth / 100))
        local healthBarX = barX - (barWidth / 2) + (healthWidth / 2)

        DrawRect(healthBarX, barY, healthWidth, barHeight, r, g, b, a or 200)
    end
end

function WhileMenuDisable()
	DisableControlAction(0,24,true) DisableControlAction(1,24,true) DisableControlAction(2,24,true)
	DisableControlAction(0,257,true) DisableControlAction(1,257,true) DisableControlAction(2,257,true)
end

function DrawText3DHorse(x,y,z, testo, scale)
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

PlayerCanDeleteHorse = true -- PUT THIS TO FALSE IF YOU WANT THAT PLAYER CANT DELETE OWN HORSE.

function SpawnAnimalFromMenu(data, onlyRent, onlyBuy)
    local model = data.model or "unknown"
    DeleteAnimalPreview()
	
	exports['striano_fastmenu']:clearMenu() 
	exports['striano_fastmenu']:close() Wait(25)
	
	if onlyBuy == nil and onlyRent ~= nil then 
		exports['striano_fastmenu']:addMenuItem(
			"[ "..model.." ]",
			function() end,
			false
		)
		exports['striano_fastmenu']:addMenuItem(
			"💰 RENT ("..(data.rentprice or "?")..")",
			function()
				exports['striano_fastmenu']:close()
				DeleteAnimalPreview()
				if testHORSE ~= nil and DoesEntityExist(testHORSE) then
					SetEntityAsMissionEntity(testHORSE)
					DeleteEntity(testHORSE)
					Wait(25)
				end
				TryHorse(model)
				Renting = true
				if testHORSE ~= nil and DoesEntityExist(testHORSE) then
					LastNPCEdit = testHORSE
				end
				Modifica(LastNPCEdit)
			end,
			false
		)
		exports['striano_fastmenu']:openMenu()
		return
	elseif onlyRent == nil and onlyBuy ~= nil then 
		exports['striano_fastmenu']:addMenuItem(
			"[ "..model.." ]",
			function() end,
			false
		)
		exports['striano_fastmenu']:addMenuItem(
			"👑 BUY ("..(data.price or "?")..")",
			function()
				exports['striano_fastmenu']:close()
				DeleteAnimalPreview()
				if testHORSE ~= nil and DoesEntityExist(testHORSE) then
					SetEntityAsMissionEntity(testHORSE)
					DeleteEntity(testHORSE)
					Wait(25)
				end
				TryHorse(model)
				Renting = false
				if testHORSE ~= nil and DoesEntityExist(testHORSE) then
					LastNPCEdit = testHORSE
				end
				Modifica(LastNPCEdit)
			end,
			false
		)
		exports['striano_fastmenu']:openMenu()
		return
	end
	
	-- If not rent and not buy is active then spawn to just test the mount!
	TryHorse(model)
end

RegisterCommand("animalmenu", function() openShopAnimalMenuNew() end)
RegisterCommand("menuanimal", function() openShopAnimalMenuNew() end)

exports('openShop', function() openShopAnimalMenuNew() end)
function openShopAnimalMenuNew(onlyRent, onlyBuy)
	exports['striano_fastmenu']:close() Wait(25)
	exports.striano_fastmenu:clearMenu()
    for i = 1, #AnimalsModel do
        local v = AnimalsModel[i]
        local model = v.model
        if model and IsModelValid(GetHashKey(model)) and not AquaticAnimalModel(GetHashKey(model)) then
            exports.striano_fastmenu:addMenuItemAdvanced({
                label = ("[%s] %s"):format(i, model),
                description = ("Buy: %s | Rent: %s"):format(v.price or "N/A", v.rentprice or "N/A"),
                autoClose = false,

                onHover = function()
                    ShowAnimalPreview(model)
					PlaySoundFrontend(-1,'NAV_LEFT_RIGHT','HUD_FREEMODE_SOUNDSET',1)
                end,

                onClick = function()
                    SpawnAnimalFromMenu(v, onlyRent, onlyBuy)
                end,

                hoverInfo = {
                    title = model,
                    -- description = "Clicca per spawnare / selezionare questo animale.",
                    -- footer = "H = ruota preview",
                    icon = "paw",
                    theme = "dark"
                }
            })
        -- else
            -- print("^3[ANIMAL MENU]^7 model not valid:", model)
        end
    end

    exports.striano_fastmenu:openMenu()
end

-- DELETE A MOUNT ID FROM YOUR LIST
RegisterCommand("delMount", function(source, args)
	if PlayerCanDeleteHorse then 
		if args[1] == nil then ShowInstructionalButtonsTimed("Insert a valid ID mount of your list.") return end
		if tonumber(args[1]) == nil or tonumber(args[1]) < 1 then ShowInstructionalButtonsTimed("Insert a valid ID mount of your list.") return end
		local id = tonumber(args[1])
		if MyAnimals[id] == nil then ShowInstructionalButtonsTimed("This mount not exist in your list.") return end
		TriggerEvent("dropHorse")
		DelAnteprimaAnimale()
		if MyAnimals[id].price ~= nil then GetBackMoneyHorse(MyAnimals[id].price) end
		print("^2[Striano_RideHorse] ^7You have ^1deleted ^7the animal ID " .. id .. " from your list.")
		table.remove(MyAnimals, id)
		TriggerServerEvent("Striano:SaveAnimal", GetPlayerServerId(PlayerId()), MyAnimals)
	else
		ShowInstructionalButtonsTimed("[~h~~y~striano mounts~w~~h~] Mounts can be deleted only from database with this config, please ask an admin!")
	end
end)

-- OX TARGET
oxTargetActive = false
function AddOxEyeMountMenu(horse)
    if not horse or not DoesEntityExist(horse) then return end
    if GetResourceState('ox_target') ~= 'started' then return end

    exports.ox_target:removeLocalEntity(horse, {
        'striano_mount_teleport',
        'striano_mount_follow',
        'striano_mount_stop_follow',
        'striano_mount_come',
        'striano_mount_drop'
    })

    exports.ox_target:addLocalEntity(horse, {
        {
            name = 'striano_mount_teleport',
            icon = 'fa-solid fa-magnet',
            label = 'Teleport Mount',
            distance = 2.5,
            canInteract = function(entity)
                return Animal and Animal.Handle and entity == Animal.Handle
            end,
            onSelect = function()
                HoldHorse()
            end
        },
        {
            name = 'striano_mount_follow',
            icon = 'fa-solid fa-horse',
            label = 'Follow Me!',
            distance = 2.5,
            canInteract = function(entity)
                return Animal and Animal.Handle and entity == Animal.Handle and not CavalloMiSegue
            end,
            onSelect = function()
                FollowMeHorse()
            end
        },
        {
            name = 'striano_mount_stop_follow',
            icon = 'fa-solid fa-hand',
            label = 'Stop Follow Me!',
            distance = 2.5,
            canInteract = function(entity)
                return Animal and Animal.Handle and entity == Animal.Handle and CavalloMiSegue
            end,
            onSelect = function()
                StopFollowMeHorse()
            end
        },
        {
            name = 'striano_mount_drop',
            icon = 'fa-solid fa-person-running',
            label = 'Drop Current Mount!',
            distance = 2.5,
            canInteract = function(entity)
                return Animal and Animal.Handle and entity == Animal.Handle
            end,
            onSelect = function()
                TriggerEvent("dropHorse")
            end
        }
    })
end

function RemoveOxEyeMountMenu(horse)
    if GetResourceState('ox_target') ~= 'started' then return end
    if not horse or not DoesEntityExist(horse) then return end

    exports.ox_target:removeLocalEntity(horse, {
        'striano_mount_teleport',
        'striano_mount_follow',
        'striano_mount_stop_follow',
        'striano_mount_come',
        'striano_mount_drop'
    })
end

debughorse = false
function horseprint(msg)
	if debughorse then print(msg) end
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then	
		if objCava then SetEntityAsMissionEntity(objCava) DeleteEntity(objCava) objCava = nil end
		if Animal.Handle ~= nil and DoesEntityExist(Animal.Handle) then
			local playerPed = PlayerPedId()
			DetachEntity(playerPed)
			if DoesBlipExist(BLIPCAVALLO) then RemoveBlip(BLIPCAVALLO) BLIPCAVALLO = nil end
			DeleteEntity(Animal.Handle)
			ClearPedTasks(playerPed) 
			-- ClearPedTasksImmediately(playerPed)
			while not HasAnimDictLoaded("gestures@f@standing@casual") do RequestAnimDict("gestures@f@standing@casual") Wait(0) end
			TaskPlayAnim(playerPed, "gestures@f@standing@casual", "gesture_pleased", 8.0, 8.0, 5, 51, 0, false, false, false)
			ClearPedTasks(playerPed)
			IsRidingAnimal = false
			EndOrbitCam()
		end
		Animal.Handle = nil
		Animal.Model=nil
		for i=1,#ReinAnchors do
			local anchor=ReinAnchors[i]
			if anchor and DoesEntityExist(anchor) then SetEntityAsMissionEntity(anchor) DeleteEntity(anchor) end
		end
		for i=1,#HorseReins do
			local rope=HorseReins[i]
			if rope and DoesRopeExist(rope) then DeleteRope(rope) end
		end
		DelAnteprimaAnimale()
		if Animal.Handle and DoesEntityExist(Animal.Handle) then 
			SetEntityAsMissionEntity(Animal.Handle)
			DeleteEntity(Animal.Handle)
		end
	end
end)

-- NEW 24/08/2026
delOnDrop = false -- Put this to false if you dont like that the horse disappear soon the player dorp it! This is useful for big project to not have too much spawned horses around map!

-- TO GET MOUNTS FROM OTHER PLAYERS AS ADMIN!
RegisterCommand("getMounts",function(source,args)
	local target=tonumber(args[1])
	if not target then
		testo3d("Insert a valid player id")
		return
	end
	TriggerServerEvent("getOtherHorseList",target)
end,false)

RegisterNetEvent('getBackOtherAnimals')
AddEventHandler('getBackOtherAnimals',function(list,target,name)
	if not list or #list<=0 then
		testo3d("No mounts in player list.")
		return
	end
	testo3d("detected " .. #list .. " mounts.")
	OpenOtherAnimals(list,target,name)
end)

function OpenOtherAnimals(list,target,name)
	if InShopHorse then
		horseprint("Still in shop animals.")
		return
	end
	local playerPed=PlayerPedId()
	if IsPedInAnyVehicle(playerPed) or IsEntityAttached(playerPed) then
		horseprint("Locked operation on vehicle.")
		return
	end
	if not list or #list<=0 then
		horseprint("^1[Striano Animals] ^7No animals detected.")
		return
	end
	exports['striano_fastmenu']:clearMenu()
	for i=1,#list do
		local mountIndex=i
		local v=list[i]
		local model=v.model or "unknown"
		exports['striano_fastmenu']:addMenuItemAdvanced({
			label=("Mount ID [%s]"):format(mountIndex),
			description=("Owner: %s | Model: %s"):format(name or ("ID "..target),model),
			autoClose=false,
			onHover=function()
				ShowAnimalPreview(model)
				if PreviewAnimal and DoesEntityExist(PreviewAnimal) and v.components then
					LoadComponentsAnimal(PreviewAnimal,v.components)
				end
				PlaySoundFrontend(-1,'NAV_LEFT_RIGHT','HUD_FREEMODE_SOUNDSET',1)
			end,
			onClick=function()
				exports['striano_fastmenu']:clearMenu()
				exports['striano_fastmenu']:addMenuItemAdvanced({
					label="Delete",
					description=("Delete Mount ID [%s] from %s"):format(mountIndex,name or ("ID "..target)),
					autoClose=true,

					onClick=function()
						TriggerServerEvent("adminDeleteMount",target,mountIndex) -- ExecuteCommand(("delmount %s %s"):format(target,mountIndex))
						exports['striano_fastmenu']:close()
					end
				})
				exports['striano_fastmenu']:addMenuItemAdvanced({
					label="Take Mount",
					description=("Take Mount ID [%s] from %s"):format(mountIndex,name or ("ID "..target)),
					autoClose=true,
					onClick=function()
						TriggerServerEvent("adminTakeMount",target,mountIndex) -- ExecuteCommand(("assignHorse %s %s"):format(target,mountIndex))
						exports['striano_fastmenu']:close()
					end
				})
				exports['striano_fastmenu']:openMenu()
			end
		})
	end

	exports['striano_fastmenu']:openMenu()

	ShowAnimalPreview(list[1].model)

	if PreviewAnimal and DoesEntityExist(PreviewAnimal) and list[1].components then
		LoadComponentsAnimal(PreviewAnimal,list[1].components)
	end
end

function canReise()
	if exports.striano_combat:inCombat() then return false end -- DELETE THIS STRING IF YOU DONT HAVE striano_combat
	return true
end

function GetValidEntityModel(entity)
	if type(entity) ~= "number" or entity == 0 then
		return nil
	end

	if not DoesEntityExist(entity) then
		return nil
	end

	local ok,model=pcall(GetEntityModel,entity)
	if not ok or not model or model == 0 then
		print("[RIDEHORSE] GetEntityModel failed:",entity,model)
		return nil
	end

	return model
end