local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1
L0_1 = 50.0
L1_1 = 2.5
L2_1 = 35.0
L3_1 = 0.5
L4_1 = 1000
L5_1 = 8.0
L6_1 = 1.5
L7_1 = math
L7_1 = L7_1.cos
L8_1 = math
L8_1 = L8_1.sin
L9_1 = math
L9_1 = L9_1.min
L10_1 = math
L10_1 = L10_1.max
L11_1 = table
L11_1 = L11_1.insert
L12_1 = math
L12_1 = L12_1.pi
L12_1 = L12_1 / 180.0
L13_1 = nil
L14_1 = nil
L15_1 = vector3
L16_1 = 0
L17_1 = 0
L18_1 = 0
L15_1 = L15_1(L16_1, L17_1, L18_1)
L16_1 = nil
L17_1 = L1_1
L18_1 = L2_1
L19_1 = L1_1
L20_1 = 0.0
L21_1 = 0.0
L22_1 = {}
L23_1 = 14
L24_1 = 15
L25_1 = 16
L26_1 = 17
L27_1 = 81
L28_1 = 82
L29_1 = 99
L22_1[1] = L23_1
L22_1[2] = L24_1
L22_1[3] = L25_1
L22_1[4] = L26_1
L22_1[5] = L27_1
L22_1[6] = L28_1
L22_1[7] = L29_1
function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetShapeTestResult
  L4_2 = _ENV
  L5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A1_2.x
  L9_2 = A1_2.y
  L10_2 = A1_2.z
  L11_2 = -1
  L12_2 = A2_2
  L13_2 = 4
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsInputDisabled
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L5_1
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = L6_1
  ::lbl_10::
  L1_2 = L21_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 - L2_2
  L21_1 = L1_2
  L1_2 = L20_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 + L2_2
  L20_1 = L1_2
  L1_2 = L10_1
  L2_2 = L9_1
  L3_2 = L20_1
  L4_2 = 89.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = -89.0
  L1_2 = L1_2(L2_2, L3_2)
  L20_1 = L1_2
  L1_2 = L19_1
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 16
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 17
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  L3_2 = L3_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L19_1 = L1_2
  L1_2 = L10_1
  L2_2 = L9_1
  L3_2 = L19_1
  L4_2 = L18_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L17_1
  L1_2 = L1_2(L2_2, L3_2)
  L19_1 = L1_2
  L1_2 = L14_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L14_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L14_1
      L1_2 = L1_2(L2_2)
      L2_2 = L16_1
      L1_2 = L1_2 + L2_2
      L15_1 = L1_2
    end
  end
  L1_2 = L7_1
  L2_2 = L20_1
  L3_2 = L12_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L7_1
  L4_2 = L21_1
  L5_2 = L12_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = L8_1
  L5_2 = L21_1
  L6_2 = L12_1
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L8_1
  L6_2 = L20_1
  L7_2 = L12_1
  L6_2 = L6_2 * L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = L19_1
  L2_2 = L2_2 * L3_2
  L3_2 = L15_1
  L3_2 = L3_2 + L2_2
  L4_2 = L14_1
  if not L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
  end
  L5_2 = GetCamMatrix
  L6_2 = L13_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2 * 0.125
  L9_2 = L7_2 * 0.07
  L10_2 = {}
  L11_2 = {}
  L12_2 = L23_1
  L13_2 = L15_1
  L14_2 = L3_2 + L8_2
  L14_2 = L14_2 + L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[1] = L11_2
  L11_2 = {}
  L12_2 = L23_1
  L13_2 = L15_1
  L14_2 = L3_2 + L8_2
  L14_2 = L14_2 - L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[2] = L11_2
  L11_2 = {}
  L12_2 = L23_1
  L13_2 = L15_1
  L14_2 = L3_2 - L8_2
  L14_2 = L14_2 - L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[3] = L11_2
  L11_2 = {}
  L12_2 = L23_1
  L13_2 = L15_1
  L14_2 = L3_2 - L8_2
  L14_2 = L14_2 + L9_2
  L15_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2[4] = L11_2
  L11_2 = L19_1
  L12_2 = 1
  L13_2 = #L10_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L10_2[L15_2]
    L16_2 = L16_2[1]
    if L16_2 then
      L16_2 = L15_1
      L17_2 = L10_2[L15_2]
      L17_2 = L17_2[2]
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if L11_2 > L16_2 then
        L11_2 = L16_2
      end
    end
  end
  L12_2 = L19_1
  L12_2 = L11_2 / L12_2
  L2_2 = L2_2 * L12_2
  L12_2 = L15_1
  L12_2 = L12_2 + L2_2
  return L12_2
