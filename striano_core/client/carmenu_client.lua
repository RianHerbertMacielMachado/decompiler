local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1
L0_1 = true
L1_1 = false
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = false
  L0_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "toggleHud"
  L2_2 = L0_1
  L1_2.state = L2_2
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hideVehicleHud"
  L0_2(L1_2)
end
L2_1(L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.0f"
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
L3_1 = RegisterCommand
L4_1 = "hudoff"
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = false
  L0_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "toggleHud"
  L2_2 = L0_1
  L1_2.state = L2_2
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedInAnyVehicle
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L1_2 then
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = GetEntityModel
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetHashKey
    L4_2 = "invisible"
    L3_2 = L3_2(L4_2)
    if L2_2 ~= L3_2 then
      L2_2 = L1_1
      if not L2_2 then
        L2_2 = true
        L1_1 = L2_2
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "showVehicleHud"
        L2_2(L3_2)
        L2_2 = FreezeEntityPosition
        L3_2 = L1_2
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = ExecuteCommand
        L3_2 = "prova3 Use /park to store your vehicles."
        L2_2(L3_2)
      end
      L2_2 = GetVehicleEngineHealth
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = 800
      if L2_2 > L3_2 then
        L2_2 = Entity
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L2_2 = L2_2.state
        L2_2 = L2_2.fuelState
        if nil ~= L2_2 then
          L3_2 = SendNUIMessage
          L4_2 = {}
          L4_2.action = "updateVehicleHud"
          L4_2.fuel = L2_2
          L5_2 = math
          L5_2 = L5_2.floor
          L6_2 = GetEntitySpeed
          L7_2 = L1_2
          L6_2 = L6_2(L7_2)
          L6_2 = L6_2 * 3.6
          L5_2 = L5_2(L6_2)
          L4_2.speed = L5_2
          L5_2 = GetVehicleCurrentGear
          L6_2 = L1_2
          L5_2 = L5_2(L6_2)
          L4_2.gear = L5_2
          L5_2 = L2_1
          L6_2 = GetVehicleEngineHealth
          L7_2 = L1_2
          L6_2, L7_2 = L6_2(L7_2)
          L5_2 = L5_2(L6_2, L7_2)
          L5_2 = L5_2 - 800
          L6_2 = "%"
          L5_2 = L5_2 .. L6_2
          L4_2.engineHealth = L5_2
          L3_2(L4_2)
        end
      else
        L2_2 = SendNUIMessage
        L3_2 = {}
        L3_2.action = "updateVehicleHud"
        L4_2 = L2_1
        L5_2 = GetVehicleFuelLevel
        L6_2 = L1_2
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L3_2.fuel = L4_2
        L4_2 = math
        L4_2 = L4_2.floor
        L5_2 = GetEntitySpeed
        L6_2 = L1_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 * 3.6
        L4_2 = L4_2(L5_2)
        L3_2.speed = L4_2
        L4_2 = GetVehicleCurrentGear
        L5_2 = L1_2
        L4_2 = L4_2(L5_2)
        L3_2.gear = L4_2
        L3_2.engineHealth = "\226\157\140"
        L2_2(L3_2)
      end
    end
  end
end
updateVehicleHUD = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityHealth
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - 100
  L2_2 = GetPedArmour
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.getStatusClient
  L5_2 = "fame"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.getStatusClient
  L6_2 = "sete"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = exports
  L5_2 = L5_2.striano_core
  L6_2 = L5_2
  L5_2 = L5_2.getStatusClient
  L7_2 = "stress"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.getStatusClient
  L8_2 = "igiene"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Wait
  L8_2 = 1000
  L7_2(L8_2)
  L7_2 = L2_1
  L8_2 = L3_2 / 1000000
  L8_2 = L8_2 * 100
  L7_2 = L7_2(L8_2)
  L8_2 = L2_1
  L9_2 = L4_2 / 1000000
  L9_2 = L9_2 * 100
  L8_2 = L8_2(L9_2)
  L9_2 = L2_1
  L10_2 = L5_2 / 1000000
  L10_2 = L10_2 * 100
  L9_2 = L9_2(L10_2)
  L10_2 = L2_1
  L11_2 = L6_2 / 1000000
  L11_2 = L11_2 * 100
  L10_2 = L10_2(L11_2)
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = GetPlayerSprintStaminaRemaining
  L13_2 = PlayerId
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = 100
  L12_2 = L13_2 - L12_2
  L11_2 = L11_2(L12_2)
  L12_2 = math
  L12_2 = L12_2.floor
  L13_2 = GetPlayerUnderwaterTimeRemaining
  L14_2 = PlayerId
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2()
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L13_2 / 0.1
  L12_2 = L12_2(L13_2)
  L13_2 = 10
  L14_2 = 50 * L13_2
  L14_2 = L14_2 - 100
  L15_2 = 200
  if L14_2 < L15_2 then
    L14_2 = 100
  end
  L15_2 = GetEntityHealth
  L16_2 = L0_2
  L15_2 = L15_2(L16_2)
  if 9999999999 == L15_2 then
    L1_2 = 0
  else
    L15_2 = GetEntityHealth
    L16_2 = L0_2
    L15_2 = L15_2(L16_2)
    L1_2 = L15_2 - 100
  end
  L15_2 = SendNUIMessage
  L16_2 = {}
  L16_2.action = "updateStatusHud"
  L16_2.health = L1_2
  L17_2 = L2_2 or L17_2
  if not L2_2 then
    L17_2 = 0
  end
  L16_2.armor = L17_2
  L17_2 = L11_2 or L17_2
  if not L11_2 then
    L17_2 = 100
  end
  L16_2.stamina = L17_2
  L17_2 = L12_2 or L17_2
  if not L12_2 then
    L17_2 = 100
  end
  L16_2.oxygen = L17_2
  L16_2.hunger = L7_2
  L16_2.thirst = L8_2
  L17_2 = L9_2 or L17_2
  if not L9_2 then
    L17_2 = 0
  end
  L16_2.stress = L17_2
  L17_2 = GetPlayerServerId
  L18_2 = PlayerId
  L18_2 = L18_2()
  L17_2 = L17_2(L18_2)
  L16_2.playeriddi = L17_2
  L16_2.igiene = L10_2
  L15_2(L16_2)
end
updateStatusHUD = L3_1
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityModel
      L2_2 = GetVehiclePedIsIn
      L3_2 = L0_2
      L4_2 = false
      L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = GetHashKey
      L3_2 = "invisible"
      L2_2 = L2_2(L3_2)
      if L1_2 ~= L2_2 then
        L1_2 = updateVehicleHUD
        L1_2()
        L1_2 = Wait
        L2_2 = 100
        L1_2(L2_2)
    end
    else
      L1_2 = L1_1
      if L1_2 then
        L1_2 = false
        L1_1 = L1_2
        L1_2 = SendNUIMessage
        L2_2 = {}
        L2_2.action = "hideVehicleHud"
        L1_2(L2_2)
        L1_2 = DisplayRadar
        L2_2 = false
        L1_2(L2_2)
        L1_2 = ExecuteCommand
        L2_2 = "prova3 "
        L1_2(L2_2)
        L1_2 = ExecuteCommand
        L2_2 = "guidaBase"
        L1_2(L2_2)
      end
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
  end
end
L3_1(L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%s+"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.upper
  return L1_2(L2_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L1_2 = L1_2.keysHeld
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2[L2_2]
  L3_2 = true == L3_2
  return L3_2
end
HasKey = L4_1
L4_1 = RegisterCommand
L5_1 = "debugplate"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if 0 == L0_2 then
    L1_2 = print
    L2_2 = "non sei in veicolo"
    return L1_2(L2_2)
  end
  L1_2 = GetVehicleNumberPlateText
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = print
  L4_2 = "RAW PLATE:"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "NORMALIZED:"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "CHECK:"
  L5_2 = L2_2
  L6_2 = "TMP_"
  L7_2 = L2_2
  L6_2 = L6_2 .. L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = print
  L4_2 = "HASKEY:"
  L5_2 = HasKey
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.OpenInput
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = {}
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
OpenInput = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A1_2 = 40
  end
  if 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_13::
  L2_2 = NetworkHasControlOfEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = NetworkRequestControlOfEntity
  L3_2 = A0_2
  L2_2(L3_2)
  while A1_2 > 0 do
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = NetworkHasControlOfEntity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = NetworkRequestControlOfEntity
    L3_2 = A0_2
    L2_2(L3_2)
    A1_2 = A1_2 - 1
  end
  L2_2 = NetworkHasControlOfEntity
  L3_2 = A0_2
  return L2_2(L3_2)
end
function L5_1(A0_2)
  local L1_2, L2_2
  if 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_10::
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = NetworkRegisterEntityAsNetworked
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = VehToNet
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or 0 == L1_2 then
    L2_2 = 0
    return L2_2
  end
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = 0.0
  if nil == A0_2 then
    L1_2 = 3.0
  else
    L1_2 = A0_2
  end
  L2_2 = Giocatori
  L2_2 = L2_2()
  L3_2 = -1
  L4_2 = -1
  L5_2 = nil
  L6_2 = false
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = PlayerId
  L8_2 = L8_2()
  if nil == L5_2 then
    L6_2 = true
    L9_2 = GetEntityCoords
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L5_2 = L9_2
  end
  L9_2 = 1
  L10_2 = #L2_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetPlayerPed
    L14_2 = L2_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L6_2 then
      if not L6_2 then
        goto lbl_57
      end
      L14_2 = L2_2[L12_2]
      if L14_2 == L8_2 then
        goto lbl_57
      end
    end
    L14_2 = GetEntityCoords
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L15_2 = vector3
    L16_2 = L5_2.x
    L17_2 = L5_2.y
    L18_2 = L5_2.z
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L15_2 = L14_2 - L15_2
    L15_2 = #L15_2
    if -1 == L3_2 or L3_2 > L15_2 and L1_2 > L15_2 then
      L4_2 = L2_2[L12_2]
      L3_2 = L15_2
    end
    ::lbl_57::
  end
  L9_2 = L4_2
  L10_2 = L3_2
  return L9_2, L10_2
end
PlayerVicino = L6_1
ConsumtionRate = 250
cruiseIsOn = false
currSpeed = 0.0
cruiseSpeed = 999.0
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L7_1 = false
L8_1 = 0
L9_1 = exports
L10_1 = "getCylexVeh"
function L11_1()
  local L0_2, L1_2
  L0_2 = L8_1
  return L0_2
end
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "setCylexVeh"
function L11_1(A0_2)
  local L1_2
  L8_1 = A0_2
end
L9_1(L10_1, L11_1)
L9_1 = false
L10_1 = false
L11_1 = true
function L12_1()
  local L0_2, L1_2
  L0_2 = enable
  if L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L8_1
      if 0 ~= L0_3 then
        L0_3 = L7_1
        if L0_3 then
          L0_3 = IsPedInAnyVehicle
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
          if not L0_3 then
            L0_3 = GetEntityCoords
            L1_3 = L8_1
            L0_3 = L0_3(L1_3)
            L1_3 = DrawMarker
            L2_3 = 1
            L3_3 = L0_3.x
            L4_3 = L0_3.y
            L5_3 = L0_3.z
            L5_3 = L5_3 + 0.03
            L6_3 = 0.0
            L7_3 = 0.0
            L8_3 = 0.0
            L9_3 = 0
            L10_3 = 0.0
            L11_3 = 0.0
            L12_3 = 0.1
            L13_3 = 0.1
            L14_3 = 2.0
            L15_3 = 240
            L16_3 = 255
            L17_3 = 0
            L18_3 = 150
            L19_3 = false
            L20_3 = true
            L21_3 = 2
            L22_3 = false
            L23_3 = false
            L24_3 = false
            L25_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
          end
          L0_3 = refreshUI
          L0_3()
        else
          return
        end
      end
    end
  end
  L0_2(L1_2)
end
loopMain = L12_1
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = 1000
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = IsPedInAnyVehicle
    L3_2 = L1_2
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L0_2 = 100
      L2_2 = IsPedArmed
      L3_2 = L1_2
      L4_2 = 4
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = GetSelectedPedWeapon
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if -1569615261 == L2_2 then
          goto lbl_37
        end
      end
      L0_2 = 0
      L2_2 = IsPedDoingDriveby
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = GetIsTaskActive
        L3_2 = L1_2
        L4_2 = 204
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = ClearPedTasks
          L3_2 = L1_2
          L2_2(L3_2)
        end
      end
    end
    ::lbl_37::
    L2_2 = Wait
    L3_2 = L0_2
    L2_2(L3_2)
  end
end
L12_1(L13_1)
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityModel
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if -56009036 ~= L2_2 then
    L2_2 = GetEntityModel
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if -1963629913 ~= L2_2 then
      if A0_2 then
        L2_2 = IsEntityPositionFrozen
        L3_2 = PlayerPedId
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        if not L2_2 then
          L2_2 = loopMain
          L2_2()
          L2_2 = true
          L7_1 = L2_2
          L2_2 = GetVehicleNumberPlateText
          L3_2 = A1_2
          L2_2 = L2_2(L3_2)
          L3_2 = GetDisplayNameFromVehicleModel
          L4_2 = GetEntityModel
          L5_2 = A1_2
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          L4_2 = GetVehicleNumberPlateText
          L5_2 = A1_2
          L4_2 = L4_2(L5_2)
          L5_2 = exports
          L5_2 = L5_2.striano_combat
          L6_2 = L5_2
          L5_2 = L5_2.testo3d
          L7_2 = L3_2
          L8_2 = " ~h~"
          L9_2 = L4_2
          L7_2 = L7_2 .. L8_2 .. L9_2
          L5_2(L6_2, L7_2)
        end
      else
        L2_2 = false
        L7_1 = L2_2
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
      L2_2 = SetNuiFocus
      L3_2 = A0_2
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.type = "enablecarmenu"
      L3_2.enable = A0_2
      L2_2(L3_2)
    end
  end
end
EnableGUI = L12_1
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = IsPedInAnyVehicle
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if L0_2 then
      L0_2 = GetVehiclePedIsIn
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = false
      L0_2 = L0_2(L1_2, L2_2)
      L1_2 = GetIsVehicleEngineRunning
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = DisableControlAction
        L2_2 = 0
        L3_2 = 71
        L1_2(L2_2, L3_2)
        L1_2 = DisableControlAction
        L2_2 = 0
        L3_2 = 72
        L1_2(L2_2, L3_2)
        L1_2 = DisableControlAction
        L2_2 = 0
        L3_2 = 76
        L1_2(L2_2, L3_2)
        L1_2 = DisableControlAction
        L2_2 = 0
        L3_2 = 63
        L1_2(L2_2, L3_2)
        L1_2 = DisableControlAction
        L2_2 = 0
        L3_2 = 64
        L1_2(L2_2, L3_2)
      else
        L1_2 = Wait
        L2_2 = 500
        L1_2(L2_2)
        L1_2 = SetUserRadioControlEnabled
        L2_2 = false
        L1_2(L2_2)
        L1_2 = GetPlayerRadioStationName
        L1_2 = L1_2()
        if nil ~= L1_2 then
          L1_2 = SetVehRadioStation
          L2_2 = L0_2
          L3_2 = "OFF"
          L1_2(L2_2, L3_2)
        end
      end
      L1_2 = IsEntityAMissionEntity
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = L0_2
        L3_2 = true
        L4_2 = true
        L1_2(L2_2, L3_2, L4_2)
      end
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L12_1(L13_1)
L12_1 = RegisterKeyMapping
L13_1 = "portev"
L14_1 = "Manage Vehicle"
L15_1 = "keyboard"
L16_1 = "u"
L12_1(L13_1, L14_1, L15_1, L16_1)
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 4.0
  L6_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = CastRayPointToPoint
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 10
  L11_2 = L0_2
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetRaycastResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  return L8_2
end
VehicleInFront = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedCuffed
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L7_1
    if not L1_2 then
      L1_2 = IsPedInAnyVehicle
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
      else
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = 3.0
        L3_2 = GetClosestVehicle
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = L1_2.z
        L7_2 = L2_2
        L8_2 = 0
        L9_2 = 70
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        L8_1 = L3_2
        L3_2 = L8_1
        if nil ~= L3_2 then
          L3_2 = L8_1
          if 0 ~= L3_2 then
            goto lbl_45
          end
        end
        L3_2 = GetClosestVehicle
        L4_2 = L1_2.x
        L5_2 = L1_2.y
        L6_2 = L1_2.z
        L7_2 = L2_2
        L8_2 = 0
        L9_2 = 12294
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        L8_1 = L3_2
        ::lbl_45::
        L3_2 = L8_1
        if nil ~= L3_2 then
          L3_2 = L8_1
          if 0 ~= L3_2 then
            goto lbl_54
          end
        end
        L3_2 = VehicleInFront
        L3_2 = L3_2()
        L8_1 = L3_2
        ::lbl_54::
        L3_2 = L8_1
        if nil ~= L3_2 then
          L3_2 = L8_1
          if 0 ~= L3_2 then
            goto lbl_81
          end
        end
        L3_2 = GetOffsetFromEntityInWorldCoords
        L4_2 = L0_2
        L5_2 = 0.0
        L6_2 = L2_2
        L7_2 = 0.0
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        L4_2 = CastRayPointToPoint
        L5_2 = L1_2.x
        L6_2 = L1_2.y
        L7_2 = L1_2.z
        L8_2 = L3_2.x
        L9_2 = L3_2.y
        L10_2 = L3_2.z
        L11_2 = 30
        L12_2 = L0_2
        L13_2 = 0
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L5_2 = GetRaycastResult
        L6_2 = L4_2
        L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
        L8_1 = L9_2
        ::lbl_81::
        L3_2 = L8_1
        if 0 ~= L3_2 then
          L3_2 = L8_1
          if nil ~= L3_2 then
            L3_2 = HasPedGotWeapon
            L4_2 = L0_2
            L5_2 = 883325847
            L6_2 = false
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            if L3_2 then
              L3_2 = exports
              L3_2 = L3_2.striano_combat
              L4_2 = L3_2
              L3_2 = L3_2.submexInfo
              L5_2 = "Tanica in mano, vuoi rifornire il veicolo?"
              L3_2(L4_2, L5_2)
              while true do
                L3_2 = draw
                L4_2 = 38
                L5_2 = "Yes, refuel!"
                L6_2 = 73
                L7_2 = "Cancel"
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = IsDisabledControlPressed
                L4_2 = 0
                L5_2 = 73
                L3_2 = L3_2(L4_2, L5_2)
                if not L3_2 then
                  L3_2 = IsControlPressed
                  L4_2 = 0
                  L5_2 = 73
                  L3_2 = L3_2(L4_2, L5_2)
                  if not L3_2 then
                    L3_2 = IsDisabledControlPressed
                    L4_2 = 0
                    L5_2 = 25
                    L3_2 = L3_2(L4_2, L5_2)
                    if not L3_2 then
                      L3_2 = IsControlPressed
                      L4_2 = 0
                      L5_2 = 25
                      L3_2 = L3_2(L4_2, L5_2)
                      if not L3_2 then
                        goto lbl_136
                      end
                    end
                  end
                end
                L3_2 = exports
                L3_2 = L3_2.striano_combat
                L4_2 = L3_2
                L3_2 = L3_2.submex
                L5_2 = ""
                L3_2(L4_2, L5_2)
                do break end
                goto lbl_157
                ::lbl_136::
                L3_2 = IsDisabledControlPressed
                L4_2 = 0
                L5_2 = 38
                L3_2 = L3_2(L4_2, L5_2)
                if not L3_2 then
                  L3_2 = IsControlPressed
                  L4_2 = 0
                  L5_2 = 38
                  L3_2 = L3_2(L4_2, L5_2)
                  if not L3_2 then
                    goto lbl_157
                  end
                end
                L3_2 = exports
                L3_2 = L3_2.striano_combat
                L4_2 = L3_2
                L3_2 = L3_2.submex
                L5_2 = ""
                L3_2(L4_2, L5_2)
                L3_2 = ExecuteCommand
                L4_2 = "tanica"
                L3_2(L4_2)
                do return end
                ::lbl_157::
                L3_2 = Wait
                L4_2 = 0
                L3_2(L4_2)
              end
            end
            L3_2 = IsPedRagdoll
            L4_2 = L0_2
            L3_2 = L3_2(L4_2)
            if not L3_2 then
              L3_2 = DoesEntityExist
              L4_2 = L8_1
              L3_2 = L3_2(L4_2)
              if L3_2 then
                L3_2 = IsEntityOnScreen
                L4_2 = L8_1
                L3_2 = L3_2(L4_2)
                if L3_2 then
                  L3_2 = IsPedInAnyVehicle
                  L4_2 = L0_2
                  L3_2 = L3_2(L4_2)
                  if not L3_2 then
                    L3_2 = NetworkRequestControlOfEntity
                    L4_2 = L8_1
                    L3_2(L4_2)
                    L3_2 = GetVehicleClass
                    L4_2 = L8_1
                    L3_2 = L3_2(L4_2)
                    if 15 ~= L3_2 and 16 ~= L3_2 then
                      L4_2 = GetVehicleNumberPlateText
                      L5_2 = L8_1
                      L4_2 = L4_2(L5_2)
                      if nil ~= L4_2 then
                        L5_2 = HasKey
                        L6_2 = L4_2
                        L5_2 = L5_2(L6_2)
                        if L5_2 then
                          L5_2 = EnableGUI
                          L6_2 = true
                          L7_2 = L8_1
                          L5_2(L6_2, L7_2)
                        else
                          L5_2 = GetIsVehicleEngineRunning
                          L6_2 = L8_1
                          L5_2 = L5_2(L6_2)
                          if L5_2 then
                            L5_2 = GetVehicleDoorLockStatus
                            L6_2 = L8_1
                            L5_2 = L5_2(L6_2)
                            if 2 ~= L5_2 then
                              L5_2 = EnableGUI
                              L6_2 = true
                              L7_2 = L8_1
                              L5_2(L6_2, L7_2)
                          end
                          else
                            L5_2 = GetDisplayNameFromVehicleModel
                            L6_2 = GetEntityModel
                            L7_2 = L8_1
                            L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
                            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                            L6_2 = GetVehicleNumberPlateText
                            L7_2 = L8_1
                            L6_2 = L6_2(L7_2)
                            L7_2 = exports
                            L7_2 = L7_2.striano_combat
                            L8_2 = L7_2
                            L7_2 = L7_2.testo3d
                            L9_2 = L5_2
                            L10_2 = " ~h~"
                            L11_2 = L6_2
                            L12_2 = "~h~~n~~r~No keys."
                            L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
                            L7_2(L8_2, L9_2)
                            L7_2 = ExecuteCommand
                            L8_2 = "e shrug5"
                            L7_2(L8_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
PorteVeicolo = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GetPedInVehicleSeat
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == A0_2 then
    return A2_2
  elseif 0 ~= L3_2 then
    L4_2 = false
    return L4_2
  else
    L4_2 = true
    return L4_2
  end
end
checkSeat = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L8_1
  if 0 ~= L2_2 then
    L2_2 = checkSeat
    L3_2 = L1_2
    L4_2 = L8_1
    L5_2 = -1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L0_2.seat1 = L2_2
    L2_2 = checkSeat
    L3_2 = L1_2
    L4_2 = L8_1
    L5_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L0_2.seat2 = L2_2
    L2_2 = checkSeat
    L3_2 = L1_2
    L4_2 = L8_1
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L0_2.seat3 = L2_2
    L2_2 = checkSeat
    L3_2 = L1_2
    L4_2 = L8_1
    L5_2 = 2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L0_2.seat4 = L2_2
    L2_2 = L0_2.seat1
    if -1 == L2_2 then
      L2_2 = true
      if L2_2 then
        goto lbl_39
      end
    end
    L2_2 = false
    ::lbl_39::
    L0_2.doorAccess = L2_2
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.door0 = true
    end
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.door1 = true
    end
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 2
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.door2 = true
    end
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 3
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.door3 = true
    end
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 4
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.hood = true
    end
    L2_2 = GetVehicleDoorAngleRatio
    L3_2 = L8_1
    L4_2 = 5
    L2_2 = L2_2(L3_2, L4_2)
    if 0 ~= L2_2 then
      L0_2.trunk = true
    end
    L2_2 = IsVehicleWindowIntact
    L3_2 = L8_1
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L0_2.windowr1 = true
    end
    L2_2 = IsVehicleWindowIntact
    L3_2 = L8_1
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L0_2.windowl1 = true
    end
    L2_2 = IsVehicleWindowIntact
    L3_2 = L8_1
    L4_2 = 2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L0_2.windowr2 = true
    end
    L2_2 = IsVehicleWindowIntact
    L3_2 = L8_1
    L4_2 = 3
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L0_2.windowl2 = true
    end
    L2_2 = GetIsVehicleEngineRunning
    L3_2 = L8_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L0_2.engine = true
    else
      L0_2.engine = false
    end
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "refreshcarmenu"
    L4_2.settings = L0_2
    L3_2(L4_2)
  else
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "resetcarmenu"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "prova3 "
    L2_2(L3_2)
  end
end
refreshUI = L12_1
L12_1 = RegisterNUICallback
L13_1 = "openDoor"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tonumber
  L3_2 = A0_2.doorIndex
  L2_2 = L2_2(L3_2)
  doorIndex = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L8_1
  if 0 ~= L3_2 then
    L3_2 = GetVehicleDoorLockStatus
    L4_2 = L8_1
    L3_2 = L3_2(L4_2)
    if 1 == L3_2 or 0 == L3_2 then
      L4_2 = GetVehicleDoorAngleRatio
      L5_2 = L8_1
      L6_2 = doorIndex
      L4_2 = L4_2(L5_2, L6_2)
      if 0 == L4_2 then
        L4_2 = SetVehicleDoorOpen
        L5_2 = L8_1
        L6_2 = doorIndex
        L7_2 = false
        L8_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L4_2 = SetVehicleDoorShut
        L5_2 = L8_1
        L6_2 = doorIndex
        L7_2 = false
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "togglewindow"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2.windowIndex
  L2_2 = L2_2(L3_2)
  windowIndex = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L8_1
  if 0 ~= L3_2 then
    L3_2 = IsPedInAnyVehicle
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = IsVehicleWindowIntact
      L4_2 = L8_1
      L5_2 = windowIndex
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = RollUpWindow
        L4_2 = L8_1
        L5_2 = windowIndex
        L3_2(L4_2, L5_2)
        L3_2 = IsVehicleWindowIntact
        L4_2 = L8_1
        L5_2 = windowIndex
        L3_2 = L3_2(L4_2, L5_2)
        if not L3_2 then
          L3_2 = RollDownWindow
          L4_2 = L8_1
          L5_2 = windowIndex
          L3_2(L4_2, L5_2)
        end
      else
        L3_2 = RollDownWindow
        L4_2 = L8_1
        L5_2 = windowIndex
        L3_2(L4_2, L5_2)
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = true
L13_1 = RegisterNUICallback
L14_1 = "toggleengine"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = IsPedInAnyVehicle
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetEntityModel
    L4_2 = GetVehiclePedIsIn
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if -56009036 ~= L3_2 then
      L3_2 = GetEntityModel
      L4_2 = GetVehiclePedIsIn
      L5_2 = L2_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      if -1963629913 ~= L3_2 then
        L3_2 = L12_1
        if L3_2 then
          L3_2 = false
          L12_1 = L3_2
          L3_2 = GetVehiclePedIsIn
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          L4_2 = GetEntitySpeed
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          L5_2 = 3.5
          if L4_2 < L5_2 then
            L4_2 = GetVehicleClass
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            if 13 ~= L4_2 then
              L4_2 = GetPedInVehicleSeat
              L5_2 = L3_2
              L6_2 = -1
              L4_2 = L4_2(L5_2, L6_2)
              if L4_2 == L2_2 then
                L4_2 = GetVehicleEngineHealth
                L5_2 = L3_2
                L4_2 = L4_2(L5_2)
                L5_2 = 800.0
                if L4_2 >= L5_2 then
                  L4_2 = GetVehicleNumberPlateText
                  L5_2 = L3_2
                  L4_2 = L4_2(L5_2)
                  L5_2 = HasKey
                  L6_2 = L4_2
                  L5_2 = L5_2(L6_2)
                  if L5_2 then
                    L5_2 = SetVehicleRadioEnabled
                    L6_2 = L3_2
                    L7_2 = false
                    L5_2(L6_2, L7_2)
                    L5_2 = GetIsVehicleEngineRunning
                    L6_2 = L3_2
                    L5_2 = L5_2(L6_2)
                    if not L5_2 then
                      L5_2 = Entity
                      L6_2 = L3_2
                      L5_2 = L5_2(L6_2)
                      L5_2 = L5_2.state
                      L5_2 = L5_2.fuelState
                      L6_2 = print
                      L7_2 = "^3[ENGINE FUEL]^7 State:"
                      L8_2 = L5_2
                      L9_2 = "Native:"
                      L10_2 = GetVehicleFuelLevel
                      L11_2 = L3_2
                      L10_2, L11_2 = L10_2(L11_2)
                      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                      if nil ~= L5_2 and L5_2 > 0 then
                        L6_2 = SetVehicleUndriveable
                        L7_2 = L3_2
                        L8_2 = false
                        L6_2(L7_2, L8_2)
                        L6_2 = Wait
                        L7_2 = 25
                        L6_2(L7_2)
                        L6_2 = SetVehicleEngineOn
                        L7_2 = L3_2
                        L8_2 = true
                        L9_2 = false
                        L10_2 = false
                        L11_2 = true
                        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                        L6_2 = SetVehicleJetEngineOn
                        L7_2 = L3_2
                        L8_2 = true
                        L6_2(L7_2, L8_2)
                        L6_2 = FreezeEntityPosition
                        L7_2 = L3_2
                        L8_2 = false
                        L6_2(L7_2, L8_2)
                        L6_2 = SetVehicleUndriveable
                        L7_2 = L3_2
                        L8_2 = false
                        L6_2(L7_2, L8_2)
                      else
                        L6_2 = exports
                        L6_2 = L6_2.striano_combat
                        L7_2 = L6_2
                        L6_2 = L6_2.testo3d
                        L8_2 = "Fuel needed."
                        L6_2(L7_2, L8_2)
                        L6_2 = PlaySoundFrontend
                        L7_2 = -1
                        L8_2 = "TIMER_STOP"
                        L9_2 = "HUD_MINI_GAME_SOUNDSET"
                        L10_2 = 1
                        L6_2(L7_2, L8_2, L9_2, L10_2)
                        L6_2 = ExecuteCommand
                        L7_2 = "e shrug5"
                        L6_2(L7_2)
                      end
                    else
                      L5_2 = SetVehicleUndriveable
                      L6_2 = L3_2
                      L7_2 = true
                      L5_2(L6_2, L7_2)
                      L5_2 = Wait
                      L6_2 = 25
                      L5_2(L6_2)
                      L5_2 = SetVehicleEngineOn
                      L6_2 = L3_2
                      L7_2 = false
                      L8_2 = false
                      L9_2 = false
                      L10_2 = true
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                      L5_2 = SetVehicleJetEngineOn
                      L6_2 = L3_2
                      L7_2 = false
                      L5_2(L6_2, L7_2)
                      L5_2 = SetVehicleUndriveable
                      L6_2 = L3_2
                      L7_2 = true
                      L5_2(L6_2, L7_2)
                    end
                  else
                    L5_2 = exports
                    L5_2 = L5_2.striano_combat
                    L6_2 = L5_2
                    L5_2 = L5_2.testo3d
                    L7_2 = "No keys."
                    L5_2(L6_2, L7_2)
                    L5_2 = SetEntityAsMissionEntity
                    L6_2 = L3_2
                    L5_2(L6_2)
                    L5_2 = ExecuteCommand
                    L6_2 = "e shrug5"
                    L5_2(L6_2)
                    L5_2 = SetVehicleEngineOn
                    L6_2 = L3_2
                    L7_2 = false
                    L8_2 = true
                    L9_2 = true
                    L5_2(L6_2, L7_2, L8_2, L9_2)
                    L5_2 = SetVehicleJetEngineOn
                    L6_2 = L3_2
                    L7_2 = false
                    L5_2(L6_2, L7_2)
                  end
                else
                  L4_2 = PlaySoundFrontend
                  L5_2 = -1
                  L6_2 = "TIMER_STOP"
                  L7_2 = "HUD_MINI_GAME_SOUNDSET"
                  L8_2 = 1
                  L4_2(L5_2, L6_2, L7_2, L8_2)
                  L4_2 = exports
                  L4_2 = L4_2.striano_combat
                  L5_2 = L4_2
                  L4_2 = L4_2.submexError
                  L6_2 = "Engine broken."
                  L4_2(L5_2, L6_2)
                  L4_2 = SetEntityAsMissionEntity
                  L5_2 = L3_2
                  L4_2(L5_2)
                  L4_2 = SetVehicleUndriveable
                  L5_2 = L3_2
                  L6_2 = true
                  L4_2(L5_2, L6_2)
                  L4_2 = ExecuteCommand
                  L5_2 = "e no2"
                  L4_2(L5_2)
                end
              end
            end
          end
          L4_2 = Wait
          L5_2 = 1500
          L4_2(L5_2)
          L4_2 = true
          L12_1 = L4_2
        end
      end
    end
  end
  if A1_2 then
    L3_2 = A1_2
    L4_2 = "ok"
    L3_2(L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "togglelock"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L8_1
  if nil ~= L2_2 then
    L2_2 = GetEntityModel
    L3_2 = L8_1
    L2_2 = L2_2(L3_2)
    if -56009036 ~= L2_2 then
      L2_2 = GetEntityModel
      L3_2 = L8_1
      L2_2 = L2_2(L3_2)
      if -1963629913 ~= L2_2 then
        L2_2 = ChiusuraVeicolo
        L3_2 = L8_1
        L2_2(L3_2)
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "usaAnchor"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = IsPedInAnyVehicle
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetEntityModel
    L4_2 = GetVehiclePedIsIn
    L5_2 = L2_2
    L4_2, L5_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2)
    if -56009036 ~= L3_2 then
      L3_2 = GetEntityModel
      L4_2 = GetVehiclePedIsIn
      L5_2 = L2_2
      L4_2, L5_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2)
      if -1963629913 ~= L3_2 then
        L3_2 = ExecuteCommand
        L4_2 = "ancora"
        L3_2(L4_2)
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "escape"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L7_1 = L2_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "enablecarmenu"
  L3_2.enable = false
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "prova3 "
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "setfuel"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Insert fuel."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = IsPedInAnyVehicle
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexError
    L6_2 = "Need to be in the vehicle."
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = GetVehiclePedIsIn
  L5_2 = L3_2
  L6_2 = false
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = tonumber
  L6_2 = A1_2[1]
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submexError
    L8_2 = "Invalid fuel."
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0.0
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = 100.0
  L10_2 = L5_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = L6_2
  L6_2 = SetVehicleFuelLevel
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = SetFuel
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = Entity
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L7_2 = L6_2
  L6_2 = L6_2.set
  L8_2 = "fuelState"
  L9_2 = L5_2
  L10_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = print
  L7_2 = "^2[FUEL]^7 Set:"
  L8_2 = L5_2
  L9_2 = "Native:"
  L10_2 = GetVehicleFuelLevel
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L11_2 = "State:"
  L12_2 = Entity
  L13_2 = L4_2
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2.state
  L12_2 = L12_2.fuelState
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.TriggerServerCallback
  L8_2 = "garage:validateVehicle"
  function L9_2(A0_3)
    local L1_3
  end
  L10_2 = exports
  L10_2 = L10_2.striano_core
  L11_2 = L10_2
  L10_2 = L10_2.GetVehProperties
  L12_2 = L4_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = GetVehicleDirtLevel
  L12_2 = L4_2
  L11_2 = L11_2(L12_2)
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "tanica"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L3_2 = L11_1
  if L3_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedCuffed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = HasPedGotWeapon
      L5_2 = L3_2
      L6_2 = 883325847
      L7_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if L4_2 then
        L4_2 = L3_2
        L5_2 = L8_1
        if nil ~= L5_2 then
          L5_2 = L8_1
          if 0 ~= L5_2 then
            L5_2 = IsPedInAnyVehicle
            L6_2 = L3_2
            L5_2 = L5_2(L6_2)
            if not L5_2 then
              L5_2 = GetSelectedPedWeapon
              L6_2 = L4_2
              L5_2 = L5_2(L6_2)
              L6_2 = GetHashKey
              L7_2 = "WEAPON_PETROLCAN"
              L6_2 = L6_2(L7_2)
              if L5_2 ~= L6_2 then
                L5_2 = exports
                L5_2 = L5_2.striano_combat
                L6_2 = L5_2
                L5_2 = L5_2.submexError
                L7_2 = "No jerrycan detected."
                L5_2(L6_2, L7_2)
              else
                L5_2 = RemoveWeaponFromPed
                L6_2 = L4_2
                L7_2 = 883325847
                L5_2(L6_2, L7_2)
                L5_2 = false
                L11_1 = L5_2
                L5_2 = NetworkRequestControlOfEntity
                L6_2 = L8_1
                L5_2(L6_2)
                L5_2 = GetVehicleFuelLevel
                L6_2 = L8_1
                L5_2 = L5_2(L6_2)
                L6_2 = makeEntityFaceEntity
                L7_2 = L3_2
                L8_2 = L8_1
                L6_2(L7_2, L8_2)
                L6_2 = ExecuteCommand
                L7_2 = "e c"
                L6_2(L7_2)
                L6_2 = ExecuteCommand
                L7_2 = "e benzina2"
                L6_2(L7_2)
                L6_2 = Wait
                L7_2 = 500
                L6_2(L7_2)
                L6_2 = SetCurrentPedWeapon
                L7_2 = L4_2
                L8_2 = -1569615261
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = FreezeEntityPosition
                L7_2 = L3_2
                L8_2 = true
                L6_2(L7_2, L8_2)
                L6_2 = Wait
                L7_2 = 3500
                L6_2(L7_2)
                L6_2 = FreezeEntityPosition
                L7_2 = L3_2
                L8_2 = false
                L6_2(L7_2, L8_2)
                L6_2 = ExecuteCommand
                L7_2 = "e cc"
                L6_2(L7_2)
                L6_2 = math
                L6_2 = L6_2.random
                L7_2 = 10
                L8_2 = 20
                L6_2 = L6_2(L7_2, L8_2)
                L7_2 = SetFuel
                L8_2 = L8_1
                L9_2 = L5_2 + L6_2
                L7_2(L8_2, L9_2)
                L7_2 = exports
                L7_2 = L7_2.striano_combat
                L8_2 = L7_2
                L7_2 = L7_2.submexInfo
                L9_2 = "Jerrycan fuel "
                L10_2 = L6_2
                L11_2 = "l."
                L9_2 = L9_2 .. L10_2 .. L11_2
                L7_2(L8_2, L9_2)
                L7_2 = L3_2
                L8_2 = table
                L8_2 = L8_2.unpack
                L9_2 = GetEntityCoords
                L10_2 = L7_2
                L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L9_2(L10_2)
                L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                L11_2 = CreateObject
                L12_2 = GetHashKey
                L13_2 = "w_am_jerrycan"
                L12_2 = L12_2(L13_2)
                L13_2 = L8_2
                L14_2 = L9_2
                L15_2 = L10_2 + 0.2
                L16_2 = true
                L17_2 = true
                L18_2 = true
                L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                L12_2 = GetPedBoneIndex
                L13_2 = L7_2
                L14_2 = 18905
                L12_2 = L12_2(L13_2, L14_2)
                L13_2 = AttachEntityToEntity
                L14_2 = L11_2
                L15_2 = L7_2
                L16_2 = L12_2
                L17_2 = 0.12
                L18_2 = 0.028
                L19_2 = 0.001
                L20_2 = 70.0
                L21_2 = 100.0
                L22_2 = 180.0
                L23_2 = true
                L24_2 = true
                L25_2 = false
                L26_2 = true
                L27_2 = 1
                L28_2 = true
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                L13_2 = "gestures@f@standing@casual"
                L14_2 = "gesture_hand_down"
                L15_2 = Streaming
                L15_2 = L15_2.RequestAnimDict
                L16_2 = L13_2
                function L17_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
                  L0_3 = TaskPlayAnim
                  L1_3 = L7_2
                  L2_3 = L13_2
                  L3_3 = L14_2
                  L4_3 = 2.0
                  L5_3 = 2.0
                  L6_3 = 2200
                  L7_3 = 51
                  L8_3 = 0
                  L9_3 = false
                  L10_3 = false
                  L11_3 = false
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                  L0_3 = Wait
                  L1_3 = 350
                  L0_3(L1_3)
                  L0_3 = SetEntityNoCollisionEntity
                  L1_3 = L11_2
                  L2_3 = L8_1
                  L3_3 = false
                  L0_3(L1_3, L2_3, L3_3)
                  L0_3 = SetModelAsNoLongerNeeded
                  L1_3 = L11_2
                  L0_3(L1_3)
                  L0_3 = DetachEntity
                  L1_3 = L11_2
                  L2_3 = true
                  L3_3 = true
                  L0_3(L1_3, L2_3, L3_3)
                  L0_3 = ExecuteCommand
                  L1_3 = "e puliscimani"
                  L0_3(L1_3)
                  L0_3 = Wait
                  L1_3 = 5500
                  L0_3(L1_3)
                  L0_3 = DeleteEntity
                  L1_3 = L11_2
                  L0_3(L1_3)
                end
                L15_2(L16_2, L17_2)
                L15_2 = Wait
                L16_2 = 250
                L15_2(L16_2)
                L15_2 = true
                L11_1 = L15_2
              end
            end
          end
        end
      else
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "Np jerrycan."
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "portev"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = IsPedInAnyVehicle
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = IsPedCuffed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = GetVehiclePedIsIn
      L5_2 = L3_2
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      L8_1 = L4_2
      L4_2 = L8_1
      if 0 ~= L4_2 then
        L4_2 = GetIsVehicleEngineRunning
        L5_2 = L8_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = IsPedInAnyVehicle
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = EnableGUI
            L5_2 = true
            L6_2 = L8_1
            L4_2(L5_2, L6_2)
          else
            L4_2 = PorteVeicolo
            L4_2()
          end
      end
      else
        L4_2 = L8_1
        if 0 ~= L4_2 then
          L4_2 = GetVehicleNumberPlateText
          L5_2 = L8_1
          L4_2 = L4_2(L5_2)
          L5_2 = HasKey
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = IsPedInAnyVehicle
            L6_2 = L3_2
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L5_2 = EnableGUI
              L6_2 = true
              L7_2 = L8_1
              L5_2(L6_2, L7_2)
            else
              L5_2 = PorteVeicolo
              L5_2()
            end
          else
            L5_2 = GetIsVehicleEngineRunning
            L6_2 = L8_1
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L5_2 = GetVehicleDoorLockStatus
              L6_2 = L8_1
              L5_2 = L5_2(L6_2)
              if 2 ~= L5_2 then
                L5_2 = EnableGUI
                L6_2 = true
                L7_2 = L8_1
                L5_2(L6_2, L7_2)
            end
            else
              L5_2 = exports
              L5_2 = L5_2.striano_combat
              L6_2 = L5_2
              L5_2 = L5_2.submexError
              L7_2 = "To manage a vehicle when you dont have keys need to be with engine on."
              L5_2(L6_2, L7_2)
              L5_2 = GetDisplayNameFromVehicleModel
              L6_2 = GetEntityModel
              L7_2 = L8_1
              L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
              L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              L6_2 = GetVehicleNumberPlateText
              L7_2 = L8_1
              L6_2 = L6_2(L7_2)
              L7_2 = exports
              L7_2 = L7_2.striano_combat
              L8_2 = L7_2
              L7_2 = L7_2.testo3d
              L9_2 = L5_2
              L10_2 = " ~h~"
              L11_2 = L6_2
              L12_2 = "~h~~n~~r~No keys."
              L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
              L7_2(L8_2, L9_2)
              L7_2 = Wait
              L8_2 = 1000
              L7_2(L8_2)
            end
          end
        end
      end
  end
  else
    L4_2 = PorteVeicolo
    L4_2()
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "UseLockpick"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "UseLockpick"
function L15_1()
  local L0_2, L1_2
  L0_2 = hotWire
  L0_2()
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  if 2 == L2_2 then
    L3_2 = FreezeEntityPosition
    L4_2 = L1_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = makeEntityFaceEntity
    L4_2 = L1_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "e knock3"
    L3_2(L4_2)
    L3_2 = 0
    L4_2 = SetEntityAsMissionEntity
    L5_2 = A0_2
    L4_2(L5_2)
    while true do
      L4_2 = NetworkHasControlOfEntity
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if not (not L4_2 and L3_2 < 100) then
        break
      end
      L4_2 = DoesEntityExist
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 1
      L4_2(L5_2)
      L4_2 = NetworkRequestControlOfEntity
      L5_2 = A0_2
      L4_2(L5_2)
      L3_2 = L3_2 + 1
    end
    L4_2 = SetVehicleNeedsToBeHotwired
    L5_2 = A0_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = SetVehicleRadioEnabled
    L5_2 = A0_2
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = SetEntityAsMissionEntity
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = SetVehicleDoorsLocked
    L5_2 = A0_2
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = PlayVehicleDoorOpenSound
    L5_2 = A0_2
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 900
    L4_2(L5_2)
    L4_2 = TaskWarpPedIntoVehicle
    L5_2 = L1_2
    L6_2 = A0_2
    L7_2 = -1
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetVehicleEngineOn
    L5_2 = A0_2
    L6_2 = false
    L7_2 = true
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = SetVehicleJetEngineOn
    L5_2 = A0_2
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexInfo
    L6_2 = "Vehicle lockpicked ["
    L7_2 = exports
    L7_2 = L7_2.striano_core
    L8_2 = L7_2
    L7_2 = L7_2.getInfoKey
    L9_2 = 1937710959
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = "]"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = FreezeEntityPosition
    L4_2 = L1_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetVehicleLights
    L4_2 = A0_2
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L3_2 = Wait
    L4_2 = 500
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e shrug3"
    L3_2(L4_2)
    HotWiring = false
  end
  L3_2 = false
  L10_1 = L3_2
end
lockpick2 = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L10_1
  if L0_2 then
    L0_2 = print
    L1_2 = "Lockpick antiflodd."
    L0_2(L1_2)
    return
  end
  L0_2 = IsPedInAnyVehicle
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Exit from vehicle to lockpick."
    L0_2(L1_2, L2_2)
  else
    L0_2 = GetClosestVehicle
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = 3.0
    L3_2 = 0
    L4_2 = 70
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    vehicle = L0_2
    L0_2 = vehicle
    if nil ~= L0_2 then
      L0_2 = vehicle
      if 0 ~= L0_2 then
        L0_2 = LockPickFunc
        L1_2 = vehicle
        L0_2(L1_2)
    end
    else
      L0_2 = GetClosestVehicle
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = 3.0
      L3_2 = 0
      L4_2 = 12294
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
      vehicle = L0_2
      L0_2 = vehicle
      if nil ~= L0_2 then
        L0_2 = vehicle
        if 0 ~= L0_2 then
          L0_2 = LockPickFunc
          L1_2 = vehicle
          L0_2(L1_2)
      end
      else
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submexError
        L2_2 = "No vehicle detected."
        L0_2(L1_2, L2_2)
      end
    end
  end
end
hotWire = L13_1
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = NetworkRequestControlOfEntity
  L1_2 = vehicle
  L0_2(L1_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = true
  L10_1 = L0_2
  L0_2 = ExecuteCommand
  L1_2 = "e lockpick"
  L0_2(L1_2)
  L0_2 = lockpick2
  L1_2 = vehicle
  L0_2(L1_2)
end
LockPickFunc = L13_1
L13_1 = 80
L14_1 = 95
L15_1 = false
L16_1 = 0.15
L17_1 = RegisterNetEvent
L18_1 = "bike:knockOff"
L17_1(L18_1)
L17_1 = AddEventHandler
L18_1 = "bike:knockOff"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = KnockFromVehicle
  L4_2 = L2_2
  L5_2 = GetVehiclePedIsIn
  L6_2 = L2_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L17_1(L18_1, L19_1)
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IsPedInAnyVehicle
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = GetVehicleClass
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if 13 ~= L2_2 then
      L2_2 = GetVehicleClass
      L3_2 = A1_2
      L2_2 = L2_2(L3_2)
      if 8 ~= L2_2 then
        goto lbl_20
      end
    end
    L2_2 = true
    do return L2_2 end
    goto lbl_25
    ::lbl_20::
    L2_2 = false
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
  ::lbl_25::
end
CanBeKnockedOffVehicle = L17_1
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityHealth
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 < 20 then
    L6_2 = DoesEntityExist
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = GetEntityCoords
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = 3200
      if A3_2 then
        L8_2 = 200
        if A2_2 > L8_2 then
          L7_2 = 6200
        end
      end
      L8_2 = SetPedToRagdoll
      L9_2 = L4_2
      L10_2 = L7_2
      L11_2 = L7_2
      L12_2 = 0
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L8_2 = SetEntityVelocity
      L9_2 = L4_2
      L10_2 = GetEntityVelocity
      L11_2 = A1_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L8_2 = SetEntityAlpha
      L9_2 = A1_2
      L10_2 = 255
      L8_2(L9_2, L10_2)
      lastKnownAcceleration = 0
      L8_2 = Wait
      L9_2 = 25
      L8_2(L9_2)
      L8_2 = ExecuteCommand
      L9_2 = "vairagdoll"
      L8_2(L9_2)
      L8_2 = Wait
      L9_2 = 500
      L8_2(L9_2)
      L8_2 = ExecuteCommand
      L9_2 = "prova3 Low health to balance this kind of hit with vehicles."
      L8_2(L9_2)
      L8_2 = PlaySoundFrontend
      L9_2 = -1
      L10_2 = "Enemy_Pick_Up"
      L11_2 = "HUD_FRONTEND_MP_COLLECTABLE_SOUNDS"
      L12_2 = 1
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
KnockFromVehicle = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = nil
  L2_2 = {}
  L3_2 = L15_1
  if not L3_2 then
    L3_2 = true
    L15_1 = L3_2
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L3_2
    if nil == L3_2 then
      return L1_2
    end
    L5_2 = IsPedInAnyVehicle
    L6_2 = L4_2
    L7_2 = true
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = GetVehiclePedIsIn
      L6_2 = L4_2
      L7_2 = false
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = GetEntityVelocity
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2.x
      L8_2 = L6_2.y
      L9_2 = L6_2.z
      L10_2 = 100
      L11_2 = Wait
      L12_2 = L10_2
      L11_2(L12_2)
      L11_2 = GetEntityVelocity
      L12_2 = L5_2
      L11_2 = L11_2(L12_2)
      L12_2 = L11_2.x
      L13_2 = L11_2.y
      L14_2 = L11_2.z
      L15_2 = L12_2 - L7_2
      L16_2 = L10_2 / 1000.0
      L15_2 = L15_2 / L16_2
      L2_2.x = L15_2
      L15_2 = L13_2 - L8_2
      L16_2 = L10_2 / 1000.0
      L15_2 = L15_2 / L16_2
      L2_2.y = L15_2
      L15_2 = L14_2 - L9_2
      L16_2 = L10_2 / 1000.0
      L15_2 = L15_2 / L16_2
      L2_2.z = L15_2
    end
    L5_2 = false
    L15_1 = L5_2
    L1_2 = L2_2
  else
    L1_2 = L2_2
  end
  return L1_2
end
GetVehicleVelocityVectorAccelerations = L17_1
L17_1 = _ENV
L18_1 = "PlayerFallOffBikeVelocityVectorAccelerationsCheck"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L0_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if nil ~= L0_2 then
    L3_2 = GetPedInVehicleSeat
    L4_2 = L2_2
    L5_2 = -1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == L1_2 then
      L3_2 = IsEntityPositionFrozen
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsEntityVisible
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = CanBeKnockedOffVehicle
          L4_2 = L1_2
          L5_2 = L2_2
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            L3_2 = GetVehicleVelocityVectorAccelerations
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            L4_2 = math
            L4_2 = L4_2.abs
            L5_2 = L3_2.x
            L4_2 = L4_2(L5_2)
            L5_2 = math
            L5_2 = L5_2.abs
            L6_2 = L3_2.y
            L5_2 = L5_2(L6_2)
            L6_2 = math
            L6_2 = L6_2.abs
            L7_2 = L3_2.z
            L6_2 = L6_2(L7_2)
            L7_2 = L4_2 * L4_2
            L8_2 = L5_2 * L5_2
            L7_2 = L7_2 + L8_2
            L8_2 = math
            L8_2 = L8_2.sqrt
            L9_2 = L7_2
            L8_2 = L8_2(L9_2)
            L7_2 = L8_2
            L8_2 = L13_1
            L8_2 = 0 ~= L8_2
            L9_2 = L13_1
            L9_2 = L7_2 > L9_2
            if L8_2 and L9_2 then
              L10_2 = KnockFromVehicle
              L11_2 = L1_2
              L12_2 = L2_2
              L13_2 = L7_2
              L14_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = GetClosestPlayerID
              L11_2 = L1_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                L11_2 = TriggerServerEvent
                L12_2 = "bike:knockOff"
                L13_2 = L10_2
                L14_2 = L7_2
                L15_2 = false
                L11_2(L12_2, L13_2, L14_2, L15_2)
              end
            end
            L10_2 = maxAllowedUpDownAccelerationBeforeFallof
            L8_2 = 0 ~= L10_2
            L10_2 = L14_1
            L9_2 = L6_2 > L10_2
            if L8_2 and L9_2 then
              L10_2 = 200
              L10_2 = L6_2 < L10_2
              if not L10_2 then
                L11_2 = KnockFromVehicle
                L12_2 = L1_2
                L13_2 = L2_2
                L14_2 = L6_2
                L15_2 = true
                L11_2(L12_2, L13_2, L14_2, L15_2)
                L11_2 = GetClosestPlayerID
                L12_2 = L1_2
                L11_2 = L11_2(L12_2)
                if L11_2 then
                  L12_2 = TriggerServerEvent
                  L13_2 = "bike:knockOff"
                  L14_2 = L11_2
                  L15_2 = L6_2
                  L16_2 = true
                  L12_2(L13_2, L14_2, L15_2, L16_2)
                end
              end
            end
          end
      end
    end
  end
  else
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
  end
end
L17_1[L18_1] = L19_1
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2
  while true do
    L0_2 = _ENV
    L1_2 = "PlayerFallOffBikeVelocityVectorAccelerationsCheck"
    L0_2 = L0_2[L1_2]
    L0_2()
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L17_1(L18_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = nil
  L2_2 = GetActivePlayers
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPlayerPed
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    if L7_2 ~= A0_2 then
      L8_2 = GetEntityCoords
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetEntityCoords
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = vector3
      L11_2 = L8_2.x
      L12_2 = L8_2.y
      L13_2 = L8_2.z
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = vector3
      L12_2 = L9_2.x
      L13_2 = L9_2.y
      L14_2 = L9_2.z
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2 = L10_2 - L11_2
      L10_2 = #L10_2
      if L10_2 <= 2.0 then
        L10_2 = GetPlayerServerId
        L11_2 = L2_2[L6_2]
        L10_2 = L10_2(L11_2)
        L1_2 = L10_2
        break
      end
    end
  end
  return L1_2
end
GetClosestPlayerID = L17_1
L17_1 = false
L18_1 = 0
L19_1 = 0
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L17_1
  if not L0_2 then
    L0_2 = IsPedFatallyInjured
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if not L0_2 then
      L0_2 = bloccaTuttiTasti
      L0_2()
      L0_2 = true
      L17_1 = L0_2
      L0_2 = Wait
      L1_2 = 250
      L0_2(L1_2)
      L0_2 = ExecuteCommand
      L1_2 = "e malditesta"
      L0_2(L1_2)
      L0_2 = ApplyDamageToPed
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = math
      L2_2 = L2_2.random
      L3_2 = 15
      L4_2 = 30
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = false
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = Wait
      L1_2 = 3500
      L0_2(L1_2)
      L0_2 = false
      L17_1 = L0_2
    end
  end
end
function L21_1()
  local L0_2, L1_2
  L0_2 = L17_1
  if L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = L17_1
      if L0_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 71
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 72
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 63
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 64
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 75
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
bloccaTuttiTasti = L21_1
L21_1 = CreateThread
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = GetVehiclePedIsIn
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = DoesEntityExist
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityModel
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if -56009036 ~= L1_2 then
        L1_2 = GetEntityModel
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if -1963629913 ~= L1_2 then
          L1_2 = GetVehicleBodyHealth
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          L2_2 = GetEntitySpeed
          L3_2 = L0_2
          L2_2 = L2_2(L3_2)
          L2_2 = L2_2 * 2.23
          L3_2 = L18_1
          if L1_2 ~= L3_2 then
            L3_2 = L19_1
            if L2_2 ~= L3_2 then
              L3_2 = false
              L4_2 = false
              L5_2 = L17_1
              if not L5_2 then
                L5_2 = L18_1
                if L1_2 < L5_2 then
                  L5_2 = L18_1
                  L5_2 = L5_2 - L1_2
                  if L5_2 >= 25 then
                    L3_2 = true
                    L5_2 = 0
                    L18_1 = L5_2
                end
              end
              else
                L18_1 = L1_2
              end
              L5_2 = L17_1
              if not L5_2 then
                L5_2 = L19_1
                if L2_2 < L5_2 then
                  L5_2 = L19_1
                  L5_2 = L5_2 - L2_2
                  if L5_2 >= 35 then
                    L4_2 = true
                    L5_2 = 0
                    L19_1 = L5_2
                end
              end
              else
                L19_1 = L2_2
              end
              if L3_2 and L4_2 then
                L5_2 = L20_1
                L5_2()
                L5_2 = 0
                L18_1 = L5_2
                L5_2 = 0
                L19_1 = L5_2
              end
            end
          end
          L3_2 = L19_1
          if L2_2 ~= L3_2 then
            L3_2 = L17_1
            if not L3_2 then
              L3_2 = L19_1
              if L2_2 < L3_2 then
                L3_2 = L19_1
                L3_2 = L3_2 - L2_2
                if L3_2 >= 95 then
                  L3_2 = L20_1
                  L3_2()
                  L3_2 = 0
                  L18_1 = L3_2
                  L3_2 = 0
                  L19_1 = L3_2
              end
            end
            else
              L19_1 = L2_2
            end
          end
      end
    end
    else
      L1_2 = 0
      L18_1 = L1_2
      L1_2 = 0
      L19_1 = L1_2
      L1_2 = Wait
      L2_2 = 2000
      L1_2(L2_2)
    end
  end
end
L21_1(L22_1)
L21_1 = {}
L21_1[8] = true
L21_1[9] = true
L21_1[14] = true
L21_1[15] = true
L21_1[16] = true
L22_1 = {}
L23_1 = false
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = L22_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = IsVehicleNeonLightEnabled
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L22_1
    L1_2[A0_2] = true
    L1_2 = true
    return L1_2
  end
end
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = L0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = GetPedInVehicleSeat
      L3_2 = L1_2
      L4_2 = -1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 == L0_2 then
        goto lbl_22
      end
    end
  end
  do return end
  ::lbl_22::
  L2_2 = L24_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Questo veicolo non presenta neon."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L22_1
  L3_2 = L3_2[L1_2]
  if nil ~= L3_2 then
    L3_2 = L22_1
    L3_2 = L3_2[L1_2]
    if L3_2 then
      goto lbl_42
    end
  end
  L3_2 = false
  ::lbl_42::
  L4_2 = SetVehicleNeonLightEnabled
  L5_2 = L1_2
  L6_2 = 0
  L7_2 = not L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetVehicleNeonLightEnabled
  L5_2 = L1_2
  L6_2 = 1
  L7_2 = not L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetVehicleNeonLightEnabled
  L5_2 = L1_2
  L6_2 = 2
  L7_2 = not L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetVehicleNeonLightEnabled
  L5_2 = L1_2
  L6_2 = 3
  L7_2 = not L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L22_1
  L5_2 = not L3_2
  L4_2[L1_2] = L5_2
end
L26_1 = RegisterCommand
L27_1 = "neon"
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L23_1
  if L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = L0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = GetPedInVehicleSeat
      L3_2 = L1_2
      L4_2 = -1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 == L0_2 then
        goto lbl_31
      end
    end
  end
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submexError
  L4_2 = "Devi essere in un veicolo con i neon."
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_31::
  L2_2 = L25_1
  L2_2()
  L2_2 = true
  L23_1 = L2_2
  L2_2 = Wait
  L3_2 = 1250
  L2_2(L3_2)
  L2_2 = false
  L23_1 = L2_2
end
L26_1(L27_1, L28_1)
L26_1 = exports
L27_1 = "toggleChiusura"
function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = GetVehicleNumberPlateText
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = HasKey
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = ChiusuraVeicolo
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L26_1(L27_1, L28_1)
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = hasAlreadyLocked
  if not L1_2 then
    L1_2 = GetVehicleDoorLockStatus
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    hasAlreadyLocked = true
    L2_2 = ExecuteCommand
    L3_2 = "e chiusura"
    L2_2(L3_2)
    if 1 == L1_2 or 0 == L1_2 then
      L2_2 = GetVehicleNumberPlateText
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = IsPedInAnyVehicle
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      L5_2 = false
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = makeEntityFaceEntity
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = SetVehicleDoorShut
      L4_2 = A0_2
      L5_2 = 0
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = SetVehicleDoorShut
      L4_2 = A0_2
      L5_2 = 1
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = SetVehicleDoorShut
      L4_2 = A0_2
      L5_2 = 2
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = SetVehicleDoorShut
      L4_2 = A0_2
      L5_2 = 3
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = SetVehicleDoorsLocked
      L4_2 = A0_2
      L5_2 = 2
      L3_2(L4_2, L5_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.testo3d
      L5_2 = "Veh locked."
      L3_2(L4_2, L5_2)
      L3_2 = PlaySoundFrontend
      L4_2 = -1
      L5_2 = "PICK_UP_WEAPON"
      L6_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
      L7_2 = 1
      L3_2(L4_2, L5_2, L6_2, L7_2)
      hasAlreadyLocked = false
    elseif 2 == L1_2 then
      L2_2 = GetVehicleNumberPlateText
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = IsPedInAnyVehicle
      L4_2 = PlayerPedId
      L4_2 = L4_2()
      L5_2 = false
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = makeEntityFaceEntity
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = A0_2
        L3_2(L4_2, L5_2)
      end
      L3_2 = SetVehicleDoorsLocked
      L4_2 = A0_2
      L5_2 = 1
      L3_2(L4_2, L5_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.testo3d
      L5_2 = "Veh unlocked."
      L3_2(L4_2, L5_2)
      L3_2 = PlaySoundFrontend
      L4_2 = -1
      L5_2 = "PICK_UP_WEAPON"
      L6_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
      L7_2 = 1
      L3_2(L4_2, L5_2, L6_2, L7_2)
      hasAlreadyLocked = false
    end
    L2_2 = Wait
    L3_2 = 2500
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e cc"
    L2_2(L3_2)
  end
end
ChiusuraVeicolo = L26_1
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = GetVehicleClass
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 13 == L2_2 then
    return
  end
  if nil == A1_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2 or A1_2
  if not L2_2 then
    A1_2 = 100.0
  end
  if A1_2 > 100 then
    A1_2 = 100
  end
  if A1_2 < 0 then
    A1_2 = 0
  end
  L2_2 = NetworkGetEntityIsNetworked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = NetworkRegisterEntityAsNetworked
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = VehToNet
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "core:qtUpdate"
    L5_2 = L2_2
    L6_2 = "fuelState"
    L7_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = Entity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L4_2 = L3_2
    L3_2 = L3_2.set
    L5_2 = "fuelState"
    L6_2 = A1_2
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
SetFuel = L26_1
L26_1 = RegisterNetEvent
L27_1 = "setBenzina"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "setBenzina"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if nil == A1_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2 or A1_2
  if not L2_2 then
    A1_2 = 0.0
  end
  if A1_2 > 100 then
    A1_2 = 100
  end
  if A1_2 < 0 then
    A1_2 = 0
  end
  L2_2 = L4_1
  L3_2 = A0_2
  L4_2 = 40
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleFuelLevel
  L3_2 = A0_2
  L4_2 = A1_2 + 0.0
  L2_2(L3_2, L4_2)
  L2_2 = SetFuel
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L26_1(L27_1, L28_1)
L26_1 = false
L27_1 = CreateThread
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = GetEntityModel
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if -56009036 ~= L2_2 then
          L2_2 = GetEntityModel
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          if -1963629913 ~= L2_2 then
            L2_2 = Entity
            L3_2 = L1_2
            L2_2 = L2_2(L3_2)
            L2_2 = L2_2.state
            L2_2 = L2_2.fuelState
            if nil == L2_2 then
              L3_2 = GetVehicleFuelLevel
              L4_2 = L1_2
              L3_2 = L3_2(L4_2)
              L2_2 = L3_2
              if nil == L2_2 or L2_2 < 0 then
                L2_2 = 100.0
              end
              L3_2 = SetFuel
              L4_2 = L1_2
              L5_2 = L2_2
              L3_2(L4_2, L5_2)
            end
            L3_2 = GetIsVehicleEngineRunning
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              L3_2 = GetVehicleClass
              L4_2 = L1_2
              L3_2 = L3_2(L4_2)
              if 13 ~= L3_2 then
                L3_2 = IsPedInVehicle
                L4_2 = L0_2
                L5_2 = L1_2
                L6_2 = true
                L3_2 = L3_2(L4_2, L5_2, L6_2)
                if L3_2 then
                  L3_2 = GetVehicleEngineHealth
                  L4_2 = L1_2
                  L3_2 = L3_2(L4_2)
                  L4_2 = L26_1
                  if not L4_2 then
                    L4_2 = 800.0
                    if L3_2 > L4_2 then
                      L4_2 = 900.0
                      if L3_2 < L4_2 then
                        L4_2 = true
                        L26_1 = L4_2
                        L4_2 = exports
                        L4_2 = L4_2.striano_combat
                        L5_2 = L4_2
                        L4_2 = L4_2.submexError
                        L6_2 = "Vehicle damage, on more hit and will be broken."
                        L4_2(L5_2, L6_2)
                        L4_2 = PlaySoundFrontend
                        L5_2 = -1
                        L6_2 = "TIMER_STOP"
                        L7_2 = "HUD_MINI_GAME_SOUNDSET"
                        L8_2 = 1
                        L4_2(L5_2, L6_2, L7_2, L8_2)
                      end
                    end
                  end
                  if L3_2 > 0.0 then
                    L4_2 = 800.0
                    if L3_2 < L4_2 then
                      L4_2 = SetVehicleUndriveable
                      L5_2 = L1_2
                      L6_2 = false
                      L4_2(L5_2, L6_2)
                      L4_2 = SetVehicleEngineHealth
                      L5_2 = L1_2
                      L6_2 = 0.0
                      L4_2(L5_2, L6_2)
                      L4_2 = PlaySoundFrontend
                      L5_2 = -1
                      L6_2 = "TIMER_STOP"
                      L7_2 = "HUD_MINI_GAME_SOUNDSET"
                      L8_2 = 1
                      L4_2(L5_2, L6_2, L7_2, L8_2)
                    end
                  end
                  L4_2 = Entity
                  L5_2 = L1_2
                  L4_2 = L4_2(L5_2)
                  L4_2 = L4_2.state
                  L2_2 = L4_2.fuelState
                  if nil ~= L2_2 and L2_2 <= 0 then
                    L4_2 = math
                    L4_2 = L4_2.random
                    L5_2 = 1
                    L6_2 = 100
                    L4_2 = L4_2(L5_2, L6_2)
                    if L4_2 >= 50 then
                      L5_2 = exports
                      L5_2 = L5_2.striano_combat
                      L6_2 = L5_2
                      L5_2 = L5_2.testo3d
                      L7_2 = "Need fuel."
                      L5_2(L6_2, L7_2)
                      L5_2 = PlaySoundFrontend
                      L6_2 = -1
                      L7_2 = "TIMER_STOP"
                      L8_2 = "HUD_MINI_GAME_SOUNDSET"
                      L9_2 = 1
                      L5_2(L6_2, L7_2, L8_2, L9_2)
                      L5_2 = SetVehicleEngineOn
                      L6_2 = L1_2
                      L7_2 = false
                      L8_2 = false
                      L9_2 = false
                      L10_2 = true
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                      L5_2 = SetVehicleJetEngineOn
                      L6_2 = L1_2
                      L7_2 = false
                      L5_2(L6_2, L7_2)
                      L5_2 = SetVehicleUndriveable
                      L6_2 = L1_2
                      L7_2 = true
                      L5_2(L6_2, L7_2)
                      L5_2 = Wait
                      L6_2 = 50
                      L5_2(L6_2)
                      L5_2 = SetVehicleEngineOn
                      L6_2 = L1_2
                      L7_2 = false
                      L8_2 = false
                      L9_2 = false
                      L10_2 = true
                      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                      L5_2 = SetVehicleJetEngineOn
                      L6_2 = L1_2
                      L7_2 = false
                      L5_2(L6_2, L7_2)
                      L5_2 = FreezeEntityPosition
                      L6_2 = L1_2
                      L7_2 = true
                      L5_2(L6_2, L7_2)
                    end
                  else
                    L4_2 = 800.0
                    if L3_2 < L4_2 then
                      L4_2 = math
                      L4_2 = L4_2.random
                      L5_2 = 1
                      L6_2 = 100
                      L4_2 = L4_2(L5_2, L6_2)
                      if L4_2 >= 50 then
                        L5_2 = exports
                        L5_2 = L5_2.striano_combat
                        L6_2 = L5_2
                        L5_2 = L5_2.testo3d
                        L7_2 = "Broken engine."
                        L5_2(L6_2, L7_2)
                        L5_2 = SetVehicleEngineOn
                        L6_2 = L1_2
                        L7_2 = false
                        L8_2 = false
                        L9_2 = false
                        L10_2 = true
                        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                        L5_2 = SetVehicleJetEngineOn
                        L6_2 = L1_2
                        L7_2 = false
                        L5_2(L6_2, L7_2)
                        L5_2 = PlaySoundFrontend
                        L6_2 = -1
                        L7_2 = "TIMER_STOP"
                        L8_2 = "HUD_MINI_GAME_SOUNDSET"
                        L9_2 = 1
                        L5_2(L6_2, L7_2, L8_2, L9_2)
                      end
                    end
                  end
                end
              else
                L3_2 = Wait
                L4_2 = 3500
                L3_2(L4_2)
              end
            end
          end
        end
      end
    end
  end
end
L27_1(L28_1)
L27_1 = nil
L28_1 = false
L29_1 = CreateThread
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = L27_1
        if L2_2 ~= L1_2 then
          L27_1 = L1_2
          L2_2 = false
          L28_1 = L2_2
        end
        L2_2 = GetIsVehicleEngineRunning
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = Wait
          L3_2 = 1000
          L2_2(L3_2)
        else
          L2_2 = Entity
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          L2_2 = L2_2.state
          L2_2 = L2_2.fuelState
          if nil == L2_2 then
            goto lbl_118
          end
          if L2_2 <= 0.0 then
            L3_2 = GetVehicleFuelLevel
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            L2_2 = L3_2
          end
          L3_2 = GetEntitySpeed
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          L3_2 = L3_2 * 3.6
          L4_2 = L28_1
          if not L4_2 and L3_2 >= 10.0 then
            L4_2 = true
            L28_1 = L4_2
          end
          L4_2 = L28_1
          if not L4_2 then
            goto lbl_118
          end
          L4_2 = 0.0
          if L3_2 < 3.0 then
            L4_2 = 0.0
          elseif L3_2 < 30.0 then
            L4_2 = 0.01
          elseif L3_2 < 60.0 then
            L4_2 = 0.05
          elseif L3_2 < 100.0 then
            L4_2 = 0.015
          else
            L5_2 = 140.0
            if L3_2 < L5_2 then
              L4_2 = 0.1
            else
              L4_2 = 0.5
            end
          end
          if L3_2 >= 3.0 then
            L5_2 = IsControlPressed
            L6_2 = 0
            L7_2 = 71
            L5_2 = L5_2(L6_2, L7_2)
            if not L5_2 then
              L5_2 = IsControlPressed
              L6_2 = 0
              L7_2 = 87
              L5_2 = L5_2(L6_2, L7_2)
              if not L5_2 then
                goto lbl_99
              end
            end
            L4_2 = L4_2 + 0.05
          end
          ::lbl_99::
          if L4_2 > 0.0 then
            L5_2 = L2_2 - L4_2
            if L5_2 < 0.0 then
              L5_2 = 0.0
            end
            L6_2 = SetFuel
            L7_2 = L1_2
            L8_2 = L5_2
            L6_2(L7_2, L8_2)
          end
        end
    end
    else
      L2_2 = nil
      L27_1 = L2_2
      L2_2 = false
      L28_1 = L2_2
      L2_2 = Wait
      L3_2 = 2000
      L2_2(L3_2)
    end
    ::lbl_118::
  end
end
L29_1(L30_1)
L29_1 = 0
L30_1 = 0
L31_1 = false
L32_1 = false
L33_1 = RegisterCommand
L34_1 = "cruise"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = fCruise
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L36_1 = false
L33_1(L34_1, L35_1, L36_1)
L33_1 = RegisterCommand
L34_1 = "cru"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = fCruise
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L36_1 = false
L33_1(L34_1, L35_1, L36_1)
L33_1 = RegisterCommand
L34_1 = "c"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = fCruise
  L4_2 = A1_2[1]
  L3_2(L4_2)
end
L36_1 = false
L33_1(L34_1, L35_1, L36_1)
L33_1 = RegisterCommand
L34_1 = "cruisedialog"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = fCruiseDialog
  L3_2()
end
L36_1 = false
L33_1(L34_1, L35_1, L36_1)
L33_1 = RegisterCommand
L34_1 = "disattivacruise"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 0
  L29_1 = L3_2
  L3_2 = GetVehiclePedIsIn
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetEntitySpeed
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  currSpeed = L4_2
  cruiseIsOn = false
  L4_2 = currSpeed
  cruiseSpeed = L4_2
  L4_2 = Wait
  L5_2 = 100
  L4_2(L5_2)
  L4_2 = GetVehicleHandlingFloat
  L5_2 = L3_2
  L6_2 = "CHandlingData"
  L7_2 = "fInitialDriveMaxFlatVel"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = SetEntityMaxSpeed
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L33_1(L34_1, L35_1)
L33_1 = RegisterCommand
L34_1 = "cruisehide"
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = fCruise
  L4_2 = A1_2[1]
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L36_1 = false
L33_1(L34_1, L35_1, L36_1)
function L33_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = -1
  L0_2 = L0_2(L1_2, L2_2)
  if nil == L0_2 or 0 == L0_2 then
    return
  end
  L1_2 = OpenInput
  L2_2 = "Insert kmh."
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = fCruise
  L3_2 = L1_2
  L2_2(L3_2)
end
fCruiseDialog = L33_1
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = -1
  L2_2 = L2_2(L3_2, L4_2)
  if nil == L2_2 or 0 == L2_2 then
    return
  end
  L3_2 = IsThisModelABicycle
  L4_2 = GetEntityModel
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L3_2 then
    return
  end
  L3_2 = cruiseIsOn
  if L3_2 then
  end
  if nil ~= A0_2 then
    L3_2 = tonumber
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 < 10 then
      L3_2 = L29_1
      if 0 == L3_2 then
        L3_2 = GetVehiclePedIsIn
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = false
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = GetEntitySpeed
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        currSpeed = L4_2
        cruiseIsOn = false
        L4_2 = currSpeed
        cruiseSpeed = L4_2
        L4_2 = Wait
        L5_2 = 100
        L4_2(L5_2)
        L4_2 = GetVehicleHandlingFloat
        L5_2 = L3_2
        L6_2 = "CHandlingData"
        L7_2 = "fInitialDriveMaxFlatVel"
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L5_2 = SetEntityMaxSpeed
        L6_2 = L3_2
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = Wait
        L6_2 = 100
        L5_2(L6_2)
        L5_2 = 0
        L29_1 = L5_2
      end
      return
    end
    L3_2 = GetVehiclePedIsIn
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetEntitySpeed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    currSpeed = L4_2
    cruiseIsOn = false
    L4_2 = currSpeed
    cruiseSpeed = L4_2
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = cruiseIsOn
    if L4_2 then
      L4_2 = cruiseSpeed
      if L4_2 then
        goto lbl_88
      end
    end
    L4_2 = GetVehicleHandlingFloat
    L5_2 = L3_2
    L6_2 = "CHandlingData"
    L7_2 = "fInitialDriveMaxFlatVel"
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    ::lbl_88::
    L5_2 = SetEntityMaxSpeed
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
    L5_2 = tonumber
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 + 10
    L29_1 = L5_2
    L5_2 = true
    L31_1 = L5_2
    if nil == A1_2 then
      L5_2 = exports
      L5_2 = L5_2.striano_combat
      L6_2 = L5_2
      L5_2 = L5_2.submexError
      L7_2 = "Cruise ~q~"
      L8_2 = tonumber
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = "~w~ kmh."
      L7_2 = L7_2 .. L8_2 .. L9_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = true
      L32_1 = L5_2
    end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexInfo
    L5_2 = "Cruise reset."
    L3_2(L4_2, L5_2)
    L3_2 = GetVehiclePedIsIn
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetEntitySpeed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    currSpeed = L4_2
    cruiseIsOn = false
    L4_2 = currSpeed
    cruiseSpeed = L4_2
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = cruiseIsOn
    if L4_2 then
      L4_2 = cruiseSpeed
      if L4_2 then
        goto lbl_150
      end
    end
    L4_2 = GetVehicleHandlingFloat
    L5_2 = L3_2
    L6_2 = "CHandlingData"
    L7_2 = "fInitialDriveMaxFlatVel"
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    ::lbl_150::
    L5_2 = SetEntityMaxSpeed
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
    L5_2 = 0
    L29_1 = L5_2
  end
end
fCruise = L33_1
L33_1 = false
L34_1 = RegisterCommand
L35_1 = "cru2"
function L36_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = fCruise2
  L3_2()
end
L37_1 = false
L34_1(L35_1, L36_1, L37_1)
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L33_1
  if L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetPedInVehicleSeat
  L3_2 = L1_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  if nil == L1_2 or 0 == L1_2 then
    return
  end
  L2_2 = IsThisModelABicycle
  L3_2 = GetEntityModel
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    return
  end
  L2_2 = true
  L33_1 = L2_2
  L2_2 = cruiseIsOn
  if L2_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = L0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetEntitySpeed
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    currSpeed = L3_2
    cruiseIsOn = false
    L3_2 = currSpeed
    cruiseSpeed = L3_2
    L3_2 = Wait
    L4_2 = 100
    L3_2(L4_2)
    L3_2 = cruiseIsOn
    if L3_2 then
      L3_2 = cruiseSpeed
      if L3_2 then
        goto lbl_61
      end
    end
    L3_2 = GetVehicleHandlingFloat
    L4_2 = L2_2
    L5_2 = "CHandlingData"
    L6_2 = "fInitialDriveMaxFlatVel"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    ::lbl_61::
    L4_2 = SetEntityMaxSpeed
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = L30_1
    L29_1 = L4_2
    L4_2 = 0
    L30_1 = L4_2
    L4_2 = true
    L31_1 = L4_2
  end
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  ARG = 50
  L2_2 = tonumber
  L3_2 = ARG
  L2_2 = L2_2(L3_2)
  L29_1 = L2_2
  L2_2 = L29_1
  L30_1 = L2_2
  L2_2 = true
  L31_1 = L2_2
end
fCruise2 = L34_1
L34_1 = RegisterCommand
L35_1 = "stopcru2"
function L36_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L33_1
  if L3_2 then
    L3_2 = 0
    L29_1 = L3_2
    L3_2 = false
    L33_1 = L3_2
    L3_2 = GetVehiclePedIsIn
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetEntitySpeed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    currSpeed = L4_2
    cruiseIsOn = false
    L4_2 = currSpeed
    cruiseSpeed = L4_2
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = cruiseIsOn
    if L4_2 then
      L4_2 = cruiseSpeed
      if L4_2 then
        goto lbl_34
      end
    end
    L4_2 = GetVehicleHandlingFloat
    L5_2 = L3_2
    L6_2 = "CHandlingData"
    L7_2 = "fInitialDriveMaxFlatVel"
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    ::lbl_34::
    L5_2 = SetEntityMaxSpeed
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
  end
end
L37_1 = false
L34_1(L35_1, L36_1, L37_1)
function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = false
    return L2_2
  elseif 0 ~= L1_2 then
    L2_2 = IsEntityVisible
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsPedInAnyVehicle
      L3_2 = L0_2
      L4_2 = false
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = IsEntityAVehicle
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = GetVehicleWheelSurfaceMaterial
          L3_2 = L1_2
          L4_2 = 1
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = GetVehicleWheelType
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if 3 == L3_2 or 4 == L3_2 or 6 == L3_2 then
            L4_2 = true
            return L4_2
          elseif 4 == L2_2 or 1 == L2_2 or 3 == L2_2 or 13 == L2_2 then
            L4_2 = true
            return L4_2
          else
            L4_2 = DoesEntityExist
            L5_2 = L1_2
            L4_2 = L4_2(L5_2)
            if L4_2 and 15 ~= L2_2 and 14 ~= L2_2 and 0 ~= L2_2 and 60 ~= L2_2 and 11 ~= L2_2 and 69 ~= L2_2 then
              L4_2 = false
              return L4_2
            end
          end
          L4_2 = false
          return L4_2
        end
      end
    end
  end
end
possocruisefunc = L34_1
L34_1 = CreateThread
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = L32_1
      if L1_2 then
        L1_2 = false
        L32_1 = L1_2
      end
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L31_1
      if not L1_2 then
        L1_2 = possocruisefunc
        L1_2 = L1_2()
        if not L1_2 then
          goto lbl_117
        end
      end
      L1_2 = GetVehiclePedIsIn
      L2_2 = L0_2
      L3_2 = false
      L1_2 = L1_2(L2_2, L3_2)
      if nil == L1_2 or 0 == L1_2 then
        goto lbl_117
      end
      L2_2 = GetPedInVehicleSeat
      L3_2 = L1_2
      L4_2 = -1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= L0_2 then
        goto lbl_117
      end
      L2_2 = IsPedInAnyBoat
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_117
      end
      L2_2 = IsThisModelABicycle
      L3_2 = GetEntityModel
      L4_2 = L1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 then
        goto lbl_117
      end
      L2_2 = IsEntityAVehicle
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_117
      end
      L2_2 = GetVehicleFuelLevel
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not (L2_2 > 0) then
        goto lbl_117
      end
      L2_2 = L29_1
      if not (L2_2 > 0) then
        goto lbl_117
      end
      L2_2 = GetEntitySpeed
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = math
      L3_2 = L3_2.floor
      L4_2 = L29_1
      L4_2 = L4_2 / 4.2
      L3_2 = L3_2(L4_2)
      if not (L2_2 >= L3_2) then
        goto lbl_117
      end
      L2_2 = false
      L31_1 = L2_2
      L2_2 = GetEntitySpeed
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      currSpeed = L2_2
      cruiseIsOn = true
      L2_2 = currSpeed
      cruiseSpeed = L2_2
      L2_2 = Wait
      L3_2 = 100
      L2_2(L3_2)
      L2_2 = cruiseIsOn
      if L2_2 then
        L2_2 = cruiseSpeed
        if L2_2 then
          goto lbl_106
        end
      end
      L2_2 = GetVehicleHandlingFloat
      L3_2 = L1_2
      L4_2 = "CHandlingData"
      L5_2 = "fInitialDriveMaxFlatVel"
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      ::lbl_106::
      L3_2 = SetEntityMaxSpeed
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = Wait
      L4_2 = 100
      L3_2(L4_2)
    else
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
    ::lbl_117::
  end
end
L34_1(L35_1)
L34_1 = false
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if nil ~= A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityAVehicle
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = 0
        L2_2 = PlayerPedId
        L2_2 = L2_2()
        L3_2 = IsPedInAnyVehicle
        L4_2 = L2_2
        L5_2 = false
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L3_2 = GetEntityAlpha
          L4_2 = A0_2
          L3_2 = L3_2(L4_2)
          L4_2 = 255
          if L3_2 < L4_2 then
            L3_2 = SetEntityAlpha
            L4_2 = A0_2
            L5_2 = 255
            L3_2(L4_2, L5_2)
          end
        end
        L3_2 = IsVehicleTyreBurst
        L4_2 = A0_2
        L5_2 = 0
        L6_2 = true
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L1_2 = L1_2 + 1
        end
        L3_2 = IsVehicleTyreBurst
        L4_2 = A0_2
        L5_2 = 1
        L6_2 = true
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L1_2 = L1_2 + 1
        end
        L3_2 = IsVehicleTyreBurst
        L4_2 = A0_2
        L5_2 = 3
        L6_2 = true
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L1_2 = L1_2 + 1
        end
        L3_2 = IsVehicleTyreBurst
        L4_2 = A0_2
        L5_2 = 4
        L6_2 = true
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        if L3_2 then
          L1_2 = L1_2 + 1
        end
        L3_2 = GetVehicleClass
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        L3_2 = not L3_2
        if 8 == L3_2 then
          if L1_2 > 0 then
            L3_2 = SetVehicleEngineOn
            L4_2 = A0_2
            L5_2 = false
            L6_2 = false
            L7_2 = false
            L8_2 = true
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            L3_2 = SetVehicleJetEngineOn
            L4_2 = A0_2
            L5_2 = false
            L3_2(L4_2, L5_2)
            L3_2 = Wait
            L4_2 = 3000
            L3_2(L4_2)
            L3_2 = TaskLeaveVehicle
            L4_2 = L2_2
            L5_2 = A0_2
            L6_2 = 0
            L3_2(L4_2, L5_2, L6_2)
            L3_2 = Wait
            L4_2 = 1000
            L3_2(L4_2)
            L3_2 = ExecuteCommand
            L4_2 = "e checazzo"
            L3_2(L4_2)
          end
        elseif L1_2 > 1 then
          L3_2 = SetVehicleEngineOn
          L4_2 = A0_2
          L5_2 = false
          L6_2 = false
          L7_2 = false
          L8_2 = true
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          L3_2 = SetVehicleJetEngineOn
          L4_2 = A0_2
          L5_2 = false
          L3_2(L4_2, L5_2)
          L3_2 = Wait
          L4_2 = 3000
          L3_2(L4_2)
          L3_2 = TaskLeaveVehicle
          L4_2 = L2_2
          L5_2 = A0_2
          L6_2 = 0
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = Wait
          L4_2 = 1000
          L3_2(L4_2)
          L3_2 = ExecuteCommand
          L4_2 = "e checazzo"
          L3_2(L4_2)
        end
      end
    end
  end
end
CheckRuote = L35_1
L35_1 = CreateThread
function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = Wait
    L1_2 = 9000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if nil ~= L1_2 then
      L1_2 = GetVehiclePedIsIn
      L2_2 = L0_2
      L3_2 = false
      L1_2 = L1_2(L2_2, L3_2)
      if 0 ~= L1_2 then
        L1_2 = CheckRuote
        L2_2 = GetVehiclePedIsIn
        L3_2 = L0_2
        L4_2 = false
        L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L35_1(L36_1)
