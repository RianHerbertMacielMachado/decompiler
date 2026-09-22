local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^%s*(.-)%s*$"
  return L1_2(L2_2, L3_2)
end
Trim = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetResourceState
  L1_2 = "spawnmanager"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.spawnmanager
    L1_2 = L0_2
    L0_2 = L0_2.setAutoSpawn
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = AddEventHandler
    L1_2 = "onClientResourceStart"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if "spawnmanager" == A0_3 then
        L1_3 = exports
        L1_3 = L1_3.spawnmanager
        L2_3 = L1_3
        L1_3 = L1_3.setAutoSpawn
        L3_3 = false
        L1_3(L2_3, L3_3)
      end
    end
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1)
L0_1 = RegisterNetEvent
L1_1 = "doPrint"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "doPrint"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = false
L1_1 = RegisterNetEvent
L2_1 = "esx:teleport"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1
  if L1_2 or not A0_2 then
    return
  end
  L1_2 = tonumber
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = A0_2.y
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2.z
  L3_2 = L3_2(L4_2)
  if not (L1_2 and L2_2) or not L3_2 then
    return
  end
  if L1_2 ~= L1_2 or L2_2 ~= L2_2 or L3_2 ~= L3_2 then
    return
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L1_2 = L1_2 + 0.0
  L2_2 = L2_2 + 0.0
  L3_2 = L3_2 + 0.0
  L5_2 = true
  L0_1 = L5_2
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = exports
  L5_2 = L5_2.striano_editor
  L6_2 = L5_2
  L5_2 = L5_2.setbloccoanim
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = RequestCollisionAtCoord
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityCoordsNoOffset
  L6_2 = L4_2
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + 5000
  while true do
    L6_2 = HasCollisionLoadedAroundEntity
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    if not (L5_2 > L6_2) then
      break
    end
    L6_2 = RequestCollisionAtCoord
    L7_2 = L1_2
    L8_2 = L2_2
    L9_2 = L3_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = Wait
  L7_2 = 250
  L6_2(L7_2)
  L6_2 = ExecuteCommand
  L7_2 = "atmosfera"
  L6_2(L7_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L4_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = exports
  L6_2 = L6_2.striano_editor
  L7_2 = L6_2
  L6_2 = L6_2.setbloccoanim
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = false
  L0_1 = L6_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "esx:faistrada"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx:faistrada"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.x
  L1_2 = L1_2 + 0.0
  A0_2.x = L1_2
  L1_2 = A0_2.y
  L1_2 = L1_2 + 0.0
  A0_2.y = L1_2
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.blipInteresse
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
function L1_1()
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
VehicleInFront = L1_1
L1_1 = RegisterNetEvent
L2_1 = "esx:fixVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx:fixVehicle"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 or nil == L1_2 then
    L2_2 = GetEntityCoords
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetClosestVehicle
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L6_2 = L2_2.z
    L7_2 = 5.0
    L8_2 = 0
    L9_2 = 70
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2 = L3_2
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = GetClosestVehicle
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = 9.5
      L8_2 = 0
      L9_2 = 12294
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L1_2 = L3_2
    end
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = VehicleInFront
      L3_2 = L3_2()
      L1_2 = L3_2
    end
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = GetEntityCoords
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetOffsetFromEntityInWorldCoords
      L5_2 = L0_2
      L6_2 = 0.0
      L7_2 = 5.0
      L8_2 = 0.0
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = CastRayPointToPoint
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L9_2 = L4_2.x
      L10_2 = L4_2.y
      L11_2 = L4_2.z
      L12_2 = 30
      L13_2 = L0_2
      L14_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = GetRaycastResult
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
      L1_2 = L10_2
    end
    L3_2 = DoesEntityExist
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 and nil ~= L1_2 and 0 ~= L1_2 then
      L3_2 = IsPedAPlayer
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = NetworkRequestControlOfEntity
        L4_2 = L1_2
        L3_2(L4_2)
      end
    end
    if nil ~= L1_2 and 0 ~= L1_2 then
      L3_2 = SetVehicleFixed
      L4_2 = L1_2
      L3_2(L4_2)
      L3_2 = SetVehicleUndriveable
      L4_2 = L1_2
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 and nil ~= L1_2 and 0 ~= L1_2 then
      L2_2 = IsPedAPlayer
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = NetworkRequestControlOfEntity
        L3_2 = L1_2
        L2_2(L3_2)
      end
    end
    L2_2 = SetVehicleFixed
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = SetVehicleUndriveable
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "esx:cleanVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx:cleanVehicle"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 or nil == L1_2 then
    L2_2 = GetEntityCoords
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetClosestVehicle
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L6_2 = L2_2.z
    L7_2 = 5.0
    L8_2 = 0
    L9_2 = 70
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2 = L3_2
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = GetClosestVehicle
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = 9.5
      L8_2 = 0
      L9_2 = 12294
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L1_2 = L3_2
    end
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = VehicleInFront
      L3_2 = L3_2()
      L1_2 = L3_2
    end
    if nil == L1_2 or 0 == L1_2 then
      L3_2 = GetEntityCoords
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetOffsetFromEntityInWorldCoords
      L5_2 = L0_2
      L6_2 = 0.0
      L7_2 = 5.0
      L8_2 = 0.0
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = CastRayPointToPoint
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L9_2 = L4_2.x
      L10_2 = L4_2.y
      L11_2 = L4_2.z
      L12_2 = 30
      L13_2 = L0_2
      L14_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = GetRaycastResult
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
      L1_2 = L10_2
    end
    L3_2 = DoesEntityExist
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 and nil ~= L1_2 and 0 ~= L1_2 then
      L3_2 = IsPedAPlayer
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = NetworkRequestControlOfEntity
        L4_2 = L1_2
        L3_2(L4_2)
      end
    end
    if nil ~= L1_2 and 0 ~= L1_2 then
      L3_2 = WashDecalsFromVehicle
      L4_2 = L1_2
      L5_2 = 1.0
      L3_2(L4_2, L5_2)
      L3_2 = SetVehicleDirtLevel
      L4_2 = L1_2
      L5_2 = 0.0
      L3_2(L4_2, L5_2)
    end
  else
    L2_2 = WashDecalsFromVehicle
    L3_2 = L1_2
    L4_2 = 1.0
    L2_2(L3_2, L4_2)
    L2_2 = SetVehicleDirtLevel
    L3_2 = L1_2
    L4_2 = 0.0
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = NetworkIsPlayerActive
    L1_2 = PlayerId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetEntityVisible
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ClearPlayerWantedLevel
  L2_2 = PlayerId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetMaxWantedLevel
  L2_2 = 0
  L1_2(L2_2)
  StoCambiandoPG = false
  L1_2 = ShutdownLoadingScreen
  L1_2()
  L1_2 = ShutdownLoadingScreenNui
  L1_2()
  L1_2 = DisplayRadar
  L2_2 = false
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetCanAttackFriendly
  L2_2 = L0_2
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = NetworkSetFriendlyFireOption
  L2_2 = true
  L1_2(L2_2)
  L1_2 = SetWeaponsNoAutoswap
  L2_2 = true
  L1_2(L2_2)
  L1_2 = TaskSwapWeapon
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetWeaponsNoAutoreload
  L2_2 = true
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = SetEntityVisible
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = BeginTextCommandScaleformString
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentScaleform
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = EndTextCommandScaleformString
  L1_2()
end
ButtonMessageH = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L14_2 = "instructional_buttons"
  L15_2 = RequestScaleformMovie
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  while true do
    L16_2 = HasScaleformMovieLoaded
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      break
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "CLEAR_ALL"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_CLEAR_SPACE"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 200
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  if A0_2 and A0_2 > -1 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A0_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A0_2 and -1 == A0_2 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A2_2 and A3_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 5
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A2_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A3_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A4_2 and A5_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 4
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A4_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A5_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A6_2 and A7_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 3
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A6_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A7_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A8_2 and A9_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 2
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A8_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A9_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A10_2 and A11_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 1
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 1
    L19_2 = A10_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A11_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A12_2 and A13_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 0
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A12_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A13_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_BACKGROUND_COLOUR"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 80
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = DrawScaleformMovieFullscreen
  L17_2 = L15_2
  L16_2(L17_2)
end
draw = L1_1
L1_1 = exports
L2_1 = "draw"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2, A14_2, A15_2)
  local L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L16_2 = draw
  L17_2 = A0_2
  L18_2 = A1_2
  L19_2 = A2_2
  L20_2 = A3_2
  L21_2 = A4_2
  L22_2 = A5_2
  L23_2 = A6_2
  L24_2 = A7_2
  L25_2 = A8_2
  L26_2 = A9_2
  L27_2 = A10_2
  L28_2 = A11_2
  L29_2 = A12_2
  L30_2 = A13_2
  L31_2 = A14_2
  L32_2 = A15_2
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
end
L1_1(L2_1, L3_1)
L1_1 = 15
L2_1 = {}
entitiesAnimal = L2_1
L2_1 = {}
L3_1 = "a_c_hen"
L4_1 = "a_c_rabbit_01"
L5_1 = "a_c_rat"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = exports
L4_1 = "getSafezone"
function L5_1()
  local L0_2, L1_2
  L0_2 = InSafeZone
  return L0_2()
end
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2
  L0_2 = SonoCoperto
  return L0_2
end
InSafeZone = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A1_2 then
    A1_2 = 75
  end
  if not A2_2 then
    A2_2 = 7.5
  end
  if not A3_2 then
    A3_2 = 25
  end
  if not A4_2 then
    A4_2 = 15.0
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = 1
  L8_2 = A3_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2.x
    L12_2 = math
    L12_2 = L12_2.random
    L13_2 = -A1_2
    L14_2 = A1_2
    L12_2 = L12_2(L13_2, L14_2)
    L11_2 = L11_2 + L12_2
    L12_2 = A0_2.y
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = -A1_2
    L15_2 = A1_2
    L13_2 = L13_2(L14_2, L15_2)
    L12_2 = L12_2 + L13_2
    L13_2 = A0_2.z
    L13_2 = L13_2 + 999.0
    L14_2 = GetGroundZFor_3dCoord
    L15_2 = L11_2 + 0.0
    L16_2 = L12_2 + 0.0
    L17_2 = L13_2
    L18_2 = false
    L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    if L14_2 and L15_2 then
      L16_2 = 0.5
      if L15_2 > L16_2 then
        L16_2 = vector3
        L17_2 = L11_2
        L18_2 = L12_2
        L19_2 = L15_2
        L16_2 = L16_2(L17_2, L18_2, L19_2)
        L17_2 = A0_2 - L16_2
        L17_2 = #L17_2
        if A2_2 < L17_2 then
          L17_2 = L6_2 - L16_2
          L17_2 = #L17_2
          if A4_2 < L17_2 then
            L17_2 = vector3
            L18_2 = 0.0
            L19_2 = 0.0
            L20_2 = 0.0
            L17_2 = L17_2(L18_2, L19_2, L20_2)
            L17_2 = L16_2 - L17_2
            L17_2 = #L17_2
            if L17_2 > 50.0 then
              L17_2 = GetWaterHeight
              L18_2 = L11_2
              L19_2 = L12_2
              L20_2 = L15_2 + 2.0
              L17_2, L18_2 = L17_2(L18_2, L19_2, L20_2)
              L19_2 = L17_2 or L19_2
              L19_2 = L18_2 or L19_2
              if L17_2 and L18_2 then
                L19_2 = math
                L19_2 = L19_2.abs
                L20_2 = L18_2 - L15_2
                L19_2 = L19_2(L20_2)
                L19_2 = L19_2 < 3.0
              end
              if not L19_2 then
                return L16_2
              end
            end
          end
        end
      end
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L7_2 = nil
  return L7_2
end
GetSafeAnimalSpawnPos = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 5000
  end
  L2_2 = IsModelInCdimage
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_16::
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 50
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if A1_2 < L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = true
  return L3_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCollision
  L2_2 = A0_2
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEntityInvincible
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanRagdoll
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = PlaceObjectOnGroundProperly
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1500
  L1_2(L2_2)
  L1_2 = AnimalSmartWander
  L2_2 = A0_2
  L1_2(L2_2)
