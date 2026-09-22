OpenInput = function(label) return exports["striano_admin"]:OpenInput(label, "", { maxLen = 64 }) end

function DrawQuest(x,y,z, text, size) -- DrawText3D
	local s = 0.45
	if size ~= nil then s = size end
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	if onScreen then
		SetTextScale(s, s)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255,255,255, 200)
		SetTextEntry("STRING")
		SetTextOutline()
		-- SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
	end
end

totalReward = 0 -- Useful variable to moltiplicate the reward by quest.
-- VARIABLES: Manage all variables you need for your quests!
dummies = {} -- This i need for the first mission in tutorial! (Optional mission)

local FIRE_FX_ASSET = "core"
local FIRE_FX_NAME = "ent_amb_fire_ring"

local function LoadParticleAsset(asset)
	if HasNamedPtfxAssetLoaded(asset) then
		return true
	end

	RequestNamedPtfxAsset(asset)

	local timeout = GetGameTimer() + 5000

	while not HasNamedPtfxAssetLoaded(asset) do
		Wait(10)

		if GetGameTimer() >= timeout then
			print(("^1[QUEST] Impossibile caricare il particle asset: %s^7"):format(asset))
			return false
		end
	end

	return true
end

local function StopQuestFire(fire)
	if fire.fxHandle and fire.fxHandle ~= 0 then
		StopParticleFxLooped(fire.fxHandle, false)
		fire.fxHandle = nil
	end
end

local function StopAllQuestFires(q)
	for _, fire in ipairs(q.fires or {}) do
		StopQuestFire(fire)
	end
end

local function ResetQuestFires(q)
	StopAllQuestFires(q)

	q.extinguishedCount = 0
	q.completed = false

	for _, fire in ipairs(q.fires or {}) do
		fire.extinguished = false
		fire.fxHandle = nil
	end
end

local function StartQuestFires(q)
	if not LoadParticleAsset(FIRE_FX_ASSET) then
		return false
	end

	for _, fire in ipairs(q.fires or {}) do
		if not fire.extinguished then
			UseParticleFxAssetNextCall(FIRE_FX_ASSET)

			fire.fxHandle = StartParticleFxLoopedAtCoord(
				FIRE_FX_NAME,
				fire.coords.x,
				fire.coords.y,
				fire.coords.z,
				0.0,
				0.0,
				0.0,
				fire.scale or 1.0,
				false,
				false,
				false,
				false
			)
		end
	end

	RemoveNamedPtfxAsset(FIRE_FX_ASSET)

	return true
end

local function ExtinguishQuestFire(q, fire)
	if fire.extinguished then
		return
	end

	fire.extinguished = true
	q.extinguishedCount = (q.extinguishedCount or 0) + 1

	StopQuestFire(fire)

	PlaySoundFrontend(
		-1,
		"SELECT",
		"HUD_FRONTEND_DEFAULT_SOUNDSET",
		false
	)

	Wait(1500)
end

exports('isQuestActive', function()
	if activeQuest.idQuest ~= nil then 
		return activeQuest.idQuest 
	else
		return 0
	end
end)

RegisterNetEvent("striano_quest:itemResult", function(item, count, required)
	if not activeQuest.idQuest then return end
	if tonumber(activeQuest.idQuest) ~= 2 then return end

	local q = QuestList[2]

	local label = item
	local color = "white"

	for _, data in ipairs(q.randomPool or {}) do
		if data.item == item then
			label = data.label
			color = data.color or "white"
			break
		end
	end

	activeQuest.MissionDesc = (
		"You need to collect the requested supplies.<br><br>" ..
		"<font color='%s'>%s: %d/%d</font>"
	):format(
		color,
		label,
		count,
		required
	)

	local activeId = tonumber(activeQuest.idQuest)
	local currentQuestId = tonumber(idDelleQuest[CurDispId])

	if QuestMenuOpen and currentQuestId == activeId then
		SendNUIMessage({
			action = "GetCallUpdate",
			message = "<br>" .. activeQuest.MissionDesc,
			pocet = basePocet .. CurDispId .. "/" .. #dispatches,
			CurDispId = CurDispId,
			title = "<b><font color='red'>" .. activeQuest.title .. "</font></b>",
		})
	end

	if count >= required then
		questComplete(activeQuest.idQuest)
		activeQuest = {}
	end
end)

