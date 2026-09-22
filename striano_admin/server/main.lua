local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = AdminLevel
if not L0_1 then
  L0_1 = {}
end
AdminLevel = L0_1
L0_1 = {}
L1_1 = "license:9febe2dc3b17fc6228bfbbb2a04fc3bb10b23636"
L0_1[L1_1] = 1
ADMIN_BY_IDENTIFIER = L0_1
L0_1 = "admins.json"
L1_1 = {}
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
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
        L1_1 = L2_2
    end
    else
      L3_2 = {}
      L1_1 = L3_2
      L3_2 = print
      L4_2 = "^1[striano_admin]^0 admins.json corrupted or empty."
      L3_2(L4_2)
    end
  else
    L1_2 = {}
    L1_1 = L1_2
  end
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SaveResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L1_1
  L5_2 = {}
  L5_2.indent = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    return L2_2
  end
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L4_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "license:"
    L8_2 = L8_2(L9_2, L10_2)
    if 1 == L8_2 then
      return L7_2
    end
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "steam:"
    L8_2 = L8_2(L9_2, L10_2)
    if 1 == L8_2 then
      return L7_2
    end
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.find
    L10_2 = "discord:"
    L8_2 = L8_2(L9_2, L10_2)
    if 1 == L8_2 then
      return L7_2
    end
  end
  L2_2 = L1_2[1]
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.find
    L11_2 = A1_2
    L12_2 = 1
    L13_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    if 1 == L9_2 then
      return L8_2
    end
  end
  L3_2 = nil
  return L3_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L1_1
    L9_2 = L9_2[L8_2]
    if nil == L9_2 then
      L10_2 = ADMIN_BY_IDENTIFIER
      L9_2 = L10_2[L8_2]
    end
    if nil ~= L9_2 then
      L10_2 = tonumber
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L9_2 = L10_2 or L9_2
      if not L10_2 then
        L9_2 = 0
      end
      if L9_2 > 0 and (0 == L1_2 or L1_2 > L9_2) then
        L1_2 = L9_2
      end
    end
  end
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0
  end
  if A0_2 <= 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = L7_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = AdminLevel
  L2_2[A0_2] = L1_2
  L2_2 = Player
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.state
    if L3_2 then
      L3_2 = L2_2.state
      L3_2.adminLevel = L1_2
      L3_2 = L2_2.state
      L4_2 = L1_2 > 0
      L3_2.isAdmin = L4_2
    end
  end
  return L1_2
end
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0
  end
  if A0_2 <= 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = AdminLevel
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = L8_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 0
    end
  end
  return L1_2
end
GetAdminLevel = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2 or A0_2
  if not L2_2 then
    A0_2 = 0
  end
  if A0_2 <= 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2 or A1_2
  if not L2_2 then
    A1_2 = 1
  end
  L2_2 = GetAdminLevel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 > 0 and A1_2 >= L2_2
  return L3_2
end
IsAdmin = L9_1
L9_1 = exports
L10_1 = "GetAdminLevel"
L11_1 = GetAdminLevel
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "adminlv"
L11_1 = GetAdminLevel
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "IsAdmin"
L11_1 = IsAdmin
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "imadmin"
L11_1 = IsAdmin
L9_1(L10_1, L11_1)
L9_1 = exports
L10_1 = "admin"
L11_1 = IsAdmin
L9_1(L10_1, L11_1)
L9_1 = AddEventHandler
L10_1 = "playerJoining"
function L11_1()
  local L0_2, L1_2
  L0_2 = L8_1
  L1_2 = source
  L0_2(L1_2)
end
L9_1(L10_1, L11_1)
L9_1 = AddEventHandler
L10_1 = "playerDropped"
function L11_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = AdminLevel
  L1_2[L0_2] = nil
end
L9_1(L10_1, L11_1)
L9_1 = AddEventHandler
L10_1 = "onResourceStart"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2()
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L8_1
    L8_2 = tonumber
    L9_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2)
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "anim:cmd"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0
  end
  if 1 == A0_2 then
    L1_2 = "SuperAdmin"
    return L1_2
  end
  if 2 == A0_2 then
    L1_2 = "Admin"
    return L1_2
  end
  if 3 == A0_2 then
    L1_2 = "Mod"
    return L1_2
  end
  L1_2 = "None"
  return L1_2