end
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = IsEntityDead
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      L1_3 = false
      L2_3 = 1
      L3_3 = 10
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L0_3.x
        L7_3 = math
        L7_3 = L7_3.random
        L8_3 = -25
        L9_3 = 25
        L7_3 = L7_3(L8_3, L9_3)
        L6_3 = L6_3 + L7_3
        L6_3 = L6_3 + 0.0
        L7_3 = L0_3.y
        L8_3 = math
        L8_3 = L8_3.random
        L9_3 = -25
        L10_3 = 25
        L8_3 = L8_3(L9_3, L10_3)
        L7_3 = L7_3 + L8_3
        L7_3 = L7_3 + 0.0
        L8_3 = GetGroundZFor_3dCoord
        L9_3 = L6_3
        L10_3 = L7_3
        L11_3 = L0_3.z
        L11_3 = L11_3 + 50.0
        L12_3 = false
        L8_3, L9_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
        if L8_3 then
          L10_3 = TaskGoStraightToCoord
          L11_3 = A0_2
          L12_3 = L6_3
          L13_3 = L7_3
          L14_3 = L9_3
          L15_3 = 1.0
          L16_3 = -1
          L17_3 = 0.0
          L18_3 = 0.0
          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          L1_3 = true
          break
        end
      end
      if not L1_3 then
        L2_3 = TaskWanderStandard
        L3_3 = A0_2
        L4_3 = 10.0
        L5_3 = 10
        L2_3(L3_3, L4_3, L5_3)
      end
      L2_3 = Wait
      L3_3 = math
      L3_3 = L3_3.random
      L4_3 = 6000
      L5_3 = 12000
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L3_3(L4_3, L5_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    end
  end
  L1_2(L2_2)
end
AnimalSmartWander = L5_1
L5_1 = RegisterNetEvent
L6_1 = "SpawnWheelBarrow"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "SpawnWheelBarrow"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = SpawnObjectGrounded
  L3_2 = GetHashKey
  L4_2 = "prop_wheelbarrow01a"
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = GetEntityHeading
  L8_2 = L0_2
  L7_2 = L7_2(L8_2)
  L8_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L6_2 = A0_2 or L6_2
  if "number" ~= L6_2 or not A0_2 then
    L6_2 = GetHashKey
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
  end
  L7_2 = RequestModel
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = 0
  while true do
    L8_2 = HasModelLoaded
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      break
    end
    L8_2 = 200
    if not (L7_2 < L8_2) then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L7_2 = L7_2 + 1
  end
  L8_2 = HasModelLoaded
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = print
    L9_2 = "^1[SpawnObjectGrounded] model not loaded:^7"
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
    L8_2 = nil
    return L8_2
  end
  L8_2 = GetGroundZFor_3dCoord
  L9_2 = A1_2 + 0.0
  L10_2 = A2_2 + 0.0
  L11_2 = A3_2 + 1000.0
  L12_2 = false
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  if L8_2 then
    A3_2 = L9_2
  end
  L10_2 = CreateObject
  L11_2 = L6_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2 + 0.02
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = 0
  while true do
    L12_2 = DoesEntityExist
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if not (not L12_2 and L11_2 < 100) then
      break
    end
    L12_2 = Wait
    L13_2 = 0
    L12_2(L13_2)
    L11_2 = L11_2 + 1
  end
  L12_2 = DoesEntityExist
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = print
    L13_2 = "^1[SpawnObjectGrounded] object failed:^7"
    L14_2 = A0_2
    L12_2(L13_2, L14_2)
    L12_2 = nil
    return L12_2
  end
  L12_2 = PlaceObjectOnGroundProperly
  L13_2 = L10_2
  L12_2(L13_2)
  if A4_2 then
    L12_2 = SetEntityHeading
    L13_2 = L10_2
    L14_2 = A4_2 + 0.0
    L12_2(L13_2, L14_2)
  end
  if A5_2 then
    L12_2 = FreezeEntityPosition
    L13_2 = L10_2
    L14_2 = true
    L12_2(L13_2, L14_2)
  end
  L12_2 = SetModelAsNoLongerNeeded
  L13_2 = L6_2
  L12_2(L13_2)
  return L10_2
end
SpawnObjectGrounded = L5_1
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  while true do
    L0_2 = Wait
    L1_2 = 15000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = IsPedRunning
    L3_2 = ped
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedSprinting
      L3_2 = ped
      L2_2 = L2_2(L3_2)
    end
    L3_2 = entitiesAnimal
    L3_2 = #L3_2
    L4_2 = L1_1
    if L3_2 < L4_2 then
      L3_2 = NEBBIA
      if not L3_2 then
        L3_2 = InSafeZone
        L3_2 = L3_2()
        if not L3_2 then
          L3_2 = IsEntityVisible
          L4_2 = L0_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = IsPedOnFoot
            L4_2 = L0_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              L3_2 = IsEntityAttached
              L4_2 = L0_2
              L3_2 = L3_2(L4_2)
              if not L3_2 then
                L3_2 = DoesEntityExist
                L4_2 = L0_2
                L3_2 = L3_2(L4_2)
                if L3_2 then
                  L3_2 = GetResourceState
                  L4_2 = "striano_core"
                  L3_2 = L3_2(L4_2)
                  if "started" == L3_2 then
                    L3_2 = exports
                    L3_2 = L3_2.striano_core
                    L4_2 = L3_2
                    L3_2 = L3_2.gettutorial
                    L3_2 = L3_2(L4_2)
                    if L3_2 then
                      L3_2 = exports
                      L3_2 = L3_2.striano_core
                      L4_2 = L3_2
                      L3_2 = L3_2.getMissioneSurv
                      L3_2 = L3_2(L4_2)
                      if L3_2 > -50 then
                        L3_2 = exports
                        L3_2 = L3_2.striano_combat
                        L4_2 = L3_2
                        L3_2 = L3_2.insuperjump
                        L3_2 = L3_2(L4_2)
                        if not L3_2 then
                          L3_2 = GetEntityCoords
                          L4_2 = L0_2
                          L3_2 = L3_2(L4_2)
                          L4_2 = vector3
                          L5_2 = -528.026
                          L6_2 = 2043.931
                          L7_2 = 130.07
                          L4_2 = L4_2(L5_2, L6_2, L7_2)
                          L3_2 = L3_2 - L4_2
                          L3_2 = #L3_2
                          L4_2 = 150.0
                          if L3_2 > L4_2 then
                            L3_2 = GetEntityCoords
                            L4_2 = L0_2
                            L3_2 = L3_2(L4_2)
                            L4_2 = vector3
                            L5_2 = 0.0
                            L6_2 = 0.0
                            L7_2 = 0.0
                            L4_2 = L4_2(L5_2, L6_2, L7_2)
                            L3_2 = L3_2 - L4_2
                            L3_2 = #L3_2
                            L4_2 = 3500.0
                            if L3_2 < L4_2 then
                              L3_2 = math
                              L3_2 = L3_2.random
                              L4_2 = 1
                              L5_2 = L2_1
                              L5_2 = #L5_2
                              L3_2 = L3_2(L4_2, L5_2)
                              L4_2 = L2_1
                              L3_2 = L4_2[L3_2]
                              L4_2 = GetSafeAnimalSpawnPos
                              L5_2 = L1_2
                              L6_2 = 75.0
                              L7_2 = 7.5
                              L8_2 = 25
                              L9_2 = 30.0
                              L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
                              if L4_2 then
                                L5_2 = L4_2.z
                                if L5_2 < 15.0 then
                                  L5_2 = math
                                  L5_2 = L5_2.random
                                  L6_2 = 0
                                  L7_2 = 359
                                  L5_2 = L5_2(L6_2, L7_2)
                                  L5_2 = L5_2 + 0.0
                                  L6_2 = GetHashKey
                                  L7_2 = L3_2
                                  L6_2 = L6_2(L7_2)
                                  L7_2 = L3_1
                                  L8_2 = L6_2
                                  L9_2 = 5000
                                  L7_2 = L7_2(L8_2, L9_2)
                                  if L7_2 then
                                    L7_2 = 1
                                    if "a_c_rat" == L3_2 then
                                      L8_2 = math
                                      L8_2 = L8_2.random
                                      L9_2 = 1
                                      L10_2 = 5
                                      L8_2 = L8_2(L9_2, L10_2)
                                      L7_2 = L8_2
                                    end
                                    L8_2 = 1
                                    L9_2 = L7_2
                                    L10_2 = 1
                                    for L11_2 = L8_2, L9_2, L10_2 do
                                      L12_2 = 2.0
                                      L13_2 = math
                                      L13_2 = L13_2.random
                                      L13_2 = L13_2()
                                      L14_2 = math
                                      L14_2 = L14_2.pi
                                      L13_2 = L13_2 * L14_2
                                      L13_2 = L13_2 * 2
                                      L14_2 = math
                                      L14_2 = L14_2.random
                                      L14_2 = L14_2()
                                      L14_2 = L14_2 * L12_2
                                      L15_2 = vector3
                                      L16_2 = L4_2.x
                                      L17_2 = math
                                      L17_2 = L17_2.cos
                                      L18_2 = L13_2
                                      L17_2 = L17_2(L18_2)
                                      L17_2 = L17_2 * L14_2
                                      L16_2 = L16_2 + L17_2
                                      L17_2 = L4_2.y
                                      L18_2 = math
                                      L18_2 = L18_2.sin
                                      L19_2 = L13_2
                                      L18_2 = L18_2(L19_2)
                                      L18_2 = L18_2 * L14_2
                                      L17_2 = L17_2 + L18_2
                                      L18_2 = L4_2.z
                                      L15_2 = L15_2(L16_2, L17_2, L18_2)
                                      L4_2 = L15_2
                                      L16_2 = CreatePed
                                      L17_2 = 28
                                      L18_2 = L6_2
                                      L19_2 = L4_2.x
                                      L20_2 = L4_2.y
                                      L21_2 = L4_2.z
                                      L21_2 = L21_2 + 0.5
                                      L22_2 = L5_2
                                      L23_2 = false
                                      L24_2 = false
                                      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                                      L17_2 = 0
                                      while L17_2 < 100 do
                                        L18_2 = DoesEntityExist
                                        L19_2 = L16_2
                                        L18_2 = L18_2(L19_2)
                                        if L18_2 then
                                          break
                                        end
                                        L18_2 = Wait
                                        L19_2 = 0
                                        L18_2(L19_2)
                                        L17_2 = L17_2 + 1
                                      end
                                      L18_2 = DoesEntityExist
                                      L19_2 = L16_2
                                      L18_2 = L18_2(L19_2)
                                      if L18_2 then
                                        L18_2 = SetEntityVisible
                                        L19_2 = L16_2
                                        L20_2 = false
                                        L18_2(L19_2, L20_2)
                                        L18_2 = SetEntityAsMissionEntity
                                        L19_2 = L16_2
                                        L20_2 = true
                                        L21_2 = true
                                        L18_2(L19_2, L20_2, L21_2)
                                        L18_2 = GetEntityCoords
                                        L19_2 = L16_2
                                        L18_2 = L18_2(L19_2)
                                        L19_2 = vector3
                                        L20_2 = 0.0
                                        L21_2 = 0.0
                                        L22_2 = 0.0
                                        L19_2 = L19_2(L20_2, L21_2, L22_2)
                                        L19_2 = L18_2 - L19_2
                                        L19_2 = #L19_2
                                        if not (L19_2 < 50.0) then
                                          L19_2 = IsEntityInWater
                                          L20_2 = L16_2
                                          L19_2 = L19_2(L20_2)
                                          if not L19_2 then
                                            L19_2 = L18_2.z
                                            L20_2 = 0.5
                                            if not (L19_2 < L20_2) then
                                              goto lbl_252
                                            end
                                          end
                                        end
                                        L19_2 = DeleteEntity
                                        L20_2 = L16_2
                                        L19_2(L20_2)
                                        goto lbl_292
                                        ::lbl_252::
                                        L19_2 = GetEntityModel
                                        L20_2 = L16_2
                                        L19_2 = L19_2(L20_2)
                                        L20_2 = GetHashKey
                                        L21_2 = "a_c_hen"
                                        L20_2 = L20_2(L21_2)
                                        if L19_2 ~= L20_2 then
                                          L20_2 = GetHashKey
                                          L21_2 = "a_c_rat"
                                          L20_2 = L20_2(L21_2)
                                          if L19_2 ~= L20_2 then
                                            L20_2 = GetHashKey
                                            L21_2 = "a_c_rabbit_01"
                                            L20_2 = L20_2(L21_2)
                                            if L19_2 ~= L20_2 then
                                              goto lbl_274
                                            end
                                          end
                                        end
                                        L20_2 = SetEntityHealth
                                        L21_2 = L16_2
                                        L22_2 = 101
                                        L20_2(L21_2, L22_2)
                                        ::lbl_274::
                                        L20_2 = table
                                        L20_2 = L20_2.insert
                                        L21_2 = entitiesAnimal
                                        L22_2 = L16_2
                                        L20_2(L21_2, L22_2)
                                        L20_2 = L4_1
                                        L21_2 = L16_2
                                        L20_2(L21_2)
                                        L20_2 = SetPedAsNoLongerNeeded
                                        L21_2 = L16_2
                                        L20_2(L21_2)
                                        L20_2 = Wait
                                        L21_2 = 250
                                        L20_2(L21_2)
                                        L20_2 = SetEntityVisible
                                        L21_2 = L16_2
                                        L22_2 = true
                                        L20_2(L21_2, L22_2)
                                      end
                                      ::lbl_292::
                                    end
                                    L8_2 = SetModelAsNoLongerNeeded
                                    L9_2 = L6_2
                                    L8_2(L9_2)
                                  else
                                    L7_2 = print
                                    L8_2 = "[Spawner animals] model not valid:"
                                    L9_2 = L3_2
                                    L7_2(L8_2, L9_2)
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
      end
    end
    L3_2 = entitiesAnimal
    L3_2 = #L3_2
    L4_2 = 1
    L5_2 = -1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = entitiesAnimal
      L7_2 = L7_2[L6_2]
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = entitiesAnimal
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      else
        L8_2 = GetEntityCoords
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = IsEntityInWater
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = L8_2.z
          L10_2 = 0.1
          if not (L9_2 < L10_2) then
            L9_2 = vector3
            L10_2 = 0.0
            L11_2 = 0.0
            L12_2 = 0.0
            L9_2 = L9_2(L10_2, L11_2, L12_2)
            L9_2 = L8_2 - L9_2
            L9_2 = #L9_2
            if not (L9_2 < 50.0) then
              goto lbl_349
            end
          end
        end
        L9_2 = DeleteEntity
        L10_2 = L7_2
        L9_2(L10_2)
        L9_2 = table
        L9_2 = L9_2.remove
        L10_2 = entitiesAnimal
        L11_2 = L6_2
        L9_2(L10_2, L11_2)
        ::lbl_349::
        L9_2 = DoesEntityExist
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = GetEntitySpeed
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          L10_2 = 0.1
          if L9_2 < L10_2 then
            L9_2 = GetEntityCoords
            L10_2 = L7_2
            L9_2 = L9_2(L10_2)
            L10_2 = TaskWanderInArea
            L11_2 = L7_2
            L12_2 = L9_2.x
            L13_2 = L9_2.y
            L14_2 = L9_2.z
            L15_2 = 40.0
            L16_2 = 3.0
            L17_2 = 10.0
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          end
        end
      end
    end
  end
end
L5_1(L6_1)
function L5_1(A0_2)
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
PlayerVicino = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = 3.0
  if nil ~= A3_2 then
    L5_2 = A3_2
  end
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestNamedPtfxAsset
    L7_2 = A0_2
    L6_2(L7_2)
  end
  while true do
    L6_2 = HasNamedPtfxAssetLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = SetPtfxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if nil ~= A4_2 then
    L6_2 = A4_2
  end
  L7_2 = StartParticleFxLoopedAtCoord
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L6_2.x
  L11_2 = L6_2.y
  L12_2 = L6_2.z
  L13_2 = L5_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  return L7_2
end
L6_1 = {}
Transition = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = vec3
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L6_2 = A0_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 * A2_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.y
  L6_2 = A1_2.y
  L7_2 = A0_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * A2_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = A1_2.z
  L8_2 = A0_2.z
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
L7_1 = Transition
function L8_1(A0_2)
  local L1_2
  return A0_2
end
L7_1.Linear = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  return L1_2
end
L7_1.EaseIn = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2
  L1_2 = 2
  L1_2 = L1_2 - A0_2
  L1_2 = A0_2 * L1_2
  return L1_2
end
L7_1.EaseOut = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L2_2 = 4
    L1_2 = L2_2 - L1_2
    L1_2 = L1_2 * A0_2
    L1_2 = -1 + L1_2
    return L1_2
  end
end
L7_1.EaseInOut = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  L1_2 = L1_2 * A0_2
  return L1_2
end
L7_1.EaseInCubic = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 - 1
  L2_2 = L1_2 * L1_2
  L2_2 = L2_2 * L1_2
  L2_2 = L2_2 + 1
  return L2_2
end
L7_1.EaseOutCubic = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 4 * A0_2
    L1_2 = L1_2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L1_2 = L1_2 - 2
    L2_2 = 0.5 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 + 1
    return L2_2
  end
end
L7_1.EaseInOutCubic = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_44
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = A0_2 - 1
  L2_2 = 10 * L2_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = -L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = A0_2 - 1
  L5_2 = L1_2 / 4
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  ::lbl_44::
  return L2_2
end
L7_1.ElasticIn = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_41
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_41
    end
  end
  L2_2 = -10 * A0_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2 / 4
  L4_2 = A0_2 - L4_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_41::
  return L2_2
end
L7_1.ElasticOut = L8_1
L7_1 = Transition
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 4.5
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_64
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = 0.5
  if A0_2 < L2_2 then
    L2_2 = 20 * A0_2
    L2_2 = L2_2 - 10
    L3_2 = 2
    L2_2 = L3_2 ^ L2_2
    L2_2 = -0.5 * L2_2
    L3_2 = math
    L3_2 = L3_2.sin
    L4_2 = 20 * A0_2
    L4_2 = L4_2 - 11.125
    L4_2 = L4_2 * L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 * L3_2
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = -20 * A0_2
  L2_2 = L2_2 + 10
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = 0.5 * L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = 20 * A0_2
  L4_2 = L4_2 - 11.125
  L4_2 = L4_2 * L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_64::
  return L2_2
end
L7_1.ElasticInOut = L8_1
L7_1 = Transition
L8_1 = {}
L9_1 = Transition
L9_1 = L9_1.Linear
L8_1.Linear = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseIn
L8_1.EaseIn = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseOut
L8_1.EaseOut = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseInOut
L8_1.EaseInOut = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseInCubic
L8_1.EaseInCubic = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseOutCubic
L8_1.EaseOutCubic = L9_1
L9_1 = Transition
L9_1 = L9_1.EaseInOutCubic
L8_1.EaseInOutCubic = L9_1
L9_1 = Transition
L9_1 = L9_1.ElasticIn
L8_1.ElasticIn = L9_1
L9_1 = Transition
L9_1 = L9_1.ElasticOut
L8_1.ElasticOut = L9_1
L9_1 = Transition
L9_1 = L9_1.ElasticInOut
L8_1.ElasticInOut = L9_1
L7_1.Functions = L8_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = 0.0
  L8_2 = IsEntityPositionFrozen
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  while A5_2 > L7_2 do
    L9_2 = GetFrameTime
    L9_2 = L9_2()
    L7_2 = L7_2 + L9_2
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = math
    L10_2 = L10_2.max
    L11_2 = L7_2 / A5_2
    L12_2 = 0
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A6_2
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if A1_2 and A2_2 then
      L11_2 = L6_1
      L12_2 = A1_2
      L13_2 = A2_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityRotation
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = 2
      L18_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    if A3_2 and A4_2 then
      L11_2 = L6_1
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityCoords
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = true
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
  if A2_2 then
    L9_2 = SetEntityRotation
    L10_2 = A0_2
    L11_2 = A2_2.x
    L12_2 = A2_2.y
    L13_2 = A2_2.z
    L14_2 = 2
    L15_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  if A4_2 then
    L9_2 = SetEntityCoords
    L10_2 = A0_2
    L11_2 = A4_2.x
    L12_2 = A4_2.y
    L13_2 = A4_2.z
    L14_2 = true
    L15_2 = true
    L16_2 = true
    L17_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
end
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Transition
  L5_2 = L5_2.Functions
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L6_2 = print
    L7_2 = "^1Invalid transition name provided: ^7"
    L8_2 = tostring
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return
  end
  if A2_2 then
    L6_2 = GetEntityRotation
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_22
    end
  end
  L6_2 = nil
  ::lbl_22::
  if A3_2 then
    L7_2 = GetEntityCoords
    L8_2 = A1_2
    L9_2 = true
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_31
    end
  end
  L7_2 = nil
  ::lbl_31::
  L8_2 = L7_1
  L9_2 = A1_2
  L10_2 = L6_2
  L11_2 = A2_2
  L12_2 = L7_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = L5_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
TransitionEntity = L8_1
function L8_1(A0_2)
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
OpenInput = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = "CANCEL CALL"
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = 0
    while true do
      L1_3 = IsDisabledControlPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = StoChiamando
      L1_3 = #L1_3
      if not (L1_3 > 0 and L0_3 < 100) then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = IsEntityPlayingAnim
      L2_3 = L1_2
      L3_3 = "cellphone@stealth"
      L4_3 = "cellphone_call_listen_base"
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = faiAnim
        L2_3 = "cellphone@stealth"
        L3_3 = "cellphone_call_listen_base"
        L4_3 = -1
        L5_3 = 49
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L0_3 = L0_3 + 1
      end
      L1_3 = draw
      L2_3 = 73
      L3_3 = L2_2
      L4_3 = " (~h~"
      L5_3 = A0_2
      L6_3 = "~h~)"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = TriggerServerEvent
    L2_3 = "FineChiamataIDWatch"
    L3_3 = GetPlayerServerId
    L4_3 = PlayerId
    L4_3, L5_3, L6_3 = L4_3()
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = inCall
    L1_3(L2_3, L3_3, L4_3)
    inCall = 0
    haRisposto = false
    L1_3 = print
    L2_3 = "Chiamata annullata."
    L1_3(L2_3)
    L1_3 = ClearPedTasks
    L2_3 = L1_2
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.striano_combat
    L2_3 = L1_3
    L1_3 = L1_3.submex
    L3_3 = ""
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2)
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = "CLOSE CALL"
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = inCall
      if not (L0_3 > 0) then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = "cellphone@stealth"
      L3_3 = "cellphone_call_listen_base"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = faiAnim
        L1_3 = "cellphone@stealth"
        L2_3 = "cellphone_call_listen_base"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      L0_3 = draw
      L1_3 = 73
      L2_3 = L2_2
      L0_3(L1_3, L2_3)
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_42
        end
      end
      MiChiamano = ""
      StoChiamando = ""
      IdChiamataAttesa = 0
      inCall = 0
      haRisposto = false
      ::lbl_42::
    end
    L0_3 = TriggerServerEvent
    L1_3 = "FineChiamataIDWatch"
    L2_3 = GetPlayerServerId
    L3_3 = PlayerId
    L3_3, L4_3 = L3_3()
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2)
end
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
Giocatori = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Giocatori
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = false
  L5_2 = PlayerId
  L5_2 = L5_2()
  L6_2 = 1
  L7_2 = #L1_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = GetPlayerPed
    L11_2 = L1_2[L9_2]
    L10_2 = L10_2(L11_2)
    L11_2 = L1_2[L9_2]
    if L11_2 ~= L5_2 then
      L11_2 = GetEntityCoords
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = vector3
      L13_2 = A0_2.x
      L14_2 = A0_2.y
      L15_2 = A0_2.z
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L12_2 = L11_2 - L12_2
      L12_2 = #L12_2
      if -1 == L2_2 or L2_2 > L12_2 then
        L3_2 = L1_2[L9_2]
        L2_2 = L12_2
      end
    end
  end
  L6_2 = L3_2
  L7_2 = L2_2
  return L6_2, L7_2
