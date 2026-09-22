local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = nil
L1_1 = 0.0
L2_1 = false
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  if not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.z
  L3_2 = -200.0
  L2_2 = L2_2 > L3_2
  return L2_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = noclipEntity
  if not L1_2 then
    L1_2 = L0_2
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = RaycastGround
  L4_2 = L2_2
  L5_2 = 1000.0
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_1
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = vector3
    L6_2 = L2_2.x
    L7_2 = L2_2.y
    L8_2 = L4_2.z
    L8_2 = L8_2 + 1.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L0_1 = L5_2
    L5_2 = GetEntityHeading
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L1_1 = L5_2
    L5_2 = IsPedInAnyVehicle
    L6_2 = L0_2
    L7_2 = false
    L5_2 = L5_2(L6_2, L7_2)
    L2_1 = L5_2
  end
end
UpdateLastSafePos = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    A1_2 = 1500.0
  end
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L5_2 = L5_2 + 2.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = vector3
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L6_2 = L6_2 - A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = StartShapeTestRay
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = 17
  L12_2 = PlayerPedId
  L12_2 = L12_2()
  L13_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = GetShapeTestResult
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  if 1 == L6_2 then
    L10_2 = true
    L11_2 = L7_2
    return L10_2, L11_2
  end
  L10_2 = false
  L11_2 = nil
  return L10_2, L11_2
end
RaycastGround = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetGroundZFor_3dCoord
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2 + 0.0
  L7_2 = false
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L5_2 = true
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L5_2 = A2_2
  L6_2 = A2_2 - 1500.0
  L7_2 = -25.0
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = GetGroundZFor_3dCoord
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = L8_2 + 0.0
    L13_2 = false
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L4_2 = L10_2
    L3_2 = L9_2
    if L3_2 then
      L9_2 = true
      L10_2 = L4_2
      return L9_2, L10_2
    end
  end
  L5_2 = false
  L6_2 = nil
  return L5_2, L6_2
end
L5_1 = {}
L6_1 = {}
L6_1.openKey = 168
L6_1.goUp = 44
L6_1.goDown = 38
L6_1.turnLeft = 34
L6_1.turnRight = 35
L6_1.goForward = 32
L6_1.goBackward = 33
L6_1.changeSpeed = 21
L5_1.controls = L6_1
L6_1 = {}
L7_1 = {}
L7_1.label = "Slow"
L7_1.speed = 1
L8_1 = {}
L8_1.label = "Normal"
L8_1.speed = 2
L9_1 = {}
L9_1.label = "Fast"
L9_1.speed = 10
L10_1 = {}
L10_1.label = "Ultra"
L10_1.speed = 35
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L5_1.speeds = L6_1
L6_1 = {}
L6_1.y = 0.1
L6_1.z = 0.1
L6_1.h = 2
L5_1.offsets = L6_1
L5_1.bgR = 0
L5_1.bgG = 0
L5_1.bgB = 0
L5_1.bgA = 80
confignoclip = L5_1
noclipActive = false
index = 1
L5_1 = true
L6_1 = nil
L7_1 = nil
L8_1 = 0.0
L9_1 = nil
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  noclipActive = false
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityHeading
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.notify
  L4_2 = ""
  L2_2(L3_2, L4_2)
  L2_2 = ExecuteCommand
  L3_2 = "e c"
  L2_2(L3_2)
  index = 1
  L2_2 = confignoclip
  L2_2 = L2_2.speeds
  L3_2 = index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.speed
  L6_1 = L2_2
  L2_2 = confignoclip
  L2_2 = L2_2.speeds
  L3_2 = index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.label
  L7_1 = L2_2
  L2_2 = L5_1
  if not L2_2 then
    L2_2 = SetEntityVisible
    L3_2 = L9_1
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = true
    L5_1 = L2_2
  end
  L2_2 = EndCameraAdmin
  L2_2()
  L2_2 = SetEntityCollision
  L3_2 = L9_1
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L9_1
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = L9_1
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetVehicleRadioEnabled
  L3_2 = L9_1
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityHeading
  L3_2 = L0_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ResetEntityAlpha
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = EndCameraAdmin
  L2_2()
