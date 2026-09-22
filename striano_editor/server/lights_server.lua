local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "syncLights"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "syncLights"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "syncLights"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "activeSmoke"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "activeSmoke"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "activeSmoke"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "stopSmoke"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "stopSmoke"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "stopSmoke"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1(L1_1, L2_1)