end
L11_1 = RegisterCommand
L12_1 = "adminlist"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A0_2
  L3_2 = IsAdmin
  L4_2 = L2_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L9_1
    L4_2 = L2_2
    L5_2 = "No permission."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = {}
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = "^3==== ADMIN LIST ===="
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = "^5[CONFIG BASE]^7"
  L4_2 = false
  L5_2 = pairs
  L6_2 = ADMIN_BY_IDENTIFIER
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L4_2 = true
    L11_2 = #L3_2
    L11_2 = L11_2 + 1
    L12_2 = "- %s | lv %s (%s)"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L9_2
    L15_2 = tostring
    L16_2 = L10_2
    L15_2 = L15_2(L16_2)
    L16_2 = L10_1
    L17_2 = L10_2
    L16_2, L17_2, L18_2 = L16_2(L17_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L3_2[L11_2] = L12_2
  end
  if not L4_2 then
    L5_2 = #L3_2
    L5_2 = L5_2 + 1
    L3_2[L5_2] = "- No admins in list."
  end
  L5_2 = #L3_2
  L5_2 = L5_2 + 1
  L3_2[L5_2] = "^2[ADMINS SAVED]^7"
  L5_2 = false
  L6_2 = pairs
  L7_2 = L1_1
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L5_2 = true
    L12_2 = #L3_2
    L12_2 = L12_2 + 1
    L13_2 = "- %s | lv %s (%s)"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = L10_2
    L16_2 = tostring
    L17_2 = L11_2
    L16_2 = L16_2(L17_2)
    L17_2 = L10_1
    L18_2 = L11_2
    L17_2, L18_2 = L17_2(L18_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L3_2[L12_2] = L13_2
  end
  if not L5_2 then
    L6_2 = #L3_2
    L6_2 = L6_2 + 1
    L3_2[L6_2] = "- No saved admins."
  end
  L6_2 = 1
  L7_2 = #L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = TriggerClientEvent
    L11_2 = "chat:addMessage"
    L12_2 = L2_2
    L13_2 = {}
    L14_2 = {}
    L15_2 = 255
    L16_2 = 180
    L17_2 = 80
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L13_2.color = L14_2
    L13_2.multiline = true
    L14_2 = {}
    L15_2 = "ADMIN"
    L16_2 = L3_2[L9_2]
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L13_2.args = L14_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L6_2 = print
  L7_2 = "[striano_admin] /adminlist requested by"
  L8_2 = GetPlayerName
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = "Unknown"
  end
  L9_2 = L2_2
  L6_2(L7_2, L8_2, L9_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
L11_1 = RegisterCommand
L12_1 = "setadmin"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2
  L3_2 = IsAdmin
  L4_2 = L2_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L9_1
    L4_2 = L2_2
    L5_2 = "No permission."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A1_2[2]
  if not L5_2 then
    L5_2 = 0
  end
  L4_2 = L4_2(L5_2)
  if not (L3_2 <= 0) then
    L5_2 = GetPlayerName
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_37
    end
  end
  L5_2 = L9_1
  L6_2 = L2_2
  L7_2 = "/setadmin [id] [lv]"
  L5_2(L6_2, L7_2)
  do return end
  ::lbl_37::
  if L4_2 <= 0 or L4_2 > 3 then
    L5_2 = L9_1
    L6_2 = L2_2
    L7_2 = "Lv not valid. 1 (Super admin), 2 (Admin), 3 (Mod)."
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L5_1
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = L9_1
    L7_2 = L2_2
    L8_2 = "Identifier not found."
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = L1_1
  L6_2[L5_2] = L4_2
  L6_2 = L3_1
  L6_2()
  L6_2 = L8_1
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = L9_1
  L8_2 = L2_2
  L9_2 = "Admin added %s[ID %d] LV: %d. Identifier: %s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = GetPlayerName
  L12_2 = L3_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = "Unknow"
  end
  L12_2 = L3_2
  L13_2 = L6_2
  L14_2 = L5_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = L9_1
  L8_2 = L3_2
  L9_2 = "You are admin lv %d now."
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L6_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = print
  L8_2 = "[striano_admin] %s[%d] new Admin added %s[%d] (LV: %d) (%s)"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = GetPlayerName
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = "Unknown"
  end
  L11_2 = L2_2
  L12_2 = GetPlayerName
  L13_2 = L3_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = "Unknown"
  end
  L13_2 = L3_2
  L14_2 = L6_2
  L15_2 = L5_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
L11_1 = RegisterCommand
L12_1 = "removeadmin"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L3_2 = IsAdmin
  L4_2 = L2_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = L9_1
    L4_2 = L2_2
    L5_2 = "No permission."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  if not L4_2 then
    L4_2 = 0
  end
  L3_2 = L3_2(L4_2)
  if not (L3_2 <= 0) then
    L4_2 = GetPlayerName
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_31
    end
  end
  L4_2 = L9_1
  L5_2 = L2_2
  L6_2 = "/removeadmin [id]"
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_31::
  L4_2 = L5_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = L9_1
    L6_2 = L2_2
    L7_2 = "Identifier not found."
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L1_1
  L5_2 = L5_2[L4_2]
  if nil == L5_2 then
    L5_2 = ADMIN_BY_IDENTIFIER
    L5_2 = L5_2[L4_2]
    if nil == L5_2 then
      L5_2 = L9_1
      L6_2 = L2_2
      L7_2 = "This player is not an admin."
      L5_2(L6_2, L7_2)
      return
    end
  end
  L5_2 = L1_1
  L5_2[L4_2] = nil
  L5_2 = L3_1
  L5_2()
  L5_2 = L8_1
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L9_1
  L7_2 = L2_2
  L8_2 = "Admin removed %s [ID %d]. LV: %d"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = GetPlayerName
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = "Unknow"
  end
  L11_2 = L3_2
  L12_2 = L5_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L9_1
  L7_2 = L3_2
  L8_2 = "Admin rule removed."
  L6_2(L7_2, L8_2)
  L6_2 = print
  L7_2 = "[striano_admin] %s[%d] remove %s[%d] (%s) from admin"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = GetPlayerName
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = "Unknown"
  end
  L10_2 = L2_2
  L11_2 = GetPlayerName
  L12_2 = L3_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = "Unknown"
  end
  L12_2 = L3_2
  L13_2 = L4_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
L11_1 = GROUPS
if not L11_1 then
  L11_1 = {}
end
GROUPS = L11_1
L11_1 = GROUPS
L11_1.player = 2
L11_1 = GROUPS
L11_1.world = 2
L11_1 = GROUPS
L11_1.vehicles = 2
L11_1 = GROUPS
L11_1.weapons = 2
L11_1 = GROUPS
L11_1.time_weather = 2
L11_1 = GROUPS
L11_1.misc = 2
L11_1 = GROUPS
L11_1.appearance = 2
L11_1 = GROUPS
L11_1.debug = 1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0
  end
  if A0_2 <= 0 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = AdminLevel
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = L8_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 0
    end
  end
  return L1_2
end
GetAdminLevel = L11_1
function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
IsAdmin = L11_1
L11_1 = exports
L12_1 = "GetAdminLevel"
L13_1 = GetAdminLevel
L11_1(L12_1, L13_1)
L11_1 = exports
L12_1 = "IsAdmin"
L13_1 = IsAdmin
L11_1(L12_1, L13_1)
L11_1 = AddEventHandler
L12_1 = "playerDropped"
function L13_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = AdminLevel
  L1_2[L0_2] = nil
end
L11_1(L12_1, L13_1)
L11_1 = {}
L12_1 = GetConvarInt
L13_1 = "cqadmin_open_menu_window_ms"
L14_1 = 1000
L12_1 = L12_1(L13_1, L14_1)
L13_1 = GetConvarInt
L14_1 = "cqadmin_cap_open_window_ms"
L15_1 = 300000
L13_1 = L13_1(L14_1, L15_1)
L14_1 = {}
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:openMenuRequest"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  if not L1_2 or L1_2 <= 0 then
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 or L1_2
    if not L2_2 then
      L1_2 = 0
    end
  end
  if not L1_2 or L1_2 <= 0 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L11_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = L2_2 - L3_2
  L5_2 = L12_1
  if L4_2 < L5_2 then
    return
  end
  L4_2 = L11_1
  L4_2[L1_2] = L2_2
  L4_2 = GetAdminLevel
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L4_2 <= 0 then
    return
  end
  L5_2 = L14_1
  L6_2 = L13_1
  L6_2 = L2_2 + L6_2
  L5_2[L1_2] = L6_2
  L5_2 = "open-%d-%d"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L1_2
  L8_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "striano_admin:cl:open"
  L8_2 = L1_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:requestCapabilities"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = GetAdminLevel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L2_2.player = false
  L2_2.world = false
  L2_2.debug = false
  L2_2.vehicles = false
  L2_2.weapons = false
  L2_2.time_weather = false
  L2_2.misc = false
  L2_2.appearance = false
  if 1 == L1_2 then
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2 in L3_2, L4_2, L5_2, L6_2 do
      L2_2[L7_2] = true
    end
  elseif 2 == L1_2 then
    L2_2.player = true
    L2_2.world = true
    L2_2.vehicles = true
    L2_2.weapons = true
    L2_2.time_weather = true
    L2_2.misc = true
    L2_2.appearance = true
  elseif 3 == L1_2 then
    L2_2.player = true
    L2_2.misc = true
  end
  L3_2 = TriggerClientEvent
  L4_2 = "striano_admin:cl:setCapabilities"
  L5_2 = L0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:reqItemsList"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = {}
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_inventory
    L2_2 = L2_2.GetAllItems
    if L2_2 then
      L2_2 = exports
      L2_2 = L2_2.striano_inventory
      L3_2 = L2_2
      L2_2 = L2_2.GetAllItems
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "striano_admin:cl:setItemsList"
  L4_2 = L0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:reqPlayersList"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = source
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = GetPlayers
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2()
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = tonumber
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L9_2.id = L10_2
    L10_2 = GetPlayerName
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = "ID %s"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L7_2
      L10_2 = L10_2(L11_2, L12_2)
    end
    L9_2.name = L10_2
    L1_2[L8_2] = L9_2
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = tostring
    L3_3 = A0_3.name
    L2_3 = L2_3(L3_3)
    L3_3 = L2_3
    L2_3 = L2_3.lower
    L2_3 = L2_3(L3_3)
    L3_3 = tostring
    L4_3 = A1_3.name
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "striano_admin:cl:setPlayersList"
  L4_2 = L0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "sriano_admin:sv:reqItemsList"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.GetAllItems
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = TriggerClientEvent
  L3_2 = "sriano_admin:cl:setItemsList"
  L4_2 = L0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "sriano_admin:sv:giveItem"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L3_2 = L3_2(L4_2, L5_2)
  A1_2 = L3_2
  L3_2 = TriggerEvent
  L4_2 = "inv3d:serverGiveItem"
  L5_2 = L2_2
  L6_2 = "player"
  L7_2 = A0_2
  L8_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetPlayerIdentifiers
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.find
    L11_2 = "license:"
    L9_2 = L9_2(L10_2, L11_2)
    if 1 == L9_2 then
      L2_2 = L8_2
      break
    end
  end
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.KeysListHeld
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2 or L4_2
  if not L3_2 then
    L4_2 = {}
  end
  return L4_2
end
GetPlayerKeysFromSource = L15_1
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:getPlayerKeys"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2[1]
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.find
    L12_2 = "license:"
    L10_2 = L10_2(L11_2, L12_2)
    if 1 == L10_2 then
      L3_2 = L9_2
      break
    end
  end
  L4_2 = exports
  L4_2 = L4_2.striano_core
  L5_2 = L4_2
  L4_2 = L4_2.KeysListHeld
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "striano_admin:receivePlayerKeys"
  L7_2 = L1_2
  L8_2 = A0_2
  L9_2 = L4_2 or L9_2
  if not L4_2 then
    L9_2 = {}
  end
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "setMaxHP"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L3_2 = TriggerClientEvent
  L4_2 = "setMaxHP"
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "setMaxMana"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L3_2 = TriggerClientEvent
  L4_2 = "setMaxMana"
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:adminDestroyKey"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.sub
  L4_2 = 1
  L5_2 = 4
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if "TMP_" == L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.TempKeyDestroy
    L4_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = TriggerClientEvent
    L5_2 = "striano_keys:cl:notify"
    L6_2 = L1_2
    if L2_2 then
      L7_2 = "Temp key destroyed"
      if L7_2 then
        goto lbl_38
      end
    end
    L7_2 = "Failed: "
    L8_2 = tostring
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    ::lbl_38::
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.KeysDestroyAny
  L4_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = TriggerClientEvent
  L5_2 = "striano_keys:cl:notify"
  L6_2 = L1_2
  if L2_2 then
    L7_2 = "Key destroyed"
    if L7_2 then
      goto lbl_58
    end
  end
  L7_2 = "Failed: "
  L8_2 = tostring
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  ::lbl_58::
  L4_2(L5_2, L6_2, L7_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "striano_admin:sv:getPlayerKeys"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = IsAdmin
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = GetPlayerName
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_29
    end
  end
  L2_2 = TriggerClientEvent
  L3_2 = "striano_admin:cl:receivePlayerKeys"
  L4_2 = L1_2
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = -1
  end
  L6_2 = {}
  L2_2(L3_2, L4_2, L5_2, L6_2)
  do return end
  ::lbl_29::
  L2_2 = exports
  L2_2 = L2_2.phar
  L3_2 = L2_2
  L2_2 = L2_2.identOf
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.KeysListHeld
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = TriggerClientEvent
  L5_2 = "striano_admin:cl:receivePlayerKeys"
  L6_2 = L1_2
  L7_2 = A0_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L15_1(L16_1, L17_1)
