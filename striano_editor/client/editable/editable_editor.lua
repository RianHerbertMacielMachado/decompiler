-- THIS IS A LIST TO CREATE A DIFFERENT SIDE OF SELECTING, IT'S NOT THE ITEM LIST AVAILABLE, THIS MUST BE LINKED WITH YOUR INVENTORY!
-- What you need to do? You must setup your inventory and say, this model is this item, like it is in striano_inventory/item_list.lua on function GetItemNameFromModel

MAXDISTANCE_EDITOR = 100.0

function Draw3D(x,y,z, testo, size)
	local s = 0.55
	if size ~= nil then s = size end
	local text = "" .. testo .. ""
    SetTextScale(s, s)
    SetTextFont(4)
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

MaxDistanceEditor = 20.0 -- How far can the editor go far away from the player while in editor?
maxSpawnableXplayer = 0 -- How many construction can place a player?

RegisterNetEvent("prop_limits:client:updateLimit", function(limit) -- Getted from server!
    maxSpawnableXplayer = tonumber(limit) or 100
    print("^2[prop_limits]^7 Your own prop limit count is:", maxSpawnableXplayer)
end)
exports("GetLocalPropLimit", function() return maxSpawnableXplayer end) -- If you need the max limit prop spawn of a player from other scripts.

