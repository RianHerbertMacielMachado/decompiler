-- =============================================================================
-- carmenu_client.lua
-- Refactored from decompiled bytecode — clean, idiomatic Lua
-- Systems: HUD (vehicle + status), vehicle management NUI, fuel, engine,
--          lockpicking, cruise control, tyre check, bike-knockoff
-- =============================================================================

-- ---------------------------------------------------------------------------
-- Module-level state
-- ---------------------------------------------------------------------------

local hudEnabled          = true    -- main HUD toggle
local vehicleHudVisible   = false   -- whether the vehicle HUD panel is shown
local cylexVehicle        = 0       -- current vehicle tracked by celex system
local tanicaEnabled       = true    -- jerrycan refuel cooldown gate
local engineToggleCooldown = true   -- prevents engine-toggle spam
local hasAlreadyLocked    = false   -- prevents ChiusuraVeicolo re-entry

-- Cruise control state
local cruiseTargetKmh     = 0       -- target speed in kmh + 10 offset
local cruiseActivating    = false   -- waiting to hit target before locking
local cruiseSilent        = false   -- suppress notification when set
local cruiseIsOn          = false
local currSpeed           = 0.0
local cruiseSpeed         = 999.0
local cruiseMode2Active   = false   -- cru2 "bike-style" cruise
local prevCruiseSpeed     = 0

-- Bike knock-off state
local knockSuspended      = false
local prevBodyHealth      = 0
local prevSpeedMph        = 0
local maxAllowedXYAccel   = 80      -- L13_1  threshold for lateral G knock
local maxAllowedZAccel    = 95      -- L14_1  threshold for vertical G knock
local velLock             = false   -- L15_1  one-shot velocity sampler lock

-- Vehicle on-road / ride quality
local tyreCheckInProgress = false   -- L34_1

-- Neon state per vehicle (entity handle → bool)
local neonState           = {}      -- L22_1
local neonCooldown        = false   -- L23_1

-- ---------------------------------------------------------------------------
-- Utility: round float to integer string
-- ---------------------------------------------------------------------------

--- Convert a float to a zero-decimal string then back to number.
---@param n number
---@return number
local function roundInt(n)
    return tonumber(string.format("%.0f", n))
end

-- ---------------------------------------------------------------------------
-- Utility: normalise a plate string (strip spaces, uppercase)
-- ---------------------------------------------------------------------------

---@param s string|nil
---@return string
local function normalisePlate(s)
    return tostring(s or ""):gsub("%s+", ""):upper()
end

-- ---------------------------------------------------------------------------
-- Utility: request network control with retry
-- ---------------------------------------------------------------------------

---@param entity  number
---@param retries number  max poll iterations (each ~0 ms)
---@return boolean
local function requestControl(entity, retries)
    if not (entity and entity ~= 0 and DoesEntityExist(entity)) then
        return false
    end
    if NetworkHasControlOfEntity(entity) then return true end
    NetworkRequestControlOfEntity(entity)
    local n = retries or 40
    while n > 0 do
        if not DoesEntityExist(entity) then break end
        if NetworkHasControlOfEntity(entity) then break end
        Wait(0)
        NetworkRequestControlOfEntity(entity)
        n = n - 1
    end
    return NetworkHasControlOfEntity(entity)
end

-- ---------------------------------------------------------------------------
-- Utility: get or ensure a network ID for a vehicle entity
-- ---------------------------------------------------------------------------

---@param veh number
---@return number  netId, or 0 on failure
local function getVehicleNetId(veh)
    if not (veh and veh ~= 0 and DoesEntityExist(veh)) then return 0 end
    if not NetworkGetEntityIsNetworked(veh) then
        NetworkRegisterEntityAsNetworked(veh)
        Wait(0)
    end
    local netId = VehToNet(veh)
    if not netId or netId == 0 then return 0 end
    return netId
end

-- ---------------------------------------------------------------------------
-- Utility: HasKey — check player state bag for a plate key
-- ---------------------------------------------------------------------------

---@param plateRaw string
---@return boolean
local function HasKey(plateRaw)
    local keys = LocalPlayer.state.keysHeld
    if type(keys) ~= "table" then return false end
    return keys[normalisePlate(plateRaw)] == true
end
HasKey = HasKey  -- expose as global

-- ---------------------------------------------------------------------------
-- Utility: PlayerVicino (closest player server-id within range)
-- ---------------------------------------------------------------------------

---@param range number|nil  default 3.0
---@return number|nil serverId, number distance
local function PlayerVicino(range)
    local maxDist  = range or 3.0
    local players  = Giocatori()
    local best, bestDist = -1, -1
    local myPed    = PlayerPedId()
    local myId     = PlayerId()
    local origin   = GetEntityCoords(myPed)

    for _, pid in ipairs(players) do
        if pid ~= myId then
            local ped  = GetPlayerPed(pid)
            local dist = #(GetEntityCoords(ped) - vector3(origin.x, origin.y, origin.z))
            if (best == -1 or dist < bestDist) and maxDist > dist then
                best     = pid
                bestDist = dist
            end
        end
    end

    return best, bestDist
end
PlayerVicino = PlayerVicino

-- ---------------------------------------------------------------------------
-- Utility: GetClosestPlayerID
-- Finds the server-id of any other player within 2.0 m of `ped`.
-- ---------------------------------------------------------------------------

---@param ped number
---@return number|nil serverId
local function GetClosestPlayerID(ped)
    local pedPos = GetEntityCoords(ped)

    for _, pid in ipairs(GetActivePlayers()) do
        local other = GetPlayerPed(pid)
        if other ~= ped then
            local dist = #(GetEntityCoords(other) - vector3(pedPos.x, pedPos.y, pedPos.z))
            if dist <= 2.0 then
                return GetPlayerServerId(pid)
            end
        end
    end

    return nil
end
GetClosestPlayerID = GetClosestPlayerID

-- ---------------------------------------------------------------------------
-- OpenInput helper
-- ---------------------------------------------------------------------------

---@param prompt string
---@return string|nil
local function OpenInput(prompt)
    return exports.striano_core:OpenInput(prompt, "", {})
end
OpenInput = OpenInput

-- ---------------------------------------------------------------------------
-- SetFuel — sets the statebag + native fuel level for a vehicle
-- ---------------------------------------------------------------------------

---@param veh   number
---@param level number  0–100
local function SetFuel(veh, level)
    if not (veh and veh ~= 0 and DoesEntityExist(veh)) then return end
    if GetVehicleClass(veh) == 13 then return end  -- bikes exempt
    if level == nil then return end

    level = tonumber(level) or 100.0
    if level > 100 then level = 100 end
    if level < 0   then level = 0 end

    -- ensure networked
    if not NetworkGetEntityIsNetworked(veh) then
        NetworkRegisterEntityAsNetworked(veh)
        Wait(0)
    end

    local netId = VehToNet(veh)
    if netId and netId ~= 0 then
        TriggerServerEvent("core:qtUpdate", netId, "fuelState", level)
    else
        Entity(veh).state:set("fuelState", level, true)
    end
end
SetFuel = SetFuel

-- ---------------------------------------------------------------------------
-- ChiusuraVeicolo — toggle vehicle lock/unlock with anim and sound
-- ---------------------------------------------------------------------------

