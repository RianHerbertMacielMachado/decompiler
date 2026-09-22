-- ============================================================
--  garageclient.lua  –  Garage & Vehicle Management (Client)
--  Refactored from decompiled bytecode
-- ============================================================

-- ─────────────────────────────────────────────────────────────
--  MODULE STATE
-- ─────────────────────────────────────────────────────────────
local plateLetterCount = 3       -- number of random letters in generated plate
local plateDigitCount  = 4       -- number of random digits in generated plate

local digitChars  = {}           -- '0'..'9'
local letterChars = {}           -- 'A'..'Z' + 'a'..'z'

for code = 48, 57 do  table.insert(digitChars,  string.char(code)) end
for code = 65, 90 do  table.insert(letterChars, string.char(code)) end
for code = 97, 122 do table.insert(letterChars, string.char(code)) end

-- Garage definitions  {position=vector3, head=float}
local garagePositions = {
    Abbandonato = {
        position = vector3(-1926.04, -3003.274, 12.944),
        head     = 330.0,
    },
}

local garageRadius     = 35.0   -- max distance to nearest garage
local garageContext    = {}     -- { currentGarage, vehicle }  – shared context
local previewVehicles  = {}     -- list of local preview entities (array)
local vehicleBlip      = nil    -- blip handle for "my vehicle" marker
local spawnedVehicles  = {}     -- all spawned owned vehicles this session (L11_1)

-- Session vehicle (admin /spawnVehSession)
local bulletproofTyres = {}     -- [vehicleEntity] = bool
VeicoloGiocatore       = nil
blipvehsessione        = nil

