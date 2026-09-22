local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = "ldoor"
L1_1 = "lddoor"
L2_1 = {}
L3_1 = CreateThread
L4_1 = RegisterServerEvent
L5_1 = L3_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "server/ldoor_file/Doors.json"
  L0_2 = L0_2(L1_2, L2_2)
  if "" == L0_2 then
    L1_2 = SaveResourceFile
    L2_2 = GetCurrentResourceName
    L2_2 = L2_2()
    L3_2 = "server/ldoor_file/Doors.json"
    L4_2 = "[]"
    L5_2 = -1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L5_1(L6_1)
L5_1 = RegisterServerCallback
L6_1 = "guille_doorlock:cb:getDoors"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = LoadResourceFile
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  L4_2 = "server/ldoor_file/Doors.json"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = json
  L3_2 = L3_2.decode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A1_2
  L4_2 = L2_2
  L5_2 = L2_1
  L3_2(L4_2, L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = L4_1
L6_1 = "guille_doorlock:server:addDoor"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L10_2 = source
  L11_2 = exports
  L11_2 = L11_2.striano_core
  L12_2 = L11_2
  L11_2 = L11_2.IsAdmin
  L13_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2)
  if L11_2 then
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = LoadResourceFile
    L15_2 = GetCurrentResourceName
    L15_2 = L15_2()
    L16_2 = "server/ldoor_file/Doors.json"
    L14_2 = L14_2(L15_2, L16_2)
    if "" ~= A7_2 then
      L11_2 = true
    end
    if "" ~= A8_2 then
      L12_2 = true
    end
    if nil == A9_2 then
      L13_2 = true
    end
    L15_2 = json
    L15_2 = L15_2.decode
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L14_2 = L15_2
    L15_2 = {}
    L15_2.doorCoords = A0_2
    L15_2._doorModel = A1_2
    L15_2._heading = A2_2
    L15_2._type = A3_2
    L15_2._textCoords = A4_2
    L15_2.dist = A5_2
    L15_2.jobs = A6_2
    L15_2.usePin = L11_2
    L15_2.pin = A7_2
    L15_2.useitem = L12_2
    L15_2.item = A8_2
    L15_2.status = L13_2
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L14_2
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
    L16_2 = SaveResourceFile
    L17_2 = GetCurrentResourceName
    L17_2 = L17_2()
    L18_2 = "server/ldoor_file/Doors.json"
    L19_2 = json
    L19_2 = L19_2.encode
    L20_2 = L14_2
    L21_2 = {}
    L21_2.indent = true
    L19_2 = L19_2(L20_2, L21_2)
    L20_2 = -1
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = TriggerClientEvent
    L17_2 = "guille_doorlock:client:refreshDoors"
    L18_2 = -1
    L19_2 = L15_2
    L16_2(L17_2, L18_2, L19_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = L4_1
L6_1 = "guille_doorlock:server:addDoubleDoor"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L8_2 = source
  L9_2 = exports
  L9_2 = L9_2.striano_core
  L10_2 = L9_2
  L9_2 = L9_2.IsAdmin
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 then
    L9_2 = LoadResourceFile
    L10_2 = GetCurrentResourceName
    L10_2 = L10_2()
    L11_2 = "server/ldoor_file/Doors.json"
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = json
    L10_2 = L10_2.decode
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
    L10_2 = false
    L11_2 = false
    L12_2 = false
    if "" ~= A5_2 then
      L11_2 = true
    end
    if "" ~= A6_2 then
      L10_2 = true
    end
    if nil == A7_2 then
      L12_2 = true
    end
    L13_2 = {}
    L13_2._doorsDouble = A0_2
    L13_2._type = A1_2
    L13_2._textCoords = A2_2
    L13_2.dist = A3_2
    L13_2.jobs = A4_2
    L13_2.usePin = L11_2
    L13_2.pin = A5_2
    L13_2.useitem = L10_2
    L13_2.item = A6_2
    L13_2.status = L12_2
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L9_2
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = SaveResourceFile
    L15_2 = GetCurrentResourceName
    L15_2 = L15_2()
    L16_2 = "server/ldoor_file/Doors.json"
    L17_2 = json
    L17_2 = L17_2.encode
    L18_2 = L9_2
    L19_2 = {}
    L19_2.indent = true
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = -1
    L14_2(L15_2, L16_2, L17_2, L18_2)
    L14_2 = TriggerClientEvent
    L15_2 = "guille_doorlock:client:refreshDoors"
    L16_2 = -1
    L17_2 = L13_2
    L14_2(L15_2, L16_2, L17_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = L4_1
L6_1 = "guille_doorlock:server:updateDoor"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L2_1
  L2_2[A0_2] = A1_2
  L2_2 = TriggerClientEvent
  L3_2 = "guille_doorlock:client:updateDoorState"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = L4_1
L6_1 = "guille_doorlock:server:syncRemove"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = LoadResourceFile
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "server/ldoor_file/Doors.json"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = json
    L3_2 = L3_2.decode
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = L2_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = SaveResourceFile
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L5_2 = "server/ldoor_file/Doors.json"
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = L2_2
    L8_2 = {}
    L8_2.indent = true
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = -1
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = TriggerClientEvent
    L4_2 = "guille_doorlock:client:removeGlobDoor"
    L5_2 = -1
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = L0_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.IsAdmin
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "guille_doorlock:client:setUpDoor"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L8_1 = false
L5_1(L6_1, L7_1, L8_1)
L5_1 = RegisterCommand
L6_1 = L1_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.IsAdmin
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "guille_doorlock:client:deleteDoor"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L8_1 = false
L5_1(L6_1, L7_1, L8_1)
