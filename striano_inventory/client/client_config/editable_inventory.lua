function OpenInput(label, defaultValue, opts)
	label = label or "Input"
    defaultValue = defaultValue or ""
    opts = opts or {}

    -- fallback 1: striano_core
    if GetResourceState("striano_core") == "started" then
        local ok, result = pcall(function()
            return exports.striano_core:OpenInput(label, defaultValue, opts)
        end)

        if ok and result ~= nil then
            return result
        end
    end

    -- fallback 2: tastiera GTA solo se striano_core non risponde
    AddTextEntry("STRIANO_INPUT_SAFE", label)
    DisplayOnscreenKeyboard(1, "STRIANO_INPUT_SAFE", "", defaultValue, "", "", "", opts.maxLength or 40)

    while UpdateOnscreenKeyboard() == 0 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() == 1 then
        return GetOnscreenKeyboardResult()
    end

    return nil
end

RegisterKeyMapping('inv', 'Inventory', 'keyboard', "tab")
RegisterCommand("inv", function()
	if only2d then ExecuteCommand("inv2d") return end
	exports[GetCurrentResourceName()]:OpenInventory("player")
end)

RegisterCommand("cinv", function() -- 'cinv'
    exports[GetCurrentResourceName()]:CloseInventory()
	exports[GetCurrentResourceName()]:CloseInventory2D()
end)

-- HOLDERS
function CanUseWeaponSlot(ped)
    return not exports.striano_editor:induskfalls()
        and exports.striano_core:inCall() == 0
        and not exports.striano_combat:inCombat()
        and not IsPedFalling(ped)
        and not exports.skinchanger:menuaperto()
        and not IsPedFatallyInjured(ped)
        and not IsEntityPlayingAnim(ped, "anim@hlstr_7360_walk", "holster_walk", 3)
        and IsPedHuman(ped)
        and not duskevent

        -- BLOCCO ALT
        and not IsControlPressed(0, 19)
        and not IsDisabledControlPressed(0, 19)

        -- BLOCCO MOUSE DESTRO / AIM
        and not IsControlPressed(0, 25)
        and not IsDisabledControlPressed(0, 25)

        -- BLOCCO B / INPUT 29 che avevi già
        and not IsControlPressed(0, 29)
        and not IsDisabledControlPressed(0, 29)
end

function UseWeaponSlot(slotName, slotLabel)
    local ped = PlayerPedId()
	if IsEntityPositionFrozen(ped) then return end
    if not CanUseWeaponSlot(ped) then return end

    local holder = Holders[slotName]

    if holder and holder.item then
        exports.striano_combat:delallarmi2()
        exports.striano_combat:foldbow()

        useWeapon({
            name = holder.item,
            metadata = holder.meta
        }, slotName)
    else
        -- ExecuteCommand("e shrug5")
        -- exports.striano_combat:testo3d(("~r~Slot ~h~weapon %s ~h~empty."):format(slotLabel))
        -- Wait(900)
        -- if IsEntityPlayingAnim(ped, "anim@hlstr_7360_walk", "holster_walk", 3) then
            -- ExecuteCommand("e cc")
        -- end
    end
end

RegisterCommand('weapslot1', function()
    UseWeaponSlot('primary', '1')
end)

RegisterCommand('weapslot2', function()
    UseWeaponSlot('secondry', '2')
end)

RegisterKeyMapping('weapslot1', 'Weapon Slot 1', 'keyboard', '1')
RegisterKeyMapping('weapslot2', 'Weapon Slot 2', 'keyboard', '2')

-- Check Inventory of another player.
RegisterCommand("inspect", function() -- Fruga
    local ped = PlayerPedId()
    local pcoords = GetEntityCoords(ped)

    local closestSid, best = nil, 2.0
    for _, ply in ipairs(GetActivePlayers()) do
        local sp = GetPlayerServerId(ply)
        if sp ~= GetPlayerServerId(PlayerId()) then
            local tp = GetPlayerPed(ply)
            local d = #(GetEntityCoords(tp) - pcoords)
            if d < best then
                best = d
                closestSid = sp
            end
        end
    end

    if not closestSid then
        exports.striano_combat:testo3d("~r~~h~No-one nearly.")
		faiAnim("gestures@f@standing@casual", "gesture_bring_it_on", 750, 49)
        return
    end

    TriggerEvent("inv3d:openInspect", closestSid)
end)

RegisterCommand("polinv", function() openInventory2D("police_shared") end) -- SHARED INVENTORY EXAMPLE! INVENTARIO CONDIVISO!

