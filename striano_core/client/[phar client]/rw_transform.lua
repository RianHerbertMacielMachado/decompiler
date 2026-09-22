local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
Transition = L0_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2
  return A0_2
end
L0_1.Linear = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  return L1_2
end
L0_1.EaseIn = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2
  L1_2 = 2
  L1_2 = L1_2 - A0_2
  L1_2 = A0_2 * L1_2
  return L1_2
end
L0_1.EaseOut = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L2_2 = 4
    L1_2 = L2_2 - L1_2
    L1_2 = L1_2 * A0_2
    L1_2 = -1 + L1_2
    return L1_2
  end
end
L0_1.EaseInOut = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2 * A0_2
  L1_2 = L1_2 * A0_2
  return L1_2
end
L0_1.EaseInCubic = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2 - 1
  L2_2 = L1_2 * L1_2
  L2_2 = L2_2 * L1_2
  L2_2 = L2_2 + 1
  return L2_2
end
L0_1.EaseOutCubic = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 4 * A0_2
    L1_2 = L1_2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  else
    L1_2 = 2 * A0_2
    L1_2 = L1_2 - 2
    L2_2 = 0.5 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 * L1_2
    L2_2 = L2_2 + 1
    return L2_2
  end
end
L0_1.EaseInOutCubic = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_44
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_44
    end
  end
  L2_2 = A0_2 - 1
  L2_2 = 10 * L2_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = -L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = A0_2 - 1
  L5_2 = L1_2 / 4
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  ::lbl_44::
  return L2_2
end
L0_1.ElasticIn = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 3
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_41
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_41
    end
  end
  L2_2 = -10 * A0_2
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2 / 4
  L4_2 = A0_2 - L4_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = 2 * L5_2
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_41::
  return L2_2
end
L0_1.ElasticOut = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = 2 * L1_2
  L1_2 = L1_2 / 4.5
  if 0 == A0_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_64
    end
  end
  if 1 == A0_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = 0.5
  if A0_2 < L2_2 then
    L2_2 = 20 * A0_2
    L2_2 = L2_2 - 10
    L3_2 = 2
    L2_2 = L3_2 ^ L2_2
    L2_2 = -0.5 * L2_2
    L3_2 = math
    L3_2 = L3_2.sin
    L4_2 = 20 * A0_2
    L4_2 = L4_2 - 11.125
    L4_2 = L4_2 * L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 * L3_2
    if L2_2 then
      goto lbl_64
    end
  end
  L2_2 = -20 * A0_2
  L2_2 = L2_2 + 10
  L3_2 = 2
  L2_2 = L3_2 ^ L2_2
  L2_2 = 0.5 * L2_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = 20 * A0_2
  L4_2 = L4_2 - 11.125
  L4_2 = L4_2 * L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 1
  ::lbl_64::
  return L2_2
end
L0_1.ElasticInOut = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Transition
  L1_2 = L1_2.BounceOut
  L2_2 = 1
  L2_2 = L2_2 - A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L1_2 = L2_2 - L1_2
  return L1_2
end
L0_1.BounceIn = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 7.5625
  L2_2 = 2.75
  L3_2 = 1
  L3_2 = L3_2 / L2_2
  if A0_2 < L3_2 then
    L3_2 = L1_2 * A0_2
    L3_2 = L3_2 * A0_2
    return L3_2
  else
    L3_2 = 2
    L3_2 = L3_2 / L2_2
    if A0_2 < L3_2 then
      L3_2 = 1.5
      L3_2 = L3_2 / L2_2
      A0_2 = A0_2 - L3_2
      L3_2 = L1_2 * A0_2
      L3_2 = L3_2 * A0_2
      L3_2 = L3_2 + 0.75
      return L3_2
    else
      L3_2 = 2.5
      L3_2 = L3_2 / L2_2
      if A0_2 < L3_2 then
        L3_2 = 2.25
        L3_2 = L3_2 / L2_2
        A0_2 = A0_2 - L3_2
        L3_2 = L1_2 * A0_2
        L3_2 = L3_2 * A0_2
        L3_2 = L3_2 + 0.9375
        return L3_2
      else
        L3_2 = 2.625
        L3_2 = L3_2 / L2_2
        A0_2 = A0_2 - L3_2
        L3_2 = L1_2 * A0_2
        L3_2 = L3_2 * A0_2
        L3_2 = L3_2 + 0.984375
        return L3_2
      end
    end
  end
end
L0_1.BounceOut = L1_1
L0_1 = Transition
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = Transition
    L1_2 = L1_2.BounceIn
    L2_2 = A0_2 * 2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 * 0.5
    return L1_2
  else
    L1_2 = Transition
    L1_2 = L1_2.BounceOut
    L2_2 = A0_2 * 2
    L2_2 = L2_2 - 1
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 * 0.5
    L1_2 = L1_2 + 0.5
    return L1_2
  end
