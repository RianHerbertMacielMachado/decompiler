local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "megaphone:applySubmix"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "megaphone:updateSubmixStatus"
  L3_2 = -1
  L4_2 = A0_2
  L5_2 = source
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
