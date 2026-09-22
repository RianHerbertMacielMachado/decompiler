listaZone = {
	{ pos=vector3(3823.61,7257.81,38.9), nome="Tournament Arena", sub="The best place of the island.", range=15.0 }, -- STRIANO ARENA
	{ pos=vector3(3554.27,7154.13,15.81), nome="Import/Exports", sub="Sometimes people of other isles comes to trade.", range=15.0 },
	{ pos=vector3(3106.93,7260.78,21.93), nome="Training Dojo", sub="A place to meet your Sensei.", range=15.0 },
	{ pos=vector3(2873.4,7502.28,26.6), nome="Community Dojo", sub="A place to trade and meet new survivors.", range=15.0 },
	{ pos=vector3(3083.25,7552.09,2.81), nome="Port", sub="New travels starts here.", range=15.0 },
	{ pos=vector3(3160.55,7492.01,26.62), nome="Stall Dojo", sub="An old Dojo used to protect last animals of the Isle.", range=15.0 },
	{ pos=vector3(3278.51,7886.1,5.32), nome="Chemical Area", sub="A dangerous place, but chemists use it to get new answers.", range=15.0 },
	{ pos=vector3(3714.77,7524.16,11.71), nome="Black Forest", sub="A forest where a lot of survivors lose themself.", range=15.0 },
	{ pos=vector3(3993.82,7466.37,4.32), nome="Fallen Bridge", sub="The begin?", range=15.0 },
	{ pos=vector3(3846.84,7485.8,-14.85), nome="Old Tower", sub="World change too fast.", range=15.0 },
	-- { pos=vector3(3831.6,6623.01,0.85), nome="Kh🜁rura Badlands", sub="Where all start and all ends.", range=15.0 },
	{ pos=vector3(4243.39,6923.92,7.47), nome="Fish Island", sub="A place with magic and not pollued water.", range=15.0 },	
	{ pos=vector3(3939.06,7491.02,1.55), nome="Duskfalls Game", sub="Signup to player the battle royal Duskfalls.", range=5.0 },
	{ pos=vector3(1022.168,7503.404,23.176), nome="Green Isle", sub="An isle with a lot of loot but very danger!", range=35.0 },
	{ pos=vector3(3144.35,7338.85,14.67), nome="Mounts Area", sub="Ride them all!", range=10.0 },
}

local camSmoothToken = 0
mapCamMoving = false
local function SmoothMoveMapCamTo(targetPos, duration) -- CAMBIATA E FATTO CHE ORA TI METTE DIRETTAMENTE IL CHECKPOINT!
	exports.striano_fastmenu:close()
	exports.striano_inventory:blipInteresse(vector3(targetPos.x, targetPos.y, targetPos.z), "#FFD800")
	PlaySoundFrontend(-1,'Bomb_Disarmed','GTAO_Speed_Convoy_Soundset',0)
	ExecuteCommand("prova3 Waypoint added.")
end
--[[
local function SmoothMoveMapCamTo(targetPos, duration)
	exports.striano_fastmenu:close()
	duration = duration or 3500

	if not camTargetPos then
		camTargetPos = targetPos
		mapCamMoving = false
		return
	end

	camSmoothToken = camSmoothToken + 1
	local myToken = camSmoothToken

	local startPos = camTargetPos
	local startTime = GetGameTimer()

	mapCamMoving = true

	CreateThread(function()
		while camSmoothToken == myToken do
			local now = GetGameTimer()
			local t = (now - startTime) / duration

			if t >= 1.0 then
				camTargetPos = targetPos
				break
			end

			local smoothT = t * t * (3.0 - 2.0 * t)

			camTargetPos = vector3(
				startPos.x + (targetPos.x - startPos.x) * smoothT,
				startPos.y + (targetPos.y - startPos.y) * smoothT,
				startPos.z + (targetPos.z - startPos.z) * smoothT
			)

			Wait(0)
		end

		-- Lo mette false solo se questo è ancora l'ultimo movimento.
		if camSmoothToken == myToken then mapCamMoving = false end
	end)
end
]]