end
PlayerVicinoPos = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = print
    L2_2 = "MODEL IS NIL"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_32
    end
  end
  L2_2 = print
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_32::
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L10_1
mioNumero = ""
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    L1_2 = HasCollisionLoadedAroundEntity
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.TriggerServerCallback
  L3_2 = "getphonenumber"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 and A0_3 then
      L1_3 = #A0_3
      if L1_3 > 1 then
        L1_3 = tostring
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        mioNumero = L1_3
        L1_3 = print
        L2_3 = "Your communicator number is: "
        L3_3 = A0_3
        L2_3 = L2_3 .. L3_3
        L1_3(L2_3)
    end
    else
      if nil ~= A0_3 then
        L1_3 = #A0_3
        if not (L1_3 < 1) then
          goto lbl_26
        end
      end
      L1_3 = print
      L2_3 = "You dont have a communicator number assigned."
      L1_3(L2_3)
    end
    ::lbl_26::
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.HintHud_SetVisible
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L10_1(L11_1)
L10_1 = RegisterNetEvent
L11_1 = "updateNumComunicatore"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "updateNumComunicatore"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  mioNumero = L1_2
  L1_2 = print
  L2_2 = "You get a new number: "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "getStatusClient"
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2[A0_2]
  return L2_2
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "onResourceStop"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = entitiesAnimal
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = -1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = entitiesAnimal
      L5_2 = L5_2[L4_2]
      L6_2 = DoesEntityExist
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = DeleteEntity
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
    L1_2 = clearRoute
    L1_2()
  end
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
RotationToDirection = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = GetGameplayCamRot
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetGameplayCamCoord
  L5_2 = L5_2()
  L6_2 = RotationToDirection
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L6_2.x
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2.y
  L10_2 = L6_2.y
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 + L10_2
  L10_2 = L5_2.z
  L11_2 = L6_2.z
  L11_2 = L11_2 * A1_2
  L10_2 = L10_2 + L11_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not A2_2 then
    A2_2 = 1
  end
  L8_2 = GetShapeTestResult
  L9_2 = StartShapeTestRay
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = L7_2.x
  L14_2 = L7_2.y
  L15_2 = L7_2.z
  L16_2 = A2_2
  L17_2 = -1
  L18_2 = 1
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = L12_2
  L16_2 = L7_2
  return L13_2, L14_2, L15_2, L16_2
end
RayCastGamePlayWeapon = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = GetGameplayCamRot
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetGameplayCamCoord
  L5_2 = L5_2()
  L6_2 = RotationToDirection
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L6_2.x
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2.y
  L10_2 = L6_2.y
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 + L10_2
  L10_2 = L5_2.z
  L11_2 = L6_2.z
  L11_2 = L11_2 * A1_2
  L10_2 = L10_2 + L11_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not A2_2 then
    A2_2 = 1
  end
  L8_2 = GetShapeTestResult
  L9_2 = StartShapeTestRay
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = L7_2.x
  L14_2 = L7_2.y
  L15_2 = L7_2.z
  L16_2 = A2_2
  L17_2 = -1
  L18_2 = 1
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = L12_2
  L16_2 = L7_2
  return L13_2, L14_2, L15_2, L16_2
end
RayCastGamePlayCamera = L10_1
L10_1 = false
L11_1 = CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = 500
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetCurrentPedWeaponEntityIndex
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 > 0 then
      L3_2 = IsControlPressed
      L4_2 = 0
      L5_2 = 25
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = IsPedArmed
        L4_2 = L1_2
        L5_2 = 4
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L3_2 = L10_1
          if not L3_2 then
            L3_2 = true
            L10_1 = L3_2
            L3_2 = ExecuteCommand
            L4_2 = "e cc"
            L3_2(L4_2)
          end
          L3_2 = RayCastGamePlayWeapon
          L4_2 = L2_2
          L5_2 = 15.0
          L6_2 = 1
          L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2)
          L6_2 = RayCastGamePlayCamera
          L7_2 = L2_2
          L8_2 = 1000.0
          L9_2 = 1
          L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
          if L3_2 > 0 and L5_2 > 0 then
            L9_2 = math
            L9_2 = L9_2.abs
            L10_2 = #L4_2
            L11_2 = #L7_2
            L10_2 = L10_2 - L11_2
            L9_2 = L9_2(L10_2)
            L10_2 = 0.8
            if L9_2 > L10_2 then
              L0_2 = 0
              L9_2 = Draw3DText
              L10_2 = L4_2.x
              L11_2 = L4_2.y
              L12_2 = L4_2.z
              L13_2 = "\226\157\140"
              L9_2(L10_2, L11_2, L12_2, L13_2)
              L9_2 = DisablePlayerFiring
              L10_2 = L1_2
              L11_2 = true
              L9_2(L10_2, L11_2)
              L9_2 = DisableControlAction
              L10_2 = 0
              L11_2 = 106
              L12_2 = true
              L9_2(L10_2, L11_2, L12_2)
              L9_2 = IsDisabledControlJustPressed
              L10_2 = 0
              L11_2 = 24
              L9_2 = L9_2(L10_2, L11_2)
              if L9_2 then
                L9_2 = PlaySoundFrontend
                L10_2 = -1
                L11_2 = "Pin_Bad"
                L12_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
                L13_2 = 1
                L9_2(L10_2, L11_2, L12_2, L13_2)
              end
            end
          end
      end
    end
    else
      L3_2 = L10_1
      if L3_2 then
        L3_2 = false
        L10_1 = L3_2
      end
      L3_2 = Wait
      L4_2 = L0_2
      L3_2(L4_2)
    end
    L3_2 = Wait
    L4_2 = L0_2
    L3_2(L4_2)
  end
end
L11_1(L12_1)
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L7_2 = SetTextScale
    L8_2 = 0.3
    L9_2 = 0.3
    L7_2(L8_2, L9_2)
    L7_2 = SetTextFont
    L8_2 = 0
    L7_2(L8_2)
    L7_2 = SetTextColour
    L8_2 = 255
    L9_2 = 255
    L10_2 = 255
    L11_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetTextDropshadow
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = SetTextDropShadow
    L7_2()
    L7_2 = SetTextOutline
    L7_2()
    L7_2 = SetTextEntry
    L8_2 = "STRING"
    L7_2(L8_2)
    L7_2 = SetTextCentre
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = AddTextComponentString
    L8_2 = A3_2
    L7_2(L8_2)
    L7_2 = DrawText
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
Draw3DText = L11_1
L11_1 = 7.5
L12_1 = RegisterCommand
L13_1 = "lavapavimento"
function L14_1()
  local L0_2, L1_2
  L0_2 = funzioneLavaterra
  L0_2()
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "lavaterra"
function L14_1()
  local L0_2, L1_2
  L0_2 = funzioneLavaterra
  L0_2()
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "lavasangue"
function L14_1()
  local L0_2, L1_2
  L0_2 = funzioneLavaterra
  L0_2()
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "lp"
function L14_1()
  local L0_2, L1_2
  L0_2 = funzioneLavaterra
  L0_2()
end
L12_1(L13_1, L14_1)
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "anim@amb@drug_field_workers@rake@male_b@base"
  L4_2 = "base"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "e scopa"
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      while true do
        L0_3 = Wait
        L1_3 = 1
        L0_3(L1_3)
        L0_3 = IsEntityPlayingAnim
        L1_3 = L0_2
        L2_3 = "anim@amb@drug_field_workers@rake@male_b@base"
        L3_3 = "base"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 73
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_28
            end
          end
        end
        L0_3 = ExecuteCommand
        L1_3 = "e puliscimani"
        L0_3(L1_3)
        do return end
        ::lbl_28::
        L0_3 = GetEntityCoords
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        L1_3 = TriggerServerEvent
        L2_3 = "WE:LavaPavimento"
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
        L1_3 = RemoveDecalsInRange
        L2_3 = L0_3.x
        L3_3 = L0_3.y
        L4_3 = L0_3.z
        L5_3 = L11_1
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = Wait
        L2_3 = 1000
        L1_3(L2_3)
      end
    end
    L1_2(L2_2)
  end
end
funzioneLavaterra = L12_1
L12_1 = RegisterNetEvent
L13_1 = "WE:LavaPavimento_c"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "WE:LavaPavimento_c"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = RemoveDecalsInRange
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L5_2 = L11_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L12_1(L13_1, L14_1)
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 15.0
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = GetGamePool
  L4_2 = "CObject"
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = ipairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetEntityModel
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 == A0_2 then
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = GetEntityCoords
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = tonumber
      L13_2 = L2_2
      L12_2 = L12_2(L13_2)
      if L11_2 < L12_2 then
        L11_2 = DoesEntityExist
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = SetEntityAsMissionEntity
          L12_2 = L10_2
          L11_2(L12_2)
          L11_2 = DeleteEntity
          L12_2 = L10_2
          L11_2(L12_2)
          L4_2 = L4_2 + 1
        end
      end
    end
  end
end
FindAttachedClampByEntity = L12_1
L12_1 = RegisterNetEvent
L13_1 = "FindAttachedClampByEntity"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "FindAttachedClampByEntity"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A0_2 then
    function L2_2(A0_3)
      local L1_3, L2_3
      L1_3 = type
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if "string" == L1_3 then
        L1_3 = GetHashKey
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        A0_3 = L1_3
      else
        L1_3 = tonumber
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        A0_3 = L1_3 or A0_3
        if not L1_3 then
          A0_3 = 0
        end
      end
      return A0_3
    end
    L3_2 = FindAttachedClampByEntity
    L4_2 = L2_2
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
  end
