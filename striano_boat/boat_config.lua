-- STRIANO BOAT 1.0
-- A NEW WAY TO NAVIGATE, COOL FOR SURVIVAL, FANTASY, OR COMBINED WITH FISH SCRIPT!

-- AVAILABLE EXPORTS ARE:
-- exports.striano_boat:spawnBoat(ID_BOAT) -- to spawn the boat in water, cool also for magic item or checkpoint blip on Port.
-- Every Boat can have own speed!
BoatModelList = {
	{ -- BOAT ID: 1
		model="prop_byard_rowboat4",
		offset_player={0.0,-1.12,1.35,0.0,0.0,0.0},
		offset_boat={0.0,0.0,-0.2},
		boatSpeed=0.15,
		turnForce=0.06,
		seatAnim={a="timetable@reunited@ig_9",b="eating_disorder_tracy"},
		boatAnim={a="boat_set_double_paddle_row",b="boat_set_double_paddle_row_clip"},
		boatAnimIdle={a="boat_set_double_paddle_idle",b="boat_set_double_paddle_idle_clip"},
		oars = {
			{ -0.195,-0.32,-0.275,-53.8,13.4,-32.0, 57005, "remo" }, -- dx 1
			{ -0.35,-0.335,0.245,-141.4,-44.0,-21.0, 18905, "remo" }, -- sx 1
		},
		seats={ -- 5 IS OK!
			{0.504,-0.135,1.017,0.0,0.0,0.0},
			{-0.531,-0.135,1.017,0.0,0.0,0.0},
			{-0.477,-1.242,1.017,0.0,0.0,0.0},
			{0.027,-1.242,1.017,0.0,0.0,0.0},
			{0.504,-1.242,1.017,0.0,0.0,0.0},
		}
	},
	{ -- BOAT ID: 2
		model="vikingship2",
		offset_player={0.0,0.486,1.494,0.0,0.0,0.0},
		offset_boat={0.0,0.0,-0.261},
		boatSpeed=0.25,
		turnForce=0.03,
		boatAnim={a="boat_set_double_paddle_row",b="boat_set_double_paddle_row_clip"},
		boatAnimIdle={a="boat_set_double_paddle_idle",b="boat_set_double_paddle_idle_clip"},
		oars = {
			{ -0.195,-0.32,-0.275,-53.8,13.4,-32.0, 57005, "remo" }, -- dx 1
			{ -0.35,-0.335,0.245,-141.4,-44.0,-21.0, 18905, "remo" }, -- sx 1
		},
		seats={ -- 12 SEAT
			{0.126,1.539,1.08,0.0,0.0,95.999999999999},
			{0.126,0.927,1.08,0.0,0.0,95.999999999999},
			{0.126,0.351,1.08,0.0,0.0,95.999999999999},
			{0.126,-0.234,1.08,0.0,0.0,95.999999999999},
			{0.126,-0.738,1.08,0.0,0.0,95.999999999999},
			{0.126,-1.575,1.08,0.0,0.0,95.999999999999},
			{-0.207,-1.35,1.098,0.0,0.0,-88.2},
			{-0.198,-0.666,1.098,0.0,0.0,-88.2},
			{-0.189,0.081,1.098,0.0,0.0,-88.2},
			{-0.189,1.026,1.098,0.0,0.0,-92.399999999999},
			{0.441,5.04,1.206,0.0,0.0,-107.1},
			{-0.108,4.032,1.206,0.0,0.0,113.1},
		},
		seatAnim={a="timetable@jimmy@mics3_ig_15@",b="mics3_15_base_tracy"},
	},
	{ -- BOAT ID: 3
		model="raft",
		offset_player={0.0,-0.171,1.27,15.0,-2.4,0.0},
		offset_boat={0.0,0.0,0.05,0.0,0.0,0.0},
		boatSpeed=0.25,
		turnForce=0.03,
		boatAnim={a="boat_set_double_paddle_row",b="boat_set_double_paddle_row_clip"},
		boatAnimIdle={a="boat_set_double_paddle_idle",b="boat_set_double_paddle_idle_clip"},
		oars = {
			{ -0.195,-0.32,-0.275,-53.8,13.4,-32.0, 57005, "remo" }, -- dx 1
			{ -0.35,-0.335,0.245,-141.4,-44.0,-21.0, 18905, "remo" }, -- sx 1
		},
		seats={ -- 12 SEAT
			{0.126,1.539,1.08,0.0,0.0,95.999999999999},
			{0.126,0.927,1.08,0.0,0.0,95.999999999999},
			{0.126,0.351,1.08,0.0,0.0,95.999999999999},
			{0.126,-0.234,1.08,0.0,0.0,95.999999999999},
			{0.126,-0.738,1.08,0.0,0.0,95.999999999999},
			{0.126,-1.575,1.08,0.0,0.0,95.999999999999},
			{-0.207,-1.35,1.098,0.0,0.0,-88.2},
			{-0.198,-0.666,1.098,0.0,0.0,-88.2},
			{-0.189,0.081,1.098,0.0,0.0,-88.2},
			{-0.189,1.026,1.098,0.0,0.0,-92.399999999999},
			{0.441,5.04,1.206,0.0,0.0,-107.1},
			{-0.108,4.032,1.206,0.0,0.0,113.1},
		},
		seatAnim={a="timetable@jimmy@mics3_ig_15@",b="mics3_15_base_tracy"},
	},
	{ -- BOAT ID: 4
		scale=1.05,
		model="str_boat_2",
		offset_player={0.441,-3.807,0.611,5.7,3.0,76.2},
		offset_boat={0.0,0.0,-0.1,0.0,0.0,0.0},
		boatSpeed=0.25,
		turnForce=0.03,
		boatAnim={a="misstrevor1trv_1_mcs_2",b="dialogue_a_wade"},
		boatAnimIdle={a="misstrevor1trv_1_mcs_2",b="dialogue_a_wade"},
		seats={ -- 12 SEAT
			{1.377,0.927,1.556,-15.9,-1.2,0.6},
			{0.81,0.918,1.556,-15.9,-1.2,0.6},
			{0.144,0.918,1.556,-15.9,-1.2,0.6},
			{-0.774,0.918,1.556,-15.9,-1.2,0.6},
			{-1.125,3.303,1.565,-15.9,-1.2,178.8},
			{-0.486,3.303,1.565,-15.9,-1.2,178.8},
			{0.135,3.303,1.565,-15.9,-1.2,178.8},
			{1.035,3.303,1.565,-15.9,-1.2,178.8},
		},
		seatAnim={a="timetable@jimmy@mics3_ig_15@",b="mics3_15_base_tracy"},
	},
	{ -- BOAT ID: 5
		scale=1.5,
		downhill=false, -- This disable downhill system.
		model="str_lifesaver",
		offset_player={0.0,0.0,-0.1,0.0,0.0,0.0},
		offset_boat={0.0,0.0,0.1,0.0,0.0,0.0},
		boatSpeed=0.11,
		turnForce=0.04,
		boatAnim={a="rcmnigel1b",b="swimming_idle", speed=1.0},
		boatAnimIdle={a="rcmnigel1b",b="swimming_idle", speed=0.0},
	},
}