--[[
RegisterCommand("loot:dungeon", function() 
	SetEntityHeading(PlayerPedId(), GetGameplayCamRot(0).z)
	exports[GetCurrentResourceName()]:OpenInventory("loot:dungeon") 
end) -- INVENTARIO CONDIVISO PER LOOT!

local chestObj = nil
RegisterCommand("chestloot", function()
	if chestObj == nil then
		local ped = PlayerPedId()
		local pos = GetEntityCoords(ped)
		RequestModelStriano(`h4_prop_h4_chest_01a`)
		chestObj = CreateObjectNoOffset(`h4_prop_h4_chest_01a`, pos.x, pos.y, pos.z-1.0, false, false, false)
		while not DoesEntityExist(chestObj) do Wait(0) end
		FreezeEntityPosition(chestObj, true)
	else
		SetEntityAsMissionEntity(chestObj)
		DeleteEntity(chestObj)
	end
end)

RegisterCommand("chestlootOpen", function()
	if chestObj and DoesEntityExist(chestObj) then
		local beforeWas = chestObj
		local pos = GetEntityCoords(chestObj)
		local rot = GetEntityRotation(chestObj)
		RequestModelStriano(`h4_prop_h4_chest_01a_uw`)
		chestObj = CreateObjectNoOffset(`h4_prop_h4_chest_01a_uw`, pos.x, pos.y, pos.z, false, false, false)
		while not DoesEntityExist(chestObj) do Wait(0) end
		SetEntityRotation(chestObj, rot)
		FreezeEntityPosition(chestObj, true)
		SetEntityAsMissionEntity(beforeWas)
		DeleteEntity(beforeWas)
	end
end)
]]

function DrawText3D(x, y, z, text, s)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if not onScreen then return end
    SetTextScale(s or 0.4, s or 0.4)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextCentre(true)
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(_x, _y)
end

function canOpenInv()
	local ped = PlayerPedId()
	if exports.striano_editor:stoposizionando() or exports.striano_editor:editorattivo() then print("[INV BLOCK] stoposizionando / editorattivo") return false end
	if exports.striano_editor:eInteractPos() ~= nil then print("[INV BLOCK] eInteractPos") return false end
	if exports.striano_inventory:isopen() then print("[INV BLOCK] inventory already open") return false end
	if exports.striano_combat:inWitcher() then print("[INV BLOCK] inWitcher") return false end
	if IsPauseMenuActive() then print("[INV BLOCK] Pause Menu") return false end
	if not IsEntityVisible(ped) then print("[INV BLOCK] Ped not visible") return false end
	if not IsPedHuman(ped) then print("[INV BLOCK] Ped not human") return false end
	if IsPedFatallyInjured(ped) then print("[INV BLOCK] Ped fatally injured") return false end
	if IsPedInParachuteFreeFall(ped) then print("[INV BLOCK] Parachute free fall") return false end
	if IsPlayerFreeAiming(PlayerId()) then print("[INV BLOCK] Free aiming") return false end
	if IsControlPressed(0,24) or IsDisabledControlPressed(0,24) then print("[INV BLOCK] Attack pressed - 24") return false end
	if IsControlPressed(0,25) or IsDisabledControlPressed(0,25) then print("[INV BLOCK] Aim pressed - 25") return false end
	if exports.striano_combat:incombatmenumanager() then print("[INV BLOCK] combat menu manager") return false end
	if exports.striano_editor:stopescando() then print("[INV BLOCK] Fishing") return false end
	if exports.striano_core:inCall() ~= 0 then print("[INV BLOCK] In call") return false end
	if exports.striano_inventory:binocoloattivo() then print("[INV BLOCK] Binocular active") return false end
	if exports["skinchanger"]:ineditskin() then print("[INV BLOCK] Skin editor") return false end
	if exports["striano_editor"]:entScelta() ~= nil then print("[INV BLOCK] entScelta") return false end
	if exports.striano_editor:inghost() ~= nil then print("[INV BLOCK] Ghost mode") return false end
	if duskevent then print("[INV BLOCK] Dusk event") return false end
	if not exports.striano_core:gettutorial() then print("[INV BLOCK] Tutorial not completed") return false end
	local pos_pg=GetEntityCoords(ped)
	if #(pos_pg-vector3(3836.253,6438.734,0.613)) < 15.0 then print("[INV BLOCK] Blocked coordinates") return false end
	if IsEntityPlayingAnim(ped,"melee@wfire@beast_werewolf_animset","wfire_wmg_werewolf_beast_forward_sprint_anim",1) then print("[INV BLOCK] Werewolf sprint anim") return false end
	if IsEntityPlayingAnim(ped,"melee@wfire@beast_werewolf_animset","wfire_wmg_were_beast_intro_roar_v1_clip",1) then print("[INV BLOCK] Werewolf roar anim") return false end
	if IsEntityPlayingAnim(ped,"amb@world_human_drinking@coffee@female@base","base",1) then print("[INV BLOCK] Drinking coffee anim") return false end
	if IsEntityPlayingAnim(ped,"misstrevor1ig_7","ortega_01_drinking_idle_intro",1) then print("[INV BLOCK] Drinking anim") return false end
	if IsEntityPlayingAnim(ped,"amb@world_human_seat_wall_eating@male@both_hands@idle_a","idle_c",1) then print("[INV BLOCK] Eating anim") return false end
	if IsEntityPlayingAnim(ped,"missfam1_yachtbattleonyacht02_","onboom_hangloop_j",1) then print("[INV BLOCK] Hanging anim 1") return false end
	if IsEntityPlayingAnim(ped,"missfam1_yachtbattleonyacht02_","onboom_twohand_hang_idle",1) then print("[INV BLOCK] Hanging anim 2") return false end
	-- print("[INV OK] canOpenInv = TRUE")
	return true