end
stopNoClipNoGround = L10_1
L10_1 = RegisterCommand
L11_1 = "np"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetVehiclePedIsEntering
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if nil ~= L3_2 and 0 ~= L3_2 then
    return
  end
  L4_2 = IsPedTryingToEnterALockedVehicle
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L4_2 then
    return
  end
  L4_2 = LocalPlayer
  L4_2 = L4_2.state
  L4_2 = L4_2.adminLevel
  if not L4_2 then
    L4_2 = 0
  end
  if 0 == L4_2 then
    L5_2 = print
    L6_2 = "Not allowed."
    L5_2(L6_2)
    return
  end
  L5_2 = noclipActive
  L5_2 = not L5_2
  noclipActive = L5_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsPedInAnyVehicle
  L7_2 = L5_2
  L8_2 = false
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = GetVehiclePedIsIn
    L7_2 = L5_2
    L8_2 = false
    L6_2 = L6_2(L7_2, L8_2)
    L9_1 = L6_2
  else
    L9_1 = L5_2
  end
  L6_2 = confignoclip
  L6_2 = L6_2.speeds
  L7_2 = index
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.speed
  L6_1 = L6_2
  L6_2 = confignoclip
  L6_2 = L6_2.speeds
  L7_2 = index
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.label
  L7_1 = L6_2
  L6_2 = ExecuteCommand
  L7_2 = "fixcrouch"
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_combat
  L7_2 = L6_2
  L6_2 = L6_2.fodera2
  L6_2(L7_2)
  L6_2 = noclipActive
  if L6_2 then
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.notify
    L8_2 = "No-Clip "
    L9_2 = L7_1
    L10_2 = "."
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2(L7_2, L8_2)
    L6_2 = GetEntityHeading
    L7_2 = L9_1
    L6_2 = L6_2(L7_2)
    L8_1 = L6_2
    L6_2 = vainoclip
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2 = L7_2()
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = false
    L5_1 = L6_2
    L6_2 = FreeCameraAdmin
    L6_2()
    L6_2 = SetEntityVisible
    L7_2 = L9_1
    L8_2 = L5_1
    L6_2(L7_2, L8_2)
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.stopsuperjump
    L6_2(L7_2)
    L6_2 = SetEntityCollision
    L7_2 = L9_1
    L8_2 = noclipActive
    L8_2 = not L8_2
    L9_2 = noclipActive
    L9_2 = not L9_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = FreezeEntityPosition
    L7_2 = L9_1
    L8_2 = noclipActive
    L6_2(L7_2, L8_2)
    L6_2 = SetEntityInvincible
    L7_2 = L9_1
    L8_2 = noclipActive
    L6_2(L7_2, L8_2)
    L6_2 = SetVehicleRadioEnabled
    L7_2 = L9_1
    L8_2 = false
    L6_2(L7_2, L8_2)
  else
    L6_2 = stopNoClipNoGround
    L6_2()
  end
end
L10_1(L11_1, L12_1)
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedLegIkMode
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanHeadIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanArmIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = noclipActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = SetPedLegIkMode
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetPedCanHeadIk
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetPedCanArmIk
    L1_3 = L0_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