-- Use this command to add new boat coodinates offset easly!
RegisterCommand('striano_boat_editor_player',function(source,args)
	if mioSalvagente ~= nil then exports.striano_boat:delBoat() end
	AddPlayerToBoat(args[1] or nil,lastEditorPos,lastEditorRot)
end)
RegisterCommand('striano_boat_editor_boat',function(source,args)
	if mioSalvagente ~= nil then exports.striano_boat:delBoat() end
	AddBoatToBoat(args[1] or nil,lastEditorPos,lastEditorRot)
end)

BoatBaseSpeedMultiplier=1.25 -- 1.0 is ok, 1.25 will increase 25% TOTAL SPEED!

-- TEST COMMAND TO SPAWN THE BOAT
RegisterCommand('boat', function(source, args) exports.striano_boat:spawnBoat(tonumber(args[1]) or 1) end)
RegisterCommand('delBoat', function(source, args) exports.striano_boat:delBoat() end)

smoothFactor = 0.09 -- era 0.05
automaticForward = false -- AutoForward by default disable, press SPACE to enable in game
cameraGuida = false -- Turn where camera look? Press SHIFT to toggle in game
tutBoat = true -- tutorial boat down-right active at start, put false to remove, players can press Q to enbale again. Better true at start!

function whileInfoBoat()
	if GetResourceState('striano_core') == 'started' then
		if exports.striano_core:gettutorial() then 
			infoBoat(21,"Cam", 22,"Auto", 74, "Invite", 23,"Leave", 45,"Disassemble", 44,"Info")
		else
			infoBoat(21,"Cam", 22,"Auto", 74, "Invite", 23,"Leave", 44,"Info")
		end
	else
		infoBoat(21,"Cam", 22,"Auto", 74, "Invite", 23,"Leave", 44,"Info")
	end
