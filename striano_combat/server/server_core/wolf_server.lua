local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "SyncRotationLupo"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SyncRotationLupo"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "SyncRotationLupo"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