function openMapManager()
	-- REMEMBER YOU NEED striano_fastmenu (get it from your portal FiveM), but of course you can change this menu with yours if you know how to manage it!
	-- THIS IS THE LEGEND OF THE MAP TO GO ON COORDS!
	exports['striano_fastmenu']:clearMenu() 
	exports.striano_combat:submex("")
	local myPos=GetEntityCoords(PlayerPedId())
	exports['striano_fastmenu']:addMenuItem("[ Your Position ]", function() 
		exports.striano_inventory:blipInteresse(vector3(myPos.x, myPos.y, myPos.z))
		PlaySoundFrontend(-1,'Bomb_Disarmed','GTAO_Speed_Convoy_Soundset',0)
		ExecuteCommand("prova3 Waypoint added.")
	end, false) 
	exports['striano_fastmenu']:addMenuItem("[ Clear All Waypoints ]", function() 
		exports.striano_fastmenu:close() exports.striano_combat:showZone("", "Waypoints cleared.") exports.striano_inventory:delblipInteresse() 
	end, false) 
	
	if exports['striano_core']:getCoordMission() ~= nil then -- diverso ~
		exports['striano_fastmenu']:addMenuItem("[ MAIN QUEST POS ]", function() 
			local pp = exports['striano_core']:getCoordMission()
			exports.striano_inventory:blipInteresse(vector3(pp.x, pp.y, pp.z))
			PlaySoundFrontend(-1,'Bomb_Disarmed','GTAO_Speed_Convoy_Soundset',0)
			ExecuteCommand("prova3 Waypoint added.")
		end, false) 
	end
	exports['striano_fastmenu']:addMenuItem("k🜁rura", function() SmoothMoveMapCamTo(vector3(3828.411,6602.223,1.274)) end, false)
	exports['striano_fastmenu']:addMenuItem("SONS ISLAND", function() SmoothMoveMapCamTo(vector3(3817.021,7259.652,38.897)) end, false) 
	exports['striano_fastmenu']:addMenuItem("LAB ISLAND", function() SmoothMoveMapCamTo(vector3(3201.592,7905.699,62.325)) end, false)
	exports['striano_fastmenu']:addMenuItem("FISHERMAN ISLAND", function() SmoothMoveMapCamTo(vector3(4260.446,6881.749,30.796)) end, false)
	exports['striano_fastmenu']:addMenuItem("STONE ISLAND", function() SmoothMoveMapCamTo(vector3(3977.432,5596.553,17.77)) end, false)
	exports['striano_fastmenu']:addMenuItem("GRAVE ISLAND", function() SmoothMoveMapCamTo(vector3(4429.211,7841.963,11.595)) end, false)	
	exports['striano_fastmenu']:addMenuItem("REBEL ISLAND", function() SmoothMoveMapCamTo(vector3(4348.183,5830.69,7.749)) end, false) 
	exports['striano_fastmenu']:addMenuItem("SWAMP ISLAND", function() SmoothMoveMapCamTo(vector3(1396.425,7344.159,7.984)) end, false) 
	exports['striano_fastmenu']:addMenuItem("INDIE ISLAND", function() SmoothMoveMapCamTo(vector3(4206.434,3887.088,15.448)) end, false)  
	exports['striano_fastmenu']:addMenuItem("POLLUTED ISLAND", function() SmoothMoveMapCamTo(vector3(-1141.455,7489.93,11.934)) end, false)
	exports['striano_fastmenu']:addMenuItem("DUSKFALLS ISLAND", function() SmoothMoveMapCamTo(vector3(-3322.986,7022.338,29.14)) end, false)
	exports['striano_fastmenu']:addMenuItem("GHOST ISLAND", function() SmoothMoveMapCamTo(vector3(4198.844,3415.276,19.394)) end, false)
	exports['striano_fastmenu']:addMenuItem("CORRUPTED ISLAND", function() SmoothMoveMapCamTo(vector3(-326.885,-5506.058,5.249)) end, false)
	exports['striano_fastmenu']:addMenuItem("CANNIBAL ISLAND", function() SmoothMoveMapCamTo(vector3(3540.203,-6513.19,6.162)) end, false)
	exports['striano_fastmenu']:addMenuItem("COLONIAL ISLAND", function() SmoothMoveMapCamTo(vector3(-980.018,-6918.639,2.316)) end, false)
	
	-- TERRITORI CLICCABILI
	local territories = exports["striano_core"]:GetTerritoriesConfigClient()
	if territories and next(territories) then
		-- exports["striano_fastmenu"]:addMenuItem("───── TERRITORIES ─────", function() end, false)

		local sortedTerritories = {}

		for territoryId, config in pairs(territories) do
			sortedTerritories[#sortedTerritories + 1] = {
				id = territoryId,
				name = config.name or territoryId,
				coords = config.coords
			}
		end

		table.sort(sortedTerritories, function(a, b)
			return string.lower(a.name) < string.lower(b.name)
		end)

		for _, territory in ipairs(sortedTerritories) do
			if territory.coords then
				local coords = territory.coords
				local label = ("🏔️ %s"):format(territory.name)

				exports["striano_fastmenu"]:addMenuItem(label, function()
					SmoothMoveMapCamTo(coords)
				end, false)
			end
		end
	end
	
	exports['striano_fastmenu']:openMenu()
