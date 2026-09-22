local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = RegisterServerEvent
L3_1 = "xenos_DragPeople:sync"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "xenos_DragPeople:sync"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "xenos_DragPeople:syncTarget"
  L3_2 = A0_2
  L4_2 = source
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = source
  L1_2 = L0_1
  L1_2[L2_2] = A0_2
  L1_2 = L1_1
  L2_2 = source
  L1_2[A0_2] = L2_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "xenos_DragPeople:syncSOLO"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "xenos_DragPeople:syncSOLO"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "xenos_DragPeople:syncTargetSOLO"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "xenos_DragPeople:stop"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "xenos_DragPeople:stop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "xenos_DragPeople:cl_stop"
    L4_2 = A0_2
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L0_1
    L2_2[L1_2] = nil
    L2_2 = L1_1
    L2_2[A0_2] = nil
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "updateTrascina"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "updateTrascina"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = TriggerClientEvent
  L6_2 = "updateTrascina"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "playerDropped"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = source
  L2_2 = L0_1
  L2_2[L1_2] = nil
  L2_2 = L1_1
  L2_2[L1_2] = nil
end
L2_1(L3_1, L4_1)
