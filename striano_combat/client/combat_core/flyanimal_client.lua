local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1
L0_1 = 0
L1_1 = 0.0
L2_1 = false
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = 10
    L2_2 = L2_2 ^ A1_2
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 * L2_2
    L4_2 = L4_2 + 0.5
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 / L2_2
    return L3_2
  else
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2 + 0.5
    return L2_2(L3_2)
  end
end
function L4_1(A0_2)
  local L1_2, L2_2
  if A0_2 >= 0 then
    L1_2 = math
    L1_2 = L1_2.floor
    L2_2 = A0_2 + 0.5
    return L1_2(L2_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2 - 0.5
    return L1_2(L2_2)
  end
end
L5_1 = 2.0
L6_1 = 20.0
L7_1 = 1.0
L8_1 = 1000
L9_1 = 8.0
L10_1 = 1.5
L11_1 = math
L11_1 = L11_1.cos
L12_1 = math
L12_1 = L12_1.sin
L13_1 = math
L13_1 = L13_1.min
L14_1 = math
L14_1 = L14_1.max
L15_1 = table
L15_1 = L15_1.insert
L16_1 = math
L16_1 = L16_1.pi
L16_1 = L16_1 / 180.0
L17_1 = nil
L18_1 = nil
L19_1 = vector3
L20_1 = 0
L21_1 = 0
L22_1 = 0
L19_1 = L19_1(L20_1, L21_1, L22_1)
L20_1 = nil
L21_1 = L5_1
L22_1 = L6_1
L23_1 = L21_1 + L22_1
L23_1 = L23_1 * 0.5
L24_1 = 0.0
L25_1 = 0.0
L26_1 = {}
L27_1 = 14
L28_1 = 15
L29_1 = 16
L30_1 = 17
L31_1 = 81
L32_1 = 82
L33_1 = 99
L26_1[1] = L27_1
L26_1[2] = L28_1
L26_1[3] = L29_1
L26_1[4] = L30_1
L26_1[5] = L31_1
L26_1[6] = L32_1
L26_1[7] = L33_1
function L27_1(A0_2, A1_2, A2_2)
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
  L13_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsInputDisabled
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L9_1
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = L10_1
  ::lbl_10::
  L1_2 = L25_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 - L2_2
  L25_1 = L1_2
  L1_2 = L24_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 + L2_2
  L24_1 = L1_2
  L1_2 = L14_1
  L2_2 = L13_1
  L3_2 = L24_1
  L4_2 = 89.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = -89.0
  L1_2 = L1_2(L2_2, L3_2)
  L24_1 = L1_2
  L1_2 = L23_1
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 16
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 17
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  L3_2 = L7_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L23_1 = L1_2
  L1_2 = L14_1
  L2_2 = L13_1
  L3_2 = L23_1
  L4_2 = L22_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L4_1
  L4_2 = L21_1
  L4_2 = L4_2 / 2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L23_1 = L1_2
  L1_2 = L18_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L18_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L18_1
      L1_2 = L1_2(L2_2)
      L2_2 = L20_1
      L1_2 = L1_2 + L2_2
      L19_1 = L1_2
    end
  end
  L1_2 = L11_1
  L2_2 = L24_1
  L3_2 = L16_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L11_1
  L4_2 = L25_1
  L5_2 = L16_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = L12_1
  L5_2 = L25_1
  L6_2 = L16_1
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L12_1
  L6_2 = L24_1
  L7_2 = L16_1
  L6_2 = L6_2 * L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = L23_1
  L2_2 = L2_2 * L3_2
  L3_2 = L19_1
  L3_2 = L3_2 + L2_2
  L4_2 = L18_1
  if not L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
  end
  L5_2 = GetCamMatrix
  L6_2 = L17_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2 * 0.125
  L9_2 = L7_2 * 0.07
  L10_2 = {}
  L11_2 = {}
  L12_2 = L27_1
  L13_2 = L19_1
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
  L12_2 = L27_1
  L13_2 = L19_1
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
  L12_2 = L27_1
  L13_2 = L19_1
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
  L12_2 = L27_1
  L13_2 = L19_1
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
  L11_2 = L23_1
  L12_2 = 1
  L13_2 = #L10_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L10_2[L15_2]
    L16_2 = L16_2[1]
    if L16_2 then
      L16_2 = L19_1
      L17_2 = L10_2[L15_2]
      L17_2 = L17_2[2]
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if L11_2 > L16_2 then
        L11_2 = L16_2
      end
    end
  end
  L12_2 = L23_1
  L12_2 = L11_2 / L12_2
  L2_2 = L2_2 * L12_2
  L12_2 = L19_1
  L12_2 = L12_2 + L2_2
  return L12_2
end
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = ipairs
  L1_2 = L26_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = L28_1
  L0_2 = L0_2()
  L1_2 = SetCamCoord
  L2_2 = L17_1
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PointCamAtCoord
  L2_2 = L17_1
  L3_2 = L19_1.x
  L4_2 = L19_1.y
  L5_2 = L19_1.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetFocusPosAndVel
  L2_2 = L19_1.x
  L3_2 = L19_1.y
  L4_2 = L19_1.z
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L30_1(A0_2, ...)
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
function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = L17_1
  if L5_2 then
    return
  end
  L5_2 = ClearFocus
  L5_2()
  if A1_2 then
    L18_1 = A1_2
    L20_1 = A0_2
    L5_2 = GetEntityCoords
    L6_2 = L18_1
    L5_2 = L5_2(L6_2)
    L6_2 = L20_1
    L5_2 = L5_2 + L6_2
    L19_1 = L5_2
  else
    L19_1 = A0_2
  end
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = L5_1
  end
  L21_1 = L5_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = L6_1
  end
  L22_1 = L5_2
  L5_2 = L21_1
  L6_2 = L22_1
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 * 0.5
  L23_1 = L5_2
  L5_2 = GetGameplayCamRot
  L6_2 = 2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.x
  L6_2 = -L6_2
  L24_1 = L6_2
  L6_2 = L5_2.z
  L6_2 = L6_2 - 90
  L25_1 = L6_2
  L6_2 = CreateCamWithParams
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = L19_1.x
  L9_2 = L19_1.y
  L10_2 = L19_1.z
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = GetGameplayCamFov
  L14_2 = L14_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L17_1 = L6_2
  L6_2 = SetCamActive
  L7_2 = L17_1
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = RenderScriptCams
  L7_2 = true
  L8_2 = true
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = L8_1
  end
  L10_2 = true
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetCamNearClip
  L7_2 = L17_1
  L8_2 = 0.05
  L6_2(L7_2, L8_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3
    while true do
      L0_3 = L17_1
      if nil == L0_3 then
        break
      end
      L0_3 = L29_1
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
end
StartOrbitCam = L31_1
L31_1 = exports
L32_1 = "StartOrbitCam"
L33_1 = StartOrbitCam
L31_1(L32_1, L33_1)
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L17_1
  if nil == L1_2 then
    return
  end
  L1_2 = ClearFocus
  L1_2()
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = true
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = L8_1
  end
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = L17_1
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L17_1 = L1_2
  L1_2 = nil
  L18_1 = L1_2
end
EndOrbitCam = L31_1
L31_1 = exports
L32_1 = "EndOrbitCam"
L33_1 = EndOrbitCam
L31_1(L32_1, L33_1)
function L31_1()
  local L0_2, L1_2
  L0_2 = L17_1
  L0_2 = nil ~= L0_2
  return L0_2
end
IsOrbitCamActive = L31_1
L31_1 = exports
L32_1 = "IsOrbitCamActive"
L33_1 = IsOrbitCamActive
L31_1(L32_1, L33_1)
function L31_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L18_1
  end
  L1_2 = A0_2 == L1_2
  return L1_2
end
IsEntityBeingTracked = L31_1
L31_1 = exports
L32_1 = "IsEntityBeingTracked"
L33_1 = IsEntityBeingTracked
L31_1(L32_1, L33_1)
function L31_1()
  local L0_2, L1_2
  L0_2 = L18_1
  return L0_2
end
GetTrackedEntity = L31_1
L31_1 = exports
L32_1 = "GetTrackedEntity"
L33_1 = GetTrackedEntity
L31_1(L32_1, L33_1)
L31_1 = nil
L32_1 = 0
L33_1 = false
L34_1 = 1.5
L35_1 = 0.0
L36_1 = false
L37_1 = false
VoloAttivo = false
function L38_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L7_2 = L2_1
  if not L7_2 then
    return
  end
  if A2_2 then
    L7_2 = DrawLine
    L8_2 = A0_2.x
    L9_2 = A0_2.y
    L10_2 = A0_2.z
    L11_2 = A3_2.x
    L12_2 = A3_2.y
    L13_2 = A3_2.z
    L14_2 = 0
    L15_2 = 255
    L16_2 = 80
    L17_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = DrawLine
    L8_2 = A3_2.x
    L9_2 = A3_2.y
    L10_2 = A3_2.z
    L11_2 = A3_2.x
    L12_2 = A4_2.x
    L11_2 = L11_2 + L12_2
    L12_2 = A3_2.y
    L13_2 = A4_2.y
    L12_2 = L12_2 + L13_2
    L13_2 = A3_2.z
    L14_2 = A4_2.z
    L13_2 = L13_2 + L14_2
    L14_2 = 255
    L15_2 = 200
    L16_2 = 0
    L17_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = DrawMarker
    L8_2 = 28
    L9_2 = A3_2.x
    L10_2 = A3_2.y
    L11_2 = A3_2.z
    L11_2 = L11_2 + 0.02
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.08
    L19_2 = 0.08
    L20_2 = 0.08
    L21_2 = 0
    L22_2 = 255
    L23_2 = 80
    L24_2 = 220
    L25_2 = false
    L26_2 = false
    L27_2 = 2
    L28_2 = false
    L29_2 = nil
    L30_2 = nil
    L31_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  else
    L7_2 = DrawLine
    L8_2 = A0_2.x
    L9_2 = A0_2.y
    L10_2 = A0_2.z
    L11_2 = A1_2.x
    L12_2 = A1_2.y
    L13_2 = A1_2.z
    L14_2 = 255
    L15_2 = 40
    L16_2 = 40
    L17_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = DrawMarker
    L8_2 = 28
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A1_2.z
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.06
    L19_2 = 0.06
    L20_2 = 0.06
    L21_2 = 255
    L22_2 = 40
    L23_2 = 40
    L24_2 = 180
    L25_2 = false
    L26_2 = false
    L27_2 = 2
    L28_2 = false
    L29_2 = nil
    L30_2 = nil
    L31_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  end
  L7_2 = exports
  L7_2 = L7_2.striano_core
  L8_2 = L7_2
  L7_2 = L7_2.Debug
  L9_2 = "Ray state"
  L10_2 = A6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = exports
  L7_2 = L7_2.striano_core
  L8_2 = L7_2
  L7_2 = L7_2.Debug
  L9_2 = "Ray hit"
  L10_2 = hasHit
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = exports
  L7_2 = L7_2.striano_core
  L8_2 = L7_2
  L7_2 = L7_2.Debug
  L9_2 = "Distanza"
  L10_2 = "%.2f / %.2f"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = A5_2
  L13_2 = L34_1
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L10_2(L11_2, L12_2, L13_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
end
L39_1 = false
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 * 0.0
  L3_2 = L1_2 + L3_2
  L4_2 = vector3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 + L4_2
  L4_2 = GetEntitySpeed
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  if L4_2 > 12.0 then
    L4_2 = 1.8
    if L4_2 then
      goto lbl_29
    end
  end
  L4_2 = 1.3
  ::lbl_29::
  L34_1 = L4_2
  L4_2 = vector3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = L34_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_2 - L4_2
  L5_2 = _ENV
  L6_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L5_2 = L5_2[L6_2]
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = 1
  L13_2 = L0_2
  L14_2 = 7
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L11_2 = 2 == L6_2 and 1 == L7_2
  if L11_2 then
    L12_2 = L3_2 - L8_2
    L12_2 = #L12_2
    if L12_2 then
      goto lbl_67
    end
  end
  L12_2 = L34_1
  ::lbl_67::
  L13_2 = L38_1
  L14_2 = L3_2
  L15_2 = L4_2
  L16_2 = L11_2
  L17_2 = L8_2
  L18_2 = L9_2
  L19_2 = L12_2
  L20_2 = L6_2
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if L11_2 then
    L13_2 = false
    L33_1 = L13_2
    L13_2 = tutorialfly
    if L13_2 then
      L13_2 = LoopInfoFloor
      L13_2()
    end
    L13_2 = GetGameplayCamRot
    L14_2 = 2
    L13_2 = L13_2(L14_2)
    L14_2 = SetEntityHeading
    L15_2 = L0_2
    L16_2 = L13_2.z
    L14_2(L15_2, L16_2)
    L14_2 = L13_2.z
    L1_1 = L14_2
    L14_2 = L39_1
    if not L14_2 then
      L14_2 = true
      L39_1 = L14_2
    end
  else
    L13_2 = true
    L33_1 = L13_2
    L13_2 = L39_1
    if L13_2 then
      L13_2 = false
      L39_1 = L13_2
    end
  end
  L13_2 = IsPedHuman
  L14_2 = L0_2
  L13_2 = L13_2(L14_2)
  if not L13_2 then
    L13_2 = IsControlJustPressed
    L14_2 = 0
    L15_2 = KeyComeBackHuman
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 then
      L13_2 = L33_1
      if not L13_2 then
        L13_2 = ComeBackHuman
        L13_2()
        return
      end
    end
  end
  L13_2 = IsControlJustReleased
  L14_2 = 0
  L15_2 = 74
  L13_2 = L13_2(L14_2, L15_2)
  if L13_2 then
    L13_2 = tutorialfly
    L13_2 = not L13_2
    tutorialfly = L13_2
  end
  L13_2 = SetEntityProofs
  L14_2 = L0_2
  L15_2 = true
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L22_2 = true
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L13_2 = SetEntityCanBeDamaged
  L14_2 = L0_2
  L15_2 = false
  L13_2(L14_2, L15_2)
  L13_2 = L32_1
  if 0 == L13_2 then
    L13_2 = L31_1
    if nil ~= L13_2 then
      L13_2 = DoesEntityExist
      L14_2 = L31_1
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = GetEntityCoords
        L14_2 = L31_1
        L13_2 = L13_2(L14_2)
        L14_2 = DrawMarker
        L15_2 = 1
        L16_2 = vector3
        L17_2 = L13_2.x
        L18_2 = L13_2.y
        L19_2 = L13_2.z
        L16_2 = L16_2(L17_2, L18_2, L19_2)
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = 0
        L21_2 = 0.0
        L22_2 = 0.0
        L23_2 = 1.0
        L24_2 = 1.0
        L25_2 = 50.0
        L26_2 = 255
        L27_2 = 0
        L28_2 = 110
        L29_2 = 50
        L30_2 = true
        L31_2 = true
        L32_2 = 2
        L33_2 = false
        L34_2 = false
        L35_2 = false
        L36_2 = false
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
        L14_2 = GetEntityCoords
        L15_2 = L0_2
        L14_2 = L14_2(L15_2)
        L14_2 = L14_2 - L13_2
        L14_2 = #L14_2
        L15_2 = 0.5
        if L14_2 < L15_2 then
          L14_2 = AttachEntityToEntity
          L15_2 = L31_1
          L16_2 = L0_2
          L17_2 = GetPedBoneIndex
          L18_2 = L0_2
          L19_2 = 31086
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = 0.1
          L19_2 = -0.01
          L20_2 = -0.07
          L21_2 = 0.0
          L22_2 = 78.5
          L23_2 = 2.0
          L24_2 = true
          L25_2 = true
          L26_2 = false
          L27_2 = true
          L28_2 = 1
          L29_2 = true
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
          L14_2 = OnLetterTake
          L14_2()
          L14_2 = 1
          L32_1 = L14_2
        end
    end
  end
  else
    L13_2 = L32_1
    if 1 == L13_2 then
      L13_2 = deliverLetter
      L14_2 = DrawMarker
      L15_2 = 1
      L16_2 = vector3
      L17_2 = L13_2.x
      L18_2 = L13_2.y
      L19_2 = L13_2.z
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = 0
      L21_2 = 0.0
      L22_2 = 0.0
      L23_2 = 2.5
      L24_2 = 2.5
      L25_2 = 50.0
      L26_2 = 255
      L27_2 = 0
      L28_2 = 110
      L29_2 = 50
      L30_2 = true
      L31_2 = true
      L32_2 = 2
      L33_2 = false
      L34_2 = false
      L35_2 = false
      L36_2 = false
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2)
      L14_2 = GetEntityCoords
      L15_2 = L0_2
      L14_2 = L14_2(L15_2)
      L14_2 = L14_2 - L13_2
      L14_2 = #L14_2
      L15_2 = 2.5
      if L14_2 < L15_2 then
        L14_2 = SetEntityAsMissionEntity
        L15_2 = L31_1
        L14_2(L15_2)
        L14_2 = DeleteEntity
        L15_2 = L31_1
        L14_2(L15_2)
        L14_2 = nil
        L31_1 = L14_2
        L14_2 = 0
        L32_1 = L14_2
        L14_2 = OnLetterDelivered
        L14_2()
      end
    end
  end
end
function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = IsPedHuman
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsPedHuman
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsValidBird
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = L33_1
          if not L1_3 then
            L1_3 = L37_1
            if not L1_3 then
              L1_3 = L36_1
              if not L1_3 then
                goto lbl_40
              end
            end
            L1_3 = false
            L37_1 = L1_3
            L1_3 = false
            L36_1 = L1_3
            L1_3 = SetSeethrough
            L2_3 = false
            L1_3(L2_3)
            L1_3 = SetNightvision
            L2_3 = false
            L1_3(L2_3)
          end
        end
      end
      ::lbl_40::
    end
    VoloAttivo = false
  end
  L1_2(L2_2)
  L1_2 = GetEntityHeading
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_1 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = IsPedHuman
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L2_3 = L2_3 / 1000
      L3_3 = IsPedHuman
      L4_3 = L1_3
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = ExecuteCommand
        L4_3 = commandStopFly
        L3_3(L4_3)
        return
      end
      L3_3 = L40_1
      L3_3()
      L3_3 = L33_1
      if L3_3 then
        L3_3 = L4_1
        L4_3 = GetEntitySpeed
        L5_3 = L1_3
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L4_3(L5_3)
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
        L4_3 = 250 * L2_3
        L5_3 = 0.0
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 34
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L5_3 = 1.5
        else
          L6_3 = IsControlPressed
          L7_3 = 0
          L8_3 = 35
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L5_3 = -1.5
          end
        end
        L6_3 = L1_1
        L7_3 = L5_3 * 100.0
        L8_3 = GetFrameTime
        L8_3 = L8_3()
        L7_3 = L7_3 * L8_3
        L6_3 = L6_3 + L7_3
        L6_3 = L6_3 % 360.0
        L1_1 = L6_3
        L6_3 = SetEntityHeading
        L7_3 = L1_3
        L8_3 = L1_1
        L6_3(L7_3, L8_3)
        L6_3 = SetEntityAngularVelocity
        L7_3 = L1_3
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 33
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = GetEntityRotation
          L7_3 = L1_3
          L6_3 = L6_3(L7_3)
          L7_3 = math
          L7_3 = L7_3.floor
          L8_3 = L6_3.x
          L7_3 = L7_3(L8_3)
          if L7_3 < 83.0 then
            L7_3 = SetEntityRotation
            L8_3 = L1_3
            L9_3 = L6_3.x
            L10_3 = L4_3 / 2
            L9_3 = L9_3 + L10_3
            L10_3 = L6_3.y
            L11_3 = L6_3.z
            L7_3(L8_3, L9_3, L10_3, L11_3)
          else
            L7_3 = SetEntityRotation
            L8_3 = L1_3
            L9_3 = 85.0
            L10_3 = L6_3.y
            L11_3 = L6_3.z
            L7_3(L8_3, L9_3, L10_3, L11_3)
          end
          L7_3 = GetGameTimer
          L7_3 = L7_3()
          L8_3 = L0_1
          L7_3 = L7_3 - L8_3
          L8_3 = 1000
          if L7_3 > L8_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L0_1 = L7_3
            L7_3 = TriggerServerEvent
            L8_3 = "SyncRotationFly"
            L9_3 = GetEntityRotation
            L10_3 = L1_3
            L9_3 = L9_3(L10_3)
            L10_3 = GetEntityCoords
            L11_3 = L1_3
            L10_3 = L10_3(L11_3)
            L11_3 = GetPlayerServerId
            L12_3 = PlayerId
            L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L12_3()
            L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          end
        end
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 32
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = GetEntityRotation
          L7_3 = L1_3
          L6_3 = L6_3(L7_3)
          L7_3 = math
          L7_3 = L7_3.floor
          L8_3 = L6_3.x
          L7_3 = L7_3(L8_3)
          if L7_3 > -83.0 then
            L7_3 = SetEntityRotation
            L8_3 = L1_3
            L9_3 = L6_3.x
            L10_3 = L4_3 / 2
            L9_3 = L9_3 - L10_3
            L10_3 = L6_3.y
            L11_3 = L6_3.z
            L7_3(L8_3, L9_3, L10_3, L11_3)
          else
            L7_3 = SetEntityRotation
            L8_3 = L1_3
            L9_3 = -85.0
            L10_3 = L6_3.y
            L11_3 = L6_3.z
            L7_3(L8_3, L9_3, L10_3, L11_3)
          end
          L7_3 = GetGameTimer
          L7_3 = L7_3()
          L8_3 = L0_1
          L7_3 = L7_3 - L8_3
          L8_3 = 1000
          if L7_3 > L8_3 then
            L7_3 = GetGameTimer
            L7_3 = L7_3()
            L0_1 = L7_3
            L7_3 = TriggerServerEvent
            L8_3 = "SyncRotationFly"
            L9_3 = GetEntityRotation
            L10_3 = L1_3
            L9_3 = L9_3(L10_3)
            L10_3 = GetEntityCoords
            L11_3 = L1_3
            L10_3 = L10_3(L11_3)
            L11_3 = GetPlayerServerId
            L12_3 = PlayerId
            L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L12_3()
            L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          end
        end
        L6_3 = IsControlJustPressed
        L7_3 = 0
        L8_3 = 44
        L6_3 = L6_3(L7_3, L8_3)
        if not L6_3 then
          L6_3 = IsDisabledControlJustPressed
          L7_3 = 0
          L8_3 = 44
          L6_3 = L6_3(L7_3, L8_3)
          if not L6_3 then
            goto lbl_220
          end
        end
        L6_3 = L36_1
        if not L6_3 then
          L6_3 = L37_1
          if L6_3 then
            L6_3 = false
            L37_1 = L6_3
            L6_3 = SetNightvision
            L7_3 = false
            L6_3(L7_3)
          else
            L6_3 = true
            L37_1 = L6_3
            L6_3 = SetNightvision
            L7_3 = true
            L6_3(L7_3)
            goto lbl_249
            ::lbl_220::
            L6_3 = IsControlJustPressed
            L7_3 = 0
            L8_3 = 38
            L6_3 = L6_3(L7_3, L8_3)
            if not L6_3 then
              L6_3 = IsDisabledControlJustPressed
              L7_3 = 0
              L8_3 = 38
              L6_3 = L6_3(L7_3, L8_3)
              if not L6_3 then
                goto lbl_249
              end
            end
            L6_3 = L37_1
            if not L6_3 then
              L6_3 = L36_1
              if L6_3 then
                L6_3 = false
                L36_1 = L6_3
                L6_3 = SetSeethrough
                L7_3 = false
                L6_3(L7_3)
              else
                L6_3 = true
                L36_1 = L6_3
                L6_3 = SetSeethrough
                L7_3 = true
                L6_3(L7_3)
              end
            end
          end
        end
        ::lbl_249::
        L6_3 = InfoLoopWhileFly
        L6_3()
        L6_3 = IsControlJustReleased
        L7_3 = 0
        L8_3 = 22
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = orbitcam
          L6_3 = not L6_3
          orbitcam = L6_3
          L6_3 = orbitcam
          if not L6_3 then
            L6_3 = EndOrbitCam
            L6_3()
          else
            L6_3 = StartOrbitCam
            L7_3 = vector3
            L8_3 = 0.0
            L9_3 = 0.0
            L10_3 = 0.5
            L7_3 = L7_3(L8_3, L9_3, L10_3)
            L8_3 = L1_3
            L6_3(L7_3, L8_3)
          end
        end
        L6_3 = IsControlPressed
        L7_3 = 0
        L8_3 = 21
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 and L3_3 <= 30 then
          L6_3 = IsControlPressed
          L7_3 = 0
          L8_3 = 34
          L6_3 = L6_3(L7_3, L8_3)
          if not L6_3 then
            L6_3 = IsControlPressed
            L7_3 = 0
            L8_3 = 35
            L6_3 = L6_3(L7_3, L8_3)
            if not L6_3 then
              L6_3 = GetEntityRotation
              L7_3 = L1_3
              L8_3 = 2
              L6_3 = L6_3(L7_3, L8_3)
              L7_3 = math
              L7_3 = L7_3.rad
              L8_3 = L6_3.x
              L7_3 = L7_3(L8_3)
              L8_3 = math
              L8_3 = L8_3.rad
              L9_3 = L6_3.y
              L8_3 = L8_3(L9_3)
              L9_3 = math
              L9_3 = L9_3.rad
              L10_3 = L6_3.z
              L9_3 = L9_3(L10_3)
              L10_3 = math
              L10_3 = L10_3.sin
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              L11_3 = math
              L11_3 = L11_3.cos
              L12_3 = L7_3
              L11_3 = L11_3(L12_3)
              L12_3 = math
              L12_3 = L12_3.sin
              L13_3 = L8_3
              L12_3 = L12_3(L13_3)
              L13_3 = math
              L13_3 = L13_3.cos
              L14_3 = L8_3
              L13_3 = L13_3(L14_3)
              L14_3 = math
              L14_3 = L14_3.sin
              L15_3 = L9_3
              L14_3 = L14_3(L15_3)
              L15_3 = math
              L15_3 = L15_3.cos
              L16_3 = L9_3
              L15_3 = L15_3(L16_3)
              L16_3 = vector3
              L17_3 = L15_3 * L12_3
              L17_3 = L17_3 * L10_3
              L18_3 = L14_3 * L11_3
              L17_3 = L17_3 - L18_3
              L18_3 = L14_3 * L12_3
              L18_3 = L18_3 * L10_3
              L19_3 = L15_3 * L11_3
              L18_3 = L18_3 + L19_3
              L19_3 = L13_3 * L10_3
              L16_3 = L16_3(L17_3, L18_3, L19_3)
              L17_3 = GetEntityVelocity
              L18_3 = L1_3
              L17_3 = L17_3(L18_3)
              L18_3 = 1.1
              L19_3 = SetEntityVelocity
              L20_3 = L1_3
              L21_3 = L17_3.x
              L22_3 = L16_3.x
              L22_3 = L22_3 * L18_3
              L21_3 = L21_3 + L22_3
              L22_3 = L17_3.y
              L23_3 = L16_3.y
              L23_3 = L23_3 * L18_3
              L22_3 = L22_3 + L23_3
              L23_3 = L17_3.z
              L24_3 = L16_3.z
              L24_3 = L24_3 * L18_3
              L23_3 = L23_3 + L24_3
              L19_3(L20_3, L21_3, L22_3, L23_3)
            end
          end
        end
        L6_3 = IsDisabledControlPressed
        L7_3 = 0
        L8_3 = 36
        L6_3 = L6_3(L7_3, L8_3)
        if L6_3 then
          L6_3 = GetEntityVelocity
          L7_3 = L1_3
          L6_3 = L6_3(L7_3)
          L7_3 = SetEntityVelocity
          L8_3 = L1_3
          L9_3 = L6_3.x
          L9_3 = L9_3 / 1.2
          L10_3 = L6_3.y
          L10_3 = L10_3 / 1.2
          L11_3 = L6_3.z
          L11_3 = L11_3 / 1.2
          L7_3(L8_3, L9_3, L10_3, L11_3)
        end
      end
    end
  end
  L1_2(L2_2)
end
VoloFunc = L41_1
L41_1 = RegisterNetEvent
L42_1 = "SyncRotationFly"
L41_1(L42_1)
L41_1 = AddEventHandler
L42_1 = "SyncRotationFly"
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L3_2 ~= A2_2 then
    L3_2 = GetEntityCoords
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = L3_2 - A1_2
    L3_2 = #L3_2
    L4_2 = 299.0
    if L3_2 < L4_2 then
      L3_2 = GetPlayerPed
      L4_2 = GetPlayerFromServerId
      L5_2 = A2_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        if L3_2 ~= L4_2 then
          L4_2 = SetEntityRotation
          L5_2 = L3_2
          L6_2 = A0_2
          L4_2(L5_2, L6_2)
          L4_2 = SetEntityCoords
          L5_2 = L3_2
          L6_2 = vector3
          L7_2 = A1_2.x
          L8_2 = A1_2.y
          L9_2 = A1_2.z
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        end
      end
    end
  end
end
L41_1(L42_1, L43_1)
L41_1 = false
L42_1 = RegisterCommand
L43_1 = commandStartFly
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = IsValidBird
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L0_2 = L41_1
    if not L0_2 then
      L0_2 = true
      L41_1 = L0_2
      L0_2 = VoloAttivo
      if not L0_2 then
        VoloAttivo = true
        orbitcam = true
        L0_2 = StartOrbitCam
        L1_2 = vector3
        L2_2 = 0.0
        L3_2 = 0.0
        L4_2 = 0.5
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2 = L2_2()
        L0_2(L1_2, L2_2, L3_2, L4_2)
        L0_2 = OnStartFlyMode
        L0_2()
        L0_2 = VoloFunc
        L0_2()
      end
      L0_2 = CreateThread
      function L1_2()
        local L0_3, L1_3
        L0_3 = Wait
        L1_3 = 500
        L0_3(L1_3)
        L0_3 = false
        L41_1 = L0_3
      end
      L0_2(L1_2)
    end
  end
end
L42_1(L43_1, L44_1)
L42_1 = RegisterCommand
L43_1 = commandLetterTask
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 0
  L32_1 = L0_2
  L0_2 = L31_1
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L31_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteEntity
      L1_2 = L31_1
      L0_2(L1_2)
      L0_2 = nil
      L31_1 = L0_2
    end
  end
  L0_2 = CreateObject
  L1_2 = -1139842859
  L2_2 = letterCoords
  L3_2 = true
  L4_2 = false
  L5_2 = false
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L31_1 = L0_2
  L0_2 = SetEntityHeading
  L1_2 = L31_1
  L2_2 = headLetter
  L0_2(L1_2, L2_2)
  L0_2 = FreezeEntityPosition
  L1_2 = obj
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L42_1(L43_1, L44_1)
L42_1 = CreateThread
function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsValidBird
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsPedHuman
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = OnFlyBirdDead
          L1_2()
          L1_2 = GetEntityCoords
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          L2_2 = GetEntityHeading
          L3_2 = L0_2
          L2_2 = L2_2(L3_2)
          L3_2 = SetEntityCoordsNoOffset
          L4_2 = L0_2
          L5_2 = L1_2.x
          L6_2 = L1_2.y
          L7_2 = L1_2.z
          L8_2 = false
          L9_2 = false
          L10_2 = false
          L11_2 = true
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          L3_2 = SetEntityHeading
          L4_2 = L0_2
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L42_1(L43_1)
L42_1 = CreateThread
function L43_1()
  local L0_2, L1_2
  while true do
    L0_2 = IsPedFatallyInjured
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = IsPedHuman
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = Rinasci
        L0_2()
      end
    end
    L0_2 = IsPedHuman
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    else
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
    end
  end
end
L42_1(L43_1)
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ClearPedTasksImmediately
  L4_2 = L0_2
  L3_2(L4_2)
  L3_2 = ResetPedRagdollTimer
  L4_2 = L0_2
  L3_2(L4_2)
  L3_2 = NetworkResurrectLocalPlayer
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2
  L8_2 = true
  L9_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetEntityCoordsNoOffset
  L4_2 = L0_2
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = SetEntityHeading
  L4_2 = L0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = IsPedHuman
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = SetEntityCoordsNoOffset
    L4_2 = L0_2
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L1_2.z
    L7_2 = L7_2 + 0.5
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L11_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
Rinasci = L42_1