PROXY_MAP = {
    -- WEAPONS!
	-- THIS LIST IS LINKED WITH striano_inventory!
    [joaat("w_ar_assaultrifle_smg")]   = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_compactrifle
    [joaat("w_pi_appistol")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_appistol
    [joaat("w_pi_singleshoth4")]       = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_gadgetpistol
    [joaat("w_sg_pumpshotgun")]        = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_combatshotgun
    [joaat("w_sb_pdw")]                = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_combatpdw
    [joaat("prop_ld_w_me_machette")]   = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_machete
    [joaat("w_sb_gusenberg")]          = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_gusenberg
    [joaat("w_ar_advancedrifle")]      = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_advancedrifle
    [joaat("w_sr_heavysniper")]        = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_heavysniper
    [joaat("prop_parachute")]          = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: gadget_parachute
    [joaat("w_am_jerrycan")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_petrolcan
    [joaat("w_sr_marksmanrifle")]      = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_marksmanrifle
    [joaat("w_ex_grenadesmoke")]       = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_bzgas, weapon_smokegrenade
    [joaat("w_pi_revolver_b")]         = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_doubleaction
    [joaat("w_pi_pistol")]             = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_pistol
    [joaat("w_pi_heavypistolclassic")] = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_heavypistolclassic
    [joaat("prop_ld_ammo_pack_01")]    = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: mweapon_pistol
    [joaat("w_pi_ceramic_pistol")]     = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_ceramicpistol
    [joaat("prop_cs_police_torch")]    = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_flashlight
    [joaat("w_pi_combatpistol")]       = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_combatpistol
    [joaat("w_pi_pistol50")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_pistol50
    [joaat("w_pi_sns_pistol")]         = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_snspistol
    -- [joaat("w_pi_wep1_gun")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_revsurv
    [joaat("w_sr_aposnp")]             = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_aposnp
    [joaat("w_pi_heavypistol")]        = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_heavypistol
    [joaat("w_pi_vintage_pistol")]     = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_vintagepistol
    [joaat("w_pi_revolver")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_revolver
    [joaat("w_pi_stungun")]            = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_stungun
    [joaat("w_sb_microsmg")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_microsmg
    [joaat("w_sb_smg")]                = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_smg
    [joaat("prop_ld_ammo_pack_03")]    = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: mweapon_smg
    [joaat("h4_prop_h4_pumpshotgunh4")] = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_pumpshotgun
    [joaat("weapon_huntercrossbow01")] = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_huntercrossbow01
    [joaat("prop_ld_ammo_pack_02")]    = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: mweapon_pumpshotgun
    [joaat("w_sb_assaultsmg")]         = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_assaultsmg
    [joaat("w_ar_assaultrifle")]       = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_assaultrifle
    [joaat("w_ar_carbinerifle")]       = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_carbinerifle
    [joaat("w_ar_specialcarbine")]     = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_specialcarabine
    [joaat("w_sr_sniperrifle")]        = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_sniperrifle
    [joaat("w_lr_rpg")]                = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_rpg
    [joaat("prop_bomb_01_s")]          = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_stickybomb
    [joaat("w_am_baseball")]           = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_ball
    [joaat("w_ar_musket")]             = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_musket
    [joaat("w_sb_minismg")]            = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_minismg
    [joaat("w_ar_carbinerifle_reh")]   = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) }, -- items: weapon_tacticalrifle
	-- OGGETTI NORMALI
	[joaat("ng_proc_food_nana2a")]    = { proxy = "xm3_prop_xm3_lsd_bottle_01a", offset = vector3(0.0, 0.0, 0.02), rot = vector3(0.0, 0.0, 0.0) },
	[joaat("prop_glasscutter_01")]    = { proxy = "v_ind_cf_chckbox2", offset = vector3(0.0, 0.0, 0.0), rot = vector3(0.0, 0.0, 0.0) },
	[joaat("striano_eteris")]    = { proxy = "v_ind_cf_chckbox2", offset = vector3(0.0, 0.0, 0.0), rot = vector3(0.0, 0.0, 0.0) },
	[joaat("striano_eteris_2")]    = { proxy = "v_ind_cf_chckbox2", offset = vector3(0.0, 0.0, 0.0), rot = vector3(0.0, 0.0, 0.0) },
    -- add more models that need a different size selector area hard to select.
}

NoCostructionArea = {
    { coords = vector3(0, 0, 0), radius = 20.0 },
    { coords = vector3(0, 0, 0), radius = 20.0 },
}

NoItemArea = {
    { coords = vector3(0, 0, 0), radius = 20.0 },
    { coords = vector3(0, 0, 0), radius = 20.0 },
}

function onInit()
	exports['striano_editor']:HintHud_SetVisible(false) -- IF YOU DONT HAVE THIS REMOVE!
end

local HAS_OX = GetResourceState('ox_inventory') == 'started'
local HAS_QB = GetResourceState('qb-core') == 'started' or GetResourceState('qb-inventory') == 'started'
local HAS_STRIANO = GetResourceState('striano_inventory') == 'started'

function giveItemFunc(item, qt)
    local src = GetPlayerServerId(PlayerId())
    qt = qt or 1

    -- OX INVENTORY
    if HAS_OX then
        -- lato client → server compatibile
		if itemNameSospeso ~= nil then item = itemNameSospeso end
        TriggerServerEvent("ox_inventory:addItem", item, qt)
        return
    end

    -- QB INVENTORY
    if HAS_QB then
		if itemNameSospeso ~= nil then item = itemNameSospeso end
		if exports['qb-inventory'] then
			TriggerServerEvent("QBCore:Server:AddItem", item, qt)
		else
			TriggerServerEvent("QBCore:Server:AddItem", item, qt)
		end
		return
	end

    -- STRIANO INVENTORY (fallback)
    if HAS_STRIANO then
        local itemName = item

        -- se è model → converti
        if exports.striano_inventory and exports.striano_inventory.getItemFromModel then
            itemName = exports.striano_inventory:getItemFromModel(item)
        end

        TriggerServerEvent('inv3d:giveItem', src, "player", itemName, qt)
        return
    end

    print("^1[giveItemFunc]^7 No inventory resources found!")
end

function onItemPlace()
	PlaySoundFrontend(-1,'MP_RANK_UP','HUD_FRONTEND_DEFAULT_SOUNDSET',0)
end

function tooFarMex() notify("Too far from editor.") end
function notify(msg) exports.striano_combat:submex(msg) end
function onCamLock() notify("Camera locked.") end
function onCamUnlock() notify("Camera unlocked.") end

function onCopyToggle()
	local posd = GetEntityCoords(he)
	local rotd = GetEntityRotation(he)
	posd=vector3(math.abs(posd.x)<0.001 and 0.0 or posd.x,math.abs(posd.y)<0.001 and 0.0 or posd.y,math.abs(posd.z)<0.001 and 0.0 or posd.z)
	rotd=vector3(math.abs(rotd.x)<0.001 and 0.0 or rotd.x,math.abs(rotd.y)<0.001 and 0.0 or rotd.y,math.abs(rotd.z)<0.001 and 0.0 or rotd.z)
	ExecuteCommand('copia ' .. posd.x..","..posd.y..","..posd.z..", "..rotd.x..","..rotd.y..","..rotd.z)
	PlaySoundFrontend(-1,'1st_Person_Transition','PLAYER_SWITCH_CUSTOM_SOUNDSET',0)
end

function onTempReset() -- What you need to call when the editor close?
	if DoesEntityExist(GhostObj) then 
		SetEntityAsMissionEntity(GhostObj)
		DeleteEntity(GhostObj)
	end
	GhostObj = nil
	EndOrbitCam() -- If you dont have please remove this line!
end

function MessageWhileEditor(tipo)
	if tipo then 
		draw(74,"Mod Sims", 15,"Speed: " .. speedvar, 21,"Axes", 45,"Move", 22,"Cam°", 38,"Place")
	else
		draw(74,"Mod GTA", 15,"Speed: " .. speedvar, 22,"Turn", 21,"Axes", 36,"~r~45°", 38,"Place")
	end
end

function CantPlaceHere() notify("Area blocked from placement.") end

function DrawText3D(x,y,z, text, size, alpha)
	local s = 0.35
	local aa = 255
	if alpha ~= nil then aa = alpha end
	if size ~= nil then s = size end
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	if onScreen then
		SetTextScale(s, s)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255,255,255, aa)
		SetTextEntry("STRING")
		SetTextOutline()
		-- SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
	end
end

RegisterCommand("poolpurge", function()
	-- CLEAR ALL OBJECTS! ONLY FOR ADMIN IS BETTER!ù
	local lvl = LocalPlayer.state.adminLevel or 0
	if lvl == 0 then print("Not valid permission") return end
    purgeDecorObjects()
    active = {}
    byHandle = {}
    TriggerServerEvent("distProps:reqFullPool")
end)

RegisterCommand("camEditor", function()
	previewCamEnabled = not previewCamEnabled
	if previewCamEnabled then print("Preview cam enabled!") else print("Preview cam disabled!") end
end)

-- /itemlist "itemList"
local PoolPosPage = 1
local PoolPosPerPage = 100
local PoolPosLastMaxDist = nil

local function OpenPoolPosPage(page, maxDist)
    exports['striano_fastmenu']:clearMenu()

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    local list = {}

    for id, obj in pairs(pool or {}) do
        if obj and obj.x and obj.y and obj.z then
            local objPos = vector3(obj.x, obj.y, obj.z)
            local dist = #(pos - objPos)

            if not maxDist or dist <= maxDist then
                list[#list + 1] = {
                    id = id,
                    obj = obj,
                    dist = dist
                }
            end
        end
    end

    table.sort(list, function(a, b)
        return a.dist < b.dist
    end)

    local total = #list
    local totalPages = math.max(1, math.ceil(total / PoolPosPerPage))

    if page < 1 then page = 1 end
    if page > totalPages then page = totalPages end

    PoolPosPage = page
    PoolPosLastMaxDist = maxDist

    exports['striano_fastmenu']:addMenuItem(
        "TOTAL: " .. total .. " | PAGE: " .. page .. "/" .. totalPages,
        function() end,
        false
    )

    if page > 1 then
        exports['striano_fastmenu']:addMenuItem("⬅ PAGINA INDIETRO", function()
            OpenPoolPosPage(PoolPosPage - 1, PoolPosLastMaxDist)
        end, false)
    end

    if page < totalPages then
        exports['striano_fastmenu']:addMenuItem("➡ PAGINA AVANTI", function()
            OpenPoolPosPage(PoolPosPage + 1, PoolPosLastMaxDist)
        end, false)
    end

    local startIndex = ((page - 1) * PoolPosPerPage) + 1
    local endIndex = math.min(startIndex + PoolPosPerPage - 1, total)

    for i = startIndex, endIndex do
        local data = list[i]
        local obj = data.obj
        local id = data.id
        local dist = data.dist

        local owner = obj.owner or "Unknown"

        exports['striano_fastmenu']:addMenuItem(
            owner .. " [" .. id .. "] (" .. round2(dist) .. "m)",
            function()
                local p = PlayerPedId()
                RequestCollisionAtCoord(obj.x, obj.y, obj.z)
                SetEntityCoordsNoOffset(p, obj.x, obj.y, obj.z + 1.0)
            end,
            false
        )
    end

    exports['striano_fastmenu']:openMenu()
end

RegisterCommand("poolpos", function(source, args)
    local maxDist = 100 -- tonumber(args[1]) -- esempio: /poolpos 100

    PoolPosPage = 1
    PoolPosLastMaxDist = maxDist

    OpenPoolPosPage(1, maxDist)
end, false)

deleteMode = false
RegisterCommand("delmode", function() -- WHEN THIS IS ACTIVE YOU CAN MANAGE ALSO CONSTRUCTION!
	deleteMode = not deleteMode
	PlaySoundFrontend(-1,'NAV_LEFT_RIGHT','HUD_FREEMODE_SOUNDSET',1)
	if deleteMode then 
		exports.striano_combat:testo3d("Delete mode: ON")
		LoopDeleteMode()
	else
		exports.striano_combat:testo3d("Delete mode: OFF")
	end
end)

exports('SpawnPreview', function(model, qt)
    if he ~= nil and DoesEntityExist(he) then
        SetEntityAsMissionEntity(he, true, true)
        DeleteEntity(he)
        he = nil
        return
    end

    if model == nil then
        notify("Missing model.")
        return
    end

    local hash
	if type(model) == "number" then
		hash = model
	else
		local s = tostring(model):gsub("^%s+", ""):gsub("%s+$", "")
		if s == "" then
			notify("Empty model.")
			return
		end

		local n = tonumber(s)
		if n then
			hash = n
		elseif s:sub(1, 2) == "0x" or s:sub(1, 2) == "0X" then
			hash = tonumber(s)
		else
			hash = GetHashKey(s)
		end
	end
	
	print("[SpawnPreview] model:", model, "hash:", hash, "cdimage:", IsModelInCdimage(hash), "valid:", IsModelValid(hash))
	
	RequestModel(hash)

	local timeout = GetGameTimer() + 3000
	while not HasModelLoaded(hash) and GetGameTimer() < timeout do
		Wait(0)
	end

	if not HasModelLoaded(hash) then
		notify("Model not loaded. Maybe missing ytyp/stream.")
		print("[SpawnPreview] failed load hash:", hash)
		return
	end

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    RequestModelStriano(hash)

    he = CreateObjectNoOffset(hash, x, y, z, false, true, false)
	SetModelAsNoLongerNeeded(hash)

	local timeout = GetGameTimer() + 1000
	while not DoesEntityExist(he) and GetGameTimer() < timeout do
		Wait(0)
	end

	if not DoesEntityExist(he) then
		print("[SpawnPreview] CreateObject failed:", hash)
		notify("CreateObject failed.")
		he = nil
		return
	end

    if not DoesEntityExist(he) then
        notify("Model object not valid.")
        he = nil
        return
    end

    SetEntityHeading(he, GetEntityHeading(playerPed))
    FreezeEntityPosition(he, true)
    SetEntityCollision(he, false, false)
    SetCanClimbOnEntity(he, false)
	
    Wait(25)
    UPDATEHE(qt)
end)

RegisterCommand('he2', function(source, args) -- For construction. /he2"
	if args[1] == nil then return end
	if not CanBuildHere(true) then return end
	exports.striano_editor:SpawnPreview(args[1])
end)

RegisterKeyMapping("spawnables", "Spawnables Manager", "keyboard", "f7")
RegisterCommand("spawnables", function()
	local ped = PlayerPedId() local coords = GetEntityCoords(ped) local spawn = vector3(3836.253, 6438.734, 0.613) local dist = #(coords - spawn)
	if dist > 25.0 then
		OpenSpawnableObjectsMenu()
	else
		print("Can't open Editor menu on spawn place!")
	end
end)

lastItemSelected = ""
function OpenSingleObjectMenu(itemname)
    exports['striano_fastmenu']:clearMenu()
    -- Wait(50)

    exports['striano_fastmenu']:addMenuItem("[ PLACE ]", function() -- "place"
		if maxSpawnableXplayer < 0 then 
			exports['striano_fastmenu']:close()
			destroyPreviewCam()
			DestroyPreview()
			exports.striano_combat:testo3d("~r~~h~Not enabled!")
			PlaySoundFrontend(-1,'Nav_Arrow_Right','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',1)
		else
			local lvl = LocalPlayer.state.adminLevel or 0
			if CountMyPoolObjects() > maxSpawnableXplayer and lvl == 0 then 
				exports['striano_fastmenu']:close()
				destroyPreviewCam()
				DestroyPreview()
				exports.striano_combat:testo3d("~r~~h~Max prop reached!")
				PlaySoundFrontend(-1,'Nav_Arrow_Right','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',1)
			else
				exports['striano_fastmenu']:close()
				ExecuteCommand("he2 " .. itemname)
				lastItemSelected = itemname
			end
		end
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ EDIT LABEL ]", function()
        local label = OpenInput("Insert custom label")
        label = tostring(label or ""):gsub("^%s*(.-)%s*$", "%1")

        if label ~= "" then
            TriggerServerEvent("spawnable_objects:server:setLabel", itemname, label)
            PlaySoundFrontend(-1, 'Nav_Arrow_Ahead', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', 1)
        end

        Wait(150)
        OpenSingleObjectMenu(itemname)
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ EDIT DESCRIPTION ]", function()
        local desc = OpenInput("Insert description")
        desc = tostring(desc or ""):gsub("^%s*(.-)%s*$", "%1")

        TriggerServerEvent("spawnable_objects:server:setDesc", itemname, desc)
        PlaySoundFrontend(-1, 'Nav_Arrow_Ahead', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', 1)

        Wait(150)
        OpenSingleObjectMenu(itemname)
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ EDIT TAGS ]", function()
        local input = OpenInput("Insert tags separated by comma")
        input = tostring(input or ""):gsub("^%s*(.-)%s*$", "%1")

        local tags = {}

        if input ~= "" then
            for tag in string.gmatch(input, '([^,]+)') do
                local cleanTag = tostring(tag):gsub("^%s*(.-)%s*$", "%1")
                if cleanTag ~= "" then
                    tags[#tags + 1] = cleanTag
                end
            end
        end

        TriggerServerEvent("spawnable_objects:server:setTags", itemname, tags)
        PlaySoundFrontend(-1, 'Nav_Arrow_Ahead', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', 1)

        Wait(150)
        OpenSingleObjectMenu(itemname)
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ REMOVE FROM LIST ]", function()
        local name = OpenInput("Sure? Type 'yes'")
        local input = tostring(name or ""):lower()

        if input == "yes" then
            TriggerServerEvent("spawnable_objects:server:remove", itemname)
            PlaySoundFrontend(-1,'Nav_Arrow_Ahead','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',1)
			destroyPreviewCam()
			DestroyPreview()
        end

        Wait(150)
        OpenSpawnableObjectsMenu()
    end, false)

    exports['striano_fastmenu']:addMenuItem("[ BACK ]", function()
        OpenSpawnableObjectsMenu()
    end, false)
end

-- Insert here items you dont want can be moved!
local BigItems = { 
    "boat",
}

function IsBig(itemGet)
    if not item then return false end
	for i, item in ipairs(BigItems) do
		if tostring(itemGet) == tostring(item) then
			return true
		end
	end
	return false
end

function OpenMenuManagement(ent, qt)
	local ped = PlayerPedId()
	local endcheck = false
	
	CreateThread(function()
		while not endcheck do 
			Wait(0) 
			local coords = GetEntityCoords(ent)
			local minDim, maxDim = GetModelDimensions(GetEntityModel(ent))
			local altezza = maxDim.z - minDim.z
			DrawMarker(0, coords.x, coords.y, coords.z+altezza+0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.15, 0.15, 0.15, 255,255,255,250, true, true, 2, nil, nil, false)
		end
		-- print("Controllo chiuso.")
	end)
	
	CreateThread(function()
		local id = getPoolIdFromEntity(ent)
		local isASword = exports.striano_combat:isACombatSword(pool[id].model)
		
		exports['striano_fastmenu']:clearMenu()
		
		exports['striano_fastmenu']:addMenuItem("Info", function()
			if id ~= nil then
				local owner = pool[id] and pool[id].owner or "Unknow"
				local amount = pool[id] and pool[id].amount or 0
				if amount > 0 then 
					ExecuteCommand("prova3 [" .. owner .. "] x" .. amount)
				else
					ExecuteCommand("prova3 Placed by [" .. owner .. "]")
				end
			end
		end, false) -- true = chiudi menu dopo click
		
		exports['striano_fastmenu']:addMenuItem("Destroy", function()
			if id ~= nil then
				startDestroyPoolID(id, ent)
			end
		end, false) -- true = chiudi menu dopo click
		
		if id ~= nil then
			if pool[id].amount == 0 then
				exports['striano_fastmenu']:addMenuItem("Duplicate", function()
					if id ~= nil then
						if lastOutline ~= nil then ResetEntityAlpha(lastOutline) SetEntityDrawOutline(lastOutline, false) end
						if lastOutlineCassa ~= nil then SetEntityDrawOutline(lastOutlineCassa, false) lastOutlineCassa = nil end
						stopPointing()
						lastOutline = nil
						modalitaPesci = false
						Wait(25)
						ExecuteCommand("pointingstop")
						local model = pool[id].model
						lastItemSelected = model
						ExecuteCommand("he2 " .. model)
					end
				end)
			end
		end
		
		if qt > 0 then	
			local labelCustom = "Get (x"..qt..")"
			if isASword then labelCustom = "Get (Sword ID: "..qt..")" end
			exports['striano_fastmenu']:addMenuItem(labelCustom, function()
				if id ~= nil then
					-- ETERIS
					-- print("Modello identificato: " .. pool[id].model)
					if pool[id].model == "striano_eteris_2" then
						ExecuteCommand("pointingstop")
						exports['striano_editor']:HintHud_SetVisible(false)
						exports.striano_fastmenu:close()
						makeEntityFaceEntity(ped, ent)
						faiAnim("anim@mp_snowball", "pickup_snowball")
						Wait(750)
						delprop(id)
					else -- ALTRI ITEMS
						local item_from = exports.striano_inventory:getItemFromModel(pool[id].model)
						if item_from == nil and not isASword then 
							-- ExecuteCommand("prova3 Can't be taken.")
							faiAnim("gestures@f@standing@casual", "gesture_shrug_hard")
						else
							-- Raccolgo un item normale
							local qt = pool[id] and pool[id].amount or 1
							-- local metadata = pool[id] and pool[id].metadata or -1
							if active[id].child ~= nil then
								item_from = exports.striano_inventory:getItemFromModel(GetEntityModel(active[id].child)) 
								-- print("Child rilevato ("..item_from..")")
							else
								-- print("Item rilevato ("..item_from..")")
							end
							
							if isASword then
								TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "melee_weapon", qt)
							else
								TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", item_from, qt)
							end
							
							ExecuteCommand("pointingstop")
							exports['striano_editor']:HintHud_SetVisible(false)
							exports.striano_fastmenu:close()
							makeEntityFaceEntity(ped, ent)
							faiAnim("anim@mp_snowball", "pickup_snowball")
							Wait(750)
							delprop(id)
						end
					end
				end
			end, true) -- true = chiudi menu dopo click
		end
		
		if id ~= nil then
			local item_from = exports.striano_inventory:getItemFromModel(pool[id].model)
			-- if not IsBig(item_from) then -- If an item it's too big insert here!
			exports['striano_fastmenu']:addMenuItem("Move Prop", function()
				-- if qt > 0 then -- DECIDO QUALE EDITOR ATTIVARE!			
				exports.striano_editor:SpawnPreview(pool[id].model, qt)
				delprop(id) -- Intanto lo elimino durante l'editor per evitare sdoppiamenti!
			end, true) -- true = chiudi menu dopo click
		end
			
		exports['striano_fastmenu']:openMenu()

		while exports.striano_fastmenu:opened() do Wait(0) end
		endcheck = true
		ExecuteCommand("prova3 ")
		-- print("Menu Closed")
		ExecuteCommand(commandSelector)
	end)
end

function CountMyPoolObjects()
    local myName = GetPlayerName(PlayerId()):lower()
    local count = 0

    for id, data in pairs(pool) do
        if data and data.owner and data.owner:lower() == myName then
            count = count + 1
        end
    end

    return count
end

function canOpenEditor()
	if not exports.striano_core:gettutorial() then 
		return false
	end
	return true
end

function OpenSpawnableObjectsMenu(filteredList)
	if not canOpenEditor() then return end
    -- TriggerServerEvent("spawnable_objects:server:requestList")
    -- Wait(100)
	local list = filteredList or SpawnableObjects
	
	destroyPreviewCam()
	DestroyPreview()

    exports['striano_fastmenu']:clearMenu()
    -- Wait(50)

    exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ ADD NEW SPAWNABLE (".. #list ..")]",
        autoClose = true,
        onClick = function()
			AddNewObjectList()
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
        hoverInfo = {
            title = "Add new object",
            description = "Insert a new spawnable object into the saved list.",
            footer = "Create",
            icon = "+",
            theme = "white"
        }
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ 🔍 SEARCH OBJECT ]",
        autoClose = false,
        onClick = function()
            local text = OpenInput("Tag")
            if not text then return end
            local results = SearchLocalObjects(text)
            OpenSpawnableObjectsMenu(results)
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
        hoverInfo = {
            title = "Search object",
            description = "Search by name, label, description or tags.",
            footer = "Filter",
            icon = "🔍​",
            theme = "white"
        }
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ DELETE MODE ]",
        autoClose = true,
        onClick = function()
			exports['striano_fastmenu']:close()
			CreateThread(function()
				Wait(125)
				ExecuteCommand("delmode")
			end)
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ PLACED POS LIST ]",
        autoClose = true,
        onClick = function()
			exports['striano_fastmenu']:close()
			CreateThread(function()
				Wait(125)
				local name = OpenInput("Range (optional)")
				if name == nil then name = "" end
				ExecuteCommand("poolpos " .. name)
			end)
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ DOORS LIST ]",
        autoClose = true,
        onClick = function()
			exports['striano_fastmenu']:close()
			CreateThread(function()
				Wait(125)
				ExecuteCommand("doorslist")
			end)
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ REMOVE NEAREST DOOR ]",
        onClick = function()
			ExecuteCommand("pointingstop")
			local nearDoor = GetClosestDoor(2.5)										
			if nearDoor then
				exports['striano_fastmenu']:close()
				local name = OpenInput("Sure? Type 'yes'")
				local input = tostring(name or ""):lower()
				if input == "yes" then
					ExecuteCommand("removedoor")
				end
			else
				exports.striano_combat:testo3d("No door near.")
			end
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
    })
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ LIMIT: "..CountMyPoolObjects().."/"..maxSpawnableXplayer.."]",
        autoClose = false,
		hoverInfo = {
            title = "How many spawn you have.",
            icon = "%",
            theme = "white"
        },
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
	})
	
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ DEL MODE ]",
        autoClose = false,
        onClick = function()
            ExecuteCommand("delmode")
        end,
		hoverInfo = {
            title = "Active del-mode.",
            description = "Construction can be selected only in this mode.",
            icon = "🔨​​",
            theme = "white"
        },
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
	})
	exports['striano_fastmenu']:addMenuItemAdvanced({
        label = "[ SPAWNED LIST ]",
        autoClose = false,
		hoverInfo = {
            title = "Teleport on spawned.",
            description = "Check the coords of every placed and spawned objects.",
            icon = "📌​",
            theme = "white"
        },
        onClick = function()
			destroyPreviewCam()
			DestroyPreview()
			Wait(125)
            ExecuteCommand("poolpos")
        end,
		onHover = function()
			destroyPreviewCam()
			DestroyPreview()
		end,
	})
	
	if #lastItemSelected > 1 then
		exports['striano_fastmenu']:addMenuItemAdvanced({
			label = "[ SPAWN LAST PLACED ]",
			autoClose = false,
			hoverInfo = {
				title = "Spawn the last object you place.",
				icon = "%",
				theme = "white"
			},
			onHover = function()
				local model = joaat(lastItemSelected)
				if IsModelInCdimage(model) then	
					print("Last prop name: " .. lastItemSelected)
					StartObjectPreview(lastItemSelected)
				else
					print("Model not exist, delete from list: ", model)
				end
			end,
			onClick = function()
				local lvl = LocalPlayer.state.adminLevel or 0
				if CountMyPoolObjects() > maxSpawnableXplayer and lvl == 0 then 
					exports['striano_fastmenu']:close()
					destroyPreviewCam()
					DestroyPreview()
					exports.striano_combat:testo3d("~r~~h~Max prop reached!")
					PlaySoundFrontend(-1,'Nav_Arrow_Right','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',1)
				else
					exports['striano_fastmenu']:close()
					ExecuteCommand("he2 " .. lastItemSelected)
				end
			end,
		})
	end
	
    for i, item in ipairs(list) do
        local title = ("[%s] %s"):format(i, item.label ~= "" and item.label or item.name)

        exports['striano_fastmenu']:addMenuItemAdvanced({
			label = title,
			autoClose = false,
			onClick = function()
				OpenSingleObjectMenu(item.name)
			end,
			onHover = function()
				local model = joaat(item.name)
				if IsModelInCdimage(model) then	
					StartObjectPreview(item.name)
				else
					print("Model not exist, delete from list: ", model)
				end
			end,
			-- hoverInfo = {
				-- title = item.label ~= "" and item.label or item.name,
				-- description = item.desc ~= "" and item.desc or item.name,
				-- footer = "Model: " .. item.name,
				-- icon = "📦",
				-- theme = "white"
			-- }
		})
    end

    exports['striano_fastmenu']:openMenu()
	
	LoopPreview()
