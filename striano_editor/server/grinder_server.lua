local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = 80.0
L2_1 = L1_1 * L1_1
L3_1 = RegisterNetEvent
L4_1 = "striano_ik:grabStart"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = source
  L4_2 = L0_1
  L5_2 = {}
  L5_2.netId = A0_2
  L5_2.leftGrip = A1_2
  L5_2.rightGrip = A2_2
  L4_2[L3_2] = L5_2
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "striano_ik:grabSync"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = source
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    return
  end
  L5_2 = GetPlayerPed
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L5_2 <= 0 then
    return
  end
  L6_2 = GetPlayerRoutingBucket
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityCoords
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = ipairs
  L9_2 = GetPlayers
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L9_2()
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = tonumber
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L13_2 = L14_2
    if L13_2 ~= L3_2 then
      L14_2 = GetPlayerRoutingBucket
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 == L6_2 then
        L14_2 = GetPlayerPed
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        if L14_2 > 0 then
          L15_2 = GetEntityCoords
          L16_2 = L14_2
          L15_2 = L15_2(L16_2)
          L16_2 = L7_2.x
          L17_2 = L15_2.x
          L16_2 = L16_2 - L17_2
          L17_2 = L7_2.y
          L18_2 = L15_2.y
          L17_2 = L17_2 - L18_2
          L18_2 = L7_2.z
          L19_2 = L15_2.z
          L18_2 = L18_2 - L19_2
          L19_2 = L16_2 * L16_2
          L20_2 = L17_2 * L17_2
          L19_2 = L19_2 + L20_2
          L20_2 = L18_2 * L18_2
          L19_2 = L19_2 + L20_2
          L20_2 = L2_1
          if L19_2 <= L20_2 then
            L19_2 = TriggerClientEvent
            L20_2 = "striano_ik:grabSync"
            L21_2 = L13_2
            L22_2 = L3_2
            L23_2 = A0_2
            L24_2 = A1_2
            L25_2 = A2_2
            L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          end
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "striano_ik:grabStop"
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2[L0_2] = nil
  L1_2 = GetPlayerRoutingBucket
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerPed
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if L2_2 <= 0 then
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = GetPlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
    if L9_2 ~= L0_2 then
      L10_2 = GetPlayerRoutingBucket
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 == L1_2 then
        L10_2 = GetPlayerPed
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 > 0 then
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L12_2 = L3_2.x
          L13_2 = L11_2.x
          L12_2 = L12_2 - L13_2
          L13_2 = L3_2.y
          L14_2 = L11_2.y
          L13_2 = L13_2 - L14_2
          L14_2 = L3_2.z
          L15_2 = L11_2.z
          L14_2 = L14_2 - L15_2
          L15_2 = L12_2 * L12_2
          L16_2 = L13_2 * L13_2
          L15_2 = L15_2 + L16_2
          L16_2 = L14_2 * L14_2
          L15_2 = L15_2 + L16_2
          L16_2 = L2_1
          if L15_2 <= L16_2 then
            L15_2 = TriggerClientEvent
            L16_2 = "striano_ik:grabStop"
            L17_2 = L9_2
            L18_2 = L0_2
            L15_2(L16_2, L17_2, L18_2)
          end
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L0_1
    L1_2[L0_2] = nil
    L1_2 = TriggerClientEvent
    L2_2 = "striano_ik:grabStop"
    L3_2 = -1
    L4_2 = L0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L3_1(L4_1, L5_1)
