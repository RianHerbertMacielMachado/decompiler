ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function soundtre()
	notify(m.Tre)
	PlaySoundFrontend(-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
end

function soundtwo()
	notify(m.Two)
	PlaySoundFrontend(-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
end

function soundone()
	notify(m.One)
	PlaySoundFrontend(-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
end

function soundgo()
	notify(m.Gooo)
	PlaySoundFrontend(-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
end

function SoundTakeMarker()
	PlaySoundFrontend(-1, "Highlight_Error", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
end
	
function MarkerRaceRed(v)
	DrawMarker(1, v.x, v.y, v.z+0.01, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 25.5, 255, 0, 0, 50, false, true, 2, false, false, false, false)
end

function MarkerRaceWhite(v2)
	DrawMarker(1, v2.x, v2.y, v2.z+0.01, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 35.5, 255, 255, 255, 50, false, true, 2, false, false, false, false)
end

function MsgRaceComplete()
	notify(m.RaceComplete)
end

function MsgRaceStartSoon()
	notify(m.SoonStart)
end

function MarkerStartRace(v, size)
	DrawMarker(1, vector3(v.x,v.y,v.z+0.01), 0.0, 0.0, 0.0, 0, 0.0, 0.0, size, size, 1.5, 255, 0, 0, 50, false, true, 2, false, false, false, false)
end