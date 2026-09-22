maxSpeedVar = 0.4

local nofloodfly = false

exports('lockfly', function(val) 
	if val == nil then 
		lockfly = false
	else
		lockfly = val
	end
end)

exports('isflying', function() return flyActive end)

local function canFlyCheck()
	local ped = PlayerPedId()
	if not nofloodfly and 
		IsPedHuman(ped) and 
		not IsEntityPositionFrozen(ped) and 
		not IsEntityAttached(ped) and 
		not lockfly and 
		not exports.striano_editor:editorattivo() and -- REMOVE THIS LINE IF YOU DONT HAVE striano_prop_manager!
		not exports.striano_editor:crouchato() and -- REMOVE THIS LINE IF YOU DONT HAVE phar FROM MY CORE!
		-- INSERT OTHER CHECKER IF YOU WANT LOCK FLY IN OTHER SITUATION!
		GetInteriorFromEntity(ped) == 0 then 
			return true
	else
		return false
	end
end

RegisterNetEvent("start:fly")
AddEventHandler("start:fly", function()
	-- DISABLED AT MOMENT! THIS IS THE OLD FLY SYSTEM!
	--[[
	local ped = PlayerPedId()
	if not flyActive then
		if canFlyCheck() then 
			if IsPedRagdoll(ped) then ExecuteCommand("stopRagdoll") Wait(1) end -- REMOVE THIS IF YOU DONT HAVE MY CORE!
			nofloodfly = true	
			flyActive = true
			
			local pos = GetEntityCoords(ped)
			SetEntityCoords(ped, pos)
			ClearRagdollBlockingFlags(ped, 26)
			ResetPedRagdollTimer(ped)
			
			if IsControlPressed(0,21) then flyUp(ped, 2.5, 500) else flyUp(ped, 2.5, 1000) end
			
			LoopStrianoFly()
			CreateFxFly()
			Wait(150)
			nofloodfly = false
		end
	else
		if not nofloodfly then
			nofloodfly = true
			EndFly()
			Wait(150)
			nofloodfly = false
		end
	end
	]]
end)

RegisterCommand('fly', function() -- /fly "fly"
	print("Fly is disabled at moment, use the new fly command /flyHuman")
	-- TriggerEvent("start:fly")
end)
-- RegisterKeyMapping('fly', "Striano Fly", "keyboard", "F9")