---@param veh number
local function ChiusuraVeicolo(veh)
    if hasAlreadyLocked then return end

    local lockStatus = GetVehicleDoorLockStatus(veh)
    hasAlreadyLocked = true
    ExecuteCommand("e chiusura")

    local ped = PlayerPedId()
    if lockStatus == 0 or lockStatus == 1 then
        -- lock it
        if not IsPedInAnyVehicle(ped, false) then
            makeEntityFaceEntity(ped, veh)
        end
        SetVehicleDoorShut(veh, 0, false)
        SetVehicleDoorShut(veh, 1, false)
        SetVehicleDoorShut(veh, 2, false)
        SetVehicleDoorShut(veh, 3, false)
        SetVehicleDoorsLocked(veh, 2)
        exports.striano_combat:testo3d("Veh locked.")
        PlaySoundFrontend(-1, "PICK_UP_WEAPON", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1)
        hasAlreadyLocked = false

    elseif lockStatus == 2 then
        -- unlock it
        if not IsPedInAnyVehicle(ped, false) then
            makeEntityFaceEntity(ped, veh)
        end
        SetVehicleDoorsLocked(veh, 1)
        exports.striano_combat:testo3d("Veh unlocked.")
        PlaySoundFrontend(-1, "PICK_UP_WEAPON", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1)
        hasAlreadyLocked = false
    end

    Wait(2500)
    ExecuteCommand("e cc")
end
ChiusuraVeicolo = ChiusuraVeicolo

-- ---------------------------------------------------------------------------
-- CanBeKnockedOffVehicle
-- ---------------------------------------------------------------------------

---@param ped number
---@param veh number
---@return boolean
local function CanBeKnockedOffVehicle(ped, veh)
    if not IsPedInAnyVehicle(ped, true) then return false end
    local cls = GetVehicleClass(veh)
    return cls == 13 or cls == 8  -- motorcycles or quadbikes
end
CanBeKnockedOffVehicle = CanBeKnockedOffVehicle

-- ---------------------------------------------------------------------------
-- KnockFromVehicle
-- ---------------------------------------------------------------------------

---@param ped       number
---@param veh       number
---@param accel     number  magnitude of acceleration
---@param isVertical boolean
local function KnockFromVehicle(ped, veh, accel, isVertical)
    local health = GetEntityHealth(ped)
    if health >= 120 then return end  -- must have taken damage
    if not DoesEntityExist(veh) then return end

    local ragdollMs = 3200
    if isVertical and accel > 200 then
        ragdollMs = 6200
    end

    SetPedToRagdoll(ped, ragdollMs, ragdollMs, 0, 0, 0, 0)
    SetEntityVelocity(ped, GetEntityVelocity(veh))
    SetEntityAlpha(veh, 255)
    lastKnownAcceleration = 0
    Wait(25)
    ExecuteCommand("vairagdoll")
    Wait(500)
    ExecuteCommand("prova3 Low health to balance this kind of hit with vehicles.")
    PlaySoundFrontend(-1, "Enemy_Pick_Up", "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS", 1)
end
KnockFromVehicle = KnockFromVehicle

-- ---------------------------------------------------------------------------
-- GetVehicleVelocityVectorAccelerations — one-shot velocity delta sampler
-- ---------------------------------------------------------------------------

---@param veh number
---@return table  {x, y, z} acceleration vectors
local function GetVehicleVelocityVectorAccelerations(veh)
    local result = {}
    if velLock then return result end
    velLock = true

    local ped = PlayerPedId()
    if not (ped and IsPedInAnyVehicle(ped, true)) then
        velLock = false
        return result
    end

    local v1 = GetEntityVelocity(veh)
    local dx, dy, dz = v1.x, v1.y, v1.z
    local dt = 100  -- ms
    Wait(dt)

    local v2      = GetEntityVelocity(veh)
    local factor  = dt / 1000.0
    result.x = (v2.x - dx) / factor
    result.y = (v2.y - dy) / factor
    result.z = (v2.z - dz) / factor

    velLock = false
    return result
end
GetVehicleVelocityVectorAccelerations = GetVehicleVelocityVectorAccelerations

-- ---------------------------------------------------------------------------
-- PlayerFallOffBikeVelocityVectorAccelerationsCheck
-- ---------------------------------------------------------------------------

local function PlayerFallOffBikeCheck()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    if not ped then return end
    if GetPedInVehicleSeat(veh, -1) ~= ped then
        Wait(1000)
        return
    end
    if IsEntityPositionFrozen(ped) then return end
    if not IsEntityVisible(ped) then return end
    if not CanBeKnockedOffVehicle(ped, veh) then return end

    local acc  = GetVehicleVelocityVectorAccelerations(veh)
    local absX = math.abs(acc.x or 0)
    local absY = math.abs(acc.y or 0)
    local absZ = math.abs(acc.z or 0)
    local xyMag = math.sqrt(absX * absX + absY * absY)

    -- lateral/horizontal G
    if maxAllowedXYAccel ~= 0 and xyMag > maxAllowedXYAccel then
        KnockFromVehicle(ped, veh, xyMag, false)
        local nearby = GetClosestPlayerID(ped)
        if nearby then
            TriggerServerEvent("bike:knockOff", nearby, xyMag, false)
        end
    end

    -- vertical G (jumps / drops)
    if maxAllowedZAccel ~= 0 and absZ > maxAllowedZAccel and absZ < 200 then
        KnockFromVehicle(ped, veh, absZ, true)
        local nearby = GetClosestPlayerID(ped)
        if nearby then
            TriggerServerEvent("bike:knockOff", nearby, absZ, true)
        end
    end
end

-- Expose as global so the thread can call it by ENV key (original pattern)
PlayerFallOffBikeVelocityVectorAccelerationsCheck = PlayerFallOffBikeCheck

-- ---------------------------------------------------------------------------
-- VehicleInFront — raycast 4 m ahead of player to detect a vehicle
-- ---------------------------------------------------------------------------

---@return number  entity handle or 0
local function VehicleInFront()
    local ped    = PlayerPedId()
    local origin = GetEntityCoords(ped)
    local fwd    = GetOffsetFromEntityInWorldCoords(ped, 0.0, 4.0, 0.0)
    local ray    = CastRayPointToPoint(origin.x, origin.y, origin.z,
                                       fwd.x, fwd.y, fwd.z, 10, ped, 0)
    local _, _, _, _, hit = GetRaycastResult(ray)
    return hit
end
VehicleInFront = VehicleInFront

-- ---------------------------------------------------------------------------
-- loopMain — open NUI CarMenu UI, runs each frame while vehicle HUD is active
-- ---------------------------------------------------------------------------

local function loopMain()
    if enable then return end  -- guard: only one instance

    CreateThread(function()
        while true do
            Wait(0)
            if cylexVehicle == 0 then return end
            if not menuActive then return end  -- L7_1 equivalent (menuActive)

            -- draw parked-vehicle marker when player is on foot
            if not IsPedInAnyVehicle(PlayerPedId(), false) then
                local pos = GetEntityCoords(cylexVehicle)
                DrawMarker(1,
                    pos.x, pos.y, pos.z + 0.03,
                    0, 0, 0,  0, 0, 0,
                    0.1, 0.1, 2.0,
                    240, 255, 0, 150,
                    false, true, 2, false, false, false, false)
            end

            refreshUI()
        end
    end)
end
loopMain = loopMain

-- ---------------------------------------------------------------------------
-- refreshUI — build the carmenu NUI payload and send it
-- ---------------------------------------------------------------------------

