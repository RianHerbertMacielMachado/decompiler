local L0_1, L1_1, L2_1
L0_1 = RegisterCommand
L1_1 = "copia"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil ~= A1_2 then
    L3_2 = table
    L3_2 = L3_2.concat
    L4_2 = A1_2
    L5_2 = " "
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "clipboard"
    L6_2 = ""
    L7_2 = L3_2
    L6_2 = L6_2 .. L7_2
    L5_2.data = L6_2
    L4_2(L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ctp"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "clipboard"
  L3_2 = ""
  L4_2 = roundBL
  L5_2 = L0_2.x
  L6_2 = 3
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ","
  L6_2 = roundBL
  L7_2 = L0_2.y
  L8_2 = 3
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = ","
  L8_2 = roundBL
  L9_2 = L0_2.z
  L10_2 = 3
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = L8_2 - 1.0
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ctpa"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "clipboard"
  L3_2 = ""
  L4_2 = roundBL
  L5_2 = L0_2.x
  L6_2 = 3
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = ","
  L6_2 = roundBL
  L7_2 = L0_2.y
  L8_2 = 3
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = ","
  L8_2 = roundBL
  L9_2 = L0_2.z
  L9_2 = L9_2 - 1.0
  L10_2 = 3
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = ","
  L10_2 = roundBL
  L11_2 = GetEntityHeading
  L12_2 = PlayerPedId
  L12_2 = L12_2()
  L11_2, L12_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L2_2.data = L3_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ctpr"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L1_2 = GetEntityRotation
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "clipboard"
  L4_2 = ""
  L5_2 = roundBL
  L6_2 = L0_2.x
  L7_2 = 3
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = ","
  L7_2 = roundBL
  L8_2 = L0_2.y
  L9_2 = 3
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = ","
  L9_2 = roundBL
  L10_2 = L0_2.z
  L10_2 = L10_2 - 1.0
  L11_2 = 3
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = ","
  L11_2 = roundBL
  L12_2 = L1_2.x
  L13_2 = 3
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = ","
  L13_2 = roundBL
  L14_2 = L1_2.y
  L15_2 = 3
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = ","
  L15_2 = roundBL
  L16_2 = L1_2.z
  L17_2 = 3
  L15_2 = L15_2(L16_2, L17_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L3_2.data = L4_2
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  L3_2 = 10
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end
roundBL = L0_1