end

-- LOOT ITEMS
local currentLoot = 0
local lootStart = 0
local localCooldowns = {}

local MARKER_TYPE = 1
local MARKER_SCALE = vector3(0.2, 0.2, 2.0)
local MARKER_R = 255
local MARKER_G = 255
local MARKER_B = 255
local MARKER_A = 150

local INTERACT_DIST = 1.5

AddEventHandler("onResourceStart", function(res)
    if res ~= GetCurrentResourceName() then return end
    if GetResourceState('striano_inventory') == 'started' then ExecuteCommand("clearwaypoints") end
end)

function DrawTxt3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if not onScreen then return end
    SetTextScale(0.4, 0.4)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextCentre(true)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(_x, _y)
end

function getClosestLootPoint(ped, pcoords)
    local bestIndex = nil
    local bestDist = nil

    for i, data in pairs(Config.LootPoints or {}) do
        local dist = #(pcoords - data.coords)
        if dist <= 15.0 then
            if not bestDist or dist < bestDist then
                bestDist = dist
                bestIndex = i
            end
        end
    end

    return bestIndex, bestDist
end

function buildRecraftText(point)
    local txt = ""

    -- 🔧 YouGive
    txt = txt .. "~w~"
    for i = 1, #(point.YouGive or {}) do
        local item = point.YouGive[i]
        local name = tostring(item[1] or "")
        local count = tonumber(item[2] or 1) or 1
		
		if name == "melee_weapon" then
			txt = txt .. ("• x1 %s\n"):format(exports.striano_combat:getSwordNameFromID(count))
		else
			txt = txt .. ("• %s x%d\n"):format(name, count)
		end
    end

    -- 🎁 AndGet
    txt = txt .. "~y~"
    for i = 1, #(point.AndGet or {}) do
        local item = point.AndGet[i]
        local name = tostring(item[1] or "")
        local count = tonumber(item[2] or 1) or 1
		
		if name == "melee_weapon" then
			txt = txt .. ("~h~%s\n~h~~w~[~h~E~h~] Start craft"):format(exports.striano_combat:getSwordNameFromID(count))
		else
			txt = txt .. ("~h~%s x%d\n~h~~w~[~h~E~h~] Start craft"):format(name, count)
		end
    end
    return txt
end

local lastNearIndex = 0
CreateThread(function()
    while true do
        local waitMs = 2500
        local ped = PlayerPedId()
        local pcoords = GetEntityCoords(ped)

        local idx, dist = getClosestLootPoint(ped, pcoords)

        if idx and not exports.striano_inventory:isopen() and not exports.striano_editor:inWoodTansport() and exports.striano_core:gettutorial() then
            waitMs = 0

            local point = Config.LootPoints[idx]
            local pos = point.coords
            local cd = localCooldowns[idx] or 0
            local now = GetGameTimer()
			local distance = #(pcoords - point.coords)			
			local rangeLocal = INTERACT_DIST
			
			if point.recraft ~= nil and not IsEntityPlayingAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v2_cokecutter", 1) and not exports.striano_inventory:isopen() then
				if distance <= rangeLocal then
					local text = buildRecraftText(point)
					DrawTxt3D(pos.x, pos.y, pos.z + 1.2, text)
				end
			end

            if distance <= rangeLocal and now >= cd and GetEntitySpeed(ped) <= 0.1 and not invOpen then
                local duration = 4500		
                if currentLoot ~= idx then
                    currentLoot = idx
                    lootStart = now
                end
				
				if point.recraft == nil then 
					faiAnim("oddjobs@shop_robbery@rob_till", "loop", -1, 49)					
				end

				if point.recraft == nil then 
					local elapsed = now - lootStart
					local percent = math.min(100, math.floor((elapsed / duration) * 100))
					DrawTxt3D(pos.x, pos.y, pos.z + 1.5, ("Loot... %d%%"):format(percent))
					
					if elapsed >= duration and not invOpen then
						TriggerServerEvent("lootpoints:collect", idx)
						localCooldowns[idx] = now + 3000
						
						currentLoot = 0
						lootStart = 0
						faiAnim("weapon@w_sp_jerrycan", "holster", 550, 49)
					end
				else
					-- RECRAFT!
					if IsEntityPlayingAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v2_cokecutter", 1) then
						local elapsed = now - lootStart
						local percent = math.min(100, math.floor((elapsed / duration) * 100))
						DrawTxt3D(pos.x, pos.y, pos.z + 1.25, ("Crafting... %d%%"):format(percent))
						if elapsed >= duration and not invOpen then
							if IsEntityPlayingAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v2_cokecutter", 1) then
								TriggerServerEvent("lootpoints:recraft", idx)
								localCooldowns[idx] = now + 3000
							end

							currentLoot = 0
							lootStart = 0
						end
					else
						if IsControlJustPressed(0, 38) or IsDisabledControlJustPressed(0, 38) then
							currentLoot = 0
							lootStart = 0
							faiAnim("anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v2_cokecutter", -1, 49)
						end
					end
				end
            else
				-- Se per caso voglio floddare allora faccio un anim per far capire che non devo.
				if IsControlJustPressed(0, 38) or IsDisabledControlJustPressed(0, 38) then
					if now < cd and point.recraft ~= nil and not IsEntityPlayingAnim(ped, "abigail_mcs_2-5", "player_zero_dual-5", 1) then
						faiAnim("abigail_mcs_2-5", "player_zero_dual-5", 1100, 49)
					end
				end
				
				if IsEntityPlayingAnim(ped, "oddjobs@shop_robbery@rob_till", "loop", 1) then
					ClearPedTasks(ped)
				end
                if currentLoot == idx then
                    currentLoot = 0
                    lootStart = 0
                end
            end
			
			if distance > INTERACT_DIST and now >= cd and not invOpen and not IsEntityPlayingAnim(ped, "oddjobs@shop_robbery@rob_till", "loop", 1) then
                if lastNearIndex == 0 then -- and lastNearIndex ~= idx
					local testo = "Loot"
					if point.recraft ~= nil then testo = "Craft" end
					local id = exports.striano_inventory:create({
						coords = vector3(pos.x, pos.y, pos.z + 0.95),
						type = 'checkpoint',
						color = '#fff',
						label = testo, -- "Loot"
						size = 0.5,
						drawDistance = 100.0,
						displayDistance = false,
						deleteWhenNear = false,
					})
					lastNearIndex = id -- lastNearIndex = idx
				end
				DrawMarker(
                    MARKER_TYPE,
                    pos.x, pos.y, pos.z,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    MARKER_SCALE.x, MARKER_SCALE.y, MARKER_SCALE.z,
                    MARKER_R, MARKER_G, MARKER_B, MARKER_A,
                    false, true, 2, false, nil, nil, false
                )
			else
				if lastNearIndex > 0 then 
					exports.striano_inventory:remove(lastNearIndex)
					lastNearIndex = 0
				end
            end
        else
			if lastNearIndex > 0 then 
				exports.striano_inventory:remove(lastNearIndex)
				lastNearIndex = 0
			end
            currentLoot = 0
            lootStart = 0
        end

        Wait(waitMs)
    end
end)

