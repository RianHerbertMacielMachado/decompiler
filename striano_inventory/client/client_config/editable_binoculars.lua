-- STRIANO BINOCULARS 1.0
binoculars = false -- DO NOT TOUCH THIS VARIABLE.
hashBinocularsObj = "prop_binoc_01" -- If you have a better model insert here!
attachPos = vector3(0.13,0.05,0.07)
attachRot = vector3(12.0,-252.0,-19.0)
boneId = 18905
VelX = 5.0
VelY = 5.0
VelZoom = 3.0

-- HOW I CAN CHECK IF BINOCULARS SYSTEM IS ACTIVE? 
-- This is very useful to create check in other scripts 
-- RETURN true if player is in binoculars system open
	-- exports.striano_inventory:binocoloattivo()


-- HOW I CAN TEST THE SCRIPT WITHOUT ANY ITEM OR CHECK?
-- Just uncomment the command here downside:
RegisterCommand('binoculars', function() 
	if IsPedHuman(PlayerPedId()) then 	
		exports.striano_inventory:ActiveBinoculars()
	end
end)

-- YOU NEED TO CALL ANOTHER FUNCTION WHEN BINOCULARS OPEN?
-- Insert all what you need here:
function OnBinocularsOpen()
	-- Insert here what you need.
end
function OnBinocularsClosed()
	-- Insert here what you need when the player close Binoculars System.
end

-- THIS IS ONLY IN THE CASE OF DESYNC, BUT IT'S JUST FOR SAFE!
RegisterCommand('fixbinoculars', function() DelBinocolo() end)

function UseNotify()
	-- PLEASE CHANGE THIS NOTIFY WITH YOUR OWN NOTIFY SYSTEM OR JUST COMMENT
	exports.striano_combat:submexInfo("Use the arrow-keys to activate the available mode.") 
	-- [Eng translation] Use the arrow keys to active the available mod of this binoculars!
end

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    if ObjBinocolo ~= nil and DoesEntityExist(ObjBinocolo) then 
		SetEntityAsMissionEntity(ObjBinocolo, true)
		DeleteEntity(ObjBinocolo)
	end
end)
	