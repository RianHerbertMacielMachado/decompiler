local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = "doors.json"
L1_1 = {}
function L2_1()
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
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = tonumber
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2 or A3_2
  if not L4_2 then
    A3_2 = 1.5
  end
  L4_2 = nil
  L5_2 = A3_2
  L6_2 = pairs
  L7_2 = ObjectPool
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2.x
    L12_2 = L12_2(L13_2)
    L13_2 = tonumber
    L14_2 = L11_2.y
    L13_2 = L13_2(L14_2)
    L14_2 = tonumber
    L15_2 = L11_2.z
    L14_2 = L14_2(L15_2)
    if L12_2 and L13_2 and L14_2 then
      L15_2 = vector3
      L16_2 = A0_2
      L17_2 = A1_2
      L18_2 = A2_2
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L16_2 = vector3
      L17_2 = L12_2
      L18_2 = L13_2
      L19_2 = L14_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L15_2 - L16_2
      L15_2 = #L15_2
      if L5_2 >= L15_2 then
        L16_2 = tostring
        L17_2 = L10_2
        L16_2 = L16_2(L17_2)
        L4_2 = L16_2
        L5_2 = L15_2
      end
    end
  end
  return L4_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = L0_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 or "" == L0_2 then
    L1_2 = {}
    L1_1 = L1_2
    L1_2 = SaveResourceFile
    L2_2 = GetCurrentResourceName
    L2_2 = L2_2()
    L3_2 = L0_1
    L4_2 = json
    L4_2 = L4_2.encode
    L5_2 = L1_1
    L6_2 = {}
    L6_2.indent = true
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = -1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 and L2_2 then
      goto lbl_43
      L3_2 = L2_2 or L3_2
    end
  end
  L3_2 = {}
  ::lbl_43::
  L1_1 = L3_2