end

function onAutoForwardKey()
	if automaticForward then 
		testo3d("Auto forward: ~g~~h~•") 
	else
		testo3d("Auto forward: ~r~~h~•") 
	end
end

function onCameraDriveKey()
	if cameraGuida then
		testo3d("Drive camera: ~g~~h~•") 
	else
		testo3d("Drive camera: ~r~~h~•") 
	end
end

exports('tutboat',function(state) tutBoat = state end)
canDropFromBoat = true exports('canDropFromBoat',function(state) canDropFromBoat = state end)
canBoating = true exports('canBoating',function(state) canBoating = state end)

function LoopWhileSit(idBoat)
	if tutBoat then 
		if canDropFromBoat then
			whileInfoBoat()
		end
	end

	if canBoating then -- DELETE THIS CONDITION IF YOU DONT HAVE MY SERVER TEST FILES!
		if IsControlJustPressed(0, 22) or IsDisabledControlJustPressed(0, 22) then 
			if not IsControlPressed(0, 34) and not IsDisabledControlPressed(0, 34) and not IsControlPressed(0, 35) and not IsDisabledControlPressed(0, 35) and not IsControlPressed(0, 32) and not IsDisabledControlPressed(0, 32) and not IsControlPressed(0, 33) and not IsDisabledControlPressed(0, 33) then
				if editorAtt == nil then
					-- PlaySoundFrontend(-1,'WEAPON_ATTACHMENT_EQUIP','HUD_AMMO_SHOP_SOUNDSET',1)
					automaticForward = not automaticForward 
					onAutoForwardKey()
				end
			end
		end
		
		if IsControlJustPressed(0, 74) or IsDisabledControlJustPressed(0, 74) then -- H -> INVITA GIOCATORE VICINO A SEDERSI!
			InviteNearestPlayerToBoat(idBoat)
		end
			
		if IsControlJustPressed(0, 44) or IsDisabledControlJustPressed(0, 44) then 
			if editorAtt == nil then 
				tutBoat = not tutBoat
				-- if tutBoat then
					-- testo3d("Tutorial Boat: ~g~~h~•") 
				-- else
					-- testo3d("Tutorial Boat: ~r~~h~•") 
				-- end
			end
		end
		
		if IsControlJustPressed(0, 21) or IsDisabledControlJustPressed(0, 21) then 
			if editorAtt == nil then 
				cameraGuida = not cameraGuida
				onCameraDriveKey()
			end
		end
		if cameraGuida then -- Se premo un tasto rotazione annullo la camera guida!
			if IsControlPressed(0, 34) or IsControlPressed(0, 35) then 
				cameraGuida = not cameraGuida
			end
		end
	end
end

function DrawText3DBoat(x,y,z, text, size)
	local s = 0.35
	if size ~= nil then s = size end
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	if onScreen then
		SetTextCentre(true)
		SetTextScale(s, s)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255,255,255, 200)
		SetTextEntry("STRING")
		SetTextOutline()
		AddTextComponentString(text)
		DrawText(_x,_y - 0.015)
	end
end

function RequestModelStriano(model)
	if model == nil then print('MODEL IS NIL') return end
	local hash = (type(model) == 'number') and model or GetHashKey(model)
    if not IsModelInCdimage(hash) or not IsModelValid(hash) then print('MODEL NOT EXIST ', model) return end
    RequestModel(hash)
    local deadline = GetGameTimer() + 5000 -- 5s timeout
    while not HasModelLoaded(hash) do Wait(0) if GetGameTimer() > deadline then print('NOT EXIST (time out) ', model) return end end 
end

function DisassembleMenu()
	exports['striano_fastmenu']:clearMenu()
	exports['striano_fastmenu']:addMenuItem("[ Disassemble boat ]", function()
		exports['striano_fastmenu']:close()
		DisassembleBoat()
	end, false)
	exports['striano_fastmenu']:addMenuItem("[ Cancel ]", function()
		exports['striano_fastmenu']:close()
	end, false)
	exports['striano_fastmenu']:openMenu()
end

function giveItemFunc()
	if GetResourceState('striano_core') == 'started' then
		if exports.striano_core:gettutorial() then -- If the player is in the tutorial in my server test i block the disassemble function or them cant leave the isle LOL
			DisassembleMenu()
		end
	else
		DisassembleMenu()
	end
end

