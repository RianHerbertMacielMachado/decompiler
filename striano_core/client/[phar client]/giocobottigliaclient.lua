local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = nil
L1_1 = RegisterCommand
L2_1 = "bottlegame"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1000
  L2_2 = 3700
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = L3_2 * 1.5
  L5_2 = L2_2 + L5_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 10.0
  L9_2 = 20.0
  L7_2 = L7_2(L8_2, L9_2)
  massimale = L7_2
  L7_2 = ExecuteCommand
  L8_2 = "e pickup"
  L7_2(L8_2)
  L7_2 = Wait
  L8_2 = 500
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.submex
  L9_2 = "Delete with ~h~/delbott~h~."
  L7_2(L8_2, L9_2)
  L7_2 = TriggerServerEvent
  L8_2 = "um-truthordare:server:rotate"
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L0_2 + 0.0
  L13_2 = massimale
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "delbott"
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if nil ~= L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = L0_1
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = L0_1
    L0_2(L1_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = 0
L2_1 = 0.0
L3_1 = RegisterNetEvent
L4_1 = "um-truthordare:client:rotate"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_1 = A4_2
  L5_2 = nil
  L6_2 = L0_1
  if nil ~= L6_2 then
    L6_2 = GetEntityRotation
    L7_2 = L0_1
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2.z
    L6_2 = SetEntityAsMissionEntity
    L7_2 = L0_1
    L6_2(L7_2)
    L6_2 = DeleteEntity
    L7_2 = L0_1
    L6_2(L7_2)
  else
  end
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = "prop_bottle_macbeth"
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2 - 0.9
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L0_1 = L6_2
  L6_2 = L0_1
  L7_2 = PlaceObjectOnGroundProperly
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = GetEntityCoords
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = SetEntityCoords
  L9_2 = L6_2
  L10_2 = L7_2.x
  L11_2 = L7_2.y
  L12_2 = L7_2.z
  L12_2 = L12_2 + 0.04
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = vector3
  L9_2 = A0_2
  L10_2 = 90.0
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if nil ~= L5_2 then
    L9_2 = vector3
    L10_2 = A0_2
    L11_2 = 90.0
    L12_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2 = L9_2
  end
  L9_2 = FreezeEntityPosition
  L10_2 = L6_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = SetEntityRotation
  L10_2 = L6_2
  L11_2 = L8_2
  L12_2 = false
  L13_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = SetModelAsNoLongerNeeded
  L10_2 = L6_2
  L9_2(L10_2)
  L9_2 = Wait
  L10_2 = 500
  L9_2(L10_2)
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L1_1
      L1_3 = A3_2
      if L0_3 < L1_3 then
        L0_3 = L2_1
        if L0_3 > 0.0 then
          L0_3 = GetEntityRotation
          L1_3 = L6_2
          L0_3 = L0_3(L1_3)
          L1_3 = L1_1
          L1_3 = L1_3 + 1
          L1_1 = L1_3
          L1_3 = L2_1
          if L1_3 > 0.0 then
            L1_3 = L2_1
            L1_3 = L1_3 - 0.03
            L2_1 = L1_3
          end
          L1_3 = L2_1
          if L1_3 < 0.0 then
            L1_3 = 0.0
            L2_1 = L1_3
          end
          L1_3 = SetEntityRotation
          L2_3 = L6_2
          L3_3 = vector3
          L4_3 = L0_3.x
          L5_3 = L0_3.y
          L6_3 = L0_3.z
          L7_3 = L2_1
          L6_3 = L6_3 + L7_3
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          L4_3 = false
          L5_3 = true
          L1_3(L2_3, L3_3, L4_3, L5_3)
      end
      else
        L0_3 = 0
        L1_1 = L0_3
        L0_3 = GetEntityRotation
        L1_3 = L6_2
        L0_3 = L0_3(L1_3)
        L1_3 = SetEntityRotation
        L2_3 = L6_2
        L3_3 = vector3
        L4_3 = L0_3.x
        L5_3 = L0_3.y
        L6_3 = L0_3.z
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L4_3 = false
        L5_3 = true
        L1_3(L2_3, L3_3, L4_3, L5_3)
        return
      end
    end
  end
  L9_2(L10_2)
end
L3_1(L4_1, L5_1)