end
L0_1.BounceInOut = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3
    L5_3 = 1
    L5_3 = L5_3 - A4_3
    L6_3 = L5_3 ^ 3
    L6_3 = L6_3 * A0_3
    L7_3 = L5_3 ^ 2
    L7_3 = 3 * L7_3
    L7_3 = L7_3 * A4_3
    L7_3 = L7_3 * A1_3
    L6_3 = L6_3 + L7_3
    L7_3 = 3 * L5_3
    L8_3 = A4_3 ^ 2
    L7_3 = L7_3 * L8_3
    L7_3 = L7_3 * A2_3
    L6_3 = L6_3 + L7_3
    L7_3 = A4_3 ^ 3
    L7_3 = L7_3 * A3_3
    L6_3 = L6_3 + L7_3
    return L6_3
  end
  L3_2 = L2_2
  L4_2 = 0
  L5_2 = A1_2.x1
  L6_2 = A1_2.x2
  L7_2 = 1
  L8_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = A1_2.y1
  L7_2 = A1_2.y2
  L8_2 = 1
  L9_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  return L4_2
end
CubicBezier = L0_1
L0_1 = Transition
L1_1 = {}
L2_1 = Transition
L2_1 = L2_1.Linear
L1_1.Linear = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseIn
L1_1.EaseIn = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseOut
L1_1.EaseOut = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseInOut
L1_1.EaseInOut = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseInCubic
L1_1.EaseInCubic = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseOutCubic
L1_1.EaseOutCubic = L2_1
L2_1 = Transition
L2_1 = L2_1.EaseInOutCubic
L1_1.EaseInOutCubic = L2_1
L2_1 = Transition
L2_1 = L2_1.ElasticIn
L1_1.ElasticIn = L2_1
L2_1 = Transition
L2_1 = L2_1.ElasticOut
L1_1.ElasticOut = L2_1
L2_1 = Transition
L2_1 = L2_1.ElasticInOut
L1_1.ElasticInOut = L2_1
L2_1 = Transition
L2_1 = L2_1.BounceIn
L1_1.BounceIn = L2_1
L2_1 = Transition
L2_1 = L2_1.BounceOut
L1_1.BounceOut = L2_1
L2_1 = Transition
L2_1 = L2_1.BounceInOut
L1_1.BounceInOut = L2_1
L0_1.Functions = L1_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = 0.0
  L8_2 = IsEntityPositionFrozen
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  while A5_2 > L7_2 do
    L9_2 = GetFrameTime
    L9_2 = L9_2()
    L7_2 = L7_2 + L9_2
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = math
    L10_2 = L10_2.max
    L11_2 = L7_2 / A5_2
    L12_2 = 0
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A6_2
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if A1_2 and A2_2 then
      L11_2 = LerpVec3
      L12_2 = A1_2
      L13_2 = A2_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityRotation
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = 2
      L18_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    if A3_2 and A4_2 then
      L11_2 = LerpVec3
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityCoords
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = true
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
  if A2_2 then
    L9_2 = SetEntityRotation
    L10_2 = A0_2
    L11_2 = A2_2.x
    L12_2 = A2_2.y
    L13_2 = A2_2.z
    L14_2 = 2
    L15_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  if A4_2 then
    L9_2 = SetEntityCoords
    L10_2 = A0_2
    L11_2 = A4_2.x
    L12_2 = A4_2.y
    L13_2 = A4_2.z
    L14_2 = true
    L15_2 = true
    L16_2 = true
    L17_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
end
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = Transition
  L4_2 = L4_2.Functions
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L5_2 = print
    L6_2 = "^1Invalid transition name provided: ^7"
    L7_2 = tostring
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
    return
  end
  L5_2 = GetEntityRotation
  L6_2 = A1_2
  L7_2 = 2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L0_1
  L7_2 = A1_2
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = nil
  L11_2 = nil
  L12_2 = A3_2
  L13_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
RotateEntity = L1_1
L1_1 = exports
L2_1 = "RotateEntity"
L3_1 = RotateEntity
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = Transition
  L4_2 = L4_2.Functions
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L5_2 = print
    L6_2 = "^1Invalid transition name provided: ^7"
    L7_2 = tostring
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
    return
  end
  L5_2 = GetEntityCoords
  L6_2 = A1_2
  L7_2 = true
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L0_1
  L7_2 = A1_2
  L8_2 = nil
  L9_2 = nil
  L10_2 = L5_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
MoveEntity = L1_1
L1_1 = exports
L2_1 = "MoveEntity"
L3_1 = MoveEntity
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = Transition
  L5_2 = L5_2.Functions
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L6_2 = print
    L7_2 = "^1Invalid transition name provided: ^7"
    L8_2 = tostring
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return
  end
  if A2_2 then
    L6_2 = GetEntityRotation
    L7_2 = A1_2
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      goto lbl_23
    end
  end
  L6_2 = nil
  ::lbl_23::
  if A3_2 then
    L7_2 = GetEntityCoords
    L8_2 = A1_2
    L9_2 = true
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      goto lbl_32
    end
  end
  L7_2 = nil
  ::lbl_32::
  L8_2 = L0_1
  L9_2 = A1_2
  L10_2 = L6_2
  L11_2 = A2_2
  L12_2 = L7_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = L5_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