end

exports("GetSpawnableObjectsCache", function()
    return SpawnableObjects
end)

exports("GetSpawnableObjectFromCache", function(name)
    if type(name) ~= "string" then return nil end
    name = name:lower()

    for i = 1, #SpawnableObjects do
        if SpawnableObjects[i].name == name then
            return SpawnableObjects[i], i
        end
    end

    return nil, nil
end)

-- USE THIS TO DROP ITEM FROM YOUR INVENTORY!
exports('dropItemFunction', function(model, itemName, QT) -- PLEASE REMEMBER TO CLOSE THE INVENTORY AND REMOVE THE ITEM FROM IT! 
	TriggerEvent("spawnEditorEvent", model, QT, itemName)
end)

local function GetNearestPoolEntity(maxDistance)
    local ped = PlayerPedId()
    local pCoords = GetEntityCoords(ped)

    maxDistance = maxDistance or 10.0

    local nearestId = nil
    local nearestEntity = nil
    local nearestDist = maxDistance + 0.001

    local poolsToCheck = {
        "CObject",
        "CPed",
        "CVehicle"
    }

    for _, gamePool in ipairs(poolsToCheck) do
        local entities = GetGamePool(gamePool)

        for i = 1, #entities do
            local entity = entities[i]

            if entity
            and entity ~= 0
            and DoesEntityExist(entity)
            and entity ~= ped then

                local id = getPoolIdFromEntity(entity)

                if id ~= nil and pool[id] then
                    local eCoords = GetEntityCoords(entity)
                    local dist = #(pCoords - eCoords)

                    if dist < nearestDist then
                        nearestDist = dist
                        nearestId = id
                        nearestEntity = entity
                    end
                end
            end
        end
    end

    return nearestId, nearestEntity, nearestDist
end

timingDeleteProp = false
RegisterCommand("nearestpool", function()
    local id, entity, dist = GetNearestPoolEntity(15.0)

    if not id or not entity then
        print("^1[POOL]^7 No pool item near.")
        return
    end

    print((
        "^2[POOL]^7 Nearest | ID: ^3%s^7 | ENTITY: ^3%s^7 | MODEL: ^5%s^7 | AMOUNT: ^3%s^7 | DIST: ^2%.2f^7"
    ):format(
        tostring(id),
        tostring(entity),
        tostring(pool[id].model or GetEntityModel(entity)),
        tostring(pool[id].amount or 0),
        dist
    ))
	
	if not timingDeleteProp then
		timingDeleteProp = true 
		-- if deleteMode then
			CreateThread(function()
				while timingDeleteProp do
					Wait(0)
					drawinfo(73,"Delete Prop")
					if IsControlPressed(0, 73) then 
						local name = OpenInput("Delete? Type 'yes'")
						local input = tostring(name or ""):lower()
						if input == "yes" then
							PlaySoundFrontend(-1,'5_Second_Timer','DLC_HEISTS_GENERAL_FRONTEND_SOUNDS',0)
							print("Scene prop " .. id .. " destroyed!")
							delprop(id) -- delpool
							if nearDoor then
								ExecuteCommand("removedoor")
							end
						end
						return
					end
				end
			end)
		-- end
		if not IsEntityAPed(entity) then
			SetEntityDrawOutline(entity, true)
			SetEntityDrawOutlineColor(0, 255, 0, 90)

			SetTimeout(5000, function()
				timingDeleteProp = false
				if DoesEntityExist(entity) then
					SetEntityDrawOutline(entity, false)
				end
			end)
		end
	end
end)

RegisterCommand("delnearestpoolped", function()
	if deleteMode then
		local id, entity, dist = GetNearestPoolEntity(15.0)

		if not id or not entity then
			print("^1[POOL]^7 No pool item near.")
			return
		end
		
		if IsEntityAPed(entity) then
			print((
				"^2[POOL]^7 Nearest | ID: ^3%s^7 | ENTITY: ^3%s^7 | MODEL: ^5%s^7 | AMOUNT: ^3%s^7 | DIST: ^2%.2f^7"
			):format(
				tostring(id),
				tostring(entity),
				tostring(pool[id].model or GetEntityModel(entity)),
				tostring(pool[id].amount or 0),
				dist
			))
			startDestroyPoolID(id, entity)
		end
	else
		testo3d("~r~Delete mode not active.")
	end
end)

RegisterCommand("delnearestpool", function()
	if deleteMode then
		local id, entity, dist = GetNearestPoolEntity(15.0)

		if not id or not entity then
			print("^1[POOL]^7 No pool item near.")
			return
		end
		
		if not IsEntityAPed(entity) then
			print((
				"^2[POOL]^7 Nearest | ID: ^3%s^7 | ENTITY: ^3%s^7 | MODEL: ^5%s^7 | AMOUNT: ^3%s^7 | DIST: ^2%.2f^7"
			):format(
				tostring(id),
				tostring(entity),
				tostring(pool[id].model or GetEntityModel(entity)),
				tostring(pool[id].amount or 0),
				dist
			))

			delprop(id)
		end
	else
		testo3d("~r~Delete mode not active.")
	end
end)

function startDestroyPoolID(id, ent)
	local ped = PlayerPedId()
	local myName = GetPlayerName(PlayerId()):lower()
	-- Abilito la distruzione solo se lo hai creato tu o sei admin!
	if pool[id].owner:lower() == myName or LocalPlayer.state.adminLevel > 0 then
		exports['striano_fastmenu']:clearMenu()
		exports['striano_fastmenu']:addMenuItem("Confirm Destroy?", function()
			-- faiAnim("anim@am_hold_up@male", "shoplift_low")
			-- makeEntityFaceEntity(ped, ent)
			
			ExecuteCommand(commandSelector)
			
			delprop(id)
			exports.striano_fastmenu:close()
			PlaySoundFrontend(-1,'MP_IDLE_TIMER','HUD_FRONTEND_DEFAULT_SOUNDSET',1)
			AmoLanciato = false
			trovatoAmo = nil
			GlobalPos = nil
			eInteractPos = nil 
			modalitaPesci = false
			pescando = false
			fishEntity = nil
		end, true)
		exports['striano_fastmenu']:openMenu()
	else
		exports.striano_combat:testo3d("~r~~h~Not your object.")
	end
end

exports("addrope", function()
    rope()
end)

RegisterCommand("addrope", function()
    rope()
end)

function StopSims()
	exports.striano_combat:fodera()
	exports.striano_inventory:SetHolderPropsInvisible(false) -- SHOW!
	exports.striano_inventory:showBag()
end

function TempReset()
	ClearSelector()
	local ped = PlayerPedId()
	tempOffsetX = 0.0
	tempOffsetY = 0.0
	tempOffsetZ = 0.0
	tempRotx = 0
	tempRoty = 0
	tempRotz = 0
	editVX = 0.0
	editVY = 0.0
	editVZ = 0.0
	editVRx = 0.0
	editVRy = 0.0
	editVRz = 0.0
	TipoEditor = true
	onTempReset()
	FreezeEntityPosition(ped, false)
	SetEntityAlpha(ped, 255)
	exports.striano_inventory:SetHolderPropsInvisible(false) -- SHOW!
	if lastPostPG then 
		-- SetEntityCoords(ped, lastPostPG.x,lastPostPG.y,lastPostPG.z-1)
		lastPostPG = nil
	end
	if propGhostDoor and DoesEntityExist(propGhostDoor) then 
		SetEntityAsMissionEntity(propGhostDoor)
		DeleteEntity(propGhostDoor)
		propGhostDoor = nil
	end
	if not exports.striano_combat:weaponexist() then exports.striano_combat:fodera() end
	if moveMode then
		if DoesEntityExist(lastEntMove) then
			SetEntityCoords(lastEntMove, lastMovePos)
			SetEntityRotation(lastEntMove, lastMoveRot)			
			lastEntMove = nil
			print("lastEntMove reset.")
		end
		moveMode = false
	else
		-- ELIMINO HE NORMALMENTE!
		if DoesEntityExist(he) then
			SetEntityAsMissionEntity(he)
			DeleteEntity(he)
		end
	end
		
	he = nil
	Wait(0)
	ExecuteCommand("pointingstop")
	ClearPedTasks(ped)
end

function startTipoSims()
	local ped = PlayerPedId()
	lastPostPG = GetEntityCoords(ped)
	StartOrbitCam(vector3(0.0, 0.0, 0.5), he)
	FreezeEntityPosition(ped, true)
	SetEntityAlpha(ped, 0)
	exports.striano_combat:delallarmi() -- Alla modalità sim tolgo le armi
	exports.striano_inventory:hideBag()
	-- SetEntityCoords(ped, lastPostPG.x,lastPostPG.y,lastPostPG.z+10.0)
	exports.striano_inventory:SetHolderPropsInvisible(true) -- HIDE
end

-- FISHERMAN
-- FISHERMAN SYSTEM 1.0 by Striano Scripts.
-- Thanks to: CODE RP - Italian Project
-- Support Discord: https://discord.gg/VgTGW5St9E

-- If you need to know if the player is fishing from other scripts this is the example:
-- if exports.striano_editor:stopescando() then print("YES I'M IN FISHING MODE!") end

-- DO NOT EXEED WITH VARIABLE "chance", if you want that an item it's more frequency spawn maximum need to be 20.
-- A very rare fish need to be 1.

-- ENABLE SUB ITEM: PER LA BOMBOLA DI OSSIGENO! CREATE ITEM E FAR PARTIRE QUESTA FUNZIONE SOTTO!
-- TriggerClientEvent('applicaBombola', source) -- WIll be added 10 of oxigen!
-- TriggerEvent('applicaBombola') -- WIll be added 10 of oxigen!

function notify(msg)
	exports.striano_combat:submex(msg)
end

