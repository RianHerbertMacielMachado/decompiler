local L0_1, L1_1, L2_1, L3_1
L0_1 = DoorsPool
if not L0_1 then
  L0_1 = {}
end
DoorsPool = L0_1
L0_1 = DoorEntitiesByPoolId
if not L0_1 then
  L0_1 = {}
end
DoorEntitiesByPoolId = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vector3
  L2_2 = A0_2.x
  L2_2 = L2_2 + 0.0
  L3_2 = A0_2.y
  L3_2 = L3_2 + 0.0
  L4_2 = A0_2.z
  L4_2 = L4_2 + 0.0
  return L1_2(L2_2, L3_2, L4_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = A0_2.poolId
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_8::
  L1_2 = DoorEntitiesByPoolId
  L2_2 = tostring
  L3_2 = A0_2.poolId
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return L1_2
    end
  end
  L2_2 = nil
  return L2_2
end
GetDoorEntity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetDoorEntity
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A1_2.state
  if "open" == L3_2 then
    L3_2 = A1_2.pos2
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = A1_2.pos1
  ::lbl_14::
  if not L3_2 then
    return
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = TransitionEntity
    L1_3 = "Linear"
    L2_3 = L2_2
    L3_3 = vector3
    L4_3 = L3_2.rx
    if not L4_3 then
      L4_3 = 0.0
    end
    L5_3 = L3_2.ry
    if not L5_3 then
      L5_3 = 0.0
    end
    L6_3 = L3_2.rz
    if not L6_3 then
      L6_3 = 0.0
    end
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = vector3
    L5_3 = L3_2.x
    L6_3 = L3_2.y
    L7_3 = L3_2.z
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = 0.5
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L4_2(L5_2)
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetEntityCoords
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  L4_2 = #L4_2
  L5_2 = 5.5
  if L4_2 < L5_2 then
    L4_2 = PlaySoundFrontend
    L5_2 = -1
    L6_2 = "PUSH"
    L7_2 = "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS"
    L8_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
ApplyDoorState = L1_1
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:fullSync"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  DoorsPool = L1_2
  L1_2 = pairs
  L2_2 = DoorsPool
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ApplyDoorState
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:addOrUpdate"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = A0_2.id
    if L1_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = DoorsPool
  L2_2 = tostring
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L1_2[L2_2] = A0_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:setState"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" ~= A0_2 then
    L2_2 = DoorsPool
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = DoorsPool
  L2_2 = L2_2[A0_2]
  L2_2.state = A1_2
  L2_2 = AnimateDoorToState
  L3_2 = A0_2
  L4_2 = DoorsPool
  L4_2 = L4_2[A0_2]
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetDoorEntity
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = A1_2.state
  if "open" == L3_2 then
    L3_2 = A1_2.pos2
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = A1_2.pos1
  ::lbl_14::
  if not L3_2 then
    return
  end
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = TransitionEntity
    L1_3 = "Linear"
    L2_3 = L2_2
    L3_3 = vector3
    L4_3 = L3_2.rx
    if not L4_3 then
      L4_3 = 0.0
    end
    L5_3 = L3_2.ry
    if not L5_3 then
      L5_3 = 0.0
    end
    L6_3 = L3_2.rz
    if not L6_3 then
      L6_3 = 0.0
    end
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = vector3
    L5_3 = L3_2.x
    L6_3 = L3_2.y
    L7_3 = L3_2.z
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = 0.5
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  L4_2(L5_2)
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetEntityCoords
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  L4_2 = #L4_2
  if L4_2 < 2.0 then
    L4_2 = PlaySoundFrontend
    L5_2 = -1
    L6_2 = "PUSH"
    L7_2 = "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS"
    L8_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
AnimateDoorToState = L1_1
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:removeDoor"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    return
  end
  L1_2 = print
  L2_2 = "Door ID removed: "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = DoorsPool
  L1_2[A0_2] = nil
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:onPoolObjectSpawned"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" ~= A0_2 and A1_2 and 0 ~= A1_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L2_2 = DoorEntitiesByPoolId
  L2_2[A0_2] = A1_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:onPoolObjectDespawned"
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    return
  end
  L1_2 = DoorEntitiesByPoolId
  L1_2[A0_2] = nil
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1500
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "animatedDoors:server:requestSync"
  L0_2(L1_2)
end
L1_1(L2_1)
L1_1 = RegisterNetEvent
L2_1 = "animatedDoors:client:applyInstantState"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" ~= A0_2 and A1_2 and 0 ~= A1_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L2_2 = pairs
  L3_2 = DoorsPool
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tostring
    L9_2 = L7_2.poolId
    L8_2 = L8_2(L9_2)
    if L8_2 == A0_2 then
      L8_2 = L7_2.state
      if "open" == L8_2 then
        L8_2 = L7_2.pos2
        if L8_2 then
          goto lbl_39
        end
      end
      L8_2 = L7_2.pos1
      ::lbl_39::
      if not L8_2 then
        return
      end
      L9_2 = SetEntityCoordsNoOffset
      L10_2 = A1_2
      L11_2 = L8_2.x
      L12_2 = L8_2.y
      L13_2 = L8_2.z
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = SetEntityRotation
      L10_2 = A1_2
      L11_2 = L8_2.rx
      if not L11_2 then
        L11_2 = 0.0
      end
      L12_2 = L8_2.ry
      if not L12_2 then
        L12_2 = 0.0
      end
      L13_2 = L8_2.rz
      if not L13_2 then
        L13_2 = 0.0
      end
      L14_2 = 2
      L15_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      break
    end
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = nil ~= A0_2
  return L1_2
end
DoorHasValue = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = 0
  L1_2 = pairs
  L2_2 = DoorsPool
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2 = L0_2 + 1
    L7_2 = 0.0
    L8_2 = L6_2.pos1
    if L8_2 then
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2 = vector3
      L10_2 = L6_2.pos1
      L10_2 = L10_2.x
      L11_2 = L6_2.pos1
      L11_2 = L11_2.y
      L12_2 = L6_2.pos1
      L12_2 = L12_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2 - L9_2
      L7_2 = #L8_2
    end
    L8_2 = "["
    L9_2 = tostring
    L10_2 = L0_2
    L9_2 = L9_2(L10_2)
    L10_2 = "] "
    L11_2 = math
    L11_2 = L11_2.floor
    L12_2 = L7_2
    L11_2 = L11_2(L12_2)
    L12_2 = "m"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L9_2 = L6_2.state
    if "open" == L9_2 then
      L9_2 = "[OPEN]"
      if L9_2 then
        goto lbl_53
      end
    end
    L9_2 = "[CLOSED]"
    ::lbl_53::
    L10_2 = exports
    L10_2 = L10_2.striano_fastmenu
    L11_2 = L10_2
    L10_2 = L10_2.addMenuItemAdvanced
    L12_2 = {}
    L13_2 = L8_2
    L14_2 = "  ("
    L15_2 = L9_2
    L16_2 = ")"
    L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
    L12_2.label = L13_2
    L13_2 = {}
    L14_2 = "Pool ID: "
    L15_2 = tostring
    L16_2 = L6_2.poolId
    if not L16_2 then
      L16_2 = "nil"
    end
    L15_2 = L15_2(L16_2)
    L14_2 = L14_2 .. L15_2
    L15_2 = "Pin: "
    L16_2 = tostring
    L17_2 = L6_2.pin
    if not L17_2 then
      L17_2 = "none"
    end
    L16_2 = L16_2(L17_2)
    L15_2 = L15_2 .. L16_2
    L16_2 = "Key: "
    L17_2 = tostring
    L18_2 = L6_2.chiaveID
    if not L18_2 then
      L18_2 = "none"
    end
    L17_2 = L17_2(L18_2)
    L16_2 = L16_2 .. L17_2
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L12_2.hoverInfo = L13_2
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      L0_3 = L6_2.pos1
      if L0_3 then
        L0_3 = DrawMarker
        L1_3 = 1
        L2_3 = L6_2.pos1
        L2_3 = L2_3.x
        L3_3 = L6_2.pos1
        L3_3 = L3_3.y
        L4_3 = L6_2.pos1
        L4_3 = L4_3.z
        L4_3 = L4_3 + 0.2
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.2
        L12_3 = 0.2
        L13_3 = 0.2
        L14_3 = 0
        L15_3 = 255
        L16_3 = 0
        L17_3 = 120
        L18_3 = false
        L19_3 = false
        L20_3 = 2
        L21_3 = false
        L22_3 = nil
        L23_3 = nil
        L24_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      end
      L0_3 = L6_2.pos2
      if L0_3 then
        L0_3 = DrawMarker
        L1_3 = 1
        L2_3 = L6_2.pos2
        L2_3 = L2_3.x
        L3_3 = L6_2.pos2
        L3_3 = L3_3.y
        L4_3 = L6_2.pos2
        L4_3 = L4_3.z
        L4_3 = L4_3 + 0.2
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0.2
        L12_3 = 0.2
        L13_3 = 0.2
        L14_3 = 255
        L15_3 = 0
        L16_3 = 0
        L17_3 = 120
        L18_3 = false
        L19_3 = false
        L20_3 = 2
        L21_3 = false
        L22_3 = nil
        L23_3 = nil
        L24_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      end
    end
    L12_2.onHover = L13_2
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = L6_2.pos1
      if L1_3 then
        L1_3 = SetEntityCoords
        L2_3 = L0_3
        L3_3 = L6_2.pos1
        L3_3 = L3_3.x
        L4_3 = L6_2.pos1
        L4_3 = L4_3.y
        L5_3 = L6_2.pos1
        L5_3 = L5_3.z
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
    L12_2.onClick = L13_2
    L12_2.autoClose = false
    L10_2(L11_2, L12_2)
  end
  if L0_2 <= 0 then
    L1_2 = exports
    L1_2 = L1_2.striano_fastmenu
    L2_2 = L1_2
    L1_2 = L1_2.addMenuItem
    L3_2 = "No doors loaded"
    function L4_2()
      local L0_3, L1_3
    end
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
OpenDoorsListMenu = L1_1