local menuActive = false  -- L7_1

local function refreshUI()
    local ped = PlayerPedId()
    if cylexVehicle == 0 then
        SendNUIMessage({ type = "resetcarmenu" })
        ExecuteCommand("prova3 ")
        return
    end

    local veh = cylexVehicle

    -- seat state
    local function checkSeat(seatIdx)
        local occupant = GetPedInVehicleSeat(veh, seatIdx)
        if occupant == ped then return seatIdx end
        if occupant ~= 0   then return false end
        return true
    end

    local s = {
        seat1 = checkSeat(-1),
        seat2 = checkSeat(0),
        seat3 = checkSeat(1),
        seat4 = checkSeat(2),
    }
    s.doorAccess = (s.seat1 == -1) and true or false

    -- door open states
    for doorIdx, key in ipairs({"door0","door1","door2","door3","hood","trunk"}) do
        if GetVehicleDoorAngleRatio(veh, doorIdx - 1) ~= 0 then
            s[key] = true
        end
    end

    -- window broken states
    local winKeys = {"windowr1","windowl1","windowr2","windowl2"}
    for i, key in ipairs(winKeys) do
        if not IsVehicleWindowIntact(veh, i - 1) then
            s[key] = true
        end
    end

    s.engine = GetIsVehicleEngineRunning(veh)

    SendNUIMessage({ type = "refreshcarmenu", settings = s })
end
refreshUI = refreshUI

-- ---------------------------------------------------------------------------
-- EnableGUI — show/hide the carmenu NUI for a vehicle
-- ---------------------------------------------------------------------------

---@param show boolean
---@param veh  number
local function EnableGUI(show, veh)
    -- skip invisible / special model vehicles
    local model = GetEntityModel(veh)
    if model == -56009036 or model == -1963629913 then return end

    if show then
        local ped = PlayerPedId()
        if not IsEntityPositionFrozen(ped) then
            loopMain()
            menuActive = true
            local plate    = GetVehicleNumberPlateText(veh)
            local dispName = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
            exports.striano_combat:testo3d(dispName .. " ~h~" .. plate)
        end
    else
        menuActive = false
    end

    Wait(0)
    SetNuiFocus(show, show)
    SendNUIMessage({ type = "enablecarmenu", enable = show })
end
EnableGUI = EnableGUI

-- ---------------------------------------------------------------------------
-- PorteVeicolo — /portev proximity interaction (on-foot mode)
-- ---------------------------------------------------------------------------

local function PorteVeicolo()
    local ped = PlayerPedId()
    if IsPedCuffed(ped) then return end
    if IsPedInAnyVehicle(ped) then return end

    local pos  = GetEntityCoords(ped)
    local range = 3.0

    -- try normal vehicles, then boats
    cylexVehicle = GetClosestVehicle(pos.x, pos.y, pos.z, range, 0, 70)
    if not cylexVehicle or cylexVehicle == 0 then
        cylexVehicle = GetClosestVehicle(pos.x, pos.y, pos.z, range, 0, 12294)
    end
    if not cylexVehicle or cylexVehicle == 0 then
        cylexVehicle = VehicleInFront()
    end

    if not cylexVehicle or cylexVehicle == 0 then return end

    -- skip bike/helicopter classes
    local cls = GetVehicleClass(cylexVehicle)
    if cls == 15 or cls == 16 then return end

    local plate = GetVehicleNumberPlateText(cylexVehicle)
    if not plate then return end

    -- jerrycan refuel prompt
    if HasPedGotWeapon(ped, 883325847, false) then
        exports.striano_combat:submexInfo("Tanica in mano, vuoi rifornire il veicolo?")
        while true do
            draw(38, "Yes, refuel!", 73, "Cancel")

            if IsDisabledControlPressed(0, 73) or IsControlPressed(0, 73)
            or IsDisabledControlPressed(0, 25) or IsControlPressed(0, 25) then
                exports.striano_combat:submex("")
                break
            end

            if IsDisabledControlPressed(0, 38) or IsControlPressed(0, 38) then
                exports.striano_combat:submex("")
                ExecuteCommand("tanica")
                return
            end

            Wait(0)
        end
    end

    -- on-foot interaction
    if IsPedRagdoll(ped) then return end
    if not DoesEntityExist(cylexVehicle) then return end
    if not IsEntityOnScreen(cylexVehicle) then return end

    NetworkRequestControlOfEntity(cylexVehicle)

    if HasKey(plate) then
        EnableGUI(true, cylexVehicle)
    else
        local engineOn = GetIsVehicleEngineRunning(cylexVehicle)
        if engineOn then
            if GetVehicleDoorLockStatus(cylexVehicle) ~= 2 then
                EnableGUI(true, cylexVehicle)
            end
        else
            local dispName = GetDisplayNameFromVehicleModel(GetEntityModel(cylexVehicle))
            exports.striano_combat:testo3d(dispName .. " ~h~" .. plate .. "~h~~n~~r~No keys.")
            ExecuteCommand("e shrug5")
        end
    end
end
PorteVeicolo = PorteVeicolo

-- ---------------------------------------------------------------------------
-- updateVehicleHUD — push vehicle telemetry to NUI
-- ---------------------------------------------------------------------------

local function updateVehicleHUD()
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, false) then return end

    local veh = GetVehiclePedIsIn(ped, false)
    if GetEntityModel(veh) == GetHashKey("invisible") then return end

    -- first time entering: show panel and hint
    if not vehicleHudVisible then
        vehicleHudVisible = true
        SendNUIMessage({ action = "showVehicleHud" })
        FreezeEntityPosition(veh, false)
        ExecuteCommand("prova3 Use /park to store your vehicles.")
    end

    local engineHealth = GetVehicleEngineHealth(veh)
    local speed        = math.floor(GetEntitySpeed(veh) * 3.6)
    local gear         = GetVehicleCurrentGear(veh)

    if engineHealth > 800 then
        local fuelState = Entity(veh).state.fuelState
        if fuelState ~= nil then
            SendNUIMessage({
                action       = "updateVehicleHud",
                fuel         = fuelState,
                speed        = speed,
                gear         = gear,
                engineHealth = tostring(roundInt(engineHealth - 800)) .. "%",
            })
        end
    else
        SendNUIMessage({
            action       = "updateVehicleHud",
            fuel         = roundInt(GetVehicleFuelLevel(veh)),
            speed        = speed,
            gear         = gear,
            engineHealth = "❌",
        })
    end
end
updateVehicleHUD = updateVehicleHUD

-- ---------------------------------------------------------------------------
-- updateStatusHUD — push player status bars to NUI
-- ---------------------------------------------------------------------------