function DropItem(selected, qt, ent)
    local inst = instByUid[selected]
    if not inst or not inst.item then 
        print("^1[DropItem]^7 inst not valid")
        return 
    end

    local cfg = Config.Items[inst.item]
    if not cfg then
        print("^1[DropItem]^7 Config.Items missed for:", inst.item)
        return
    end

    -- IMPORTANTE:
    -- per droppare/spawnare serve il MODEL, non WEAPON_*
    local model = cfg.model or cfg.prop or cfg.weapon
    if not model then
        print("^1[DropItem]^7 model/prop/weapon not found for:", inst.item)
        return
    end

    -- sicurezza extra: se per caso arriva ancora WEAPON_*, prova export inventory
    if type(model) == "string" and model:upper():sub(1, 7) == "WEAPON_" then
        local resolvedModel = ResolveItemModel(model)
        if resolvedModel then
            model = resolvedModel
        end
    end
	
	-- NEL CASO SIA UN DAGGER ALLORA SIGNIFICA CHE DEVO PRENDERE IL MODELLO DELL'ARMA DA striano_combat
	if model == GetHashKey("w_me_dagger") and GetResourceState('striano_combat') == 'started' then 
		local modelloArmaSpawn = exports.striano_combat:getModelloArmaDaID(qt)
		model = modelloArmaSpawn
	end

    local itemGet = GetItemNameFromModel(model)
    local removeData = selected

    if GetResourceState('ox_inventory') == 'started' or GetResourceState('qb-inventory') == 'started' then
        if not itemGet or itemGet == "" then
            print("^1[DropItem]^7 itemGet not valid for ox/qb")
            return
        end
        removeData = itemGet
    end

    TriggerServerEvent("inv3d:removeItem", currentInv, selected, qt)

    closeInventory()
    Wait(25)

    TriggerEvent("StartEditorFromPool", nil, model, selected, qt)
end

exports("HasItem", function(itemName, amount, invName)
	amount = tonumber(amount) or 1
	invName = invName or "player"

	if not itemName or itemName == "" then return false end

	local list = invName == "player" and playerInstancesCache or instances

	local total = 0
	for _, inst in pairs(list or {}) do
		if inst and inst.item == itemName then
			total = total + (tonumber(inst.count) or 1)
		end
	end

	return total >= amount
end)

CreateThread(function()
    Wait(3000)
    currentInv = currentInv or "player"
    TriggerServerEvent("inv3d:load", "player")
end)

