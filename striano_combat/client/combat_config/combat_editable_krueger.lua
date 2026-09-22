function canCut()
	-- local ped = PlayerPedId() if not IsPedArmed(ped, 1) then return false else return true end -- IF YOU WANT THE CHECK OF THE KNIFE JUST UNCOMMENT THIS LINE AND COMMENT LINE DOWN!
	return true 
end

-- CALL FROM ANY SCRIPT!
exports('callKrueger', function(id, PedVic) 
	-- if GetEntitySpeed(PlayerPedId()) <= 1.0 then
		callKrueger(id, PedVic) 
	-- end
end) 
-- HOW TO USE? exports.striano_krueger:callKrueger(ID_MOVES)

function shotSound(p) -- p = coords if you need
	PlaySoundFrontend(-1,'Enemy_Pick_Up','HUD_FRONTEND_MP_COLLECTABLE_SOUNDS',1)
end