local function updateStatusHUD()
    local ped = PlayerPedId()

    local rawHealth = GetEntityHealth(ped)
    local health    = rawHealth == 9999999999 and 0 or (rawHealth - 100)
    local armor     = GetPedArmour(ped) or 0

    local fame   = exports.striano_core:getStatusClient("fame")
    local sete   = exports.striano_core:getStatusClient("sete")
    local stress = exports.striano_core:getStatusClient("stress")
    local igiene = exports.striano_core:getStatusClient("igiene")

    Wait(1000)

    local hungerPct  = roundInt((fame  / 1000000) * 100)
    local thirstPct  = roundInt((sete  / 1000000) * 100)
    local stressPct  = roundInt((stress / 1000000) * 100)
    local igienePct  = roundInt((igiene / 1000000) * 100)

    local fatigueRaw = GetPlayerSprintStaminaRemaining(PlayerId())
    local stamina    = math.floor(100 - fatigueRaw)

    local oxygenRaw  = GetPlayerUnderwaterTimeRemaining(PlayerId())
    local oxygen     = math.floor(oxygenRaw / 0.1)

    SendNUIMessage({
        action     = "updateStatusHud",
        health     = health,
        armor      = armor,
        stamina    = stamina,
        oxygen     = oxygen,
        hunger     = hungerPct,
        thirst     = thirstPct,
        stress     = stressPct  or 0,
        igiene     = igienePct,
        playeriddi = GetPlayerServerId(PlayerId()),
    })
end
updateStatusHUD = updateStatusHUD

-- ---------------------------------------------------------------------------
-- CheckRuote — check tyres and eject player if too many are burst
-- ---------------------------------------------------------------------------

---@param veh number
local function CheckRuote(veh)
    if not (veh and veh ~= 0 and DoesEntityExist(veh)) then return end
    if not IsEntityAVehicle(veh) then return end

    local ped       = PlayerPedId()
    local burstCount = 0
    for _, tyreIdx in ipairs({0, 1, 3, 4}) do
        if IsVehicleTyreBurst(veh, tyreIdx, true) then
            burstCount = burstCount + 1
        end
    end

    local cls = GetVehicleClass(veh)
    local threshold = (cls == 8) and 1 or 2  -- motorcycles: 1 tyre, others: 2

    if IsPedInAnyVehicle(ped, false) then
        local alpha = GetEntityAlpha(veh)
        if alpha < 255 then SetEntityAlpha(veh, 255) end
    end

    if burstCount >= threshold then
        SetVehicleEngineOn(veh, false, false, false, true)
        SetVehicleJetEngineOn(veh, false)
        Wait(3000)
        TaskLeaveVehicle(ped, veh, 0)
        Wait(1000)
        ExecuteCommand("e checazzo")
    end
end
CheckRuote = CheckRuote

-- ---------------------------------------------------------------------------
-- Neon toggle helpers
-- ---------------------------------------------------------------------------

---@param veh number
---@return boolean  true if neon lights are present / cached
local function vehicleHasNeon(veh)
    if neonState[veh] ~= nil then return true end
    if IsVehicleNeonLightEnabled(veh) then
        neonState[veh] = true
        return true
    end
    return false
end

local function toggleNeonLights()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if not veh then return end
    if not IsPedInAnyVehicle(ped, false) then return end
    if GetPedInVehicleSeat(veh, -1) ~= ped then return end

    if not vehicleHasNeon(veh) then
        exports.striano_combat:submexError("Questo veicolo non presenta neon.")
        return
    end

    local current = neonState[veh]
    if current == nil then current = false end

    local newState = not current
    for i = 0, 3 do
        SetVehicleNeonLightEnabled(veh, i, newState)
    end
    neonState[veh] = newState
end

-- ---------------------------------------------------------------------------
-- Cruise control
-- ---------------------------------------------------------------------------

--- Reset max-speed back to vehicle's native cap.
---@param veh number
local function resetMaxSpeed(veh)
    if not (veh and veh ~= 0) then return end
    local nativeMax = GetVehicleHandlingFloat(veh, "CHandlingData", "fInitialDriveMaxFlatVel")
    SetEntityMaxSpeed(veh, nativeMax)
end

--- Returns true if the player can currently use cruise control.
local function possocruisefunc()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if veh == 0 then return false end

    if not IsEntityVisible(ped) then return false end
    if not IsPedInAnyVehicle(ped, false) then return false end
    if not IsEntityAVehicle(veh) then return false end
    if GetPedInVehicleSeat(veh, -1) ~= ped then return false end

    -- check surface type (off-road / water surfaces)
    local surface = GetVehicleWheelSurfaceMaterial(veh, 1)
    local wheelType = GetVehicleWheelType(veh)

    if wheelType == 3 or wheelType == 4 or wheelType == 6 then return true end  -- off-road wheels
    if surface == 4 or surface == 1 or surface == 3 or surface == 13 then return true end  -- sand/grass/etc.

    -- exclude water, air, void surfaces
    if surface == 15 or surface == 14 or surface == 0 or surface == 60
    or surface == 11 or surface == 69 then return false end

    return GetVehicleFuelLevel(veh) > 0
end
possocruisefunc = possocruisefunc

--- Core cruise-set logic: /cruise <kmh> [silent]
---@param kmhArg   any    speed target (or nil to reset)
---@param silent   boolean|nil  suppress HUD message
local function fCruise(kmhArg, silent)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, -1)
    if not veh or veh == 0 then return end
    if IsThisModelABicycle(GetEntityModel(veh)) then return end

    if kmhArg == nil then
        -- reset
        exports.striano_combat:submexInfo("Cruise reset.")
        currSpeed  = GetEntitySpeed(GetVehiclePedIsIn(ped, false))
        cruiseIsOn = false
        cruiseSpeed = currSpeed
        Wait(100)
        local veh2 = GetVehiclePedIsIn(ped, false)
        resetMaxSpeed(veh2)
        Wait(100)
        cruiseTargetKmh = 0
        return
    end

    local kmh = tonumber(kmhArg)
    if not kmh then return end

    if kmh < 10 then
        -- treat as deactivate
        if cruiseTargetKmh == 0 then
            local veh2 = GetVehiclePedIsIn(ped, false)
            currSpeed  = GetEntitySpeed(veh2)
            cruiseIsOn = false
            cruiseSpeed = currSpeed
            Wait(100)
            resetMaxSpeed(veh2)
            Wait(100)
            cruiseTargetKmh = 0
        end
        return
    end

    -- set new target
    local veh2 = GetVehiclePedIsIn(ped, false)
    currSpeed  = GetEntitySpeed(veh2)
    cruiseIsOn = false
    cruiseSpeed = currSpeed
    Wait(100)
    if cruiseSpeed and cruiseSpeed > 0 then
        -- use cruiseSpeed as max
    else
        cruiseSpeed = GetVehicleHandlingFloat(veh2, "CHandlingData", "fInitialDriveMaxFlatVel")
    end
    SetEntityMaxSpeed(veh2, cruiseSpeed)
    Wait(100)
    cruiseTargetKmh = kmh + 10
    cruiseActivating = true
    if silent == nil then
        exports.striano_combat:submexError(string.format("Cruise ~q~%d~w~ kmh.", kmh))
    else
        cruiseSilent = true
    end
end
fCruise = fCruise

--- /cruisedialog — ask for kmh via input
local function fCruiseDialog()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, -1)
    if not veh or veh == 0 then return end
    local input = OpenInput("Insert kmh.")
    local kmh   = tonumber(input)
    fCruise(kmh)
end
fCruiseDialog = fCruiseDialog

