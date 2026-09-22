local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = 120
L1_1 = 90.0
L2_1 = vector3
L3_1 = 0.0
L4_1 = 0.35
L5_1 = 0.08
L2_1 = L2_1(L3_1, L4_1, L5_1)
L3_1 = vector3
L4_1 = -90.0
L5_1 = 0.0
L6_1 = 0.0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = 1.8
L5_1 = 0.55
L6_1 = 180
L7_1 = {}
L8_1 = {}
L9_1 = {}
function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L1_2 = A0_2.x
    L1_2 = nil ~= L1_2
  end
  return L1_2
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L10_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return A0_2
  else
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = vector3
      L2_2 = A0_2.x
      if not L2_2 then
        L2_2 = 0.0
      end
      L3_2 = A0_2.y
      if not L3_2 then
        L3_2 = 0.0
      end
      L4_2 = A0_2.z
      if not L4_2 then
        L4_2 = 0.0
      end
      return L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = vector3
      L2_2 = 0.0
      L3_2 = 0.0
      L4_2 = 0.0
      return L1_2(L2_2, L3_2, L4_2)
    end
  end
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = L2_2 * L2_2
  L6_2 = L3_2 * L3_2
  L5_2 = L5_2 + L6_2
  L6_2 = L4_2 * L4_2
  L5_2 = L5_2 + L6_2
  return L5_2
end
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasNamedPtfxAssetLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestNamedPtfxAsset
    L2_2 = A0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasNamedPtfxAssetLoaded
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    end
  end
  L1_2 = UseParticleFxAsset
  L2_2 = A0_2
  L1_2(L2_2)
end
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L7_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 and -1 ~= L6_2 then
      L0_2 = L0_2 + 1
    end
  end
  return L0_2
end
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L14_1
  L0_2 = L0_2()
  L1_2 = L0_1
  if L0_2 < L1_2 then
    return
  end
  L0_2 = pairs
  L1_2 = L7_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 and -1 ~= L5_2 then
      L6_2 = StopParticleFxLooped
      L7_2 = L5_2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = L7_1
      L6_2[L4_2] = nil
      break
    end
  end
end
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if 0 ~= A1_2 then
    L7_2 = DoesEntityExist
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_11
    end
  end
  L7_2 = nil
  L8_2 = "no_entity"
  do return L7_2, L8_2 end
  ::lbl_11::
  L7_2 = L13_1
  L8_2 = A6_2
  L7_2(L8_2)
  L7_2 = L15_1
  L7_2()
  L7_2 = L7_1
  L7_2 = L7_2[A1_2]
  if L7_2 and -1 ~= L7_2 then
    L8_2 = StopParticleFxLooped
    L9_2 = L7_2
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = L7_1
    L8_2[A1_2] = nil
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  L8_2 = L11_1
  L9_2 = A2_2 or L9_2
  if not A2_2 then
    L9_2 = L2_1
  end
  L8_2 = L8_2(L9_2)
  A2_2 = L8_2
  L8_2 = L11_1
  L9_2 = A3_2 or L9_2
  if not A3_2 then
    L9_2 = L3_1
  end
  L8_2 = L8_2(L9_2)
  A3_2 = L8_2
  if not A4_2 then
    A4_2 = L4_1
  end
  if not A5_2 then
    A5_2 = L5_1
  end
  L8_2 = nil
  L9_2 = 1
  L10_2 = 3
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = StartParticleFxLoopedOnEntity
    L14_2 = A0_2
    L15_2 = A1_2
    L16_2 = A2_2.x
    L17_2 = A2_2.y
    L18_2 = A2_2.z
    L19_2 = A3_2.x
    L20_2 = A3_2.y
    L21_2 = A3_2.z
    L22_2 = A4_2
    L23_2 = false
    L24_2 = false
    L25_2 = false
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L8_2 = L13_2
    if L8_2 and -1 ~= L8_2 then
      L13_2 = SetParticleFxLoopedAlpha
      L14_2 = L8_2
      L15_2 = A5_2
      L13_2(L14_2, L15_2)
      L13_2 = L7_1
      L13_2[A1_2] = L8_2
      return L8_2
    end
    L13_2 = Wait
    L14_2 = 120
    L13_2(L14_2)
  end
  L9_2 = nil
  L10_2 = "start_failed"
  return L9_2, L10_2
