local L0_1, L1_1, L2_1
L0_1 = RegisterCommand
L1_1 = "me"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ""
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = A1_2
  L5_2 = " "
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 .. L3_2
  L3_2 = TriggerClientEvent
  L4_2 = "3dme:shareDisplay"
  L5_2 = -1
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = false
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "h"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = "~q~"
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = A1_2
  L5_2 = " "
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 .. L3_2
  L3_2 = TriggerClientEvent
  L4_2 = "3dme:shareDisplay"
  L5_2 = -1
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = false
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dado"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 6
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = TriggerClientEvent
  L4_2 = "3dme:shareDisplayDado"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dado2"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 6
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 6
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = TriggerClientEvent
  L5_2 = "3dme:shareDisplayDado2"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dado3"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = 6
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 6
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = 6
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "3dme:shareDisplayDado3"
  L7_2 = -1
  L8_2 = A0_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
