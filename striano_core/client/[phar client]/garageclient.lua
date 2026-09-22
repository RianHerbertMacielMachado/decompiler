local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = 3
L1_1 = 4
L2_1 = {}
L3_1 = {}
L4_1 = 48
L5_1 = 57
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L8_1 = table
  L8_1 = L8_1.insert
  L9_1 = L2_1
  L10_1 = string
  L10_1 = L10_1.char
  L11_1 = L7_1
  L10_1, L11_1, L12_1, L13_1, L14_1, L15_1 = L10_1(L11_1)
  L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1)
end
L4_1 = 65
L5_1 = 90
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L8_1 = table
  L8_1 = L8_1.insert
  L9_1 = L3_1
  L10_1 = string
  L10_1 = L10_1.char
  L11_1 = L7_1
  L10_1, L11_1, L12_1, L13_1, L14_1, L15_1 = L10_1(L11_1)
  L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1)
end
L4_1 = 97
L5_1 = 122
L6_1 = 1
for L7_1 = L4_1, L5_1, L6_1 do
  L8_1 = table
  L8_1 = L8_1.insert
  L9_1 = L3_1
  L10_1 = string
  L10_1 = L10_1.char
  L11_1 = L7_1
  L10_1, L11_1, L12_1, L13_1, L14_1, L15_1 = L10_1(L11_1)
  L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1)
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = nil
  L1_2 = false
  while true do
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = math
    L2_2 = L2_2.randomseed
    L3_2 = GetGameTimer
    L3_2, L4_2, L5_2, L6_2 = L3_2()
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = string
    L2_2 = L2_2.upper
    L3_2 = GetRandomLetter
    L4_2 = L0_1
    L3_2 = L3_2(L4_2)
    L4_2 = " "
    L5_2 = GetRandomNumber
    L6_2 = L1_1
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2 = L2_2(L3_2)
    L0_2 = L2_2
    L2_2 = TriggerServerCallback
    L3_2 = "esx_vehicleshop:isPlateTaken"
    function L4_2(A0_3)
      local L1_3
      if not A0_3 then
        L1_3 = true
        L1_2 = L1_3
      end
    end
    L5_2 = L0_2
    L2_2(L3_2, L4_2, L5_2)
    if L1_2 then
      break
    end
  end
  return L0_2
end
GeneratePlateVehicleShop = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "waiting"
  L2_2 = TriggerServerCallback
  L3_2 = "esx_vehicleshop:isPlateTaken"
  function L4_2(A0_3)
    local L1_3
    L1_2 = A0_3
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  while true do
    L2_2 = type
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "string" ~= L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
IsPlateTaken = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Wait
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = math
  L1_2 = L1_2.randomseed
  L2_2 = GetGameTimer
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  if A0_2 > 0 then
    L1_2 = GetRandomNumber
    L2_2 = A0_2 - 1
    L1_2 = L1_2(L2_2)
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = L2_1
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_1
    L2_2 = L3_2[L2_2]
    L1_2 = L1_2 .. L2_2
    return L1_2
  else
    L1_2 = ""
    return L1_2
  end
end
GetRandomNumber = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Wait
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = math
  L1_2 = L1_2.randomseed
  L2_2 = GetGameTimer
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  if A0_2 > 0 then
    L1_2 = GetRandomLetter
    L2_2 = A0_2 - 1
    L1_2 = L1_2(L2_2)
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = L3_1
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L3_1
    L2_2 = L3_2[L2_2]
    L1_2 = L1_2 .. L2_2
    return L1_2
  else
    L1_2 = ""
    return L1_2
  end
end
GetRandomLetter = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = 300.0
  L4_2 = {}
  L5_2 = L3_2 * L3_2
  L6_2 = ipairs
  L7_2 = GetGamePool
  L8_2 = "CVehicle"
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = L12_2.x
    L14_2 = L2_2.x
    L13_2 = L13_2 - L14_2
    L14_2 = L12_2.y
    L15_2 = L2_2.y
    L14_2 = L14_2 - L15_2
    L15_2 = L12_2.z
    L16_2 = L2_2.z
    L15_2 = L15_2 - L16_2
    L16_2 = L13_2 * L13_2
    L17_2 = L14_2 * L14_2
    L16_2 = L16_2 + L17_2
    L17_2 = L15_2 * L15_2
    L16_2 = L16_2 + L17_2
    if L5_2 >= L16_2 then
      L16_2 = #L4_2
      L16_2 = L16_2 + 1
      L4_2[L16_2] = L11_2
    end
  end
  return L4_2
end
GetVehiclesStriano = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = EliminaAnteprimaGarage
  L1_2()
  L1_2 = A0_2.model
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = joaat
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = L1_2
  ::lbl_15::
  L3_2 = IsModelInCdimage
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = IsModelAVehicle
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_30
    end
  end
  L3_2 = print
  L4_2 = "^1[GARAGE PREVIEW]^7 Invalid model:"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_30::
  L3_2 = cacheG
  L3_2 = L3_2.vehicle
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = cacheG
    L4_2 = L4_2.vehicle
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = DeleteEntity
      L4_2 = cacheG
      L4_2 = L4_2.vehicle
      L3_2(L4_2)
    end
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = RequestModel
    L1_3 = L2_2
    L0_3(L1_3)
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 5000
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if L0_3 < L1_3 then
        L1_3 = print
        L2_3 = "^1[GARAGE PREVIEW]^7 Model timeout:"
        L3_3 = L1_2
        L1_3(L2_3, L3_3)
        return
      end
    end
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = GetEntityCoords
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = GetEntityForwardVector
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetModelDimensions
    L5_3 = L2_2
    L4_3, L5_3 = L4_3(L5_3)
    L6_3 = L5_3.y
    L7_3 = L4_3.y
    L6_3 = L6_3 - L7_3
    L7_3 = L6_3 * 0.5
    L7_3 = L7_3 + 2.5
    L8_3 = vector3
    L9_3 = L2_3.x
    L10_3 = L3_3.x
    L10_3 = L10_3 * L7_3
    L9_3 = L9_3 + L10_3
    L10_3 = L2_3.y
    L11_3 = L3_3.y
    L11_3 = L11_3 * L7_3
    L10_3 = L10_3 + L11_3
    L11_3 = L2_3.z
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L9_3 = CreateVehicle
    L10_3 = L2_2
    L11_3 = L8_3.x
    L12_3 = L8_3.y
    L13_3 = L8_3.z
    L14_3 = 0.0
    L15_3 = false
    L16_3 = false
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L10_3 = SetModelAsNoLongerNeeded
    L11_3 = L2_2
    L10_3(L11_3)
    L10_3 = DoesEntityExist
    L11_3 = L9_3
    L10_3 = L10_3(L11_3)
    if not L10_3 then
      L10_3 = print
      L11_3 = "^1[GARAGE PREVIEW]^7 Failed spawn:"
      L12_3 = L1_2
      L10_3(L11_3, L12_3)
      return
    end
    L10_3 = cacheG
    L10_3.vehicle = L9_3
    L10_3 = SetEntityAsMissionEntity
    L11_3 = L9_3
    L12_3 = true
    L13_3 = true
    L10_3(L11_3, L12_3, L13_3)
    L10_3 = SetVehicleHasBeenOwnedByPlayer
    L11_3 = L9_3
    L12_3 = true
    L10_3(L11_3, L12_3)
    L10_3 = SetVehicleNeedsToBeHotwired
    L11_3 = L9_3
    L12_3 = false
    L10_3(L11_3, L12_3)
    L10_3 = SetVehRadioStation
    L11_3 = L9_3
    L12_3 = "OFF"
    L10_3(L11_3, L12_3)
    L10_3 = SetVehiclePropertiesLegacy
    L11_3 = L9_3
    L12_3 = A0_2
    L10_3(L11_3, L12_3)
    L10_3 = SetEntityCollision
    L11_3 = L9_3
    L12_3 = false
    L13_3 = false
    L10_3(L11_3, L12_3, L13_3)
    L10_3 = FreezeEntityPosition
    L11_3 = L9_3
    L12_3 = true
    L10_3(L11_3, L12_3)
    L10_3 = GetEntityCoords
    L11_3 = L9_3
    L10_3 = L10_3(L11_3)
    L11_3 = GetHeadingFromVector_2d
    L12_3 = L2_3.x
    L13_3 = L10_3.x
    L12_3 = L12_3 - L13_3
    L13_3 = L2_3.y
    L14_3 = L10_3.y
    L13_3 = L13_3 - L14_3
    L11_3 = L11_3(L12_3, L13_3)
    L12_3 = SetEntityHeading
    L13_3 = L9_3
    L14_3 = L11_3 + 35.0
    L12_3(L13_3, L14_3)
    L12_3 = table
    L12_3 = L12_3.insert
    L13_3 = AnteprimaVeicoloGarage
    L14_3 = L9_3
    L12_3(L13_3, L14_3)
    L12_3 = SetVehicleDoorsLocked
    L13_3 = L9_3
    L14_3 = 2
    L12_3(L13_3, L14_3)
    L12_3 = SetVehicleDoorsLockedForAllPlayers
    L13_3 = L9_3
    L14_3 = true
    L12_3(L13_3, L14_3)
    L12_3 = 0
    L13_3 = 5
    L14_3 = 1
    for L15_3 = L12_3, L13_3, L14_3 do
      L16_3 = SetVehicleDoorShut
      L17_3 = L9_3
      L18_3 = L15_3
      L19_3 = true
      L16_3(L17_3, L18_3, L19_3)
    end
    L12_3 = CreateThread
    function L13_3()
      local L0_4, L1_4, L2_4, L3_4
      while true do
        L0_4 = DoesEntityExist
        L1_4 = L9_3
        L0_4 = L0_4(L1_4)
        if not L0_4 then
          break
        end
        L0_4 = cacheG
        L0_4 = L0_4.vehicle
        L1_4 = L9_3
        if L0_4 ~= L1_4 then
          break
        end
        L0_4 = Wait
        L1_4 = 0
        L0_4(L1_4)
        L0_4 = SetEntityHeading
        L1_4 = L9_3
        L2_4 = GetEntityHeading
        L3_4 = L9_3
        L2_4 = L2_4(L3_4)
        L2_4 = L2_4 + 0.08
        L0_4(L1_4, L2_4)
      end
    end
    L12_3(L13_3)
  end
  L3_2(L4_2)