end
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A0_2 or not A1_2 then
    L7_2 = nil
    L8_2 = "bad_params"
    return L7_2, L8_2
  end
  L7_2 = L16_1
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = A6_2
  L14_2 = A0_2
  return L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
StartFx = L17_1
L17_1 = exports
L18_1 = "StartFx"
L19_1 = StartFx
L17_1(L18_1, L19_1)
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  if not A0_2 or not A1_2 then
    L8_2 = nil
    L9_2 = "bad_params"
    return L8_2, L9_2
  end
  if 0 ~= A2_2 then
    L8_2 = DoesEntityExist
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_18
    end
  end
  L8_2 = nil
  L9_2 = "no_entity"
  do return L8_2, L9_2 end
  ::lbl_18::
  L8_2 = L13_1
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = L15_1
  L8_2()
  L8_2 = L7_1
  L8_2 = L8_2[A2_2]
  if L8_2 and -1 ~= L8_2 then
    L9_2 = StopParticleFxLooped
    L10_2 = L8_2
    L11_2 = false
    L9_2(L10_2, L11_2)
    L9_2 = L7_1
    L9_2[A2_2] = nil
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = 0
  L10_2 = type
  L11_2 = A3_2
  L10_2 = L10_2(L11_2)
  if "number" == L10_2 then
    L9_2 = A3_2
  else
    L10_2 = type
    L11_2 = A3_2
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L10_2 = GetEntityBoneIndexByName
      L11_2 = A2_2
      L12_2 = A3_2
      L10_2 = L10_2(L11_2, L12_2)
      if -1 ~= L10_2 then
        L9_2 = L10_2
      else
        L11_2 = GetEntityBoneIndexByName
        L12_2 = A2_2
        L13_2 = "chassis"
        L11_2 = L11_2(L12_2, L13_2)
        L10_2 = L11_2
        L9_2 = L10_2 or L9_2
        if -1 == L10_2 or not L10_2 then
          L9_2 = 0
        end
      end
    end
  end
  L10_2 = L11_1
  L11_2 = A4_2 or L11_2
  if not A4_2 then
    L11_2 = L2_1
  end
  L10_2 = L10_2(L11_2)
  A4_2 = L10_2
  L10_2 = L11_1
  L11_2 = A5_2 or L11_2
  if not A5_2 then
    L11_2 = L3_1
  end
  L10_2 = L10_2(L11_2)
  A5_2 = L10_2
  if not A6_2 then
    A6_2 = L4_1
  end
  if not A7_2 then
    A7_2 = L5_1
  end
  L10_2 = nil
  L11_2 = 1
  L12_2 = 3
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = StartParticleFxLoopedOnEntityBone
    L16_2 = A1_2
    L17_2 = A2_2
    L18_2 = L9_2
    L19_2 = A4_2.x
    L20_2 = A4_2.y
    L21_2 = A4_2.z
    L22_2 = A5_2.x
    L23_2 = A5_2.y
    L24_2 = A5_2.z
    L25_2 = A6_2
    L26_2 = false
    L27_2 = false
    L28_2 = false
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L10_2 = L15_2
    if L10_2 and -1 ~= L10_2 then
      L15_2 = SetParticleFxLoopedAlpha
      L16_2 = L10_2
      L17_2 = A7_2
      L15_2(L16_2, L17_2)
      L15_2 = L7_1
      L15_2[A2_2] = L10_2
      return L10_2
    end
    L15_2 = Wait
    L16_2 = 120
    L15_2(L16_2)
  end
  L11_2 = nil
  L12_2 = "start_failed"
  return L11_2, L12_2