disableIK = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = disableIK
    L0_3()
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = noclipActive
      if L0_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = confignoclip
        L2_3 = L2_3.controls
        L2_3 = L2_3.goUp
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 44
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 23
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 75
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 27
        L2_3 = 75
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = exports
        L0_3 = L0_3.striano_editor
        L1_3 = L0_3
        L0_3 = L0_3.eInteractPos
        L0_3 = L0_3(L1_3)
        if nil == L0_3 then
          L0_3 = draw
          L1_3 = 21
          L2_3 = "Change Speed"
          L3_3 = 44
          L4_3 = "Up"
          L5_3 = 38
          L6_3 = "Down"
          L7_3 = 26
          L8_3 = "Hide"
          L9_3 = 36
          L10_3 = "Stop"
          L11_3 = 22
          L12_3 = "Stop & Ground"
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
        else
          L0_3 = draw
          L1_3 = 44
          L2_3 = "Up"
          L3_3 = 38
          L4_3 = "Down"
          L5_3 = 26
          L6_3 = "Hide"
          L7_3 = 36
          L8_3 = "Stop"
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        end
        L0_3 = UpdateLastSafePos
        L0_3()
        L0_3 = 0.0
        L1_3 = 0.0
        L2_3 = index
        if 1 ~= L2_3 then
          L2_3 = exports
          L2_3 = L2_3.striano_editor
          L3_3 = L2_3
          L2_3 = L2_3.eInteractPos
          L2_3 = L2_3(L3_3)
          if nil ~= L2_3 then
            L2_3 = confignoclip
            L2_3 = L2_3.speeds
            L2_3 = L2_3[1]
            L2_3 = L2_3.speed
            L6_1 = L2_3
            L2_3 = confignoclip
            L2_3 = L2_3.speeds
            L2_3 = L2_3[1]
            L2_3 = L2_3.label
            L7_1 = L2_3
            index = 1
          end
        end
        L2_3 = IsControlJustPressed
        L3_3 = 1
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.changeSpeed
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = exports
          L2_3 = L2_3.striano_editor
          L3_3 = L2_3
          L2_3 = L2_3.eInteractPos
          L2_3 = L2_3(L3_3)
          if nil == L2_3 then
            L2_3 = index
            if L2_3 < 4 then
              L2_3 = index
              L2_3 = L2_3 + 1
              index = L2_3
              L2_3 = confignoclip
              L2_3 = L2_3.speeds
              L3_3 = index
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3.speed
              L6_1 = L2_3
              L2_3 = confignoclip
              L2_3 = L2_3.speeds
              L3_3 = index
              L2_3 = L2_3[L3_3]
              L2_3 = L2_3.label
              L7_1 = L2_3
            else
              L2_3 = confignoclip
              L2_3 = L2_3.speeds
              L2_3 = L2_3[1]
              L2_3 = L2_3.speed
              L6_1 = L2_3
              L2_3 = confignoclip
              L2_3 = L2_3.speeds
              L2_3 = L2_3[1]
              L2_3 = L2_3.label
              L7_1 = L2_3
              index = 1
            end
            L2_3 = exports
            L2_3 = L2_3.striano_combat
            L3_3 = L2_3
            L2_3 = L2_3.notify
            L4_3 = "No-Clip "
            L5_3 = L7_1
            L6_3 = "."
            L4_3 = L4_3 .. L5_3 .. L6_3
            L2_3(L3_3, L4_3)
          end
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.goForward
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = confignoclip
          L2_3 = L2_3.offsets
          L0_3 = L2_3.y
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.goBackward
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = confignoclip
          L2_3 = L2_3.offsets
          L2_3 = L2_3.y
          L0_3 = -L2_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.turnLeft
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = L8_1
          L3_3 = confignoclip
          L3_3 = L3_3.offsets
          L3_3 = L3_3.h
          L2_3 = L2_3 + L3_3
          L8_1 = L2_3
        end
        L2_3 = IsControlPressed
        L3_3 = 0
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.turnRight
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = L8_1
          L3_3 = confignoclip
          L3_3 = L3_3.offsets
          L3_3 = L3_3.h
          L2_3 = L2_3 - L3_3
          L8_1 = L2_3
        end
        L2_3 = IsDisabledControlPressed
        L3_3 = 0
        L4_3 = confignoclip
        L4_3 = L4_3.controls
        L4_3 = L4_3.goUp
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = confignoclip
          L2_3 = L2_3.offsets
          L1_3 = L2_3.z
        end
        L2_3 = IsDisabledControlJustReleased
        L3_3 = 0
        L4_3 = 26
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 21
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = L5_1
            if not L2_3 then
              L2_3 = true
              L5_1 = L2_3
              L2_3 = GetEntityRotation
              L3_3 = L9_1
              L2_3 = L2_3(L3_3)
              L3_3 = SetEntityRotation
              L4_3 = L9_1
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = L2_3.z
              L3_3(L4_3, L5_3, L6_3, L7_3)
              L3_3 = EndCameraAdmin
              L3_3()
            else
              L2_3 = false
              L5_1 = L2_3
              L2_3 = FreeCameraAdmin
              L2_3()
            end
            L2_3 = SetEntityVisible
            L3_3 = L9_1
            L4_3 = L5_1
            L2_3(L3_3, L4_3)
          end
        end
        L2_3 = IsPedInAnyVehicle
        L3_3 = A0_2
        L4_3 = false
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = confignoclip
          L4_3 = L4_3.controls
          L4_3 = L4_3.goDown
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsDisabledControlPressed
            L3_3 = 0
            L4_3 = confignoclip
            L4_3 = L4_3.controls
            L4_3 = L4_3.goDown
            L2_3 = L2_3(L3_3, L4_3)
          end
          if L2_3 then
            L2_3 = confignoclip
            L2_3 = L2_3.offsets
            L2_3 = L2_3.z
            L1_3 = -L2_3
          end
        else
          L2_3 = IsControlPressed
          L3_3 = 0
          L4_3 = 73
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsDisabledControlPressed
            L3_3 = 0
            L4_3 = 73
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              goto lbl_285
            end
          end
          L2_3 = confignoclip
          L2_3 = L2_3.offsets
          L2_3 = L2_3.z
          L1_3 = -L2_3
        end
        ::lbl_285::
        L2_3 = GetOffsetFromEntityInWorldCoords
        L3_3 = L9_1
        L4_3 = 0.0
        L5_3 = L6_1
        L5_3 = L5_3 + 0.1
        L5_3 = L0_3 * L5_3
        L6_3 = L6_1
        L6_3 = L6_3 + 0.1
        L6_3 = L1_3 * L6_3
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        L3_3 = GetEntityHeading
        L4_3 = A0_2
        L3_3 = L3_3(L4_3)
        L4_3 = L8_1
        if L3_3 ~= L4_3 then
          L3_3 = SetEntityHeading
          L4_3 = L9_1
          L5_3 = L8_1
          L3_3(L4_3, L5_3)
        end
        L3_3 = SetEntityCoordsNoOffset
        L4_3 = L9_1
        L5_3 = L2_3.x
        L6_3 = L2_3.y
        L7_3 = L2_3.z
        L8_3 = noclipActive
        L9_3 = noclipActive
        L10_3 = noclipActive
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 36
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 21
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = stopNoClipNoGround
            L3_3()
            return
          end
        end
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = exports
            L3_3 = L3_3.striano_editor
            L4_3 = L3_3
            L3_3 = L3_3.eInteractPos
            L3_3 = L3_3(L4_3)
            if nil == L3_3 then
              L3_3 = stopNoClip
              L3_3()
              return
            end
          end
        end
      else
        return
      end
    end
  end
  L1_2(L2_2)