FishermanArea = { -- This are the dynamic FISH AREA, where players can get fish from a PACK they want! -- ZONA PESCA!
	-- SONS OF DECAY  coords, you need my striano Isle to test there coords, if not use your own coords on Los Santos!
	{ coords = vector3(4171.951,7047.373,0.0), grandezzaArea = 35.0, ricompensa = {}, Pack = "PackBase" },
	{ coords = vector3(3500.213,7567.098,0.0), grandezzaArea = 35.0, ricompensa = {}, Pack = "PackBase" },
	{ coords = vector3(3075.911,7601.244,0.0), grandezzaArea = 35.0, ricompensa = {}, Pack = "PackBase" },	
	{ coords = vector3(4043.651,7430.007,0.0), grandezzaArea = 35.0, ricompensa = {}, Pack = "PackBase" },
	{ coords = vector3(4182.122,6873.797,0.0), grandezzaArea = 35.0, ricompensa = {}, Pack = "PackCayoTrash" }, 
}
exports('getFishermanArea', function()
	return FishermanArea
end)

TreeArea = { -- INSERT WHERE TREE NEED TO SPAWN WHEN THE CLIENT REQUEST!
	{ pos=vector3(3511.925,7375.971,12.752), range=50.0, howmany=30, cTree=0 }, -- howmany means TREE! cTree NEED TO BE 0
	{ pos=vector3(3678.073,7352.718,9.686), range=50.0, howmany=15, cTree=0 }, -- howmany means TREE! cTree NEED TO BE 0
}
BananaTreeArea = { -- GRANDI
	{ pos=vector3(2079.502,8232.731,8.599), range=35.0, howmany=3, cTree=0 },
	{ pos=vector3(1692.189,8788.718,7.387), range=35.0, howmany=3, cTree=0 },
}
PlantAshArea = { -- INSERT WHERE TREE NEED TO SPAWN WHEN THE CLIENT REQUEST!
	{ pos=vector3(4457.683,7906.399,2.449), range=55.0, howmany=30, cTree=0 }, -- howmany means TREE! cTree NEED TO BE 0
	{ pos=vector3(4251.957,6807.499,1.973), range=55.0, howmany=30, cTree=0 }, -- howmany means TREE! cTree NEED TO BE 0
}
StoneArea = { -- INSERT WHERE MINERALS SPAWN WHEN THE CLIENT REQUEST! MINATORE! PIETRE
	{ pos=vector3(4199.587,5560.517,6.87), pietra=nil, life=math.random(5,12), mother=`bzzz_prop_mine_stone_big`, handler=`bzzz_prop_mine_stone_b`, itemToGET=nil },
	{ pos=vector3(3551.808,7209.819,1.934), pietra=nil, life=math.random(5,12), mother=`bzzz_prop_mine_copper_big`, handler=`bzzz_prop_mine_copper_b`, itemToGET=nil },	
	{ pos=vector3(3818.287,7732.806,4.872), pietra=nil, life=math.random(5,12), mother=`bzzz_prop_mine_iron_big`, handler=`bzzz_prop_mine_iron_b`, itemToGET=nil },
	{ pos=vector3(3147.605,7858.56,5.479), pietra=nil, life=math.random(15,20), mother=`bzzz_prop_mine_lead_big`, handler=`bzzz_prop_mine_lead_b`, itemToGET=nil },
	{ pos=vector3(4060.938,5613.612,2.944), pietra=nil, life=math.random(15,20), mother=`bzzz_prop_mine_gold_big`, handler=`bzzz_prop_mine_gold_b`, itemToGET=nil },
	{ pos=vector3(4358.124,3908.7,4.867), pietra=nil, life=math.random(15,20), mother=`bzzz_prop_mine_ruby_big`, handler=`bzzz_prop_mine_ruby_b`, itemToGET=nil },
	-- IN MINIERA HANNO UNA VARIABILE DIVERSA PERCHE NON DEVE CONTROLLARE ASSE Z IN AUTOMATICO!
	{ pos=vector3(-424.701,2064.472,119.144), pietra=nil, life=math.random(5,12), mother=`bzzz_prop_mine_iron_big`, handler=`bzzz_prop_mine_iron_b`, itemToGET=nil, noGroundCheck=true },
	
}
-- COSA OTTENGO QUANDO COLPISCO UN MINERALE PER FARLO DIVENTARE PIU PICCOLO?
abbinamentiStone = {
	{ a=`bzzz_prop_mine_stone_b`,b=`bzzz_prop_mine_stone_c`, durezza=math.random(5,8) },
	{ a=`bzzz_prop_mine_copper_b`,b=`bzzz_prop_mine_copper_c`, durezza=math.random(10,15) },
	{ a=`bzzz_prop_mine_iron_b`,b=`bzzz_prop_mine_iron_c`, durezza=math.random(15,20) },
	{ a=`bzzz_prop_mine_lead_b`,b=`bzzz_prop_mine_lead_c`, durezza=math.random(20,30) }, -- inteso che il piombo è più duro da spaccare!
	{ a=`bzzz_prop_mine_gold_b`,b=`bzzz_prop_mine_gold_c`, durezza=math.random(15,20) },
	{ a=`bzzz_prop_mine_ruby_b`,b=`bzzz_prop_mine_ruby_c`, durezza=math.random(25,35) },
}

fishValidList = {
	"striano_fishing_1",
	"striano_fishing_2",
	"striano_fishing_3",
	"striano_fishing_4",
	"striano_fishing_5",
	"striano_fishing_6",
	"striano_fishing_7",
	"striano_fishing_8",
	"striano_fishing_9",
	"striano_fishing_10",
	"striano_fishing_11",
	"striano_fishing_12",
	"striano_fishing_13",
	"striano_fishing_14",
	"striano_fishing_15",
	"striano_fishing_16",
	"striano_fishing_17",
	"striano_fishing_18",
	"striano_fishing_19",
	"striano_fishing_20",
	
	"striano_fishing_gold_1",
	"striano_fishing_gold_2",
	"striano_fishing_gold_3",
	"striano_fishing_gold_4",
	"striano_fishing_gold_5",
	"striano_fishing_gold_6",
	"striano_fishing_gold_7",
	"striano_fishing_gold_8",
	"striano_fishing_gold_9",
	"striano_fishing_gold_10",
	"striano_fishing_gold_11",
	"striano_fishing_gold_12",
	"striano_fishing_gold_13",
	"striano_fishing_gold_14",
	"striano_fishing_gold_15",
	"striano_fishing_gold_16",
	"striano_fishing_gold_17",
	"striano_fishing_gold_18",
	"striano_fishing_gold_19",
	"striano_fishing_gold_20",
	
	-- Taglialegna
	"bzzz_prop_tablesaw_wood",
	"bzzz_lumberjack_wood_pack_3a_static",
	
	-- Miniera
	"bzzz_prop_mine_stone_b","bzzz_prop_mine_stone_c",
	"bzzz_prop_mine_copper_b","bzzz_prop_mine_copper_c",
	"bzzz_prop_mine_iron_b","bzzz_prop_mine_iron_c",
	"bzzz_prop_mine_lead_b","bzzz_prop_mine_lead_c",
	"bzzz_prop_mine_gold_b","bzzz_prop_mine_gold_c",
	"bzzz_prop_mine_ruby_b","bzzz_prop_mine_ruby_c",
	-- Aggiornare anche in abbinamentiStone
	
	-- Banane
	"striano_banana_basket_floor",
		
	-- SEED SYSTEM
	"prop_veg_crop_02", 
	"prop_veg_crop_03_cab",
	"prop_veg_crop_03_pump",
	"james_grape",
	"prop_bush_med_05",
	"prop_plant_fern_02a",
	"prop_plant_01a", 
	
	-- DA IsContainer
	"bkr_prop_weed_table_01b",
	"chainsawsl3",
	"prop_ld_jerrycan_01",
	"prop_paint_stepl01b",
	"prop_paint_stepl01",
	"xm3_prop_xm3_lab_tray_01b",
	"tr_prop_meth_tray_02a",
	"bkr_prop_weed_bag_pile_01a",
	"prop_box_tea01a",
	"prop_barrel_02a",
	"tr_prop_meth_toulene",
	"prop_compressor_02",
	"prop_compressor_03",
	"v_med_oscillator1",
	"v_med_cooler",
	"v_res_tre_mixer",
	"bkr_prop_meth_bigbag_02a",
	"tr_prop_meth_bigbag_03a",
	"tr_prop_meth_smallbag_01a",
	"prop_bucket_01a",
	"striano_bwatert",
	"striano_bwater",
	"striano_carr_s",
	"striano_carr_m",
	"striano_carr_l",
	"striano_bterra_s",
	"striano_bterra_m",
	"striano_bterra_l",
	"striano_bterra_st",
	"striano_bterra_mt",
	"striano_bterra_lt",
	"striano_showel",
	"striano_plantingcrate",
	"maibrnx_asylum_bed",
	"reh_prop_reh_paper_map_01a",
	"v_ret_247_swtcorn2",
	"medievalbracier",
	"sf_prop_sf_crate_01a", -- BOX DELIVERY
	
	-- CRATE LIST
	"str_crate_1",
	"str_crate_2",
}

local function LoadContainerModelsFromItems(items)
    if not items then return end
    for _, data in pairs(items) do
        if data and data.model then
            local hash = type(data.model) == "number" and data.model or GetHashKey(data.model)
            if hash ~= 0 and IsModelValid(hash) then
				table.insert(fishValidList, hash)
            end
        end
    end
end
local function LoadContainerModelsFromItemsCombat(items)
    if not items then return end
    for _, data in pairs(items) do
        if data and data.m then
            local hash = type(data.m) == "number" and data.m or GetHashKey(data.m)
            if hash ~= 0 and IsModelValid(hash) then
				table.insert(fishValidList, hash)
            end
        end
    end
end
local function LoadContainerModelsFromItemsPool(items) -- Nel casao è da cambiare .model con la var model della tabela indicata!
    if not items then return end
    for _, data in pairs(items) do
        if data and data.model then
            local hash = type(data.model) == "number" and data.model or GetHashKey(data.model)
            if hash ~= 0 and IsModelValid(hash) then
				table.insert(fishValidList, hash)
            end
        end
    end
end
local function LoadContainerModelsFromStone(items)
    if not items then return end
    for _, data in pairs(items) do
        if data and data.handler then
            local hash = type(data.handler) == "number" and data.handler or GetHashKey(data.handler)
            if hash ~= 0 and IsModelValid(hash) then
				table.insert(fishValidList, hash)
            end
        end
    end
end
local function LoadContainerModelsFromStoneAbb(items)
    if not items then return end
    for _, data in pairs(items) do
        if data and data.b then
            local hash = type(data.b) == "number" and data.b or GetHashKey(data.b)
            if hash ~= 0 and IsModelValid(hash) then
                table.insert(fishValidList, hash)
            end
        end
    end
end
CreateThread(function()
	Wait(3000)
	-- RENDO SELEZIONABILI DA SELECTOR ANCHE OGGETTI CHE VENGONO GESTITI DA ALTRI SCRIPT!
	local items = exports["striano_inventory"]:GetItems() LoadContainerModelsFromItems(items)
	local itemsCombat = exports["striano_combat"]:GetItems() LoadContainerModelsFromItemsCombat(itemsCombat)
	local itemsPool = pool LoadContainerModelsFromItemsPool(itemsPool) 
	LoadContainerModelsFromStone(StoneArea) -- Aggiungo alla lista le pietre madre
	LoadContainerModelsFromStoneAbb(abbinamentiStone) -- Aggiungo alla lista le pitre abbinamento!
end)

function drawInfo(...)
	draw(...)
	-- Change with a LOOOOOOOOOP Notification system if you dont like my native notify looped.
end

function takeFromWire_tx() draw(24,"Take from fishrod") end -- take the fish from the wire after exit from water
function fishTaked_tx(amountGet, modello, isWeap, ent)
	if DoesEntityExist(ent) then 
		local nameModel = ""
		if modello ~= nil then nameModel = " ~h~" .. exports.striano_inventory:getItemFromModel(modello) .. "~h~" end
		local isWorldContainer = Entity(ent).state.worldContainer == true
		if veicolovicino > 0 then 
			if isWorldContainer then
				draw(24,"Attach") -- , 45,"Put away") 
				local Coords = GetEntityCoords(veicolovicino)
				DrawMarker(0, Coords.x, Coords.y, Coords.z+1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.37, 0.37, 0.57, 255, 255, 255, 200, true, true, 2, nil, nil, false)
			else
				if nameModel:lower():find("unknown", 1, true) then
					draw(24,"Attach") -- , 45,"Put away") 
				else
					draw(38,"Store ("..amountGet..")" .. nameModel, 24,"Attach") -- , 45,"Put away") 
				end
				local Coords = GetEntityCoords(veicolovicino)
				DrawMarker(0, Coords.x, Coords.y, Coords.z+1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.37, 0.37, 0.57, 255, 255, 255, 200, true, true, 2, nil, nil, false)
			end
		else
			if isWorldContainer then
				draw(24,"Place", 74,"Take Inv.")
				if IsControlJustPressed(0, 74) then 
					Wait(0)
					local model = GetEntityModel(ent)
					SetEntityAsMissionEntity(ent)
					DeleteEntity(ent)
					
					if model == `str_crate_1` then 
						TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "crate", 1)
					elseif model == `str_crate_2` then
						TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "crate2", 1)
					end
					
					FinePesca()
					possoFareSelector = true
					fishEntity = nil
				end
			else
				local IsASword = exports.striano_combat:isACombatSword(GetEntityModel(fishEntity))
				if IsASword then 
					draw(38,"Store (~h~"..exports.striano_combat:getSwordNameFromID(amountGet)..")", 24,"Place")
				else
					if isWeap then
						draw(38,"Store ("..amountGet..")" .. nameModel, 47,"Equip", 24,"Place")
					else
						draw(38,"Store ("..amountGet..")" .. nameModel, 24,"Place")
					end
				end
			end
		end
	end