-- ─────────────────────────────────────────────────────────────
--  PLATE GENERATION
-- ─────────────────────────────────────────────────────────────
function GetRandomNumber(length)
    Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomNumber(length - 1) .. digitChars[math.random(1, #digitChars)]
    end
    return ""
end

function GetRandomLetter(length)
    Wait(1)
    math.randomseed(GetGameTimer())
    if length > 0 then
        return GetRandomLetter(length - 1) .. letterChars[math.random(1, #letterChars)]
    end
    return ""
end

function IsPlateTaken(plate)
    local result = "waiting"
    TriggerServerCallback("esx_vehicleshop:isPlateTaken", function(taken)
        result = taken
    end, plate)
    while type(result) == "string" do
        Wait(0)
    end
    return result
end

function GeneratePlateVehicleShop()
    local plate   = nil
    local isValid = false
    while not isValid do
        Wait(1000)
        math.randomseed(GetGameTimer())
        plate = string.upper(GetRandomLetter(plateLetterCount) .. " " .. GetRandomNumber(plateDigitCount))
        TriggerServerCallback("esx_vehicleshop:isPlateTaken", function(taken)
            if not taken then isValid = true end
        end, plate)
    end
    return plate
end

-- ─────────────────────────────────────────────────────────────
--  VEHICLE UTILITIES
-- ─────────────────────────────────────────────────────────────
function GetVehiclesStriano()
    local playerPos = GetEntityCoords(PlayerPedId())
    local radius    = 300.0
    local radiusSq  = radius * radius
    local result    = {}
    for _, veh in ipairs(GetGamePool("CVehicle")) do
        local vehPos = GetEntityCoords(veh)
        local dx = vehPos.x - playerPos.x
        local dy = vehPos.y - playerPos.y
        local dz = vehPos.z - playerPos.z
        if (dx*dx + dy*dy + dz*dz) <= radiusSq then
            table.insert(result, veh)
        end
    end
    return result
end

function VehicleInFront()
    local ped      = PlayerPedId()
    local pedPos   = GetEntityCoords(ped)
    local fwdPos   = GetOffsetFromEntityInWorldCoords(ped, 0.0, 4.0, 0.0)
    local ray      = CastRayPointToPoint(pedPos.x, pedPos.y, pedPos.z,
                                         fwdPos.x, fwdPos.y, fwdPos.z,
                                         10, ped, 0)
    local _, _, _, _, entity = GetRaycastResult(ray)
    return entity
end

function DeleteVehicleStriano(veh)
    if not DoesEntityExist(veh) then return end
    SetEntityAsMissionEntity(veh, true, true)
    DeleteVehicle(veh)
end

function Trim(str)
    if str then
        return (str:gsub("^%s*(.-)%s*$", "%1"))
    end
    return nil
end

function Round(num, decimals)
    local mult = 10 ^ (decimals or 0)
    return math.floor(num * mult + 0.5) / mult
end

trimfunc = Trim

-- ─────────────────────────────────────────────────────────────
--  VEHICLE PROPERTIES  –  GET
-- ─────────────────────────────────────────────────────────────
function GetVehiclePropertiesStriano(veh)
    if not DoesEntityExist(veh) then return end

    local props = {}
    props.model       = GetEntityModel(veh)
    props.plate       = GetVehicleNumberPlateText(veh)
    props.plateIndex  = GetVehicleNumberPlateTextIndex(veh)

    props.bodyHealth   = GetVehicleBodyHealth(veh)
    props.engineHealth = GetVehicleEngineHealth(veh)
    props.tankHealth   = GetVehiclePetrolTankHealth(veh)
    props.fuelLevel    = GetVehicleFuelLevel(veh)
    props.dirtLevel    = GetVehicleDirtLevel(veh)

    local r1, g1, b1 = GetVehicleColor(veh)  -- wrong native; used below
    props.color1 = GetVehicleColours(veh)     -- placeholder – see colour block below

    -- Primary / secondary colours
    local prim, sec = GetVehicleColours(veh)
    props.color1 = prim
    props.color2 = sec

    local rP, gP, bP = GetVehicleCustomPrimaryColour(veh)
    props.Rcolor_primary   = rP
    props.Gcolor_primary   = gP
    props.Bcolor_primary   = bP

    local rS, gS, bS = GetVehicleCustomSecondaryColour(veh)
    props.Rcolor_secondary = rS
    props.Gcolor_secondary = gS
    props.Bcolor_secondary = bS

    props.pearlescentColor = GetVehicleExtraColours(veh)
    local pearl, wheel = GetVehicleExtraColours(veh)
    props.pearlescentColor = pearl
    props.wheelColor       = wheel

    props.wheels     = GetVehicleWheelType(veh)
    props.windowTint = GetVehicleWindowTint(veh)

    -- Neon
    local n1, n2, n3, n4 = IsVehicleNeonLightEnabled(veh, 0),
                            IsVehicleNeonLightEnabled(veh, 1),
                            IsVehicleNeonLightEnabled(veh, 2),
                            IsVehicleNeonLightEnabled(veh, 3)
    props.neonEnabled = {n1, n2, n3, n4}

    local nR, nG, nB = GetVehicleNeonLightsColour(veh)
    props.neonColor = {nR, nG, nB}

    props.xenonColor = GetVehicleXenonLightsColour(veh)

    props.modSmokeEnabled = IsToggleModOn(veh, 20)
    local sR, sG, sB = GetVehicleTyreSmokeColor(veh)
    props.tyreSmokeColor = {sR, sG, sB}

    -- Extras (string-keyed dict)
    props.extras = {}
    for extraId = 0, 12 do
        if DoesExtraExist(veh, extraId) then
            props.extras[tostring(extraId)] = IsVehicleExtraTurnedOn(veh, extraId)
        end
    end

    -- extras2 (array 1-12, only if slot was ever set)
    props.extras2 = {}
    for i = 1, 12 do
        props.extras2[i] = IsVehicleExtraTurnedOn(veh, i)
    end

    props.InteriorColor = GetVehicleInteriorColour(veh)

    -- Mod slots 0-16, 23-46, 48
    for i = 0, 16 do
        props["mod" .. i] = GetVehicleMod(veh, i)
    end
    for i = 23, 46 do
        props["mod" .. i] = GetVehicleMod(veh, i)
    end
    props.mod48 = GetVehicleMod(veh, 48)

    -- Toggle mods
    props.mod18 = IsToggleModOn(veh, 18)
    props.mod20 = IsToggleModOn(veh, 20)
    props.mod22 = IsToggleModOn(veh, 22)

    -- Windows (smashed = false)
    props.windows = {}
    for w = 1, 13 do
        props.windows[w] = not IsVehicleWindowIntact(veh, w - 1)
    end

    -- Tyres (burst = true)
    props.tyres = {}
    for t = 1, 7 do
        props.tyres[t] = IsVehicleTyreBurst(veh, t - 1, false)
    end

    -- Doors (broken = true)
    props.doors = {}
    for d = 0, 5 do
        props.doors[d] = IsVehicleDoorDamaged(veh, d)
    end

    props.modLivery = GetVehicleLivery(veh)
    props.modWindows = GetVehicleMod(veh, 46)

    return props
end

exports("GetVehProperties", function(veh)
    return GetVehiclePropertiesStriano(veh)
end)

-- ─────────────────────────────────────────────────────────────
--  VEHICLE PROPERTIES  –  SET
-- ─────────────────────────────────────────────────────────────
function SetVehiclePropertiesStriano(veh, props)
    if not props or not DoesEntityExist(veh) then return end

    if props.plate       then SetVehicleNumberPlateText(veh, props.plate) end
    if props.plateIndex  then SetVehicleNumberPlateTextIndex(veh, props.plateIndex) end

    -- Colours
    if props.color1 and props.color2 then
        SetVehicleColours(veh, props.color1, props.color2)
    end
    if props.Rcolor_primary then
        SetVehicleCustomPrimaryColour(veh, props.Rcolor_primary, props.Gcolor_primary, props.Bcolor_primary)
    end
    if props.Rcolor_secondary then
        SetVehicleCustomSecondaryColour(veh, props.Rcolor_secondary, props.Gcolor_secondary, props.Bcolor_secondary)
    end
    if props.pearlescentColor then
        SetVehicleExtraColours(veh, props.pearlescentColor, props.wheelColor or 0)
    end

    if props.wheels      then SetVehicleWheelType(veh, props.wheels) end
    if props.windowTint  then SetVehicleWindowTint(veh, props.windowTint) end

    -- Neon
    if props.neonEnabled then
        for i, enabled in ipairs(props.neonEnabled) do
            SetVehicleNeonLightEnabled(veh, i - 1, enabled)
        end
    end
    if props.neonColor then
        SetVehicleNeonLightsColour(veh, props.neonColor[1], props.neonColor[2], props.neonColor[3])
    end
    if props.xenonColor then
        SetVehicleXenonLightsColour(veh, props.xenonColor)
    end
    if props.tyreSmokeColor then
        SetVehicleTyreSmokeColor(veh, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3])
    end

    -- Extras (string-keyed)
    if props.extras then
        for key, enabled in pairs(props.extras) do
            local id = tonumber(key)
            if id and DoesExtraExist(veh, id) then
                SetVehicleExtra(veh, id, enabled and 0 or 1)
            end
        end
    end

    -- Extras2 (numeric 1-12)
    if props.extras2 then
        for i = 1, 12 do
            if props.extras2[i] ~= nil and DoesExtraExist(veh, i) then
                SetVehicleExtra(veh, i, props.extras2[i] and 0 or 1)
            end
        end
    end

    if props.InteriorColor then SetVehicleInteriorColour(veh, props.InteriorColor) end

    -- Mod slots
    for i = 0, 16 do
        local v = props["mod" .. i]
        if v then SetVehicleMod(veh, i, v, false) end
    end
    for i = 23, 46 do
        local v = props["mod" .. i]
        if v then SetVehicleMod(veh, i, v, false) end
    end
    if props.mod48 then SetVehicleMod(veh, 48, props.mod48, false) end

    -- Toggle mods
    if props.mod18 ~= nil then ToggleVehicleMod(veh, 18, props.mod18) end
    if props.mod20 ~= nil then ToggleVehicleMod(veh, 20, props.mod20) end
    if props.mod22 ~= nil then ToggleVehicleMod(veh, 22, props.mod22) end

    if props.modLivery then SetVehicleLivery(veh, props.modLivery) end
end

-- ─────────────────────────────────────────────────────────────
--  SET PROPERTIES  –  LEGACY WRAPPER  (health + damage + mods)
-- ─────────────────────────────────────────────────────────────
function SetVehiclePropertiesLegacy(veh, props)
    -- Engine / body health (default 1000 if missing)
    SetVehicleEngineHealth(veh, (props.engineHealth and props.engineHealth + 0.0) or 1000.0)
    SetVehicleBodyHealth(veh,   (props.bodyHealth   and props.bodyHealth   + 0.0) or 1000.0)

    -- Smash windows where window table entry is false
    if props.windows then
        for w = 1, 13 do
            if props.windows[w] == false then
                SmashVehicleWindow(veh, w)
            end
        end
    end

    -- Burst tyres where tyre table entry is true
    if props.tyres then
        for t = 1, 7 do
            if props.tyres[t] == true then
                SetVehicleTyreBurst(veh, t, true, 1000)
            end
        end
    end

    -- Break doors where door table entry is true
    if props.doors then
        for d = 0, 5 do
            if props.doors[d] == true then
                SetVehicleDoorBroken(veh, d - 1, true)
            end
        end
    end

    Wait(0)
    SetVehiclePropertiesStriano(veh, props)
end

exports("SetVehProperties", function(veh, props)
    SetVehiclePropertiesLegacy(veh, props)
end)

-- ─────────────────────────────────────────────────────────────
--  FUEL HELPERS
-- ─────────────────────────────────────────────────────────────
function GetSafeFuel(veh)
    if veh and veh ~= 0 and DoesEntityExist(veh) then
        local stateVal = Entity(veh).state.fuelState
        if stateVal ~= nil then
            return tonumber(stateVal) or 0
        end
        return tonumber(GetVehicleFuelLevel(veh)) or 0
    end
    return 0
end

-- ─────────────────────────────────────────────────────────────
--  SPAWNED VEHICLE LIST  –  EXPORTS
-- ─────────────────────────────────────────────────────────────
exports("getVeicoliSpawnati", function()
    return spawnedVehicles
end)

exports("addVeicoloSpawnato", function(veh)
    table.insert(spawnedVehicles, veh)
end)

-- ─────────────────────────────────────────────────────────────
--  NETWORK EVENTS
-- ─────────────────────────────────────────────────────────────
RegisterNetEvent("esx_giveownedcar:spawnVehicle")
AddEventHandler("esx_giveownedcar:spawnVehicle", function(model, plate, admin)
    local ped = PlayerPedId()
    RequestModelStriano(model)
    local hash = type(model) == "string" and joaat(model) or model
    local pos  = GetEntityCoords(ped)
    local veh  = CreateVehicle(hash, pos.x, pos.y, pos.z, GetEntityHeading(ped), true, false)
    if not DoesEntityExist(veh) then return end
    SetVehicleNumberPlateText(veh, plate)
    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehicleIsStolen(veh, false)
    SetVehicleIsWanted(veh, false)
    SetVehRadioStation(veh, "OFF")
    SetVehicleEngineOn(veh, true, true, true)
    SetVehicleJetEngineOn(veh, true)
    TaskWarpPedIntoVehicle(ped, veh, -1)
    SetModelAsNoLongerNeeded(hash)
    table.insert(spawnedVehicles, veh)
    DecorSetInt(veh, "OWNER_Veh", GetPlayerServerId(PlayerId()))
    TriggerEvent("setBenzina", veh, 100.0)
end)

RegisterNetEvent("sod:spawnVeh")
AddEventHandler("sod:spawnVeh", function(model, props, outside)
    SpawnVehicle(props, props.fuelLevel or 100, outside, nil)
end)

RegisterNetEvent("sod:giveVeh")
AddEventHandler("sod:giveVeh", function(model, fuel)
    -- Spawn owned vehicle with new plate
    local plate = GeneratePlateVehicleShop()
    local ped   = PlayerPedId()
    RequestModelStriano(model)
    local hash = type(model) == "string" and joaat(model) or model
    local pos  = GetEntityCoords(ped)
    local veh  = CreateVehicle(hash, pos.x, pos.y, pos.z, GetEntityHeading(ped), true, false)
    if not DoesEntityExist(veh) then
        SetModelAsNoLongerNeeded(hash)
        return
    end
    SetVehicleNumberPlateText(veh, plate)
    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehicleIsStolen(veh, false)
    SetVehicleIsWanted(veh, false)
    SetVehRadioStation(veh, "OFF")
    SetVehicleFuelLevel(veh, fuel or 100.0)
    SetVehicleEngineOn(veh, true, true, true)
    SetVehicleJetEngineOn(veh, true)
    TaskWarpPedIntoVehicle(ped, veh, -1)
    SetModelAsNoLongerNeeded(hash)
    table.insert(spawnedVehicles, veh)
    DecorSetInt(veh, "OWNER_Veh", GetPlayerServerId(PlayerId()))
    TriggerEvent("setBenzina", veh, fuel or 100.0)
end)

RegisterNetEvent("TryDeleteDelCar")
AddEventHandler("TryDeleteDelCar", function(plate)
    for _, veh in ipairs(GetGamePool("CVehicle")) do
        if DoesEntityExist(veh) and GetVehicleNumberPlateText(veh) == plate then
            DeleteVehicleStriano(veh)
            return
        end
    end
end)

RegisterNetEvent("clearVehProvvisorio")
AddEventHandler("clearVehProvvisorio", function()
    if DoesEntityExist(VeicoloGiocatore) and NetworkHasControlOfEntity(VeicoloGiocatore) then
        local plate = trimfunc(GetVehicleNumberPlateText(VeicoloGiocatore))
        TriggerServerEvent("striano_keys:sv:adminDestroyKey", "TMP_" .. plate)
        DeleteVehicle(VeicoloGiocatore)
        VeicoloGiocatore = nil
    end
end)

exports("getVehTemp", function()
    return VeicoloGiocatore
end)

-- ─────────────────────────────────────────────────────────────
--  CLOSEST GARAGE
-- ─────────────────────────────────────────────────────────────
function getClosestGarage()
    local playerPos  = GetEntityCoords(PlayerPedId())
    local bestDist   = garageRadius
    local bestName   = nil

    for name, data in pairs(garagePositions) do
        if data then
            local dist = #(data.position - playerPos)
            if dist <= bestDist then
                bestDist = dist
                bestName = name
            end
        end
    end
    return bestName
end

-- ─────────────────────────────────────────────────────────────
--  GARAGE PREVIEW  –  LOCAL SPIN VEHICLE
-- ─────────────────────────────────────────────────────────────
-- Remove all current preview vehicles
function EliminaAnteprimaGarage()
    while #previewVehicles > 0 do
        DeleteVehicleStriano(previewVehicles[1])
        table.remove(previewVehicles, 1)
    end
end

-- Spawn a local spinning preview vehicle in front of the player
function SpawnLocalVehicleGarage(data)
    EliminaAnteprimaGarage()
    RequestModelStriano(data.model)

    if garageContext.vehicle and DoesEntityExist(garageContext.vehicle) then
        DeleteEntity(garageContext.vehicle)
    end

    local modelHash = data.model
    if type(modelHash) == "string" then
        modelHash = joaat(modelHash) or modelHash
    end
    if not IsModelValid(modelHash) then return end

    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    local fwd    = GetEntityForwardVector(ped)

    -- Place preview vehicle in front of player
    local minDim, maxDim = GetModelDimensions(modelHash)
    local length   = (maxDim.y - minDim.y) * 0.5 + 2.5
    local spawnPos = vector3(
        pedPos.x + fwd.x * length,
        pedPos.y + fwd.y * length,
        pedPos.z
    )

    local veh = CreateVehicle(modelHash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, false, false)
    if not DoesEntityExist(veh) then
        print("^1[GARAGE PREVIEW]^7 Impossibile creare:", data.model)
        SetModelAsNoLongerNeeded(modelHash)
        return
    end

    garageContext.vehicle = veh
    SetEntityAsMissionEntity(veh, true, true)
    SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehRadioStation(veh, "OFF")
    SetVehiclePropertiesLegacy(veh, data)
    SetEntityCollision(veh, false, false)
    FreezeEntityPosition(veh, true)

    -- Face the preview vehicle toward the player
    local vehPos = GetEntityCoords(veh)
    local heading = GetHeadingFromVector_2d(pedPos.x - vehPos.x, pedPos.y - vehPos.y)
    SetEntityHeading(veh, heading)

    table.insert(previewVehicles, veh)
    SetVehicleDoorsLocked(veh, 2)
    SetVehicleDoorsLockedForAllPlayers(veh, true)
    for d = 0, 5 do SetVehicleDoorShut(veh, d, true) end

    SetModelAsNoLongerNeeded(modelHash)

    -- Spin loop
    CreateThread(function()
        while DoesEntityExist(veh) and garageContext.vehicle == veh do
            Wait(0)
            SetEntityHeading(veh, GetEntityHeading(veh) + 0.28)
        end
    end)
end

-- ─────────────────────────────────────────────────────────────
--  DRAW MARKER HELPER
-- ─────────────────────────────────────────────────────────────
function DrawScriptMarker(opts)
    local pos = opts.pos or vector3(0.0, 0.0, 0.0)
    local rotX = 0.0
    if opts.type == 6 then
        rotX = -90.0
    elseif opts.rotate then
        rotX = -180.0
    end
    DrawMarker(1, pos, 0.0, 0.0, 0.0, rotX, 0.0, 0.0,
               0.2, 0.2, 1.5, 255, 0, 110, 100,
               false, true, 2, false, false, false, false)
end

-- ─────────────────────────────────────────────────────────────
--  OPEN GARAGE MENU  (select & spawn owned vehicle)
-- ─────────────────────────────────────────────────────────────
function OpenGarageMenu(garageName)
    local ped = PlayerPedId()

    if IsPedInAnyVehicle(ped) then
        exports.striano_combat:submexError("Not in a vehicle.")
        return
    end
    if not garageName then return end

    -- Delete any lingering preview
    if DoesEntityExist(garageContext.vehicle) then
        DeleteEntity(garageContext.vehicle)
    end

    TriggerServerCallback("garage:fetchPlayerVehicles", function(vehicles)
        if #vehicles == 0 then
            exports.striano_combat:submexError("No vehicles in your list.")
            ExecuteCommand("e think5")
            return
        end

        exports.striano_fastmenu:close()
        Wait(25)
        exports.striano_fastmenu:clearMenu()

        -- Debounce state for hover preview
        local lastHoverIdx   = 0
        local lastHoverTime  = 0
        local hoverDebounce  = 300
        local spawning       = false

        for idx, entry in ipairs(vehicles) do
            local props     = entry.props
            local modelName = GetDisplayNameFromVehicleModel(props.model)
            local modelLabel = GetLabelText(modelName)
            if modelLabel == "NULL" then modelLabel = modelName end

            local menuItem = {
                label       = modelLabel .. " - " .. entry.plate,
                description = "Plate: " .. entry.plate,
                autoClose   = false,
                hoverInfo   = {
                    title       = modelLabel,
                    description = "Plate: " .. entry.plate
                                  .. " | Fuel: " .. math.floor(tonumber(entry.benzina) or 0) .. "%",
                    icon        = "",
                    theme       = "dark",
                },

                onHover = function()
                    local now = GetGameTimer()
                    if lastHoverIdx == idx then return end
                    if (now - lastHoverTime) < hoverDebounce then return end
                    lastHoverIdx  = idx
                    lastHoverTime = now
                    SpawnLocalVehicleGarage(props)
                    PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FREEMODE_SOUNDSET", 1)
                end,

                onClick = function()
                    if spawning then return end
                    spawning = true

                    -- Delete preview
                    if DoesEntityExist(garageContext.vehicle) then
                        DeleteEntity(garageContext.vehicle)
                    end

                    -- Determine spawn position
                    local spawnPos = nil
                    local posData  = entry.posizione
                    if type(posData) == "table"
                       and tonumber(posData.x) and tonumber(posData.y) and tonumber(posData.z) then
                        spawnPos = vector3(tonumber(posData.x), tonumber(posData.y), tonumber(posData.z))
                    else
                        local fwdPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 4.0, 0.0)
                        spawnPos = vector3(fwdPos.x, fwdPos.y, fwdPos.z)
                    end

                    exports.striano_fastmenu:close()
                    SpawnVehicle(props, entry.benzina, entry.fuori, spawnPos)
                end,
            }

            exports.striano_fastmenu:addMenuItemAdvanced(menuItem)
        end

        exports.striano_fastmenu:openMenu()

        -- Cleanup preview when menu closes
        CreateThread(function()
            Wait(25)
            while exports.striano_fastmenu:opened() do
                Wait(250)
            end
            if not spawning then
                if DoesEntityExist(garageContext.vehicle) then
                    SetEntityAsMissionEntity(garageContext.vehicle, true)
                    DeleteVehicle(garageContext.vehicle)
                end
            end
        end)
    end)
end

-- ─────────────────────────────────────────────────────────────
--  OPEN VEHICLE MENU  (find/mark already-spawned owned vehicles)
-- ─────────────────────────────────────────────────────────────
function OpenVehicleMenu()
    local nearbyVehicles = GetVehiclesStriano()
    local playerPos      = GetEntityCoords(PlayerPedId())

    TriggerServerCallback("garage:fetchPlayerVehicles", function(vehicles)
        if #vehicles == 0 then
            exports.striano_combat:submexError("Theres no spawned vehicles owned by you.")
            return
        end

        exports.striano_fastmenu:clearMenu()
        local foundAny = false

        for _, entry in ipairs(vehicles) do
            local props = entry.props
            for _, veh in ipairs(nearbyVehicles) do
                if DoesEntityExist(veh) then
                    local plate = GetVehicleNumberPlateText(veh)
                    if plate == props.plate then
                        foundAny = true
                        local dist = math.floor(#(playerPos - GetEntityCoords(veh)))

                        local modelName  = GetDisplayNameFromVehicleModel(props.model)
                        local modelLabel = GetLabelText(modelName)
                        local prefix = (modelLabel ~= "NULL") and (modelLabel .. " - ") or ""

                        exports.striano_fastmenu:addMenuItem(
                            prefix .. props.plate,
                            function()
                                if IsPauseMenuActive() then return end
                                if veh and veh ~= 0 then
                                    if DoesBlipExist(vehicleBlip) then
                                        RemoveBlip(vehicleBlip)
                                        vehicleBlip = nil
                                        exports.striano_combat:submexInfo("Last marker vehicles removed, you can assign new.")
                                        DeleteWaypoint()
                                    else
                                        exports.striano_combat:submexInfo("Vehciles marker on radar as [Your Veh]")
                                        vehicleBlip = AddBlipForEntity(veh)
                                        SetBlipSprite(vehicleBlip, 225)
                                        SetBlipColour(vehicleBlip, 8)
                                        SetBlipScale(vehicleBlip, 0.8)
                                        BeginTextCommandSetBlipName("STRING")
                                        AddTextComponentString("Your Veh")
                                        EndTextCommandSetBlipName(vehicleBlip)
                                        local vehPos = GetEntityCoords(veh)
                                        exports.striano_inventory:blipInteresse(vehPos)
                                    end
                                else
                                    exports.striano_combat:submexError("No vehicles in list.")
                                    exports.striano_fastmenu:close()
                                end
                            end,
                            false
                        )
                        exports.striano_fastmenu:openMenu()
                    end
                end
            end
        end

        if not foundAny then
            exports.striano_combat:submex("No vehicles spawned to find.")
        end
    end)
end

-- ─────────────────────────────────────────────────────────────
--  SPAWN VEHICLE  (main garage spawn function)
-- ─────────────────────────────────────────────────────────────
function SpawnVehicle(props, fuel, outside, spawnPos)
    EliminaAnteprimaGarage()

    -- Delete existing preview in garageContext
    if DoesEntityExist(garageContext.vehicle) then
        SetEntityAsMissionEntity(garageContext.vehicle, true)
        DeleteVehicle(garageContext.vehicle)
    end

    -- already spawned? (fuori == 1)
    if outside == 1 then
        exports.striano_combat:submexError("This vehicles is already spawned.")

        -- show blip at last known position
        if spawnPos then
            local blip = AddBlipForCoord(spawnPos.x, spawnPos.y, spawnPos.z)
            SetBlipSprite(blip, 225)
            SetBlipColour(blip, 44)
            SetBlipScale(blip, 0.7)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Your Vehicle")
            EndTextCommandSetBlipName(blip)
        end
        return
    end

    local ped      = PlayerPedId()
    local pedPos   = GetEntityCoords(ped)

    -- Proximity guard
    if type(exports.striano_core.PlayerVicino) == "function" then
        if not exports.striano_core:PlayerVicino() then
            exports.striano_combat:submexError("Too many players nearby, can't spawn.")
            return
        end
    end

    -- Check if already spawned in session (blip + return)
    for _, sv in ipairs(spawnedVehicles) do
        if DoesEntityExist(sv) and GetVehicleNumberPlateText(sv) == props.plate then
            local blip = AddBlipForEntity(sv)
            SetBlipSprite(blip, 225)
            SetBlipDisplay(blip, 4)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, 44)
            SetBlipScale(blip, 0.7)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Your Vehicle")
            EndTextCommandSetBlipName(blip)
            exports.striano_combat:submexInfo("Your vehicle is already out.")
            return
        end
    end

    -- Determine effective spawn position
    local effectivePos = spawnPos or pedPos

    -- Validate distance to last parked coords
    if spawnPos and #(spawnPos - pedPos) > 100.0 then
        exports.striano_combat:submexError("You are too far away from the last coords this vehicle was parked!")
        TaskTurnPedToFaceCoord(ped, spawnPos.x, spawnPos.y, spawnPos.z, 1000)
        exports.striano_core:percorso(spawnPos)
        Wait(1000)
        ExecuteCommand("e point")
        return
    end

    -- Check boat/heli water requirement
    local modelHash = props.model
    if type(modelHash) == "string" then modelHash = joaat(modelHash) end

    local vehicleType = GetVehicleModelType(modelHash)
    if vehicleType == 13 then  -- boat
        if not IsEntityInWater(GetClosestObjectOfType(effectivePos.x, effectivePos.y, effectivePos.z, 5.0, 0, false, false, false)) then
            exports.striano_combat:submex("You must be in water to spawn this vehicle.")
            ExecuteCommand("e shrug5")
            return
        end
    end

    -- Spawn via striano_SpawnVehicle
    striano_SpawnVehicle(props, effectivePos, 0.0, function(veh)
        if not DoesEntityExist(veh) then return end

        -- Boat/heli in wrong terrain check
        local needsWater = (GetVehicleModelType(modelHash) == 13)
        if needsWater and not IsEntityInWater(veh) then
            exports.striano_combat:submex("You must be in water to spawn this vehicle.")
            SetEntityAsMissionEntity(veh, true)
            DeleteVehicle(veh)
            ExecuteCommand("e shrug5")
            return
        end

        -- Distance to spawn coords check
        if spawnPos and #(spawnPos - GetEntityCoords(veh)) > 50.0 then
            exports.striano_combat:submexError("You are too far away from the last coords this vehicle was parked!")
            SetEntityAsMissionEntity(veh, true)
            DeleteVehicle(veh)
            TaskTurnPedToFaceCoord(ped, spawnPos.x, spawnPos.y, spawnPos.z, 1000)
            exports.striano_core:percorso(spawnPos)
            Wait(1000)
            ExecuteCommand("e point")
            return
        end

        SetVehiclePropertiesLegacy(veh, props)
        SetVehicleDirtLevel(veh, props.dirtLevel or 0)
        SetVehicleFuelLevel(veh, fuel or 100.0)
        SetVehicleEngineOn(veh, true, true, true)
        SetVehicleJetEngineOn(veh, true)

        if exports.striano_core:getsubmisID() == 0 then
            TaskWarpPedIntoVehicle(ped, veh, -1)
        end

        SetVehicleNeedsToBeHotwired(veh, false)
        SetVehicleHasBeenOwnedByPlayer(veh, true)
        SetEntityAsMissionEntity(veh, true, true)
        SetVehicleIsStolen(veh, false)
        SetVehicleIsWanted(veh, false)
        SetVehRadioStation(veh, "OFF")

        table.insert(spawnedVehicles, veh)
        DecorSetInt(veh, "OWNER_Veh", GetPlayerServerId(PlayerId()))

        TriggerServerEvent("Mx :: GetCustomCar", veh, props.plate)
        TriggerEvent("setBenzina", veh, fuel or 100.0)

        if exports.text_guide then
            exports.text_guide:AddGuideText()
            exports.text_guide:GuidaVisibileNV()
        end

        -- Store server-side position when player exits vehicle
        CreateThread(function()
            while DoesEntityExist(veh) and IsPedInVehicle(ped, veh, false) do
                Wait(0)
            end
            if DoesEntityExist(veh) then
                FreezeEntityPosition(veh, true)
                local plate   = GetVehicleNumberPlateText(veh)
                local curFuel = GetSafeFuel(veh)
                local pos     = GetEntityCoords(veh)
                TriggerServerCallback("garage:mettifuori", function() end, plate, curFuel, pos)
                ExecuteCommand("guidaBase")
                RequestCollisionAtCoord(pos.x, pos.y, pos.z)
            end
        end)
    end)
end

-- ─────────────────────────────────────────────────────────────
--  PARK VEHICLE  (store vehicle back to garage)
-- ─────────────────────────────────────────────────────────────
function PutInVehicle(veh)
    local ped = PlayerPedId()
    if not (veh and veh ~= 0 and DoesEntityExist(veh)) then
        ExecuteCommand("prova Enter in a valid vehicle.")
        return
    end

    NetworkRequestControlOfEntity(veh)
    local savedProps = GetVehiclePropertiesStriano(veh)
    local dirtLevel  = GetVehicleDirtLevel(veh)
    local fuel       = GetSafeFuel(veh)
    local pos        = GetEntityCoords(veh)
    local plate      = GetVehicleNumberPlateText(veh)

    -- Remove from session list
    for i = #spawnedVehicles, 1, -1 do
        if spawnedVehicles[i] == veh then
            table.remove(spawnedVehicles, i)
            break
        end
    end

    TriggerServerCallback("garage:validateVehicle", function(valid)
        if not valid then
            ExecuteCommand("prova This vehicle is not yours.")
            return
        end

        if DoesEntityExist(veh) then
            if IsPedInVehicle(ped, veh, false) then
                TaskLeaveVehicle(ped, veh, 16)
                while DoesEntityExist(veh) and IsPedInVehicle(ped, veh, false) do
                    Wait(0)
                end
            end
        end

        TriggerServerCallback("garage:mettifuori", function() end, plate, fuel, pos)

        if DoesEntityExist(veh) then
            DeleteVehicleStriano(veh)
        end
    end, savedProps, dirtLevel, fuel)
end

exports("parkVeicolo", function(veh)
    PutInVehicle(veh)
end)

-- ─────────────────────────────────────────────────────────────
--  HANDLE GARAGE ACTION
-- ─────────────────────────────────────────────────────────────
function HandleActionGarage(garageName)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then return end
    if IsEntityPositionFrozen(ped) then return end
    OpenGarageMenu(garageName)
end

-- ─────────────────────────────────────────────────────────────
--  SESSION VEHICLE  (admin temp vehicle)
-- ─────────────────────────────────────────────────────────────
function spawnVehSession(model, extras)
    local ped = PlayerPedId()

    -- Remove blip
    if DoesBlipExist(blipvehsessione) then
        RemoveBlip(blipvehsessione)
        blipvehsessione = nil
    end

    -- Wait for control and delete existing session vehicle
    local attempts = 0
    while not NetworkHasControlOfEntity(VeicoloGiocatore) and attempts < 100 do
        if not DoesEntityExist(VeicoloGiocatore) then break end
        Wait(1)
        NetworkRequestControlOfEntity(VeicoloGiocatore)
        attempts = attempts + 1
    end

    if DoesEntityExist(VeicoloGiocatore) then
        if NetworkHasControlOfEntity(VeicoloGiocatore) then
            DeleteVehicle(VeicoloGiocatore)
            VeicoloGiocatore = nil
            Wait(1)
        end
    else
        VeicoloGiocatore = nil
    end

    local pedPos = GetEntityCoords(ped)
    striano_SpawnVehicle(model, pedPos, 0.0, function(veh)
        SetVehicleFuelLevel(veh, 50.0)
        SetVehicleEngineOn(veh, true, true, true)
        SetVehicleJetEngineOn(veh, true)

        if exports.striano_core:getsubmisID() == 0 then
            TaskWarpPedIntoVehicle(ped, veh, -1)
        end

        SetVehicleNeedsToBeHotwired(veh, false)
        SetVehicleHasBeenOwnedByPlayer(veh, true)
        SetEntityAsMissionEntity(veh, true, true)
        SetVehicleIsStolen(veh, false)
        SetVehicleIsWanted(veh, false)
        SetVehRadioStation(veh, "OFF")

        VeicoloGiocatore = veh
        DecorSetInt(veh, "OWNER_Veh", GetPlayerServerId(PlayerId()))

        local plate = trimfunc(GetVehicleNumberPlateText(veh))
        TriggerServerEvent("striano_keys:sv:adminGiveTempKey", GetPlayerServerId(PlayerId()), plate)

        if DoesEntityExist(veh) then
            TriggerEvent("setBenzina", veh, 50.0)
        end

        if extras then
            ApplyExtrasFromConfig(veh, extras)
            print("Applyed " .. #extras .. " extras al veicolo.")
        end
    end)

    ClearPedTasks(ped)

    -- Wait until in vehicle, then add blip
    while not IsPedInAnyVehicle(ped) do
        Wait(25)
    end

    local newVeh = GetVehiclePedIsIn(ped, false)
    local blip   = AddBlipForEntity(newVeh)
    SetBlipDisplay(blip, 4)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 44)
    SetBlipScale(blip, 0.7)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Session Vehicle")
    EndTextCommandSetBlipName(blip)
    blipvehsessione = blip

    exports.striano_core:addVeicoloSpawnato(newVeh)
    Wait(25)
    SetEntityVisible(newVeh, true)
end

exports("spawnVehSession", function(model, extras)
    spawnVehSession(model, extras)
end)

-- ─────────────────────────────────────────────────────────────
--  COMMANDS
-- ─────────────────────────────────────────────────────────────
RegisterCommand("mieiveicoli", function() OpenVehicleMenu() end)
RegisterCommand("mieiveh",     function() OpenVehicleMenu() end)
RegisterCommand("myveh",       function() OpenVehicleMenu() end)

RegisterCommand("garage", function()
    garageContext.currentGarage = "Abbandonato"
    HandleActionGarage("Abbandonato")
end)

-- /targa  – copy plate of nearest vehicle to clipboard
RegisterCommand("targa", function(source, args)
    local ped    = PlayerPedId()
    local pedPos = GetEntityCoords(ped)
    local veh    = GetVehiclePedIsIn(ped, false)

    if not veh or veh == 0 then
        veh = GetClosestVehicle(pedPos.x, pedPos.y, pedPos.z, 5.0, 0, 70)
    end
    if not veh or veh == 0 then
        veh = GetClosestVehicle(pedPos.x, pedPos.y, pedPos.z, 9.5, 0, 12294)
    end
    if not veh or veh == 0 then
        veh = VehicleInFront()
    end
    if not veh or veh == 0 then
        -- Raycast forward 5m
        local fwdPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 5.0, 0.0)
        local ray    = CastRayPointToPoint(pedPos.x, pedPos.y, pedPos.z,
                                           fwdPos.x, fwdPos.y, fwdPos.z,
                                           30, ped, 0)
        local _, _, _, _, hit = GetRaycastResult(ray)
        veh = hit
    end

    if DoesEntityExist(veh) and veh ~= 0 then
        if not IsPedAPlayer(veh) then
            NetworkRequestControlOfEntity(veh)
        end
    end

    if veh and veh ~= 0 then
        SetVehicleFixed(veh)
        SetVehicleUndriveable(veh, false)
        local plate = GetVehicleNumberPlateText(veh)
        exports.striano_combat:submexError("Player copied in clipboard: " .. plate)
        ExecuteCommand("copia " .. plate)
    else
        exports.striano_combat:submexError("No vehicle nearest.")
    end
end)

-- /park / /parkveh  – store current vehicle to garage
RegisterCommand("park", function()
    ExecuteCommand("parkveh")
end)

RegisterCommand("parkveh", function()
    ExecuteCommand("prova3 ")
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh and veh ~= 0 and DoesEntityExist(veh) then
        PutInVehicle(veh)
    else
        ExecuteCommand("prova Enter in a vehicle owned by you.")
    end
end)

-- /vehhp  – print engine health (debug)
RegisterCommand("vehhp", function()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        print("Vita veicolo: " .. GetVehicleEngineHealth(veh))
    end
end)

-- /vehfuel / /getfuel  – print fuel level (debug)
RegisterCommand("vehfuel", function()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        print("Fuel in vehicle: " .. GetSafeFuel(veh))
    end
end)

RegisterCommand("getfuel", function()
    ExecuteCommand("vehfuel")
end)

-- /delveh  – admin: delete vehicle from database
RegisterCommand("delveh", function()
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end

    if not IsPedSittingInAnyVehicle(PlayerPedId()) then return end

    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    exports.striano_combat:submexInfo("Are you sure you want delete this vehicle from database?")

    CreateThread(function()
        while true do
            exports.striano_core:draw(38, "Yes, delete vehicle", 73, "Cancel operation")

            if IsDisabledControlPressed(0, 73) or IsControlPressed(0, 73)
            or IsDisabledControlPressed(0, 25) or IsControlPressed(0, 25) then
                return  -- cancel
            end

            if IsDisabledControlPressed(0, 38) or IsControlPressed(0, 38) then
                local plate = GetVehicleNumberPlateText(veh)
                SetEntityAsMissionEntity(veh)
                DeleteEntity(veh)
                TriggerServerEvent("esx_importexport:delveicolo", plate)
                exports.striano_combat:submexInfo("Vehicle delete from Database.")
                TriggerServerCallback("garage:elimina", function() end, plate)
                TriggerServerEvent("striano_keys:sv:adminDestroyKey", plate)
                return
            end

            Wait(0)
        end
    end)
end)

-- /ruotebullet  – admin: toggle bulletproof tyres on current vehicle
RegisterCommand("ruotebullet", function(source, args)
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end

    if not IsPedSittingInAnyVehicle(PlayerPedId()) then
        exports.striano_combat:submexError("Vehicle not detected.")
        return
    end

    local veh = GetVehiclePedIsIn(PlayerPedId(), false)

    if bulletproofTyres[veh] == nil then
        bulletproofTyres[veh] = true
        SetVehicleTyresCanBurst(veh, false)
        exports.striano_combat:submexError("Tired bulletproof activated.")
    elseif bulletproofTyres[veh] == true then
        bulletproofTyres[veh] = false
        SetVehicleTyresCanBurst(veh, true)
        exports.striano_combat:submexError("Tired bulletproof deactivated.")
    else
        bulletproofTyres[veh] = true
        SetVehicleTyresCanBurst(veh, false)
        exports.striano_combat:submexError("Tired bulletproof activated.")
    end
end)

-- /assignVeh [playerId] [modelName]  – admin: give vehicle to a player
RegisterCommand("assignVeh", function(source, args)
    local adminLevel = LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end

    local targetId = args[1]
    local model    = args[2]

    if not targetId then return end
    if not model then
        exports.striano_combat:submexError("/assignVeh [ID_Player] [Vehicle Name].")
        return
    end

    if IsModelInCdimage(GetHashKey(model)) then
        TriggerServerEvent("sod:giveVeh", targetId, model)
        exports.striano_combat:submexError("Vehicle " .. model .. " gived to ID " .. targetId .. ".")
    else
        exports.striano_combat:submexError("Model insert not valid.")
    end
end)

-- ─────────────────────────────────────────────────────────────
--  SESSION VEHICLE  –  AUTO PARK THREAD
--  Tracks which vehicle the player last drove and parks it
--  automatically when they exit (for /garage and session vehs)
-- ─────────────────────────────────────────────────────────────
local lastDrivenVehicle = nil

CreateThread(function()
    while true do
        Wait(2000)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)

        if veh and veh ~= 0 and DoesEntityExist(veh) then
            if lastDrivenVehicle == nil then
                lastDrivenVehicle = veh
            end
        end

        if not IsPedInAnyVehicle(ped, false) then
            if lastDrivenVehicle ~= nil then
                local plate   = GetVehicleNumberPlateText(lastDrivenVehicle)
                local fuel    = GetSafeFuel(lastDrivenVehicle)
                local pos     = GetEntityCoords(lastDrivenVehicle)
                TriggerServerCallback("garage:mettifuori", function() end, plate, fuel, pos)
                lastDrivenVehicle = nil
            end
        end
    end
end)