TransitionEntity = L1_1
L1_1 = exports
L2_1 = "TransitionEntity"
L3_1 = TransitionEntity
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = vec3
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L6_2 = A0_2.x
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 * A2_2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.y
  L6_2 = A1_2.y
  L7_2 = A0_2.y
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 * A2_2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.z
  L7_2 = A1_2.z
  L8_2 = A0_2.z
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 * A2_2
  L6_2 = L6_2 + L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
LerpVec3 = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = {}
  L4_2.x1 = A0_2
  L4_2.y1 = A1_2
  L4_2.x2 = A2_2
  L4_2.y2 = A3_2
  return L4_2
end
Bezier = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = 0.0
  L8_2 = IsEntityPositionFrozen
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  while A5_2 > L7_2 do
    L9_2 = GetFrameTime
    L9_2 = L9_2()
    L7_2 = L7_2 + L9_2
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = math
    L10_2 = L10_2.max
    L11_2 = L7_2 / A5_2
    L12_2 = 0
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 1
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = CubicBezier
    L11_2 = L9_2
    L12_2 = A6_2
    L10_2 = L10_2(L11_2, L12_2)
    if A1_2 and A2_2 then
      L11_2 = LerpVec3
      L12_2 = A1_2
      L13_2 = A2_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityRotation
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = 2
      L18_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    if A3_2 and A4_2 then
      L11_2 = LerpVec3
      L12_2 = A3_2
      L13_2 = A4_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = SetEntityCoords
      L13_2 = A0_2
      L14_2 = L11_2.x
      L15_2 = L11_2.y
      L16_2 = L11_2.z
      L17_2 = true
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L11_2 = Wait
    L12_2 = 0
    L11_2(L12_2)
  end
  if A2_2 then
    L9_2 = SetEntityRotation
    L10_2 = A0_2
    L11_2 = A2_2.x
    L12_2 = A2_2.y
    L13_2 = A2_2.z
    L14_2 = 2
    L15_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  if A4_2 then
    L9_2 = SetEntityCoords
    L10_2 = A0_2
    L11_2 = A4_2.x
    L12_2 = A4_2.y
    L13_2 = A4_2.z
    L14_2 = true
    L15_2 = true
    L16_2 = true
    L17_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L9_2 = FreezeEntityPosition
  L10_2 = A0_2
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
end
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L7_2 = GetEntityRotation
  L8_2 = A4_2
  L9_2 = 2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L1_1
  L9_2 = A4_2
  L10_2 = L7_2
  L11_2 = A5_2
  L12_2 = nil
  L13_2 = nil
  L14_2 = A6_2
  L15_2 = Bezier
  L16_2 = A0_2
  L17_2 = A1_2
  L18_2 = A2_2
  L19_2 = A3_2
  L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
BezierRotateEntity = L2_1
L2_1 = exports
L3_1 = "BezierRotateEntity"
L4_1 = BezierRotateEntity
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L7_2 = GetEntityCoords
  L8_2 = A4_2
  L9_2 = true
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L1_1
  L9_2 = A4_2
  L10_2 = nil
  L11_2 = nil
  L12_2 = L7_2
  L13_2 = A5_2
  L14_2 = A6_2
  L15_2 = Bezier
  L16_2 = A0_2
  L17_2 = A1_2
  L18_2 = A2_2
  L19_2 = A3_2
  L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
BezierMoveEntity = L2_1
L2_1 = exports
L3_1 = "BezierMoveEntity"
L4_1 = BezierMoveEntity
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  if not (A0_2 and A1_2 and A2_2) or not A3_2 then
    L8_2 = print
    L9_2 = "^1Invalid CubicBezier provided: ^7"
    L10_2 = tostring
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L11_2 = ", "
    L12_2 = tostring
    L13_2 = A1_2
    L12_2 = L12_2(L13_2)
    L13_2 = ", "
    L14_2 = tostring
    L15_2 = A2_2
    L14_2 = L14_2(L15_2)
    L15_2 = ", "
    L16_2 = tostring
    L17_2 = A3_2
    L16_2 = L16_2(L17_2)
    L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L8_2(L9_2)
    return
  end
  if A5_2 then
    L8_2 = GetEntityRotation
    L9_2 = A4_2
    L10_2 = 2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      goto lbl_38
    end
  end
  L8_2 = nil
  ::lbl_38::
  if A6_2 then
    L9_2 = GetEntityCoords
    L10_2 = A4_2
    L11_2 = true
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      goto lbl_47
    end
  end
  L9_2 = nil
  ::lbl_47::
  L10_2 = L1_1
  L11_2 = A4_2
  L12_2 = L8_2
  L13_2 = A5_2
  L14_2 = L9_2
  L15_2 = A6_2
  L16_2 = A7_2
  L17_2 = Bezier
  L18_2 = A0_2
  L19_2 = A1_2
  L20_2 = A2_2
  L21_2 = A3_2
  L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end
BezierTransitionCubicBezier = L2_1
L2_1 = exports
L3_1 = "BezierTransitionCubicBezier"
L4_1 = BezierTransitionCubicBezier
L2_1(L3_1, L4_1)