end
vainoclip = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  noclipActive = false
  L0_2 = ExecuteCommand
  L1_2 = "e c"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.notify
  L2_2 = ""
  L0_2(L1_2, L2_2)
  index = 1
  L0_2 = confignoclip
  L0_2 = L0_2.speeds
  L1_2 = index
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.speed
  L6_1 = L0_2
  L0_2 = confignoclip
  L0_2 = L0_2.speeds
  L1_2 = index
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.label
  L7_1 = L0_2
  L0_2 = L5_1
  if not L0_2 then
    L0_2 = SetEntityVisible
    L1_2 = L9_1
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = true
    L5_1 = L0_2
  end
  L0_2 = ResetEntityAlpha
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L0_2 = EndCameraAdmin
  L0_2()
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L9_1
  if not L1_2 then
    L1_2 = L0_2
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = RaycastGround
  L4_2 = L2_2
  L5_2 = 2000.0
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 and L4_2 then
    L5_2 = L4_2.z
    L5_2 = L5_2 + 1.0
    L6_2 = SetEntityCoordsNoOffset
    L7_2 = L1_2
    L8_2 = L2_2.x
    L9_2 = L2_2.y
    L10_2 = L5_2
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L5_2 = L4_1
    L6_2 = L2_2.x
    L7_2 = L2_2.y
    L8_2 = L2_2.z
    L8_2 = L8_2 + 200.0
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 and L6_2 then
      L7_2 = SetEntityCoordsNoOffset
      L8_2 = L1_2
      L9_2 = L2_2.x
      L10_2 = L2_2.y
      L11_2 = L6_2 + 1.0
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L7_2 = L0_1
      if L7_2 then
        L7_2 = SetEntityCoordsNoOffset
        L8_2 = L1_2
        L9_2 = L0_1.x
        L10_2 = L0_1.y
        L11_2 = L0_1.z
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L7_2 = SetEntityHeading
        L8_2 = L1_2
        L9_2 = L1_1
        if not L9_2 then
          L9_2 = GetEntityHeading
          L10_2 = L1_2
          L9_2 = L9_2(L10_2)
        end
        L7_2(L8_2, L9_2)
      else
        L7_2 = SetEntityCoordsNoOffset
        L8_2 = L1_2
        L9_2 = L2_2.x
        L10_2 = L2_2.y
        L11_2 = L2_2.z
        L11_2 = L11_2 + 50.0
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L5_2 = RequestCollisionAtCoord
  L6_2 = GetEntityCoords
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = SetEntityCollision
  L6_2 = L1_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L1_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityInvincible
  L6_2 = L1_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = ResetEntityAlpha
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = SetVehicleRadioEnabled
  L6_2 = L1_2
  L7_2 = false
  L5_2(L6_2, L7_2)