end

-- Config
camHeight_Default = 95.0
camHeight = 95.0
FOVcam = 60.0
BASE_SPEED = 100.0      -- speed base camera
MIN_HEIGHT = 5.0       -- min cam
MAX_HEIGHT = 400.0     -- max cam (like GTA2)
ZOOM_SPEED = 10.0       -- speed wheelmouse zoom
SMOOTH_FACTOR = 7.5 -- high = reactive, lower = slower.

function onDeactivateMap()
	exports.text_guide:ClearGuideText() 
	ExecuteCommand("guidaBase") -- Remove if you dont have this command!
	ExecuteCommand("hudon2") -- Remove if you dont have this command! This i use in my server test to hide the HUD to make it more immersive!
	exports.striano_inventory:CloseInventory()
	exports.striano_combat:hideZone()
	camSmoothToken = camSmoothToken + 1 -- CLOSEMAP
	ExecuteCommand("prova3 ")
	-- ExecuteCommand("atmosfera")
end

function OpenMapLegendLoop() -- this is in a while! Change the button shift if you want by changing the key 21 to another -> https://docs.fivem.net/docs/game-references/controls/
	if IsDisabledControlJustPressed(0, 21) or IsControlJustPressed(0, 21)  then
		if not exports.striano_fastmenu:opened() then -- Remove this if you dont have!
			openMapManager()
		end
	end
end

function OpenMapCheck() -- false will not open the map!
	if exports.striano_editor:inghost() ~= nil then print("Map lock for inghost.") return false end
	if exports.striano_ridehorse:inShopAnimals() then print("Map lock for inShopAnimals.") return false end 	
	if exports.striano_combat:getPP() ~= nil then print("Map lock in flyhuman.") return false end
	if GetEntityCoords(PlayerPedId()).z < -10.0 then return false end
	return true
end

function ShowZoneName(title, subtitle)
	if not exports['striano_fastmenu']:opened() and not mapCamMoving then 
		exports.striano_combat:showZone(title, subtitle)
	end
end

function ActiveAWayPoint(id)
	exports.striano_inventory:remove(id) -- Change this with your own waypoint system or download mine from fivem portal -> striano_inventory
end

function onMapStart()
	CreateThread(function()
		exports.striano_inventory:CloseInventory() -- Insert your function or exports to close the inventory if you need! 
		Wait(250)
		exports.text_guide:ClearGuideText() Wait(25)
		exports.text_guide:GuidaNascondi()
		exports.text_guide:GuidaVisibileNV()
		exports.text_guide:ClearGuideText() Wait(50)		
		local datastextG = { ["MAP MANAGER"] = { "SHIFT" } } exports.text_guide:AddGuideText(datastextG) 
		exports.text_guide:GuidaVisibileNV()
		ExecuteCommand("striano_quest:close")
		exports.striano_core:setwatermark(false)
		ExecuteCommand("e mappa")
	end)
end

--[[
function DrawText3DWay(x,y,z, text, size)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    if onScreen then
		local s = size or 0.48
		SetTextScale(s, s)
		SetTextFont(0)
		SetTextProportional(1)
		SetTextColour(255,255,255, 255)
		SetTextEntry("STRING")
		SetTextOutline()
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
	end
end
]]

exports('delblipInteresse', function() 
	for k, v in pairs(myWaypoints) do
		exports.striano_inventory:remove(v.idway)
		RemoveWaypointIndicator(tostring(v.idway))
	end
	myWaypoints = {}
end)
exports('delblipid', function(id)
	if id == nil or id == 0 then return false end

	id = tonumber(id) or id

	-- Elimina direttamente il waypoint dal WaypointManager
	exports.striano_inventory:remove(id)

	-- Elimina anche l'eventuale indicatore secondario
	RemoveWaypointIndicator(tostring(id))

	-- Pulisce l'eventuale riferimento dentro myWaypoints
	for k = #myWaypoints, 1, -1 do
		local waypointId = tonumber(myWaypoints[k].idway) or myWaypoints[k].idway
		if waypointId == id then table.remove(myWaypoints, k) end
	end

	if mylastblipid == id then mylastblipid = 0 end
	return true
end)

exports('isopen', function() return Inv2D.open end)