end
SpawnLocalVehicleGarage = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = NetworkGetEntityIsNetworked
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = NetworkRequestControlOfEntity
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = 0
    while true do
      L2_2 = NetworkHasControlOfEntity
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if not (not L2_2 and L1_2 < 50) then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
      L2_2 = NetworkRequestControlOfEntity
      L3_2 = A0_2
      L2_2(L3_2)
      L1_2 = L1_2 + 1
    end
  end
  L1_2 = SetEntityAsMissionEntity
  L2_2 = A0_2
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DeleteVehicle
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
DeleteVehicleStriano = L4_1
L4_1 = RegisterNetEvent
L5_1 = "esx_giveownedcar:spawnVehicle"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "esx_giveownedcar:spawnVehicle"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L6_2 = striano_SpawnVehicle
  L7_2 = A1_2
  L8_2 = L4_2
  L9_2 = 0.0
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = DoesEntityExist
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = true
      L5_2 = L1_3
      L1_3 = SetEntityVisible
      L2_3 = A0_3
      L3_3 = false
      L4_3 = false
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetEntityCollision
      L2_3 = A0_3
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = GeneratePlateVehicleShop
      L1_3 = L1_3()
      L2_3 = GetVehiclePropertiesStriano
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L2_3.plate = L1_3
      L3_3 = TriggerServerEvent
      L4_3 = "esx_giveownedcar:setVehicle"
      L5_3 = L2_3
      L6_3 = A0_2
      L7_3 = A1_2
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = TriggerServerEvent
      L4_3 = "striano_keys:sv:adminGiveKey"
      L5_3 = A0_2
      L6_3 = L1_3
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DeleteVehicleStriano
      L4_3 = A0_3
      L3_3(L4_3)
      L3_3 = "** [VEHICLE GIVED]: "
      L4_3 = A1_2
      L5_3 = " ["
      L6_3 = L1_3
      L7_3 = "]** "
      L8_3 = A2_2
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
      L4_3 = TriggerServerEvent
      L5_3 = "esx_giveownedcar:printToConsole"
      L6_3 = L3_3
      L4_3(L5_3, L6_3)
      L4_3 = Wait
      L5_3 = 25
      L4_3(L5_3)
      L4_3 = SetEntityVisible
      L5_3 = A0_3
      L6_3 = true
      L4_3(L5_3, L6_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = Wait
  L7_2 = 2000
  L6_2(L7_2)
  if not L5_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submex
    L8_2 = "Model "
    L9_2 = A1_2
    L10_2 = " not exist."
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2(L7_2, L8_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "sod:spawnVeh"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "sod:spawnVeh"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SpawnVehicle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = true
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "sod:giveVeh"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "sod:giveVeh"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L5_2 = striano_SpawnVehicle
  L6_2 = A0_2
  L7_2 = L3_2
  L8_2 = 0.0
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = DoesEntityExist
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = true
      L4_2 = L1_3
      L1_3 = SetEntityVisible
      L2_3 = A0_3
      L3_3 = false
      L4_3 = false
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetEntityCollision
      L2_3 = A0_3
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = GeneratePlateVehicleShop
      L1_3 = L1_3()
      L2_3 = GetVehiclePropertiesStriano
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L2_3.plate = L1_3
      L3_3 = TriggerServerEvent
      L4_3 = "esx_giveownedcar:setVehicle"
      L5_3 = L2_3
      L6_3 = A0_2
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = TriggerServerEvent
      L4_3 = "striano_keys:sv:adminGiveKey"
      L5_3 = GetPlayerServerId
      L6_3 = PlayerId
      L6_3, L7_3, L8_3 = L6_3()
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L6_3 = L1_3
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DeleteVehicleStriano
      L4_3 = A0_3
      L3_3(L4_3)
      L3_3 = "** [NEW VEHICLE FROM SERVER]: "
      L4_3 = A0_2
      L5_3 = " ["
      L6_3 = L1_3
      L7_3 = "]** "
      L8_3 = A1_2
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
      L4_3 = TriggerServerEvent
      L5_3 = "esx_giveownedcar:printToConsole"
      L6_3 = L3_3
      L4_3(L5_3, L6_3)
      L4_3 = Wait
      L5_3 = 25
      L4_3(L5_3)
      L4_3 = SetEntityVisible
      L5_3 = A0_3
      L6_3 = true
      L4_3(L5_3, L6_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Wait
  L6_2 = 2000
  L5_2(L6_2)
  if not L4_2 then
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submex
    L7_2 = "Model "
    L8_2 = A0_2
    L9_2 = " not exist."
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "TryDeleteDelCar"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "TryDeleteDelCar"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetVehiclesStriano
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = tostring
      L9_2 = GetVehicleNumberPlateText
      L10_2 = L7_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = tostring
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        L8_2 = SetEntityAsMissionEntity
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = DeleteVehicle
        L9_2 = L7_2
        L8_2(L9_2)
        L8_2 = exports
        L8_2 = L8_2.striano_combat
        L9_2 = L8_2
        L8_2 = L8_2.submexError
        L10_2 = "Vehicle detected and deleted DB. ("
        L11_2 = A0_2
        L12_2 = ")"
        L10_2 = L10_2 .. L11_2 .. L12_2
        L8_2(L9_2, L10_2)
        return
      end
    end
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetVehicleColours
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L4_2 = GetVehicleExtraColours
    L5_2 = A0_2
    L4_2, L5_2 = L4_2(L5_2)
    L6_2 = SetVehicleModKit
    L7_2 = A0_2
    L8_2 = 0
    L6_2(L7_2, L8_2)
    L6_2 = A1_2.plate
    if nil ~= L6_2 then
      L6_2 = SetVehicleNumberPlateText
      L7_2 = A0_2
      L8_2 = A1_2.plate
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.plateIndex
    if nil ~= L6_2 then
      L6_2 = SetVehicleNumberPlateTextIndex
      L7_2 = A0_2
      L8_2 = A1_2.plateIndex
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.bodyHealth
    if nil ~= L6_2 then
      L6_2 = SetVehicleBodyHealth
      L7_2 = A0_2
      L8_2 = A1_2.bodyHealth
      L8_2 = L8_2 + 0.0
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.engineHealth
    if nil ~= L6_2 then
      L6_2 = SetVehicleEngineHealth
      L7_2 = A0_2
      L8_2 = A1_2.engineHealth
      L8_2 = L8_2 + 0.0
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.tankHealth
    if nil ~= L6_2 then
      L6_2 = SetVehiclePetrolTankHealth
      L7_2 = A0_2
      L8_2 = A1_2.tankHealth
      L8_2 = L8_2 + 0.0
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.fuelLevel
    if L6_2 then
      L6_2 = SetVehicleFuelLevel
      L7_2 = A0_2
      L8_2 = A1_2.fuelLevel
      L8_2 = L8_2 + 0.0
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.dirtLevel
    if nil ~= L6_2 then
      L6_2 = SetVehicleDirtLevel
      L7_2 = A0_2
      L8_2 = A1_2.dirtLevel
      L8_2 = L8_2 + 0.0
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.color1
    if nil ~= L6_2 then
      L6_2 = SetVehicleColours
      L7_2 = A0_2
      L8_2 = A1_2.color1
      L9_2 = L3_2
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.color2
    if nil ~= L6_2 then
      L6_2 = SetVehicleColours
      L7_2 = A0_2
      L8_2 = A1_2.color1
      if not L8_2 then
        L8_2 = L2_2
      end
      L9_2 = A1_2.color2
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.color1
    if nil ~= L6_2 then
      L6_2 = A1_2.color2
      if nil ~= L6_2 then
        L6_2 = SetVehicleColours
        L7_2 = A0_2
        L8_2 = A1_2.color1
        L9_2 = A1_2.color2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
    L6_2 = A1_2.Rcolor_primary
    if nil ~= L6_2 then
      L6_2 = A1_2.Gcolor_primary
      if nil ~= L6_2 then
        L6_2 = A1_2.Bcolor_primary
        if nil ~= L6_2 then
          L6_2 = SetVehicleCustomPrimaryColour
          L7_2 = A0_2
          L8_2 = A1_2.Rcolor_primary
          L9_2 = A1_2.Gcolor_primary
          L10_2 = A1_2.Bcolor_primary
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
    L6_2 = A1_2.Rcolor_secondary
    if nil ~= L6_2 then
      L6_2 = A1_2.Gcolor_secondary
      if nil ~= L6_2 then
        L6_2 = A1_2.Bcolor_secondary
        if nil ~= L6_2 then
          L6_2 = SetVehicleCustomSecondaryColour
          L7_2 = A0_2
          L8_2 = A1_2.Rcolor_secondary
          L9_2 = A1_2.Gcolor_secondary
          L10_2 = A1_2.Bcolor_secondary
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
    L6_2 = A1_2.pearlescentColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleExtraColours
      L7_2 = A0_2
      L8_2 = A1_2.pearlescentColor
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.wheelColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleExtraColours
      L7_2 = A0_2
      L8_2 = A1_2.pearlescentColor
      if not L8_2 then
        L8_2 = L4_2
      end
      L9_2 = A1_2.wheelColor
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.wheels
    if nil ~= L6_2 then
      L6_2 = SetVehicleWheelType
      L7_2 = A0_2
      L8_2 = A1_2.wheels
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.windowTint
    if not L6_2 then
      L6_2 = A1_2.windowTint
      if -1 ~= L6_2 then
        goto lbl_179
      end
    end
    L6_2 = A1_2.windowTint
    if -1 == L6_2 then
      L6_2 = SetVehicleWindowTint
      L7_2 = A0_2
      L8_2 = 0
      L6_2(L7_2, L8_2)
    else
      L6_2 = SetVehicleWindowTint
      L7_2 = A0_2
      L8_2 = A1_2.windowTint
      L6_2(L7_2, L8_2)
    end
    ::lbl_179::
    L6_2 = A1_2.neonEnabled
    if nil ~= L6_2 then
      L6_2 = SetVehicleNeonLightEnabled
      L7_2 = A0_2
      L8_2 = 0
      L9_2 = A1_2.neonEnabled
      L9_2 = L9_2[1]
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetVehicleNeonLightEnabled
      L7_2 = A0_2
      L8_2 = 1
      L9_2 = A1_2.neonEnabled
      L9_2 = L9_2[2]
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetVehicleNeonLightEnabled
      L7_2 = A0_2
      L8_2 = 2
      L9_2 = A1_2.neonEnabled
      L9_2 = L9_2[3]
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetVehicleNeonLightEnabled
      L7_2 = A0_2
      L8_2 = 3
      L9_2 = A1_2.neonEnabled
      L9_2 = L9_2[4]
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.extras
    if nil ~= L6_2 then
      L6_2 = A1_2.extras
      L6_2 = #L6_2
      if L6_2 > 0 then
        L6_2 = pairs
        L7_2 = A1_2.extras
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          if L11_2 then
            L12_2 = SetVehicleExtra
            L13_2 = A0_2
            L14_2 = tonumber
            L15_2 = L10_2
            L14_2 = L14_2(L15_2)
            L15_2 = 0
            L12_2(L13_2, L14_2, L15_2)
          else
            L12_2 = SetVehicleExtra
            L13_2 = A0_2
            L14_2 = tonumber
            L15_2 = L10_2
            L14_2 = L14_2(L15_2)
            L15_2 = 1
            L12_2(L13_2, L14_2, L15_2)
          end
        end
        L6_2 = print
        L7_2 = "Applico Extra1"
        L6_2(L7_2)
      end
    end
    L6_2 = A1_2.extras2
    if nil ~= L6_2 then
      L6_2 = A1_2.extras2
      L6_2 = #L6_2
      if L6_2 > 0 then
        L6_2 = 1
        L7_2 = 12
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = A1_2.extras2
          L10_2 = L10_2[L9_2]
          if L10_2 == L9_2 then
            L10_2 = SetVehicleExtra
            L11_2 = A0_2
            L12_2 = tonumber
            L13_2 = L9_2
            L12_2 = L12_2(L13_2)
            L13_2 = 1
            L10_2(L11_2, L12_2, L13_2)
          else
            L10_2 = SetVehicleExtra
            L11_2 = A0_2
            L12_2 = tonumber
            L13_2 = L9_2
            L12_2 = L12_2(L13_2)
            L13_2 = 0
            L10_2(L11_2, L12_2, L13_2)
          end
        end
        L6_2 = print
        L7_2 = "Applico Extra2"
        L6_2(L7_2)
      end
    end
    L6_2 = A1_2.neonColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleNeonLightsColour
      L7_2 = A0_2
      L8_2 = A1_2.neonColor
      L8_2 = L8_2[1]
      L9_2 = A1_2.neonColor
      L9_2 = L9_2[2]
      L10_2 = A1_2.neonColor
      L10_2 = L10_2[3]
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.xenonColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleXenonLightsColour
      L7_2 = A0_2
      L8_2 = A1_2.xenonColor
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.modSmokeEnabled
    if nil ~= L6_2 then
      L6_2 = ToggleVehicleMod
      L7_2 = A0_2
      L8_2 = 20
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.tyreSmokeColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleTyreSmokeColor
      L7_2 = A0_2
      L8_2 = A1_2.tyreSmokeColor
      L8_2 = L8_2[1]
      L9_2 = A1_2.tyreSmokeColor
      L9_2 = L9_2[2]
      L10_2 = A1_2.tyreSmokeColor
      L10_2 = L10_2[3]
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSpoilers
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 0
      L9_2 = A1_2.modSpoilers
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modFrontBumper
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 1
      L9_2 = A1_2.modFrontBumper
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modRearBumper
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 2
      L9_2 = A1_2.modRearBumper
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSideSkirt
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 3
      L9_2 = A1_2.modSideSkirt
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modExhaust
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 4
      L9_2 = A1_2.modExhaust
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modFrame
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 5
      L9_2 = A1_2.modFrame
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modGrille
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 6
      L9_2 = A1_2.modGrille
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modHood
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 7
      L9_2 = A1_2.modHood
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modFender
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 8
      L9_2 = A1_2.modFender
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modRightFender
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 9
      L9_2 = A1_2.modRightFender
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modRoof
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 10
      L9_2 = A1_2.modRoof
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modEngine
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 11
      L9_2 = A1_2.modEngine
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modBrakes
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 12
      L9_2 = A1_2.modBrakes
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTransmission
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 13
      L9_2 = A1_2.modTransmission
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modHorns
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 14
      L9_2 = A1_2.modHorns
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSuspension
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 15
      L9_2 = A1_2.modSuspension
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modArmor
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 16
      L9_2 = A1_2.modArmor
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTurbo
    if nil ~= L6_2 then
      L6_2 = ToggleVehicleMod
      L7_2 = A0_2
      L8_2 = 18
      L9_2 = A1_2.modTurbo
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.modXenon
    if nil ~= L6_2 then
      L6_2 = ToggleVehicleMod
      L7_2 = A0_2
      L8_2 = 22
      L9_2 = A1_2.modXenon
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = A1_2.modFrontWheels
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 23
      L9_2 = A1_2.modFrontWheels
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modBackWheels
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 24
      L9_2 = A1_2.modBackWheels
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modPlateHolder
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 25
      L9_2 = A1_2.modPlateHolder
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modVanityPlate
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 26
      L9_2 = A1_2.modVanityPlate
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTrimA
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 27
      L9_2 = A1_2.modTrimA
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modOrnaments
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 28
      L9_2 = A1_2.modOrnaments
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modDashboard
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 29
      L9_2 = A1_2.modDashboard
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modDial
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 30
      L9_2 = A1_2.modDial
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modDoorSpeaker
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 31
      L9_2 = A1_2.modDoorSpeaker
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSeats
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 32
      L9_2 = A1_2.modSeats
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSteeringWheel
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 33
      L9_2 = A1_2.modSteeringWheel
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modShifterLeavers
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 34
      L9_2 = A1_2.modShifterLeavers
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modAPlate
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 35
      L9_2 = A1_2.modAPlate
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modSpeakers
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 36
      L9_2 = A1_2.modSpeakers
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTrunk
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 37
      L9_2 = A1_2.modTrunk
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modHydrolic
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 38
      L9_2 = A1_2.modHydrolic
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modEngineBlock
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 39
      L9_2 = A1_2.modEngineBlock
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modAirFilter
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 40
      L9_2 = A1_2.modAirFilter
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modStruts
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 41
      L9_2 = A1_2.modStruts
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modArchCover
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 42
      L9_2 = A1_2.modArchCover
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modAerials
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 43
      L9_2 = A1_2.modAerials
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTrimB
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 44
      L9_2 = A1_2.modTrimB
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modTank
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 45
      L9_2 = A1_2.modTank
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modWindows
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 46
      L9_2 = A1_2.modWindows
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.modLivery
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 48
      L9_2 = A1_2.modLivery
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = SetVehicleLivery
      L7_2 = A0_2
      L8_2 = A1_2.modLivery
      L6_2(L7_2, L8_2)
    end
    L6_2 = A1_2.modLivery2
    if nil ~= L6_2 then
      L6_2 = SetVehicleMod
      L7_2 = A0_2
      L8_2 = 48
      L9_2 = A1_2.modLivery2
      L10_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = A1_2.InteriorColor
    if nil ~= L6_2 then
      L6_2 = SetVehicleInteriorColor
      L7_2 = A0_2
      L8_2 = A1_2.InteriorColor
      L6_2(L7_2, L8_2)
    end
  end
end
SetVehiclePropertiesStriano = L4_1
L4_1 = exports
L5_1 = "GetVehProperties"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetVehiclePropertiesStriano
  L2_2 = A0_2
  return L1_2(L2_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "^%s*(.-)%s*$"
  L4_2 = "%1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
Trim = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = 10
  L2_2 = L2_2 ^ A1_2
  if A0_2 >= 0 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 * L2_2
    L4_2 = L4_2 + 0.5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 / L2_2
    return L3_2
  else
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = A0_2 * L2_2
    L4_2 = L4_2 - 0.5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 / L2_2
    return L3_2
  end
end
Round = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = GetVehicleColours
    L2_2 = A0_2
    L1_2, L2_2 = L1_2(L2_2)
    L3_2 = GetVehicleCustomPrimaryColour
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L6_2 = GetVehicleCustomSecondaryColour
    L7_2 = A0_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L9_2 = GetVehicleExtraColours
    L10_2 = A0_2
    L9_2, L10_2 = L9_2(L10_2)
    L11_2 = {}
    L12_2 = 0
    L13_2 = 12
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L16_2 = DoesExtraExist
      L17_2 = A0_2
      L18_2 = L15_2
      L16_2 = L16_2(L17_2, L18_2)
      if L16_2 then
        L16_2 = IsVehicleExtraTurnedOn
        L17_2 = A0_2
        L18_2 = L15_2
        L16_2 = L16_2(L17_2, L18_2)
        L16_2 = 1 == L16_2
        L17_2 = tostring
        L18_2 = L15_2
        L17_2 = L17_2(L18_2)
        L11_2[L17_2] = L16_2
      end
    end
    L12_2 = {}
    L13_2 = GetEntityModel
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.model = L13_2
    L13_2 = Trim
    L14_2 = GetVehicleNumberPlateText
    L15_2 = A0_2
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2.plate = L13_2
    L13_2 = GetVehicleNumberPlateTextIndex
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.plateIndex = L13_2
    L13_2 = Round
    L14_2 = GetVehicleBodyHealth
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.bodyHealth = L13_2
    L13_2 = Round
    L14_2 = GetVehicleEngineHealth
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.engineHealth = L13_2
    L13_2 = Round
    L14_2 = GetVehiclePetrolTankHealth
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.tankHealth = L13_2
    L13_2 = Round
    L14_2 = GetSafeFuel
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.fuelLevel = L13_2
    L13_2 = Round
    L14_2 = GetVehicleDirtLevel
    L15_2 = A0_2
    L14_2 = L14_2(L15_2)
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.dirtLevel = L13_2
    L12_2.color1 = L1_2
    L12_2.color2 = L2_2
    L12_2.Rcolor_primary = L3_2
    L12_2.Gcolor_primary = L4_2
    L12_2.Bcolor_primary = L5_2
    L12_2.Rcolor_secondary = L6_2
    L12_2.Gcolor_secondary = L7_2
    L12_2.Bcolor_secondary = L8_2
    L13_2 = GetVehicleInteriorColor
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.InteriorColor = L13_2
    L12_2.pearlescentColor = L9_2
    L12_2.wheelColor = L10_2
    L13_2 = GetVehicleWheelType
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.wheels = L13_2
    L13_2 = GetVehicleModVariation
    L14_2 = A0_2
    L15_2 = 23
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.customtires1 = L13_2
    L13_2 = GetVehicleModVariation
    L14_2 = A0_2
    L15_2 = 24
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.customtires2 = L13_2
    L13_2 = GetVehicleWindowTint
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.windowTint = L13_2
    L13_2 = GetVehicleXenonLightsColour
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.xenonColor = L13_2
    L13_2 = {}
    L14_2 = IsVehicleNeonLightEnabled
    L15_2 = A0_2
    L16_2 = 0
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = IsVehicleNeonLightEnabled
    L16_2 = A0_2
    L17_2 = 1
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = IsVehicleNeonLightEnabled
    L17_2 = A0_2
    L18_2 = 2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = IsVehicleNeonLightEnabled
    L18_2 = A0_2
    L19_2 = 3
    L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L13_2[4] = L17_2
    L13_2[5] = L18_2
    L13_2[6] = L19_2
    L12_2.neonEnabled = L13_2
    L13_2 = table
    L13_2 = L13_2.pack
    L14_2 = GetVehicleNeonLightsColour
    L15_2 = A0_2
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2.neonColor = L13_2
    L12_2.extras = L11_2
    L13_2 = table
    L13_2 = L13_2.pack
    L14_2 = GetVehicleTyreSmokeColor
    L15_2 = A0_2
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2.tyreSmokeColor = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 0
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSpoilers = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 1
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modFrontBumper = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 2
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modRearBumper = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 3
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSideSkirt = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 4
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modExhaust = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 5
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modFrame = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 6
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modGrille = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 7
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modHood = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 8
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modFender = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 9
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modRightFender = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 10
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modRoof = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 11
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modEngine = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 12
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modBrakes = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 13
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTransmission = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 14
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modHorns = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 15
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSuspension = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 16
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modArmor = L13_2
    L13_2 = IsToggleModOn
    L14_2 = A0_2
    L15_2 = 18
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTurbo = L13_2
    L13_2 = IsToggleModOn
    L14_2 = A0_2
    L15_2 = 20
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSmokeEnabled = L13_2
    L13_2 = IsToggleModOn
    L14_2 = A0_2
    L15_2 = 22
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modXenon = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 23
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modFrontWheels = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 24
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modBackWheels = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 25
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modPlateHolder = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 26
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modVanityPlate = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 27
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTrimA = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 28
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modOrnaments = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 29
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modDashboard = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 30
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modDial = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 31
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modDoorSpeaker = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 32
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSeats = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 33
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSteeringWheel = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 34
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modShifterLeavers = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 35
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modAPlate = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 36
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modSpeakers = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 37
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTrunk = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 38
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modHydrolic = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 39
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modEngineBlock = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 40
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modAirFilter = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 41
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modStruts = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 42
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modArchCover = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 43
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modAerials = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 44
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTrimB = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 45
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modTank = L13_2
    L13_2 = GetVehicleMod
    L14_2 = A0_2
    L15_2 = 46
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.modWindows = L13_2
    L13_2 = GetVehicleLivery
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L12_2.modLivery = L13_2
    return L12_2
  else
    return
  end
end
GetVehiclePropertiesStriano = L4_1
L4_1 = {}
L5_1 = {}
L6_1 = vector3
L7_1 = -1926.04
L8_1 = -3003.274
L9_1 = 12.944
L6_1 = L6_1(L7_1, L8_1, L9_1)
L5_1.position = L6_1
L5_1.head = 330.0
L4_1.Abbandonato = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = GetOffsetFromEntityInWorldCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 0.0
  L4_2 = 4.0
  L5_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = CastRayPointToPoint
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = 10
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetRaycastResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  return L7_2
end
VehicleInFront = L5_1
L5_1 = nil
L6_1 = nil
L7_1 = {}
L8_1 = 35.0
L9_1 = {}
L10_1 = nil
L11_1 = RegisterCommand
L12_1 = "mieiveicoli"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = OpenVehicleMenu
  L3_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "mieiveh"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = OpenVehicleMenu
  L3_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "myveh"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = OpenVehicleMenu
  L3_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "garage"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = "Abbandonato"
  L9_1.currentGarage = L3_2
  L4_2 = HandleActionGarage
  L5_2 = L3_2
  L4_2(L5_2)
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = nil
  L1_2 = L8_1
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L4_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = L10_2.position
      L12_2 = L11_2 - L3_2
      L12_2 = #L12_2
      if L1_2 >= L12_2 then
        L1_2 = L12_2
        L0_2 = L10_2
        L4_2 = L9_2
      end
    end
  end
  return L4_2
end
getClosestGarage = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedInAnyVehicle
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Not in a vehicle."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  if not L2_2 then
    return
  end
  L3_2 = DoesEntityExist
  L4_2 = L9_1.vehicle
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DeleteEntity
    L4_2 = L9_1.vehicle
    L3_2(L4_2)
  end
  L3_2 = TriggerServerCallback
  L4_2 = "garage:fetchPlayerVehicles"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L1_3 = #A0_3
    if 0 == L1_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "No vehicles in your list."
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e think5"
      L1_3(L2_3)
      return
    end
    L1_3 = exports
    L1_3 = L1_3.striano_fastmenu
    L2_3 = L1_3
    L1_3 = L1_3.close
    L1_3(L2_3)
    L1_3 = Wait
    L2_3 = 25
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.striano_fastmenu
    L2_3 = L1_3
    L1_3 = L1_3.clearMenu
    L1_3(L2_3)
    L1_3 = 0
    L2_3 = 0
    L3_3 = 300
    L4_3 = false
    L5_3 = ipairs
    L6_3 = A0_3
    L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
    for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
      L11_3 = L10_3.props
      L12_3 = GetDisplayNameFromVehicleModel
      L13_3 = L11_3.model
      L12_3 = L12_3(L13_3)
      L13_3 = GetLabelText
      L14_3 = L12_3
      L13_3 = L13_3(L14_3)
      if "NULL" == L13_3 then
        L13_3 = L12_3
      end
      L14_3 = exports
      L14_3 = L14_3.striano_fastmenu
      L15_3 = L14_3
      L14_3 = L14_3.addMenuItemAdvanced
      L16_3 = {}
      L17_3 = L13_3
      L18_3 = " - "
      L19_3 = L10_3.plate
      L17_3 = L17_3 .. L18_3 .. L19_3
      L16_3.label = L17_3
      L17_3 = "Plate: "
      L18_3 = L10_3.plate
      L17_3 = L17_3 .. L18_3
      L16_3.description = L17_3
      L16_3.autoClose = false
      function L17_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
        L0_4 = GetGameTimer
        L0_4 = L0_4()
        L1_4 = L1_3
        L2_4 = L9_3
        if L1_4 == L2_4 then
          return
        end
        L1_4 = L2_3
        L1_4 = L0_4 - L1_4
        L2_4 = L3_3
        if L1_4 < L2_4 then
          return
        end
        L1_4 = L9_3
        L1_3 = L1_4
        L2_3 = L0_4
        L1_4 = SpawnLocalVehicleGarage
        L2_4 = L11_3
        L1_4(L2_4)
        L1_4 = PlaySoundFrontend
        L2_4 = -1
        L3_4 = "NAV_LEFT_RIGHT"
        L4_4 = "HUD_FREEMODE_SOUNDSET"
        L5_4 = 1
        L1_4(L2_4, L3_4, L4_4, L5_4)
      end
      L16_3.onHover = L17_3
      function L17_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
        L0_4 = L4_3
        if L0_4 then
          return
        end
        L0_4 = true
        L4_3 = L0_4
        L0_4 = DoesEntityExist
        L1_4 = L9_1.vehicle
        L0_4 = L0_4(L1_4)
        if L0_4 then
          L0_4 = DeleteEntity
          L1_4 = L9_1.vehicle
          L0_4(L1_4)
        end
        L0_4 = L10_3.posizione
        L1_4 = nil
        L2_4 = type
        L3_4 = L0_4
        L2_4 = L2_4(L3_4)
        if "table" == L2_4 then
          L2_4 = tonumber
          L3_4 = L0_4.x
          L2_4 = L2_4(L3_4)
          if nil ~= L2_4 then
            L2_4 = tonumber
            L3_4 = L0_4.y
            L2_4 = L2_4(L3_4)
            if nil ~= L2_4 then
              L2_4 = tonumber
              L3_4 = L0_4.z
              L2_4 = L2_4(L3_4)
              if nil ~= L2_4 then
                goto lbl_50
              end
            end
          end
        end
        L2_4 = GetOffsetFromEntityInWorldCoords
        L3_4 = L1_2
        L4_4 = 0.0
        L5_4 = 4.0
        L6_4 = 0.0
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
        L3_4 = vector3
        L4_4 = L2_4.x
        L5_4 = L2_4.y
        L6_4 = L2_4.z
        L3_4 = L3_4(L4_4, L5_4, L6_4)
        L1_4 = L3_4
        goto lbl_62
        ::lbl_50::
        L2_4 = vector3
        L3_4 = tonumber
        L4_4 = L0_4.x
        L3_4 = L3_4(L4_4)
        L4_4 = tonumber
        L5_4 = L0_4.y
        L4_4 = L4_4(L5_4)
        L5_4 = tonumber
        L6_4 = L0_4.z
        L5_4, L6_4 = L5_4(L6_4)
        L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
        L1_4 = L2_4
        ::lbl_62::
        L2_4 = exports
        L2_4 = L2_4.striano_fastmenu
        L3_4 = L2_4
        L2_4 = L2_4.close
        L2_4(L3_4)
        L2_4 = SpawnVehicle
        L3_4 = L11_3
        L4_4 = L10_3.benzina
        L5_4 = L10_3.fuori
        L6_4 = L1_4
        L2_4(L3_4, L4_4, L5_4, L6_4)
      end
      L16_3.onClick = L17_3
      L17_3 = {}
      L17_3.title = L13_3
      L18_3 = "Plate: "
      L19_3 = L10_3.plate
      L20_3 = " | Fuel: "
      L21_3 = math
      L21_3 = L21_3.floor
      L22_3 = tonumber
      L23_3 = L10_3.benzina
      L22_3 = L22_3(L23_3)
      if not L22_3 then
        L22_3 = 0
      end
      L21_3 = L21_3(L22_3)
      L22_3 = "%"
      L18_3 = L18_3 .. L19_3 .. L20_3 .. L21_3 .. L22_3
      L17_3.description = L18_3
      L17_3.icon = ""
      L17_3.theme = "dark"
      L16_3.hoverInfo = L17_3
      L14_3(L15_3, L16_3)
    end
    L5_3 = exports
    L5_3 = L5_3.striano_fastmenu
    L6_3 = L5_3
    L5_3 = L5_3.openMenu
    L5_3(L6_3)
    L5_3 = CreateThread
    function L6_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 25
      L0_4(L1_4)
      while true do
        L0_4 = exports
        L0_4 = L0_4.striano_fastmenu
        L1_4 = L0_4
        L0_4 = L0_4.opened
        L0_4 = L0_4(L1_4)
        if not L0_4 then
          break
        end
        L0_4 = Wait
        L1_4 = 250
        L0_4(L1_4)
      end
      L0_4 = L4_3
      if not L0_4 then
        L0_4 = DoesEntityExist
        L1_4 = L9_1.vehicle
        L0_4 = L0_4(L1_4)
        if L0_4 then
          L0_4 = SetEntityAsMissionEntity
          L1_4 = L9_1.vehicle
          L2_4 = true
          L0_4(L1_4, L2_4)
          L0_4 = DeleteVehicle
          L1_4 = L9_1.vehicle
          L0_4(L1_4)
        end
      end
    end
    L5_3(L6_3)
  end
  L3_2(L4_2, L5_2)
end
OpenGarageMenu = L11_1
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerCallback
  L1_2 = "garage:fetchPlayerVehicles"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L1_3 = GetVehiclesStriano
    L1_3 = L1_3()
    L2_3 = GetEntityCoords
    L3_3 = PlayerPedId
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L3_3()
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
    L3_3 = #A0_3
    if 0 == L3_3 then
      L3_3 = exports
      L3_3 = L3_3.striano_combat
      L4_3 = L3_3
      L3_3 = L3_3.submexError
      L5_3 = "Theres no spawned vehicles owned by you."
      L3_3(L4_3, L5_3)
      return
    end
    L3_3 = exports
    L3_3 = L3_3.striano_fastmenu
    L4_3 = L3_3
    L3_3 = L3_3.clearMenu
    L3_3(L4_3)
    L3_3 = false
    L4_3 = ipairs
    L5_3 = A0_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = L9_3.props
      L11_3 = ipairs
      L12_3 = L1_3
      L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
      for L15_3, L16_3 in L11_3, L12_3, L13_3, L14_3 do
        L17_3 = DoesEntityExist
        L18_3 = L16_3
        L17_3 = L17_3(L18_3)
        if L17_3 then
          L3_3 = true
          L17_3 = math
          L17_3 = L17_3.floor
          L18_3 = GetEntityCoords
          L19_3 = L16_3
          L18_3 = L18_3(L19_3)
          L18_3 = L2_3 - L18_3
          L18_3 = #L18_3
          L17_3 = L17_3(L18_3)
          L18_3 = GetVehicleNumberPlateText
          L19_3 = L16_3
          L18_3 = L18_3(L19_3)
          L19_3 = L10_3.plate
          if L18_3 == L19_3 then
            L18_3 = GetLabelText
            L19_3 = GetDisplayNameFromVehicleModel
            L20_3 = L10_3.model
            L19_3, L20_3, L21_3, L22_3, L23_3 = L19_3(L20_3)
            L18_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3)
            if "NULL" == L18_3 then
              L18_3 = ""
            else
              L19_3 = GetLabelText
              L20_3 = GetDisplayNameFromVehicleModel
              L21_3 = L10_3.model
              L20_3, L21_3, L22_3, L23_3 = L20_3(L21_3)
              L19_3 = L19_3(L20_3, L21_3, L22_3, L23_3)
              L20_3 = " - "
              L19_3 = L19_3 .. L20_3
              L18_3 = L19_3
            end
            L19_3 = exports
            L19_3 = L19_3.striano_fastmenu
            L20_3 = L19_3
            L19_3 = L19_3.addMenuItem
            L21_3 = L18_3
            L22_3 = L10_3.plate
            L21_3 = L21_3 .. L22_3
            function L22_3()
              local L0_4, L1_4, L2_4, L3_4, L4_4
              L0_4 = L16_3
              L1_4 = IsPauseMenuActive
              L1_4 = L1_4()
              if not L1_4 then
                if nil ~= L0_4 and 0 ~= L0_4 then
                  L1_4 = DoesBlipExist
                  L2_4 = L10_1
                  L1_4 = L1_4(L2_4)
                  if L1_4 then
                    L1_4 = RemoveBlip
                    L2_4 = L10_1
                    L1_4(L2_4)
                    L1_4 = exports
                    L1_4 = L1_4.striano_combat
                    L2_4 = L1_4
                    L1_4 = L1_4.submexInfo
                    L3_4 = "Last marker vehicles removed, you can assign new."
                    L1_4(L2_4, L3_4)
                    L1_4 = DeleteWaypoint
                    L1_4()
                  else
                    L1_4 = exports
                    L1_4 = L1_4.striano_combat
                    L2_4 = L1_4
                    L1_4 = L1_4.submexInfo
                    L3_4 = "Vehciles marker on radar as [Your Veh]"
                    L1_4(L2_4, L3_4)
                    L1_4 = AddBlipForEntity
                    L2_4 = L0_4
                    L1_4 = L1_4(L2_4)
                    L10_1 = L1_4
                    L1_4 = SetBlipSprite
                    L2_4 = L10_1
                    L3_4 = 225
                    L1_4(L2_4, L3_4)
                    L1_4 = SetBlipColour
                    L2_4 = L10_1
                    L3_4 = 8
                    L1_4(L2_4, L3_4)
                    L1_4 = SetBlipScale
                    L2_4 = L10_1
                    L3_4 = 0.8
                    L1_4(L2_4, L3_4)
                    L1_4 = BeginTextCommandSetBlipName
                    L2_4 = "STRING"
                    L1_4(L2_4)
                    L1_4 = AddTextComponentString
                    L2_4 = "Your Veh"
                    L1_4(L2_4)
                    L1_4 = EndTextCommandSetBlipName
                    L2_4 = L10_1
                    L1_4(L2_4)
                    L1_4 = GetEntityCoords
                    L2_4 = L0_4
                    L1_4 = L1_4(L2_4)
                    L2_4 = exports
                    L2_4 = L2_4.striano_inventory
                    L3_4 = L2_4
                    L2_4 = L2_4.blipInteresse
                    L4_4 = L1_4
                    L2_4(L3_4, L4_4)
                  end
                else
                  L1_4 = exports
                  L1_4 = L1_4.striano_combat
                  L2_4 = L1_4
                  L1_4 = L1_4.submexError
                  L3_4 = "No vehicles in list."
                  L1_4(L2_4, L3_4)
                  L1_4 = exports
                  L1_4 = L1_4.striano_fastmenu
                  L2_4 = L1_4
                  L1_4 = L1_4.close
                  L1_4(L2_4)
                  return
                end
              end
            end
            L23_3 = false
            L19_3(L20_3, L21_3, L22_3, L23_3)
            L19_3 = exports
            L19_3 = L19_3.striano_fastmenu
            L20_3 = L19_3
            L19_3 = L19_3.openMenu
            L19_3(L20_3)
          end
        end
      end
    end
    if not L3_3 then
      L4_3 = exports
      L4_3 = L4_3.striano_combat
      L5_3 = L4_3
      L4_3 = L4_3.submex
      L6_3 = "No vehicles spawned to find."
      L4_3(L5_3, L6_3)
    end
  end
  L0_2(L1_2, L2_2)
end
OpenVehicleMenu = L11_1
L11_1 = {}
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = EliminaAnteprimaGarage
  L4_2()
  L4_2 = DoesEntityExist
  L5_2 = L9_1.vehicle
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = SetEntityAsMissionEntity
    L5_2 = L9_1.vehicle
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = DeleteVehicle
    L5_2 = L9_1.vehicle
    L4_2(L5_2)
  end
  if 1 == A2_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_combat
    L5_2 = L4_2
    L4_2 = L4_2.submexError
    L6_2 = "This vehicles is already spawned."
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = PlayerVicino
  L4_2, L5_2 = L4_2()
  if -1 ~= L4_2 then
    L6_2 = 2.5
    if L5_2 <= L6_2 then
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.submexError
      L8_2 = "No one must be near you for this operation."
      L6_2(L7_2, L8_2)
      L6_2 = ExecuteCommand
      L7_2 = "e think5"
      L6_2(L7_2)
  end
  else
    L6_2 = GetVehiclesStriano
    L6_2 = L6_2()
    L7_2 = false
    L8_2 = 1
    L9_2 = #L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L6_2[L11_2]
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = tostring
        L14_2 = GetVehicleNumberPlateText
        L15_2 = L12_2
        L14_2, L15_2, L16_2 = L14_2(L15_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = tostring
        L15_2 = A0_2.plate
        L14_2 = L14_2(L15_2)
        if L13_2 == L14_2 then
          L13_2 = DoesBlipExist
          L14_2 = L10_1
          L13_2 = L13_2(L14_2)
          if L13_2 then
            L13_2 = RemoveBlip
            L14_2 = L10_1
            L13_2(L14_2)
            L13_2 = DeleteWaypoint
            L13_2()
          end
          L7_2 = true
          L13_2 = exports
          L13_2 = L13_2.striano_combat
          L14_2 = L13_2
          L13_2 = L13_2.submexInfo
          L15_2 = "Vehicle already spawned."
          L13_2(L14_2, L15_2)
          L13_2 = AddBlipForEntity
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          L10_1 = L13_2
          L13_2 = SetBlipSprite
          L14_2 = L10_1
          L15_2 = 225
          L13_2(L14_2, L15_2)
          L13_2 = SetBlipColour
          L14_2 = L10_1
          L15_2 = 8
          L13_2(L14_2, L15_2)
          L13_2 = SetBlipScale
          L14_2 = L10_1
          L15_2 = 0.8
          L13_2(L14_2, L15_2)
          L13_2 = BeginTextCommandSetBlipName
          L14_2 = "STRING"
          L13_2(L14_2)
          L13_2 = AddTextComponentString
          L14_2 = "Your Veh"
          L13_2(L14_2)
          L13_2 = EndTextCommandSetBlipName
          L14_2 = L10_1
          L13_2(L14_2)
          L13_2 = GetEntityCoords
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          L14_2 = exports
          L14_2 = L14_2.striano_inventory
          L15_2 = L14_2
          L14_2 = L14_2.blipInteresse
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
          return
        end
      end
    end
    if not L7_2 then
      L8_2 = RequestModelStriano
      L9_2 = A0_2.model
      L8_2(L9_2)
      L8_2 = true
      L9_2 = striano_SpawnVehicle
      L10_2 = A0_2.model
      L11_2 = GetEntityCoords
      L12_2 = PlayerPedId
      L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L12_2 = 0.0
      function L13_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L1_3 = GetVehicleTypeRaw
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if 13 == L1_3 or 15 == L1_3 then
          L2_3 = IsEntityInWater
          L3_3 = PlayerPedId
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3()
          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          if not L2_3 then
            L2_3 = false
            L8_2 = L2_3
          end
        end
        L2_3 = GetEntityCoords
        L3_3 = PlayerPedId
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3()
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = A3_2
        L2_3 = L2_3 - L3_3
        L2_3 = #L2_3
        if L2_3 < 30.0 then
          L2_3 = L8_2
          if L2_3 then
            L2_3 = exports
            L2_3 = L2_3.striano_combat
            L3_3 = L2_3
            L2_3 = L2_3.fodera
            L2_3(L3_3)
            L2_3 = SetVehiclePropertiesLegacy
            L3_3 = A0_3
            L4_3 = A0_2
            L2_3(L3_3, L4_3)
            L2_3 = SetModelAsNoLongerNeeded
            L3_3 = A0_2.model
            L2_3(L3_3)
            L2_3 = SetEntityAsMissionEntity
            L3_3 = A0_3
            L4_3 = false
            L5_3 = false
            L2_3(L3_3, L4_3, L5_3)
            L2_3 = SetVehicleDoorsLocked
            L3_3 = A0_3
            L4_3 = 1
            L2_3(L3_3, L4_3)
            L2_3 = L9_1.vehicle
            if L2_3 then
              L2_3 = DoesEntityExist
              L3_3 = L9_1.vehicle
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = DeleteEntity
                L3_3 = L9_1.vehicle
                L2_3(L3_3)
              end
            end
            L2_3 = SetVehicleFuelLevel
            L3_3 = A0_3
            L4_3 = GetSafeFuel
            L5_3 = A0_3
            L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
            L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
            L2_3 = SetVehicleEngineOn
            L3_3 = A0_3
            L4_3 = true
            L5_3 = true
            L6_3 = true
            L2_3(L3_3, L4_3, L5_3, L6_3)
            L2_3 = SetVehicleJetEngineOn
            L3_3 = A0_3
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = exports
            L2_3 = L2_3.striano_core
            L3_3 = L2_3
            L2_3 = L2_3.getsubmisID
            L2_3 = L2_3(L3_3)
            if 0 == L2_3 then
              L2_3 = TaskWarpPedIntoVehicle
              L3_3 = PlayerPedId
              L3_3 = L3_3()
              L4_3 = A0_3
              L5_3 = -1
              L2_3(L3_3, L4_3, L5_3)
            end
            L2_3 = GetVehicleNumberPlateText
            L3_3 = A0_3
            L2_3 = L2_3(L3_3)
            L3_3 = TriggerServerEvent
            L4_3 = "Mx :: GetCustomCar"
            L5_3 = A0_3
            L6_3 = L2_3
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = SetVehicleDirtLevel
            L4_3 = A0_3
            L5_3 = A0_2.sporco
            L3_3(L4_3, L5_3)
            L3_3 = table
            L3_3 = L3_3.insert
            L4_3 = L11_1
            L5_3 = A0_3
            L3_3(L4_3, L5_3)
            L3_3 = DecorSetInt
            L4_3 = A0_3
            L5_3 = "OWNER_Veh"
            L6_3 = GetPlayerServerId
            L7_3 = PlayerId
            L7_3, L8_3 = L7_3()
            L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3)
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
            L3_3 = nil
            L3_3 = "MANAGE VEHICLE"
            L4_3 = exports
            L4_3 = L4_3.text_guide
            L5_3 = L4_3
            L4_3 = L4_3.ClearGuideText
            L4_3(L5_3)
            L4_3 = Wait
            L5_3 = 50
            L4_3(L5_3)
            L4_3 = {}
            L5_3 = {}
            L6_3 = exports
            L6_3 = L6_3.striano_core
            L7_3 = L6_3
            L6_3 = L6_3.getInfoKey
            L8_3 = 1937710959
            L6_3, L7_3, L8_3 = L6_3(L7_3, L8_3)
            L5_3[1] = L6_3
            L5_3[2] = L7_3
            L5_3[3] = L8_3
            L4_3[L3_3] = L5_3
            L5_3 = exports
            L5_3 = L5_3.text_guide
            L6_3 = L5_3
            L5_3 = L5_3.AddGuideText
            L7_3 = L4_3
            L5_3(L6_3, L7_3)
            L5_3 = exports
            L5_3 = L5_3.text_guide
            L6_3 = L5_3
            L5_3 = L5_3.GuidaVisibileNV
            L5_3(L6_3)
            L5_3 = Wait
            L6_3 = 950
            L5_3(L6_3)
            L5_3 = DoesEntityExist
            L6_3 = A0_3
            L5_3 = L5_3(L6_3)
            if L5_3 then
              L5_3 = TriggerEvent
              L6_3 = "setBenzina"
              L7_3 = A0_3
              L8_3 = A1_2
              L8_3 = L8_3 + 0.0
              L5_3(L6_3, L7_3, L8_3)
              L5_3 = GetVehiclePedIsIn
              L6_3 = PlayerPedId
              L6_3, L7_3, L8_3 = L6_3()
              L5_3 = L5_3(L6_3, L7_3, L8_3)
              L6_3 = Wait
              L7_3 = 25
              L6_3(L7_3)
              L6_3 = SetEntityVisible
              L7_3 = L5_3
              L8_3 = true
              L6_3(L7_3, L8_3)
              L6_3 = CreateThread
              function L7_3()
                local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
                while true do
                  L0_4 = IsPedInVehicle
                  L1_4 = PlayerPedId
                  L1_4 = L1_4()
                  L2_4 = L5_3
                  L3_4 = false
                  L0_4 = L0_4(L1_4, L2_4, L3_4)
                  if not L0_4 then
                    break
                  end
                  L0_4 = Wait
                  L1_4 = 0
                  L0_4(L1_4)
                end
                L0_4 = GetEntityCoords
                L1_4 = L5_3
                L0_4 = L0_4(L1_4)
                L1_4 = RequestCollisionAtCoord
                L2_4 = L0_4.x
                L3_4 = L0_4.y
                L4_4 = L0_4.z
                L1_4(L2_4, L3_4, L4_4)
                L1_4 = FreezeEntityPosition
                L2_4 = L5_3
                L3_4 = true
                L1_4(L2_4, L3_4)
                L1_4 = GetVehicleNumberPlateText
                L2_4 = L5_3
                L1_4 = L1_4(L2_4)
                L2_4 = TriggerServerCallback
                L3_4 = "garage:mettifuori"
                function L4_4()
                  local L0_5, L1_5
                end
                L5_4 = L1_4
                L6_4 = GetSafeFuel
                L7_4 = L5_3
                L6_4 = L6_4(L7_4)
                L7_4 = GetEntityCoords
                L8_4 = L5_3
                L7_4, L8_4 = L7_4(L8_4)
                L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
                L2_4 = ExecuteCommand
                L3_4 = "guidaBase"
                L2_4(L3_4)
              end
              L6_3(L7_3)
            end
          else
            L2_3 = exports
            L2_3 = L2_3.striano_combat
            L3_3 = L2_3
            L2_3 = L2_3.submex
            L4_3 = "You must be in water to spawn this vehicle."
            L2_3(L3_3, L4_3)
            L2_3 = SetEntityAsMissionEntity
            L3_3 = A0_3
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = DeleteVehicle
            L3_3 = A0_3
            L2_3(L3_3)
            L2_3 = ExecuteCommand
            L3_3 = "e shrug5"
            L2_3(L3_3)
          end
        else
          L2_3 = SetEntityAsMissionEntity
          L3_3 = A0_3
          L4_3 = true
          L2_3(L3_3, L4_3)
          L2_3 = DeleteVehicle
          L3_3 = A0_3
          L2_3(L3_3)
          L2_3 = ExecuteCommand
          L3_3 = "e shrug5"
          L2_3(L3_3)
          L2_3 = exports
          L2_3 = L2_3.striano_combat
          L3_3 = L2_3
          L2_3 = L2_3.submexError
          L4_3 = "You are too far away from the last coords this vehicle was parked!"
          L2_3(L3_3, L4_3)
          L2_3 = TaskTurnPedToFaceCoord
          L3_3 = PlayerPedId
          L3_3 = L3_3()
          L4_3 = A3_2.x
          L5_3 = A3_2.y
          L6_3 = A3_2.z
          L7_3 = 1000
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
          L2_3 = exports
          L2_3 = L2_3.striano_core
          L3_3 = L2_3
          L2_3 = L2_3.percorso
          L4_3 = A3_2
          L2_3(L3_3, L4_3)
          L2_3 = Wait
          L3_3 = 1000
          L2_3(L3_3)
          L2_3 = ExecuteCommand
          L3_3 = "e point"
          L2_3(L3_3)
        end
      end
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
SpawnVehicle = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_12::
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.fuelState
  if nil ~= L1_2 then
    L2_2 = tonumber
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0
    end
    return L2_2
  end
  L2_2 = tonumber
  L3_2 = GetVehicleFuelLevel
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 0
  end
  return L2_2
end
GetSafeFuel = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = L1_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
  end
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = ExecuteCommand
  L4_2 = "prova Enter in a valid vehicle."
  L3_2(L4_2)
  do return end
  ::lbl_22::
  L3_2 = NetworkRequestControlOfEntity
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = GetVehiclePropertiesStriano
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetVehicleDirtLevel
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetSafeFuel
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityCoords
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetVehicleNumberPlateText
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L8_2 = L11_1
  L8_2 = #L8_2
  L9_2 = 1
  L10_2 = -1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L11_1
    L12_2 = L12_2[L11_2]
    if L2_2 == L12_2 then
      L12_2 = table
      L12_2 = L12_2.remove
      L13_2 = L11_1
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
      break
    end
  end
  L8_2 = TriggerServerCallback
  L9_2 = "garage:validateVehicle"
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if not A0_3 then
      L1_3 = ExecuteCommand
      L2_3 = "prova This vehicle is not yours."
      L1_3(L2_3)
      return
    end
    L1_3 = DoesEntityExist
    L2_3 = L2_2
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = IsPedInVehicle
      L2_3 = L1_2
      L3_3 = L2_2
      L4_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L1_3 = TaskLeaveVehicle
        L2_3 = L1_2
        L3_3 = L2_2
        L4_3 = 16
        L1_3(L2_3, L3_3, L4_3)
        while true do
          L1_3 = DoesEntityExist
          L2_3 = L2_2
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            break
          end
          L1_3 = IsPedInVehicle
          L2_3 = L1_2
          L3_3 = L2_2
          L4_3 = false
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          if not L1_3 then
            break
          end
          L1_3 = Wait
          L2_3 = 0
          L1_3(L2_3)
        end
      end
    end
    L1_3 = TriggerServerCallback
    L2_3 = "garage:mettifuori"
    function L3_3()
      local L0_4, L1_4
    end
    L4_3 = L7_2
    L5_3 = L5_2
    L6_3 = L6_2
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
    L1_3 = DoesEntityExist
    L2_3 = L2_2
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = DeleteVehicleStriano
      L2_3 = L2_2
      L1_3(L2_3)
    end
  end
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
PutInVehicle = L12_1
L12_1 = exports
L13_1 = "parkVeicolo"
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = PutInVehicle
  L2_2 = A0_2
  L1_2(L2_2)
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "SetVehProperties"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetVehiclePropertiesLegacy
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "getVeicoliSpawnati"
function L14_1()
  local L0_2, L1_2
  L0_2 = L11_1
  return L0_2
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "addVeicoloSpawnato"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L11_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L12_1(L13_1, L14_1)
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = SetVehicleEngineHealth
  L3_2 = A0_2
  L4_2 = A1_2.engineHealth
  if L4_2 then
    L4_2 = A1_2.engineHealth
    L4_2 = L4_2 + 0.0
    if L4_2 then
      goto lbl_12
    end
  end
  L4_2 = 1000.0
  ::lbl_12::
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleBodyHealth
  L3_2 = A0_2
  L4_2 = A1_2.bodyHealth
  if L4_2 then
    L4_2 = A1_2.bodyHealth
    L4_2 = L4_2 + 0.0
    if L4_2 then
      goto lbl_24
    end
  end
  L4_2 = 1000.0
  ::lbl_24::
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.windows
  if L2_2 then
    L2_2 = 1
    L3_2 = 13
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.windows
      L6_2 = L6_2[L5_2]
      if false == L6_2 then
        L6_2 = SmashVehicleWindow
        L7_2 = A0_2
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L2_2 = A1_2.tyres
  if L2_2 then
    L2_2 = 1
    L3_2 = 7
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.tyres
      L6_2 = L6_2[L5_2]
      if false ~= L6_2 then
        L6_2 = SetVehicleTyreBurst
        L7_2 = A0_2
        L8_2 = L5_2
        L9_2 = true
        L10_2 = 1000
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
  L2_2 = A1_2.doors
  if L2_2 then
    L2_2 = 0
    L3_2 = 5
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A1_2.doors
      L6_2 = L6_2[L5_2]
      if false ~= L6_2 then
        L6_2 = SetVehicleDoorBroken
        L7_2 = A0_2
        L8_2 = L5_2 - 1
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = SetVehiclePropertiesStriano
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
SetVehiclePropertiesLegacy = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsEntityPositionFrozen
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = OpenGarageMenu
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
HandleActionGarage = L12_1
L12_1 = RegisterCommand
L13_1 = "targa"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if nil == L5_2 or 0 == L5_2 then
    L6_2 = GetClosestVehicle
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L10_2 = 5.0
    L11_2 = 0
    L12_2 = 70
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = L6_2
    if nil == L5_2 or 0 == L5_2 then
      L6_2 = GetClosestVehicle
      L7_2 = L4_2.x
      L8_2 = L4_2.y
      L9_2 = L4_2.z
      L10_2 = 9.5
      L11_2 = 0
      L12_2 = 12294
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = L6_2
    end
    if nil == L5_2 or 0 == L5_2 then
      L6_2 = VehicleInFront
      L6_2 = L6_2()
      L5_2 = L6_2
    end
    if nil == L5_2 or 0 == L5_2 then
      L6_2 = GetEntityCoords
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetOffsetFromEntityInWorldCoords
      L8_2 = L3_2
      L9_2 = 0.0
      L10_2 = 5.0
      L11_2 = 0.0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = CastRayPointToPoint
      L9_2 = L6_2.x
      L10_2 = L6_2.y
      L11_2 = L6_2.z
      L12_2 = L7_2.x
      L13_2 = L7_2.y
      L14_2 = L7_2.z
      L15_2 = 30
      L16_2 = L3_2
      L17_2 = 0
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2 = GetRaycastResult
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L5_2 = L13_2
    end
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 and nil ~= L5_2 and 0 ~= L5_2 then
      L6_2 = IsPedAPlayer
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = NetworkRequestControlOfEntity
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  end
  if nil ~= L5_2 and 0 ~= L5_2 then
    L6_2 = SetVehicleFixed
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = SetVehicleUndriveable
    L7_2 = L5_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submexError
    L8_2 = "Player copied in clipboard: "
    L9_2 = GetVehicleNumberPlateText
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2 .. L9_2
    L6_2(L7_2, L8_2)
    L6_2 = ExecuteCommand
    L7_2 = "copia "
    L8_2 = GetVehicleNumberPlateText
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
  else
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submexError
    L8_2 = "No vehicle nearest."
    L6_2(L7_2, L8_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "park"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = ExecuteCommand
  L4_2 = "parkveh"
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "parkveh"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ExecuteCommand
  L1_2 = "prova3 "
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = PutInVehicle
      L3_2 = L1_2
      L2_2(L3_2)
  end
  else
    L2_2 = ExecuteCommand
    L3_2 = "prova Enter in a vehicle owned by you."
    L2_2(L3_2)
  end
end
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = DrawMarker
  L2_2 = 1
  L3_2 = A0_2.pos
  if not L3_2 then
    L3_2 = vector3
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = 0.0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = A0_2.type
  if 6 == L7_2 then
    L7_2 = -90.0
    if L7_2 then
      goto lbl_27
    end
  end
  L7_2 = A0_2.rotate
  if L7_2 then
    L7_2 = -180.0
    if L7_2 then
      goto lbl_27
    end
  end
  L7_2 = 0.0
  ::lbl_27::
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.2
  L11_2 = 0.2
  L12_2 = 1.5
  L13_2 = 255
  L14_2 = 0
  L15_2 = 110
  L16_2 = 100
  L17_2 = false
  L18_2 = true
  L19_2 = 2
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
DrawScriptMarker = L12_1
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = L7_1
    L0_2 = #L0_2
    if not (L0_2 > 0) then
      break
    end
    L0_2 = L7_1
    L0_2 = L0_2[1]
    L1_2 = DeleteVehicleStriano
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = L7_1
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
EliminaAnteprimaGarage = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = EliminaAnteprimaGarage
  L1_2()
  L1_2 = RequestModelStriano
  L2_2 = A0_2.model
  L1_2(L2_2)
  L1_2 = L9_1.vehicle
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L9_1.vehicle
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L9_1.vehicle
      L1_2(L2_2)
    end
  end
  L1_2 = IsModelValid
  L2_2 = A0_2.model
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.model
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "string" == L5_2 then
    L5_2 = joaat
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_43
    end
  end
  L5_2 = L4_2
  ::lbl_43::
  L6_2 = GetModelDimensions
  L7_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = L7_2.y
  L9_2 = L6_2.y
  L8_2 = L8_2 - L9_2
  L9_2 = L8_2 * 0.5
  L9_2 = L9_2 + 2.5
  L10_2 = vector3
  L11_2 = L2_2.x
  L12_2 = L3_2.x
  L12_2 = L12_2 * L9_2
  L11_2 = L11_2 + L12_2
  L12_2 = L2_2.y
  L13_2 = L3_2.y
  L13_2 = L13_2 * L9_2
  L12_2 = L12_2 + L13_2
  L13_2 = L2_2.z
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = CreateVehicle
  L12_2 = L5_2
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = 0.0
  L17_2 = false
  L18_2 = false
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = DoesEntityExist
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = print
    L13_2 = "^1[GARAGE PREVIEW]^7 Impossibile creare:"
    L14_2 = L4_2
    L12_2(L13_2, L14_2)
    L12_2 = SetModelAsNoLongerNeeded
    L13_2 = L5_2
    L12_2(L13_2)
    return
  end
  L9_1.vehicle = L11_2
  L12_2 = SetEntityAsMissionEntity
  L13_2 = L11_2
  L14_2 = true
  L15_2 = true
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = SetVehicleHasBeenOwnedByPlayer
  L13_2 = L11_2
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = SetVehicleNeedsToBeHotwired
  L13_2 = L11_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = SetVehRadioStation
  L13_2 = L11_2
  L14_2 = "OFF"
  L12_2(L13_2, L14_2)
  L12_2 = SetVehiclePropertiesLegacy
  L13_2 = L11_2
  L14_2 = A0_2
  L12_2(L13_2, L14_2)
  L12_2 = SetEntityCollision
  L13_2 = L11_2
  L14_2 = false
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = FreezeEntityPosition
  L13_2 = L11_2
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = GetEntityCoords
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetHeadingFromVector_2d
  L14_2 = L2_2.x
  L15_2 = L12_2.x
  L14_2 = L14_2 - L15_2
  L15_2 = L2_2.y
  L16_2 = L12_2.y
  L15_2 = L15_2 - L16_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = SetEntityHeading
  L15_2 = L11_2
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  L14_2 = table
  L14_2 = L14_2.insert
  L15_2 = L7_1
  L16_2 = L11_2
  L14_2(L15_2, L16_2)
  L14_2 = SetVehicleDoorsLocked
  L15_2 = L11_2
  L16_2 = 2
  L14_2(L15_2, L16_2)
  L14_2 = SetVehicleDoorsLockedForAllPlayers
  L15_2 = L11_2
  L16_2 = true
  L14_2(L15_2, L16_2)
  L14_2 = 0
  L15_2 = 5
  L16_2 = 1
  for L17_2 = L14_2, L15_2, L16_2 do
    L18_2 = SetVehicleDoorShut
    L19_2 = L11_2
    L20_2 = L17_2
    L21_2 = true
    L18_2(L19_2, L20_2, L21_2)
  end
  L14_2 = SetModelAsNoLongerNeeded
  L15_2 = L5_2
  L14_2(L15_2)
  L14_2 = CreateThread
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = L11_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = L9_1.vehicle
      L1_3 = L11_2
      if L0_3 ~= L1_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityHeading
      L1_3 = L11_2
      L0_3 = L0_3(L1_3)
      L1_3 = SetEntityHeading
      L2_3 = L11_2
      L3_3 = L0_3 + 0.28
      L1_3(L2_3, L3_3)
    end
  end
  L14_2(L15_2)
end
SpawnLocalVehicleGarage = L12_1
L12_1 = RegisterCommand
L13_1 = "vehhp"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = IsPedSittingInAnyVehicle
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L0_2 = GetVehiclePedIsIn
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = print
    L2_2 = "Vita veicolo: "
    L3_2 = GetVehicleEngineHealth
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "vehfuel"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = IsPedSittingInAnyVehicle
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L0_2 = GetVehiclePedIsIn
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = print
    L2_2 = "Fuel in vehicle: "
    L3_2 = GetSafeFuel
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "getfuel"
function L14_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "vehfuel"
  L0_2(L1_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "delveh"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = IsPedSittingInAnyVehicle
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L1_2 then
    L1_2 = GetVehiclePedIsIn
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexInfo
    L4_2 = "Are you sure you want delete this vehicle from database?"
    L2_2(L3_2, L4_2)
    while true do
      L2_2 = exports
      L2_2 = L2_2.striano_core
      L3_2 = L2_2
      L2_2 = L2_2.draw
      L4_2 = 38
      L5_2 = "Yes, delete vehicle"
      L6_2 = 73
      L7_2 = "Cancel operation"
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = IsDisabledControlPressed
      L3_2 = 0
      L4_2 = 73
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 73
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsDisabledControlPressed
          L3_2 = 0
          L4_2 = 25
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            L2_2 = IsControlPressed
            L3_2 = 0
            L4_2 = 25
            L2_2 = L2_2(L3_2, L4_2)
            if not L2_2 then
              goto lbl_60
            end
          end
        end
      end
      do return end
      goto lbl_100
      ::lbl_60::
      L2_2 = IsDisabledControlPressed
      L3_2 = 0
      L4_2 = 38
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 38
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          goto lbl_100
        end
      end
      L2_2 = GetVehicleNumberPlateText
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = SetEntityAsMissionEntity
      L4_2 = L1_2
      L3_2(L4_2)
      L3_2 = DeleteEntity
      L4_2 = L1_2
      L3_2(L4_2)
      L3_2 = TriggerServerEvent
      L4_2 = "esx_importexport:delveicolo"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexInfo
      L5_2 = "Vehicle delete from Database."
      L3_2(L4_2, L5_2)
      L3_2 = TriggerServerCallback
      L4_2 = "garage:elimina"
      function L5_2()
        local L0_3, L1_3
      end
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = TriggerServerEvent
      L4_2 = "striano_keys:sv:adminDestroyKey"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      do return end
      ::lbl_100::
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = {}
L13_1 = RegisterCommand
L14_1 = "ruotebullet"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L2_2 = L2_2.adminLevel
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = IsPedSittingInAnyVehicle
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = GetVehiclePedIsIn
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L12_1
    L4_2 = L4_2[L3_2]
    if nil == L4_2 then
      L4_2 = L12_1
      L4_2[L3_2] = true
      L4_2 = SetVehicleTyresCanBurst
      L5_2 = L3_2
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexError
      L6_2 = "Tired bulletproof activated."
      L4_2(L5_2, L6_2)
    else
      L4_2 = L12_1
      L4_2 = L4_2[L3_2]
      if L4_2 then
        L4_2 = L12_1
        L4_2[L3_2] = false
        L4_2 = SetVehicleTyresCanBurst
        L5_2 = L3_2
        L6_2 = false
        L4_2(L5_2, L6_2)
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "Tired bulletproof activated."
        L4_2(L5_2, L6_2)
      else
        L4_2 = L12_1
        L4_2[L3_2] = true
        L4_2 = SetVehicleTyresCanBurst
        L5_2 = L3_2
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "Tired bulletproof deactivated."
        L4_2(L5_2, L6_2)
      end
    end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Vehicle not detected."
    L3_2(L4_2, L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "assignVeh"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = LocalPlayer
  L3_2 = L3_2.state
  L3_2 = L3_2.adminLevel
  if not L3_2 then
    L3_2 = 0
  end
  if 0 == L3_2 then
    return
  end
  L4_2 = A1_2[1]
  if nil == L4_2 then
    return
  else
    L4_2 = IsModelInCdimage
    L5_2 = GetHashKey
    L6_2 = A1_2[2]
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L4_2 then
      L4_2 = A1_2[2]
      if L4_2 then
        L4_2 = TriggerServerEvent
        L5_2 = "sod:giveVeh"
        L6_2 = A1_2[1]
        L7_2 = A1_2[2]
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "Vehicle "
        L7_2 = A1_2[2]
        L8_2 = " gived to ID "
        L9_2 = A1_2[1]
        L10_2 = "."
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "/assignVeh [ID_Player] [Vehicle Name]."
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexError
      L6_2 = "Model insert not valid."
      L4_2(L5_2, L6_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "clearVehProvvisorio"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "clearVehProvvisorio"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = DoesEntityExist
  L1_2 = VeicoloGiocatore
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = NetworkHasControlOfEntity
    L1_2 = VeicoloGiocatore
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = trimfunc
      L1_2 = GetVehicleNumberPlateText
      L2_2 = VeicoloGiocatore
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
      L1_2 = TriggerServerEvent
      L2_2 = "striano_keys:sv:adminDestroyKey"
      L3_2 = "TMP_"
      L4_2 = L0_2
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
      L1_2 = DeleteVehicle
      L2_2 = VeicoloGiocatore
      L1_2(L2_2)
      VeicoloGiocatore = nil
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = exports
L14_1 = "getVehTemp"
function L15_1()
  local L0_2, L1_2
  L0_2 = VeicoloGiocatore
  return L0_2
end
L13_1(L14_1, L15_1)
blipvehsessione = nil
VeicoloGiocatore = nil
function L13_1(A0_2)
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
trimfunc = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = DoesBlipExist
  L4_2 = blipvehsessione
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = RemoveBlip
    L4_2 = blipvehsessione
    L3_2(L4_2)
    blipvehsessione = nil
  end
  L3_2 = 0
  while true do
    L4_2 = NetworkHasControlOfEntity
    L5_2 = VeicoloGiocatore
    L4_2 = L4_2(L5_2)
    if not (not L4_2 and L3_2 < 100) then
      break
    end
    L4_2 = DoesEntityExist
    L5_2 = VeicoloGiocatore
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 1
    L4_2(L5_2)
    L4_2 = NetworkRequestControlOfEntity
    L5_2 = VeicoloGiocatore
    L4_2(L5_2)
    L3_2 = L3_2 + 1
  end
  L4_2 = DoesEntityExist
  L5_2 = VeicoloGiocatore
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = NetworkHasControlOfEntity
    L5_2 = VeicoloGiocatore
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DeleteVehicle
      L5_2 = VeicoloGiocatore
      L4_2(L5_2)
      VeicoloGiocatore = nil
      L4_2 = Wait
      L5_2 = 1
      L4_2(L5_2)
  end
  else
    VeicoloGiocatore = nil
  end
  L4_2 = striano_SpawnVehicle
  L5_2 = A0_2
  L6_2 = GetEntityCoords
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = 0.0
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = SetVehicleFuelLevel
    L2_3 = A0_3
    L3_3 = 50.0
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleEngineOn
    L2_3 = A0_3
    L3_3 = true
    L4_3 = true
    L5_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = SetVehicleJetEngineOn
    L2_3 = A0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = exports
    L1_3 = L1_3.striano_core
    L2_3 = L1_3
    L1_3 = L1_3.getsubmisID
    L1_3 = L1_3(L2_3)
    if 0 == L1_3 then
      L1_3 = TaskWarpPedIntoVehicle
      L2_3 = L2_2
      L3_3 = A0_3
      L4_3 = -1
      L1_3(L2_3, L3_3, L4_3)
    end
    L1_3 = SetVehicleNeedsToBeHotwired
    L2_3 = A0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleHasBeenOwnedByPlayer
    L2_3 = A0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityAsMissionEntity
    L2_3 = A0_3
    L3_3 = true
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SetVehicleIsStolen
    L2_3 = A0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleIsWanted
    L2_3 = A0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetVehRadioStation
    L2_3 = A0_3
    L3_3 = "OFF"
    L1_3(L2_3, L3_3)
    VeicoloGiocatore = A0_3
    L1_3 = DecorSetInt
    L2_3 = A0_3
    L3_3 = "OWNER_Veh"
    L4_3 = GetPlayerServerId
    L5_3 = PlayerId
    L5_3 = L5_3()
    L4_3, L5_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = trimfunc
    L2_3 = GetVehicleNumberPlateText
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L2_3 = TriggerServerEvent
    L3_3 = "striano_keys:sv:adminGiveTempKey"
    L4_3 = GetPlayerServerId
    L5_3 = PlayerId
    L5_3 = L5_3()
    L4_3 = L4_3(L5_3)
    L5_3 = L1_3
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = DoesEntityExist
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = TriggerEvent
      L3_3 = "setBenzina"
      L4_3 = A0_3
      L5_3 = 50.0
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = A1_2
    if nil ~= L2_3 then
      L2_3 = ApplyExtrasFromConfig
      L3_3 = A0_3
      L4_3 = A1_2
      L2_3(L3_3, L4_3)
      L2_3 = print
      L3_3 = "Applyed "
      L4_3 = A1_2
      L4_3 = #L4_3
      L5_3 = " extras al veicolo."
      L3_3 = L3_3 .. L4_3 .. L5_3
      L2_3(L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = ClearPedTasks
  L5_2 = L2_2
  L4_2(L5_2)
  while true do
    L4_2 = IsPedInAnyVehicle
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 25
    L4_2(L5_2)
  end
  L4_2 = GetVehiclePedIsIn
  L5_2 = L2_2
  L6_2 = false
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = AddBlipForEntity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = SetBlipDisplay
  L7_2 = L5_2
  L8_2 = 4
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipAsShortRange
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipColour
  L7_2 = L5_2
  L8_2 = 44
  L6_2(L7_2, L8_2)
  L6_2 = SetBlipScale
  L7_2 = L5_2
  L8_2 = 0.7
  L6_2(L7_2, L8_2)
  L6_2 = BeginTextCommandSetBlipName
  L7_2 = "STRING"
  L6_2(L7_2)
  L6_2 = AddTextComponentString
  L7_2 = "Session Vehicle"
  L6_2(L7_2)
  L6_2 = EndTextCommandSetBlipName
  L7_2 = L5_2
  L6_2(L7_2)
  blipvehsessione = L5_2
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.addVeicoloSpawnato
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = Wait
  L7_2 = 25
  L6_2(L7_2)
  L6_2 = SetEntityVisible
  L7_2 = L4_2
  L8_2 = true
  L6_2(L7_2, L8_2)
end
spawnVehSession = L13_1
L13_1 = exports
L14_1 = "spawnVehSession"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = spawnVehSession
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = nil
L14_1 = CreateThread
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Wait
    L1_2 = 2000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 and 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = L13_1
        if nil == L2_2 then
          L13_1 = L1_2
        end
      end
    end
    L2_2 = IsPedInAnyVehicle
    L3_2 = L0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = L13_1
      if nil ~= L2_2 then
        L2_2 = TriggerServerCallback
        L3_2 = "garage:mettifuori"
        function L4_2()
          local L0_3, L1_3
        end
        L5_2 = GetVehicleNumberPlateText
        L6_2 = L13_1
        L5_2 = L5_2(L6_2)
        L6_2 = GetSafeFuel
        L7_2 = L13_1
        L6_2 = L6_2(L7_2)
        L7_2 = GetEntityCoords
        L8_2 = L13_1
        L7_2, L8_2 = L7_2(L8_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        L2_2 = nil
        L13_1 = L2_2
      end
    end
  end
end
L14_1(L15_1)
