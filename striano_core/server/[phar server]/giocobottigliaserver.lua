local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "um-truthordare:server:rotate"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = TriggerClientEvent
  L6_2 = "um-truthordare:client:rotate"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