function RemoveInv3DItemClient(uid, amount)
    if not uid then return end

    uid = tostring(uid)
    amount = math.floor(tonumber(amount) or 1)
    if amount < 1 then amount = 1 end

    local inst = instByUid and instByUid[uid]

    if not inst then
        print("[inv3d] inst nil for uid:", uid)
        return
    end

    local oldCount = math.floor(tonumber(inst.count) or 1)

    if oldCount > amount then
        inst.count = oldCount - amount
    else
        local ent = spawned and spawned[uid] or hoverEnt

        if ent and ent ~= 0 and SafeDoesEntityExist(ent) then
            SetEntityDrawOutline(ent, false)
            DeleteEntity(ent)
        end

        if spawned then
            spawned[uid] = nil
        end

        if instByUid then
            instByUid[uid] = nil
        end

        if Items3D then
            for i = #Items3D, 1, -1 do
                if Items3D[i] and tostring(Items3D[i].uid) == uid then
                    table.remove(Items3D, i)
                    break
                end
            end
        end
    end

    selectedID = nil
    hoverEnt = 0
end

function openFastMenu()
    PlaySoundFrontend(-1,'Click_Special','WEB_NAVIGATION_SOUNDS_PHONE',1)
	local ped = PlayerPedId()
	-- SE E' UN LOOT MENU 
	if isRuntimeInv(currentInv) then -- LOOT MENU 
		local uid = selectedID
		local inst = uid and instByUid[uid]
		if not inst then return end

		local def = Config.Items[inst.item]
		local takeCount = 1

		-- se stackable puoi prendere più di 1
		if def and def.stackable == true then
			takeCount = math.floor(tonumber(hooverQT) or 1)
			if takeCount < 1 then takeCount = 1 end
		end

		TriggerServerEvent("inv3d:takeFromInvToPlayer", currentInv, uid, takeCount)
	else
		exports['striano_fastmenu']:clearMenu()
		local inst = instByUid[selectedID]
		local isWeapon = false
		if inst and Config.Items[inst.item] and Config.Items[inst.item].weapon then
			isWeapon = true
		end
		
		if isWeapon then
			local s1 = (Holders.primary and Holders.primary.item) and " (Replace)" or ""
			exports['striano_fastmenu']:addMenuItem("Equip [Slot 1]"..s1, function()
				UnequipSlots()
				TriggerServerEvent("inv3d:holderEquip", "primary", currentInv, selectedID)
				SetEntityDrawOutline(hoverEnt, false)
			end, true)
			
			local s2 = (Holders.secondry and Holders.secondry.item) and " (Replace)" or ""
			exports['striano_fastmenu']:addMenuItem("Equip [Slot 2]"..s2, function()
				UnequipSlots()
				TriggerServerEvent("inv3d:holderEquip", "secondry", currentInv, selectedID)
				SetEntityDrawOutline(hoverEnt, false)
			end, true)
		end
		
		if LastOpenedInventory ~= nil and LastOpenedInventory ~= "player" and LastOpenedInventory ~= "" and LastOpenedInventory ~= currentInv and not isRuntimeInv(currentInv) and not isRuntimeInv(LastOpenedInventory) and LastOpenedInventory ~= currentInv then 
			-- Nel caso ho un inventario Shared salvato allora abilito la possibilità di inviare Item in quell'inventario.
			if #(GetEntityCoords(PlayerPedId())-LastOpenedInventoryPos) < 15.0 then 
				-- Controllo che sono nelle vicinanze dell'ultimo inventario che ho aperto!				
				exports['striano_fastmenu']:addMenuItem("Send in Last Shared ["..LastOpenedInventory.."]", function() -- send to
					function isBagInv(inv)
						inv = tostring(inv or "")
						return inv:sub(1, 4) == "bag_"
					end

					if isBagInv(currentInv) and isBagInv(LastOpenedInventory) then
						exports.striano_combat:testo3d("~r~No bag to bag.")
						return
					end

					local uid = selectedID
					local inst = uid and instByUid[uid]
					if not inst then
						print("[sendToLastShared] no inst for uid", uid)
						return
					end
					
					if isBagInv(currentInv) or isBagInv(LastOpenedInventory) then
						if string.find(inst.item, "bag") then
							exports.striano_combat:testo3d("~y~No bag to bag.")
							return
						end
					end

					local amount = math.floor(tonumber(hooverQT) or 1)
					if amount < 1 then amount = 1 end
					faiAnim("anim@heists@ornate_bank@ig_4_grab_gold","enter", 550, 49)
					CreateThread(function()
						Wait(0)
						SetEntityAnimSpeed(ped, "anim@heists@ornate_bank@ig_4_grab_gold","enter", 1.2)
						Wait(350)
						faiAnim("anim@amb@business@cfm@cfm_cut_sheets@", "load_and_tune_guilotine_v1_billcutter", -1, 49)
						PlaySoundFrontend(-1,'Grab_Parachute','BASEJUMPS_SOUNDS',1)
						exports.striano_combat:testo3d("~g~Moved.")
					end)
					TriggerServerEvent("inv3d:sendToLastShared", currentInv, uid, amount, LastOpenedInventory)
				end, true)
			end
		end
		
		if currentInv ~= "player" and not isRuntimeInv(currentInv) then
			exports['striano_fastmenu']:addMenuItem("Take in Inventory", function()
				faiAnim("anim@heists@ornate_bank@ig_4_grab_gold","enter", 550, 49)
				CreateThread(function()
					Wait(0)
					SetEntityAnimSpeed(ped, "anim@heists@ornate_bank@ig_4_grab_gold","enter", 1.2)
					Wait(350)
					faiAnim("anim@amb@business@cfm@cfm_cut_sheets@", "load_and_tune_guilotine_v1_billcutter", -1, 49)
					PlaySoundFrontend(-1,'Grab_Parachute','BASEJUMPS_SOUNDS',1)
					exports.striano_combat:testo3d("~g~Moved.")
				end)
				TriggerServerEvent("inv3d:sendToPlayer", currentInv, selectedID, hooverQT)
			end, true)
		end

		-- USE 
		if not isWeapon then 
			exports['striano_fastmenu']:addMenuItem("Use", function()
				local inst = instByUid[selectedID]
				if not inst then return end

				local def = Config.Items[inst.item]

				UseEntityInInventory(hoverEnt)
				SetEntityDrawOutline(hoverEnt, false)

				-- ✅ RIMUOVE SOLO SE NON È notRemove				
				if not (def and def.notRemove) then -- def.item ~= "melee_weapon"
					TriggerServerEvent("inv3d:removeItem", currentInv, selectedID, 1)
				end

				closeInventory()
				selectedID = nil
			end, true)
		end
		exports['striano_fastmenu']:addMenuItem("Drop", function() -- 'Drop' Drop Item "Drop Item" 'Drop Item'
			SetEntityDrawOutline(hoverEnt, false)
			DropItem(selectedID, hooverQT, hoverEnt)
			selectedID = nil
		end, true)
		
		exports['striano_fastmenu']:addMenuItem("Examine", function()
			SetEntityDrawOutline(hoverEnt, false)
			ExamineItem(hoverEnt)
			selectedID = nil
		end, true)
		
		local pp = GetEntityCoords(ped)
			local handleGarbage = GetClosestObjectOfType(pp.x, pp.y, pp.z, 15.0, `port_xr_bins`, false, false, false)
			if handle ~= 0 then
				exports['striano_fastmenu']:addMenuItem("[ Destroy ]", function()
					local label = OpenInput("Destroy? Type 'yes'")
					if string.find(label, "yes") then
						local uid = selectedID
						local invName = currentInv
						if not uid or not invName then return end
						if isRuntimeInv(invName) then return end
						SetEntityDrawOutline(hoverEnt, false)
						local amount = math.floor(tonumber(hooverQT) or 1)
						if amount < 1 then amount = 1 end
						TriggerServerEvent("inv3d:destroyItem", invName, uid, amount)
						RemoveInv3DItemClient(uid, amount)
						PlaySoundFrontend(-1, 'DELETE', 'HUD_DEATHMATCH_SOUNDSET', true)
						exports.striano_combat:testo3d("~r~Destroyed.")
						selectedID = nil
					end
				end, true)
			end
		
		local IsASword = exports.striano_combat:isACombatSword(GetEntityModel(hoverEnt))
		if hooverQT > 1 and not IsASword then
			local invName = currentInv
			local uid = selectedID
			
			exports['striano_fastmenu']:addMenuItem("Split 1", function()
				if not invOpen or currentInv ~= invName then return end
				SetEntityDrawOutline(hoverEnt, false)
				TriggerServerEvent("inv3d:split", invName, uid, "ignored", 1)
				PlaySoundFrontend(-1,'NAV_UP_DOWN','HUD_FREEMODE_SOUNDSET',1)
			end, true)
			
			if hooverQT > 10 then
				exports['striano_fastmenu']:addMenuItem("Split 10", function()
					if not invOpen or currentInv ~= invName then return end
					SetEntityDrawOutline(hoverEnt, false)
					TriggerServerEvent("inv3d:split", invName, uid, "ignored", 10)
					PlaySoundFrontend(-1,'NAV_UP_DOWN','HUD_FREEMODE_SOUNDSET',1)
				end, true)
			end
			if hooverQT > 20 then
				exports['striano_fastmenu']:addMenuItem("Split 20", function()
					if not invOpen or currentInv ~= invName then return end
					SetEntityDrawOutline(hoverEnt, false)
					TriggerServerEvent("inv3d:split", invName, uid, "ignored", 20)
					PlaySoundFrontend(-1,'NAV_UP_DOWN','HUD_FREEMODE_SOUNDSET',1)
				end, true)
			end
			if hooverQT > 100 then
				exports['striano_fastmenu']:addMenuItem("Split 100", function()
					if not invOpen or currentInv ~= invName then return end
					SetEntityDrawOutline(hoverEnt, false)
					TriggerServerEvent("inv3d:split", invName, uid, "ignored", 100)
					PlaySoundFrontend(-1,'NAV_UP_DOWN','HUD_FREEMODE_SOUNDSET',1)
				end, true)
			end

			local invName = currentInv
			local uid = selectedID

			exports['striano_fastmenu']:addMenuItem("Split 50%", function()		
				if not invOpen or currentInv ~= invName then return end
				local a = math.ceil(hooverQT / 2)
				local b = math.floor(hooverQT / 2)			
				SetEntityDrawOutline(hoverEnt, false)
				TriggerServerEvent("inv3d:split", invName, uid, "ignored", b)
				PlaySoundFrontend(-1,'NAV_UP_DOWN','HUD_FREEMODE_SOUNDSET',1)
			end, true)
		end
		
		-- TOLTO PERCHE CHIUDONO CON MOUSE DESTRO
		-- exports['striano_fastmenu']:addMenuItem("[Close]", function()
			-- SetEntityDrawOutline(hoverEnt, false)
			-- hoverEnt = 0
		-- end, true)
		
		exports["striano_fastmenu"]:closeWithX(true)
		exports['striano_fastmenu']:openMenu()
	end