end
stopNoClip = L10_1
L10_1 = exports
L11_1 = "inNoClip"
function L12_1()
  local L0_2, L1_2
  L0_2 = noclipActive
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "stopNoClip"
function L12_1()
  local L0_2, L1_2
  L0_2 = stopNoClipNoGround
  L0_2()
end
L10_1(L11_1, L12_1)
L10_1 = nil
L11_1 = 0.0
L12_1 = 0.0
L13_1 = 0.0
L14_1 = 0.5
L15_1 = nil
function L16_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L10_1
      if L0_3 then
        L0_3 = ProcessCamControlsAdmin
        L0_3()
      else
        L0_3 = EndCameraAdmin
        L0_3()
        return
      end
    end
  end
  L0_2(L1_2)
end
loopAdminCamera = L16_1
L16_1 = RegisterCommand
L17_1 = "getcamrot"
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L10_1
  if nil ~= L0_2 then
    L0_2 = GetCamRot
    L1_2 = L10_1
    L2_2 = 0
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = print
    L2_2 = "Cam Rotation: "
    L3_2 = L0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = GetCamCoord
    L2_2 = L10_1
    L1_2 = L1_2(L2_2)
    L2_2 = print
    L3_2 = "Cam Coords: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
end
L16_1(L17_1, L18_1)
L16_1 = 60
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ClearFocus
  L0_2()
  L0_2 = GetGameplayCamRot
  L1_2 = 2
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.x
  L11_1 = L1_2
  L1_2 = L0_2.y
  L12_1 = L1_2
  L1_2 = L0_2.z
  L13_1 = L1_2
  L1_2 = CreateCamWithParams
  L2_2 = "DEFAULT_SCRIPTED_CAMERA"
  L3_2 = GetEntityCoords
  L4_2 = L9_1
  L3_2 = L3_2(L4_2)
  L4_2 = L11_1
  L5_2 = L12_1
  L6_2 = L13_1
  L7_2 = L16_1
  L7_2 = L7_2 * 1.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L10_1 = L1_2
  L1_2 = GetCamCoord
  L2_2 = L10_1
  L1_2 = L1_2(L2_2)
  L15_1 = L1_2
  L1_2 = SetCamActive
  L2_2 = L10_1
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = RenderScriptCams
  L2_2 = true
  L3_2 = false
  L4_2 = 0
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetCamAffectsAiming
  L2_2 = L10_1
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityHeading
  L2_2 = L9_1
  L3_2 = L0_2.z
  L1_2(L2_2, L3_2)
  L1_2 = loopAdminCamera
  L1_2()