--- /cru2 — toggle "passenger cruise" (locks at 50 kmh in seat 0)
local function fCruise2()
    if cruiseMode2Active then return end

    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, -1)
    if not veh or veh == 0 then return end
    if GetPedInVehicleSeat(veh, 0) == 0 then return end  -- no passenger
    if IsThisModelABicycle(GetEntityModel(veh)) then return end

    cruiseMode2Active = true

    -- cancel any active normal cruise first
    if cruiseIsOn then
        local veh2 = GetVehiclePedIsIn(ped, false)
        currSpeed  = GetEntitySpeed(veh2)
        cruiseIsOn = false
        cruiseSpeed = currSpeed
        Wait(100)
        resetMaxSpeed(veh2)
        Wait(100)
        prevCruiseSpeed  = cruiseTargetKmh
        cruiseTargetKmh  = 0
        cruiseActivating = true
    end

    Wait(500)
    -- set hardcoded 50 kmh for cru2
    cruiseTargetKmh  = tonumber(50) + 10
    prevCruiseSpeed  = cruiseTargetKmh
    cruiseActivating = true
end
fCruise2 = fCruise2

-- ---------------------------------------------------------------------------
-- bloccaTuttiTasti — disable driving-related controls (crash effect)
-- ---------------------------------------------------------------------------

local knockControlsActive = false

local function bloccaTuttiTasti()
    if knockControlsActive then return end

    CreateThread(function()
        while true do
            Wait(1)
            if not knockSuspended then return end
            DisableControlAction(0, 71, true)
            DisableControlAction(0, 72, true)
            DisableControlAction(0, 63, true)
            DisableControlAction(0, 64, true)
            DisableControlAction(0, 75, true)
        end
    end)
end
bloccaTuttiTasti = bloccaTuttiTasti

--- Handle vehicle crash/impact: apply headache anim + random damage.
local function onVehicleCrash()
    if knockSuspended then return end
    local ped = PlayerPedId()
    if IsPedFatallyInjured(ped) then return end

    bloccaTuttiTasti()
    knockSuspended = true
    Wait(250)
    ExecuteCommand("e malditesta")
    ApplyDamageToPed(PlayerPedId(), math.random(15, 30), false)
    Wait(3500)
    knockSuspended = false
end

-- ---------------------------------------------------------------------------
-- Lockpick system
-- ---------------------------------------------------------------------------

local lockpickPending = false  -- L10_1  anti-flood
local lockpickVehicle = nil    -- module-level "vehicle"

--- Perform the actual lockpick + warp sequence.
---@param veh number
local function lockpick2(veh)
    local ped = PlayerPedId()

    if math.random(1, 2) == 2 then
        -- success path
        FreezeEntityPosition(ped, false)
        makeEntityFaceEntity(ped, veh)
        ExecuteCommand("e knock3")

        requestControl(veh, 100)
        SetVehicleNeedsToBeHotwired(veh, true)
        SetVehicleRadioEnabled(veh, false)
        SetEntityAsMissionEntity(veh)
        SetVehicleDoorsLocked(veh, 1)
        PlayVehicleDoorOpenSound(veh, 0)
        Wait(900)
        TaskWarpPedIntoVehicle(ped, veh, -1)
        SetVehicleEngineOn(veh, false, true, true)
        SetVehicleJetEngineOn(veh, false)

        local char = exports.striano_core:getInfoKey(1937710959)
        exports.striano_combat:submexInfo("Vehicle lockpicked [" .. tostring(char) .. "]")
    else
        -- fail path
        FreezeEntityPosition(ped, false)
        SetVehicleLights(veh, 0)
        Wait(500)
        ExecuteCommand("e shrug3")
        HotWiring = false
    end

    lockpickPending = false
end
lockpick2 = lockpick2

--- Entry point for lockpick — find nearest vehicle and trigger sequence.
local function hotWire()
    if lockpickPending then
        print("Lockpick antiflodd.")
        return
    end

    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, true) then
        exports.striano_combat:submexError("Exit from vehicle to lockpick.")
        return
    end

    local pos = GetEntityCoords(ped)
    lockpickVehicle = GetClosestVehicle(pos.x, pos.y, pos.z, 3.0, 0, 70)
    if not lockpickVehicle or lockpickVehicle == 0 then
        lockpickVehicle = GetClosestVehicle(pos.x, pos.y, pos.z, 3.0, 0, 12294)
    end
    if not lockpickVehicle or lockpickVehicle == 0 then
        exports.striano_combat:submexError("No vehicle detected.")
        return
    end

    -- LockPickFunc
    NetworkRequestControlOfEntity(lockpickVehicle)
    FreezeEntityPosition(ped, true)
    lockpickPending = true
    ExecuteCommand("e lockpick")
    lockpick2(lockpickVehicle)
end
hotWire = hotWire

-- ---------------------------------------------------------------------------
-- /tanica — use jerrycan to refuel nearby vehicle
-- ---------------------------------------------------------------------------

local function doTanica()
    if not tanicaEnabled then return end

    local ped = PlayerPedId()
    if IsPedCuffed(ped) then return end

    if not HasPedGotWeapon(ped, 883325847, false) then
        exports.striano_combat:submexError("Np jerrycan.")
        return
    end

    if not cylexVehicle or cylexVehicle == 0 then return end
    if IsPedInAnyVehicle(ped) then return end

    -- verify holding jerrycan
    local current = GetSelectedPedWeapon(ped)
    if current ~= GetHashKey("WEAPON_PETROLCAN") then
        exports.striano_combat:submexError("No jerrycan detected.")
        return
    end

    RemoveWeaponFromPed(ped, 883325847)
    tanicaEnabled = false

    NetworkRequestControlOfEntity(cylexVehicle)
    local prevFuel = GetVehicleFuelLevel(cylexVehicle)
    makeEntityFaceEntity(ped, cylexVehicle)
    ExecuteCommand("e c")
    ExecuteCommand("e benzina2")
    Wait(500)

    SetCurrentPedWeapon(ped, -1569615261, true)
    FreezeEntityPosition(ped, true)
    Wait(3500)
    FreezeEntityPosition(ped, false)
    ExecuteCommand("e cc")

    -- add random fuel
    local added    = math.random(10, 20)
    SetFuel(cylexVehicle, prevFuel + added)
    exports.striano_combat:submexInfo("Jerrycan fuel " .. tostring(added) .. "l.")

    -- spawn visual jerrycan prop and hand anim
    local pedCoords = GetEntityCoords(ped)
    local canObj    = CreateObject(GetHashKey("w_am_jerrycan"),
                                   pedCoords.x, pedCoords.y, pedCoords.z + 0.2,
                                   true, true, true)
    local boneIdx   = GetPedBoneIndex(ped, 18905)
    AttachEntityToEntity(canObj, ped, boneIdx,
                         0.12, 0.028, 0.001,
                         70.0, 100.0, 180.0,
                         true, true, false, true, 1, true)

    local animDict = "gestures@f@standing@casual"
    local animClip = "gesture_hand_down"
    Streaming.RequestAnimDict(animDict, function()
        TaskPlayAnim(ped, animDict, animClip, 2.0, 2.0, 2200, 51, 0, false, false, false)
        Wait(350)
        SetEntityNoCollisionEntity(canObj, cylexVehicle, false)
        SetModelAsNoLongerNeeded(canObj)
        DetachEntity(canObj, true, true)
        ExecuteCommand("e puliscimani")
        Wait(5500)
        DeleteEntity(canObj)
    end)

    Wait(250)
    tanicaEnabled = true
end

-- ---------------------------------------------------------------------------
-- /portev (in-vehicle mode) — open NUI or on-foot fallback
-- ---------------------------------------------------------------------------