end -- when you take the fish in hand and you need manage it
function fishTaked_tx2()
	draw(24,"Place") 
end -- when you take the fish in hand and you need manage it

sell_tx = "Sell" -- Sell
place_tx = "Place" -- Place
vehMode_tx = "Attach Mode"
exit_vehMode_tx = "Ground Mode"
exit_vehMode_2_tx = "Ground Mode (No Veh Detected)"
high_tx = "Altezza" -- Height
placeOnVeh_tx = place_tx .. " on entity." -- in the vehicle -- Place on entity
fast_tx = "Fast"
cancel_tx = "Cancel"

function manageFishNearSelector_tx(ent) 
	local id = getPoolIdFromEntity(ent)
	if id ~= nil then 
		local qt = pool[id] and pool[id].amount or 1
		local nearDoor = IsADoor(ent) -- GetClosestDoor(2.5)
		if qt == 0 or nearDoor then 
			if deleteMode then
				local lvl = LocalPlayer.state.adminLevel or 0 -- from striano_admin!
				if lvl > 0 then 
					SetEntityAlpha(ent, 50)
					
					local owner = pool[id].owner or "Unk"
					if nearDoor then
						draw(24,"Delete Scene + Door (".. owner ..")", 74,"Duplicate & Place", 73,"Cancel") 
					else
						draw(24,"Delete Scene Prop (".. owner ..")", 74,"Duplicate & Place", 73,"Cancel") 
					end
					if IsDisabledControlJustPressed(0, 74) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						lastItemSelected = pool[id].model
						ExecuteCommand("he2 " .. pool[id].model)
					end
				
					if nearDoor then
						draw(24,"Delete Scene + Door", 73,"Cancel") 
					else
						draw(24,"Delete Scene Prop", 73,"Cancel") 
					end
				end
			else
				if not nearDoor then
					-- NULLA SE NON STO IN DELETE MODE! (meglio cosi lasciamo piu pulito)
				else
					draw(24,"Manage door", 74,"Change Key/Pin")
					if IsDisabledControlJustPressed(0, 74) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						OpenDoorSettings(nearDoor)
					end
					if IsDisabledControlJustPressed(0, 24) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						ExecuteCommand("door")
						return
					end
				end
			end
		else
			if qt > 0 then
				-- Se e' un item con quantity!
				local pos = GetEntityCoords(ent)
				local item_from = exports.striano_inventory:getItemFromModel(pool[id].model)
				if item_from:lower():find("unknown", 1, true) then -- SE PER CASO NEL NOME ESCE UNKNOW ALLORA FACCIO USCIRE IL PALLINO CHE E PIU BELLO!
					item_from = "•"
				end
				DrawText3D(pos.x,pos.y,pos.z+0.3, item_from)
				local isASword = exports.striano_combat:isACombatSword(pool[id].model)
				if isASword then
					draw(24,"Take", 74,"Manage", 73,"Cancel") 
				else
					draw(24,"Take (~y~~h~"..qt.."~h~~w~)", 74,"Manage", 73,"Cancel") 
				end
			end
		end
	else		
		draw(24,"Take", 73,"Cancel")
		if IsDisabledControlJustPressed(0, 24) then 
			modalitaPesci = false	
			-- local isAWeapon, weaponItemName = exports.striano_inventory:IsWeaponProp(ent)
			local isWorldContainer = Entity(ent).state.worldContainer == true
			if isWorldContainer then
				AggrappaPesce(nil, ent, nil, 1) -- va bene qt sempre come 1 perche i contenitori sono sempre singoli!
				-- print("AGGRAPPO UNA CASSA CONTAINER!")
			else
				valdentro = getCorrectGlobalAmount(ent)
				FinePesca()
				Wait(255)
				-- print("AGGRABBO UN OGGETTO SPECIAL CON QT:", valdentro)
				AggrappaPesce(GetEntityModel(ent), ent, nil, valdentro)
				Wait(0)
				SetEntityAsMissionEntity(ent)
				DeleteEntity(ent)
			end
			return 
		end
	end
end -- when you select fish with selector to manage

function GetClosestDoor(maxDist, myCoords)
    maxDist = tonumber(maxDist) or 2.0

    local ped = PlayerPedId()
    if myCoords == nil then myCoords = GetEntityCoords(ped) end
	if eInteractPos ~= nil then myCoords = eInteractPos end

    local closestDoor = nil
    local closestDist = maxDist

    for doorId, door in pairs(DoorsPool or {}) do
        local pos = door.pos1

        if pos then
            local dist = #(myCoords - vector3(pos.x, pos.y, pos.z))

            if dist < closestDist then
                closestDist = dist
                closestDoor = {
                    id = doorId,
                    data = door,
                    distance = dist
                }
            end
        end
    end

    return closestDoor
end

function OpenDoorSettings(doorId)
    if not doorId then return end
    exports['striano_fastmenu']:clearMenu()
    exports['striano_fastmenu']:addMenuItem("Set PIN", function()
        local input = OpenInput("PIN")
		if input and #input > 0 then
			UpdateDoorPin(doorId, input)
			testo3d("Pin changed")
		end
    end)
    exports['striano_fastmenu']:addMenuItem("Remove PIN", function()
        UpdateDoorPin(doorId, "")
		testo3d("Pin removed")
    end)
    exports['striano_fastmenu']:addMenuItem("Set Key ID", function()
        local input = OpenInput("Insert Key Name")
		if input and #input > 0 then
			UpdateDoorKey(doorId, tostring(input))
			testo3d("Key changed")
		end
    end)
    exports['striano_fastmenu']:addMenuItem("Remove Key ID", function()
        UpdateDoorKey(doorId, "")
		testo3d("Key removed")
    end)
    exports['striano_fastmenu']:openMenu()
end

function UpdateDoorPin(doorId, newPin)
    if not doorId then return end
    newPin = tostring(newPin or "")
    TriggerServerEvent("animatedDoors:server:updateDoor", doorId, {
        pin = newPin
    })
end
function UpdateDoorKey(doorId, newKey)
    if not doorId then return end
    newKey = tostring(newKey or "")
    TriggerServerEvent("animatedDoors:server:updateDoor", doorId, {
        chiaveID = newKey
    })
end

function IsADoor(entity,maxDist)
	if not entity or entity == 0 or not DoesEntityExist(entity) then return false end
	maxDist = tonumber(maxDist) or 1.0

	local entCoords = GetEntityCoords(entity)
	local entModel = GetEntityModel(entity)

	for doorId,door in pairs(DoorsPool or {}) do
		if door then
			local sameModel = true
			if door.model ~= nil then
				sameModel = tonumber(door.model) == entModel or GetHashKey(tostring(door.model)) == entModel
			end

			if sameModel then
				local pos1 = door.pos1
				local pos2 = door.pos2

				if pos1 then
					local d1 = #(entCoords - vector3(pos1.x,pos1.y,pos1.z))
					if d1 <= maxDist then
						return {id = doorId,data = door,distance = d1,pos = "pos1"}
					end
				end

				if pos2 then
					local d2 = #(entCoords - vector3(pos2.x,pos2.y,pos2.z))
					if d2 <= maxDist then
						return {id = doorId,data = door,distance = d2,pos = "pos2"}
					end
				end
			end
		end
	end

	return false
end

function manageBoxNearSelector_tx(ent) 
	local id = getPoolIdFromEntity(ent)
	if id ~= nil then 
		local qt = pool[id] and pool[id].amount or 1
		local nearDoor = IsADoor(ent) -- GetClosestDoor(2.5)
		if qt == 0 or nearDoor then 
			if deleteMode then
				local lvl = LocalPlayer.state.adminLevel or 0 -- from striano_admin!
				if lvl > 0 then 
					SetEntityAlpha(ent, 50)
					
					local owner = pool[id].owner or "Unk"
					if nearDoor then
						draw(24,"Delete Scene + Door (".. owner ..")", 74,"Duplicate & Place", 73,"Cancel") 
					else
						draw(24,"Delete Scene Prop (".. owner ..")", 74,"Duplicate & Place", 73,"Cancel") 
					end
					if IsDisabledControlJustPressed(0, 74) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						lastItemSelected = pool[id].model
						ExecuteCommand("he2 " .. pool[id].model)
					end
				
					if nearDoor then
						draw(24,"Delete Scene + Door", 73,"Cancel") 
					else
						draw(24,"Delete Scene Prop", 73,"Cancel") 
					end
				end
			else
				if not nearDoor then
					-- NULLA SE NON STO IN DELETE MODE! (meglio cosi lasciamo piu pulito)
				else
					draw(24,"Manage door", 74,"Change Key/Pin")
					if IsDisabledControlJustPressed(0, 74) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						OpenDoorSettings(nearDoor)
					end
					if IsDisabledControlJustPressed(0, 24) then
						if GhostObj ~= nil then SetEntityAsMissionEntity(GhostObj) DeleteEntity(GhostObj) GhostObj = nil end
						modalitaPesci = false
						ExecuteCommand("pointingstop")
						ExecuteCommand("door")
						return
					end
				end
			end
		else
			if qt > 0 then
				-- Se e' un item con quantity!
				local pos = GetEntityCoords(ent)
				local item_from = exports.striano_inventory:getItemFromModel(pool[id].model)
				DrawText3D(pos.x,pos.y,pos.z+0.3, item_from)
				draw(24,"Take (~y~~h~"..qt.."~h~~w~)", 74,"Manage", 73,"Cancel") 
			end
		end
	else
		local amountGet = Entity(ent).state.qtInv or 1
		draw(24,"Take (~b~~h~"..amountGet.."~h~~w~) [n-p]", 73,"Cancel") 
	end
end -- when u select box whit selector
function whileSelector_tx() draw(22,"Camera", 15,"Up", 73,"Cancel") end -- while selector and nothing is selected (But for sure there is something around selectable waiting)
function whilePlacingSpace_tx() draw(22,"Move ped & Rot camera") end
function whileRedBox_tx() draw(25,place_tx, 45,"Take Inv.") end
function whileFishing_tx() draw(24,"Throw!", 25,"Change pos.", 14,"Move", 73,"Cancel") end
function whileFishing_2_tx() draw(24,"Throw", 73,"Cancel") end
function whileFishing_3_tx() draw(14,"Move", 25,"Rethrow", 73,"Cancel") end

function whileEditorActiveDraw(Coords)
	-- Controllo Casse nelle vicinanze del selector				
	if IsDisabledControlPressed(0, 14) or IsControlPressed(0, 14) then
		altezzaZ = altezzaZ-0.05
		PlaySoundFrontend(-1,'Reset_Prop_Position','DLC_Dmod_Prop_Editor_Sounds',0)
	end
	if IsDisabledControlPressed(0, 15) or IsControlPressed(0, 15) then 
		altezzaZ = altezzaZ+0.05
		PlaySoundFrontend(-1,'Reset_Prop_Position','DLC_Dmod_Prop_Editor_Sounds',0)
	end
	
	local finalZ = 0.0
	if IsPedSwimming(PlayerPedId()) or IsPedSwimmingUnderWater(PlayerPedId()) or Coords.z < 0.0 or IsEntityInWater(PlayerPedId()) then
		finalZ=0.0+altezzaZ
	else
		finalZ = Coords.z+altezzaZ
	end
	
	DrawMarker(28, Coords.x, Coords.y, Coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.05, 0.05, 0.05, 255, 255, 100, 255, false, true, 2, nil, nil, false)
	DrawMarker(28, Coords.x, Coords.y, finalZ, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.07, 0.07, 0.07, 255, 255, 255, 255, false, true, 2, nil, nil, false)
	-- DrawMarker(0, Coords.x, Coords.y, finalZ+0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.05, 0.05, 0.2, 255, 255, 255, 255, true, true, 2, nil, nil, false)
	
	DrawLine(
		Coords.x, Coords.y, Coords.z,
		Coords.x, Coords.y, finalZ,
		255, 255, 255, 255
	)
	
	posizione = vector3(Coords.x,Coords.y,finalZ)
	eInteractPos = posizione
end

function WhileVehMode() -- Please change only after you test and understand good the script project!
	local testo24 = place_tx if inAreaVendita() ~= nil then testo24 = "~h~"..sell_tx end					
	if IsDisabledControlPressed(0, 21) or IsControlPressed(0, 21) then
		if inAreaVendita() ~= nil then
			draw(24,testo24, 22,"Cam", 14,rotate_tx)
		else
			draw(25,vehMode_tx, 24,testo24, 22,"Cam", 14,rotate_tx)
		end
	else
		if inAreaVendita() ~= nil then
			draw(24,testo24, 22,"Cam", 14,high_tx, 21,rotate_tx)
		else
			draw(25,vehMode_tx, 24,testo24, 22,"Cam", 14,height_tx, 21,rotate_tx)
		end
	end
end

