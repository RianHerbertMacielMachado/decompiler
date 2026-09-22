local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = SetMapName
L1_1 = "Kharura"
L0_1(L1_1)
L0_1 = SetGameType
L1_1 = "strianodev.com"
L0_1(L1_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = vector3
L6_1 = 3978.262
L7_1 = 7482.712
L8_1 = 0.932
L5_1 = L5_1(L6_1, L7_1, L8_1)
L6_1 = {}
L6_1.x = -629.232
L6_1.y = -236.54
L6_1.z = 49.822
L6_1.heading = 0.0
function L7_1(A0_2)
  local L1_2
  L1_2 = L3_1
  L1_2[A0_2] = nil
end
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = GetPlayerName
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = nil ~= L1_2
  end
  return L1_2
end
function L9_1(A0_2)
  local L1_2, L2_2
  if not A0_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = UserData
  L1_2 = L1_2.Get
  L2_2 = A0_2
  return L1_2(L2_2)
end
function L10_1(A0_2)
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
function L11_1(A0_2)
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
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L2_1
  L4_2 = {}
  L4_2.primary = A2_2
  L4_2.ids = A1_2
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L4_2.at = L5_2
  L3_2[A0_2] = L4_2
end
function L13_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L14_1(A0_2)
  local L1_2
  L1_2 = L2_1
  L1_2[A0_2] = nil
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 or A0_2 <= 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L13_1
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
  L2_2 = L11_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L10_1
  L4_2 = L2_2
  return L3_2(L4_2)
end
GetPrimaryIdentifier = L15_1
L15_1 = exports
L16_1 = "GetPrimaryIdentifier"
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPrimaryIdentifier
  L2_2 = A0_2
  return L1_2(L2_2)
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = L13_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.ids
    if L2_2 then
      L2_2 = L1_2.ids
      return L2_2
    end
  end
  L2_2 = GetPlayerName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
    L2_2.license2 = nil
    L2_2.license = nil
    L2_2.fivem = nil
    L2_2.discord = nil
    L2_2.steam = nil
    L2_2.ip = nil
    return L2_2
  end
  L2_2 = L11_1
  L3_2 = A0_2
  return L2_2(L3_2)
end
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L8_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L7_1
    L3_2 = A1_2
    L2_2(L3_2)
    return
  end
  L2_2 = createESXPlayer
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L7_1
    L4_2 = A1_2
    L3_2(L4_2)
    return
  end
  L3_2 = loadCorePlayer
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
CreaNuovoPersonaggio = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L8_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = print
    L3_2 = "^1[CREATE USER STOP]^7 PLAYER NOT ALIVE"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  if not A0_2 or "" == A0_2 then
    L2_2 = print
    L3_2 = "^1[CREATE USER STOP]^7 IDENTIFIER INVALIDO"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = UserData
  L2_2 = L2_2.Create
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = print
    L5_2 = "^1[CREATE USER STOP]^7 UserData.Create fallito"
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L2_2.firstname = "___"
  L2_2.sex = "M"
  L4_2 = {}
  L4_2.x = 3041.718
  L4_2.y = 7511.073
  L4_2.z = 10.637
  L4_2.heading = 0.0
  L2_2.position = L4_2
  L4_2 = UserData
  L4_2 = L4_2.Save
  L4_2 = L4_2()
  if not L4_2 then
    L5_2 = print
    L6_2 = "^1[USER]^7 Errore salvataggio nuovo player: %s"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = A0_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = false
    return L5_2
  end
  L5_2 = true
  return L5_2
end
createESXPlayer = L16_1
function L16_1(A0_2)
  local L1_2, L2_2
  if not A0_2 or "" == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = UserData
  L1_2 = L1_2.Exists
  L2_2 = A0_2
  return L1_2(L2_2)
end
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = L15_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = print
    L2_2 = "^1playerId not exist!^7"
    L1_2(L2_2)
    return
  end
  L1_2 = GetPrimaryIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or "" == L1_2 then
    L2_2 = print
    L3_2 = "^1Identifier NOT FOUND FOR ID %s^7"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L2_2 = L1_1
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = "ID_"
    L4_2 = tostring
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
  end
  L2_2[A0_2] = L3_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = L3_1
  L2_2[A0_2] = true
  L2_2 = L8_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L7_1
    L3_2 = A0_2
    L2_2(L3_2)
    return
  end
  L2_2 = L17_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.steam
    if L3_2 then
      goto lbl_62
    end
  end
  L3_2 = nil
  ::lbl_62::
  L4_2 = L0_1
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L4_2[A0_2] = L5_2
  L4_2 = UserData
  L4_2 = L4_2.Reload
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = print
    L5_2 = "^1[JOIN]^7 Impossibile rileggere users.json per %s"
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = L1_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = L7_1
    L5_2 = A0_2
    L4_2(L5_2)
    return
  end
  L4_2 = L16_1
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = UserData
    L4_2 = L4_2.GetValue
    L5_2 = L1_2
    L6_2 = "firstname"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = "___" == L4_2
    L6_2 = loadCorePlayer
    L7_2 = L1_2
    L8_2 = A0_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L4_2 = CreaNuovoPersonaggio
    L5_2 = L1_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end
onPlayerJoined = L18_1
L18_1 = AddEventHandler
L19_1 = "chatMessage"
function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 <= 0 then
    return
  end
  L4_2 = A2_2
  L3_2 = A2_2.sub
  L5_2 = 1
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if "/" ~= L3_2 then
    return
  end
  L3_2 = CancelEvent
  L3_2()
  L4_2 = A2_2
  L3_2 = A2_2.match
  L5_2 = "^/(%S+)"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "doPrint"
    L6_2 = A0_2
    L7_2 = "/"
    L8_2 = L3_2
    L9_2 = " cmd not exist."
    L7_2 = L7_2 .. L8_2 .. L9_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L18_1(L19_1, L20_1)
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = string
  L2_2 = L2_2.rep
  L3_2 = " "
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "{\r\n"
  L2_2 = L2_2 .. L3_2
  A1_2 = A1_2 + 2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2
    L10_2 = string
    L10_2 = L10_2.rep
    L11_2 = " "
    L12_2 = A1_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      L9_2 = L2_2
      L10_2 = "["
      L11_2 = L7_2
      L12_2 = "] = "
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L2_2 = L9_2
    else
      L9_2 = type
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if "string" == L9_2 then
        L9_2 = L2_2
        L10_2 = L7_2
        L11_2 = "= "
        L9_2 = L9_2 .. L10_2 .. L11_2
        L2_2 = L9_2
      end
    end
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "number" == L9_2 then
      L9_2 = L2_2
      L10_2 = L8_2
      L11_2 = ",\r\n"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L2_2 = L9_2
    else
      L9_2 = type
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if "string" == L9_2 then
        L9_2 = L2_2
        L10_2 = "\""
        L11_2 = L8_2
        L12_2 = "\",\r\n"
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
        L2_2 = L9_2
      else
        L9_2 = type
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if "table" == L9_2 then
          L9_2 = L2_2
          L10_2 = tprint
          L11_2 = L8_2
          L12_2 = A1_2 + 2
          L10_2 = L10_2(L11_2, L12_2)
          L11_2 = ",\r\n"
          L9_2 = L9_2 .. L10_2 .. L11_2
          L2_2 = L9_2
        else
          L9_2 = L2_2
          L10_2 = "\""
          L11_2 = tostring
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L12_2 = "\",\r\n"
          L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
          L2_2 = L9_2
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = string
  L4_2 = L4_2.rep
  L5_2 = " "
  L6_2 = A1_2 - 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "}"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L3_2
  return L2_2
end
tprint = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2 = L1_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 / 3600
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 % 3600
  L3_2 = L3_2 / 60
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 % 60
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%dh %02dm %02ds"
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L19_1 = AddEventHandler
L20_1 = "playerDropped"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = L1_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L2_2 = GetPlayerName
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = "ID_"
      L3_2 = tostring
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 .. L3_2
    end
  end
  L3_2 = GetPrimaryIdentifier
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[L1_2]
  if L4_2 then
    L5_2 = os
    L5_2 = L5_2.time
    L5_2 = L5_2()
    L5_2 = L5_2 - L4_2
    if L5_2 then
      goto lbl_31
    end
  end
  L5_2 = 0
  ::lbl_31::
  L6_2 = L0_1
  L6_2[L1_2] = nil
  if L3_2 then
    L6_2 = UserData
    L6_2 = L6_2.GetValue
    L7_2 = L3_2
    L8_2 = "firstname"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_43
    end
  end
  L6_2 = nil
  ::lbl_43::
  if L3_2 and (nil == L6_2 or "___" == L6_2) then
    L7_2 = print
    L8_2 = "^7Player ID "
    L9_2 = L1_2
    L10_2 = " ^1DELETED ^7cause without name setted."
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    L7_2 = TriggerEvent
    L8_2 = "esx_Pharmacy:EliminaPG2"
    L9_2 = L3_2
    L7_2(L8_2, L9_2)
  elseif L3_2 and L5_2 > 0 then
    L7_2 = tonumber
    L8_2 = UserData
    L8_2 = L8_2.GetValue
    L9_2 = L3_2
    L10_2 = "playtime"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = SetVarDB
    L9_2 = L3_2
    L10_2 = "playtime"
    L11_2 = L7_2 + L5_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L7_2 = L7_1
  L8_2 = L1_2
  L7_2(L8_2)
  L7_2 = L14_1
  L8_2 = L1_2
  L7_2(L8_2)
  L7_2 = print
  L8_2 = "[^8DESPAWN^0] ^7%s[%s] %s | Play-Time: %s"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L2_2
  L11_2 = L1_2
  L12_2 = os
  L12_2 = L12_2.date
  L13_2 = "%X"
  L12_2 = L12_2(L13_2)
  L13_2 = L18_1
  L14_2 = L5_2
  L13_2, L14_2 = L13_2(L14_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L1_1
  L7_2[L1_2] = nil
  L7_2 = exports
  L7_2 = L7_2.striano_inventory
  L8_2 = L7_2
  L7_2 = L7_2.addNotification
  L9_2 = L2_2
  L10_2 = " exited."
  L9_2 = L9_2 .. L10_2
  L10_2 = 30000
  L7_2(L8_2, L9_2, L10_2)
end
L19_1(L20_1, L21_1)
L19_1 = AddEventHandler
L20_1 = "playerConnecting"
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = source
  L4_2 = A2_2.defer
  L4_2()
  L4_2 = Wait
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = 6500
  L6_2 = A2_2.update
  L7_2 = "Checking your identifiers..."
  L6_2(L7_2)
  L6_2 = nil
  L7_2 = nil
  while true do
    L8_2 = L11_1
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L6_2 = L8_2
    L8_2 = L10_1
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
    if L7_2 then
      break
    end
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 - L4_2
    if L5_2 <= L8_2 then
      break
    end
    L9_2 = math
    L9_2 = L9_2.floor
    L10_2 = L8_2 / L5_2
    L10_2 = L10_2 * 100
    L9_2 = L9_2(L10_2)
    L10_2 = A2_2.update
    L11_2 = "Checking your identifiers... %d%%"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = L9_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = Wait
    L11_2 = 200
    L10_2(L11_2)
  end
  if not L6_2 then
    L8_2 = L11_1
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L6_2 = L8_2
  end
  if not L7_2 then
    L8_2 = L10_1
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
  end
  if not L7_2 then
    L8_2 = A2_2.done
    L9_2 = "[ENG] Could not verify your identifiers. Please restart FiveM and try again."
    L8_2(L9_2)
    return
  end
  L8_2 = L12_1
  L9_2 = L3_2
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A2_2.update
  L9_2 = "Finalizing..."
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 50
  L8_2(L9_2)
  L8_2 = A2_2.done
  L8_2()
  L8_2 = GetPlayerName
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L9_2 = exports
    L9_2 = L9_2.striano_inventory
    L10_2 = L9_2
    L9_2 = L9_2.addNotification
    L11_2 = L8_2
    L12_2 = " joined."
    L11_2 = L11_2 .. L12_2
    L12_2 = 30000
    L9_2(L10_2, L11_2, L12_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = AddEventHandler
L20_1 = "onResourceStart"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = L11_1
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = L10_1
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = L12_1
      L10_2 = L6_2
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = onPlayerJoined
    L10_2 = L6_2
    L9_2(L10_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = RegisterCommand
L20_1 = "setob"
function L21_1(A0_2, A1_2)
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
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if nil ~= L2_2 then
      L2_2 = A1_2[1]
      L3_2 = xPlayer2
      if nil == L3_2 then
        return
      end
      L3_2 = TriggerClientEvent
      L4_2 = "setOBVar"
      L5_2 = xPlayer2
      L5_2 = L5_2.source
      L6_2 = A1_2[2]
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = TriggerClientEvent
      L4_2 = "esx:showNotification"
      L5_2 = xPlayer2
      L5_2 = L5_2.source
      L6_2 = "Var OB setted as "
      L7_2 = A1_2[2]
      L8_2 = " by Admin ID: "
      L9_2 = GetPlayerName
      L10_2 = xPlayer
      L10_2 = L10_2.source
      L9_2 = L9_2(L10_2)
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = TriggerClientEvent
      L4_2 = "esx:showNotification"
      L5_2 = A0_2
      L6_2 = "Var OB set as "
      L7_2 = A1_2[2]
      L6_2 = L6_2 .. L7_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "esx:showNotification"
    L4_2 = A0_2
    L5_2 = "/setob ID_player ID"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = RegisterServerEvent
L20_1 = "esx_Pharmacy:kick"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "esx_Pharmacy:kick"
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    A0_2 = "Kicked"
    L1_2 = Wait
    L2_2 = 150
    L1_2(L2_2)
  end
  L1_2 = print
  L2_2 = "PLAYER ID KICKED OUT: "
  L3_2 = source
  L4_2 = " "
  L5_2 = A0_2
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = DropPlayer
  L2_2 = source
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterServerEvent
L20_1 = "esx_Pharmacy:setVarDB"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "esx_Pharmacy:setVarDB"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPrimaryIdentifier
  L3_2 = source
  L2_2 = L2_2(L3_2)
  if nil ~= L2_2 then
    L3_2 = SetVarDB
    L4_2 = L2_2
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = print
    L4_2 = "setVarDB not valid for xPlayer NIL!"
    L3_2(L4_2)
  end
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A0_2 then
    L3_2 = print
    L4_2 = "^1[LOADCORE STOP]^7 identifier NIL"
    L3_2(L4_2)
    L3_2 = L7_1
    L4_2 = A1_2
    L3_2(L4_2)
    return
  end
  L3_2 = L8_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = print
    L4_2 = "^1[LOADCORE STOP]^7 player NON alive:"
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = L7_1
    L4_2 = A1_2
    L3_2(L4_2)
    return
  end
  L3_2 = UserData
  L3_2 = L3_2.Exists
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    A2_2 = true
    L4_2 = print
    L5_2 = "^3[LOADCORE]^7 NUOVO UTENTE:"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = L9_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = print
    L6_2 = "^3[LOADCORE]^7 ROW NON ESISTE"
    L5_2(L6_2)
    L5_2 = L4_1
    L5_2 = L5_2[A0_2]
    if L5_2 then
      L5_2 = print
      L6_2 = "^1[LOADCORE STOP]^7 CREATE_TRY gi\195\160 presente"
      L5_2(L6_2)
      L5_2 = L7_1
      L6_2 = A1_2
      L5_2(L6_2)
      return
    end
    L5_2 = L4_1
    L5_2[A0_2] = true
    L5_2 = createESXPlayer
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = print
    L7_2 = "^5[LOADCORE 3]^7 CREATE RESULT:"
    L8_2 = tostring
    L9_2 = L5_2
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if not L5_2 then
      L6_2 = L4_1
      L6_2[A0_2] = nil
      L6_2 = L7_1
      L7_2 = A1_2
      L6_2(L7_2)
      return
    end
    L6_2 = L9_1
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    if not L4_2 then
      L6_2 = print
      L7_2 = "^1[LOADCORE STOP]^7 ROW ancora NIL dopo create"
      L6_2(L7_2)
      L6_2 = L4_1
      L6_2[A0_2] = nil
      L6_2 = L7_1
      L7_2 = A1_2
      L6_2(L7_2)
      return
    end
  end
  L5_2 = L4_1
  L5_2[A0_2] = nil
  if A2_2 then
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 3000
      L0_3(L1_3)
      L0_3 = L8_1
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = print
        L1_3 = "^2[TUTORIAL]^7 Avvio tutorial nuovo utente:"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
        L0_3 = TriggerClientEvent
        L1_3 = "SonoPedNuovo"
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
        L0_3 = TriggerEvent
        L1_3 = "status:clearBySteamHex"
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
    end
    L5_2(L6_2)
  else
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Wait
      L1_3 = 3000
      L0_3(L1_3)
      L0_3 = L8_1
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = TriggerClientEvent
        L1_3 = "setTutorial"
        L2_3 = A1_2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = TriggerClientEvent
        L1_3 = "Multichar"
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
      end
    end
    L5_2(L6_2)
  end
  L5_2 = print
  L6_2 = "[^2SPAWN^0] ^7%s[%s] %s (%s)"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = GetPlayerName
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = "unknown"
  end
  L9_2 = A1_2
  L10_2 = os
  L10_2 = L10_2.date
  L11_2 = "%X"
  L10_2 = L10_2(L11_2)
  L11_2 = GetPlayerEndpoint
  L12_2 = A1_2
  L11_2, L12_2 = L11_2(L12_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L7_1
  L6_2 = A1_2
  L5_2(L6_2)
end
loadCorePlayer = L19_1
L19_1 = AddEventHandler
L20_1 = "playerJoining"
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = source
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 3000
    L0_3(L1_3)
    L0_3 = L8_1
    L1_3 = L0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = onPlayerJoined
    L1_3 = L0_2
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L19_1(L20_1, L21_1)