end
L12_1(L13_1, L14_1)
GRUOBJ = nil
fxfumo = nil
fxfumo2 = nil
fxfumo3 = nil
L12_1 = nil
L13_1 = RegisterNetEvent
L14_1 = "prendiPillola"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L12_1
  if nil == L2_2 then
    L2_2 = IsEntityPlayingAnim
    L3_2 = L1_2
    L4_2 = "emergency1@pills@clip"
    L5_2 = "pills_clip"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = -756465278
      L3_2 = RequestModelStriano
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = CreateObject
      L4_2 = L2_2
      L5_2 = GetEntityCoords
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L6_2 = true
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L12_1 = L3_2
      L3_2 = AddPropToPlayer
      L4_2 = nil
      L5_2 = 4089
      L6_2 = 0.02
      L7_2 = -0.02
      L8_2 = -0.02
      L9_2 = -137.09
      L10_2 = 13.69
      L11_2 = -25.04
      L12_2 = L12_1
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L3_2 = SetEntityCollision
      L4_2 = L12_1
      L5_2 = false
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
      while true do
        L3_2 = DoesEntityExist
        L4_2 = L12_1
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 25
        L3_2(L4_2)
      end
      L3_2 = A0_2.slot
      L4_2 = exports
      L4_2 = L4_2.striano_core
      L5_2 = L4_2
      L4_2 = L4_2.TriggerServerCallback
      L6_2 = "togliPillola"
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        L1_3 = faiAnim
        L2_3 = "emergency1@pills@clip"
        L3_3 = "pills_clip"
        L4_3 = 3500
        L5_3 = 49
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = Wait
        L2_3 = 25
        L1_3(L2_3)
        L1_3 = "sounds/pills"
        L2_3 = L1_3
        L3_3 = ".ogg"
        L2_3 = L2_3 .. L3_3
        L3_3 = exports
        L3_3 = L3_3.xsound
        L4_3 = L3_3
        L3_3 = L3_3.PlayUrlPos
        L5_3 = L1_3
        L6_3 = L2_3
        L7_3 = 0.3
        L8_3 = GetEntityCoords
        L9_3 = L1_2
        L8_3, L9_3 = L8_3(L9_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        while true do
          L3_3 = IsEntityPlayingAnim
          L4_3 = L1_2
          L5_3 = "emergency1@pills@clip"
          L6_3 = "pills_clip"
          L7_3 = 3
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
          if not L3_3 then
            break
          end
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
        end
        if nil == A0_3 then
          L3_3 = SetEntityAsMissionEntity
          L4_3 = L12_1
          L3_3(L4_3)
          L3_3 = DeleteEntity
          L4_3 = L12_1
          L3_3(L4_3)
          L3_3 = nil
          L12_1 = L3_3
          L3_3 = print
          L4_3 = "Non ho trovato l'item."
          L3_3(L4_3)
        elseif A0_3 > 0 then
          L3_3 = SetEntityAsMissionEntity
          L4_3 = L12_1
          L3_3(L4_3)
          L3_3 = DeleteEntity
          L4_3 = L12_1
          L3_3(L4_3)
          L3_3 = nil
          L12_1 = L3_3
        else
          L3_3 = LanciaSiringa
          L4_3 = L12_1
          L3_3(L4_3)
          L3_3 = nil
          L12_1 = L3_3
        end
      end
      L8_2 = GetPlayerServerId
      L9_2 = PlayerId
      L9_2, L10_2, L11_2, L12_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = L3_2
      L10_2 = "content-"
      L11_2 = 1.0
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  else
    L2_2 = print
    L3_2 = "Stai gi\195\160 prendendo pillole!"
    L2_2(L3_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "onAntidoto"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = -298630371
  L1_2 = RequestModelStriano
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = CreateObject
  L2_2 = L0_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = AddPropToPlayer
  L3_2 = nil
  L4_2 = 36029
  L5_2 = 0.04
  L6_2 = 0.04
  L7_2 = 0.0
  L8_2 = -90.44
  L9_2 = 35.47
  L10_2 = -16.02
  L11_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = faiAnim
  L3_2 = "emergency1@syringe@clip"
  L4_2 = "syringe_clip"
  L5_2 = 5350
  L6_2 = 49
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = "sounds/syringe"
  L3_2 = L2_2
  L4_2 = ".ogg"
  L3_2 = L3_2 .. L4_2
  L4_2 = exports
  L4_2 = L4_2.xsound
  L5_2 = L4_2
  L4_2 = L4_2.PlayUrlPos
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0.3
  L9_2 = GetEntityCoords
  L10_2 = PlayerPedId
  L10_2, L11_2 = L10_2()
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L4_2 = IsEntityPlayingAnim
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = "emergency1@syringe@clip"
    L7_2 = "syringe_clip"
    L8_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if not L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = LanciaSiringa
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = TriggerServerEvent
  L5_2 = "cavallo:toglisella"
  L6_2 = "antidoto"
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = AumentaVita
  L5_2 = 50
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L13_1(L14_1, L15_1)
L13_1 = nil
L14_1 = RegisterNetEvent
L15_1 = "onFasciaBraccia"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L13_1
  if nil == L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "emergency1@bandagearm@clip"
    L4_2 = "bandagearm_clip"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "cavallo:toglisella"
      L3_2 = "fasciabraccia"
      L4_2 = 1
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = "sounds/bandage"
      L2_2 = L1_2
      L3_2 = ".ogg"
      L2_2 = L2_2 .. L3_2
      L3_2 = exports
      L3_2 = L3_2.xsound
      L4_2 = L3_2
      L3_2 = L3_2.PlayUrlPos
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = 0.3
      L8_2 = GetEntityCoords
      L9_2 = L0_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L3_2 = faiAnim
      L4_2 = "emergency1@bandagearm@clip"
      L5_2 = "bandagearm_clip"
      L6_2 = 5500
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = Wait
      L4_2 = 1500
      L3_2(L4_2)
      L3_2 = -756465278
      L4_2 = RequestModelStriano
      L5_2 = L3_2
      L4_2(L5_2)
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L13_1 = L4_2
      L4_2 = AddPropToPlayer
      L5_2 = nil
      L6_2 = 28252
      L7_2 = -0.23
      L8_2 = -0.12
      L9_2 = 0.09
      L10_2 = 137.97
      L11_2 = -34.49
      L12_2 = 88.56
      L13_2 = L13_1
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L4_2 = AumentaVita
      L5_2 = 25
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 60000
      L4_2(L5_2)
      L4_2 = SetEntityAsMissionEntity
      L5_2 = L13_1
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = DeleteEntity
      L5_2 = L13_1
      L4_2(L5_2)
      L4_2 = nil
      L13_1 = L4_2
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = nil
L15_1 = RegisterNetEvent
L16_1 = "onFasciaGambe"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L14_1
  if nil == L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "emergency1@bandageleg@clip"
    L4_2 = "bandageleg_clip"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "cavallo:toglisella"
      L3_2 = "fasciagambe"
      L4_2 = 1
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = "sounds/bandage"
      L2_2 = L1_2
      L3_2 = ".ogg"
      L2_2 = L2_2 .. L3_2
      L3_2 = exports
      L3_2 = L3_2.xsound
      L4_2 = L3_2
      L3_2 = L3_2.PlayUrlPos
      L5_2 = L1_2
      L6_2 = L2_2
      L7_2 = 0.3
      L8_2 = GetEntityCoords
      L9_2 = L0_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L3_2 = faiAnim
      L4_2 = "emergency1@bandageleg@clip"
      L5_2 = "bandageleg_clip"
      L6_2 = 6500
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = Wait
      L4_2 = 1500
      L3_2(L4_2)
      L3_2 = -756465278
      L4_2 = RequestModelStriano
      L5_2 = L3_2
      L4_2(L5_2)
      L4_2 = CreateObject
      L5_2 = L3_2
      L6_2 = GetEntityCoords
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L7_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L14_1 = L4_2
      L4_2 = AddPropToPlayer
      L5_2 = nil
      L6_2 = 51826
      L7_2 = 0.3
      L8_2 = 0.01
      L9_2 = 0.02
      L10_2 = 2.96
      L11_2 = -78.18
      L12_2 = -136.04
      L13_2 = L14_1
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L4_2 = AumentaVita
      L5_2 = 35
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 60000
      L4_2(L5_2)
      L4_2 = SetEntityAsMissionEntity
      L5_2 = L14_1
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = DeleteEntity
      L5_2 = L14_1
      L4_2(L5_2)
      L4_2 = nil
      L14_1 = L4_2
    end
  end
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if nil ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = 64781110
      L3_2 = DetachEntity
      L4_2 = A0_2
      L5_2 = true
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = FreezeEntityPosition
      L4_2 = A0_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = RequestModelStriano
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = GetEntityForwardVector
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = table
      L4_2 = L4_2.unpack
      L5_2 = GetEntityCoords
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L6_2 = L3_2 * 0.5
      L5_2 = L5_2 + L6_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L7_2 = CreateObject
      L8_2 = L2_2
      L9_2 = vector3
      L10_2 = L4_2
      L11_2 = L5_2
      L12_2 = L6_2 + 1.0
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = true
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = SetEntityNoCollisionEntity
      L9_2 = L7_2
      L10_2 = L1_2
      L11_2 = false
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = SetEntityVisible
      L9_2 = L7_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityAlpha
      L9_2 = L7_2
      L10_2 = 0
      L8_2(L9_2, L10_2)
      L8_2 = Wait
      L9_2 = 25
      L8_2(L9_2)
      L8_2 = SetEntityRotation
      L9_2 = L7_2
      L10_2 = 0.0
      L11_2 = 90.0
      L12_2 = 0.0
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = FreezeEntityPosition
      L9_2 = A0_2
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = AttachEntityToEntity
      L9_2 = A0_2
      L10_2 = L7_2
      L11_2 = GetPedBoneIndex
      L12_2 = L1_2
      L13_2 = 0
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L21_2 = false
      L22_2 = 2
      L23_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L8_2 = GetEntityCoords
      L9_2 = L1_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetEntityHeading
      L10_2 = L1_2
      L9_2 = L9_2(L10_2)
      L10_2 = GetEntityForwardX
      L11_2 = L1_2
      L10_2 = L10_2(L11_2)
      L11_2 = GetEntityForwardY
      L12_2 = L1_2
      L11_2 = L11_2(L12_2)
      L12_2 = SetEntityVelocity
      L13_2 = L7_2
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = SetEntityVelocity
      L13_2 = L7_2
      L14_2 = 0.0
      L15_2 = 0.0
      L16_2 = 1.0
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = SetEntityAngularVelocity
      L13_2 = L7_2
      L14_2 = 250.0
      L15_2 = 250.0
      L16_2 = 250.0
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L12_2 = Wait
      L13_2 = 25
      L12_2(L13_2)
      L12_2 = SetEntityAlpha
      L13_2 = A0_2
      L14_2 = 215
      L12_2(L13_2, L14_2)
      L12_2 = SetFollowPedCamViewMode
      L13_2 = 0
      L12_2(L13_2)
      L12_2 = 0
      while true do
        L13_2 = GetEntitySpeed
        L14_2 = L7_2
        L13_2 = L13_2(L14_2)
        L14_2 = 0.2
        if not (L13_2 > L14_2 and L12_2 < 100) then
          break
        end
        L12_2 = L12_2 + 1
        L13_2 = Wait
        L14_2 = 0
        L13_2(L14_2)
      end
      L13_2 = CreateThread
      function L14_2()
        local L0_3, L1_3, L2_3
        L0_3 = 0
        while true do
          L1_3 = Wait
          L2_3 = 1000
          L1_3(L2_3)
          if L0_3 < 7 then
            L0_3 = L0_3 + 1
          else
            L1_3 = DoesEntityExist
            L2_3 = A0_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = SetEntityAsMissionEntity
              L2_3 = A0_2
              L1_3(L2_3)
              L1_3 = DeleteEntity
              L2_3 = A0_2
              L1_3(L2_3)
            end
            L1_3 = DoesEntityExist
            L2_3 = L7_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = SetEntityAsMissionEntity
              L2_3 = L7_2
              L1_3(L2_3)
              L1_3 = DeleteEntity
              L2_3 = L7_2
              L1_3(L2_3)
            end
            return
          end
        end
      end
      L13_2(L14_2)
    end
  end
end
LanciaSiringa = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityHealth
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 + A0_2
  L5_2 = exports
  L5_2 = L5_2.striano_core
  L6_2 = L5_2
  L5_2 = L5_2.getliferank
  L5_2 = L5_2(L6_2)
  if L4_2 < L5_2 then
    L6_2 = SetEntityHealth
    L7_2 = L2_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submexInfo
    L8_2 = "+10hp ("
    L9_2 = GetEntityHealth
    L10_2 = L2_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - 100
    L10_2 = "hp)"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = SetEntityHealth
    L7_2 = L2_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submexInfo
    L8_2 = "Vita al massimo: "
    L9_2 = L5_2
    L10_2 = "hp"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2(L7_2, L8_2)
  end
  if nil == A1_2 then
  else
    L6_2 = exports
    L6_2 = L6_2.striano_editor
    L7_2 = L6_2
    L6_2 = L6_2.resettaferitasingola
    L6_2(L7_2)
  end
  L6_2 = TriggerServerEvent
  L7_2 = "status:set"
  L8_2 = GetPlayerServerId
  L9_2 = PlayerId
  L9_2, L10_2, L11_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = "vitapl"
  L10_2 = GetEntityHealth
  L11_2 = L2_2
  L10_2, L11_2 = L10_2(L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
AumentaVita = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Il numero che hai tentato di chiamare non \195\168 valido."
    L1_2(L2_2, L3_2)
  else
    L1_2 = mioNumero
    if "" == L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.submexError
      L3_2 = "Non hai ancora impostato un tuo numero di telefono per chiamare."
      L1_2(L2_2, L3_2)
    else
      inCall = 9999
      L1_2 = exports
      L1_2 = L1_2.striano_fastmenu
      L2_2 = L1_2
      L1_2 = L1_2.close
      L1_2(L2_2)
      L1_2 = tostring
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      StoChiamando = L1_2
      L1_2 = TriggerServerEvent
      L2_2 = "IniziaChiamataWatch"
      L3_2 = GetPlayerServerId
      L4_2 = PlayerId
      L4_2, L5_2 = L4_2()
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = StoChiamando
      L5_2 = mioNumero
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = L8_1
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = mioNumero
  if "" ~= L0_2 then
    L0_2 = mioNumero
    L0_2 = #L0_2
    if 0 ~= L0_2 then
      goto lbl_20
    end
  end
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "ERROR"
  L3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexError
  L2_2 = "You dont have a sim inserted."
  L0_2(L1_2, L2_2)
  goto lbl_68
  ::lbl_20::
  L0_2 = tostring
  L1_2 = OpenInput
  L2_2 = "Insert caller"
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = #L0_2
  if L1_2 > 1 and nil ~= L0_2 then
    L1_2 = tostring
    L2_2 = mioNumero
    L1_2 = L1_2(L2_2)
    L2_2 = tostring
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    if L1_2 ~= L2_2 then
      L1_2 = print
      L2_2 = "Effettuo una chiamata al numero inserito e vedo se esiste: "
      L3_2 = L0_2
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = L15_1
      L2_2 = L0_2
      L1_2(L2_2)
      return
    else
      L1_2 = PlaySoundFrontend
      L2_2 = -1
      L3_2 = "ERROR"
      L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L5_2 = 1
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = print
      L2_2 = "Hai tentato di chiamare te stesso!"
      L1_2(L2_2)
      return
    end
  else
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "ERROR"
    L4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = print
    L2_2 = "Hai tentato di chiamare te stesso oppure il numero non era valido!"
    L1_2(L2_2)
  end
  ::lbl_68::
end
Chiamata = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "RispondiChiamataWatch"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  inCall = A0_2
  ChiudiSubito = false
  L1_2 = DestroyMobilePhone
  L1_2()
  haRisposto = true
  phone = false
  antiSpamTel = false
  L1_2 = L9_1
  L2_2 = A0_2
  L1_2(L2_2)
end
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.close
  L0_2(L1_2)
  while true do
    L0_2 = MiChiamano
    L0_2 = #L0_2
    if not (L0_2 > 0) then
      break
    end
    L0_2 = draw
    L1_2 = 176
    L2_2 = "Answer the call ~h~"
    L3_2 = MiChiamano
    L2_2 = L2_2 .. L3_2
    L3_2 = 177
    L4_2 = "Reject call"
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = IsControlJustPressed
    L1_2 = 3
    L2_2 = 176
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = print
      L1_2 = "Rispondo alla chiamata "
      L2_2 = IdChiamataAttesa
      L1_2 = L1_2 .. L2_2
      L0_2(L1_2)
      L0_2 = L16_1
      L1_2 = IdChiamataAttesa
      L0_2(L1_2)
      IdChiamataAttesa = 0
      MiChiamano = ""
      return
    end
    L0_2 = IsControlJustPressed
    L1_2 = 3
    L2_2 = 177
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "AvvisoChiamataStaccataWatch"
      L2_2 = GetPlayerServerId
      L3_2 = PlayerId
      L3_2, L4_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = MiChiamano
      L0_2(L1_2, L2_2, L3_2)
      inCall = 0
      haRisposto = false
      IdChiamataAttesa = 0
      MiChiamano = ""
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 73
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "USE SIM"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerServerEvent
    L1_3 = "esx_cartesim:sim_use"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
    L0_3 = exports
    L0_3 = L0_3.striano_combat
    L1_3 = L0_3
    L0_3 = L0_3.submexInfo
    L2_3 = "Sim "
    L3_3 = A0_2
    L4_3 = " insert."
    L2_3 = L2_3 .. L3_3 .. L4_3
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    mioNumero = L0_3
    L0_3 = ExecuteCommand
    L1_3 = "me insert a sim"
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "me "
    L2_3 = A0_2
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "e monta2"
    L0_3(L1_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "GIVE NEAR"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = mioNumero
    L1_3 = A0_2
    if L0_3 ~= L1_3 then
      L1_3 = PlayerVicino
      L1_3, L2_3 = L1_3()
      if -1 == L1_3 or L2_3 > 2.0 then
        L3_3 = exports
        L3_3 = L3_3.striano_combat
        L4_3 = L3_3
        L3_3 = L3_3.submexError
        L5_3 = "No one near."
        L3_3(L4_3, L5_3)
      else
        L3_3 = TriggerServerEvent
        L4_3 = "applySim"
        L5_3 = GetPlayerServerId
        L6_3 = L1_3
        L5_3 = L5_3(L6_3)
        L6_3 = A0_2
        L3_3(L4_3, L5_3, L6_3)
        L3_3 = TriggerServerEvent
        L4_3 = "esx_cartesim:sim_delete"
        L5_3 = GetPlayerServerId
        L6_3 = PlayerId
        L6_3 = L6_3()
        L5_3 = L5_3(L6_3)
        L6_3 = A0_2
        L3_3(L4_3, L5_3, L6_3)
      end
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "This sim is insert."
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "BROKE SIM"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = mioNumero
    L1_3 = A0_2
    if L0_3 ~= L1_3 then
      L1_3 = ExecuteCommand
      L2_3 = "e damn2"
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = "esx_cartesim:sim_delete"
      L3_3 = GetPlayerServerId
      L4_3 = PlayerId
      L4_3, L5_3 = L4_3()
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexInfo
      L3_3 = "Sim "
      L4_3 = A0_2
      L5_3 = " destroyed."
      L3_3 = L3_3 .. L4_3 .. L5_3
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "me broke a sim ("
      L3_3 = A0_2
      L4_3 = ")"
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
      L1_3 = ExecuteCommand
      L2_3 = "me "
      L3_3 = A0_2
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = ExecuteCommand
      L2_3 = "e monta2"
      L1_3(L2_3)
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "This sim is insert."
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "UNASSIGN SIM"
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = mionum
    L1_3 = A0_2
    if L0_3 == L1_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "esx_cartesim:sim_use"
      L2_3 = "No"
      L0_3(L1_3, L2_3)
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.submexInfo
      L2_3 = "Sim unassigned."
      L0_3(L1_3, L2_3)
      L0_3 = ExecuteCommand
      L1_3 = "me sim unassigned ("
      L2_3 = A0_2
      L3_3 = ")"
      L1_3 = L1_3 .. L2_3 .. L3_3
      L0_3(L1_3)
      L0_3 = ExecuteCommand
      L1_3 = "me "
      L2_3 = A0_2
      L1_3 = L1_3 .. L2_3
      L0_3(L1_3)
      mioNumero = ""
      L0_3 = ExecuteCommand
      L1_3 = "e monta2"
      L0_3(L1_3)
    else
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.submexError
      L2_3 = "Sim not assigned."
      L0_3(L1_3, L2_3)
    end
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.number
    L8_2 = mioNumero
    L8_2 = #L8_2
    if L8_2 > 0 then
      L8_2 = tostring
      L9_2 = mioNumero
      L8_2 = L8_2(L9_2)
      L9_2 = tostring
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        L8_2 = L6_2.number
        L9_2 = " (Current)"
        L8_2 = L8_2 .. L9_2
        L7_2 = L8_2
      end
    end
    if L7_2 then
      L8_2 = #L7_2
      if L8_2 > 0 then
        L8_2 = exports
        L8_2 = L8_2.striano_fastmenu
        L9_2 = L8_2
        L8_2 = L8_2.addMenuItem
        L10_2 = L7_2
        function L11_2()
          local L0_3, L1_3
          L0_3 = L18_1
          L1_3 = L7_2
          L0_3(L1_3)
        end
        L12_2 = false
        L8_2(L9_2, L10_2, L11_2, L12_2)
    end
    else
      L8_2 = TriggerServerEvent
      L9_2 = "esx_cartesim:sim_delete"
      L10_2 = GetPlayerServerId
      L11_2 = PlayerId
      L11_2, L12_2 = L11_2()
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L20_1 = RegisterCommand
L21_1 = "sim"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.TriggerServerCallback
  L2_2 = "esx_cartesim:GetList"
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = #A0_3
    if L1_3 > 0 then
      L1_3 = L19_1
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
L20_1(L21_1, L22_1)
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.testo3d
  L2_2 = "WIP"
  L0_2(L1_2, L2_2)
end
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = "CALL"
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = L1_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = Chiamata
    L0_3()
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = "SIM LIST"
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.TriggerServerCallback
  L5_2 = "esx_cartesim:GetList"
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = #A0_3
    if L1_3 > 0 then
      L1_3 = exports
      L1_3 = L1_3.striano_fastmenu
      L2_3 = L1_3
      L1_3 = L1_3.addMenuItem
      L3_3 = L2_2
      L4_3 = " ("
      L5_3 = #A0_3
      L6_3 = ")"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      function L4_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L1_4 = A0_3
        L0_4(L1_4)
      end
      L5_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = "CONTACTS"
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = L3_2
  L7_2 = " (0)"
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = L20_1
    L0_3()
  end
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = "A/D CALL"
  L5_2 = MiChiamano
  L5_2 = #L5_2
  if L5_2 > 0 then
    L5_2 = exports
    L5_2 = L5_2.striano_fastmenu
    L6_2 = L5_2
    L5_2 = L5_2.addMenuItem
    L7_2 = L4_2
    L8_2 = " ("
    L9_2 = MiChiamano
    L10_2 = ")"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    function L8_2()
      local L0_3, L1_3
      L0_3 = L17_1
      L0_3()
    end
    L9_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.openMenu
  L5_2(L6_2)
end
OpenComunicatore = L21_1
L21_1 = RegisterCommand
L22_1 = "openComm"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.editorattivo
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.isopen
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L2_2 = L1_2
      L1_2 = L1_2.inCall
      L1_2 = L1_2(L2_2)
      if 0 == L1_2 then
        L1_2 = GetPauseMenuState
        L1_2 = L1_2()
        if 0 == L1_2 then
          L1_2 = IsNuiFocused
          L1_2 = L1_2()
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.skinchanger
            L2_2 = L1_2
            L1_2 = L1_2.menuaperto
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = exports
              L1_2 = L1_2.striano_editor
              L2_2 = L1_2
              L1_2 = L1_2.inghost
              L1_2 = L1_2(L2_2)
              if nil == L1_2 then
                L1_2 = exports
                L1_2 = L1_2.striano_ridehorse
                L2_2 = L1_2
                L1_2 = L1_2.inShopAnimals
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = IsEntityVisible
                  L2_2 = L0_2
                  L1_2 = L1_2(L2_2)
                  if L1_2 then
                    while true do
                      L1_2 = IsControlPressed
                      L2_2 = 0
                      L3_2 = 200
                      L1_2 = L1_2(L2_2, L3_2)
                      if not L1_2 then
                        L1_2 = IsDisabledControlPressed
                        L2_2 = 0
                        L3_2 = 200
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          L1_2 = IsControlPressed
                          L2_2 = 0
                          L3_2 = 177
                          L1_2 = L1_2(L2_2, L3_2)
                          if not L1_2 then
                            L1_2 = IsDisabledControlPressed
                            L2_2 = 0
                            L3_2 = 177
                            L1_2 = L1_2(L2_2, L3_2)
                            if not L1_2 then
                              break
                            end
                          end
                        end
                      end
                      L1_2 = Wait
                      L2_2 = 0
                      L1_2(L2_2)
                    end
                    L1_2 = OpenComunicatore
                    L1_2()
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
L21_1(L22_1, L23_1)
inCall = 0
haRisposto = false
MiChiamano = ""
StoChiamando = ""
IdChiamataAttesa = 0
L21_1 = RegisterNetEvent
L22_1 = "chiudiChiamataIDWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "chiudiChiamataIDWatch"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = inCall
  if L1_2 > 0 then
    L1_2 = inCall
    if L1_2 == A0_2 then
      inCall = 0
      MiChiamano = ""
      StoChiamando = ""
      haRisposto = false
      L1_2 = print
      L2_2 = "La chiamata \195\168 stata terminata dall'altro utente!"
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = ClearPedTasks
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = faiAnim
      L2_2 = "cellphone@"
      L3_2 = "cellphone_cellphone_outro"
      L4_2 = 750
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "NumeroOccupatoWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "NumeroOccupatoWatch"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = print
  L1_2 = "Il numero risulta occupato gi\195\160 con 2 persone chiamanti!"
  L0_2(L1_2)
  MiChiamano = ""
  StoChiamando = ""
  inCall = 0
  haRisposto = false
  L0_2 = Wait
  L1_2 = 25
  L0_2(L1_2)
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = faiAnim
  L1_2 = "cellphone@"
  L2_2 = "cellphone_cellphone_outro"
  L3_2 = 750
  L4_2 = 49
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "chiamaNumeroWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "chiamaNumeroWatch"
function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 ~= A0_2 then
    L4_2 = tostring
    L5_2 = mioNumero
    L4_2 = L4_2(L5_2)
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L4_2 == L5_2 then
      L4_2 = tostring
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      MiChiamano = L4_2
      IdChiamataAttesa = A3_2
      L4_2 = loopMiChiamano
      L5_2 = A3_2
      L4_2(L5_2)
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.notify
      L6_2 = "Call pending ("
      L7_2 = MiChiamano
      L8_2 = ")."
      L6_2 = L6_2 .. L7_2 .. L8_2
      L4_2(L5_2, L6_2)
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "AvvisoChiamataStaccataWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "AvvisoChiamataStaccataWatch"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 ~= A0_2 then
    L2_2 = print
    L3_2 = "Chiamata Staccata al numero "
    L4_2 = A1_2
    L5_2 = ", il mio \195\168 "
    L6_2 = mioNumero
    L7_2 = "."
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
    L2_2 = tostring
    L3_2 = mioNumero
    L2_2 = L2_2(L3_2)
    L3_2 = tostring
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L2_2 == L3_2 then
      L2_2 = inCall
      if L2_2 > 0 then
        L2_2 = print
        L3_2 = "La chiamata \195\168 stata rifiutata dall'utente!"
        L2_2(L3_2)
        StoChiamando = ""
        inCall = 0
        haRisposto = false
        L2_2 = Wait
        L3_2 = 25
        L2_2(L3_2)
        L2_2 = ClearPedTasks
        L3_2 = PlayerPedId
        L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
        L2_2 = faiAnim
        L3_2 = "cellphone@"
        L4_2 = "cellphone_cellphone_outro"
        L5_2 = 750
        L6_2 = 49
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "getbackIDChiamataWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "getbackIDChiamataWatch"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "Conosco l'id della chiamata in cui sono: "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  inCall = A0_2
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "AvvisoChiamataStaccataIDWatch"
L21_1(L22_1)
L21_1 = AddEventHandler
L22_1 = "AvvisoChiamataStaccataIDWatch"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = inCall
  if L0_2 > 0 then
    L0_2 = print
    L1_2 = "La chiamata \195\168 stata rifiutata dall'utente!"
    L0_2(L1_2)
    StoChiamando = ""
    inCall = 0
    haRisposto = false
    L0_2 = Wait
    L1_2 = 25
    L0_2(L1_2)
    L0_2 = ClearPedTasks
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = faiAnim
    L1_2 = "cellphone@"
    L2_2 = "cellphone_cellphone_outro"
    L3_2 = 750
    L4_2 = 49
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
L21_1(L22_1, L23_1)
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "LOOP MI CHIAMANO! Numero: "
  L2_2 = MiChiamano
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = MiChiamano
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = MiChiamano
      if nil == L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = MiChiamano
      L0_3 = #L0_3
      if L0_3 > 0 then
        L0_3 = MiChiamano
        L0_3 = #L0_3
        if L0_3 > 0 then
          L0_3 = 1
          L1_3 = 7
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = PlaySoundFrontend
            L5_3 = -1
            L6_3 = "HORDE_COOL_DOWN_TIMER"
            L7_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            L8_3 = 1
            L4_3(L5_3, L6_3, L7_3, L8_3)
            L4_3 = Wait
            L5_3 = 50
            L4_3(L5_3)
          end
        end
        L0_3 = Wait
        L1_3 = 3500
        L0_3(L1_3)
      end
    end
  end
  L0_2(L1_2)
end
loopMiChiamano = L21_1
L21_1 = RegisterCommand
L22_1 = "testZona"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = tostring
  L1_2 = OpenInput
  L2_2 = "Title"
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = tostring
  L2_2 = OpenInput
  L3_2 = "Subtitle"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.showZone
  L4_2 = L0_2 or L4_2
  if not L0_2 then
    L4_2 = "TEST"
  end
  L5_2 = L1_2 or L5_2
  if not L1_2 then
    L5_2 = "TEST"
  end
  L2_2(L3_2, L4_2, L5_2)
end
L21_1(L22_1, L23_1)
L21_1 = RegisterCommand
L22_1 = "mionumero"
function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.TriggerServerCallback
  L5_2 = "getphonenumber"
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if nil ~= A0_3 and A0_3 then
      L1_3 = print
      L2_3 = "Il tuo numero: "
      L3_3 = tostring
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = ExecuteCommand
      L2_3 = "copia "
      L3_3 = A0_3
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    else
      L1_3 = print
      L2_3 = "Non hai un numero assegnato."
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
L21_1(L22_1, L23_1)
L21_1 = exports
L22_1 = "inCall"
function L23_1()
  local L0_2, L1_2
  L0_2 = inCall
  return L0_2
end
L21_1(L22_1, L23_1)
L21_1 = exports
L22_1 = "mynum"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.TriggerServerCallback
  L2_2 = "getphonenumber"
  function L3_2(A0_3)
    local L1_3, L2_3
    if nil ~= A0_3 and A0_3 then
      return A0_3
    else
      if nil ~= A0_3 then
        L1_3 = #A0_3
        if not (L1_3 < 1) then
          goto lbl_15
        end
      end
      L1_3 = print
      L2_3 = "Non hai un numero assegnato."
      L1_3(L2_3)
      ::lbl_15::
      L1_3 = nil
      return L1_3
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
L21_1(L22_1, L23_1)
L21_1 = nil
L22_1 = nil
L23_1 = RegisterCommand
L24_1 = "getdist"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L21_1
  if nil == L0_2 then
    L0_2 = GetEntityCoords
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    L21_1 = L0_2
    L0_2 = PlaySoundFrontend
    L1_2 = -1
    L2_2 = "Enter_1st"
    L3_2 = "GTAO_FM_Events_Soundset"
    L4_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = L22_1
    if nil == L0_2 then
      L0_2 = GetEntityCoords
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
      L22_1 = L0_2
      L0_2 = print
      L1_2 = "Distanza tra i 2 punti = "
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = L21_1
      L4_2 = L22_1
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      L2_2 = L2_2(L3_2)
      L3_2 = " metri."
      L1_2 = L1_2 .. L2_2 .. L3_2
      L0_2(L1_2)
      L0_2 = PlaySoundFrontend
      L1_2 = -1
      L2_2 = "Enter_Area"
      L3_2 = "DLC_Lowrider_Relay_Race_Sounds"
      L4_2 = 0
      L0_2(L1_2, L2_2, L3_2, L4_2)
      L0_2 = nil
      L21_1 = L0_2
      L0_2 = nil
      L22_1 = L0_2
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "haRispostoWatch"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "haRispostoWatch"
function L25_1()
  local L0_2, L1_2
  haRisposto = true
end
L23_1(L24_1, L25_1)
L23_1 = false
L24_1 = 12.0
L25_1 = 90
L26_1 = 100.0
L27_1 = RegisterCommand
L28_1 = "SetWindSpeed"
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L24_1 = L3_2
  L3_2 = print
  L4_2 = "SetWindSpeed "
  L5_2 = L24_1
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "SetWindDir"
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L25_1 = L3_2
  L3_2 = print
  L4_2 = "SetWindDir "
  L5_2 = L25_1
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "SetWind"
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2[1]
  if nil == L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L26_1 = L3_2
  L3_2 = print
  L4_2 = "SetWind "
  L5_2 = SetWind
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "SetWindOn"
function L29_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L23_1
  L3_2 = not L3_2
  L23_1 = L3_2
end
L27_1(L28_1, L29_1)
L27_1 = {}
L28_1 = {}
L28_1.n = ""
L28_1.m = -849778966
L29_1 = {}
L30_1 = 3801.5473632812
L31_1 = 7262.3037109375
L32_1 = 46.213198852539
L33_1 = 0.0
L34_1 = 0.0
L34_1 = -L34_1
L35_1 = 0.0
L29_1[1] = L30_1
L29_1[2] = L31_1
L29_1[3] = L32_1
L29_1[4] = L33_1
L29_1[5] = L34_1
L29_1[6] = L35_1
L28_1.c = L29_1
L29_1 = {}
L29_1.n = "Katana"
L29_1.m = -1449736914
L30_1 = {}
L31_1 = 3846.7321777344
L32_1 = 7264.873046875
L33_1 = 42.763740539551
L34_1 = 0.0
L35_1 = 0.0
L35_1 = -L35_1
L36_1 = 0.0
L30_1[1] = L31_1
L30_1[2] = L32_1
L30_1[3] = L33_1
L30_1[4] = L34_1
L30_1[5] = L35_1
L30_1[6] = L36_1
L29_1.c = L30_1
L29_1.vis = false
L29_1.o = nil
L30_1 = {}
L31_1 = 0.13
L32_1 = -0.02
L33_1 = 0.19
L34_1 = -94.600000000001
L35_1 = 83.000000000001
L36_1 = -69.0
L30_1[1] = L31_1
L30_1[2] = L32_1
L30_1[3] = L33_1
L30_1[4] = L34_1
L30_1[5] = L35_1
L30_1[6] = L36_1
L29_1.d = L30_1
L30_1 = {}
L30_1.n = "Templar"
L30_1.m = 454359250
L31_1 = {}
L32_1 = 3846.3715820312
L33_1 = 7261.7431640625
L34_1 = 42.843212127686
L35_1 = 0.0
L36_1 = 0.0
L37_1 = 84.998985290527
L31_1[1] = L32_1
L31_1[2] = L33_1
L31_1[3] = L34_1
L31_1[4] = L35_1
L31_1[5] = L36_1
L31_1[6] = L37_1
L30_1.c = L31_1
L30_1.vis = false
L30_1.o = nil
L31_1 = {}
L32_1 = 0.12
L33_1 = -0.01
L34_1 = 0.19
L35_1 = -154.0
L36_1 = 14.4
L37_1 = -36.0
L31_1[1] = L32_1
L31_1[2] = L33_1
L31_1[3] = L34_1
L31_1[4] = L35_1
L31_1[5] = L36_1
L31_1[6] = L37_1
L30_1.d = L31_1
L31_1 = {}
L31_1.n = "Sif"
L31_1.m = 786243670
L32_1 = {}
L33_1 = 3846.0815429688
L34_1 = 7258.5576171875
L35_1 = 42.767841339111
L36_1 = 0.0
L37_1 = 0.0
L37_1 = -L37_1
L38_1 = 0.0
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L31_1.c = L32_1
L31_1.vis = false
L31_1.o = nil
L32_1 = {}
L33_1 = 0.12
L34_1 = 0.035
L35_1 = 0.12
L36_1 = -23.8
L37_1 = 175.8
L38_1 = -2.0
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L31_1.d = L32_1
L32_1 = {}
L32_1.n = "King"
L32_1.m = 558859579
L33_1 = {}
L34_1 = 3845.8000488281
L35_1 = 7255.283203125
L36_1 = 42.90784072876
L37_1 = 0.0
L38_1 = 0.0
L39_1 = -5.5000133514404
L33_1[1] = L34_1
L33_1[2] = L35_1
L33_1[3] = L36_1
L33_1[4] = L37_1
L33_1[5] = L38_1
L33_1[6] = L39_1
L32_1.c = L33_1
L32_1.vis = false
L32_1.o = nil
L33_1 = {}
L34_1 = 0.135
L35_1 = 0.025
L36_1 = 0.065
L37_1 = -153.6
L38_1 = -10.0
L39_1 = 24.0
L33_1[1] = L34_1
L33_1[2] = L35_1
L33_1[3] = L36_1
L33_1[4] = L37_1
L33_1[5] = L38_1
L33_1[6] = L39_1
L32_1.d = L33_1
L33_1 = {}
L33_1.n = "Runic"
L33_1.m = 1368221804
L34_1 = {}
L35_1 = 3845.5187988281
L36_1 = 7252.0986328125
L37_1 = 43.150569915771
L38_1 = 87.749481201172
L39_1 = -6.7499976158142
L40_1 = -96.496871948242
L34_1[1] = L35_1
L34_1[2] = L36_1
L34_1[3] = L37_1
L34_1[4] = L38_1
L34_1[5] = L39_1
L34_1[6] = L40_1
L33_1.c = L34_1
L33_1.vis = false
L33_1.o = nil
L34_1 = {}
L35_1 = 0.17
L36_1 = -0.025
L37_1 = 0.14
L38_1 = -66.2
L39_1 = 4.6
L40_1 = -5.0
L34_1[1] = L35_1
L34_1[2] = L36_1
L34_1[3] = L37_1
L34_1[4] = L38_1
L34_1[5] = L39_1
L34_1[6] = L40_1
L33_1.d = L34_1
L34_1 = {}
L34_1.n = "ValKnife (2)"
L34_1.m = 1590334001
L35_1 = {}
L36_1 = 3845.2299804688
L37_1 = 7248.990234375
L38_1 = 43.099014282227
L39_1 = -176.7488861084
L40_1 = 89.778823852539
L41_1 = -179.99989318848
L35_1[1] = L36_1
L35_1[2] = L37_1
L35_1[3] = L38_1
L35_1[4] = L39_1
L35_1[5] = L40_1
L35_1[6] = L41_1
L34_1.c = L35_1
L34_1.vis = false
L34_1.o = nil
L35_1 = {}
L36_1 = 0.13
L37_1 = 0.035
L38_1 = -0.05
L39_1 = -49.4
L40_1 = -105.0
L41_1 = -36.0
L35_1[1] = L36_1
L35_1[2] = L37_1
L35_1[3] = L38_1
L35_1[4] = L39_1
L35_1[5] = L40_1
L35_1[6] = L41_1
L34_1.d = L35_1
L35_1 = {}
L35_1.n = "FF"
L35_1.m = -284733005
L36_1 = {}
L37_1 = 3846.6721191406
L38_1 = 7263.21875
L39_1 = 41.111904144287
L40_1 = -90.0
L41_1 = -2.544443605465E-14
L42_1 = 85.499961853027
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L36_1[6] = L42_1
L35_1.c = L36_1
L35_1.vis = false
L35_1.o = nil
L36_1 = {}
L37_1 = 0.14
L38_1 = -0.075
L39_1 = 0.46
L40_1 = -68.4
L41_1 = 7.6
L42_1 = -17.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L36_1[6] = L42_1
L35_1.d = L36_1
L36_1 = {}
L36_1.n = "Blades (2)"
L36_1.m = -769755722
L37_1 = {}
L38_1 = 3846.8542480469
L39_1 = 7260.3159179688
L40_1 = 40.103942871094
L41_1 = -81.498970031738
L42_1 = 21.999752044678
L43_1 = 7.4998955726624
L37_1[1] = L38_1
L37_1[2] = L39_1
L37_1[3] = L40_1
L37_1[4] = L41_1
L37_1[5] = L42_1
L37_1[6] = L43_1
L36_1.c = L37_1
L36_1.vis = false
L36_1.o = nil
L37_1 = {}
L38_1 = 0.645
L39_1 = 0.01
L40_1 = 0.11
L41_1 = 107.4
L42_1 = -24.2
L43_1 = 0.0
L37_1[1] = L38_1
L37_1[2] = L39_1
L37_1[3] = L40_1
L37_1[4] = L41_1
L37_1[5] = L42_1
L37_1[6] = L43_1
L36_1.d = L37_1
L37_1 = {}
L37_1.n = "Spear"
L37_1.m = -697248171
L38_1 = {}
L39_1 = 3845.9775390625
L40_1 = 7256.5439453125
L41_1 = 41.1397315979
L42_1 = -86.250007629395
L43_1 = -18.750005722046
L44_1 = -43.750003814697
L38_1[1] = L39_1
L38_1[2] = L40_1
L38_1[3] = L41_1
L38_1[4] = L42_1
L38_1[5] = L43_1
L38_1[6] = L44_1
L37_1.c = L38_1
L37_1.vis = false
L37_1.o = nil
L38_1 = {}
L39_1 = 0.14
L40_1 = -0.295
L41_1 = 0.87
L42_1 = -73.600000000001
L43_1 = 3.6
L44_1 = -80.0
L38_1[1] = L39_1
L38_1[2] = L40_1
L38_1[3] = L41_1
L38_1[4] = L42_1
L38_1[5] = L43_1
L38_1[6] = L44_1
L37_1.d = L38_1
L38_1 = {}
L38_1.n = "RevKnife (2)"
L38_1.m = -185012645
L39_1 = {}
L40_1 = 3845.4604492188
L41_1 = 7253.5473632812
L42_1 = 40.6897315979
L43_1 = 90.0
L44_1 = 0.0
L44_1 = -L44_1
L45_1 = 84.0
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L38_1.c = L39_1
L38_1.vis = false
L38_1.o = nil
L39_1 = {}
L40_1 = 0.13
L41_1 = 0.045
L42_1 = 0.0
L43_1 = 67.6
L44_1 = 3.4
L45_1 = 162.0
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L38_1.d = L39_1
L39_1 = {}
L39_1.n = "WarHammer"
L39_1.m = 2139337335
L40_1 = {}
L41_1 = 3844.9555664062
L42_1 = 7250.3334960938
L43_1 = 41.414730072021
L44_1 = -179.99998474121
L45_1 = -5.0089561227651E-6
L46_1 = -99.499992370605
L40_1[1] = L41_1
L40_1[2] = L42_1
L40_1[3] = L43_1
L40_1[4] = L44_1
L40_1[5] = L45_1
L40_1[6] = L46_1
L39_1.c = L40_1
L39_1.vis = false
L39_1.o = nil
L40_1 = {}
L41_1 = 0.09
L42_1 = -0.28
L43_1 = 0.78
L44_1 = -23.0
L45_1 = 173.4
L46_1 = -5.0
L40_1[1] = L41_1
L40_1[2] = L42_1
L40_1[3] = L43_1
L40_1[4] = L44_1
L40_1[5] = L45_1
L40_1[6] = L46_1
L39_1.d = L40_1
L40_1 = {}
L40_1.n = "Grim"
L40_1.m = 2011811552
L41_1 = {}
L42_1 = 3844.724609375
L43_1 = 7247.3852539062
L44_1 = 39.80472946167
L45_1 = 0.0
L46_1 = 0.0
L47_1 = 67.5
L41_1[1] = L42_1
L41_1[2] = L43_1
L41_1[3] = L44_1
L41_1[4] = L45_1
L41_1[5] = L46_1
L41_1[6] = L47_1
L40_1.c = L41_1
L40_1.vis = false
L40_1.o = nil
L41_1 = {}
L42_1 = 0.115
L43_1 = -0.07
L44_1 = 0.31
L45_1 = -205.6
L46_1 = -16.0
L47_1 = -159.0
L41_1[1] = L42_1
L41_1[2] = L43_1
L41_1[3] = L44_1
L41_1[4] = L45_1
L41_1[5] = L46_1
L41_1[6] = L47_1
L40_1.d = L41_1
L41_1 = {}
L41_1.n = "Bows"
L41_1.bw = 3
L41_1.m = -1340219502
L42_1 = {}
L43_1 = 3802.8491210938
L44_1 = 7265.6923828125
L45_1 = 40.143501281738
L46_1 = 0.0
L47_1 = 0.0
L48_1 = 82.249992370605
L42_1[1] = L43_1
L42_1[2] = L44_1
L42_1[3] = L45_1
L42_1[4] = L46_1
L42_1[5] = L47_1
L42_1[6] = L48_1
L41_1.c = L42_1
L41_1.vis = false
L41_1.o = nil
L42_1 = {}
L42_1.n = "Arrows"
L42_1.ar = 2
L42_1.m = 2011332634
L43_1 = {}
L44_1 = 3803.0539550781
L45_1 = 7267.271484375
L46_1 = 40.284740447998
L47_1 = -87.749519348145
L48_1 = -17.249702453613
L49_1 = -89.999946594238
L43_1[1] = L44_1
L43_1[2] = L45_1
L43_1[3] = L46_1
L43_1[4] = L47_1
L43_1[5] = L48_1
L43_1[6] = L49_1
L42_1.c = L43_1
L42_1.vis = false
L42_1.o = nil
L43_1 = {}
L44_1 = "Shields"
L43_1.n = L44_1
L43_1.ar = 2
L44_1 = 2072306009
L43_1.m = L44_1
L44_1 = {}
L45_1 = 3803.1384277344
L46_1 = 7268.69921875
L47_1 = 40.236759185791
L48_1 = 4.2499532699585
L49_1 = 90.0
L50_1 = 0.0
L44_1[1] = L45_1
L44_1[2] = L46_1
L44_1[3] = L47_1
L44_1[4] = L48_1
L44_1[5] = L49_1
L44_1[6] = L50_1
L43_1.c = L44_1
L43_1.vis = false
L43_1.o = nil
L44_1 = {}
L45_1 = "None"
L44_1.n = L45_1
L44_1.ar = 2
L45_1 = 371177307
L44_1.m = L45_1
L45_1 = {}
L46_1 = 3803.2915039062
L47_1 = 7272.0791015625
L48_1 = 40.060710906982
L49_1 = -177.49989318848
L50_1 = 78.000213623047
L51_1 = -4.499981880188
L45_1[1] = L46_1
L45_1[2] = L47_1
L45_1[3] = L48_1
L45_1[4] = L49_1
L45_1[5] = L50_1
L45_1[6] = L51_1
L44_1.c = L45_1
L44_1.vis = false
L44_1.o = nil
L27_1[1] = L28_1
L27_1[2] = L29_1
L27_1[3] = L30_1
L27_1[4] = L31_1
L27_1[5] = L32_1
L27_1[6] = L33_1
L27_1[7] = L34_1
L27_1[8] = L35_1
L27_1[9] = L36_1
L27_1[10] = L37_1
L27_1[11] = L38_1
L27_1[12] = L39_1
L27_1[13] = L40_1
L27_1[14] = L41_1
L27_1[15] = L42_1
L27_1[16] = L43_1
L27_1[17] = L44_1
L28_1 = nil
L29_1 = nil
L30_1 = nil
L31_1 = _ENV
L32_1 = "startPrevAttach"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.fodera2
  L2_2(L3_2)
  L2_2 = DoesEntityExist
  L3_2 = L28_1
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DetachEntity
    L3_2 = L28_1
    L2_2(L3_2)
    L2_2 = SetEntityCoords
    L3_2 = L28_1
    L4_2 = L29_1
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityRotation
    L3_2 = L28_1
    L4_2 = L30_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L28_1 = A1_2
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L29_1 = L3_2
  L3_2 = GetEntityRotation
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L30_1 = L3_2
  L3_2 = SetEntityAsMissionEntity
  L4_2 = A1_2
  L3_2(L4_2)
  L3_2 = AttachEntityToEntity
  L4_2 = A1_2
  L5_2 = L2_2
  L6_2 = GetPedBoneIndex
  L7_2 = L2_2
  L8_2 = 57005
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2[1]
  L8_2 = A0_2[2]
  L9_2 = A0_2[3]
  L10_2 = A0_2[4]
  L11_2 = A0_2[5]
  L12_2 = A0_2[6]
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = ExecuteCommand
  L4_2 = "e c"
  L3_2(L4_2)
  L3_2 = ExecuteCommand
  L4_2 = "e reggi3"
  L3_2(L4_2)
  L3_2 = SetFollowPedCamViewMode
  L4_2 = 4
  L3_2(L4_2)
  L3_2 = SetFollowPedCamViewMode
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = SetCamViewModeForContext
  L4_2 = GetCamActiveViewModeContext
  L4_2 = L4_2()
  L5_2 = 0
  L3_2(L4_2, L5_2)
  L3_2 = DisableControlAction
  L4_2 = 0
  L5_2 = 0
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = DisableFirstPersonCamThisFrame
  L3_2()
end
L31_1[L32_1] = L33_1
L31_1 = _ENV
L32_1 = "CreateThread"
L31_1 = L31_1[L32_1]
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L0_2 = 1
  L1_2 = L27_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L27_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.m
    L5_2 = RequestModelStriano
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = L27_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.c
    L6_2 = GetClosestObjectOfType
    L7_2 = vector3
    L8_2 = L5_2[1]
    L9_2 = L5_2[2]
    L10_2 = L5_2[3]
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = 5.0
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if 0 ~= L6_2 then
      L7_2 = SetEntityAsMissionEntity
      L8_2 = L6_2
      L7_2(L8_2)
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = CreateObject
    L8_2 = L4_2
    L9_2 = L5_2[1]
    L10_2 = L5_2[2]
    L11_2 = L5_2[3]
    L12_2 = false
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    while true do
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        break
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
    end
    L8_2 = FreezeEntityPosition
    L9_2 = L7_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityCollision
    L9_2 = L7_2
    L10_2 = false
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = SetEntityRotation
    L9_2 = L7_2
    L10_2 = L5_2[4]
    L11_2 = L5_2[5]
    L12_2 = L5_2[6]
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityCoordsNoOffset
    L9_2 = L7_2
    L10_2 = L5_2[1]
    L11_2 = L5_2[2]
    L12_2 = L5_2[3]
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityAsMissionEntity
    L9_2 = L7_2
    L8_2(L9_2)
    L8_2 = L27_1
    L8_2 = L8_2[L3_2]
    L8_2.o = L7_2
    L8_2 = Wait
    L9_2 = 25
    L8_2(L9_2)
  end
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = false
    L1_2 = false
    L2_2 = 1
    L3_2 = L27_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L27_1
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.c
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = GetEntityCoords
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = vector3
      L11_2 = L7_2[1]
      L12_2 = L7_2[2]
      L13_2 = L7_2[3]
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L10_2 = L9_2 - L10_2
      L10_2 = #L10_2
      L11_2 = 2.2
      if L10_2 <= L11_2 then
        L10_2 = exports
        L10_2 = L10_2.striano_combat
        L11_2 = L10_2
        L10_2 = L10_2.inCombat
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = IsEntityAttached
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = L7_2[1]
            L11_2 = L7_2[2]
            L12_2 = L7_2[3]
            L0_2 = true
            L13_2 = vector3
            L14_2 = L7_2[1]
            L15_2 = L7_2[2]
            L16_2 = L7_2[3]
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L13_2 = L9_2 - L13_2
            L13_2 = #L13_2
            L14_2 = 1.4
            if L13_2 <= L14_2 then
              L13_2 = L6_2.n
              if nil ~= L13_2 then
                L13_2 = L6_2.lk
                if nil == L13_2 then
                  L1_2 = true
                  L13_2 = L6_2.vis
                  if not L13_2 then
                    L13_2 = GetEntitySpeed
                    L14_2 = L8_2
                    L13_2 = L13_2(L14_2)
                    L14_2 = 0.2
                    if L13_2 < L14_2 then
                      L13_2 = L6_2.d
                      if nil ~= L13_2 then
                        L13_2 = startPrevAttach
                        L14_2 = L6_2.d
                        L15_2 = L6_2.o
                        L13_2(L14_2, L15_2)
                        L13_2 = Wait
                        L14_2 = 750
                        L13_2(L14_2)
                      end
                      L13_2 = PlaySoundFrontend
                      L14_2 = -1
                      L15_2 = "Pre_Screen_Stinger"
                      L16_2 = "DLC_HEISTS_PREP_SCREEN_SOUNDS"
                      L17_2 = 0
                      L13_2(L14_2, L15_2, L16_2, L17_2)
                      L6_2.vis = true
                      L13_2 = table
                      L13_2 = L13_2.unpack
                      L14_2 = GetPedBoneCoords
                      L15_2 = L8_2
                      L16_2 = 24818
                      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L14_2(L15_2, L16_2)
                      L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                      L16_2 = exports
                      L16_2 = L16_2.striano_editor
                      L17_2 = L16_2
                      L16_2 = L16_2.HintHud_SetPosition
                      L18_2 = L13_2
                      L19_2 = L14_2
                      L20_2 = L15_2
                      L21_2 = 0.0
                      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
                      L16_2 = exports
                      L16_2 = L16_2.striano_editor
                      L17_2 = L16_2
                      L16_2 = L16_2.HintHud_RefreshButtons
                      L18_2 = {}
                      L19_2 = {}
                      L19_2.control = 38
                      L20_2 = L6_2.n
                      L19_2.label = L20_2
                      L18_2[1] = L19_2
                      L16_2(L17_2, L18_2)
                      L16_2 = exports
                      L16_2 = L16_2.striano_editor
                      L17_2 = L16_2
                      L16_2 = L16_2.HintHud_SetMaxDistance
                      L18_2 = 80.0
                      L16_2(L17_2, L18_2)
                      L16_2 = exports
                      L16_2 = L16_2.striano_editor
                      L17_2 = L16_2
                      L16_2 = L16_2.HintHud_SetVisible
                      L18_2 = true
                      L16_2(L17_2, L18_2)
                    end
                  end
                  L13_2 = DrawSpotLightWithShadow
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L16_2 = L12_2 + 1.3
                  L17_2 = 0.0
                  L18_2 = 0.0
                  L19_2 = -180.0
                  L20_2 = 255
                  L21_2 = 255
                  L22_2 = 255
                  L23_2 = 30.0
                  L24_2 = 0.55
                  L25_2 = 20.0
                  L26_2 = 250.0
                  L27_2 = 7.0
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                  L13_2 = DrawSpotLightWithShadow
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L16_2 = L12_2 + 1.3
                  L17_2 = 0.0
                  L18_2 = 0.0
                  L19_2 = -180.0
                  L20_2 = 255
                  L21_2 = 255
                  L22_2 = 255
                  L23_2 = 30.0
                  L24_2 = 0.55
                  L25_2 = 20.0
                  L26_2 = 250.0
                  L27_2 = 7.0
                  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                  L13_2 = IsControlJustPressed
                  L14_2 = 0
                  L15_2 = 38
                  L13_2 = L13_2(L14_2, L15_2)
                  if L13_2 then
                    L13_2 = ExecuteCommand
                    L14_2 = "e prendi5"
                    L13_2(L14_2)
                    L13_2 = Wait
                    L14_2 = 550
                    L13_2(L14_2)
                    L13_2 = string
                    L13_2 = L13_2.find
                    L14_2 = L6_2.n
                    L15_2 = "None"
                    L13_2 = L13_2(L14_2, L15_2)
                    if L13_2 then
                      L13_2 = exports
                      L13_2 = L13_2.striano_combat
                      L14_2 = L13_2
                      L13_2 = L13_2.submex
                      L15_2 = ""
                      L13_2(L14_2, L15_2)
                      L13_2 = exports
                      L13_2 = L13_2.striano_combat
                      L14_2 = L13_2
                      L13_2 = L13_2.strianosetweapon
                      L15_2 = 0
                      L13_2(L14_2, L15_2)
                      L13_2 = exports
                      L13_2 = L13_2.striano_editor
                      L14_2 = L13_2
                      L13_2 = L13_2.HintHud_SetVisible
                      L15_2 = false
                      L13_2(L14_2, L15_2)
                      L13_2 = DoesEntityExist
                      L14_2 = L28_1
                      L13_2 = L13_2(L14_2)
                      if L13_2 then
                        L13_2 = DetachEntity
                        L14_2 = L28_1
                        L13_2(L14_2)
                        L13_2 = SetEntityCoords
                        L14_2 = L28_1
                        L15_2 = L29_1
                        L13_2(L14_2, L15_2)
                        L13_2 = SetEntityRotation
                        L14_2 = L28_1
                        L15_2 = L30_1
                        L13_2(L14_2, L15_2)
                      end
                    else
                      L13_2 = string
                      L13_2 = L13_2.find
                      L14_2 = L6_2.n
                      L15_2 = "Bow"
                      L13_2 = L13_2(L14_2, L15_2)
                      if not L13_2 then
                        L13_2 = string
                        L13_2 = L13_2.find
                        L14_2 = L6_2.n
                        L15_2 = "Arrow"
                        L13_2 = L13_2(L14_2, L15_2)
                        if not L13_2 then
                          L13_2 = string
                          L13_2 = L13_2.find
                          L14_2 = L6_2.n
                          L15_2 = "Shields"
                          L13_2 = L13_2(L14_2, L15_2)
                          if not L13_2 then
                            L13_2 = L6_2.n
                            L13_2 = #L13_2
                            if L13_2 > 0 then
                              L13_2 = exports
                              L13_2 = L13_2.striano_combat
                              L14_2 = L13_2
                              L13_2 = L13_2.getweap2
                              L15_2 = L6_2.m
                              L13_2 = L13_2(L14_2, L15_2)
                              L14_2 = exports
                              L14_2 = L14_2.striano_combat
                              L15_2 = L14_2
                              L14_2 = L14_2.strianosetweapon
                              L16_2 = L13_2
                              L14_2(L15_2, L16_2)
                              L14_2 = exports
                              L14_2 = L14_2.striano_editor
                              L15_2 = L14_2
                              L14_2 = L14_2.HintHud_SetVisible
                              L16_2 = false
                              L14_2(L15_2, L16_2)
                              L14_2 = DoesEntityExist
                              L15_2 = L28_1
                              L14_2 = L14_2(L15_2)
                              if L14_2 then
                                L14_2 = DetachEntity
                                L15_2 = L28_1
                                L14_2(L15_2)
                                L14_2 = SetEntityCoords
                                L15_2 = L28_1
                                L16_2 = L29_1
                                L14_2(L15_2, L16_2)
                                L14_2 = SetEntityRotation
                                L15_2 = L28_1
                                L16_2 = L30_1
                                L14_2(L15_2, L16_2)
                              end
                              L14_2 = exports
                              L14_2 = L14_2.striano_combat
                              L15_2 = L14_2
                              L14_2 = L14_2.submexInfo
                              L16_2 = "Weapon taken, enter in combat mode with [Mouse_Right] and press [R] to equip."
                              L14_2(L15_2, L16_2)
                          end
                        end
                      end
                      else
                        L13_2 = string
                        L13_2 = L13_2.find
                        L14_2 = L6_2.n
                        L15_2 = "Arrow"
                        L13_2 = L13_2(L14_2, L15_2)
                        if L13_2 then
                          L13_2 = ExecuteCommand
                          L14_2 = "myarrow"
                          L13_2(L14_2)
                        else
                          L13_2 = string
                          L13_2 = L13_2.find
                          L14_2 = L6_2.n
                          L15_2 = "Bow"
                          L13_2 = L13_2(L14_2, L15_2)
                          if L13_2 then
                            L13_2 = ExecuteCommand
                            L14_2 = "mybow"
                            L13_2(L14_2)
                          else
                            L13_2 = string
                            L13_2 = L13_2.find
                            L14_2 = L6_2.n
                            L15_2 = "Shields"
                            L13_2 = L13_2(L14_2, L15_2)
                            if L13_2 then
                              L13_2 = ExecuteCommand
                              L14_2 = "shieldlist"
                              L13_2(L14_2)
                            end
                          end
                        end
                        L13_2 = exports
                        L13_2 = L13_2.striano_editor
                        L14_2 = L13_2
                        L13_2 = L13_2.HintHud_SetVisible
                        L15_2 = false
                        L13_2(L14_2, L15_2)
                        L13_2 = DoesEntityExist
                        L14_2 = L28_1
                        L13_2 = L13_2(L14_2)
                        if L13_2 then
                          L13_2 = DetachEntity
                          L14_2 = L28_1
                          L13_2(L14_2)
                          L13_2 = SetEntityCoords
                          L14_2 = L28_1
                          L15_2 = L29_1
                          L13_2(L14_2, L15_2)
                          L13_2 = SetEntityRotation
                          L14_2 = L28_1
                          L15_2 = L30_1
                          L13_2(L14_2, L15_2)
                        end
                        L6_2.vis = false
                        L13_2 = Wait
                        L14_2 = 500
                        L13_2(L14_2)
                      end
                    end
                    L13_2 = Wait
                    L14_2 = 500
                    L13_2(L14_2)
                  end
                end
              end
              break
            else
              L13_2 = L6_2.n
              if nil ~= L13_2 then
                L13_2 = L6_2.lk
                if nil ~= L13_2 then
                  L13_2 = Draw3DText
                  L14_2 = L7_2[1]
                  L15_2 = L7_2[2]
                  L16_2 = L7_2[3]
                  L17_2 = "~h~"
                  L18_2 = L6_2.n
                  L17_2 = L17_2 .. L18_2
                  L13_2(L14_2, L15_2, L16_2, L17_2)
                  L13_2 = L7_2[1]
                  L14_2 = L7_2[2]
                  L15_2 = L7_2[3]
                  L16_2 = DrawSpotLightWithShadow
                  L17_2 = L13_2
                  L18_2 = L14_2
                  L19_2 = L15_2 + 1.3
                  L20_2 = 0.0
                  L21_2 = 0.0
                  L22_2 = -180.0
                  L23_2 = 255
                  L24_2 = 255
                  L25_2 = 255
                  L26_2 = 30.0
                  L27_2 = 0.55
                  L28_2 = 25.0
                  L29_2 = 250.0
                  L30_2 = 10.0
                  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                  L16_2 = DrawSpotLightWithShadow
                  L17_2 = L13_2
                  L18_2 = L14_2
                  L19_2 = L15_2 + 1.3
                  L20_2 = 0.0
                  L21_2 = 0.0
                  L22_2 = -180.0
                  L23_2 = 255
                  L24_2 = 255
                  L25_2 = 255
                  L26_2 = 30.0
                  L27_2 = 0.55
                  L28_2 = 25.0
                  L29_2 = 250.0
                  L30_2 = 10.0
                  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                end
              end
            end
            if not L1_2 then
              L13_2 = L6_2.vis
              if L13_2 then
                L13_2 = exports
                L13_2 = L13_2.striano_editor
                L14_2 = L13_2
                L13_2 = L13_2.HintHud_SetVisible
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = DoesEntityExist
                L14_2 = L28_1
                L13_2 = L13_2(L14_2)
                if L13_2 then
                  L13_2 = DetachEntity
                  L14_2 = L28_1
                  L13_2(L14_2)
                  L13_2 = SetEntityCoords
                  L14_2 = L28_1
                  L15_2 = L29_1
                  L13_2(L14_2, L15_2)
                  L13_2 = SetEntityRotation
                  L14_2 = L28_1
                  L15_2 = L30_1
                  L13_2(L14_2, L15_2)
                end
                L6_2.vis = false
                L13_2 = ExecuteCommand
                L14_2 = "e cc"
                L13_2(L14_2)
              end
            end
          end
        end
      else
        L10_2 = L6_2.vis
        if L10_2 then
          L10_2 = exports
          L10_2 = L10_2.striano_editor
          L11_2 = L10_2
          L10_2 = L10_2.HintHud_SetVisible
          L12_2 = false
          L10_2(L11_2, L12_2)
          L10_2 = DoesEntityExist
          L11_2 = L28_1
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = DetachEntity
            L11_2 = L28_1
            L10_2(L11_2)
            L10_2 = SetEntityCoords
            L11_2 = L28_1
            L12_2 = L29_1
            L10_2(L11_2, L12_2)
            L10_2 = SetEntityRotation
            L11_2 = L28_1
            L12_2 = L30_1
            L10_2(L11_2, L12_2)
          end
          L6_2.vis = false
          L10_2 = ExecuteCommand
          L11_2 = "e cc"
          L10_2(L11_2)
        end
      end
    end
    if not L0_2 then
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
    end
  end
end
L31_1(L32_1)
L31_1 = true
L32_1 = RegisterCommand
L33_1 = "togglefog"
function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L31_1
  L3_2 = not L3_2
  L31_1 = L3_2
  L3_2 = L31_1
  if L3_2 then
    L3_2 = print
    L4_2 = "Fog disabled: ON"
    L3_2(L4_2)
  else
    L3_2 = print
    L4_2 = "Fog disabled: OFF"
    L3_2(L4_2)
  end
  L3_2 = SetFogVolumeRenderDisabled
  L4_2 = L31_1
  L3_2(L4_2)
end
L32_1(L33_1, L34_1)
L32_1 = {}
L33_1 = "demon"
L34_1 = {}
L35_1 = "name"
L36_1 = "Demon"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_demon"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 120.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.9
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 1800.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.1
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L37_1 = "saturation"
L38_1 = 0.25
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.22
L36_1[L37_1] = L38_1
L37_1 = "reverb_time"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L37_1 = "reverb_damp"
L38_1 = 0.75
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.9
L38_1 = 0.9
L39_1 = 0.1
L40_1 = 0.1
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "demon_plus"
L34_1 = {}
L35_1 = "name"
L36_1 = "Diablo"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_demon_plus"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 100.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 1.0
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 1400.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.08
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.55
L36_1[L37_1] = L38_1
L37_1 = "bit_depth"
L38_1 = 0.3
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.28
L36_1[L37_1] = L38_1
L37_1 = "reverb_time"
L38_1 = 0.45
L36_1[L37_1] = L38_1
L37_1 = "reverb_damp"
L38_1 = 0.7
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.92
L38_1 = 0.92
L39_1 = 0.12
L40_1 = 0.12
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "spirit"
L34_1 = {}
L35_1 = "name"
L36_1 = "Spirit"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_spirit"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 600.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.2
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 4000.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.9
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.15
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.9
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.45
L36_1[L37_1] = L38_1
L37_1 = "reverb_time"
L38_1 = 1.2
L36_1[L37_1] = L38_1
L37_1 = "reverb_damp"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.7
L38_1 = 0.7
L39_1 = 0.6
L40_1 = 0.6
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "robot"
L34_1 = {}
L35_1 = "name"
L36_1 = "Robot"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_robot"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 300.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.5
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 2500.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.6
L36_1[L37_1] = L38_1
L37_1 = "bit_depth"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.18
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.08
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 1.6
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.05
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.85
L38_1 = 0.85
L39_1 = 0.15
L40_1 = 0.15
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "cavern"
L34_1 = {}
L35_1 = "name"
L36_1 = "Cavern"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_cavern"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 180.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.8
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 2800.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.4
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.05
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.6
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.6
L36_1[L37_1] = L38_1
L37_1 = "reverb_time"
L38_1 = 1.4
L36_1[L37_1] = L38_1
L37_1 = "reverb_damp"
L38_1 = 0.5
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.8
L38_1 = 0.8
L39_1 = 0.5
L40_1 = 0.5
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "whisper"
L34_1 = {}
L35_1 = "name"
L36_1 = "Whisper"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_whisper"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 1200.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.1
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 5500.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.95
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.0
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.05
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 4.5
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.25
L36_1[L37_1] = L38_1
L37_1 = "reverb_time"
L38_1 = 0.9
L36_1[L37_1] = L38_1
L37_1 = "reverb_damp"
L38_1 = 0.4
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.75
L38_1 = 0.75
L39_1 = 0.35
L40_1 = 0.35
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "radio"
L34_1 = {}
L35_1 = "name"
L36_1 = "Radio"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_radio"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 300.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.6
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 2800.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.55
L36_1[L37_1] = L38_1
L37_1 = "bit_depth"
L38_1 = 0.45
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.2
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.02
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.9
L38_1 = 0.9
L39_1 = 0.0
L40_1 = 0.0
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "mech"
L34_1 = {}
L35_1 = "name"
L36_1 = "Mech"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_mech"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 350.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.6
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 2600.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.5
L36_1[L37_1] = L38_1
L37_1 = "bit_depth"
L38_1 = 0.4
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L38_1 = 0.25
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.22
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.25
L36_1[L37_1] = L38_1
L37_1 = "reverb_mix"
L38_1 = 0.06
L36_1[L37_1] = L38_1
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.88
L38_1 = 0.88
L39_1 = 0.18
L40_1 = 0.18
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = "alien"
L34_1 = {}
L35_1 = "name"
L36_1 = "Alien"
L34_1[L35_1] = L36_1
L35_1 = "submix"
L36_1 = "vox_alien"
L34_1[L35_1] = L36_1
L35_1 = "params"
L36_1 = {}
L37_1 = "freq_low"
L38_1 = 400.0
L36_1[L37_1] = L38_1
L37_1 = "gain_low"
L38_1 = 0.4
L36_1[L37_1] = L38_1
L37_1 = "freq_high"
L38_1 = 4500.0
L36_1[L37_1] = L38_1
L37_1 = "gain_high"
L38_1 = 0.75
L36_1[L37_1] = L38_1
L37_1 = "modulation"
L38_1 = 1.0
L36_1[L37_1] = L38_1
L37_1 = "mod_depth"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L37_1 = "mod_rate"
L38_1 = 0.35
L36_1[L37_1] = L38_1
L37_1 = "distortion"
L36_1[L37_1] = 0.12
L37_1 = "reverb_mix"
L36_1[L37_1] = 0.12
L34_1[L35_1] = L36_1
L35_1 = "output"
L36_1 = {}
L37_1 = 0.85
L38_1 = 0.85
L39_1 = 0.2
L40_1 = 0.2
L41_1 = 0.0
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L34_1[L35_1] = L36_1
L32_1[L33_1] = L34_1
L33_1 = {}
L34_1 = "none"
function L35_1()
  local L0_2, L1_2
  L0_2 = GetPlayerServerId
  L1_2 = PlayerId
  L1_2 = L1_2()
  return L0_2(L1_2)
end
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L33_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L33_1
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = CreateAudioSubmix
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = SetAudioSubmixEffectRadioFx
  L2_2 = L2_2(L3_2)
  if "function" == L2_2 then
    L2_2 = SetAudioSubmixEffectRadioFx
    L3_2 = L1_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
  L2_2 = type
  L3_2 = AddAudioSubmixOutput
  L2_2 = L2_2(L3_2)
  if "function" == L2_2 then
    L2_2 = AddAudioSubmixOutput
    L3_2 = L1_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
  L2_2 = L33_1
  L2_2[A0_2] = L1_2
  return L1_2
end
function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = type
  L4_2 = SetAudioSubmixEffectParamFloat
  L3_2 = L3_2(L4_2)
  if "function" == L3_2 then
    L3_2 = SetAudioSubmixEffectParamFloat
    L4_2 = A0_2
    L5_2 = 0
    L6_2 = GetHashKey
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
function L38_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = type
  L4_2 = SetAudioSubmixEffectParamInt
  L3_2 = L3_2(L4_2)
  if "function" == L3_2 then
    L3_2 = SetAudioSubmixEffectParamInt
    L4_2 = A0_2
    L5_2 = 0
    L6_2 = GetHashKey
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
function L39_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = type
  L7_2 = SetAudioSubmixOutputVolumes
  L6_2 = L6_2(L7_2)
  if "function" == L6_2 then
    L6_2 = SetAudioSubmixOutputVolumes
    L7_2 = A0_2
    L8_2 = 0
    L9_2 = A1_2 or L9_2
    if not A1_2 then
      L9_2 = 0.9
    end
    L10_2 = A2_2 or L10_2
    if not A2_2 then
      L10_2 = 0.9
    end
    L11_2 = A3_2 or L11_2
    if not A3_2 then
      L11_2 = 0.0
    end
    L12_2 = A4_2 or L12_2
    if not A4_2 then
      L12_2 = 0.0
    end
    L13_2 = A5_2 or L13_2
    if not A5_2 then
      L13_2 = 0.0
    end
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
function L40_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = MumbleSetSubmixForServerId
  L1_2 = L1_2(L2_2)
  if "function" == L1_2 then
    L1_2 = MumbleSetSubmixForServerId
    L2_2 = L35_1
    L2_2 = L2_2()
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L41_1 = _ENV
L42_1 = "clearRoute"
function L43_1()
  local L0_2, L1_2, L2_2
  L0_2 = type
  L1_2 = MumbleClearSubmixForServerId
  L0_2 = L0_2(L1_2)
  if "function" == L0_2 then
    L0_2 = MumbleClearSubmixForServerId
    L1_2 = L35_1
    L1_2, L2_2 = L1_2()
    L0_2(L1_2, L2_2)
  else
    L0_2 = type
    L1_2 = MumbleSetSubmixForServerId
    L0_2 = L0_2(L1_2)
    if "function" == L0_2 then
      L0_2 = MumbleSetSubmixForServerId
      L1_2 = L35_1
      L1_2 = L1_2()
      L2_2 = -1
      L0_2(L1_2, L2_2)
    end
  end
end
L41_1[L42_1] = L43_1
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L32_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = false
    L3_2 = "Preset inesistente"
    return L2_2, L3_2
  end
  L2_2 = L1_2.submix
  if not L2_2 then
    L2_2 = clearRoute
    L2_2()
    L2_2 = "none"
    L34_1 = L2_2
    L2_2 = true
    return L2_2
  end
  L2_2 = L36_1
  L3_2 = L1_2.submix
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.params
  if L3_2 then
    L3_2 = pairs
    L4_2 = L1_2.params
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "number" == L9_2 then
        L9_2 = math
        L9_2 = L9_2.type
        if L9_2 then
          L9_2 = math
          L9_2 = L9_2.type
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if "integer" == L9_2 then
            L9_2 = L38_1
            L10_2 = L2_2
            L11_2 = L7_2
            L12_2 = L8_2
            L9_2(L10_2, L11_2, L12_2)
        end
      end
      else
        L9_2 = L37_1
        L10_2 = L2_2
        L11_2 = L7_2
        L12_2 = L8_2
        L9_2(L10_2, L11_2, L12_2)
      end
    end
  end
  L3_2 = L1_2.output
  if L3_2 then
    L3_2 = L39_1
    L4_2 = L2_2
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L1_2.output
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L3_2 = L40_1
  L4_2 = L2_2
  L3_2(L4_2)
  L34_1 = A0_2
  L3_2 = true
  return L3_2
end
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = GetResourceState
  L1_2 = "striano_fastmenu"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.clearMenu
    L0_2(L1_2)
    L0_2 = L34_1
    if "none" ~= L0_2 then
      L0_2 = L34_1
      if "off" ~= L0_2 then
        goto lbl_19
      end
    end
    L0_2 = "Human (Reset)  \226\156\147"
    ::lbl_19::
    if not L0_2 then
      L0_2 = "Human (Reset)"
    end
    L1_2 = exports
    L1_2 = L1_2.striano_fastmenu
    L2_2 = L1_2
    L1_2 = L1_2.addMenuItem
    L3_2 = L0_2
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = clearRoute
      L0_3()
      L0_3 = "none"
      L34_1 = L0_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "Highlight_Error"
      L3_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "stop"
      L0_3(L1_3)
      L0_3 = L42_1
      L0_3()
    end
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = {}
    L2_2 = {}
    L3_2 = pairs
    L4_2 = L32_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      if "off" ~= L7_2 and "none" ~= L7_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
        L9_2 = L8_2.name
        if L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L2_2
          L11_2 = L8_2.name
          L9_2(L10_2, L11_2)
        end
      end
    end
    L3_2 = table
    L3_2 = L3_2.sort
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = table
    L3_2 = L3_2.sort
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = ipairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = ""
      L10_2 = L34_1
      if L10_2 == L8_2 then
        L9_2 = "  \226\156\147"
      end
      L10_2 = exports
      L10_2 = L10_2.striano_fastmenu
      L11_2 = L10_2
      L10_2 = L10_2.addMenuItem
      L12_2 = L2_2[L7_2]
      L13_2 = L9_2
      L12_2 = L12_2 .. L13_2
      function L13_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L0_3 = L41_1
        L1_3 = L8_2
        L0_3, L1_3 = L0_3(L1_3)
        if L0_3 then
          L2_3 = PlaySoundFrontend
          L3_3 = -1
          L4_3 = "Menu_Accept"
          L5_3 = "Phone_SoundSet_Default"
          L6_3 = 1
          L2_3(L3_3, L4_3, L5_3, L6_3)
          L2_3 = SendNUIMessage
          L3_3 = {}
          L3_3.action = "setPreset"
          L4_3 = L8_2
          L3_3.preset = L4_3
          L2_3(L3_3)
          L2_3 = L42_1
          L2_3()
        else
          L2_3 = PlaySoundFrontend
          L3_3 = -1
          L4_3 = "Highlight_Error"
          L5_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
          L6_3 = 1
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
      end
      L14_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
    L3_2 = exports
    L3_2 = L3_2.striano_fastmenu
    L4_2 = L3_2
    L3_2 = L3_2.openMenu
    L3_2(L4_2)
  else
    L0_2 = print
    L1_2 = "You need resource [striano_fastmenu] to manage this command!"
    L0_2(L1_2)
  end
end
L43_1 = RegisterCommand
L44_1 = "vox"
function L45_1()
  local L0_2, L1_2
  L0_2 = L42_1
  L0_2()
end
L46_1 = false
L43_1(L44_1, L45_1, L46_1)
L43_1 = true
L44_1 = _ENV
L45_1 = "CreateThread"
L44_1 = L44_1[L45_1]
function L45_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = GetPlayerServerId
  L1_2 = PlayerId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "updatePlayerId"
  L2_2.playerId = L0_2
  L1_2(L2_2)
end
L44_1(L45_1)
L44_1 = RegisterCommand
L45_1 = "watermark"
function L46_1()
  local L0_2, L1_2, L2_2
  L0_2 = L43_1
  L0_2 = not L0_2
  L43_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "toggleWatermark"
  L2_2 = L43_1
  L1_2.show = L2_2
  L0_2(L1_2)
end
L47_1 = false
L44_1(L45_1, L46_1, L47_1)
L44_1 = _ENV
L45_1 = "RegisterNUICallback"
L44_1 = L44_1[L45_1]
L45_1 = "closeUI"
function L46_1()
  local L0_2, L1_2
  L0_2 = false
  L43_1 = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "toggleWatermark"
  L1_2.show = false
  L0_2(L1_2)
end
L44_1(L45_1, L46_1)
L44_1 = _ENV
L45_1 = "exports"
L44_1 = L44_1[L45_1]
L45_1 = "setwatermark"
function L46_1(A0_2)
  local L1_2, L2_2
  L43_1 = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "toggleWatermark"
  L2_2.show = A0_2
  L1_2(L2_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterCommand
L45_1 = "detach"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterCommand
L45_1 = "detachme"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterCommand
L45_1 = "staccami"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L44_1(L45_1, L46_1)
L44_1 = RegisterCommand
L45_1 = "classe"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getStatusClient
  L2_2 = "classepl"
  L0_2 = L0_2(L1_2, L2_2)
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexInfo
    L2_2 = "You don't have a class yet."
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.getStatusClient
    L2_2 = "classepl"
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexInfo
    L3_2 = "Your class: "
    L4_2 = L0_2
    L3_2 = L3_2 .. L4_2
    L1_2(L2_2, L3_2)
  end
end
L44_1(L45_1, L46_1)