end
StartFxOnBone = L17_1
L17_1 = exports
L18_1 = "StartFxOnBone"
L19_1 = StartFxOnBone
L17_1(L18_1, L19_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L7_1
  L1_2 = L1_2[A0_2]
  if L1_2 and -1 ~= L1_2 then
    L2_2 = StopParticleFxLooped
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L7_1
  L2_2[A0_2] = nil
end
StopFx = L17_1
L17_1 = exports
L18_1 = "StopFx"
L19_1 = StopFx
L17_1(L18_1, L19_1)
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L7_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 and -1 ~= L5_2 then
      L6_2 = StopParticleFxLooped
      L7_2 = L5_2
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
    L6_2 = L7_1
    L6_2[L4_2] = nil
  end
end
StopAllFx = L17_1
L17_1 = exports
L18_1 = "StopAllFx"
L19_1 = StopAllFx
L17_1(L18_1, L19_1)
function L17_1()
  local L0_2, L1_2
  L0_2 = L14_1
  return L0_2()
end
CountActiveFx = L17_1
L17_1 = exports
L18_1 = "CountActiveFx"
L19_1 = CountActiveFx
L17_1(L18_1, L19_1)
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = L8_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.enabled
      if L8_2 then
        L8_2 = L7_2.ent
        if L8_2 then
          L8_2 = DoesEntityExist
          L9_2 = L7_2.ent
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = GetEntityCoords
            L9_2 = L7_2.ent
            L8_2 = L8_2(L9_2)
            L9_2 = L7_2.maxDist
            if not L9_2 then
              L9_2 = L1_1
            end
            L10_2 = L12_1
            L11_2 = L1_2
            L12_2 = L8_2
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = L9_2 * L9_2
            if L10_2 <= L11_2 then
              L10_2 = L13_1
              L11_2 = L7_2.dict
              L10_2(L11_2)
              L10_2 = UseParticleFxAsset
              L11_2 = L7_2.dict
              L10_2(L11_2)
              L10_2 = L11_1
              L11_2 = L7_2.off
              if not L11_2 then
                L11_2 = L2_1
              end
              L10_2 = L10_2(L11_2)
              L11_2 = L11_1
              L12_2 = L7_2.rot
              if not L12_2 then
                L12_2 = L3_1
              end
              L11_2 = L11_2(L12_2)
              L12_2 = StartParticleFxNonLoopedOnEntity
              L13_2 = L7_2.name
              L14_2 = L7_2.ent
              L15_2 = L10_2.x
              L16_2 = L10_2.y
              L17_2 = L10_2.z
              L18_2 = L11_2.x
              L19_2 = L11_2.y
              L20_2 = L11_2.z
              L21_2 = L7_2.scale
              if not L21_2 then
                L21_2 = L4_1
              end
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          end
        end
      end
    end
    L2_2 = Wait
    L3_2 = L6_1
    L2_2(L3_2)
  end
end
L17_1(L18_1)
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2
  return L1_2(L2_2)
end
function L18_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2
  if A0_2 and A1_2 and 0 ~= A2_2 then
    L8_2 = DoesEntityExist
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_15
    end
  end
  L8_2 = nil
  L9_2 = "bad_params"
  do return L8_2, L9_2 end
  ::lbl_15::
  L8_2 = L17_1
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_1
  L10_2 = {}
  L10_2.ent = A2_2
  L10_2.dict = A0_2
  L10_2.name = A1_2
  L10_2.off = A3_2
  L10_2.rot = A4_2
  L10_2.scale = A5_2
  L11_2 = A6_2 or L11_2
  if not A6_2 then
    L11_2 = L6_1
  end
  L10_2.tick = L11_2
  L11_2 = A7_2 or L11_2
  if not A7_2 then
    L11_2 = L1_1
  end
  L10_2.maxDist = L11_2
  L10_2.enabled = true
  L9_2[L8_2] = L10_2
  L9_2 = L9_1
  L9_2[A2_2] = L8_2
  return L8_2
end
StartFakeLoop = L18_1
L18_1 = exports
L19_1 = "StartFakeLoop"
L20_1 = StartFakeLoop
L18_1(L19_1, L20_1)
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    L2_2 = L9_1
    L1_2 = L2_2[A0_2]
  end
  if L1_2 then
    L2_2 = L8_1
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = L8_1
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2.ent
      L2_2 = L9_1
      L2_2[L3_2] = nil
      L2_2 = L8_1
      L2_2[L1_2] = nil
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
StopFakeLoop = L18_1
L18_1 = exports
L19_1 = "StopFakeLoop"
L20_1 = StopFakeLoop
L18_1(L19_1, L20_1)
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = RemoveParticleFxInRange
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L7_2 = A0_2 or L7_2
  if not A0_2 then
    L7_2 = 500.0
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
ClearFxInRange = L18_1
L18_1 = exports
L19_1 = "ClearFxInRange"
L20_1 = ClearFxInRange
L18_1(L19_1, L20_1)
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = pairs
    L1_2 = L7_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      if -1 ~= L5_2 then
        L6_2 = DoesEntityExist
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          goto lbl_14
        end
      end
      L6_2 = L7_1
      L6_2[L4_2] = nil
      ::lbl_14::
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "onResourceStop"
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = StopAllFx
    L1_2()
    L1_2 = ClearFxInRange
    L2_2 = 200.0
    L1_2(L2_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "ptfx_core:cl_start_on_net"
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L9_2 = NetworkGetEntityFromNetworkId
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if 0 == L9_2 then
    return
  end
  if A7_2 then
    L10_2 = StartFxOnBone
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = L9_2
    L14_2 = A8_2
    L15_2 = A3_2
    L16_2 = A4_2
    L17_2 = A5_2
    L18_2 = A6_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  else
    L10_2 = StartFx
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = L9_2
    L14_2 = A3_2
    L15_2 = A4_2
    L16_2 = A5_2
    L17_2 = A6_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "ptfx_core:cl_start_fake_on_net"
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L8_2 = NetworkGetEntityFromNetworkId
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if 0 == L8_2 then
    return
  end
  L9_2 = StartFakeLoop
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = L8_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A5_2
  L16_2 = A6_2
  L17_2 = A7_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "ptfx_core:cl_stop_on_net"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = StopFx
    L4_2 = L2_2
    L3_2(L4_2)
    if A1_2 then
      L3_2 = StopFakeLoop
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "ptfx_core:cl_stop_all"
function L20_1()
  local L0_2, L1_2
  L0_2 = StopAllFx
  L0_2()
end
L18_1(L19_1, L20_1)
L18_1 = {}
L19_1 = {}
L20_1 = L6_1 or L20_1
if not L6_1 then
  L20_1 = 180
end
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = CountActiveFx
  if L0_2 then
    L0_2 = CountActiveFx
    L0_2 = L0_2()
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = 0
  ::lbl_9::
  L1_2 = pairs
  L2_2 = L18_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2 = L0_2 + 1
  end
  return L0_2
end
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L21_1
  L0_2 = L0_2()
  L1_2 = L0_1
  if L0_2 < L1_2 then
    return
  end
  L0_2 = pairs
  L1_2 = L7_1
  if not L1_2 then
    L1_2 = {}
  end
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 and -1 ~= L5_2 then
      L6_2 = StopParticleFxLooped
      L7_2 = L5_2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = L7_1
      L6_2[L4_2] = nil
      return
    end
  end
  L0_2 = pairs
  L1_2 = L18_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = StopParticleFxLooped
    L7_2 = L4_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = L18_1
    L6_2[L4_2] = nil
    return
  end
end
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if not A2_2 then
    L7_2 = nil
    L8_2 = "no_pos"
    return L7_2, L8_2
  end
  L7_2 = L13_1
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = L22_1
  L7_2()
  L7_2 = A2_2
  L8_2 = A3_2 or L8_2
  if not A3_2 then
    L8_2 = vector3
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 0.0
    L8_2 = L8_2(L9_2, L10_2, L11_2)
  end
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = L4_1
  end
  L10_2 = A5_2 or L10_2
  if not A5_2 then
    L10_2 = L5_1
  end
  if A6_2 then
    L11_2 = StartNetworkedParticleFxLoopedAtCoord
    if L11_2 then
      goto lbl_31
    end
  end
  L11_2 = StartParticleFxLoopedAtCoord
  ::lbl_31::
  L12_2 = L11_2
  L13_2 = A1_2
  L14_2 = L7_2.x
  L15_2 = L7_2.y
  L16_2 = L7_2.z
  L17_2 = L8_2.x
  L18_2 = L8_2.y
  L19_2 = L8_2.z
  L20_2 = L9_2
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  if not L12_2 or -1 == L12_2 then
    L13_2 = nil
    L14_2 = "start_failed"
    return L13_2, L14_2
  end
  L13_2 = SetParticleFxLoopedAlpha
  L14_2 = L12_2
  L15_2 = L10_2
  L13_2(L14_2, L15_2)
  L13_2 = L18_1
  L13_2[L12_2] = true
  return L12_2
end
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = L23_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = false
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
StartFxCoord = L24_1
L24_1 = exports
L25_1 = "StartFxCoord"
L26_1 = StartFxCoord
L24_1(L25_1, L26_1)
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = L23_1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = true
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
StartFxCoordNet = L24_1
L24_1 = exports
L25_1 = "StartFxCoordNet"
L26_1 = StartFxCoordNet
L24_1(L25_1, L26_1)
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A0_2 and -1 ~= A0_2 then
    L3_2 = A1_2
    L4_2 = A2_2
    if L3_2 or L4_2 then
      L5_2 = 0.0
      L6_2 = 0.0
      L7_2 = 0.0
      L8_2 = 0.0
      L9_2 = 0.0
      L10_2 = 0.0
      if L3_2 then
        L11_2 = L3_2.x
        L12_2 = L3_2.y
        L7_2 = L3_2.z
        L6_2 = L12_2
        L5_2 = L11_2
      end
      if L4_2 then
        L11_2 = L4_2.x
        L12_2 = L4_2.y
        L10_2 = L4_2.z
        L9_2 = L12_2
        L8_2 = L11_2
      end
      L11_2 = SetParticleFxLoopedOffsets
      L12_2 = A0_2
      L13_2 = L5_2
      L14_2 = L6_2
      L15_2 = L7_2
      L16_2 = L8_2
      L17_2 = L9_2
      L18_2 = L10_2
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    L5_2 = true
    return L5_2
  end
  L3_2 = false
  return L3_2
end
UpdateFxCoord = L24_1
L24_1 = exports
L25_1 = "UpdateFxCoord"
L26_1 = UpdateFxCoord
L24_1(L25_1, L26_1)
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and -1 ~= A0_2 then
    L1_2 = StopParticleFxLooped
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L18_1
    L1_2[A0_2] = nil
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
StopFxCoord = L24_1
L24_1 = exports
L25_1 = "StopFxCoord"
L26_1 = StopFxCoord
L24_1(L25_1, L26_1)
L24_1 = CreateThread
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  while true do
    L0_2 = pairs
    L1_2 = L19_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.enabled
      if L6_2 then
        L6_2 = L5_2.pos
        if L6_2 then
          L6_2 = L13_1
          L7_2 = L5_2.dict
          L6_2(L7_2)
          L6_2 = L5_2.scale
          if not L6_2 then
            L6_2 = L4_1
          end
          L7_2 = L5_2.pos
          L8_2 = L5_2.rot
          if not L8_2 then
            L8_2 = vector3
            L9_2 = 0
            L10_2 = 0
            L11_2 = 0
            L8_2 = L8_2(L9_2, L10_2, L11_2)
          end
          L9_2 = StartParticleFxNonLoopedAtCoord
          L10_2 = L5_2.name
          L11_2 = L7_2.x
          L12_2 = L7_2.y
          L13_2 = L7_2.z
          L14_2 = L8_2.x
          L15_2 = L8_2.y
          L16_2 = L8_2.z
          L17_2 = L6_2
          L18_2 = false
          L19_2 = false
          L20_2 = false
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        end
      end
    end
    L0_2 = Wait
    L1_2 = L20_1
    L0_2(L1_2)
  end
end
L24_1(L25_1)
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "coord:%0.3f,%0.3f,%0.3f"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  if not A2_2 then
    L6_2 = nil
    L7_2 = "no_pos"
    return L6_2, L7_2
  end
  L6_2 = L24_1
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L19_1
  L8_2 = {}
  L8_2.dict = A0_2
  L8_2.name = A1_2
  L8_2.pos = A2_2
  L8_2.rot = A3_2
  L8_2.scale = A4_2
  L9_2 = A5_2 or L9_2
  if not A5_2 then
    L9_2 = L20_1
  end
  L8_2.tick = L9_2
  L8_2.enabled = true
  L7_2[L6_2] = L8_2
  return L6_2
end
StartFakeLoopCoord = L25_1
L25_1 = exports
L26_1 = "StartFakeLoopCoord"
L27_1 = StartFakeLoopCoord
L25_1(L26_1, L27_1)
function L25_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L19_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = L19_1
      L1_2[A0_2] = nil
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
StopFakeLoopCoord = L25_1
L25_1 = exports
L26_1 = "StopFakeLoopCoord"
L27_1 = StopFakeLoopCoord
L25_1(L26_1, L27_1)
L25_1 = RegisterCommand
L26_1 = "pfx_clear"
function L27_1()
  local L0_2, L1_2
  L0_2 = ClearFxInRange
  L1_2 = 500.0
  L0_2(L1_2)
end
L25_1(L26_1, L27_1)
L25_1 = RegisterCommand
L26_1 = "pfx_count"
function L27_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "[ptfx_core] active looped: %d"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = CountActiveFx
  L3_2 = L3_2()
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L25_1(L26_1, L27_1)