function clearPropsBoat()
	ClearInternalBoat()
	for _, v in ipairs(remiObj) do
		if v and DoesEntityExist(v) then
			SetEntityAsMissionEntity(v)
			DeleteEntity(v)
		end
	end
end

function DisassembleBoat()
	DropFromBoat()
	clearPropsBoat()
	local item = "boat" -- I use this name in my server test, change as you need!
    local src = GetPlayerServerId(PlayerId())
    local amount = 1

    local HAS_OX = GetResourceState('ox_inventory') == 'started'
    local HAS_QB_CORE = GetResourceState('qb-core') == 'started'
    local HAS_QB_INV = GetResourceState('qb-inventory') == 'started'
    local HAS_STRIANO = GetResourceState('striano_inventory') == 'started'

    -- OX INVENTORY
    if HAS_OX then
        TriggerServerEvent("striano_bridge:giveOxItem", item, amount)
        return true
    end

    -- QB INVENTORY
    if HAS_QB_CORE or HAS_QB_INV then
        TriggerServerEvent("striano_bridge:giveQbItem", item, amount)
        return true
    end

    -- STRIANO INVENTORY
    if HAS_STRIANO then
        TriggerServerEvent('inv3d:giveItem', src, "player", item, amount)
        return true
    end

    print("^1[giveItemFunc]^7 No inventory found.")
    return false
end

function ManageDeletedBoat(boatHash, posBoat, rotBoat)
	-- if GetResourceState('striano_editor') == 'started' then
		-- TriggerServerEvent("placer:addpool", boatHash, posBoat.x,posBoat.y,posBoat.z, rotBoat.x,rotBoat.y,rotBoat.z, true, 1)
	-- else
		-- Destroy old boat and get back.
		DisassembleBoat()
		-- return
	-- end
end

function canBoatSpawn()
	local ped = PlayerPedId()
	if not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) then 
		testo3d("~w~Enter in water!")
		-- local existing = GetClosestSalvagente(ped, 8.0)
		-- if existing ~= nil then
			-- SetEntityAsMissionEntity(existing) DeleteEntity(existing)
			-- exports.striano_boat:delBoat()
			-- DisassembleBoat() -- give item back to not lose from inventory!
			-- return
		-- end
		return false 
	else
		TriggerServerEvent("inv3d:removeItemByName", "player", "boat", 1)
		return true
	end
end

-- EXPORTS
-- exports.striano_boat:getMyBoat() -- Will return the entity of your boat! Useful to get coords for example! If nil of course not exist!

function onPedEnterBoat()
	Wait(0)
	exports.striano_combat:fodera2() -- remove equipped sword
	Wait(0)
	ClearPedTasks(PlayerPedId())
end

local boatLoopActive=false
lastBoatF=0
local BOAT_F_COOLDOWN=750

function InviteNearestPlayerToBoat(idBoat)
	if not mioSalvagente2 or not DoesEntityExist(mioSalvagente2) then return end

	local ped=PlayerPedId()
	local myCoords=GetEntityCoords(ped)
	local closestPlayer=-1
	local closestDistance=7.5

	for _,player in ipairs(GetActivePlayers()) do
		if player~=PlayerId() then
			local targetPed=GetPlayerPed(player)
			if DoesEntityExist(targetPed) then
				local distance=#(myCoords-GetEntityCoords(targetPed))
				if distance<closestDistance then
					closestDistance=distance
					closestPlayer=player
				end
			end
		end
	end

	if closestPlayer==-1 then
		testo3d("No one nearest to invite.")
		return
	end

	local boatNetId=NetworkGetNetworkIdFromEntity(mioSalvagente2)
	if boatNetId==0 then return end
	
	local seats = #BoatModelList[idBoat].seats or 0
	TriggerServerEvent("striano_boat:invitePassenger",GetPlayerServerId(closestPlayer),boatNetId, idBoat, seats)
end