exports('blipInteresse', function(pos, colore)
	local ped = PlayerPedId()
	if not pos then return end
	
	local elimina = false

	for k = #myWaypoints, 1, -1 do
		local waypoint = myWaypoints[k]
		local waypointPos = waypoint.pos

		if #(pos - waypointPos) < 9.5 then
			local safe = GetSafeCoordFromAbove(waypointPos)
			PlayEffect("scr_agencyheistb", "scr_agency3b_linger_smoke", safe, 3.0)

			RemoveWaypointIndicator(tostring(waypoint.idway))
			exports.striano_inventory:remove(waypoint.idway)

			table.remove(myWaypoints, k)

			elimina = true
			exports.striano_combat:hideZone()
			break
		end
	end

	if elimina then return end
	
	if #(GetEntityCoords(ped) - pos) <= 10.0 then
		exports.striano_combat:showZone("", "Too near the player to add a waypoint.")
		return
	end

	if #myWaypoints >= 5 then
		myWaypoints[1].pos = pos
		lastPosToTurn = pos
		exports.striano_inventory:update(myWaypoints[1].idway, { coords = pos })
		loopWayPoint()
		return
	end

	local posizione = vector3(pos.x, pos.y, pos.z)

	local id = exports.striano_inventory:create({
		coords = posizione,
		type = "checkpoint",
		color = colore or "#fff",
		label = "•", -- "CHECKPOINT",
		size = 1.0,
		displayDistance = true
	})

	lastPosToTurn = posizione

	table.insert(myWaypoints, {
		pos = posizione,
		idway = id
	})

	AddWaypointIndicator(
		tostring(id),
		posizione,
		"•",
		{ r = 255, g = 255, b = 255, a = 180 }
	)

	loopWayPoint()
end)

RegisterCommand('openMap', function() ExecuteCommand("aprimappa") end)
RegisterCommand('aprimappa', function()
	if not camActive then 
		local ped = PlayerPedId()
		if GetPauseMenuState() ~= 0 then print("Map lock for menustate.") return end
		if IsNuiFocused() then print("Map lock for nuiFocus.") return end
		if not IsEntityVisible(ped) then print("Map lock for player not visible.") return end
		if not OpenMapCheck() then print("Locket by OpenMapCheck()") return end
		if IsEntityPlayingAnim(ped, "weapon@w_sp_jerrycan", "holster", 3) then print("Map lock for no anim detected.") return end -- Se sto posando la mappa
		exports.striano_core:TriggerServerCallback('item:check',function(hasItem )
			if hasItem  then
				PlaySoundFrontend(-1,'Zoom_Out','DLC_HEIST_PLANNING_BOARD_SOUNDS',1)	
				ActiveStrianoCam()
			else
				exports.striano_combat:testo3d("No map in inventory")
				ExecuteCommand("e shrug5")
			end
		end,"map",1)
		
	else
		DeActiveStrianoCam()
	end
end)
RegisterKeyMapping('aprimappa', "Mappa", 'keyboard', "P") -- better not change the key!

function CancelAnimF()
	ExecuteCommand("e cc")
end

RegisterCommand("tpm", function(source)
	-- HERE INSERT A CHECK TO ENABLE THIS ONLY FOR ADMINS!
	if exports.striano_inventory:isopen() then print("CLOSE THE MAP FOR USE TPM!") return end
	DeActiveStrianoCam()
    TeleportToWaypoint()
end)

TeleportToWaypoint = function()
	if #myWaypoints > 0 and myWaypoints[#myWaypoints] ~= nil then
		DoScreenFadeOut(500)
		local ped = PlayerPedId()
		ClearPedTasks(ped)
		if IsEntityPositionFrozen(ped) then EroFreezato = true end
		local waypointCoords = myWaypoints[#myWaypoints].pos
		FreezeEntityPosition(ped, true)
		exports.striano_editor:setbloccoanim(true)
		exports.striano_combat:delallarmi()
		Wait(1000)
		local safe = GetSafeCoordFromAbove(waypointCoords)
		SetPedCoordsKeepVehicle(ped, safe.x, safe.y, safe.z + 1.0)
		Wait(3000)
		ExecuteCommand("atmosfera")
		if not EroFreezato then FreezeEntityPosition(ped, false) end
		Wait(25)
		DoScreenFadeIn(500)
		exports.striano_editor:setbloccoanim(false)
		exports.striano_combat:fodera2()
		EroFreezato = false
	else
		ExecuteCommand("prova Set first a point on map.")
	end
end