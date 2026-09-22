local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
FILE_PATH = "spawnable_objects.json"
L0_1 = {}
ObjectList = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "spawnable_objects:client:syncList"
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = -1
  end
  L4_2 = ObjectList
  L1_2(L2_2, L3_2, L4_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = json
  L1_2 = L1_2.encode
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L3_2 = {}
  L3_2.indent = true
  return L1_2(L2_2, L3_2)
end
prettyJson = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
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
  if "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.lower
  return L1_2(L2_2)
end
normalizeName = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    L2_2 = ""
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "^%s+"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "%s+$"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2 = L2_2
  if A1_2 then
    L2_2 = #A0_2
    if A1_2 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.sub
      L4_2 = 1
      L5_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2 = L2_2
    end
  end
  return A0_2
end
safeString = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" == L2_2 then
    L2_2 = string
    L2_2 = L2_2.gmatch
    L3_2 = A0_2
    L4_2 = "([^,]+)"
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = safeString
      L8_2 = L6_2
      L9_2 = 32
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.lower
      L7_2 = L7_2(L8_2)
      L6_2 = L7_2
      if "" ~= L6_2 then
        L7_2 = #L1_2
        L7_2 = L7_2 + 1
        L1_2[L7_2] = L6_2
      end
    end
  else
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = safeString
        L9_2 = L7_2
        L10_2 = 32
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L8_2
        L8_2 = L8_2.lower
        L8_2 = L8_2(L9_2)
        L7_2 = L8_2
        if "" ~= L7_2 then
          L8_2 = #L1_2
          L8_2 = L8_2 + 1
          L1_2[L8_2] = L7_2
        end
      end
    end
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L2_2[L9_2]
    if not L10_2 then
      L2_2[L9_2] = true
      L10_2 = #L3_2
      L10_2 = L10_2 + 1
      L3_2[L10_2] = L9_2
    end
  end
  return L3_2
end
normalizeTags = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = normalizeName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if not A0_2 then
    L1_2 = nil
    L2_2 = nil
    return L1_2, L2_2
  end
  L1_2 = 1
  L2_2 = ObjectList
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = ObjectList
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.name
    if L5_2 == A0_2 then
      L5_2 = ObjectList
      L5_2 = L5_2[L4_2]
      L6_2 = L4_2
      return L5_2, L6_2
    end
  end
  L1_2 = nil
  L2_2 = nil
  return L1_2, L2_2
end
getByName = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SaveResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = FILE_PATH
  L3_2 = prettyJson
  L4_2 = ObjectList
  L3_2 = L3_2(L4_2)
  L4_2 = -1
  return L0_2(L1_2, L2_2, L3_2, L4_2)
end
saveList = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = FILE_PATH
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 or "" == L0_2 then
    L1_2 = {}
    ObjectList = L1_2
    L1_2 = saveList
    L1_2()
    return
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    L2_2 = {}
    ObjectList = L2_2
    L2_2 = saveList
    L2_2()
    return
  end
  L2_2 = {}
  ObjectList = L2_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = normalizeName
    L9_2 = L7_2.name
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = ObjectList
      L10_2 = ObjectList
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L11_2 = {}
      L11_2.name = L8_2
      L12_2 = safeString
      L13_2 = L7_2.label
      L14_2 = 64
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.label = L12_2
      L12_2 = safeString
      L13_2 = L7_2.desc
      L14_2 = 256
      L12_2 = L12_2(L13_2, L14_2)
      L11_2.desc = L12_2
      L12_2 = normalizeTags
      L13_2 = L7_2.tags
      L12_2 = L12_2(L13_2)
      L11_2.tags = L12_2
      L9_2[L10_2] = L11_2
    end
  end
  L2_2 = print
  L3_2 = "^2[striano_editor] Available %s spawnable objects in menu^7"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = ObjectList
  L5_2 = #L5_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
loadList = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    L2_2 = "invalid_data"
    return L1_2, L2_2
  end
  L1_2 = normalizeName
  L2_2 = A0_2.name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    L3_2 = "invalid_name"
    return L2_2, L3_2
  end
  L2_2 = getByName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = false
    L4_2 = "already_exists"
    return L3_2, L4_2
  end
  L3_2 = {}
  L3_2.name = L1_2
  L4_2 = safeString
  L5_2 = A0_2.label
  L6_2 = 64
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.label = L4_2
  L4_2 = safeString
  L5_2 = A0_2.desc
  L6_2 = 256
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.desc = L4_2
  L4_2 = normalizeTags
  L5_2 = A0_2.tags
  L4_2 = L4_2(L5_2)
  L3_2.tags = L4_2
  L4_2 = L3_2.label
  if "" == L4_2 then
    L3_2.label = L1_2
  end
  L4_2 = ObjectList
  L5_2 = ObjectList
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L4_2[L5_2] = L3_2
  L4_2 = saveList
  L4_2()
  L4_2 = true
  L5_2 = L3_2
  return L4_2, L5_2
end
addObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = getByName
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "not_found"
    return L3_2, L4_2
  end
  L3_2 = ObjectList
  L3_2 = L3_2[L2_2]
  L4_2 = table
  L4_2 = L4_2.remove
  L5_2 = ObjectList
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = saveList
  L4_2()
  L4_2 = true
  L5_2 = L3_2
  return L4_2, L5_2
end
removeObject = L1_1
L1_1 = RegisterNetEvent
L2_1 = "spawnable_objects:server:requestList"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "spawnable_objects:client:syncList"
  L3_2 = L0_2
  L4_2 = ObjectList
  L1_2(L2_2, L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "spawnable_objects:server:add"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = tostring
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.gsub
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = {}
    L2_2.name = L1_2
    L2_2.label = L1_2
    L2_2.desc = ""
    L3_2 = {}
    L2_2.tags = L3_2
    A0_2 = L2_2
  end
  L1_2 = addObject
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if not L1_2 then
    L3_2 = print
    L4_2 = "[spawnable_objects] add failed: "
    L5_2 = tostring
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L3_2 = L0_1
  L3_2()
  L3_2 = print
  L4_2 = "[spawnable_objects] added: "
  L5_2 = tostring
  L6_2 = L2_2.name
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "spawnable_objects:server:remove"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = removeObject
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = TriggerClientEvent
  L5_2 = "spawnable_objects:client:removeResult"
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L2_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "spawnable_objects:client:syncList"
    L6_2 = -1
    L7_2 = ObjectList
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2
  L0_2 = loadList
  L0_2()
end
L1_1(L2_1)
L1_1 = {}
serverCallbacks = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = serverCallbacks
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L1_1
SAVE_FILE = "pool.json"
ZONE_RADIUS = 300.0
ZONE_CAP = 1000
L1_1 = {}
pool = L1_1
nextId = 1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "distProps:fullPool"
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = -1
  end
  L4_2 = pool
  L1_2(L2_2, L3_2, L4_2)
end
sendFullPool = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.model
  if nil == L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.x
  if nil ~= L1_2 then
    L1_2 = A0_2.y
    if nil ~= L1_2 then
      L1_2 = A0_2.z
      if nil ~= L1_2 then
        goto lbl_24
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_24::
  L1_2 = true
  return L1_2
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = 0
  L2_2 = pairs
  L3_2 = pool
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = tonumber
      L9_2 = L7_2.id
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        L8_2 = tonumber
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
      end
      if L8_2 then
        L7_2.id = L8_2
        L9_2 = tostring
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L0_2[L9_2] = L7_2
      end
    else
      L1_2 = L1_2 + 1
    end
  end
  pool = L0_2
  L2_2 = pcall
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = pool
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 or not L3_2 then
    L4_2 = print
    L5_2 = "^1[dist_props] Error to save json.encode^7"
    L4_2(L5_2)
    return
  end
  L4_2 = SaveResourceFile
  L5_2 = GetCurrentResourceName
  L5_2 = L5_2()
  L6_2 = SAVE_FILE
  L7_2 = L3_2
  L8_2 = -1
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
savePool = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = SAVE_FILE
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = #L0_2
    if 0 ~= L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
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
      goto lbl_28
    end
  end
  L3_2 = print
  L4_2 = "^1[dist_props] Error pharsing JSON!^7"
  L3_2(L4_2)
  do return end
  ::lbl_28::
  L3_2 = {}
  L4_2 = 0
  L5_2 = 0
  L6_2 = pairs
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2 or L13_2
    if L11_2 then
      L13_2 = L11_2.id
    end
    L12_2 = L12_2(L13_2)
    if not L12_2 then
      L12_2 = tonumber
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
    end
    if L12_2 then
      L13_2 = type
      L14_2 = L11_2
      L13_2 = L13_2(L14_2)
      if "table" == L13_2 then
        L13_2 = L11_2.model
        if nil ~= L13_2 then
          L13_2 = L11_2.x
          if nil ~= L13_2 then
            L13_2 = L11_2.y
            if nil ~= L13_2 then
              L13_2 = L11_2.z
              if nil ~= L13_2 then
                L11_2.id = L12_2
                L13_2 = L11_2.model
                if not L13_2 then
                  L13_2 = "prop_beachball_02"
                end
                L11_2.model = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.x
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.x = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.y
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.y = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.z
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.z = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.rx
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.rx = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.ry
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.ry = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.rz
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 0.0
                end
                L11_2.rz = L13_2
                L13_2 = L11_2.frozen
                L13_2 = true == L13_2
                L11_2.frozen = L13_2
                L13_2 = tonumber
                L14_2 = L11_2.amount
                L13_2 = L13_2(L14_2)
                if not L13_2 then
                  L13_2 = 1
                end
                L11_2.amount = L13_2
                L13_2 = L11_2.owner
                if nil ~= L13_2 then
                  L13_2 = tostring
                  L14_2 = L11_2.owner
                  L13_2 = L13_2(L14_2)
                  if L13_2 then
                    goto lbl_138
                  end
                end
                L13_2 = "Sconosciuto"
                ::lbl_138::
                L11_2.owner = L13_2
                L13_2 = L11_2.metadata
                if not L13_2 then
                  L13_2 = -1
                end
                L11_2.metadata = L13_2
                L13_2 = L11_2.isPed
                L13_2 = true == L13_2
                L11_2.isPed = L13_2
                L13_2 = sanitizeAnim
                L14_2 = L11_2.anim
                L13_2 = L13_2(L14_2)
                L11_2.anim = L13_2
                L13_2 = tostring
                L14_2 = L12_2
                L13_2 = L13_2(L14_2)
                L3_2[L13_2] = L11_2
                if L4_2 < L12_2 then
                  L4_2 = L12_2
                end
            end
          end
        end
      end
    end
    else
      L5_2 = L5_2 + 1
    end
  end
  pool = L3_2
  L6_2 = L4_2 + 1
  nextId = L6_2
  L6_2 = 0
  L7_2 = pairs
  L8_2 = pool
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2 in L7_2, L8_2, L9_2, L10_2 do
    L6_2 = L6_2 + 1
  end
  L7_2 = print
  L8_2 = "^2[striano_editor] Loaded %d spawnated perm objects^7"
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L6_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L5_2 > 0 then
    L7_2 = print
    L8_2 = "^3[dist_props] Removed "
    L9_2 = L5_2
    L10_2 = " null/invalid objects from pool on load^7"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    L7_2 = savePool
    L7_2()
  end
end
loadPool = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2 - A3_2
  L7_2 = A1_2 - A4_2
  L8_2 = A2_2 - A5_2
  L9_2 = L6_2 * L6_2
  L10_2 = L7_2 * L7_2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2 * L8_2
  L9_2 = L9_2 + L10_2
  return L9_2
end
dist2 = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = A3_2 * A3_2
  L5_2 = 0
  L6_2 = pairs
  L7_2 = pool
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = dist2
    L13_2 = A0_2
    L14_2 = A1_2
    L15_2 = A2_2
    L16_2 = L11_2.x
    L17_2 = L11_2.y
    L18_2 = L11_2.z
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if L4_2 >= L12_2 then
      L5_2 = L5_2 + 1
    end
  end
  return L5_2
end
countInZone = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = safeString
  L2_2 = A0_2.dict
  L3_2 = 128
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = safeString
  L3_2 = A0_2.name
  L4_2 = 128
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = tonumber
  L4_2 = A0_2.flag
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 1
  end
  if "" == L1_2 or "" == L2_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L4_2.dict = L1_2
  L4_2.name = L2_2
  L4_2.flag = L3_2
  return L4_2
end
sanitizeAnim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = safeString
      L9_2 = L7_2.model
      L10_2 = 128
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = tonumber
      L10_2 = L7_2.bone
      L9_2 = L9_2(L10_2)
      L10_2 = L7_2.off
      if not L10_2 then
        L10_2 = {}
      end
      L11_2 = L7_2.rot
      if not L11_2 then
        L11_2 = {}
      end
      if "" ~= L8_2 and L9_2 then
        L12_2 = #L1_2
        L12_2 = L12_2 + 1
        L13_2 = {}
        L13_2.model = L8_2
        L13_2.bone = L9_2
        L14_2 = {}
        L15_2 = tonumber
        L16_2 = L10_2.x
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.x = L15_2
        L15_2 = tonumber
        L16_2 = L10_2.y
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.y = L15_2
        L15_2 = tonumber
        L16_2 = L10_2.z
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.z = L15_2
        L13_2.off = L14_2
        L14_2 = {}
        L15_2 = tonumber
        L16_2 = L11_2.x
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.x = L15_2
        L15_2 = tonumber
        L16_2 = L11_2.y
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.y = L15_2
        L15_2 = tonumber
        L16_2 = L11_2.z
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.z = L15_2
        L13_2.rot = L14_2
        L1_2[L12_2] = L13_2
      end
    end
  end
  L2_2 = #L1_2
  if L2_2 <= 0 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
sanitizeProps = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L13_2 = countInZone
  L14_2 = A1_2
  L15_2 = A2_2
  L16_2 = A3_2
  L17_2 = ZONE_RADIUS
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = ZONE_CAP
  if L13_2 >= L14_2 then
    L14_2 = nil
    L15_2 = "Cap zona raggiunto: %d elementi entro %.0f m"
    L16_2 = L15_2
    L15_2 = L15_2.format
    L17_2 = ZONE_CAP
    L18_2 = ZONE_RADIUS
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
    return L14_2, L15_2, L16_2, L17_2, L18_2
  end
  L14_2 = nextId
  L15_2 = nextId
  L15_2 = L15_2 + 1
  nextId = L15_2
  L15_2 = pool
  L16_2 = {}
  L16_2.id = L14_2
  L16_2.model = A0_2
  L16_2.x = A1_2
  L16_2.y = A2_2
  L16_2.z = A3_2
  L17_2 = A4_2 or L17_2
  if not A4_2 then
    L17_2 = 0.0
  end
  L16_2.rx = L17_2
  L17_2 = A5_2 or L17_2
  if not A5_2 then
    L17_2 = 0.0
  end
  L16_2.ry = L17_2
  L17_2 = A6_2 or L17_2
  if not A6_2 then
    L17_2 = 0.0
  end
  L16_2.rz = L17_2
  if A7_2 then
    L17_2 = true
    if L17_2 then
      goto lbl_48
    end
  end
  L17_2 = false
  ::lbl_48::
  L16_2.frozen = L17_2
  L17_2 = tonumber
  L18_2 = A8_2
  L17_2 = L17_2(L18_2)
  if not L17_2 then
    L17_2 = 0
  end
  L16_2.amount = L17_2
  L17_2 = GetPlayerName
  L18_2 = source
  L17_2 = L17_2(L18_2)
  L16_2.owner = L17_2
  L17_2 = A9_2 or L17_2
  if not A9_2 then
    L17_2 = -1
  end
  L16_2.metadata = L17_2
  L17_2 = true == A10_2
  L16_2.isPed = L17_2
  L17_2 = sanitizeAnim
  L18_2 = A11_2
  L17_2 = L17_2(L18_2)
  L16_2.anim = L17_2
  L17_2 = sanitizeProps
  L18_2 = A12_2
  L17_2 = L17_2(L18_2)
  L16_2.props = L17_2
  L15_2[L14_2] = L16_2
  L15_2 = TriggerClientEvent
  L16_2 = "distProps:poolAdd"
  L17_2 = -1
  L18_2 = pool
  L18_2 = L18_2[L14_2]
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = L14_2
  L16_2 = nil
  return L15_2, L16_2
end
addToPool = L2_1
L2_1 = RegisterNetEvent
L3_1 = "placer:addpool"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  A7_2 = false ~= A7_2
  A10_2 = true == A10_2
  if nil == A0_2 then
    L13_2 = print
    L14_2 = "model not exist for placer:addpool!"
    L13_2(L14_2)
    return
  end
  L13_2 = addToPool
  L14_2 = A0_2
  L15_2 = A1_2
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = A8_2
  L23_2 = A9_2
  L24_2 = A10_2
  L25_2 = A11_2
  L26_2 = A12_2
  L13_2, L14_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  if L14_2 then
    L15_2 = print
    L16_2 = "Errore placer placer:addpool: "
    L17_2 = L14_2
    L16_2 = L16_2 .. L17_2
    L15_2(L16_2)
    return
  else
    L15_2 = print
    L16_2 = "addToPool "
    L17_2 = A0_2
    L18_2 = " "
    L19_2 = tostring
    L20_2 = A8_2
    L19_2 = L19_2(L20_2)
    L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
    L15_2(L16_2)
  end
  L15_2 = source
  L16_2 = TriggerClientEvent
  L17_2 = "placer:poolCreated"
  L18_2 = L15_2
  L19_2 = L13_2
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = savePool
  L16_2()
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = pool
    L2_2 = L2_2[L1_2]
    if L2_2 then
      return L1_2
    end
  end
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pool
  L3_2 = L3_2[L2_2]
  if L3_2 then
    return L2_2
  end
  L3_2 = L1_2 or L3_2
  if not L1_2 then
    L3_2 = L2_2
  end
  return L3_2
end
L3_1 = RegisterNetEvent
L4_1 = "distProps:delById"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = print
  L3_2 = "DELETE raw:"
  L4_2 = A0_2
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = "key:"
  L7_2 = L1_2
  L8_2 = type
  L9_2 = L1_2
  L8_2 = L8_2(L9_2)
  L9_2 = "exists:"
  L10_2 = pool
  L10_2 = L10_2[L1_2]
  L10_2 = nil ~= L10_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L1_2 then
    L2_2 = pool
    L2_2 = L2_2[L1_2]
    if L2_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L2_2 = pool
  L2_2[L1_2] = nil
  L2_2 = TriggerClientEvent
  L3_2 = "distProps:poolRemove"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = savePool
  L2_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "distProps:hideById"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "distProps:poolHide"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "distProps:delById2"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 then
    L1_2 = pool
    L1_2 = L1_2[A0_2]
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = pool
  L1_2[A0_2] = nil
  L1_2 = savePool
  L1_2()
end
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerJoining"
function L5_1()
  local L0_2, L1_2
  L0_2 = sendFullPool
  L1_2 = source
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "distProps:reqFullPool"
function L5_1()
  local L0_2, L1_2
  L0_2 = sendFullPool
  L1_2 = source
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2
  L0_2 = loadPool
  L0_2()
end
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = TriggerClientEvent
    L2_2 = "distProps:despawnAll"
    L3_2 = -1
    L1_2(L2_2, L3_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "distProps:setAmount"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  if nil == A1_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = pool
  L5_2 = L5_2[A0_2]
  if L5_2 then
    L4_2 = A0_2
  else
    if L2_2 then
      L5_2 = pool
      L5_2 = L5_2[L2_2]
      if L5_2 then
        L4_2 = L2_2
    end
    else
      L5_2 = pool
      L5_2 = L5_2[L3_2]
      if L5_2 then
        L4_2 = L3_2
      end
    end
  end
  if not L4_2 then
    L5_2 = print
    L6_2 = "^1[SET AMOUNT] ID NON TROVATO:^7"
    L7_2 = A0_2
    L8_2 = "NUMBER:"
    L9_2 = L2_2
    L10_2 = "STRING:"
    L11_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L5_2 = pool
  L5_2 = L5_2[L4_2]
  L5_2.amount = A1_2
  L5_2 = print
  L6_2 = "^2[SET AMOUNT OK]^7"
  L7_2 = "ID:"
  L8_2 = L4_2
  L9_2 = "TYPE:"
  L10_2 = type
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L11_2 = "AMOUNT:"
  L12_2 = pool
  L12_2 = L12_2[L4_2]
  L12_2 = L12_2.amount
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = savePool
  L5_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "distProps:setOwner"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = pool
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = pool
  L2_2 = L2_2[A0_2]
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = "Unknown"
  end
  L3_2 = L3_2(L4_2)
  L2_2.owner = L3_2
  L2_2 = TriggerClientEvent
  L3_2 = "distProps:updateOwner"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = pool
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.owner
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = savePool
  L2_2()
end
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = getByName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "not_found"
    return L3_2, L4_2
  end
  L3_2 = safeString
  L4_2 = A1_2
  L5_2 = 64
  L3_2 = L3_2(L4_2, L5_2)
  A1_2 = L3_2
  if "" == A1_2 then
    A1_2 = L2_2.name
  end
  L2_2.label = A1_2
  L3_2 = saveList
  L3_2()
  L3_2 = true
  L4_2 = L2_2
  return L3_2, L4_2
end
setObjectLabel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = getByName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "not_found"
    return L3_2, L4_2
  end
  L3_2 = safeString
  L4_2 = A1_2
  L5_2 = 256
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.desc = L3_2
  L3_2 = saveList
  L3_2()
  L3_2 = true
  L4_2 = L2_2
  return L3_2, L4_2
end
setObjectDesc = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = getByName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = "not_found"
    return L3_2, L4_2
  end
  L3_2 = normalizeTags
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.tags = L3_2
  L3_2 = saveList
  L3_2()
  L3_2 = true
  L4_2 = L2_2
  return L3_2, L4_2
end
setObjectTags = L3_1
L3_1 = RegisterNetEvent
L4_1 = "spawnable_objects:server:setLabel"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = setObjectLabel
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L4_2 = print
    L5_2 = "^1[spawnable_objects]^7 setLabel failed:"
    L6_2 = L3_2
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L0_1
  L4_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "spawnable_objects:server:setDesc"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = setObjectDesc
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L4_2 = print
    L5_2 = "^1[spawnable_objects]^7 setDesc failed:"
    L6_2 = L3_2
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L0_1
  L4_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "spawnable_objects:server:setTags"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = setObjectTags
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L4_2 = print
    L5_2 = "^1[spawnable_objects]^7 setTags failed:"
    L6_2 = L3_2
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L0_1
  L4_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "editor:qtUpdate"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = Entity
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.state
      L4_2 = L3_2
      L3_2 = L3_2.set
      L5_2 = "qtInv"
      L6_2 = A1_2
      L7_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "plant:updateGrow"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "plant:updateGrowClient"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1(L4_1, L5_1)
L3_1 = {}
PianteInAttesa = L3_1
L3_1 = RegisterNetEvent
L4_1 = "sendPianteInAttesa"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 or 0 == A1_2 then
    return
  end
  A0_2.netId = A1_2
  A0_2.o = nil
  A0_2.netId = A1_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = PianteInAttesa
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = PianteInAttesa
  L2_2 = #L2_2
  L3_2 = TriggerClientEvent
  L4_2 = "getPianteInAttesa"
  L5_2 = -1
  L6_2 = PianteInAttesa
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = 0
    L1_3 = 0
    while L1_3 < 100 do
      L2_3 = NetworkGetEntityFromNetworkId
      L3_3 = A1_2
      L2_3 = L2_3(L3_3)
      L0_3 = L2_3
      if 0 ~= L0_3 then
        L2_3 = DoesEntityExist
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        if L2_3 then
          break
        end
      end
      L2_3 = Wait
      L3_3 = 100
      L2_3(L3_3)
      L1_3 = L1_3 + 1
    end
    if 0 ~= L0_3 then
      L2_3 = DoesEntityExist
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_33
      end
    end
    L2_3 = PianteInAttesa
    L3_3 = L2_2
    L2_3[L3_3] = nil
    do return end
    ::lbl_33::
    while true do
      L2_3 = PianteInAttesa
      L3_3 = L2_2
      L2_3 = L2_3[L3_3]
      if not L2_3 then
        break
      end
      L2_3 = PianteInAttesa
      L3_3 = L2_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.tempo
      if not (L2_3 > 0) then
        break
      end
      L2_3 = DoesEntityExist
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 1000
      L2_3(L3_3)
      L2_3 = PianteInAttesa
      L3_3 = L2_2
      L2_3 = L2_3[L3_3]
      L3_3 = L2_3.tempo
      L3_3 = L3_3 - 1
      L2_3.tempo = L3_3
      L3_3 = L2_3.mv
      L4_3 = L2_3.growed
      L4_3 = L4_3 + L3_3
      L5_3 = L2_3.maxGrow
      if L4_3 > L5_3 then
        L4_3 = L2_3.maxGrow
        L5_3 = L2_3.growed
        L3_3 = L4_3 - L5_3
      end
      L4_3 = L2_3.growed
      L4_3 = L4_3 + L3_3
      L2_3.growed = L4_3
      L4_3 = L2_3.baseZ
      L5_3 = L2_3.growed
      L4_3 = L4_3 + L5_3
      L5_3 = SetEntityCoords
      L6_3 = L0_3
      L7_3 = L2_3.pos
      L7_3 = L7_3.x
      L8_3 = L2_3.pos
      L8_3 = L8_3.y
      L9_3 = L4_3
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L13_3 = false
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
    L2_3 = PianteInAttesa
    L3_3 = L2_2
    L2_3 = L2_3[L3_3]
    if L2_3 then
      L2_3 = DoesEntityExist
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_102
      end
    end
    do return end
    ::lbl_102::
    L2_3 = PianteInAttesa
    L3_3 = L2_2
    L2_3 = L2_3[L3_3]
    L3_3 = GetEntityCoords
    L4_3 = L0_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetEntityRotation
    L5_3 = L0_3
    L4_3 = L4_3(L5_3)
    L5_3 = 0
    L6_3 = L2_3.acqua
    if L6_3 > 0 then
      L5_3 = 1
    end
    L6_3 = L2_3.fertilizzante
    if L6_3 > 0 then
      L6_3 = L2_3.acqua
      if L6_3 > 0 then
        L6_3 = math
        L6_3 = L6_3.random
        L7_3 = 3
        L8_3 = 7
        L6_3 = L6_3(L7_3, L8_3)
        L5_3 = L6_3
      end
    end
    L6_3 = L2_3.acqua
    if 0 == L6_3 then
      L6_3 = TriggerEvent
      L7_3 = "placer:addpool"
      L8_3 = GetHashKey
      L9_3 = "prop_grass_dry_02"
      L8_3 = L8_3(L9_3)
      L9_3 = L3_3.x
      L10_3 = L3_3.y
      L11_3 = L3_3.z
      L12_3 = L4_3.x
      L13_3 = L4_3.y
      L14_3 = L4_3.z
      L15_3 = true
      L16_3 = 1
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    else
      if 0 == L5_3 then
        L5_3 = 1
      end
      L6_3 = TriggerEvent
      L7_3 = "placer:addpool"
      L8_3 = GetEntityModel
      L9_3 = L0_3
      L8_3 = L8_3(L9_3)
      L9_3 = L3_3.x
      L10_3 = L3_3.y
      L11_3 = L3_3.z
      L12_3 = L4_3.x
      L13_3 = L4_3.y
      L14_3 = L4_3.z
      L15_3 = true
      L16_3 = L5_3
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
    L6_3 = PianteInAttesa
    L7_3 = L2_2
    L6_3[L7_3] = nil
    L6_3 = DeleteEntity
    L7_3 = L0_3
    L6_3(L7_3)
    L6_3 = TriggerClientEvent
    L7_3 = "getPianteInAttesa"
    L8_3 = -1
    L9_3 = PianteInAttesa
    L6_3(L7_3, L8_3, L9_3)
  end
  L3_2(L4_2)
end
L3_1(L4_1, L5_1)
L3_1 = {}
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "^%s*(.-)%s*$"
  L4_2 = "%1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.upper
  return L1_2(L2_2)
end
L5_1 = RegisterNetEvent
L6_1 = "vehicleProps:add"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L4_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = 0
  end
  if "" == A0_2 or not A1_2 then
    return
  end
  L3_2 = L3_1
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A0_2] = L4_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L3_1
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L5_2.model = A1_2
  L5_2.amount = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "vehicleProps:sync"
  L5_2 = -1
  L6_2 = L3_1
  L3_2(L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "vehicleProps:remove"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L4_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = L3_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tonumber
    L10_2 = L8_2.model
    L9_2 = L9_2(L10_2)
    if L9_2 == A1_2 then
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      break
    end
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = L3_1
    L3_2[A0_2] = nil
  end
  L3_2 = TriggerClientEvent
  L4_2 = "vehicleProps:sync"
  L5_2 = -1
  L6_2 = L3_1
  L3_2(L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "vehicleProps:requestSync"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "vehicleProps:sync"
  L2_2 = source
  L3_2 = L3_1
  L0_2(L1_2, L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
WorldContainerProps = L5_1
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:addProp"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = WorldContainers
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    return
  end
  L4_2 = WorldContainerProps
  L5_2 = WorldContainerProps
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[A0_2] = L5_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = WorldContainerProps
  L5_2 = L5_2[A0_2]
  L6_2 = {}
  L6_2.model = A1_2
  L7_2 = tonumber
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.amount = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerClientEvent
  L5_2 = "worldContainer:sync"
  L6_2 = -1
  L7_2 = WorldContainerProps
  L4_2(L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:requestSync"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "worldContainer:sync"
  L2_2 = source
  L3_2 = WorldContainerProps
  L0_2(L1_2, L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:removeProp"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = WorldContainerProps
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tonumber
    L10_2 = L8_2.model
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = A1_2
    L10_2 = L10_2(L11_2)
    if L9_2 == L10_2 then
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      break
    end
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = WorldContainerProps
    L3_2[A0_2] = nil
  end
  L3_2 = TriggerClientEvent
  L4_2 = "worldContainer:sync"
  L5_2 = -1
  L6_2 = WorldContainerProps
  L3_2(L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
WorldContainers = L5_1
NextWorldContainerId = 1
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:requestCreate"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L8_2 = source
  L9_2 = NextWorldContainerId
  L10_2 = NextWorldContainerId
  L10_2 = L10_2 + 1
  NextWorldContainerId = L10_2
  L10_2 = WorldContainers
  L11_2 = {}
  L11_2.owner = L8_2
  L11_2.model = A0_2
  L12_2 = A7_2 or L12_2
  if not A7_2 then
    L12_2 = 0
  end
  L11_2.amount = L12_2
  L12_2 = GetPlayerRoutingBucket
  L13_2 = L8_2
  L12_2 = L12_2(L13_2)
  L11_2.bucket = L12_2
  L11_2.netId = nil
  L10_2[L9_2] = L11_2
  L10_2 = TriggerClientEvent
  L11_2 = "worldContainer:create"
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = A0_2
  L15_2 = A1_2
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:register"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = WorldContainers
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L4_2 = L3_2.owner
  if L4_2 ~= L2_2 then
    return
  end
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "number" ~= L4_2 or 0 == A1_2 then
    return
  end
  L3_2.netId = A1_2
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 and 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L6_2 = L5_2
      L5_2 = L5_2.set
      L7_2 = "worldContainer"
      L8_2 = true
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L6_2 = L5_2
      L5_2 = L5_2.set
      L7_2 = "worldContainerId"
      L8_2 = A0_2
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L6_2 = L5_2
      L5_2 = L5_2.set
      L7_2 = "worldContainerAmount"
      L8_2 = L3_2.amount
      L9_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "worldContainer:remove"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = WorldContainers
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = print
    L4_2 = "^1[WORLD CONTAINER REMOVE]^7 ID inesistente:"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = print
  L4_2 = "^3[WORLD CONTAINER REMOVED]^7"
  L5_2 = "ID:"
  L6_2 = A0_2
  L7_2 = "NET:"
  L8_2 = L2_2.netId
  L9_2 = "BY:"
  L10_2 = L1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = WorldContainers
  L3_2[A0_2] = nil
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "pedProp:setAmount"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  if nil == A1_2 then
    return
  end
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 and 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_35
    end
  end
  L4_2 = print
  L5_2 = "^1[PED PROP]^7 ENTITY NON TROVATA NETID:"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_35::
  L4_2 = Entity
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L5_2 = L4_2
  L4_2 = L4_2.set
  L6_2 = "storedAmount"
  L7_2 = A1_2
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = TriggerClientEvent
  L5_2 = "pedProp:setAmountClient"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L5_1(L6_1, L7_1)
L5_1 = "ymaps/"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "&"
  L4_2 = "&amp;"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "<"
  L4_2 = "&lt;"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = ">"
  L4_2 = "&gt;"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "\""
  L4_2 = "&quot;"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "'"
  L4_2 = "&apos;"
  return L1_2(L2_2, L3_2, L4_2)
end
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = 0.0
  end
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = 0.0
  end
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = 0.0
  end
  L5_2 = L5_2(L6_2)
  A2_2 = L5_2
  A1_2 = L4_2
  A0_2 = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = A0_2 * 0.5
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = A0_2 * 0.5
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = A1_2 * 0.5
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = A1_2 * 0.5
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = A2_2 * 0.5
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = A2_2 * 0.5
  L8_2 = L8_2(L9_2)
  L9_2 = {}
  L10_2 = L7_2 * L4_2
  L10_2 = L10_2 * L5_2
  L11_2 = L8_2 * L3_2
  L11_2 = L11_2 * L6_2
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L10_2 = L7_2 * L3_2
  L10_2 = L10_2 * L6_2
  L11_2 = L8_2 * L4_2
  L11_2 = L11_2 * L5_2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L10_2 = L7_2 * L3_2
  L10_2 = L10_2 * L5_2
  L11_2 = L8_2 * L4_2
  L11_2 = L11_2 * L6_2
  L10_2 = L10_2 - L11_2
  L9_2.z = L10_2
  L10_2 = L7_2 * L3_2
  L10_2 = L10_2 * L5_2
  L11_2 = L8_2 * L4_2
  L11_2 = L11_2 * L6_2
  L10_2 = L10_2 + L11_2
  L9_2.w = L10_2
  return L9_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L2_2 = #A1_2
  if 0 == L2_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = math
  L2_2 = L2_2.huge
  L3_2 = math
  L3_2 = L3_2.huge
  L4_2 = math
  L4_2 = L4_2.huge
  L5_2 = math
  L5_2 = L5_2.huge
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.huge
  L6_2 = -L6_2
  L7_2 = math
  L7_2 = L7_2.huge
  L7_2 = -L7_2
  L8_2 = ipairs
  L9_2 = A1_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = math
    L14_2 = L14_2.min
    L15_2 = L2_2
    L16_2 = L13_2.x
    L14_2 = L14_2(L15_2, L16_2)
    L2_2 = L14_2
    L14_2 = math
    L14_2 = L14_2.min
    L15_2 = L3_2
    L16_2 = L13_2.y
    L14_2 = L14_2(L15_2, L16_2)
    L3_2 = L14_2
    L14_2 = math
    L14_2 = L14_2.min
    L15_2 = L4_2
    L16_2 = L13_2.z
    L14_2 = L14_2(L15_2, L16_2)
    L4_2 = L14_2
    L14_2 = math
    L14_2 = L14_2.max
    L15_2 = L5_2
    L16_2 = L13_2.x
    L14_2 = L14_2(L15_2, L16_2)
    L5_2 = L14_2
    L14_2 = math
    L14_2 = L14_2.max
    L15_2 = L6_2
    L16_2 = L13_2.y
    L14_2 = L14_2(L15_2, L16_2)
    L6_2 = L14_2
    L14_2 = math
    L14_2 = L14_2.max
    L15_2 = L7_2
    L16_2 = L13_2.z
    L14_2 = L14_2(L15_2, L16_2)
    L7_2 = L14_2
  end
  L8_2 = 25.0
  L9_2 = 125.0
  L10_2 = {}
  function L11_2(A0_3)
    local L1_3, L2_3
    L1_3 = L10_2
    L1_3 = #L1_3
    L2_3 = L1_3 + 1
    L1_3 = L10_2
    L1_3[L2_3] = A0_3
  end
  L12_2 = L11_2
  L13_2 = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "<CMapData>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <name>%s</name>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L6_1
  L16_2 = A0_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L15_2(L16_2)
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "  <parent/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <flags value=\"0\"/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <contentFlags value=\"65\"/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <streamingExtentsMin x=\"%.8f\" y=\"%.8f\" z=\"%.8f\"/>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L2_2 - L9_2
  L16_2 = L3_2 - L9_2
  L17_2 = L4_2 - L9_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "  <streamingExtentsMax x=\"%.8f\" y=\"%.8f\" z=\"%.8f\"/>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L5_2 + L9_2
  L16_2 = L6_2 + L9_2
  L17_2 = L7_2 + L9_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "  <entitiesExtentsMin x=\"%.8f\" y=\"%.8f\" z=\"%.8f\"/>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L2_2 - L8_2
  L16_2 = L3_2 - L8_2
  L17_2 = L4_2 - L8_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "  <entitiesExtentsMax x=\"%.8f\" y=\"%.8f\" z=\"%.8f\"/>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L5_2 + L8_2
  L16_2 = L6_2 + L8_2
  L17_2 = L7_2 + L8_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "  <entities>"
  L12_2(L13_2)
  L12_2 = ipairs
  L13_2 = A1_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = L7_1
    L19_2 = L17_2.rx
    L20_2 = L17_2.ry
    L21_2 = L17_2.rz
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = tonumber
    L20_2 = L17_2.model
    L19_2 = L19_2(L20_2)
    if not L19_2 then
      L19_2 = 0
    end
    if L19_2 < 0 then
      L19_2 = L19_2 + 4294967296
    end
    L20_2 = L11_2
    L21_2 = "    <Item type=\"CEntityDef\">"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <archetypeName>%u</archetypeName>"
    L22_2 = L21_2
    L21_2 = L21_2.format
    L23_2 = L19_2
    L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L21_2(L22_2, L23_2)
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L20_2 = L11_2
    L21_2 = "      <flags value=\"33\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <guid value=\"0\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <position x=\"%.8f\" y=\"%.8f\" z=\"%.8f\"/>"
    L22_2 = L21_2
    L21_2 = L21_2.format
    L23_2 = L17_2.x
    L24_2 = L17_2.y
    L25_2 = L17_2.z
    L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L20_2 = L11_2
    L21_2 = "      <rotation x=\"%.8f\" y=\"%.8f\" z=\"%.8f\" w=\"%.8f\"/>"
    L22_2 = L21_2
    L21_2 = L21_2.format
    L23_2 = L18_2.x
    L24_2 = L18_2.y
    L25_2 = L18_2.z
    L26_2 = L18_2.w
    L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L20_2 = L11_2
    L21_2 = "      <scaleXY value=\"1.00000000\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <scaleZ value=\"1.00000000\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <parentIndex value=\"-1\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <lodDist value=\"500.00000000\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <childLodDist value=\"0.00000000\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <lodLevel>LODTYPES_DEPTH_ORPHANHD</lodLevel>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <numChildren value=\"0\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <priorityLevel>PRI_REQUIRED</priorityLevel>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <extensions/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <ambientOcclusionMultiplier value=\"255\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <artificialAmbientOcclusion value=\"255\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "      <tintValue value=\"0\"/>"
    L20_2(L21_2)
    L20_2 = L11_2
    L21_2 = "    </Item>"
    L20_2(L21_2)
  end
  L12_2 = L11_2
  L13_2 = "  </entities>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <containerLods/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <boxOccluders/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <occludeModels/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <physicsDictionaries/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <instancedData><ImapLink/><PropInstanceList/><GrassInstanceList/></instancedData>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <timeCycleModifiers/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <carGenerators/>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <LODLightsSOA><direction/><falloff/><falloffExponent/><timeAndStateFlags/><hash/><coneInnerAngle/><coneOuterAngleOrCapExt/><coronaIntensity/></LODLightsSOA>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <DistantLODLightsSOA><position/><RGBI/><numStreetLights value=\"0\"/><category value=\"0\"/></DistantLODLightsSOA>"
  L12_2(L13_2)
  L12_2 = L11_2
  L13_2 = "  <block><version value=\"2\"/><flags value=\"0\"/><name>%s</name><exportedBy>Striano Editor</exportedBy><owner>Striano</owner><time>%s</time></block>"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = L6_1
  L16_2 = A0_2
  L15_2 = L15_2(L16_2)
  L16_2 = os
  L16_2 = L16_2.date
  L17_2 = "%d %B %Y"
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L16_2(L17_2)
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L12_2 = L11_2
  L13_2 = "</CMapData>"
  L12_2(L13_2)
  L12_2 = table
  L12_2 = L12_2.concat
  L13_2 = L10_2
  L14_2 = "\n"
  return L12_2(L13_2, L14_2)
end
L9_1 = RegisterNetEvent
L10_1 = "striano_editor:createYmap"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = source
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = #A1_2
    if 0 ~= L3_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.lower
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.gsub
  L5_2 = "[^%w_-]"
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2 = L3_2
  if "" == A0_2 then
    L3_2 = "striano_inventory_"
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    L3_2 = L3_2 .. L4_2
    A0_2 = L3_2
  end
  L3_2 = {}
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L2_1
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = L11_2 or L12_2
    if L11_2 then
      L12_2 = pool
      L12_2 = L12_2[L11_2]
    end
    if L12_2 then
      L13_2 = L12_2.isPed
      if not L13_2 then
        L13_2 = #L3_2
        L13_2 = L13_2 + 1
        L14_2 = {}
        L15_2 = L12_2.id
        L14_2.id = L15_2
        L15_2 = L12_2.model
        L14_2.model = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.x
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.x = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.y
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.y = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.z
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.z = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.rx
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.rx = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.ry
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.ry = L15_2
        L15_2 = tonumber
        L16_2 = L12_2.rz
        L15_2 = L15_2(L16_2)
        if not L15_2 then
          L15_2 = 0.0
        end
        L14_2.rz = L15_2
        L3_2[L13_2] = L14_2
        L13_2 = #L4_2
        L13_2 = L13_2 + 1
        L14_2 = {}
        L14_2.key = L11_2
        L15_2 = L12_2.id
        L14_2.id = L15_2
        L4_2[L13_2] = L14_2
      end
    end
  end
  L5_2 = #L3_2
  if 0 == L5_2 then
    L5_2 = TriggerClientEvent
    L6_2 = "striano_editor:ymapResult"
    L7_2 = L2_2
    L8_2 = false
    L9_2 = "Nessun prop valido selezionato."
    L5_2(L6_2, L7_2, L8_2, L9_2)
    return
  end
  L5_2 = L8_1
  L6_2 = A0_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L6_2 = L5_1
  L7_2 = A0_2
  L8_2 = ".ymap.xml"
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = SaveResourceFile
  L8_2 = GetCurrentResourceName
  L8_2 = L8_2()
  L9_2 = L6_2
  L10_2 = L5_2
  L11_2 = -1
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "striano_editor:ymapResult"
    L10_2 = L2_2
    L11_2 = false
    L12_2 = "Errore durante il salvataggio XML."
    L8_2(L9_2, L10_2, L11_2, L12_2)
    return
  end
  L8_2 = ipairs
  L9_2 = L4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = pool
    L15_2 = L13_2.key
    L14_2[L15_2] = nil
    L14_2 = TriggerClientEvent
    L15_2 = "distProps:poolRemove"
    L16_2 = -1
    L17_2 = L13_2.id
    L14_2(L15_2, L16_2, L17_2)
  end
  L8_2 = savePool
  L8_2()
  L8_2 = TriggerClientEvent
  L9_2 = "striano_editor:ymapResult"
  L10_2 = L2_2
  L11_2 = true
  L12_2 = L6_2
  L13_2 = #L3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = print
  L9_2 = "^2[YMAP]^7 Creata %s con %d props"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L6_2
  L12_2 = #L3_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L9_1(L10_1, L11_1)