end

function RemoveItemUniversal(itemName, amount, invName, slot, metadata)
    amount = tonumber(amount) or 1
    if amount <= 0 then return false end
    if not itemName or itemName == "" then
        print("^1[RemoveItemUniversal]^7 itemName not valid!")
        return false
    end
    -- OX INVENTORY
    if GetResourceState('ox_inventory') == 'started' then
        exports.ox_inventory:RemoveItem(itemName, amount, metadata)
        return true
    end
    -- QB INVENTORY
    if GetResourceState('qb-inventory') == 'started' then
        TriggerServerEvent("QBCore:Server:RemoveItem", itemName, amount, slot)
        return true
    end
    -- STRIANO INVENTORY
    invName = invName or "player"
    if GetResourceState('striano_inventory') == 'started' then
        TriggerServerEvent("inv3d:removeItemByName", invName, itemName, amount)
        return true
    end
    return false
end
exports("RemoveItem", function(itemName, amount, invName)
    return RemoveItemUniversal(itemName, amount, invName or "player")
end)

RegisterNetEvent("inv3d:cleared")
AddEventHandler("inv3d:cleared", function(invName)
    if invName == "player" then
        closeInventory(true)
        Wait(0) -- era 50
		local ped = PlayerPedId()
		if not IsEntityAttached(ped) and not IsEntityPositionFrozen(ped) then
			if #(GetEntityCoords(ped)-vector3(3837.481,6441.281,-1.079)) > 50.0 then
				exports.striano_combat:testo3d("Inv cleared")
			end
		end
    end
end)

