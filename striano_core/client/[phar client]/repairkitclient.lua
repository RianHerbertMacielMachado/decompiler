local L0_1, L1_1, L2_1, L3_1
function L0_1()
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
L1_1 = RegisterNetEvent
L2_1 = "esx_repairkit:onUse"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx_repairkit:onUse"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = IsPedInAnyVehicle
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "fixaVeicolo"
    L2_2 = GetVehiclePedIsIn
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2(L3_2, L4_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetClosestVehicle
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L6_2 = 5.0
    L7_2 = 0
    L8_2 = 70
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if nil == L2_2 or 0 == L2_2 then
      L3_2 = GetClosestVehicle
      L4_2 = L1_2.x
      L5_2 = L1_2.y
      L6_2 = L1_2.z
      L7_2 = 9.5
      L8_2 = 0
      L9_2 = 12294
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = L3_2
    end
    if nil == L2_2 or 0 == L2_2 then
      L3_2 = L0_1
      L3_2 = L3_2()
      L2_2 = L3_2
    end
    if nil == L2_2 or 0 == L2_2 then
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
      L2_2 = L10_2
    end
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 and nil ~= L2_2 and 0 ~= L2_2 then
      L3_2 = IsPedAPlayer
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = NetworkRequestControlOfEntity
        L4_2 = L2_2
        L3_2(L4_2)
      end
    end
    if nil ~= L2_2 and 0 ~= L2_2 then
      L3_2 = SetVehicleFixed
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = SetVehicleUndriveable
      L4_2 = L2_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = TriggerEvent
      L4_2 = "fixaVeicolo"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Nessun veicolo nelle vicinanze."
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "fixaVeicolo"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "fixaVeicolo"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = FreezeEntityPosition
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = ExecuteCommand
  L3_2 = "cinv"
  L2_2(L3_2)
  L2_2 = 0
  L3_2 = SetEntityAsMissionEntity
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = NetworkHasControlOfEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not (not L3_2 or L2_2 < 100) then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L2_2 = L2_2 + 1
  end
  if nil == A1_2 then
    L3_2 = ExecuteCommand
    L4_2 = "e meccanico"
    L3_2(L4_2)
  end
  L3_2 = SetEntityAsMissionEntity
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = NetworkRequestControlOfEntity
  L4_2 = A0_2
  L3_2(L4_2)
  if nil == A1_2 then
    L3_2 = SetVehicleDoorOpen
    L4_2 = A0_2
    L5_2 = 4
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = Wait
    L4_2 = 3500
    L3_2(L4_2)
    L3_2 = SetVehicleDoorShut
    L4_2 = A0_2
    L5_2 = 4
    L6_2 = 0
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = SetVehicleFixed
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = SetVehicleDeformationFixed
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = SetVehicleEngineHealth
  L4_2 = A0_2
  L5_2 = 1000.0
  L3_2(L4_2, L5_2)
  if nil == A1_2 then
    L3_2 = ExecuteCommand
    L4_2 = "e c"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "e puliscimani"
    L3_2(L4_2)
  end
  L3_2 = TriggerServerEvent
  L4_2 = "fixamiVeicolo"
  L3_2(L4_2)
  L3_2 = SetVehicleFixed
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = SetVehicleDeformationFixed
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = FreezeEntityPosition
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetVehicleUndriveable
  L4_2 = A0_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerEvent
  L4_2 = "status:remove"
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = "igiene"
  L7_2 = 30000
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1(L2_1, L3_1)