-- HERE START ALL THE CONFIGURATION ABOUT MISSIONS/QUESTS!
QuestList = {
	[1] = { -- ID of quest.
		active = false,
        isMainQuest = false,
		name='Evil Dummys', -- TUTORIAL QUEST!
		desc='Knock down all standup Evil Dummys to break the curse.<br>(This is an optional side-quest for extra reward, not mandatory to complete the intro)<br>This quest can be accepted only on intro-tutorial.',
		descAccepted = "Find and knockout with combat system all dummies of the area. Hold press mouse right and mouse left + W/A/D to fight. <br>(This is an optional side-quest for extra reward, not mandatory to complete the intro)", -- More accurate description after the user accept the mission.
		onQuestAccepted=function()
			print("Quest accepted, do something form other script if needed.")
			dummies = exports.striano_combat:getDummyInArea(300.0) -- Here i get from combat all dummys entities variable cause i need to know when they are all destroyed!			
		end,
		rewardFunc=function()
			print("You got reward completing quest.")
			TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "moneta", totalReward * 10)
		end,
		tickFunc=function()
			CreateThread(function()
				print("Checking the complete of quest started...")
				local centerPointStartQuest = vector3(3834.497,6533.59,0.271)
				if #(GetEntityCoords(PlayerPedId())-centerPointStartQuest) > 500.0 then 
					CreateThread(function()
						Wait(1500)
						ExecuteCommand("e shrug4")
						if exports.phar:gettutorial() then
							exports.striano_combat:testo3d("~c~~h~Quest expired.")
						else
							exports.striano_combat:testo3d("~c~~h~Too far for Quest.")
						end
					end)
					RemoveQuestById(activeQuest.idQuest)
					return
				end
				
				if #dummies == 0 then
					CreateThread(function()
						Wait(1500)
						ExecuteCommand("e shrug3")
						if not exports.phar:gettutorial() then GivemeBackQuest() else print("Quest deleted cause can be started only on tutorial.") end
						exports.striano_combat:testo3d("~y~~h~Quest declined.~n~No Dummies found.")
						print("No dummies found to start the mission.")
						resetCurrentQuest() -- deve stare qua!
					end)
					return
				else
					-- Wait(1)
					local nextTick = GetGameTimer() + 1000  -- primo check tra 1 secondo / ogni secondo / 1 sec				
					UpdateQuestLog()
					
					if #dummies > 0 then
						totalReward = #dummies
					end
					
					-- Wait(1000)
					while activeQuest.title ~= nil and not exports.phar:gettutorial() do 
						Wait(0)					
						local now = GetGameTimer()
						if now >= nextTick then
							nextTick = now + 1000  -- prossimo check tra 1 secondo
							UpdateQuestLog()
						end
						
						for k, d in ipairs(dummies) do
							if d.obj ~= nil then 
								if not DoesEntityExist(d.obj) then
									table.remove(dummies, k)
									if #dummies <= 0 then varQuestComplete = 100 end
									break
								else
									local rr = GetEntityRotation(d.obj)
									if rr.x == 0.0 and rr.y == 0.0 then
										local pp = GetEntityCoords(d.obj)
										local posDum = vector3(pp.x,pp.y,pp.z+2.2)
										DrawMarker(28, posDum, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.035, 0.035, 0.035, 255,255,255, 250, true, true, 2, nil, nil, false)
									end
								end
							end
						end
						
						if varQuestComplete >= 100 then 
							varQuestComplete = 0
							if #(GetEntityCoords(PlayerPedId())-centerPointStartQuest) > 500.0 then
								print("Quest Complete!")
								questComplete(activeQuest.idQuest) -- Let's get the reward!
							else
								-- FALLISCO LA QUEST PER LA TROPPA DISTANZA
								failQuest(activeQuest.idQuest)
							end
							activeQuest = {}
							ExecuteCommand("e pray30")
							CreateThread(function()
								Wait(1500)
								ExecuteCommand("e c")
							end)
							return
						end
					end
					if not exports.phar:gettutorial() then GivemeBackQuest() else print("Quest deleted cause can be started only on tutorial.") end
					CreateThread(function()
						Wait(1500)
						if activeQuest.title ~= nil then
							exports.striano_combat:testo3d("~y~~h~Quest declined.~n~Not available.")
							ExecuteCommand("e shrug4")
						end
					end)
					resetCurrentQuest() -- deve stare qua!
					print("Checking of quest stopped.")
				end
			end)
		end,
		declineFunc=function()
			print("Quest declined, i do or clear something.")
		end
	},
	
	-- QUEST 2 - CHECK ITEM WATER
	[2] = {
		active = false,
		isMainQuest = false,

		randomItem = nil,
		randomAmount = nil,

		randomPool = {
			{ item = "water", label = "Water", amount = 10, color = "cyan" },
			{ item = "bush", label = "Bush", amount = 15, color = "lime" },
			{ item = "iron", label = "Iron", amount = 8, color = "orange" },
			{ item = "ash", label = "Ash", amount = 12, color = "gray" },
			{ item = "wood", label = "Wood", amount = 20, color = "yellow" },
			{ item = "coal", label = "Coal", amount = 10, color = "white" },
		},

		name = "Supply Survivor",
		desc = "Bring useful supplies in your inventory.",
		descAccepted = "Accept the quest to discover the requested item.",

		onQuestAccepted = function()
			local q = QuestList[2]
			local pick = q.randomPool[math.random(1, #q.randomPool)]

			q.randomItem = pick.item
			q.randomAmount = pick.amount

			q.descAccepted = ("You need to have <font color='%s'>%sx %s</font> in your inventory."):format(
				pick.color,
				pick.amount,
				pick.label
			)

			print("Random supply quest accepted:", pick.item, pick.amount)

			CreateThread(function()
				Wait(250)
				openDispatch()
			end)
		end,

		rewardFunc = function()
			TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "moneta", 50)
		end,

		tickFunc = function()
			CreateThread(function()
				local q = QuestList[2]
				local nextTick = GetGameTimer() + 1000

				while activeQuest.title ~= nil and activeQuest.idQuest == 2 do
					Wait(0)

					local now = GetGameTimer()
					if now >= nextTick then
						nextTick = now + 1000

						if q.randomItem and q.randomAmount then
							TriggerServerEvent("striano_quest:checkItem", q.randomItem, q.randomAmount)
						end
					end
				end

				print("Supply quest stopped.")
			end)
		end,

		declineFunc = function()
			local q = QuestList[2]
			q.randomItem = nil
			q.randomAmount = nil

			print("Supply quest declined.")
		end
	},
	
	-- QUEST 3 (WATER BUCKET!)
	[3] = {
		active = false,
		isMainQuest = false,
		percorso = nil,

		name = "Extinguish the Fires",
		desc = "Several fires are burning in the area. Extinguish all of them.",
		descAccepted = "Reach every marked location and extinguish the fires with buckets of water.",

		extinguishedCount = 0,
		completed = false,
		threadToken = 0,

		interactionDistance = 2.5,
		renderDistance = 10.0,

		fires = {
			{
				coords = vector3(3597.24,7510.659,14.199),
				scale = 0.5,
				extinguished = false,
				fxHandle = nil
			},
			{
				coords = vector3(3602.96,7518.603,13.497),
				scale = 0.5,
				extinguished = false,
				fxHandle = nil
			},
			{
				coords = vector3(3611.149,7513.174,13.411),
				scale = 0.5,
				extinguished = false,
				fxHandle = nil
			}
		},

		onQuestAccepted = function()
			local q = QuestList[3]

			q.threadToken = (q.threadToken or 0) + 1

			ResetQuestFires(q)
			StartQuestFires(q)

			q.descAccepted = (
				"Extinguish all the fires. Remaining fires: " ..
				"<font color='orange'>%s</font>."
			):format(#q.fires)

			-- print(("[Fire Quest] Missione accettata. Fuochi: %s"):format( #q.fires ))
			
			local id = exports.striano_map:create({
				coords = vector3(3597.24,7510.659,14.199),
				type = 'checkpoint',
				color = '#FF0000',
				label = '	',
				size = 1.0,
				displayDistance = true,
				deleteWhenNear = true
			})
			q.percorso = id
			
			CreateThread(function()
				Wait(250)
				openDispatch()
			end)
		end,

		rewardFunc = function()
			TriggerServerEvent(
				"inv3d:giveItem",
				GetPlayerServerId(PlayerId()),
				"player",
				"moneta",
				50
			)
		end,

		tickFunc = function()
			local q = QuestList[3]

			q.threadToken = (q.threadToken or 0) + 1
			local myToken = q.threadToken

			CreateThread(function()
				while activeQuest.title ~= nil
					and activeQuest.idQuest == 3
					and myToken == q.threadToken
				do
					local ped = PlayerPedId()
					local pedCoords = GetEntityCoords(ped)
					for _, fire in ipairs(q.fires) do
						if not fire.extinguished then
							local distance = #(pedCoords - fire.coords)

							if distance <= q.renderDistance then
								local posDum = vector3(fire.coords.x,fire.coords.y,fire.coords.z+1.5)
								if distance <= q.interactionDistance then
									DrawMarker(28, posDum, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 0,255,0, 150, true, true, 2, nil, nil, false)
									if exports.striano_inventory:secchio() ~= nil then
										if GetEntityModel(exports.striano_inventory:secchio()) ~= GetHashKey("striano_bwatert") then 
											DrawQuest(posDum.x,posDum.y,posDum.z, "You need a bucket of water")
										end
									end
								else
									DrawMarker(28, posDum, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.2, 255,0,0, 150, true, true, 2, nil, nil, false)
								end

								if distance <= q.interactionDistance and exports.striano_inventory:secchio() ~= nil and IsEntityPlayingAnim(ped, "missfbi3_waterboard", "waterboard_loop_player", 3) then
									while IsEntityPlayingAnim(ped, "missfbi3_waterboard", "waterboard_loop_player", 3) do Wait(25) end -- Attendo che finisce l'anim.
									ExtinguishQuestFire(q, fire)

									local remaining = #q.fires - q.extinguishedCount

									q.descAccepted = (
										"Extinguish all the fires with bucket of water. Remaining fires: " ..
										"<font color='orange'>%s</font>."
									):format(remaining)

									if remaining <= 0 and not q.completed then
										q.completed = true

										StopAllQuestFires(q)
										questComplete(activeQuest.idQuest)

										break
									end
								end
							else
								local posDum = vector3(fire.coords.x,fire.coords.y,fire.coords.z)
								DrawMarker(1, posDum, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 100.0, 255,255,255, 250, true, true, 2, nil, nil, false)
							end
						end
					end

					Wait(0)
				end

				StopAllQuestFires(q)
				exports.striano_map:remove(q.percorso)
				print("[Fire Quest] Thread terminato.")
			end)
		end,

		declineFunc = function()
			local q = QuestList[3]

			q.threadToken = (q.threadToken or 0) + 1

			StopAllQuestFires(q)
			ResetQuestFires(q)

			print("[Fire Quest] Missione rifiutata o annullata.")
		end
	},
}

-- DEBUG!
-- print("^2[QUEST DEBUG] QuestList loaded^7")
-- for k, v in pairs(QuestList) do
    -- print("^3[QUEST DEBUG]^7 ID:", k, "NAME:", v.name)
-- end

-- FUNCTIONS
function UpdateQuestLog() -- Aggiornamento Quest in tempo reale.
	if activeQuest.idQuest == 1 then -- Dummy Quest
		SetQuestTracker("~y~QUEST ACTIVE~w~ [Optional] • Dummies remains to knockout: ~y~" .. #dummies)
	end
end

function GivemeBackQuest() -- questBack
	if activeQuest.title ~= nil then
		CurDispId = 0
		local questWas = activeQuest
		activeQuest = {} -- Resetto la quest attuale
		SendNUIMessage({action = "Escape" }) QuestMenuOpen = false
		-- if questBack ~= nil then TriggerEvent('my_quests:newQuest', questWas.msg, questWas.title, false, questWas.idQuest) end
	end
end

function resetCurrentQuest()
	exports.striano_combat:submex("")
	activeQuest = {}
	SendNUIMessage({action = "Escape" }) QuestMenuOpen = false
end

-- STYLE QUEST ACTIVE ON TOP CENTER!
questTrackerText = nil -- Testo mostrato in alto al centro
function SetQuestTracker(text) questTrackerText = text end
function ClearQuestTracker() questTrackerText = nil end

function loopQuestTracker()
	CreateThread(function()
		while activeQuest.title ~= nil do
			Wait(0)
			-- print("Quester active!", questTrackerText)
			if questTrackerText ~= nil then
				DrawQuestTracker(questTrackerText)
			end
		end
	end)
end
function DrawQuestTracker(text)
    if not text or text == "" then return end

    -- posizione top center
    local x = 0.5
    local y = 0.05

    -- calcolo righe (~n~ supportato)
    local lines = 1
    if string.find(text, "~n~") then
        lines = select(2, text:gsub("~n~", "")) + 1
    end

    -- testo
    SetTextFont(4)
    SetTextScale(0.35, 0.35)
    SetTextColour(255, 255, 255, 230)
    SetTextCentre(true)
    SetTextOutline()

    SetTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text) -- supporta ~y~, ~r~, ~n~, ecc.

    DrawText(x, y)
end