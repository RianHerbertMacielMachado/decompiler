local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "TakeHostage:sync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "TakeHostage:sync"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L7_2 = source
  L8_2 = TriggerClientEvent
  L9_2 = "TakeHostage:syncTarget"
  L10_2 = A0_2
  L11_2 = L7_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "TakeHostage:releaseHostage"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "TakeHostage:releaseHostage"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = TriggerClientEvent
  L3_2 = "TakeHostage:releaseHostage"
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "TakeHostage:stop"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "TakeHostage:stop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "TakeHostage:stop"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
