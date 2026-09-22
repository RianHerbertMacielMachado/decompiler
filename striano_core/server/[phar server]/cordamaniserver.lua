local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "fn_cuff_item:uncuff"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fn_cuff_item:uncuff"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "fn_cuff_item:forceUncuff"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fn_cuff_item:handcuff"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fn_cuff_item:handcuff"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = TriggerClientEvent
  L4_2 = "fn_cuff_item:handcuff"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = TriggerEvent
    L4_2 = "cavallo:toglisella"
    L5_2 = L2_2
    L6_2 = "cuffs"
    L7_2 = 1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = TriggerClientEvent
    L4_2 = "anim:cmd"
    L5_2 = source
    L6_2 = "prova This player with knife can be freed by another player."
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