end
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  return A0_2
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = "door_"
  L1_2 = tostring
  L2_2 = os
  L2_2 = L2_2.time
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = "_"
  L3_2 = tostring
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 100000
  L6_2 = 999999
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
  return L0_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = tonumber
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[1]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.x = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.y
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[2]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.y = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.z
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[3]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.z = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.rx
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[4]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.rx = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.ry
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[5]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.ry = L2_2
  L2_2 = tonumber
  L3_2 = A0_2.rz
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[6]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L1_2.rz = L2_2
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.find
    L9_2 = "license:"
    L10_2 = 1
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if L7_2 then
      return L6_2
    end
  end
  L1_2 = "src:"
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L9_1 = AddEventHandler
L10_1 = "onResourceStart"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = math
  L1_2 = L1_2.randomseed
  L2_2 = os
  L2_2 = L2_2.time
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L4_1
  L1_2()
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = "animatedDoors:client:fullSync"
  L3_2 = -1
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = AddEventHandler
L10_1 = "playerJoining"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "animatedDoors:client:fullSync"
  L2_2 = source
  L3_2 = L1_1
  L0_2(L1_2, L2_2, L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:requestSync"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "animatedDoors:client:fullSync"
  L2_2 = source
  L3_2 = L1_1
  L0_2(L1_2, L2_2, L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:createDoor"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L7_1
  L3_2 = A0_2.pos1
  L2_2 = L2_2(L3_2)
  L3_2 = L7_1
  L4_2 = A0_2.pos2
  L3_2 = L3_2(L4_2)
  if not L2_2 or not L3_2 then
    return
  end
  L4_2 = L5_1
  L5_2 = A0_2.poolId
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = L3_1
    L6_2 = L2_2.x
    L7_2 = L2_2.y
    L8_2 = L2_2.z
    L9_2 = 2.0
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  end
  if not L4_2 then
    L5_2 = print
    L6_2 = "[animatedDoors] createDoor failed: no poolId found near pos1"
    L5_2(L6_2)
    return
  end
  L5_2 = L5_1
  L6_2 = A0_2.id
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = L6_1
    L5_2 = L5_2()
  end
  L6_2 = L1_1
  L7_2 = {}
  L7_2.id = L5_2
  L7_2.poolId = L4_2
  L8_2 = A0_2.owner
  if not L8_2 then
    L8_2 = L8_1
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
  end
  L7_2.owner = L8_2
  L7_2.pos1 = L2_2
  L7_2.pos2 = L3_2
  L8_2 = A0_2.state
  if "open" == L8_2 then
    L8_2 = "open"
    if L8_2 then
      goto lbl_65
    end
  end
  L8_2 = "closed"
  ::lbl_65::
  L7_2.state = L8_2
  L8_2 = tostring
  L9_2 = A0_2.pin
  if not L9_2 then
    L9_2 = ""
  end
  L8_2 = L8_2(L9_2)
  L7_2.pin = L8_2
  L8_2 = tostring
  L9_2 = A0_2.chiaveID
  if not L9_2 then
    L9_2 = ""
  end
  L8_2 = L8_2(L9_2)
  L7_2.chiaveID = L8_2
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L7_2.createdAt = L8_2
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L7_2.updatedAt = L8_2
  L6_2[L5_2] = L7_2
  L6_2 = L2_1
  L6_2()
  L6_2 = TriggerClientEvent
  L7_2 = "animatedDoors:client:addOrUpdate"
  L8_2 = -1
  L9_2 = L1_1
  L9_2 = L9_2[L5_2]
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "animatedDoors:client:fullSync"
  L8_2 = -1
  L9_2 = L1_1
  L6_2(L7_2, L8_2, L9_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:setState"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if "open" == A1_2 then
    L3_2 = "open"
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = "closed"
  ::lbl_20::
  L2_2.state = L3_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2.updatedAt = L3_2
  L2_2 = L2_1
  L2_2()
  L2_2 = TriggerClientEvent
  L3_2 = "animatedDoors:client:setState"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.state
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = TriggerClientEvent
  L3_2 = "animatedDoors:client:fullSync"
  L4_2 = -1
  L5_2 = L1_1
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:toggleDoor"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.state
  if "open" == L1_2 then
    L1_2 = "closed"
    if L1_2 then
      goto lbl_21
    end
  end
  L1_2 = "open"
  ::lbl_21::
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2.state = L1_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2.updatedAt = L3_2
  L2_2 = L2_1
  L2_2()
  L2_2 = TriggerClientEvent
  L3_2 = "animatedDoors:client:setState"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = TriggerClientEvent
  L3_2 = "animatedDoors:client:fullSync"
  L4_2 = -1
  L5_2 = L1_1
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:updateDoor"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = L5_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if A0_2 then
    L3_2 = L1_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L3_2 = type
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if "table" == L3_2 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.identOf
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.owner
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.owner
    if L4_2 ~= L3_2 then
      L4_2 = print
      L5_2 = "[animatedDoors] update denied, not owner:"
      L6_2 = L2_2
      L7_2 = A0_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = A1_2.poolId
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = L5_1
    L6_2 = A1_2.poolId
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = L1_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.poolId
    end
    L4_2.poolId = L5_2
  end
  L4_2 = A1_2.pos1
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = L7_1
    L6_2 = A1_2.pos1
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = L1_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.pos1
    end
    L4_2.pos1 = L5_2
  end
  L4_2 = A1_2.pos2
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = L7_1
    L6_2 = A1_2.pos2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = L1_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.pos2
    end
    L4_2.pos2 = L5_2
  end
  L4_2 = A1_2.state
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = A1_2.state
    if "open" == L5_2 then
      L5_2 = "open"
      if L5_2 then
        goto lbl_96
      end
    end
    L5_2 = "closed"
    ::lbl_96::
    L4_2.state = L5_2
  end
  L4_2 = A1_2.pin
  if nil ~= L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = tostring
    L6_2 = A1_2.pin
    if not L6_2 then
      L6_2 = ""
    end
    L5_2 = L5_2(L6_2)
    L4_2.pin = L5_2
  end
  L4_2 = A1_2.chiaveID
  if nil ~= L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    L5_2 = tostring
    L6_2 = A1_2.chiaveID
    if not L6_2 then
      L6_2 = ""
    end
    L5_2 = L5_2(L6_2)
    L4_2.chiaveID = L5_2
  end
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L4_2.updatedAt = L5_2
  L4_2 = L2_1
  L4_2()
  L4_2 = TriggerClientEvent
  L5_2 = "animatedDoors:client:addOrUpdate"
  L6_2 = -1
  L7_2 = L1_1
  L7_2 = L7_2[A0_2]
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "animatedDoors:client:fullSync"
  L6_2 = -1
  L7_2 = L1_1
  L4_2(L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "animatedDoors:server:deleteDoor"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if A0_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = L1_1
  L1_2[A0_2] = nil
  L1_2 = L2_1
  L1_2()
  L1_2 = TriggerClientEvent
  L2_2 = "animatedDoors:client:removeDoor"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerClientEvent
  L2_2 = "animatedDoors:client:fullSync"
  L3_2 = -1
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