local function portevCommand()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then
        if IsPedCuffed(ped) then return end

        local veh = GetVehiclePedIsIn(ped, false)
        cylexVehicle = veh

        if veh ~= 0 then
            if GetIsVehicleEngineRunning(veh) then
                if IsPedInAnyVehicle(ped) then
                    EnableGUI(true, veh)
                else
                    PorteVeicolo()
                end
            else
                -- engine off: needs key or unlocked
                if veh ~= 0 then
                    local plate   = GetVehicleNumberPlateText(veh)
                    if HasKey(plate) then
                        if IsPedInAnyVehicle(ped) then
                            EnableGUI(true, veh)
                        else
                            PorteVeicolo()
                        end
                    else
                        if GetIsVehicleEngineRunning(veh) then
                            if GetVehicleDoorLockStatus(veh) ~= 2 then
                                EnableGUI(true, veh)
                            end
                        else
                            exports.striano_combat:submexError(
                                "To manage a vehicle when you dont have keys need to be with engine on.")
                            local dispName = GetDisplayNameFromVehicleModel(GetEntityModel(veh))
                            exports.striano_combat:testo3d(
                                dispName .. " ~h~" .. plate .. "~h~~n~~r~No keys.")
                            Wait(1000)
                        end
                    end
                end
            end
        end
    else
        PorteVeicolo()
    end
end

-- ---------------------------------------------------------------------------
-- Engine toggle NUI callback logic (also registered as NUI callback)
-- ---------------------------------------------------------------------------

local function doToggleEngine(veh)
    if not engineToggleCooldown then return end
    engineToggleCooldown = false

    local ped = PlayerPedId()
    local model = GetEntityModel(veh)
    if model == -56009036 or model == -1963629913 then
        engineToggleCooldown = true
        return
    end

    local speed = GetEntitySpeed(veh)
    if speed >= 3.5 then
        engineToggleCooldown = true
        return
    end
    if GetVehicleClass(veh) == 13 then
        engineToggleCooldown = true
        return
    end
    if GetPedInVehicleSeat(veh, -1) ~= ped then
        engineToggleCooldown = true
        return
    end

    local engineHealth = GetVehicleEngineHealth(veh)
    if engineHealth < 800.0 then
        PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
        exports.striano_combat:submexError("Engine broken.")
        SetEntityAsMissionEntity(veh)
        SetVehicleUndriveable(veh, true)
        ExecuteCommand("e no2")
        engineToggleCooldown = true
        return
    end

    local plate = GetVehicleNumberPlateText(veh)
    if not HasKey(plate) then
        exports.striano_combat:testo3d("No keys.")
        SetEntityAsMissionEntity(veh)
        ExecuteCommand("e shrug5")
        SetVehicleEngineOn(veh, false, true, true)
        SetVehicleJetEngineOn(veh, false)
        engineToggleCooldown = true
        return
    end

    SetVehicleRadioEnabled(veh, false)
    local isRunning = GetIsVehicleEngineRunning(veh)

    if not isRunning then
        local fuelState = Entity(veh).state.fuelState
        if fuelState ~= nil and fuelState > 0 then
            SetVehicleUndriveable(veh, false)
            Wait(25)
            SetVehicleEngineOn(veh, true, false, false, true)
            SetVehicleJetEngineOn(veh, true)
            FreezeEntityPosition(veh, false)
            SetVehicleUndriveable(veh, false)
        else
            exports.striano_combat:testo3d("Fuel needed.")
            PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
            ExecuteCommand("e shrug5")
        end
    else
        SetVehicleUndriveable(veh, true)
        Wait(25)
        SetVehicleEngineOn(veh, false, false, false, true)
        SetVehicleJetEngineOn(veh, false)
        SetVehicleUndriveable(veh, true)
    end

    Wait(1500)
    engineToggleCooldown = true
end

-- ---------------------------------------------------------------------------
-- Fuel consumption loop (1 s tick)
-- ---------------------------------------------------------------------------

local fuelTrackedVeh    = nil
local fuelMovingStarted = false

CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)

        if veh ~= 0 and DoesEntityExist(veh) then
            local model = GetEntityModel(veh)
            if model ~= -56009036 and model ~= -1963629913 then

                -- track switch
                if fuelTrackedVeh ~= veh then
                    fuelTrackedVeh    = veh
                    fuelMovingStarted = false
                end

                -- ensure fuelState is initialised
                local fuelState = Entity(veh).state.fuelState
                if fuelState == nil then
                    local native = GetVehicleFuelLevel(veh)
                    if not native or native < 0 then native = 100.0 end
                    SetFuel(veh, native)
                    fuelState = native
                end

                if GetIsVehicleEngineRunning(veh) then
                    if GetVehicleClass(veh) == 13 then
                        Wait(3500)
                    elseif IsPedInVehicle(ped, veh, true) then
                        local engineHealth = GetVehicleEngineHealth(veh)

                        -- engine warning at 800–900
                        if engineHealth > 800.0 and engineHealth < 900.0 and not knockSuspended then
                            if not tyreCheckInProgress then
                                tyreCheckInProgress = true
                                exports.striano_combat:submexError("Vehicle damage, on more hit and will be broken.")
                                PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
                            end
                        end

                        -- engine broken
                        if engineHealth > 0.0 and engineHealth < 800.0 then
                            SetVehicleUndriveable(veh, false)
                            SetVehicleEngineHealth(veh, 0.0)
                            PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
                        end

                        -- empty fuel
                        if fuelState ~= nil and fuelState <= 0 then
                            if math.random(1, 100) >= 50 then
                                exports.striano_combat:testo3d("Need fuel.")
                                PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
                                SetVehicleEngineOn(veh, false, false, false, true)
                                SetVehicleJetEngineOn(veh, false)
                                SetVehicleUndriveable(veh, true)
                                Wait(50)
                                SetVehicleEngineOn(veh, false, false, false, true)
                                SetVehicleJetEngineOn(veh, false)
                                FreezeEntityPosition(veh, true)
                            end
                        elseif engineHealth < 800.0 then
                            if math.random(1, 100) >= 50 then
                                exports.striano_combat:testo3d("Broken engine.")
                                SetVehicleEngineOn(veh, false, false, false, true)
                                SetVehicleJetEngineOn(veh, false)
                                PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
                            end
                        end
                    end
                end
            end
        else
            fuelTrackedVeh    = nil
            fuelMovingStarted = false
            Wait(2000)
        end
    end
end)

-- ---------------------------------------------------------------------------
-- Fuel drain loop (1 s tick, speed-scaled)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)

        if veh == 0 then
            fuelTrackedVeh    = nil
            fuelMovingStarted = false
            Wait(2000)
        else
            if not DoesEntityExist(veh) then goto continue end

            if fuelTrackedVeh ~= veh then
                fuelTrackedVeh    = veh
                fuelMovingStarted = false
            end

            if not GetIsVehicleEngineRunning(veh) then
                Wait(1000)
                goto continue
            end

            local fuelState = Entity(veh).state.fuelState
            if fuelState == nil then goto continue end
            if fuelState <= 0.0 then
                fuelState = GetVehicleFuelLevel(veh)
            end

            local speedKmh = GetEntitySpeed(veh) * 3.6
            if not fuelMovingStarted and speedKmh >= 10.0 then
                fuelMovingStarted = true
            end
            if not fuelMovingStarted then goto continue end

            -- drain rate by speed bracket
            local drain = 0.0
            if     speedKmh < 3.0   then drain = 0.0
            elseif speedKmh < 30.0  then drain = 0.01
            elseif speedKmh < 60.0  then drain = 0.05
            elseif speedKmh < 100.0 then drain = 0.015
            elseif speedKmh < 140.0 then drain = 0.1
            else                         drain = 0.5
            end

            -- extra drain when accelerating hard
            if speedKmh >= 3.0 then
                if IsControlPressed(0, 71) or IsControlPressed(0, 87) then
                    drain = drain + 0.05
                end
            end

            if drain > 0.0 then
                local newFuel = fuelState - drain
                if newFuel < 0.0 then newFuel = 0.0 end
                SetFuel(veh, newFuel)
            end
        end

        ::continue::
    end