end
FreeCameraAdmin = L17_1
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ClearFocus
  L0_2()
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = false
  L3_2 = 0
  L4_2 = true
  L5_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = DestroyCam
  L1_2 = L10_1
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = 0.0
  L11_1 = L0_2
  L0_2 = 0.0
  L12_1 = L0_2
  L0_2 = 0.0
  L13_1 = L0_2
  L0_2 = 60
  L16_1 = L0_2
  L0_2 = nil
  L10_1 = L0_2
end
EndCameraAdmin = L17_1
L17_1 = {}
L18_1 = 24
L19_1 = 36
L20_1 = 44
L21_1 = 38
L22_1 = 85
L23_1 = 86
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L17_1[4] = L21_1
L17_1[5] = L22_1
L17_1[6] = L23_1
L18_1 = 34
L19_1 = 35
L20_1 = 5.0
L21_1 = 6.0
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = pairs
  L1_2 = L17_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = L11_1
  L1_2 = GetDisabledControlNormal
  L2_2 = 1
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L20_1
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2 - L1_2
  L11_1 = L0_2
  L0_2 = L13_1
  L1_2 = GetDisabledControlNormal
  L2_2 = 1
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L20_1
  L1_2 = L1_2 * L2_2
  L0_2 = L0_2 - L1_2
  L13_1 = L0_2
  L0_2 = L11_1
  if L0_2 > 90.0 then
    L0_2 = 90.0
    L11_1 = L0_2
  else
    L0_2 = L11_1
    if L0_2 < -90.0 then
      L0_2 = -90.0
      L11_1 = L0_2
    end
  end
  L0_2 = L12_1
  if L0_2 > 90.0 then
    L0_2 = 90.0
    L12_1 = L0_2
  else
    L0_2 = L12_1
    if L0_2 < -90.0 then
      L0_2 = -90.0
      L12_1 = L0_2
    end
  end
  L0_2 = L13_1
  L1_2 = 360.0
  if L0_2 > L1_2 then
    L0_2 = L13_1
    L0_2 = L0_2 - 360.0
    L13_1 = L0_2
  else
    L0_2 = L13_1
    L1_2 = -360.0
    if L0_2 < L1_2 then
      L0_2 = L13_1
      L0_2 = L0_2 + 360.0
      L13_1 = L0_2
    end
  end
  L0_2 = GetEntityCoords
  L1_2 = L9_1
  L0_2 = L0_2(L1_2)
  L1_2 = IsDisabledControlPressed
  L2_2 = 0
  L3_2 = 14
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L16_1
    if L1_2 > 0 then
      L1_2 = L16_1
      L1_2 = L1_2 - 1.0
      L16_1 = L1_2
      L1_2 = SetCamFov
      L2_2 = L10_1
      L3_2 = L16_1
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = IsDisabledControlPressed
    L2_2 = 0
    L3_2 = 15
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L16_1
      if L1_2 < 120.0 then
        L1_2 = L16_1
        L1_2 = L1_2 + 1.0
        L16_1 = L1_2
        L1_2 = SetCamFov
        L2_2 = L10_1
        L3_2 = L16_1
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = 0.0
  L2_2 = IsDisabledControlPressed
  L3_2 = 0
  L4_2 = L18_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L1_2 = L1_2 - 1.0
  end
  L2_2 = IsDisabledControlPressed
  L3_2 = 0
  L4_2 = L19_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L1_2 = L1_2 + 1.0
  end
  if 0.0 ~= L1_2 then
    L2_2 = GetFrameTime
    L2_2 = L2_2()
    L3_2 = math
    L3_2 = L3_2.rad
    L4_2 = L13_1
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.cos
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = math
    L5_2 = L5_2.sin
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = L6_1
    if nil ~= L6_2 then
      L6_2 = L6_1
      L7_2 = 0.5
      if not (L6_2 < L7_2) then
        goto lbl_156
      end
    end
    L6_2 = 1.0
    L6_1 = L6_2
    ::lbl_156::
    L6_2 = L21_1
    L6_2 = L6_2 * L2_2
    L6_2 = L6_2 * L1_2
    L7_2 = L6_1
    L6_2 = L6_2 * L7_2
    L7_2 = L0_2.x
    L8_2 = L4_2 * L6_2
    L7_2 = L7_2 + L8_2
    L8_2 = L0_2.y
    L9_2 = L5_2 * L6_2
    L8_2 = L8_2 + L9_2
    L9_2 = L0_2.z
    L10_2 = SetEntityCoordsNoOffset
    L11_2 = L9_1
    L12_2 = L7_2
    L13_2 = L8_2
    L14_2 = L9_2
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L10_2 = GetEntityCoords
    L11_2 = L9_1
    L10_2 = L10_2(L11_2)
    L0_2 = L10_2
  end
  L1_2 = SetFocusArea
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = SetCamCoord
  L2_2 = L10_1
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetCamRot
  L2_2 = L10_1
  L3_2 = L11_1
  L4_2 = L12_1
  L5_2 = L13_1
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetEntityRotation
  L2_2 = L9_1
  L3_2 = L11_1
  L4_2 = L12_1
  L5_2 = L13_1
  L6_2 = 2
  L7_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = SetEntityHeading
  L2_2 = L9_1
  L3_2 = L13_1
  L3_2 = L3_2 + 0.0
  L1_2(L2_2, L3_2)
