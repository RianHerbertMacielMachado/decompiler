local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rope:createRope"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "rope:createRopeSync"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rope:deleteAllRopes"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "rope:deleteAllRopes"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rope:deleteRope"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "rope:deleteRope"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