FailChance = 1 -- Update this variable in every pack of fish -->
TrashChance = 1 -- Trash means that when you fish you can find something like "shoes", "bag of treasure", "iron" and you can choose the item you get when you store
commandSelector = "selectorFish"
RegisterKeyMapping(commandSelector, 'Selector Fish', 'keyboard', 'LMENU') -- Change with key you need, at moment is alt left!
IDShoeSubM = 67 -- ID of clothes shoes Male
IDShoeSubF = 70 -- ID of clothes shoes Female
varBackSUB = 250 -- When you get back you sub item if you exit from water too early.

customCrate = true -- Set this to nil if you dont like the custom model that you can change as you need! Please do not change the size in blender, only texture and shape!
customCrateModel = "v_ind_cf_crate1_sod" -- Set customCrate to true if you want change the model of the crate, please change this only if you know what you are doing!

WoodPrices = {
	{ m="bzzz_prop_tablesaw_wood", price=math.random(15,30) },
	{ m="bzzz_prop_tablesaw_wood2", price=math.random(45,75) },
}

SellWoodCoords = {
	{ pos=vector3(5141.9,-5171.373,1.109), range=5.0 }
}

-- SELL FISH AREA!
MarketCoords = { -- This are the areas of market_fish, where player can sell crate with fish inside automatically! (Price random server side!)
	{ pos=vector3(3565.327,7151.463,9.303) },
}

function inAreaVendita(entity)
	if not entity or entity == 0 or not DoesEntityExist(entity) then entity = PlayerPedId() end
	local entityCoords = GetEntityCoords(entity)
	for _, area in ipairs(MarketCoords) do
		if #(entityCoords - area.pos) <= 10.0 then
			return true
		end
	end
	return nil
end

TabTrash = { -- Insert there the trash you want, be sure it's a physical object or you can't throw!
	{ item="plasticdirty",label="Plastic",m="prop_cs_bin_01_lid",chance=1 }, -- chance = How many chance this item have to be choosed by random seed!
	{ item="fabric",label="Cloths",m="v_res_tre_cushnscuzd",chance=1 },
	{ item="plasticdirty",label="Pneu",m="prop_dock_ropetyre3",chance=1 },
	{ item="irondirty",label="Old Iron",m="ng_proc_rebar_01a",chance=1 },
	{ item="fabric",label="Cloths",m="v_res_tre_cushnscuzb",chance=1 },
	{ item="plasticdirty",label="Plastic",m="prop_cs_rub_binbag_01",chance=1 },
	{ item="fabric",label="CLoths",m="ex_office_swag_furcoats3",chance=1 },
	{ item="plasticdirty",label="Plastic",m="prop_rub_tyre_dam2",chance=1 },
	{ item="plasticdirty",label="Plastic",m="prop_rub_tyre_dam3",chance=1 },
	{ item="iron",label="Iron",m="prop_ld_rubble_04",chance=1 },
	{ item="plasticdirty",label="Plastic",m="ng_proc_binbag_02a",chance=1 },
	{ item="plasticdirty",label="Plastic",m="ng_proc_litter_plasbot1",chance=1 },
	{ item="plasticdirty",label="Chair",m="v_corp_sidechairfd",chance=1 },
	{ item="plasticdirty",label="Monitor",m="prop_rub_monitor",chance=1 },
	{ item="plasticdirty",label="Plastic",m="v_ind_cs_bottle",chance=1 },
	{ item="wooddirty",label="Dirty Wood",m="prop_rub_planks_04",chance=1 },
	{ item="plasticdirty",label="Plastic",m="ng_proc_litter_plasbot2",chance=1 },
	{ item=nil,label="Shoe",m="v_res_fa_boot01r",chance=1 },
	-- PLEASE SET item=nil IF YOU DONT WANT PLAYER GET ITEM IN INVENTORY WHEN FISHING A TRASH!
}

function IsAFish(modello)
	for _, validM in ipairs(fishValidList) do
		if modello == GetHashKey(validM) or modello == validM then
			return true
		end
	end
	return false
end
 
function GetPackBack(nome)
	local TabFish = {}
	if nome == "PackBase" then -- The name of the pack, you can create as many pack you need an put in fish AREA!
		TabFish = { -- Example if you want an item back when you try to store in inventory: item=nil
			{ item=nil,label="Spigola",m="striano_fishing_1",chance=50 }, -- chance = How many chance this fish have to be choosed by random seed!
			{ item=nil,label="Palamita",m="striano_fishing_2",chance=50 },
			{ item=nil,label="Rombo",m="striano_fishing_3",chance=50 },
			{ item=nil,label="Triglia",m="striano_fishing_4",chance=50 },
			{ item=nil,label="Sarago",m="striano_fishing_5",chance=50 },
			{ item=nil,label="Dentice",m="striano_fishing_6",chance=50 },
			{ item=nil,label="Nasello",m="striano_fishing_7",chance=50 },
			{ item=nil,label="Castagno",m="striano_fishing_8",chance=50 },
			{ item=nil,label="Orata",m="striano_fishing_9",chance=50 },
			{ item=nil,label="Gallinella",m="striano_fishing_10",chance=50 },
			{ item=nil,label="Ombrina",m="striano_fishing_11",chance=50 },
			{ item=nil,label="Sogliola",m="striano_fishing_12",chance=50 },
			{ item=nil,label="Merluzzo",m="striano_fishing_13",chance=50 },
			{ item=nil,label="Scorfano",m="striano_fishing_15",chance=50 },
			{ item=nil,label="Spada",m="striano_fishing_16",chance=50 },
			{ item=nil,label="Cernia",m="striano_fishing_17",chance=50 },
			{ item=nil,label="Sciabola",m="striano_fishing_18",chance=50 },
			-- PESCI SPECIAL
			{ item=nil,label="Spigola",m="striano_fishing_gold_1",chance=1 }, -- chance = How many chance this fish have to be choosed by random seed!
			{ item=nil,label="Palamita",m="striano_fishing_gold_2",chance=1 },
			{ item=nil,label="Rombo",m="striano_fishing_gold_3",chance=1 },
			{ item=nil,label="Triglia",m="striano_fishing_gold_4",chance=1 },
			{ item=nil,label="Sarago",m="striano_fishing_gold_5",chance=1 },
			{ item=nil,label="Dentice",m="striano_fishing_gold_6",chance=1 },
			{ item=nil,label="Nasello",m="striano_fishing_gold_7",chance=1 },
			{ item=nil,label="Castagno",m="striano_fishing_gold_8",chance=1 },
			{ item=nil,label="Orata",m="striano_fishing_gold_9",chance=1 },
			{ item=nil,label="Gallinella",m="striano_fishing_gold_10",chance=1 },
			{ item=nil,label="Ombrina",m="striano_fishing_gold_11",chance=1 },
			{ item=nil,label="Sogliola",m="striano_fishing_gold_12",chance=1 },
			{ item=nil,label="Merluzzo",m="striano_fishing_gold_13",chance=1 },
			{ item=nil,label="Scorfano",m="striano_fishing_gold_15",chance=1 },
			{ item=nil,label="Spada",m="striano_fishing_gold_16",chance=1 },
			{ item=nil,label="Cernia",m="striano_fishing_gold_17",chance=1 },
			{ item=nil,label="Sciabola",m="striano_fishing_gold_18",chance=1 },		
		}
		FailChance = 2
		TrashChance = 2
	elseif nome == "PackCayoTrash" then
		TabFish = {
			{ item=nil,label="Ombrina",m="striano_fishing_11",chance=20 },
			{ item=nil,label="Sogliola",m="striano_fishing_12",chance=20 },
			{ item=nil,label="Merluzzo",m="striano_fishing_13",chance=20 },
			{ item=nil,label="Scorfano",m="striano_fishing_15",chance=20 },
			{ item=nil,label="Spada",m="striano_fishing_16",chance=20 },
			{ item=nil,label="Cernia",m="striano_fishing_17",chance=20 },
			{ item=nil,label="Sciabola",m="striano_fishing_18",chance=20 },
			-- PESCI SPECIAL
			{ item=nil,label="Ombrina",m="striano_fishing_gold_11",chance=5 },
			{ item=nil,label="Sogliola",m="striano_fishing_gold_12",chance=5 },
			{ item=nil,label="Merluzzo",m="striano_fishing_gold_13",chance=5 },
			{ item=nil,label="Scorfano",m="striano_fishing_gold_15",chance=5 },
			{ item=nil,label="Spada",m="striano_fishing_gold_16",chance=5 },
			{ item=nil,label="Cernia",m="striano_fishing_gold_17",chance=5 },
			{ item=nil,label="Sciabola",m="striano_fishing_gold_18",chance=5 },
		}
		FailChance = 1 -- Means that on this pack of fish there is only one chance to fail!
		TrashChance = 10 -- There are a lot of chance to take trash on all coords that have PackCayo setted!
	elseif nome == "PackSpecial" then
		TabFish = {
			{ item=nil,label="Ombrina",m="striano_fishing_11",chance=1 },
			{ item=nil,label="Sogliola",m="striano_fishing_12",chance=1 },
			{ item=nil,label="Merluzzo",m="striano_fishing_13",chance=1 },
			{ item=nil,label="Scorfano",m="striano_fishing_15",chance=1 },
			{ item=nil,label="Spada",m="striano_fishing_16",chance=1 },
			{ item=nil,label="Cernia",m="striano_fishing_17",chance=1 },
			{ item=nil,label="Sciabola",m="striano_fishing_18",chance=1 },
			-- PESCI SPECIAL
			{ item=nil,label="Spigola",m="striano_fishing_gold_1",chance=1 }, -- chance = How many chance this fish have to be choosed by random seed!
			{ item=nil,label="Palamita",m="striano_fishing_gold_2",chance=1 },
			{ item=nil,label="Rombo",m="striano_fishing_gold_3",chance=1 },
			{ item=nil,label="Triglia",m="striano_fishing_gold_4",chance=1 },
			{ item=nil,label="Sarago",m="striano_fishing_gold_5",chance=1 },
			{ item=nil,label="Dentice",m="striano_fishing_gold_6",chance=1 },
			{ item=nil,label="Nasello",m="striano_fishing_gold_7",chance=1 },
			{ item=nil,label="Castagno",m="striano_fishing_gold_8",chance=1 },
			{ item=nil,label="Orata",m="striano_fishing_gold_9",chance=1 },
			{ item=nil,label="Gallinella",m="striano_fishing_gold_10",chance=1 },
			{ item=nil,label="Ombrina",m="striano_fishing_gold_11",chance=1 },
			{ item=nil,label="Sogliola",m="striano_fishing_gold_12",chance=1 },
			{ item=nil,label="Merluzzo",m="striano_fishing_gold_13",chance=1 },
			{ item=nil,label="Scorfano",m="striano_fishing_gold_15",chance=1 },
			{ item=nil,label="Spada",m="striano_fishing_gold_16",chance=1 },
			{ item=nil,label="Cernia",m="striano_fishing_gold_17",chance=1 },
			{ item=nil,label="Sciabola",m="striano_fishing_gold_18",chance=1 },	
		}
		FailChance = 2
		TrashChance = 2
	elseif nome == "PackCayoBasic" then
		TabFish = {
			{ item=nil,label="Spigola",m="striano_fishing_1",chance=1 },
			{ item=nil,label="Palamita",m="striano_fishing_2",chance=1 },
			{ item=nil,label="Rombo",m="striano_fishing_3",chance=1 },
			{ item=nil,label="Triglia",m="striano_fishing_4",chance=1 },
			{ item=nil,label="Sarago",m="striano_fishing_5",chance=1 },
		}
		FailChance = 1
		TrashChance = 1
	elseif nome == "PackCayo" then
		TabFish = {
			{ item=nil,label="Ombrina",m="striano_fishing_11",chance=1 },
			{ item=nil,label="Sogliola",m="striano_fishing_12",chance=1 },
			{ item=nil,label="Merluzzo",m="striano_fishing_13",chance=1 },
			{ item=nil,label="Scorfano",m="striano_fishing_15",chance=1 },
			{ item=nil,label="Spada",m="striano_fishing_16",chance=1 },
			{ item=nil,label="Cernia",m="striano_fishing_17",chance=1 },
			{ item=nil,label="Sciabola",m="striano_fishing_18",chance=1 },
		}
		FailChance = 2
		TrashChance = 2
	elseif nome == "PackBaseHandFish" then 
		TabFish = {
			{ item=nil,label="Ombrina",m="striano_fishing_11",chance=1 },
			{ item=nil,label="Sogliola",m="striano_fishing_12",chance=1 },
			{ item=nil,label="Merluzzo",m="striano_fishing_13",chance=1 },
			{ item=nil,label="Scorfano",m="striano_fishing_15",chance=1 },
			{ item=nil,label="Spada",m="striano_fishing_16",chance=1 },
			{ item=nil,label="Cernia",m="striano_fishing_17",chance=1 },
			{ item=nil,label="Sciabola",m="striano_fishing_18",chance=1 },
			{ item=nil,label="Spigola",m="striano_fishing_gold_1",chance=1 }, 
		}
		FailChance = 2
		TrashChance = 2
	end
	return TabFish
end

function HaveTheRedBox()
	local havethebox = true
	return havethebox
end

function DelRedBox()
	TriggerServerEvent("inv3d:removeItemByName", "player", "redbox", 1)
	-- print("RED BOX DELETED FROM INV.")
end

-- RegisterCommand("testDelRedBox", function() -- FUNZIONA
	-- DelRedBox()
-- end)

