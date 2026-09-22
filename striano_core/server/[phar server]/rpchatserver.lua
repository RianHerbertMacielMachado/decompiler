local L0_1, L1_1, L2_1, L3_1
L0_1 = AddEventHandler
L1_1 = "chatMessage"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A2_2
  L5_2 = 1
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = "/"
  L6_2, L7_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if "/" ~= L3_2 then
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = A2_2
    L5_2 = 1
    L6_2 = string
    L6_2 = L6_2.len
    L7_2 = "/"
    L6_2, L7_2 = L6_2(L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if "." ~= L3_2 then
      L3_2 = string
      L3_2 = L3_2.sub
      L4_2 = A2_2
      L5_2 = 1
      L6_2 = string
      L6_2 = L6_2.len
      L7_2 = "/"
      L6_2, L7_2 = L6_2(L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if "-" ~= L3_2 then
        L3_2 = string
        L3_2 = L3_2.sub
        L4_2 = A2_2
        L5_2 = 1
        L6_2 = string
        L6_2 = L6_2.len
        L7_2 = "/"
        L6_2, L7_2 = L6_2(L7_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        if "," ~= L3_2 then
          L3_2 = TriggerClientEvent
          L4_2 = "esx_rpchat:avviso"
          L5_2 = A0_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = CancelEvent
  L3_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "%^%d"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[%c]"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "[^%w%s%._%-]"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "%s+"
  L4_2 = " "
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%s+"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%s+$"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = #A0_2
  if L1_2 > 24 then
    L2_2 = A0_2
    L1_2 = A0_2.sub
    L3_2 = 1
    L4_2 = 24
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
  end
  if "" == A0_2 then
    A0_2 = "Player"
  end
  return A0_2
end
NormalizePlayerName = L0_1
L0_1 = AddEventHandler
L1_1 = "chatMessage"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A2_2
  L5_2 = 1
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = "/"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  if "/" ~= L3_2 then
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = A2_2
    L5_2 = 1
    L6_2 = string
    L6_2 = L6_2.len
    L7_2 = "/"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if "." == L3_2 then
      L3_2 = NormalizePlayerName
      L4_2 = GetPlayerName
      L5_2 = A0_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L4_2 = GetPlayerPed
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = GetEntityCoords
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L6_2 = TriggerClientEvent
      L7_2 = "chat:AzioneVicino"
      L8_2 = -1
      L9_2 = A0_2
      L10_2 = A2_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = TriggerClientEvent
      L7_2 = "3dme:shareDisplayVicino"
      L8_2 = -1
      L9_2 = "..."
      L10_2 = A0_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = GetPlayerPed
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      if not L6_2 or 0 == L6_2 then
        return
      end
      L7_2 = GetEntityCoords
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = 15.0
      L9_2 = pairs
      L10_2 = GetPlayers
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2()
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = GetPlayerPed
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        if L15_2 and 0 ~= L15_2 then
          L16_2 = GetEntityCoords
          L17_2 = L15_2
          L16_2 = L16_2(L17_2)
          L17_2 = L7_2 - L16_2
          L17_2 = #L17_2
          if L8_2 >= L17_2 then
            L18_2 = GetPlayerRoutingBucket
            L19_2 = A0_2
            L18_2 = L18_2(L19_2)
            L19_2 = GetPlayerRoutingBucket
            L20_2 = L14_2
            L19_2 = L19_2(L20_2)
            if L18_2 == L19_2 then
              L18_2 = TriggerClientEvent
              L19_2 = "chat:addMessage"
              L20_2 = L14_2
              L21_2 = {}
              L22_2 = {}
              L23_2 = L3_2
              L24_2 = " (L) "
              L25_2 = A2_2
              L23_2 = L23_2 .. L24_2 .. L25_2
              L22_2[1] = L23_2
              L21_2.args = L22_2
              L18_2(L19_2, L20_2, L21_2)
              L18_2 = TriggerClientEvent
              L19_2 = "avviaSuono"
              L20_2 = L14_2
              L21_2 = -1
              L22_2 = "WEAPON_ATTACHMENT_EQUIP"
              L23_2 = "HUD_AMMO_SHOP_SOUNDSET"
              L24_2 = 1
              L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            end
          end
        end
      end
  end
  else
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = A2_2
    L5_2 = 1
    L6_2 = string
    L6_2 = L6_2.len
    L7_2 = "/"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if "/" ~= L3_2 then
      L3_2 = string
      L3_2 = L3_2.sub
      L4_2 = A2_2
      L5_2 = 1
      L6_2 = string
      L6_2 = L6_2.len
      L7_2 = "/"
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      if "-" == L3_2 then
        L3_2 = A2_2
        L4_2 = L3_2
        L5_2 = TriggerClientEvent
        L6_2 = "3dme:shareDisplayBasso"
        L7_2 = -1
        L8_2 = L4_2
        L9_2 = A0_2
        L10_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    else
      L3_2 = string
      L3_2 = L3_2.sub
      L4_2 = A2_2
      L5_2 = 1
      L6_2 = string
      L6_2 = L6_2.len
      L7_2 = "/"
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      if "/" ~= L3_2 then
        L3_2 = string
        L3_2 = L3_2.sub
        L4_2 = A2_2
        L5_2 = 1
        L6_2 = string
        L6_2 = L6_2.len
        L7_2 = "/"
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        if "," == L3_2 then
          L4_2 = A2_2
          L3_2 = A2_2.sub
          L5_2 = 2
          L3_2 = L3_2(L4_2, L5_2)
          L4_2 = #L3_2
          if 0 == L4_2 then
            return
          end
          L4_2 = NormalizePlayerName
          L5_2 = GetPlayerName
          L6_2 = A0_2
          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L5_2(L6_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L5_2 = TriggerClientEvent
          L6_2 = "chat:addMessage"
          L7_2 = -1
          L8_2 = {}
          L9_2 = {}
          L10_2 = L4_2
          L11_2 = " (G) "
          L12_2 = A2_2
          L10_2 = L10_2 .. L11_2 .. L12_2
          L9_2[1] = L10_2
          L8_2.args = L9_2
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = TriggerClientEvent
          L6_2 = "avviaSuono"
          L7_2 = -1
          L8_2 = -1
          L9_2 = "OTHER_TEXT"
          L10_2 = "HUD_AWARDS"
          L11_2 = 1
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dotred"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerClientEvent
  L2_2 = "3dme:shareDisplay"
  L3_2 = -1
  L4_2 = "~r~."
  L5_2 = A0_2
  L6_2 = true
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dotyellow"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerClientEvent
  L2_2 = "3dme:shareDisplay"
  L3_2 = -1
  L4_2 = "~q~."
  L5_2 = A0_2
  L6_2 = true
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "dotblu"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerClientEvent
  L2_2 = "3dme:shareDisplay"
  L3_2 = -1
  L4_2 = "~b~."
  L5_2 = A0_2
  L6_2 = true
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "a"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L2_2
  if L3_2 < 1 then
    return
  end
  L3_2 = GetPlayers
  L3_2 = L3_2()
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    if nil == L8_2 then
      return
    end
    L9_2 = exports
    L9_2 = L9_2.striano_core
    L10_2 = L9_2
    L9_2 = L9_2.IsAdmin
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = NormalizePlayerName
      L10_2 = GetPlayerName
      L11_2 = A0_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = TriggerClientEvent
      L11_2 = "chat:addMessage"
      L12_2 = L8_2
      L13_2 = {}
      L13_2.type = "admin"
      L14_2 = {}
      L15_2 = L9_2
      L16_2 = A0_2
      L17_2 = "Admin \226\156\166 "
      L18_2 = L2_2
      L17_2 = L17_2 .. L18_2
      L14_2[1] = L15_2
      L14_2[2] = L16_2
      L14_2[3] = L17_2
      L13_2.args = L14_2
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = TriggerClientEvent
      L11_2 = "avviaSuono"
      L12_2 = L8_2
      L13_2 = -1
      L14_2 = "Out_Of_Area"
      L15_2 = "DLC_Lowrider_Relay_Race_Sounds"
      L16_2 = 0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "-"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = TriggerClientEvent
  L4_2 = "3dme:shareDisplayBasso"
  L5_2 = -1
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "ticket"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L2_2
  if 0 == L3_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "esx_rpchat:addticket"
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = NormalizePlayerName
  L9_2 = GetPlayerName
  L10_2 = A0_2
  L9_2, L10_2 = L9_2(L10_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = TriggerClientEvent
  L4_2 = "esx:showNotification"
  L5_2 = A0_2
  L6_2 = "Ticket sent."
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "as"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = StaffMsg
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "n"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = StaffMsg
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "staff"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = StaffMsg
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L2_2
  if L3_2 < 1 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "chat:addMessage"
  L5_2 = -1
  L6_2 = {}
  L6_2.type = "staff"
  L7_2 = {}
  L8_2 = NormalizePlayerName
  L9_2 = GetPlayerName
  L10_2 = A0_2
  L9_2, L10_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = " Staff \226\156\166 "
  L10_2 = L2_2
  L9_2 = L9_2 .. L10_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L6_2.args = L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "avviaSuono"
  L5_2 = -1
  L6_2 = -1
  L7_2 = "Bomb_Disarmed"
  L8_2 = "GTAO_Speed_Convoy_Soundset"
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
StaffMsg = L0_1
L0_1 = RegisterCommand
L1_1 = "lore"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L2_2
  if L3_2 < 1 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = "chat:addMessage"
  L5_2 = -1
  L6_2 = {}
  L6_2.type = "lore"
  L7_2 = {}
  L8_2 = "Lore \226\156\166 "
  L9_2 = L2_2
  L8_2 = L8_2 .. L9_2
  L7_2[1] = L8_2
  L6_2.args = L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "avviaSuono"
  L5_2 = -1
  L6_2 = -1
  L7_2 = "Bomb_Disarmed"
  L8_2 = "GTAO_Speed_Convoy_Soundset"
  L9_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "lore2"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L2_2
  if L3_2 < 1 then
    return
  end
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = 100.0
  L6_2 = pairs
  L7_2 = GetPlayers
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetPlayerPed
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 and 0 ~= L12_2 then
      L13_2 = GetEntityCoords
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      L14_2 = L4_2 - L13_2
      L14_2 = #L14_2
      if L5_2 >= L14_2 then
        L15_2 = TriggerClientEvent
        L16_2 = "chat:addMessage"
        L17_2 = L11_2
        L18_2 = {}
        L18_2.type = "lore"
        L19_2 = {}
        L20_2 = "Lore (local) \226\156\166 "
        L21_2 = L2_2
        L20_2 = L20_2 .. L21_2
        L19_2[1] = L20_2
        L18_2.args = L19_2
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = TriggerClientEvent
        L16_2 = "avviaSuono"
        L17_2 = L11_2
        L18_2 = -1
        L19_2 = "Bomb_Disarmed"
        L20_2 = "GTAO_Speed_Convoy_Soundset"
        L21_2 = 0
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "rf"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L3_2 = exports
  L3_2 = L3_2.striano_inventory
  L4_2 = L3_2
  L3_2 = L3_2.HasItem
  L5_2 = L2_2
  L6_2 = "player"
  L7_2 = "radio"
  L8_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  if not L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = free
  if 0 ~= L4_2 then
    L4_2 = free
    if "0" ~= L4_2 then
      goto lbl_38
    end
  end
  L4_2 = Player
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L5_2 = L4_2
  L4_2 = L4_2.set
  L6_2 = "RadioChat"
  L7_2 = nil
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  do return end
  ::lbl_38::
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  if not (L3_2 < 1) then
    L4_2 = 999
    if not (L3_2 > L4_2) then
      goto lbl_49
    end
  end
  do return end
  ::lbl_49::
  L4_2 = Player
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L5_2 = L4_2
  L4_2 = L4_2.set
  L6_2 = "RadioChat"
  L7_2 = L3_2
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "r"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = Player
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.RadioChat
  if 0 == L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  if nil == L2_2 then
    return
  end
  L3_2 = #L2_2
  if L3_2 < 1 then
    return
  end
  L3_2 = NormalizePlayerName
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L4_2 = string
  L4_2 = L4_2.sub
  L5_2 = L3_2
  L6_2 = 1
  L7_2 = 4
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = "-"
  L6_2 = A0_2
  L7_2 = ": "
  L8_2 = L2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = A0_2
  L6_2 = Player
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L6_2 = L6_2.RadioChat
  if not L6_2 or "" == L6_2 then
    return
  end
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = Player
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      L14_2 = L14_2.state
      L14_2 = L14_2.RadioChat
      if L14_2 == L6_2 then
        L15_2 = TriggerClientEvent
        L16_2 = "chat:addMessage"
        L17_2 = L13_2
        L18_2 = {}
        L18_2.type = "radio"
        L19_2 = {}
        L20_2 = L6_2
        L21_2 = "Radio \226\156\166 "
        L22_2 = L4_2
        L21_2 = L21_2 .. L22_2
        L19_2[1] = L20_2
        L19_2[2] = L21_2
        L18_2.args = L19_2
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = TriggerClientEvent
        L16_2 = "avviaSuono"
        L17_2 = L13_2
        L18_2 = -1
        L19_2 = "CONFIRM_BEEP"
        L20_2 = "HUD_MINI_GAME_SOUNDSET"
        L21_2 = 1
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L15_2 = TriggerClientEvent
        L16_2 = "anim:cmd"
        L17_2 = L13_2
        L18_2 = "e radio"
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = SetTimeout
        L16_2 = 550
        function L17_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = TriggerClientEvent
          L1_3 = "anim:cmd"
          L2_3 = L13_2
          L3_3 = "e cc"
          L0_3(L1_3, L2_3, L3_3)
        end
        L15_2(L16_2, L17_2)
      end
    end
  end
end
L3_1 = false
L0_1(L1_1, L2_1, L3_1)
L0_1 = RegisterCommand
L1_1 = "pm"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = A1_2
  L5_2 = " "
  L6_2 = 2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if nil ~= L3_2 then
    L4_2 = #L3_2
    if not (L4_2 < 1) then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  if nil == L2_2 or 0 == L2_2 then
    L4_2 = false
    return L4_2
  end
  if "" == L3_2 then
  else
    L4_2 = NormalizePlayerName
    L5_2 = GetPlayerName
    L6_2 = tonumber
    L7_2 = L2_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if nil ~= L4_2 then
      L4_2 = GetPlayerPing
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if 0 == L4_2 then
      elseif nil == L2_2 then
      else
        L4_2 = TriggerClientEvent
        L5_2 = "kyk_privatemessages:lastSender"
        L6_2 = L2_2
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L4_2 = "PM "
        L5_2 = NormalizePlayerName
        L6_2 = GetPlayerName
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2 = "["
        L7_2 = tonumber
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        L8_2 = "]: "
        L9_2 = L3_2
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L5_2 = "PM x "
        L6_2 = NormalizePlayerName
        L7_2 = GetPlayerName
        L8_2 = tonumber
        L9_2 = L2_2
        L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L7_2 = "["
        L8_2 = tonumber
        L9_2 = L2_2
        L8_2 = L8_2(L9_2)
        L9_2 = "]: "
        L10_2 = L3_2
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
        L6_2 = TriggerClientEvent
        L7_2 = "chat:addMessage"
        L8_2 = L2_2
        L9_2 = {}
        L9_2.type = "pm"
        L10_2 = {}
        L11_2 = L4_2
        L10_2[1] = L11_2
        L9_2.args = L10_2
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = TriggerClientEvent
        L7_2 = "avviaSuono"
        L8_2 = L2_2
        L9_2 = -1
        L10_2 = "Pin_Bad"
        L11_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        L12_2 = 1
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2 = TriggerClientEvent
        L7_2 = "chat:addMessage"
        L8_2 = A0_2
        L9_2 = {}
        L9_2.type = "pm"
        L10_2 = {}
        L11_2 = L5_2
        L10_2[1] = L11_2
        L9_2.args = L10_2
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = TriggerClientEvent
        L7_2 = "avviaSuono"
        L8_2 = A0_2
        L9_2 = -1
        L10_2 = "Pin_Bad"
        L11_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        L12_2 = 1
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end
L3_1 = false
L0_1(L1_1, L2_1, L3_1)
L0_1 = RegisterNetEvent
L1_1 = "kyk_privatemessages:reply"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "kyk_privatemessages:reply"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "kyk_privatemessages:lastSender"
  L5_2 = A0_2
  L6_2 = tonumber
  L7_2 = source
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.IsAdmin
  L5_2 = source
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = "~q~PM (r)"
    L7_2 = NormalizePlayerName
    L8_2 = GetPlayerName
    L9_2 = tonumber
    L10_2 = source
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = "["
    L9_2 = tonumber
    L10_2 = source
    L9_2 = L9_2(L10_2)
    L10_2 = "]: ~w~"
    L11_2 = L2_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = TriggerClientEvent
    L4_2 = "esx:showNotification"
    L5_2 = A0_2
    L6_2 = "~p~PM (r) "
    L7_2 = NormalizePlayerName
    L8_2 = GetPlayerName
    L9_2 = tonumber
    L10_2 = source
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = "["
    L9_2 = tonumber
    L10_2 = source
    L9_2 = L9_2(L10_2)
    L10_2 = "]: ~w~ "
    L11_2 = L2_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "discord:ticket"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "discord:ticket"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  if nil == L1_2 then
    return
  end
  L2_2 = GetPlayers
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if nil == L7_2 then
      return
    end
    L8_2 = exports
    L8_2 = L8_2.striano_core
    L9_2 = L8_2
    L8_2 = L8_2.IsAdmin
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = NormalizePlayerName
      L9_2 = GetPlayerName
      L10_2 = source
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = TriggerClientEvent
      L10_2 = "chat:addMessage"
      L11_2 = L7_2
      L12_2 = {}
      L13_2 = {}
      L14_2 = mexInGame
      L13_2[1] = L14_2
      L12_2.args = L13_2
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = TriggerClientEvent
      L10_2 = "avviaSuono"
      L11_2 = L7_2
      L12_2 = -1
      L13_2 = "Player_Enter_Line"
      L14_2 = "GTAO_FM_Cross_The_Line_Soundset"
      L15_2 = 0
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L0_1(L1_1, L2_1)