end)

-- ---------------------------------------------------------------------------
-- Crash-detection loop (500 ms tick)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        Wait(500)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)

        if not DoesEntityExist(veh) then
            prevBodyHealth = 0
            prevSpeedMph   = 0
            Wait(2000)
        else
            local model = GetEntityModel(veh)
            if model == -56009036 or model == -1963629913 then goto skipCrash end

            local bodyHealth = GetVehicleBodyHealth(veh)
            local speedMph   = GetEntitySpeed(veh) * 2.23

            if bodyHealth ~= prevBodyHealth and speedMph ~= prevSpeedMph then
                local healthDrop = not knockSuspended and bodyHealth < prevBodyHealth
                                    and (prevBodyHealth - bodyHealth) >= 25
                local speedDrop  = not knockSuspended and speedMph < prevSpeedMph
                                    and (prevSpeedMph - speedMph) >= 35

                if not knockSuspended then
                    if prevBodyHealth == 0 then
                        prevBodyHealth = bodyHealth
                    else
                        if healthDrop then
                            prevBodyHealth = 0
                        end
                    end

                    if prevSpeedMph == 0 then
                        prevSpeedMph = speedMph
                    else
                        if speedDrop then
                            prevSpeedMph = 0
                        end
                    end
                else
                    prevBodyHealth = bodyHealth
                    prevSpeedMph   = speedMph
                end

                if healthDrop and speedDrop then
                    onVehicleCrash()
                    prevBodyHealth = 0
                    prevSpeedMph   = 0
                end
            end

            -- secondary: sharp speed drop alone
            if speedMph ~= prevSpeedMph and not knockSuspended then
                if speedMph < prevSpeedMph then
                    if (prevSpeedMph - speedMph) >= 95 then
                        onVehicleCrash()
                        prevBodyHealth = 0
                        prevSpeedMph   = 0
                    end
                else
                    prevSpeedMph = speedMph
                end
            end
        end

        ::skipCrash::
    end
end)

-- ---------------------------------------------------------------------------
-- Bike knock-off thread (0 ms tick)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        PlayerFallOffBikeVelocityVectorAccelerationsCheck()
        Wait(0)
    end
end)

-- ---------------------------------------------------------------------------
-- Vehicle HUD thread (100 ms / 1 s)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, true) then
            local veh = GetVehiclePedIsIn(ped, false)
            if GetEntityModel(veh) ~= GetHashKey("invisible") then
                updateVehicleHUD()
                Wait(100)
            end
        else
            if vehicleHudVisible then
                vehicleHudVisible = false
                SendNUIMessage({ action = "hideVehicleHud" })
                DisplayRadar(false)
                ExecuteCommand("prova3 ")
                ExecuteCommand("guidaBase")
            end
            Wait(1000)
        end
    end
end)

-- ---------------------------------------------------------------------------
-- Engine not running: disable certain controls (horn, handbrake, etc.)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        local ped   = PlayerPedId()
        local inVeh = IsPedInAnyVehicle(ped, true)
        local wait  = 1000

        if inVeh then
            wait = 100
            local veh = GetVehiclePedIsIn(ped, false)
            -- weapon check: if armed in vehicle, cancel driveby
            if IsPedArmed(ped, 4) or GetSelectedPedWeapon(ped) ~= -1569615261 then
                wait = 0
                if IsPedDoingDriveby(ped) then
                    if GetIsTaskActive(ped, 204) then
                        ClearPedTasks(ped)
                    end
                end
            end

            if not GetIsVehicleEngineRunning(veh) then
                -- disable throttle, brake, handbrake, steering controls
                DisableControlAction(0, 71, true)
                DisableControlAction(0, 72, true)
                DisableControlAction(0, 76, true)
                DisableControlAction(0, 63, true)
                DisableControlAction(0, 64, true)
            else
                Wait(500)
                SetUserRadioControlEnabled(false)
                if GetPlayerRadioStationName() ~= nil then
                    SetVehRadioStation(veh, "OFF")
                end
            end

            if not IsEntityAMissionEntity(veh) then
                SetEntityAsMissionEntity(veh, true, true)
            end
        end

        Wait(wait)
    end
end)

-- ---------------------------------------------------------------------------
-- Cruise control activation thread (100 ms)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        Wait(100)

        if not IsPedInAnyVehicle(PlayerPedId(), false) then
            if cruiseSilent then cruiseSilent = false end
            Wait(1000)
            goto cruiseContinue
        end

        if not (cruiseActivating or possocruisefunc()) then
            goto cruiseContinue
        end

        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if not veh or veh == 0 then goto cruiseContinue end
        if GetPedInVehicleSeat(veh, -1) ~= ped then goto cruiseContinue end
        if IsPedInAnyBoat(ped) then goto cruiseContinue end
        if IsThisModelABicycle(GetEntityModel(veh)) then goto cruiseContinue end
        if not IsEntityAVehicle(veh) then goto cruiseContinue end
        if GetVehicleFuelLevel(veh) <= 0 then goto cruiseContinue end
        if cruiseTargetKmh <= 0 then goto cruiseContinue end

        local speedMs = GetEntitySpeed(veh)
        local targetMs = math.floor(cruiseTargetKmh / 4.2)

        if speedMs >= targetMs then
            cruiseActivating = false
            currSpeed   = speedMs
            cruiseIsOn  = true
            cruiseSpeed = currSpeed
            Wait(100)
            local maxSpeed = (cruiseIsOn and cruiseSpeed and cruiseSpeed > 0)
                              and cruiseSpeed
                              or GetVehicleHandlingFloat(veh, "CHandlingData", "fInitialDriveMaxFlatVel")
            SetEntityMaxSpeed(veh, maxSpeed)
            Wait(100)
        end

        ::cruiseContinue::
    end
end)

-- ---------------------------------------------------------------------------
-- Tyre check thread (9 s tick)
-- ---------------------------------------------------------------------------

CreateThread(function()
    while true do
        Wait(9000)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh and veh ~= 0 then
            CheckRuote(veh)
        end
    end
end)

-- ---------------------------------------------------------------------------
-- HUD startup: fade-in then hide
-- ---------------------------------------------------------------------------

CreateThread(function()
    Wait(1000)
    hudEnabled = false
    SendNUIMessage({ action = "toggleHud", state = hudEnabled })
    SendNUIMessage({ action = "hideVehicleHud" })
end)

-- ---------------------------------------------------------------------------
-- Net events
-- ---------------------------------------------------------------------------

RegisterNetEvent("bike:knockOff")
AddEventHandler("bike:knockOff", function(vehNetId, accel, isVertical)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    KnockFromVehicle(ped, veh, accel, isVertical)
end)

