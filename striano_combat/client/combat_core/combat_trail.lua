local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L0_1.lastBase = nil
L0_1.lastTip = nil
L1_1 = {}
L0_1.segments = L1_1
L1_1 = {}
L0_1.cache = L1_1
trail = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = L2_2 * L2_2
  L7_2 = L3_2 * L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = L4_2 * L4_2
  L6_2 = L6_2 + L7_2
  return L5_2(L6_2)
end
function L1_1()
  local L0_2, L1_2
  L0_2 = trail
  L0_2.lastBase = nil
  L0_2 = trail
  L0_2.lastTip = nil
  L0_2 = trail
  L1_2 = {}
  L0_2.segments = L1_2
end
ResetSwordTrail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = mySword
  if L1_2 then
    L1_2 = SwordList
    if L1_2 then
      L1_2 = SwordList
      L2_2 = mySword
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L1_2 = SwordList
        L2_2 = mySword
        L1_2 = L1_2[L2_2]
        L2_2 = L1_2.m
        if L2_2 then
          L2_2 = GetHashKey
          L3_2 = L1_2.m
          L2_2 = L2_2(L3_2)
          L3_2 = GetEntityModel
          L4_2 = A0_2
          L3_2 = L3_2(L4_2)
          if L2_2 == L3_2 then
            L2_2 = L1_2
            L3_2 = mySword
            return L2_2, L3_2
          end
        end
      end
    end
  end
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = SwordList
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.m
    if L8_2 then
      L8_2 = GetHashKey
      L9_2 = L7_2.m
      L8_2 = L8_2(L9_2)
      if L8_2 == L1_2 then
        L8_2 = L7_2
        L9_2 = L6_2
        return L8_2, L9_2
      end
    end
  end
  L2_2 = nil
  L3_2 = nil
  return L2_2, L3_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A1_2.x
  if not L3_2 then
    L3_2 = 0.0
  end
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A1_2.y
  if not L4_2 then
    L4_2 = 0.0
  end
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = A1_2.z
  if not L5_2 then
    L5_2 = 0.0
  end
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L2_2
  L9_2 = L9_2(L10_2)
  L10_2 = L6_2 * L8_2
  L11_2 = L7_2 * L9_2
  L10_2 = L10_2 - L11_2
  L11_2 = L6_2 * L9_2
  L12_2 = L7_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = L10_2
  L7_2 = L11_2
  L6_2 = L12_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L3_2
  L9_2 = L9_2(L10_2)
  L10_2 = L5_2 * L8_2
  L11_2 = L7_2 * L9_2
  L10_2 = L10_2 + L11_2
  L11_2 = -L5_2
  L11_2 = L11_2 * L9_2
  L12_2 = L7_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = L10_2
  L7_2 = L11_2
  L5_2 = L12_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = L5_2 * L8_2
  L11_2 = L6_2 * L9_2
  L10_2 = L10_2 - L11_2
  L11_2 = L5_2 * L9_2
  L12_2 = L6_2 * L8_2
  L11_2 = L11_2 + L12_2
  L12_2 = L10_2
  L6_2 = L11_2
  L5_2 = L12_2
  L8_2 = vec3
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L7_2
  return L8_2(L9_2, L10_2, L11_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = trail
  L2_2 = L2_2.cache
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return L2_2
  end
  L3_2 = GetModelDimensions
  L4_2 = L1_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = L4_2.x
  L7_2 = L3_2.x
  L6_2 = L6_2 - L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = L4_2.y
  L8_2 = L3_2.y
  L7_2 = L7_2 - L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = L4_2.z
  L9_2 = L3_2.z
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = "y"
  L9_2 = L6_2
  if L5_2 >= L6_2 and L5_2 >= L7_2 then
    L8_2 = "x"
    L9_2 = L5_2
  elseif L5_2 <= L7_2 and L6_2 <= L7_2 then
    L8_2 = "z"
    L9_2 = L7_2
  end
  L10_2 = math
  L10_2 = L10_2.max
  L11_2 = L9_2 * 0.08
  L12_2 = 0.005
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L3_2.x
  L12_2 = L4_2.x
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 * 0.5
  L12_2 = L3_2.y
  L13_2 = L4_2.y
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 * 0.5
  L13_2 = L3_2.z
  L14_2 = L4_2.z
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 * 0.5
  L14_2 = vec3
  L15_2 = L11_2
  L16_2 = L12_2
  L17_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = vec3
  L16_2 = L11_2
  L17_2 = L12_2
  L18_2 = L13_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  if "x" == L8_2 then
    L16_2 = vec3
    L17_2 = L3_2.x
    L17_2 = L17_2 + L10_2
    L18_2 = L12_2
    L19_2 = L13_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L14_2 = L16_2
    L16_2 = vec3
    L17_2 = L4_2.x
    L17_2 = L17_2 - L10_2
    L18_2 = L12_2
    L19_2 = L13_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2 = L16_2
  elseif "y" == L8_2 then
    L16_2 = vec3
    L17_2 = L11_2
    L18_2 = L3_2.y
    L18_2 = L18_2 + L10_2
    L19_2 = L13_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L14_2 = L16_2
    L16_2 = vec3
    L17_2 = L11_2
    L18_2 = L4_2.y
    L18_2 = L18_2 - L10_2
    L19_2 = L13_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2 = L16_2
  else
    L16_2 = vec3
    L17_2 = L11_2
    L18_2 = L12_2
    L19_2 = L3_2.z
    L19_2 = L19_2 + L10_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L14_2 = L16_2
    L16_2 = vec3
    L17_2 = L11_2
    L18_2 = L12_2
    L19_2 = L4_2.z
    L19_2 = L19_2 - L10_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2 = L16_2
  end
  L16_2 = {}
  L16_2.axis = L8_2
  L16_2.length = L9_2
  L16_2.baseLocal = L14_2
  L16_2.tipLocal = L15_2
  L2_2 = L16_2
  L16_2 = trail
  L16_2 = L16_2.cache
  L16_2[L1_2] = L2_2
  return L2_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.baseLocal
  L4_2 = L2_2.tipLocal
  if L1_2 then
    L5_2 = L1_2.trailRot
    if L5_2 then
      L5_2 = L2_1
      L6_2 = L3_2
      L7_2 = L1_2.trailRot
      L5_2 = L5_2(L6_2, L7_2)
      L3_2 = L5_2
      L5_2 = L2_1
      L6_2 = L4_2
      L7_2 = L1_2.trailRot
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    end
  end
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = A0_2
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = GetOffsetFromEntityInWorldCoords
  L7_2 = A0_2
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L8_2 = L6_2
  return L7_2, L8_2
end
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = trail
  L4_2 = L4_2.segments
  L5_2 = trail
  L5_2 = L5_2.segments
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = {}
  L6_2.b1 = A0_2
  L6_2.t1 = A1_2
  L6_2.b2 = A2_2
  L6_2.t2 = A3_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = TRAIL_LIFE
  L7_2 = L7_2 + L8_2
  L6_2.expire = L7_2
  L4_2[L5_2] = L6_2
end
MAX_TRACE_LENGTH = 1.5
L6_1 = {}
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = L6_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2[L1_2]
    return L2_2
  end
  L2_2 = GetModelDimensions
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = L3_2.x
  L6_2 = L2_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = L3_2.y
  L7_2 = L2_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = L3_2.z
  L8_2 = L2_2.z
  L7_2 = L7_2 - L8_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L6_1
  L5_2[L1_2] = L4_2
  return L4_2
end
GetModelMaxLengthCached = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = GetEntityModel
  L2_2 = SwordObj
  L1_2 = L1_2(L2_2)
  L2_2 = GetModelMaxLengthCached
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MAX_TRACE_LENGTH
  if L2_2 > L3_2 then
    L3_2 = trail
    L4_2 = {}
    L3_2.segments = L4_2
    return
  end
  L3_2 = L4_1
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = trail
  L5_2 = L5_2.lastBase
  if L5_2 then
    L5_2 = trail
    L5_2 = L5_2.lastTip
    if L5_2 then
      L5_2 = L5_1
      L6_2 = trail
      L6_2 = L6_2.lastBase
      L7_2 = trail
      L7_2 = L7_2.lastTip
      L8_2 = L3_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
  L5_2 = trail
  L5_2.lastBase = L3_2
  L5_2 = trail
  L5_2.lastTip = L4_2
end
UpdateSwordTrail = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2, A14_2, A15_2, A16_2, A17_2, A18_2)
  local L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L19_2 = DrawTexturedPoly
  if L19_2 then
    L19_2 = DrawTexturedPoly
    L20_2 = A0_2
    L21_2 = A1_2
    L22_2 = A2_2
    L23_2 = A3_2
    L24_2 = A4_2
    L25_2 = A5_2
    L26_2 = A6_2
    L27_2 = A7_2
    L28_2 = A8_2
    L29_2 = A9_2
    L30_2 = A10_2
    L31_2 = A11_2
    L32_2 = A12_2
    L33_2 = A13_2
    L34_2 = A14_2
    L35_2 = A15_2
    L36_2 = A16_2
    L37_2 = A17_2
    L38_2 = A18_2
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  else
    L19_2 = Citizen
    L19_2 = L19_2.InvokeNative
    L20_2 = 2965620363887581480
    L21_2 = A0_2
    L22_2 = A1_2
    L23_2 = A2_2
    L24_2 = A3_2
    L25_2 = A4_2
    L26_2 = A5_2
    L27_2 = A6_2
    L28_2 = A7_2
    L29_2 = A8_2
    L30_2 = A9_2
    L31_2 = A10_2
    L32_2 = A11_2
    L33_2 = A12_2
    L34_2 = A13_2
    L35_2 = A14_2
    L36_2 = A15_2
    L37_2 = A16_2
    L38_2 = A17_2
    L39_2 = A18_2
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  end
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = trail
  L1_2 = L1_2.segments
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = trail
    L5_2 = L5_2.segments
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.expire
    if L0_2 >= L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = trail
      L7_2 = L7_2.segments
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = math
      L6_2 = L6_2.floor
      L7_2 = L5_2.expire
      L7_2 = L7_2 - L0_2
      L8_2 = TRAIL_LIFE
      L7_2 = L7_2 / L8_2
      L8_2 = TraceBasicAlpha
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2(L7_2)
      if L6_2 < 0 then
        L6_2 = 0
      end
      L7_2 = 255
      if L6_2 > L7_2 then
        L6_2 = 255
      end
      L7_2 = 255
      L8_2 = 255
      L9_2 = 255
      L10_2 = L7_1
      L11_2 = L5_2.b1
      L11_2 = L11_2.x
      L12_2 = L5_2.b1
      L12_2 = L12_2.y
      L13_2 = L5_2.b1
      L13_2 = L13_2.z
      L14_2 = L5_2.t1
      L14_2 = L14_2.x
      L15_2 = L5_2.t1
      L15_2 = L15_2.y
      L16_2 = L5_2.t1
      L16_2 = L16_2.z
      L17_2 = L5_2.t2
      L17_2 = L17_2.x
      L18_2 = L5_2.t2
      L18_2 = L18_2.y
      L19_2 = L5_2.t2
      L19_2 = L19_2.z
      L20_2 = L7_2
      L21_2 = L8_2
      L22_2 = L9_2
      L23_2 = L6_2
      L24_2 = 0.0
      L25_2 = 1.0
      L26_2 = 0.0
      L27_2 = 0.0
      L28_2 = 1.0
      L29_2 = 0.0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L10_2 = L7_1
      L11_2 = L5_2.b1
      L11_2 = L11_2.x
      L12_2 = L5_2.b1
      L12_2 = L12_2.y
      L13_2 = L5_2.b1
      L13_2 = L13_2.z
      L14_2 = L5_2.t2
      L14_2 = L14_2.x
      L15_2 = L5_2.t2
      L15_2 = L15_2.y
      L16_2 = L5_2.t2
      L16_2 = L16_2.z
      L17_2 = L5_2.b2
      L17_2 = L17_2.x
      L18_2 = L5_2.b2
      L18_2 = L18_2.y
      L19_2 = L5_2.b2
      L19_2 = L19_2.z
      L20_2 = L7_2
      L21_2 = L8_2
      L22_2 = L9_2
      L23_2 = L6_2
      L24_2 = 0.0
      L25_2 = 1.0
      L26_2 = 1.0
      L27_2 = 0.0
      L28_2 = 1.0
      L29_2 = 1.0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L10_2 = L7_1
      L11_2 = L5_2.t2
      L11_2 = L11_2.x
      L12_2 = L5_2.t2
      L12_2 = L12_2.y
      L13_2 = L5_2.t2
      L13_2 = L13_2.z
      L14_2 = L5_2.t1
      L14_2 = L14_2.x
      L15_2 = L5_2.t1
      L15_2 = L15_2.y
      L16_2 = L5_2.t1
      L16_2 = L16_2.z
      L17_2 = L5_2.b1
      L17_2 = L17_2.x
      L18_2 = L5_2.b1
      L18_2 = L18_2.y
      L19_2 = L5_2.b1
      L19_2 = L19_2.z
      L20_2 = L7_2
      L21_2 = L8_2
      L22_2 = L9_2
      L23_2 = L6_2
      L24_2 = 1.0
      L25_2 = 0.0
      L26_2 = 0.0
      L27_2 = 0.0
      L28_2 = 0.0
      L29_2 = 1.0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L10_2 = L7_1
      L11_2 = L5_2.b2
      L11_2 = L11_2.x
      L12_2 = L5_2.b2
      L12_2 = L12_2.y
      L13_2 = L5_2.b2
      L13_2 = L13_2.z
      L14_2 = L5_2.t2
      L14_2 = L14_2.x
      L15_2 = L5_2.t2
      L15_2 = L15_2.y
      L16_2 = L5_2.t2
      L16_2 = L16_2.z
      L17_2 = L5_2.b1
      L17_2 = L17_2.x
      L18_2 = L5_2.b1
      L18_2 = L18_2.y
      L19_2 = L5_2.b1
      L19_2 = L19_2.z
      L20_2 = L7_2
      L21_2 = L8_2
      L22_2 = L9_2
      L23_2 = L6_2
      L24_2 = 1.0
      L25_2 = 1.0
      L26_2 = 1.0
      L27_2 = 0.0
      L28_2 = 0.0
      L29_2 = 1.0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L10_2 = L5_2.b1
      L10_2 = L10_2.x
      L11_2 = L5_2.t1
      L11_2 = L11_2.x
      L10_2 = L10_2 + L11_2
      L11_2 = L5_2.b2
      L11_2 = L11_2.x
      L10_2 = L10_2 + L11_2
      L11_2 = L5_2.t2
      L11_2 = L11_2.x
      L10_2 = L10_2 + L11_2
      L10_2 = L10_2 * 0.25
      L11_2 = L5_2.b1
      L11_2 = L11_2.y
      L12_2 = L5_2.t1
      L12_2 = L12_2.y
      L11_2 = L11_2 + L12_2
      L12_2 = L5_2.b2
      L12_2 = L12_2.y
      L11_2 = L11_2 + L12_2
      L12_2 = L5_2.t2
      L12_2 = L12_2.y
      L11_2 = L11_2 + L12_2
      L11_2 = L11_2 * 0.25
      L12_2 = L5_2.b1
      L12_2 = L12_2.z
      L13_2 = L5_2.t1
      L13_2 = L13_2.z
      L12_2 = L12_2 + L13_2
      L13_2 = L5_2.b2
      L13_2 = L13_2.z
      L12_2 = L12_2 + L13_2
      L13_2 = L5_2.t2
      L13_2 = L13_2.z
      L12_2 = L12_2 + L13_2
      L12_2 = L12_2 * 0.25
      L13_2 = DrawLightWithRange
      L14_2 = L10_2
      L15_2 = L11_2
      L16_2 = L12_2
      L17_2 = 180
      L18_2 = 220
      L19_2 = 255
      L20_2 = 0.3
      L21_2 = 0.5
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    end
  end
end
RenderSwordTrail = L8_1
