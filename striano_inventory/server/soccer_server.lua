local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "InviteToPlaySoccer"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "InviteToPlaySoccer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "InviteToPlaySoccer"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