RegisterNetEvent("setBenzina")
AddEventHandler("setBenzina", function(veh, level)
    if not (veh and veh ~= 0 and DoesEntityExist(veh)) then return end
    if level == nil then return end
    level = tonumber(level) or 0.0
    if level > 100 then level = 100 end
    if level < 0   then level = 0 end

    requestControl(veh, 40)
    SetVehicleFuelLevel(veh, level + 0.0)
    SetFuel(veh, level)
end)

RegisterNetEvent("UseLockpick")
AddEventHandler("UseLockpick", function()
    hotWire()
end)

-- ---------------------------------------------------------------------------
-- NUI callbacks
-- ---------------------------------------------------------------------------

RegisterNUICallback("openDoor", function(data, cb)
    local doorIndex = tonumber(data.doorIndex)
    if cylexVehicle ~= 0 then
        local lockSt = GetVehicleDoorLockStatus(cylexVehicle)
        if lockSt == 0 or lockSt == 1 then
            if GetVehicleDoorAngleRatio(cylexVehicle, doorIndex) == 0 then
                SetVehicleDoorOpen(cylexVehicle, doorIndex, false, false)
            else
                SetVehicleDoorShut(cylexVehicle, doorIndex, false)
            end
        end
    end
    cb("ok")
end)

RegisterNUICallback("togglewindow", function(data, cb)
    local windowIndex = tonumber(data.windowIndex)
    local ped = PlayerPedId()
    if cylexVehicle ~= 0 and IsPedInAnyVehicle(ped) then
        if IsVehicleWindowIntact(cylexVehicle, windowIndex) then
            RollDownWindow(cylexVehicle, windowIndex)
        else
            RollUpWindow(cylexVehicle, windowIndex)
            if not IsVehicleWindowIntact(cylexVehicle, windowIndex) then
                RollDownWindow(cylexVehicle, windowIndex)
            end
        end
    end
    cb("ok")
end)

RegisterNUICallback("toggleengine", function(data, cb)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then
        local veh = GetVehiclePedIsIn(ped, false)
        doToggleEngine(veh)
    end
    if cb then cb("ok") end
end)

RegisterNUICallback("togglelock", function(data, cb)
    if cylexVehicle ~= nil then
        local model = GetEntityModel(cylexVehicle)
        if model ~= -56009036 and model ~= -1963629913 then
            ChiusuraVeicolo(cylexVehicle)
        end
    end
end)

RegisterNUICallback("usaAnchor", function(data, cb)
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then
        local veh = GetVehiclePedIsIn(ped, false)
        local model = GetEntityModel(veh)
        if model ~= -56009036 and model ~= -1963629913 then
            ExecuteCommand("ancora")
        end
    end
end)

RegisterNUICallback("escape", function(data, cb)
    menuActive = false
    SetNuiFocus(false, false)
    SendNUIMessage({ type = "enablecarmenu", enable = false })
    ExecuteCommand("prova3 ")
    cb("ok")
end)

-- ---------------------------------------------------------------------------
-- Commands
-- ---------------------------------------------------------------------------

--- /hudoff — hide the main HUD
RegisterCommand("hudoff", function()
    hudEnabled = false
    SendNUIMessage({ action = "toggleHud", state = hudEnabled })
end, false)

--- /debugplate — print plate normalisation and key status
RegisterCommand("debugplate", function()
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    if veh == 0 then
        print("non sei in veicolo")
        return
    end
    local raw  = GetVehicleNumberPlateText(veh)
    local norm = normalisePlate(raw)
    print("RAW PLATE:", raw)
    print("NORMALIZED:", norm)
    print("CHECK:", norm, "TMP_" .. norm)
    print("HASKEY:", HasKey(raw))
end, false)

--- /setfuel <level> — (dev) force set fuel on current vehicle
RegisterCommand("setfuel", function(source, args)
    local levelArg = args[1]
    if not levelArg then
        exports.striano_combat:submexError("Insert fuel.")
        return
    end
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped) then
        exports.striano_combat:submexError("Need to be in the vehicle.")
        return
    end
    local veh   = GetVehiclePedIsIn(ped, false)
    local level = math.max(0.0, math.min(100.0, tonumber(levelArg) or 0))
    SetVehicleFuelLevel(veh, level)
    SetFuel(veh, level)
    Entity(veh).state:set("fuelState", level, true)
    print("^2[FUEL]^7 Set:", level,
          "Native:", GetVehicleFuelLevel(veh),
          "State:", Entity(veh).state.fuelState)
    exports.striano_core:TriggerServerCallback("garage:validateVehicle",
        function(_) end,
        exports.striano_core:GetVehProperties(veh),
        GetVehicleDirtLevel(veh),
        level)
end, false)

--- /tanica — use held jerrycan to refuel nearby vehicle
RegisterCommand("tanica", function()
    doTanica()
end, false)

--- /portev — open vehicle management (in-vehicle or on-foot)
RegisterKeyMapping("portev", "Manage Vehicle", "keyboard", "u")
RegisterCommand("portev", function()
    portevCommand()
end, false)

--- /neon — toggle all neon lights on current vehicle (1.25 s cooldown)
RegisterCommand("neon", function()
    if neonCooldown then return end
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if not (veh and IsPedInAnyVehicle(ped, false)
            and GetPedInVehicleSeat(veh, -1) == ped) then
        exports.striano_combat:submexError("Devi essere in un veicolo con i neon.")
        return
    end
    toggleNeonLights()
    neonCooldown = true
    Wait(1250)
    neonCooldown = false
end, false)

--- /cruise <kmh> / /cru <kmh> / /c <kmh>
local function cruiseCmd(source, args)
    fCruise(args[1])
end
RegisterCommand("cruise",        cruiseCmd, false)
RegisterCommand("cru",           cruiseCmd, false)
RegisterCommand("c",             cruiseCmd, false)

--- /cruisedialog — ask for kmh via input
RegisterCommand("cruisedialog", function()
    fCruiseDialog()
end, false)

--- /cruisehide <kmh> — set cruise silently
RegisterCommand("cruisehide", function(source, args)
    fCruise(args[1], false)
end, false)

--- /disattivacruise — deactivate cruise
RegisterCommand("disattivacruise", function()
    cruiseTargetKmh = 0
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    currSpeed  = GetEntitySpeed(veh)
    cruiseIsOn = false
    cruiseSpeed = currSpeed
    Wait(100)
    resetMaxSpeed(veh)
end, false)

--- /cru2 — toggle passenger-seat cruise at 50 kmh
RegisterCommand("cru2", function()
    fCruise2()
end, false)

--- /stopcru2 — cancel cru2 mode
RegisterCommand("stopcru2", function()
    if not cruiseMode2Active then return end
    cruiseTargetKmh   = 0
    cruiseMode2Active = false
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    currSpeed  = GetEntitySpeed(veh)
    cruiseIsOn = false
    cruiseSpeed = currSpeed
    Wait(100)
    resetMaxSpeed(veh)
    Wait(100)
end, false)

-- ---------------------------------------------------------------------------
-- Exports
-- ---------------------------------------------------------------------------

exports("getCylexVeh", function()
    return cylexVehicle
end)

exports("setCylexVeh", function(veh)
    cylexVehicle = veh
end)

exports("toggleChiusura", function(veh)
    local plate = normalisePlate(GetVehicleNumberPlateText(veh))
    if HasKey(plate) then
        ChiusuraVeicolo(veh)
    end
end)