function GetBackCrate(modello)
	if modello == GetHashKey("prop_paint_stepl01b") or modello == GetHashKey("prop_paint_stepl01") then 
		TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "ladder", 1)
	else
		TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "redbox", 1)
	end
end

function GetItemFish(itemName, qt)
	TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", itemName, qt)
end

function PescaCheck()
	-- Here we check if the player have the worms to fish?
	return true -- Like this you can even fish
end

function AfterTakeTheFish()
	-- Remove the worm from inventory? Optional!
end

function CanHandFish()
	if GetResourceState("striano_core") ~= "started" then return false end -- REMOVE THIS LINE PLEASE! (This is only a check from my test server i need)
	if not exports.striano_combat:sfoggiate() and not IsPedArmed(PlayerPedId(), 1) and not IsPedArmed(PlayerPedId(), 2) and not IsPedArmed(PlayerPedId(), 4) and not IsControlPressed(0, 25) and not IsControlPressed(0, 24) and not exports.striano_combat:inCombat() and (exports.striano_editor:crouchato() or exports.striano_editor:stealth()) and not IsPedSwimming(PlayerPedId()) then
		return true
	else
		return false
	end
end

function DelTutaSub()
	TriggerServerEvent('cavallo:toglisella', 'scubagear', 1) -- CHANGE THIS WITH YOUR GIVE ITEM INVENTORY SYSTEM!
end

function GiveFishItem(nameItem)
	-- TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player",  nameItem, 1)
end

CreateThread(function()
	for _, info in pairs(FishermanArea) do 
		local blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
		SetBlipSprite(blip, 68)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.55)
		SetBlipColour(blip, 0) 
		SetBlipAsShortRange(blip, true)
		-- SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
		-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
		BeginTextCommandSetBlipName("STRING")
		local textOfBlip = "Fisherman" -- "("..info.grandezzaArea.."m)"
		AddTextComponentString(textOfBlip)
		EndTextCommandSetBlipName(blip)
	end
	
	for _, info in pairs(MarketCoords) do 
		local blip = AddBlipForCoord(info.pos.x, info.pos.y, info.pos.z)
		SetBlipSprite(blip, 478)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.55)
		SetBlipColour(blip, 0) 
		SetBlipAsShortRange(blip, true)
		-- SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
		-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
		BeginTextCommandSetBlipName("STRING")
		local textOfBlip = "Sell Fish" -- "("..info.grandezzaArea.."m)"
		AddTextComponentString(textOfBlip)
		EndTextCommandSetBlipName(blip)
	end
	
	--[[
	for _, info in pairs(StoneArea) do 
		local blip = AddBlipForCoord(info.pos.x, info.pos.y, info.pos.z)
		SetBlipSprite(blip, 124)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.35)
		SetBlipColour(blip, 0) 
		SetBlipAsShortRange(blip, true)
		-- SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
		-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
		BeginTextCommandSetBlipName("STRING")
		local textOfBlip = "Minerale" -- "("..info.grandezzaArea.."m)"
		AddTextComponentString(textOfBlip)
		EndTextCommandSetBlipName(blip)
	end
	]]
end)

VehicleAllowed = {
	--[[
	`rumpo`,`polnspeedo`,`burrito3`,`burrito3`,`gburrito`,`gburrito2`,`sandking`,`sandking2`,
	`bodhi2`,`slamvan`,`slamvan3`,`kamacho`,`speedo`,`speedo4`,`tug`,
	`suntrap`,`squalo`,`dloader`,`bison`,`kalahari`,`dodo`,`ratbike`,`cheburek`,`issi3`,
	`picador`,`rebel2`,`rebel`,`bobcatxl`,`ratloader2`,`guardian`,`emperor2`,`caddy3`,`yosemite`,`youga2`, 
	`youga2`,`contender`,`mesa`,`moonbeam`,`regina`,`fagaloa`,`rebla`,`surfer2`,
	`riata`,`ingot`,`mesa3`,`minivan`,`mule`,`mule2`,`policet`,`fusilade`,`ratbike`
	]]
}

function NoFishAndBox()
	-- if exports.striano_core:gettutorial() then 
		-- notify("Non ci sono oggetti selezionabili nelle vicinanze.")
	-- end
	-- This is an error message when player try to enter in selector fish but thers no fish and box around. If you use target with Alt is better no message here like now.
end

function InfoPosizionaCassa()
	-- notify("Choose where to drop the item by moving the mouse, look towards a vehicle to attach it on top.")
end

function PepiteFunc()
	local peprand = math.random(1,2)
	if peprand == 1 then GiveFishItem("pepita") end
end

