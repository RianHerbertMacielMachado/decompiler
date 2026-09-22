local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "flyman:pos"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "flyman:pos"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L6_2 = source
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L12_2 = L13_2
    if L12_2 ~= L6_2 then
      L13_2 = TriggerClientEvent
      L14_2 = "flyman:pos"
      L15_2 = L12_2
      L16_2 = L6_2
      L17_2 = A0_2
      L18_2 = A1_2
      L19_2 = A2_2
      L20_2 = A5_2
      L21_2 = A4_2
      L22_2 = A5_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "flyman:stop"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "flyman:stop"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    if L6_2 ~= L0_2 then
      L7_2 = TriggerClientEvent
      L8_2 = "flyman:stop"
      L9_2 = L6_2
      L10_2 = L0_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "flyman:anim:start"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "flyman:anim:start"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = source
  L4_2 = TriggerClientEvent
  L5_2 = "flyman:anim:play"
  L6_2 = -1
  L7_2 = L3_2
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
