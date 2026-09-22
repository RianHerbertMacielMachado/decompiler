local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = {}
L2_1 = vector3
L3_1 = 3904.7316894531
L4_1 = 7591.1064453125
L5_1 = 4.075047492981
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.pos = L2_1
L2_1 = vector3
L3_1 = -2.5000016689301
L4_1 = 1.2500038146973
L5_1 = -83.748977661133
L2_1 = L2_1(L3_1, L4_1, L5_1)
L1_1.rot = L2_1
L2_1 = {}
L3_1 = vector3
L4_1 = 4219.4638671875
L5_1 = 5716.7587890625
L6_1 = 14.497800827026
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.pos = L3_1
L3_1 = vector3
L4_1 = -6.7499923706055
L5_1 = 4.9999995231628
L6_1 = 5.3564679802
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.rot = L3_1
L3_1 = {}
L4_1 = vector3
L5_1 = 4352.4921875
L6_1 = 5813.6748046875
L7_1 = 8.8576831817627
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.pos = L4_1
L4_1 = vector3
L5_1 = -3.4999997615814
L6_1 = -3.7499837875366
L7_1 = 65.249404907227
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.rot = L4_1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
lootChests = L0_1
L0_1 = RegisterCommand
L1_1 = "giveitem"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2[2]
  L5_2 = tonumber
  L6_2 = A1_2[3]
  L5_2 = L5_2(L6_2)
  if nil == L5_2 or L5_2 <= 0 then
    L5_2 = 1
  end
  if not L3_2 or not L4_2 then
    return
  end
  L6_2 = string
  L6_2 = L6_2.lower
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if "bag" == L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "anim:cmd"
    L8_2 = L2_2
    L9_2 = "prova You cannot give \"bag\". Use \"empty_bag\"."
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = GetPlayerName
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = TriggerClientEvent
    L7_2 = "anim:cmd"
    L8_2 = L2_2
    L9_2 = "prova Player not valid."
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = TriggerEvent
  L7_2 = "inv3d:giveItem"
  L8_2 = L3_2
  L9_2 = "player"
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "lootpoints:collect"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = Config
  L2_2 = L2_2.LootPoints
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.coords
  L5_2 = L4_2 - L5_2
  L5_2 = #L5_2
  if L5_2 > 2.0 then
    return
  end
  L6_2 = L2_2.items
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = #L6_2
  if L7_2 <= 0 then
    return
  end
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = tostring
    L12_2 = L6_2[L10_2]
    L11_2 = L11_2(L12_2)
    if "" ~= L11_2 then
      L12_2 = TriggerEvent
      L13_2 = "inv3d:giveItem"
      L14_2 = L1_2
      L15_2 = "player"
      L16_2 = L11_2
      L17_2 = 1
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "inv3d:removeItemExactByName"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = source
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = "player"
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = tostring
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  if "" == A1_2 or A2_2 <= 0 then
    return
  end
  L4_2 = getPlayerKey
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ensureInv
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L7_2 = L5_2.items
  if not L7_2 then
    L7_2 = {}
  end
  L7_2 = #L7_2
  L8_2 = 1
  L9_2 = -1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L5_2.items
    L11_2 = L11_2[L10_2]
    if L11_2 then
      L12_2 = L11_2.item
      if L12_2 == A1_2 then
        L12_2 = math
        L12_2 = L12_2.floor
        L13_2 = tonumber
        L14_2 = L11_2.count
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = 1
        end
        L12_2 = L12_2(L13_2)
        if L6_2 < L12_2 then
          L13_2 = L12_2 - L6_2
          L11_2.count = L13_2
          L6_2 = 0
          break
        else
          L6_2 = L6_2 - L12_2
          L13_2 = L5_2.layout
          if L13_2 then
            L13_2 = L11_2.uid
            if L13_2 then
              L13_2 = L5_2.layout
              L14_2 = L11_2.uid
              L13_2[L14_2] = nil
            end
          end
          L13_2 = table
          L13_2 = L13_2.remove
          L14_2 = L5_2.items
          L15_2 = L10_2
          L13_2(L14_2, L15_2)
          if L6_2 <= 0 then
            break
          end
        end
      end
    end
  end
  if L6_2 == A2_2 then
    return
  end
  L7_2 = bumpRevDB
  L8_2 = L4_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = TriggerClientEvent
  L8_2 = "inv3d:reload"
  L9_2 = L3_2
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = TriggerClientEvent
  L8_2 = "inv3d:forceSyncNow"
  L9_2 = L3_2
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1(L1_1, L2_1)