RegisterNetEvent("inv3d:reload")
AddEventHandler("inv3d:reload", function(invName)
    if invOpen and currentInv == invName then
		closeInventory(true)
        Wait(0) -- era 50
		if only2d then ExecuteCommand("inv2d") return end
        exports[GetCurrentResourceName()]:OpenInventory(invName)
    end
end)

RegisterNetEvent("inv3d:notifyInv")
AddEventHandler("inv3d:notifyInv", function(invName, itemName, QT)
    if invName ~= "player" then return end

    PlaySoundFrontend(
        -1,
        "CLICK_BACK",
        "WEB_NAVIGATION_SOUNDS_PHONE",
        true
    )

    if itemName == "melee_weapon" then
        local label = exports.striano_combat:getSwordNameFromID(QT)
        exports.striano_combat:testo3d("~h~+ " .. label)

    elseif itemName == "bag" then
        local label = "Bag ID ~h~" .. QT
        exports.striano_combat:testo3d("~h~+ " .. label)

    elseif itemName == "buffer" then
        local b = exports.striano_combat:BufferList(QT)

        if b then
            exports.striano_combat:testo3d("~h~+ " .. tostring(b.name))
        end

    else
        exports.striano_combat:testo3d(
            tostring(itemName) .. " ~h~+" .. tostring(QT)
        )
    end
end)

RegisterNetEvent("inv3d:removeResult", function(invName, uid, newCount, itemName, WasQT)
    invName = tostring(invName or "")
    uid = tostring(uid or "")
    newCount = tonumber(newCount) or 0
    WasQT = tonumber(WasQT) or 1

    -- Questo deve avvenire per qualsiasi inventario.
    if newCount <= 0 then
        removeStackLocal(uid)
    else
        qtyByUid[uid] = newCount

        if instByUid[uid] then
            instByUid[uid].count = newCount
        end
    end

    -- Notifiche solo per cambiamenti dell'inventario player.
    if invName ~= "player" then
        return
    end

    PlaySoundFrontend(
        -1,
        "EDIT",
        "HUD_DEATHMATCH_SOUNDSET",
        true
    )

    if itemName == "melee_weapon" then
        local label =
            exports.striano_combat:getSwordNameFromID(WasQT)
            or "Weapon"

        exports.striano_combat:testo3d(
            "~h~- " .. tostring(label)
        )

    elseif itemName == "bag" then
        local label = "Bag ID ~h~" .. tostring(WasQT)

        exports.striano_combat:testo3d(
            "~h~- " .. label
        )

    elseif itemName == "buffer" then
        local b = exports.striano_combat:BufferList(WasQT)

        if b and b.name then
            exports.striano_combat:testo3d(
                "~h~- " .. tostring(b.name)
            )
        end

    else
        exports.striano_combat:testo3d(
            tostring(itemName) .. " ~h~-" .. tostring(WasQT)
        )
    end
end)