end
ProcessCamControlsAdmin = L22_1
L22_1 = AddEventHandler
L23_1 = "onResourceStart"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    index = 1
    L1_2 = confignoclip
    L1_2 = L1_2.speeds
    L2_2 = index
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.speed
    L6_1 = L1_2
    L1_2 = confignoclip
    L1_2 = L1_2.speeds
    L2_2 = index
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.label
    L7_1 = L1_2
    L1_2 = L5_1
    if not L1_2 then
      L1_2 = SetEntityVisible
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = true
      L5_1 = L1_2
    end
    L1_2 = EndCameraAdmin
    L1_2()
    L1_2 = SetEntityCollision
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = noclipActive
    L3_2 = not L3_2
    L4_2 = noclipActive
    L4_2 = not L4_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = FreezeEntityPosition
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = noclipActive
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityInvincible
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = noclipActive
    L1_2(L2_2, L3_2)
    L1_2 = SetVehicleRadioEnabled
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = false
L23_1 = RegisterCommand
L24_1 = "nohud"
function L25_1()
  local L0_2, L1_2
  L0_2 = L22_1
  L0_2 = not L0_2
  L22_1 = L0_2
  L0_2 = L22_1
  if L0_2 then
    L0_2 = print
    L1_2 = "No hud attivo."
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "No hud disattivo."
    L0_2(L1_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = exports
L24_1 = "nohud"
function L25_1()
  local L0_2, L1_2
  L0_2 = L22_1
  return L0_2
end
L23_1(L24_1, L25_1)