function loopBoat(idVar)
	if boatLoopActive then return end
	boatLoopActive=true
	local ped=PlayerPedId()
	CreateThread(function()
		while mioSalvagente2~=nil and DoesEntityExist(mioSalvagente2) do
			Wait(0)
			if canBoating then
				local pedCoords=GetEntityCoords(ped)
				local boatCoords=GetEntityCoords(mioSalvagente2)
				LoopBaseBoat(idVar)
				if #(pedCoords-boatCoords)<=3.2 then
					if not IsEntityAttached(ped) and IsPedHuman(ped) then
						if not exports.striano_editor:stopescando() and not IsPedRagdoll(ped) then
							local epos=GetEntityCoords(mioSalvagente2)
							if mioSalvagente3 ~= nil then epos=GetEntityCoords(mioSalvagente3) end
							DrawText3DBoat(epos.x,epos.y,epos.z+0.5,"~h~~b~F ~w~Sail")
								DisableCamCollisionForEntity(edt)
							if IsControlJustPressed(0,23) and GetGameTimer()-lastBoatF>=BOAT_F_COOLDOWN then
								SitSalvagente(idVar)
								Wait(500)
							end
						end
					end
				else
					-- MAYBE IS GOD FOR OPTIMISATION? I THINK NOT CAUSE PLAYERS CAN SPAWN ONLY ONE BOAT EACH!
					if #(pedCoords-boatCoords)>900.0 then
						exports.striano_boat:delBoat()
						print("BOAT DELETED FOR DISTANCE > 900 mt!")
					end
				end
			end
		end
		print("Loop Boat closed.")
		EndOrbitCam()
		automaticForward=false
		cameraGuida=false
		boatLoopActive=false
	end)
end

exports('endcam', function() EndOrbitCam() end)

exports('delBoat', function()
	if mioSalvagente ~= nil and DoesEntityExist(mioSalvagente) then
        local ped = PlayerPedId()
		local boatHash = GetEntityModel(mioSalvagente)
		local posBoat = GetEntityCoords(mioSalvagente)
		local rotBoat = GetEntityRotation(mioSalvagente)
		DetachEntity(ped, false, false) EndOrbitCam() automaticForward = false cameraGuida = false
        SetEntityAsMissionEntity(mioSalvagente, true, true) DeleteEntity(mioSalvagente) mioSalvagente = nil
		ClearInternalBoat()
		boatFollowerRunning = false -- Annullo il fatto che la barca custom mi segue
		for _, v in ipairs(remiObj) do
			SetEntityAsMissionEntity(v)
			DeleteEntity(v)
		end
		remiObj = {}
    end
end)

-- THIS IS USEFUL TO HAVE CALM SEA WAVES!
-- USEFUL FOR FISHING SCRIPT (i will release it also!)

local calmWater=true
local savedWindSpeed=nil

local function EnableCalmWater()
	if savedWindSpeed==nil then
		savedWindSpeed=GetWindSpeed()
	end
	SetWavesIntensity(0.0)
	SetDeepOceanScaler(0.0)
	SetWindSpeed(0.0)
	WaterOverrideSetStrength(0.8)
end

local function RestoreWater()
	SetWavesIntensity(1.0)
	ResetDeepOceanScaler()
	WaterOverrideSetStrength(0.0)
	if savedWindSpeed~=nil then
		SetWindSpeed(savedWindSpeed)
		savedWindSpeed=nil
	end
end

CreateThread(function()
	while true do
		if calmWater then
			EnableCalmWater()
		end
		Wait(1000)
	end
end)

exports('calmWater',function(state)
	state=state==true
	if calmWater==state then return end
	calmWater=state
	print("calmWater (EXP):",calmWater)
	if calmWater then
		EnableCalmWater()
	else
		RestoreWater()
	end
end)

exports('delremi',function()
	for _,obj in ipairs(remiObj) do
		if DoesEntityExist(obj) then
			SetEntityAsMissionEntity(obj,true,true)
			DeleteEntity(obj)
		end
	end
	remiObj={}
end)

RegisterCommand('calmWater',function()
	calmWater=not calmWater
	print("calmWater:",calmWater)
	if calmWater then
		EnableCalmWater()
	else
		RestoreWater()
	end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
		DetachEntity(PlayerPedId())
		EndOrbitCam()
		ClearPedTasks(PlayerPedId())
		ClearInternalBoat()
		if editorAtt ~= nil and DoesEntityExist(editorAtt) then SetEntityAsMissionEntity(editorAtt, true, true) DeleteEntity(editorAtt) editorAtt = nil end
		if estetico ~= nil and DoesEntityExist(estetico) then SetEntityAsMissionEntity(estetico, true, true) DeleteEntity(estetico) estetico = nil end	
		for _, v in ipairs(remiObj) do
			if v and DoesEntityExist(v) then
				SetEntityAsMissionEntity(v)
				DeleteEntity(v)
			end
		end
	end
end)

RegisterNetEvent("striano_boat:sendInvite",function()
	ExecuteCommand("prova Invite send.")
end)