end
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = ipairs
  L1_2 = L22_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = L24_1
  L0_2 = L0_2()
  L1_2 = SetCamCoord
  L2_2 = L13_1
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PointCamAtCoord
  L2_2 = L13_1
  L3_2 = L15_1.x
  L4_2 = L15_1.y
  L5_2 = L15_1.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetFocusPosAndVel
  L2_2 = L15_1.x
  L3_2 = L15_1.y
  L4_2 = L15_1.z
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L26_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "^1[ERROR] %s^0"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = ...
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
function L27_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = L13_1
  if L5_2 then
    return
  end
  L5_2 = ClearFocus
  L5_2()
  if A1_2 then
    L14_1 = A1_2
    L16_1 = A0_2
    L5_2 = GetEntityCoords
    L6_2 = L14_1
    L5_2 = L5_2(L6_2)
    L6_2 = L16_1
    L5_2 = L5_2 + L6_2
    L15_1 = L5_2
  else
    L15_1 = A0_2
  end
  L5_2 = GetModelDimensions
  L6_2 = GetEntityModel
  L7_2 = A1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2)
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if nil == A3_2 or nil == A4_2 then
    L7_2 = L1_1
    L17_1 = L7_2
    L7_2 = L2_1
    L18_1 = L7_2
    L7_2 = L17_1
    L8_2 = 0.5
    if L7_2 < L8_2 then
      L7_2 = 0.5
      L17_1 = L7_2
      L7_2 = 25.0
      L18_1 = L7_2
    end
  else
    L7_2 = A3_2 + 0.0
    L17_1 = L7_2
    L7_2 = A4_2 + 0.0
    L18_1 = L7_2
  end
  L7_2 = L17_1
  L19_1 = L7_2
  L7_2 = GetGameplayCamRot
  L8_2 = 2
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2.x
  L8_2 = -L8_2
  L20_1 = L8_2
  L8_2 = L7_2.z
  L8_2 = L8_2 - 90
  L21_1 = L8_2
  L8_2 = CreateCamWithParams
  L9_2 = "DEFAULT_SCRIPTED_CAMERA"
  L10_2 = L15_1.x
  L11_2 = L15_1.y
  L12_2 = L15_1.z
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = GetGameplayCamFov
  L16_2 = L16_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L13_1 = L8_2
  L8_2 = SetCamActive
  L9_2 = L13_1
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = RenderScriptCams
  L9_2 = true
  L10_2 = true
  L11_2 = A2_2 or L11_2
  if not A2_2 then
    L11_2 = L4_1
  end
  L12_2 = true
  L13_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = SetCamNearClip
  L9_2 = L13_1
  L10_2 = 0.05
  L8_2(L9_2, L10_2)
  L8_2 = SetCamFov
  L9_2 = L13_1
  L10_2 = L0_1
  L8_2(L9_2, L10_2)
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3
    while true do
      L0_3 = L13_1
      if nil == L0_3 then
        break
      end
      L0_3 = L25_1
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L8_2(L9_2)
end
StartOrbitCam = L27_1
L27_1 = exports
L28_1 = "StartOrbitCam"
L29_1 = StartOrbitCam
L27_1(L28_1, L29_1)
L27_1 = exports
L28_1 = "updateFOVcam"
function L29_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L13_1
  if L1_2 then
    if 1 == A0_2 then
      L1_2 = L0_1
      L2_2 = 0.5
      if L1_2 > L2_2 then
        L1_2 = L0_1
        L1_2 = L1_2 - 0.7
        L0_1 = L1_2
        L1_2 = SetCamFov
        L2_2 = L13_1
        L3_2 = L0_1
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = L0_1
      L2_2 = 89.5
      if L1_2 < L2_2 then
        L1_2 = L0_1
        L1_2 = L1_2 + 0.7
        L0_1 = L1_2
        L1_2 = SetCamFov
        L2_2 = L13_1
        L3_2 = L0_1
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L13_1
  if nil == L1_2 then
    return
  end
  L1_2 = ClearFocus
  L1_2()
  L1_2 = 50.0
  L0_1 = L1_2
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = true
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = L4_1
  end
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = L13_1
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L13_1 = L1_2
  L1_2 = nil
  L14_1 = L1_2
end
EndOrbitCam = L27_1
L27_1 = exports
L28_1 = "EndOrbitCam"
L29_1 = EndOrbitCam
L27_1(L28_1, L29_1)
function L27_1()
  local L0_2, L1_2
  L0_2 = L13_1
  L0_2 = nil ~= L0_2
  return L0_2
end
IsOrbitCamActive = L27_1
L27_1 = exports
L28_1 = "IsOrbitCamActive"
L29_1 = IsOrbitCamActive
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L14_1
  end
  L1_2 = A0_2 == L1_2
  return L1_2
end
IsEntityBeingTracked = L27_1
L27_1 = exports
L28_1 = "IsEntityBeingTracked"
L29_1 = IsEntityBeingTracked
L27_1(L28_1, L29_1)
function L27_1()
  local L0_2, L1_2
  L0_2 = L14_1
  return L0_2
end
GetTrackedEntity = L27_1
L27_1 = exports
L28_1 = "GetTrackedEntity"
L29_1 = GetTrackedEntity
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2
  L14_1 = A0_2
end
SetTrackedEntity = L27_1
L27_1 = exports
L28_1 = "ChangeTrackedEntity"
L29_1 = SetTrackedEntity
L27_1(L28_1, L29_1)