function TooNearestFish()
	-- notify("You are trying to place an object too close to another one that is already there!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function TooNearestCrate()
	notify("You are trying to place a base object too close to another one that is already there!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function FocusBox()
	-- notify("You don't have focus on the object you're editing, move closer with the mouse to recover it.")
	-- testo3d("Re-focus")
end

function TooFarCassa()
	notify("You are not placing the object into the container!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function TooFarPlayer()
	notify("Too much distance from the player!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoAreaDetected()
	notify("You are not near a fishing area!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function BusyFunctionForFish()
	notify("Operation not available while carrying a crate!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function BusyFishLet()
	notify("Operation not available while managing another fish!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function StillGrab()
	notify("You're still holding something to select something else!")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoMarketFound()
	notify("You are not near a fish market to sell them.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function InfoMarketPesci()
	notify("You have been detected in a Market Area, leave the required crates to sell them!")
end

function NoCrateHold()
	notify("You're not carrying a crate of fish.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoAreaSellFish()
	notify("You're not at the fish market to sell a crate.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function StillHatchet()
	notify("You are already in lumberjack mode.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoEarnDect()
	notify("No profit detected for this sale.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function EarnFromFishSell(money)
	-- HERE I GET THE "money" var
	TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player",  "moneta", money)
end

-- RegisterCommand("fisherman", function(source, args, rawCommand)
	-- TriggerEvent("IniziaPesca")
-- end)
-- RegisterCommand("redbox", function(source, args, rawCommand)
	-- TriggerEvent("CassaRossaFunc") 
-- end)

function CantStore()
	notify("You cannot store this resource in your inventory, manage it by placing it.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function TakeTheFishHandmade()
	if not possoFareSelector then return end
	local tabBuf = GetPackBack("PackBaseHandFish")
	InfoLastPesce = tabBuf[math.random(1,#tabBuf)]
	AggrappaPesce(InfoLastPesce.m, nil, InfoLastPesce.item, 1)
end

local UltimeScarpe = {}
RegisterNetEvent('scarpesub')
AddEventHandler('scarpesub', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
		if #UltimeScarpe == 0 then 
			UltimeScarpe[1] = skin.shoes_1
			UltimeScarpe[2] = skin.shoes_2
			if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
				SetPedPropIndex(PlayerPedId(), 0, 0, IDShoeSubM, false)
				TriggerEvent('skinchanger:change', "shoes_2", 0)
				TriggerEvent('skinchanger:change', "shoes_1", IDShoeSubM)
			else
				SetPedPropIndex(PlayerPedId(), 0, 0, IDShoeSubF, false)
				TriggerEvent('skinchanger:change', "shoes_2", 0)
				TriggerEvent('skinchanger:change', "shoes_1", IDShoeSubF)
			end
		end
	end)
end)
RegisterNetEvent('delscarpesub')
AddEventHandler('delscarpesub', function()
	if #UltimeScarpe == 0 then else
		SetPedPropIndex(PlayerPedId(), 0, UltimeScarpe[1], UltimeScarpe[2], false)
		TriggerEvent('skinchanger:change', "shoes_1", UltimeScarpe[1])
		TriggerEvent('skinchanger:change', "shoes_2", UltimeScarpe[2])
		UltimeScarpe = {}
	end
end)

function onHandFishEnd()
	ExecuteCommand("vaiStealth") -- Remove this command line if you dont have!
end

function LootMarino()
	local LootSub = { -- THE LIST OF THE LOOT MARINE, ADD AS MANY ITEM YOU NEED!
		{i="goldbar",m=1,mm=2},
		{i="fabric",m=1,mm=3},
		{i="iron",m=1,mm=3},
	}
	local randSub = math.random(1,#LootSub)
	local v = LootSub[randSub]
	-- TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", v.i, math.random(v.m,v.mm)) -- HEY CHANGE WITH YOUR OWN INVENTORY GIVE ITEM SYSTEM!!!
end

DistanzaDive = 50
ProfonditaPerDive = 5
MassimoDive = 3

function MsgInfoDive()
	-- notify("Depth surveyed to search for new resources on the seabed.") 
end

function canTakeLootMarine()
	-- If you want make some check to take marine loot, useful for example if you want check if player have some kind of item to do it.
	return true
end

maxDistObj = 2.5 -- CHANGE THIS IF YOU WANT PLAYER CAN INTERACT WITH FISHES WITH MORE DISTANCE, FOR RP 1.8 IS OK!
function TooFarObject()
	testo3d("Too far.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoMiscelaMex()
	testo3d("No fuel.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoObjectFound()
	notify("No collectible objects detected.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

--[[
RegisterCommand("addtree", function(source, args, rawCommand) -- DISABLE IT IN PUBLIC PROJECT MODE OR PLAYERS CAN SPAWN TREE! (JUST FOR TEST PURPOSE!)
	local forward   = GetEntityForwardVector(PlayerPedId())
	local x, y, z   = table.unpack(GetEntityCoords(PlayerPedId()) + forward * 1.5)
	addTree(vector3(x,y,z))
end)
]]

exports('addLumbTree', function(coords) addTree(coords) end) -- USE THIS EXPORTS IF YOU WANT CREATE TREE FROM OTHER SCRIPTS (like manually every tree coords)! exports.striano_editor:addLumbTree(vector3(0.0,0.0,0.0))

exports('infishmode', function()
	return modalitaPesci
end)

function YouAreInHatchet()
	notify("You must exit wood-splitting mode to select objects..")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

needWaitTimer = 5 -- (in MIN) How many minutes need to wait a zone of tree to respawn again when it's complete?

--[[
CreateThread(function()
	for _, info in pairs(TreeArea) do 
		local blip = AddBlipForCoord(info.pos.x, info.pos.y, info.pos.z)
		SetBlipSprite(blip, 77)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.4)
		SetBlipColour(blip, 0)
		SetBlipAsShortRange(blip, true)
		-- SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
		-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
		BeginTextCommandSetBlipName("STRING")
		local textOfBlip = "Taglialegna" -- "("..info.grandezzaArea.."m)"
		AddTextComponentString(textOfBlip)
		EndTextCommandSetBlipName(blip)
	end
	Wait(1000)
	for _, info in pairs(BananaTreeArea) do 
		local blip = AddBlipForCoord(info.pos.x, info.pos.y, info.pos.z)
		SetBlipSprite(blip, 106)
		SetBlipDisplay(blip, 4)
		SetBlipScale(blip, 0.4)
		SetBlipColour(blip, 0)
		SetBlipAsShortRange(blip, true)
		-- SetBlipHiddenOnLegend(blip, true) -- this will make your blip not clickable.
		-- If you want clickable comment SetBlipHiddenOnLegend and enable the code below:
		BeginTextCommandSetBlipName("STRING")
		local textOfBlip = "Piante Banana" -- "("..info.grandezzaArea.."m)"
		AddTextComponentString(textOfBlip)
		EndTextCommandSetBlipName(blip)
		-- print("Piante Banane icone.")
	end
end)
]]

function CanCommandSelector()
	if not exports.striano_inventory.isopen() and exports.striano_inventory:secchio() == nil then return true else return false end -- not exports.striano_phone:phoneaperto()
	-- return true
end

function TooNearBox()
	notify("You are trying to place the object too close to an existing one.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function OnIndossaSub()
	exports.striano_inventory:CloseInventory()
end

function MustBeWater()
	notify('You must be in the water for this operation.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
	TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "scubagear", 1)
end

function NoVehicleDetected()
	notify('No entity detected to attach this object.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NoValidItemSell()
	notify('There are no valid items for sale at this location.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

--[[
-- TESTING COMMANDS
RegisterCommand("aggrappapesce", function(source, args, rawCommand)
	if not possoFareSelector then return end
	local tabBuf = GetPackBack("PackBase")
	InfoLastPesce = tabBuf[math.random(1,#tabBuf)]
	AggrappaPesce(InfoLastPesce.m, nil, InfoLastPesce.item, 1)
end)

RegisterCommand("aggrappalegno", function(source, args, rawCommand)
	if not possoFareSelector then return end
	AggrappaPesce("bzzz_prop_tablesaw_wood", nil, "woodirty", 1)
end)

RegisterCommand("aggrappapietra", function(source, args, rawCommand) -- Aggrappa pietra
	if not possoFareSelector then return end
	AggrappaPesce(GetEntityModel("bzzz_prop_mine_stone_b"), nil, "pietra", 1)
end)
]]

-- GENERA LOOT DEI PESCI IN BASE AL RATE CHE VIENE INSERITO!
function GeneraLoot(tabellaBase)
	local choosetbl = {}
	-- math.randomseed(os.time())
	local randidtrash = math.random(1,#TabTrash)
	for i=1, #tabellaBase, 1 do 
		for k=1, math.floor(tabellaBase[i].chance), 1 do
			table.insert(choosetbl, tabellaBase[i])
		end
	end
	Wait(25)
	if TrashChance > 0 then
		for k=1, TrashChance, 1 do
			table.insert(choosetbl, TabTrash[randidtrash])
		end
		-- print("Trash inserito " ..  TrashChance)
	end
	Wait(25)
	if FailChance > 0 then
		for k=1, FailChance, 1 do
			table.insert(choosetbl, { item="fail",label="Fail",m=nil,chance=1 } )
		end
	end
	Wait(25)
	local randid = math.random(1, #choosetbl)
	-- print("Ottenuta tabella finale con " .. #choosetbl .. " elementi!")
	return choosetbl[randid]
end

function VehicleLocked()
	notify('The vehicle is locked, operation blocked.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function DisableKeysWhileFish()
	-- INSERIRE TUTTI I TASTI DA DISABILITARE DURANTE LA PESCA O TRASPORTO DI CASSA/Pesce
	-- DisableControlAction(0, 0)
	-- DisableControlAction(0, 1)
	DisableControlAction(0, 22)
	DisableControlAction(0, 24)
	DisableControlAction(0, 25)
	DisableControlAction(0, 73)
	DisableControlAction(0, 29)	-- Questo è puntare il dito
	DisableControlAction(0, 37) -- Inventory TAB
	DisableControlAction(0, 289) -- Invetory F2
	DisableKeyBase()
	-- INSERIRE PER ESEMPIO IL TASTO PER INVENTARIO O ALTRI TASTI CHE POSSONO ROMPERE LA MINGHIA ALLA PESCA!
end

function BusyObjectMex()
	notify('This item is already in use.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function BusyCrateMex()
	notify('This box is already being transported by someone.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function TooMuchFishAreaMex()
	notify('There are already too many objects close together in this area. (' .. MAXFISHZONA .. ')')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

RegisterCommand("sbloccaCassa", function(source, args, rawCommand) -- Da inserire che possono farlo solo gli admin.
	SbloccaCassaOccupataVicina() -- Questa funziona tutte le casse nel raggio di 2 metri dal giocatore, utile nel caso per esempio chi stava interagendo con la cassa crasha e rimane bloccata!
end)

MAXFISHZONA = 13 -- INTESO CHE IL MASSIMO DI PESCI NEL RAGGIO DI UN METRO E' 13!
possoFareSelector = true

function OutLockedAreaHandFish()
	if #(GetEntityCoords(PlayerPedId())-vector3(5056.666,-5772.324,13.67)) > 30.0 then return true else return false end
end

distCrateZona = 7.5
MAXCRATEZONA = 10 -- INTESO CHE IL MASSIMO DI CASSE NEL RAGGIO DI 30.0 (distCrateZona) METRI E' 30!
function TooMuchCrateAreaMex()
	notify('There are already too many containers in this area. ('..MAXCRATEZONA..")")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

distCrateAttZona = 8.0
MAXCRATEATTZONA = 8 -- INTESO CHE IL MASSIMO DI CASSE (MAXCRATEATTZONA) NEL RAGGIO DI 30.0 (distCrateAttZona) METRI E' 30!
function TooMuchCrateAttachedAreaMex()
	notify('There are already too many containers hooked up in this area. ('..MAXCRATEATTZONA..")")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

distMaxObjZona = 75.0
MAXOBJZONA = 200 -- INTESO CHE IL MASSIMO DI OGGETTI TOTALI NEL RAGGIO DI 50.0 (distMaxObjZona) METRI E' 50! Serve per non spawnare troppi pesci!
function TooMuchObjectsAreaMex()
	notify('There are already too many objects in this area globally. ('..MAXOBJZONA..")")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function onUseRod() -- SE SERVE STARTARE QUALCOSA QUANDO INIZIA LA PESCA
end

function ToccoVeicoloMex()
	notify("The item must be on top to place on the vehicle.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function fastMex(on)
	if on then notify("Quick scroll wheel active.") else notify("Quick scroll wheel off.") end
	PlaySoundFrontend(-1,'ERROR','HUD_FRONTEND_CLOTHESSHOP_SOUNDSET',1)
end

function VehicleLockedFish()
	notify('The vehicle where this item is located is locked, operation blocked.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function NeedTouchVehicle()
	notify('To attach an object to the vehicle you must touch it.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function FishRecovMex()
	notify("A thrown item is now selectable, but will be deleted if you move too far away. Place it in a chest or relocate it to keep it..")
	PlaySoundFrontend(-1,'ERROR','HUD_FRONTEND_CLOTHESSHOP_SOUNDSET',1)
end

function NoPlayerAround()
	notify("No players near to do this.")
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

-- function DelTooFarMex()
	-- notify('There must be no people near the object for this operation..')
	-- PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
-- end

function attivaPersistenza(ent)
	if DoesEntityExist(ent) then
		MissionEntity(ent) -- INSERITO MA NON CREDO CHE SIA IL FIX FINALE DELLA SPARIZIONE DEI PESCI!
		-- INSERIRE UNA FUNZIONE CHE RENDE L'OGGETTO PERSISTENTE ANCHE SUL CORE? ESEMPIO: 
		-- exports.qbx_core:EnablePersistence(ent)
		SetEntityAsMissionEntity(ent, true, true) -- Questo in realtà lo faccio già, lo lascio come esempo e dato che sto facendo dei test con 2 true, prima era senza args. Non so se cambi qualcosa ancora.
	end
end

function TableSecurMsg()
	notify('For safety reasons, also hold down SHIFT to start moving a table.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function MissionEntity(entity)
	if entity ~= nil then 
		if DoesEntityExist(entity) then 
			CreateThread(function()
				Wait(150)
				local netId = NetworkGetNetworkIdFromEntity(entity)
				SetNetworkIdCanMigrate(netId, false)
			end)
		end
	end
end

function StoPerCrearePesce(hashkey) -- Viene richiamata PRIMA che il pesce viene effettivamente creato, utile per bloccare eventuali cheater! (LEO ha creato un controllo lato server per bloccarli!)
end

function HoRimossoIlPesce(ent) -- Questo viene richiamato tutte le volte che un pesce viene eliminato dalla memoria!
end

function MissPropMsg()
	notify('Objects are poorly positioned, something is missing, or there are too many elements to start a production.')
	PlaySoundFrontend(-1,'Pin_Bad','DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS',1)
end

function StartProd()
	notify('Production is ready, stay close to the table to continue.')
	PlaySoundFrontend(-1,'GOLF_HUD_SCORECARD_MASTER','0',1)
end

function AdditionalEnt()
	notify('Equal objects successfully joined.')
	PlaySoundFrontend(-1,'GOLF_HUD_SCORECARD_MASTER','0',1)
end

function NotEnoghEnt()
	notify('There are not enough items to proceed.')
	PlaySoundFrontend(-1,'GOLF_HUD_SCORECARD_MASTER','0',1)
end

function GetBackLadder()
	-- TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "scalaferro", 1)
end

function JerrycanInventory()
	-- TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player",  "weapon_petrolcan", 1)
end

function GetBackShovel()
	-- TriggerServerEvent('inv3d:giveItem', GetPlayerServerId(PlayerId()), "player", "pala", 1)
end

RegisterCommand("door", function()
    local ped = PlayerPedId()
    local myCoords = GetEntityCoords(ped)

    -- local closestDoor = nil
    -- local closestDist = 2.5
    -- local closestPos = nil

    -- for doorId, door in pairs(DoorsPool or {}) do
        -- local pos = door.pos1

        -- if pos then
            -- local dist = #(myCoords - vector3(pos.x, pos.y, pos.z))

            -- if dist < closestDist then
                -- closestDist = dist
                -- closestDoor = doorId
                -- closestPos = vector3(pos.x, pos.y, pos.z)
            -- end
        -- end
    -- end
	
	local nearDoor = GetClosestDoor(5.5)										
	if nearDoor then
		local closestDoor = nearDoor.id
		local door = DoorsPool[closestDoor]
		if not door then return end

		local function toggle()
			TriggerServerEvent("animatedDoors:server:toggleDoor", closestDoor)
		end

		-- If key is set, key has priority
		if DoorHasValue(door.chiaveID) then
			local keysHeld = LocalPlayer.state.keysHeld or {}
			local keyId = tostring(door.chiaveID or "")
			local keyNum = tonumber(door.chiaveID)

			if keyId ~= "" and not keysHeld[keyId] and not keysHeld[keyNum] then
				testo3d("Missing key~n~~y~"..keyNum)
				faiAnim("rcmnigel1b", "lockeddoor_tryopen", 3250, 1)
				return
			end
			toggle()
			return
		end

		-- If no key is set but PIN exists, ask PIN
		if DoorHasValue(door.pin) then
			local input = OpenInput("PIN")
			if input == tostring(door.pin) then
				toggle()
			else
				testo3d("Wrong PIN")
			end
			return
		end

		-- Free door
		faiAnim("rcmnigel1b", "lockeddoor_tryopen", 1250, 1)
		Wait(750)
		toggle()
	else
		print("No nearby door")
	end
end)

RegisterCommand("doorstate", function(source, args)
	local lvl = LocalPlayer.state.adminLevel or 0 -- from striano_admin!
	if lvl == 0 then return end 
	local stateArg = tonumber(args[1])
    if stateArg ~= 0 and stateArg ~= 1 then
        print("/doorstate [1=open | 0=closed]")
        return
    end
    local ped = PlayerPedId()
    local myCoords = GetEntityCoords(ped)
    local closestDoor = nil
    local closestDist = 5.5
    for doorId, door in pairs(DoorsPool or {}) do
        local pos = door.pos1
        if pos then
            local dist = #(myCoords - vector3(pos.x, pos.y, pos.z))
            if dist < closestDist then
                closestDist = dist
                closestDoor = doorId
            end
        end
    end
    if not closestDoor then
        print("No nearby door")
        return
    end
    local state = stateArg == 1 and "open" or "closed"
    TriggerServerEvent("animatedDoors:server:setState", closestDoor, state)
	faiAnim("gestures@f@standing@casual", "gesture_hand_down", 750, 49)
    -- print("Door " .. closestDoor .. " -> " .. state)
end)

-- SHOULD BE ONLY FOR ADMIN!
RegisterCommand("doorslist", function()
	local lvl = LocalPlayer.state.adminLevel or 0 -- from striano_admin!
	if lvl > 0 then OpenDoorsListMenu() end
end)

RegisterCommand("removedoor", function()
    local ped = PlayerPedId()
    local myCoords = GetEntityCoords(ped)
	if eInteractPos ~= nil then myCoords = eInteractPos end

    local closestDoor = nil
    local closestDist = 2.5
    local closestPos = nil

    for doorId, door in pairs(DoorsPool or {}) do
        local pos = door.pos1

        if pos then
            local doorPos = vector3(pos.x, pos.y, pos.z)
            local dist = #(myCoords - doorPos)

            if dist < closestDist then
                closestDist = dist
                closestDoor = doorId
                closestPos = doorPos
            end
        end
    end

    if not closestDoor then
        print("^1[animatedDoors]^7 No nearby door")
        return
    end

    print("^3[animatedDoors]^7 deleting closest door:", tostring(closestDoor), "dist:", string.format("%.2f", closestDist))
	testo3d("Door deleted")
	PlaySoundFrontend(-1,'Hit_1','LONG_PLAYER_SWITCH_SOUNDS',0)
    if closestPos then
        makeEntityFacePos(ped, closestPos)
        ExecuteCommand("e pointdown")
    end

    TriggerServerEvent("animatedDoors:server:deleteDoor", closestDoor)
end)

RegisterCommand("getpin", function() ExecuteCommand("doorpin") end)
RegisterCommand("doorpin", function()
	local lvl = LocalPlayer.state.adminLevel or 0
	if lvl > 0 then -- ONLY ADMIN CAN GET ALL PIN DOORS!
		local ped = PlayerPedId()
		local myCoords = GetEntityCoords(ped)

		local closestDoor = nil
		local closestDist = 2.5

		for doorId, door in pairs(DoorsPool or {}) do
			local pos = door.pos1

			if pos then
				local dist = #(myCoords - vector3(pos.x, pos.y, pos.z))

				if dist < closestDist then
					closestDist = dist
					closestDoor = doorId
				end
			end
		end

		if not closestDoor then
			print("[doorpin] No nearby door")
			return
		end

		local door = DoorsPool[closestDoor]
		if not door then
			print("[doorpin] Door not found in pool:", closestDoor)
			return
		end

		print("Door ID:", closestDoor)

		if DoorHasValue(door.pin) then
			print("PIN:", tostring(door.pin))
		else
			print("PIN: not set")
		end
		if DoorHasValue(door.chiaveID) then
			print("Key ID:", tostring(door.chiaveID))
		else
			print("Key ID: not set")
		end
	else
		print("Not permission to get doors info.")
	end
end)

function ShowFishermanArea(ped) -- Show makrer to know the Fisherman Areas!
	local pCoords = GetEntityCoords(ped)
	for _, info in pairs(FishermanArea) do
		local radius = 25.0
		local pos = info.coords
		local dist = #(pCoords - pos)
		if dist < info.grandezzaArea * 4 then break end
		DrawMarker(
			1,
			pos.x, pos.y, pos.z,
			0.0, 0.0, 0.0,
			0.0, 0.0, 0.0,
			radius, radius, 900.0,
			0, 150, 255, 200,
			false, false, 2,
			false, nil, nil, false
		)
	end
end


