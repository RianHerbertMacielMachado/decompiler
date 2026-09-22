local L0_1, L1_1, L2_1, L3_1
L0_1 = RegisterNetEvent
L1_1 = "SuperManAnimPed"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SuperManAnimPed"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = TriggerClientEvent
  L6_2 = "SuperManAnimPed"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "SuperManSetup"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SuperManSetup"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "SuperManSetup"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "AddPedSyncSM"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "AddPedSyncSM"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    L2_2 = L0_1
    L3_2 = {}
    L2_2[A1_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L0_1
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "DelPedSyncSM"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "DelPedSyncSM"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A1_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = 1
      L3_2 = L0_1
      L3_2 = L3_2[A1_2]
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L0_1
        L6_2 = L6_2[A1_2]
        L6_2 = L6_2[L5_2]
        if L6_2 == A0_2 then
          L6_2 = table
          L6_2 = L6_2.remove
          L7_2 = L0_1
          L7_2 = L7_2[A1_2]
          L8_2 = L5_2
          L6_2(L7_2, L8_2)
          break
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "playerDropped"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = 0
      L3_2 = 1
      L4_2 = L0_1
      L4_2 = L4_2[L1_2]
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L0_1
        L7_2 = L7_2[L1_2]
        L7_2 = L7_2[L6_2]
        if nil ~= L7_2 then
          L2_2 = L2_2 + 1
        end
      end
      L3_2 = TriggerClientEvent
      L4_2 = "EliminaPedSyncSM"
      L5_2 = -1
      L6_2 = L0_1
      L6_2 = L6_2[L1_2]
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = L0_1
      L4_2 = {}
      L3_2[L1_2] = L4_2
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "DelSupermanPed"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "DelSupermanPed"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "EliminaPedSyncSM_2"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "explosionEvent"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetEntityModel
  L3_2 = GetVehiclePedIsIn
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetHashKey
  L4_2 = "invisible"
  L3_2 = L3_2(L4_2)
  if L2_2 == L3_2 then
    L2_2 = CancelEvent
    L2_2()
  end
end
L1_1(L2_1, L3_1)
