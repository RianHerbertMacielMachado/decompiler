local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = 4
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    return L1_2(L2_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2 - 0.5
    return L1_2(L2_2)
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.2f"
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
L4_1 = false
L5_1 = RegisterCommand
L6_1 = "hide"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L4_1
  if not L2_2 then
    L2_2 = true
    L4_1 = L2_2
    L2_2 = SetEntityVisible
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = NetworkSetEntityInvisibleToNetwork
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = false
    L4_1 = L2_2
    L2_2 = SetEntityAlpha
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = 255
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVisible
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = NetworkSetEntityInvisibleToNetwork
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L5_1(L6_1, L7_1)