function SetHolderPropsAlpha(alpha)
	if alpha == nil then
		for _, ent in pairs(holderProps or {}) do
			if ent and DoesEntityExist(ent) then
				ResetEntityAlpha(ent)
			end
		end
	else
		for _, ent in pairs(holderProps or {}) do
			if ent and DoesEntityExist(ent) then
				SetEntityAlpha(ent, alpha, false)
			end
		end
	end
end

exports("SetHolderPropsAlpha", SetHolderPropsAlpha(alpha))

exports("getItemCount", function(itemName, invName)
    invName = invName or "player"
    local list = invName == "player" and playerInstancesCache or instances
    local total = 0
    for _, inst in pairs(list or {}) do
        if inst and inst.item == itemName then
            total = total + (tonumber(inst.count) or 1)
        end
    end
    return total
end)

function OpenWeaponCraftMenu(search)
    ReloadSwordList()

	exports["striano_fastmenu"]:clearMenu()
    Wait(75)

    search = search and string.lower(search) or nil

    exports["striano_fastmenu"]:addMenuItem("🔎 Search Sword", function()
        exports["striano_fastmenu"]:closeMenu()

        SetTimeout(100, function()
            exports["striano_core"]:OpenInput("Search sword name", "", { maxLen = 64 }, function(text)
                if text and text ~= "" then
                    OpenWeaponCraftMenu(text)
                else
                    OpenWeaponCraftMenu()
                end
            end)
        end)
    end, false)

    local found = 0

    for id, weapon in ipairs(SwordList) do
        local weaponName = weapon.Name or ("Sword " .. id)

        if not search or string.find(string.lower(weaponName), search, 1, true) then
            found = found + 1

            local recipe = WeaponCraft.BuildRecipe(id, weapon)
            local recipeText = WeaponCraft.RecipeText(recipe)

            exports["striano_fastmenu"]:addMenuItemAdvanced({
                label = "[" .. id .. "] " .. weaponName,
                autoClose = false,

                onClick = function()
                    OpenConfirmWeaponCraft(id)
                end,

                onHover = function()
                    if weapon.m then
                        startPrevAttach(weapon.m, id)
                    end
                end,

                hoverInfo = {
                    title = weaponName,
                    description = "Damage: " .. tostring(weapon.dmg or 0) .. "\n\nNeeded:\n\n" .. recipeText,
                    footer = "ID: " .. id .. " | Click to craft",
                    icon = "⚔",
                    theme = "white"
                }
            })
        end
    end

    if search and found <= 0 then
        exports["striano_fastmenu"]:addMenuItem("❌ No swords found for: " .. search, function()
            OpenWeaponCraftMenu()
        end, false)
    end

    exports["striano_fastmenu"]:openMenu()
end

RegisterCommand("weaponcraft", function(source, args)
    local lvl = LocalPlayer.state.adminLevel or 0 -- from striano_admin!
    if lvl <= 0 then return end
    local search = nil
    if args and #args > 0 then
        search = table.concat(args, " ")
    end
    OpenWeaponCraftMenu(search)
end)

RegisterNetEvent("weaponcraft:crafted", function(weaponId)
    weaponId = tonumber(weaponId)
    local SwordList_L = exports.striano_combat:GetItems()
	if not SwordList_L[weaponId] then return end
    DeletePreviewWeapon()
    -- QUI ASSEGNA L'ARMA AL PLAYER
    TriggerEvent("combat:ApplySword", weaponId)
    Notify("You crafted: " .. SwordList_L[weaponId].Name)
end)

function closeInventory2D()
    if not Inv2D.open then return end

    Inv2D.open = false
    Inv2D.otherInv = nil
    Inv2D.loading = {}
    Inv2D.busyUntil = 0

    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)

    SendNUIMessage({ action = "inv2d:close" })
	ExecuteCommand("e cc")
	ExecuteCommand("e c")
end

exports("OpenInventory2D", openInventory2D)
exports("CloseInventory2D", closeInventory2D)
exports("IsInventory2DOpen", function()
    return Inv2D.open
end)

RegisterCommand("inv2d", function()
    openInventory2D("player", { title = "Inventory" })
end)

only2d = true -- open first 2d inv or 3d?
RegisterCommand("only2d", function()
    only2d = not only2d
	PlaySoundFrontend(-1,'5_Second_Timer','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',0)
	if only2d then exports.striano_combat:submex("Inv2D primary.") else exports.striano_combat:submex("Inv3D primary.") end
end)

RegisterCommand("closeinv2d", closeInventory2D, false)     

AddEventHandler('esx:onPlayerDeath', function(reason)
	local ped = PlayerPedId()
	while IsPedFatallyInjured(ped) do Wait(500) end 
	while IsPedGettingUp(ped) do Wait(500) end 
	Wait(950)
	print("Revived for the script inventory.")
	SpawnHolsterSlotsInInv()
end)