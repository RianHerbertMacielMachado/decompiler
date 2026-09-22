local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.license
  if not L1_2 then
    L1_2 = A0_2.license2
    if not L1_2 then
      L1_2 = A0_2.fivem
      if not L1_2 then
        L1_2 = A0_2.discord
        if not L1_2 then
          L1_2 = A0_2.steam
        end
      end
    end
  end
  return L1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 or A0_2 <= 0 then
    L1_2 = {}
    L1_2.license2 = nil
    L1_2.license = nil
    L1_2.fivem = nil
    L1_2.discord = nil
    L1_2.steam = nil
    L1_2.ip = nil
    return L1_2
  end
  L1_2 = GetPlayerName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
    L1_2.license2 = nil
    L1_2.license = nil
    L1_2.fivem = nil
    L1_2.discord = nil
    L1_2.steam = nil
    L1_2.ip = nil
    return L1_2
  end
  L1_2 = {}
  L1_2.license2 = nil
  L1_2.license = nil
  L1_2.fivem = nil
  L1_2.discord = nil
  L1_2.steam = nil
  L1_2.ip = nil
  L2_2 = GetNumPlayerIdentifiers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 or L2_2 <= 0 then
    return L1_2
  end
  L3_2 = ipairs
  L4_2 = GetPlayerIdentifiers
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.sub
    L11_2 = 1
    L12_2 = 9
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if "license2:" == L9_2 then
      L1_2.license2 = L8_2
    else
      L10_2 = L8_2
      L9_2 = L8_2.sub
      L11_2 = 1
      L12_2 = 8
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if "license:" == L9_2 then
        L1_2.license = L8_2
      else
        L10_2 = L8_2
        L9_2 = L8_2.sub
        L11_2 = 1
        L12_2 = 6
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if "fivem:" == L9_2 then
          L1_2.fivem = L8_2
        else
          L10_2 = L8_2
          L9_2 = L8_2.sub
          L11_2 = 1
          L12_2 = 8
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          if "discord:" == L9_2 then
            L1_2.discord = L8_2
          else
            L10_2 = L8_2
            L9_2 = L8_2.sub
            L11_2 = 1
            L12_2 = 6
            L9_2 = L9_2(L10_2, L11_2, L12_2)
            if "steam:" == L9_2 then
              L1_2.steam = L8_2
            else
              L10_2 = L8_2
              L9_2 = L8_2.sub
              L11_2 = 1
              L12_2 = 3
              L9_2 = L9_2(L10_2, L11_2, L12_2)
              if "ip:" == L9_2 then
                L1_2.ip = L8_2
              end
            end
          end
        end
      end
    end
  end
  return L1_2
end
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1
  L4_2 = {}
  L4_2.primary = A2_2
  L4_2.ids = A1_2
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L4_2.at = L5_2
  L3_2[A0_2] = L4_2
end
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L5_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 or A0_2 <= 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L4_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.primary
    if L2_2 then
      L2_2 = L1_2.primary
      return L2_2
    end
  end
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L2_2
  return L3_2(L4_2)
end
GetPrimaryIdentifier = L6_1
L6_1 = RegisterServerEvent
L7_1 = "anim:playAnim"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "anim:playAnim"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "anim:playAnim"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterServerEvent
L7_1 = "anim:faicmd"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "anim:faicmd"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "anim:cmd"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L6_1(L7_1, L8_1)
L6_1 = "walkstyles.json"
L7_1 = {}
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L6_1
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 and "" ~= L0_2 then
    L1_2 = pcall
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L0_2
    L1_2, L2_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L3_2 = type
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        L7_1 = L2_2
      end
    end
  end
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SaveResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L6_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L7_1
  L5_2 = {}
  L5_2.indent = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetPrimaryIdentifier
  if L1_2 then
    L1_2 = GetPrimaryIdentifier
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return L1_2
    end
  end
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.find
    L9_2 = "license:"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L6_2
    end
  end
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  return L1_2
end
L11_1 = AddEventHandler
L12_1 = "onResourceStart"
function L13_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L8_1
  L1_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "getBackWalkStyle"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "getBackWalkStyle"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = L10_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L7_1
  L2_2 = L2_2[L1_2]
  L3_2 = TriggerClientEvent
  L4_2 = "getBackWalkStyle"
  L5_2 = L0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "saveWalkStyle"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "saveWalkStyle"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L10_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if "" == A0_2 then
    L3_2 = L7_1
    L3_2[L2_2] = nil
  else
    L3_2 = L7_1
    L3_2[L2_2] = A0_2
  end
  L3_2 = L9_1
  L3_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "removeWalkStyle"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "removeWalkStyle"
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = L10_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L7_1
  L2_2[L1_2] = nil
  L2_2 = L9_1
  L2_2()
end
L11_1(L12_1, L13_1)
