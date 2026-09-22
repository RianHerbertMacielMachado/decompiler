local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1
L0_1 = {}
HorseReins = L0_1
L0_1 = {}
ReinAnchors = L0_1
L0_1 = nil
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = currentHorseRider
  currentHorseRider = nil
  L3_2 = IsEntityAttached
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DetachEntity
    L4_2 = L1_2
    L5_2 = true
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = ClearPedSecondaryTask
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = ClearPedTasks
  L4_2 = L1_2
  L3_2(L4_2)
  if A0_2 and L2_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "horse:stop"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
reinsActive = false
function L3_1()
  local L0_2, L1_2
  L0_2 = ropeTexturesLoaded
  if L0_2 then
    return
  end
  L0_2 = RopeLoadTextures
  L0_2()
  while true do
    L0_2 = RopeAreTexturesLoaded
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  ropeTexturesLoaded = true
end
ensureRopeTextures = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetHashKey
  L1_2 = "prop_cs_leaf"
  L0_2 = L0_2(L1_2)
  L1_2 = HasModelLoaded
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestModel
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L1_2 = L1_2 + 3000
    while true do
      L2_2 = HasModelLoaded
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      if not (L1_2 > L2_2) then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
  end
  L1_2 = HasModelLoaded
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = print
    L2_2 = "^1[REINS] Failed loading anchor model^7"
    L1_2(L2_2)
    L1_2 = nil
    return L1_2
  end
  return L0_2
end
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = ensureRopeTextures
  L3_2()
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2
  L6_2 = A2_2
  L7_2 = A2_2 * 0.3
  L8_2 = AddRope
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = L5_2
  L16_2 = 4
  L17_2 = L6_2
  L18_2 = L7_2
  L19_2 = 2.0
  L20_2 = true
  L21_2 = false
  L22_2 = false
  L23_2 = 1.0
  L24_2 = false
  L25_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  if not L8_2 or 0 == L8_2 then
    L9_2 = nil
    return L9_2
  end
  L9_2 = AttachEntitiesToRope
  L10_2 = L8_2
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = L3_2.x
  L14_2 = L3_2.y
  L15_2 = L3_2.z
  L16_2 = L4_2.x
  L17_2 = L4_2.y
  L18_2 = L4_2.z
  L19_2 = L6_2
  L20_2 = 0.0
  L21_2 = 0.0
  L22_2 = 0
  L23_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  return L8_2
end
CreateReinRope = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = HorseReins
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = HorseReins
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = DoesRopeExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = DeleteRope
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = {}
  HorseReins = L0_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = ReinAnchors
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ReinAnchors
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = IsEntityAttached
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = DetachEntity
          L6_2 = L4_2
          L7_2 = true
          L8_2 = true
          L5_2(L6_2, L7_2, L8_2)
        end
        L5_2 = DeleteEntity
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = {}
  ReinAnchors = L0_2
  L0_2 = nil
  L0_1 = L0_2
  L0_2 = false
  L1_1 = L0_2
end
DeleteHorseReins = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if A0_2 then
    L4_2 = DoesEntityExist
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_10
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_10::
  L4_2 = GetPedBoneIndex
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 or -1 == L4_2 then
    L5_2 = print
    L6_2 = "^1[REINS] Bone not found: "
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L8_2 = "^7"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    L5_2 = nil
    return L5_2
  end
  if not A2_2 then
    A2_2 = 0.0
  end
  if not A3_2 then
    A3_2 = 0.0
  end
  L5_2 = GetWorldPositionOfEntityBone
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_1
  L6_2 = L6_2()
  if not L6_2 then
    L7_2 = nil
    return L7_2
  end
  L7_2 = CreateObjectNoOffset
  L8_2 = L6_2
  L9_2 = L5_2.x
  L10_2 = L5_2.y
  L11_2 = L5_2.z
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L7_2 and 0 ~= L7_2 then
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      goto lbl_64
    end
  end
  L8_2 = nil
  do return L8_2 end
  ::lbl_64::
  L8_2 = SetEntityCollision
  L9_2 = L7_2
  L10_2 = false
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityVisible
  L9_2 = L7_2
  L10_2 = false
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityInvincible
  L9_2 = L7_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = SetEntityDynamic
  L9_2 = L7_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = A0_2
  L11_2 = L4_2
  L12_2 = A3_2
  L13_2 = A2_2
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = 2
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  return L7_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  if A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_10::
  if not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_1
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1
  if L2_2 == A0_2 then
    L2_2 = HorseReins
    L2_2 = #L2_2
    if L2_2 >= 2 then
      L2_2 = HorseReins
      L2_2 = L2_2[1]
      if L2_2 then
        L2_2 = HorseReins
        L2_2 = L2_2[2]
        if L2_2 then
          L2_2 = DoesRopeExist
          L3_2 = HorseReins
          L3_2 = L3_2[1]
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = DoesRopeExist
            L3_2 = HorseReins
            L3_2 = L3_2[2]
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L2_2 = true
              return L2_2
            end
          end
        end
      end
    end
  end
  L2_2 = true
  L1_1 = L2_2
  L2_2 = 1
  L3_2 = HorseReins
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = HorseReins
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = DoesRopeExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteRope
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L2_2 = {}
  HorseReins = L2_2
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = ReinAnchors
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = ReinAnchors
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L2_2 = {}
  ReinAnchors = L2_2
  L2_2 = nil
  L0_1 = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 57005
  L4_2 = 18905
  L5_2 = 0.15
  L6_2 = 0.13
  L7_2 = L4_1
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = 0.0
  L11_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L4_1
  L9_2 = L2_2
  L10_2 = L4_2
  L11_2 = 0.0
  L12_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_1
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = -L6_2
  L13_2 = 0.0
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L4_1
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = L6_2
  L14_2 = 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if not (L7_2 and L8_2 and L9_2) or not L10_2 then
    if L7_2 then
      L11_2 = DoesEntityExist
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = DeleteEntity
        L12_2 = L7_2
        L11_2(L12_2)
      end
    end
    if L8_2 then
      L11_2 = DoesEntityExist
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = DeleteEntity
        L12_2 = L8_2
        L11_2(L12_2)
      end
    end
    if L9_2 then
      L11_2 = DoesEntityExist
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = DeleteEntity
        L12_2 = L9_2
        L11_2(L12_2)
      end
    end
    if L10_2 then
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = DeleteEntity
        L12_2 = L10_2
        L11_2(L12_2)
      end
    end
    L11_2 = false
    L1_1 = L11_2
    L11_2 = false
    return L11_2
  end
  L11_2 = {}
  L12_2 = L7_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = L10_2
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  ReinAnchors = L11_2
  L11_2 = Wait
  L12_2 = 100
  L11_2(L12_2)
  L11_2 = DoesEntityExist
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L11_2 = DoesEntityExist
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = DoesEntityExist
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = DoesEntityExist
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          goto lbl_216
        end
      end
    end
  end
  L11_2 = false
  L1_1 = L11_2
  L11_2 = DeleteHorseReins
  L11_2()
  L11_2 = false
  do return L11_2 end
  ::lbl_216::
  L11_2 = GetEntityCoords
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  L12_2 = GetEntityCoords
  L13_2 = L9_2
  L12_2 = L12_2(L13_2)
  L11_2 = L11_2 - L12_2
  L11_2 = #L11_2
  L12_2 = GetEntityCoords
  L13_2 = L8_2
  L12_2 = L12_2(L13_2)
  L13_2 = GetEntityCoords
  L14_2 = L10_2
  L13_2 = L13_2(L14_2)
  L12_2 = L12_2 - L13_2
  L12_2 = #L12_2
  L13_2 = math
  L13_2 = L13_2.max
  L14_2 = L11_2
  L15_2 = L12_2
  L13_2 = L13_2(L14_2, L15_2)
  L13_2 = L13_2 * 3
  L14_2 = CreateReinRope
  L15_2 = L7_2
  L16_2 = L9_2
  L17_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = CreateReinRope
  L16_2 = L8_2
  L17_2 = L10_2
  L18_2 = L13_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  if not L14_2 or not L15_2 then
    if L14_2 then
      L16_2 = DoesRopeExist
      L17_2 = L14_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = DeleteRope
        L17_2 = L14_2
        L16_2(L17_2)
      end
    end
    if L15_2 then
      L16_2 = DoesRopeExist
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = DeleteRope
        L17_2 = L15_2
        L16_2(L17_2)
      end
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
    L16_2 = 1
    L17_2 = ReinAnchors
    L17_2 = #L17_2
    L18_2 = 1
    for L19_2 = L16_2, L17_2, L18_2 do
      L20_2 = ReinAnchors
      L20_2 = L20_2[L19_2]
      if L20_2 then
        L21_2 = DoesEntityExist
        L22_2 = L20_2
        L21_2 = L21_2(L22_2)
        if L21_2 then
          L21_2 = SetEntityAsMissionEntity
          L22_2 = L20_2
          L21_2(L22_2)
          L21_2 = DeleteEntity
          L22_2 = L20_2
          L21_2(L22_2)
        end
      end
    end
    L16_2 = {}
    ReinAnchors = L16_2
    L16_2 = {}
    HorseReins = L16_2
    L16_2 = nil
    L0_1 = L16_2
    L16_2 = false
    L1_1 = L16_2
    L16_2 = false
    return L16_2
  end
  L16_2 = {}
  L17_2 = L14_2
  L18_2 = L15_2
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  HorseReins = L16_2
  L0_1 = A0_2
  L16_2 = false
  L1_1 = L16_2
  L16_2 = true
  return L16_2
end
CreateHorseReins = L5_1
L5_1 = {}
L5_1[24] = "~INPUT_ATTACK~"
L5_1[25] = "~INPUT_AIM~"
L5_1[45] = "~INPUT_RELOAD~"
L5_1[44] = "~INPUT_COVER~"
L5_1[21] = "~INPUT_SPRINT~"
L5_1[22] = "~INPUT_JUMP~"
L5_1[32] = "~INPUT_MOVE_UP_ONLY~"
L5_1[33] = "~INPUT_MOVE_DOWN_ONLY~"
L5_1[34] = "~INPUT_MOVE_LEFT_ONLY~"
L5_1[35] = "~INPUT_MOVE_RIGHT_ONLY~"
L5_1[23] = "~INPUT_ENTER~"
L5_1[73] = "~INPUT_VEH_DUCK~"
L5_1[166] = "~INPUT_SELECT_CHARACTER_MICHAEL~"
L6_1 = 288
L5_1[L6_1] = "~INPUT_REPLAY_START_STOP_RECORDING~"
InputNames = L5_1
L5_1 = nil
L6_1 = 0
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L5_1
  if L2_2 == A0_2 then
    L2_2 = L6_1
    L2_2 = L1_2 - L2_2
    L3_2 = 2000
    if not (L2_2 >= L3_2) then
      goto lbl_26
    end
  end
  L5_1 = A0_2
  L6_1 = L1_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Off_High"
  L5_2 = "MP_RADIO_SFX"
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  ::lbl_26::
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = ""
  L3_2 = ipairs
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2
    L10_2 = InputNames
    L10_2 = L10_2[L8_2]
    if not L10_2 then
      L10_2 = "["
      L11_2 = tostring
      L12_2 = L8_2
      L11_2 = L11_2(L12_2)
      L12_2 = "]"
      L10_2 = L10_2 .. L11_2 .. L12_2
    end
    L9_2 = L9_2 .. L10_2
    L2_2 = L9_2
    L9_2 = #A1_2
    if L7_2 < L9_2 then
      L9_2 = L2_2
      L10_2 = " + "
      L9_2 = L9_2 .. L10_2
      L2_2 = L9_2
    end
  end
  L3_2 = "%s %s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L2_2
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = ""
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L7_1
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = BeginTextCommandDisplayHelp
  L5_2 = "STRING"
  L4_2(L5_2)
  L4_2 = AddTextComponentSubstringPlayerName
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = EndTextCommandDisplayHelp
  L5_2 = 0
  L6_2 = false
  L7_2 = true
  L8_2 = -1
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
ShowInstructionalButtons = L8_1
L8_1 = exports
L9_1 = "ShowInstructionalButtons"
L10_1 = ShowInstructionalButtons
L8_1(L9_1, L10_1)
InstructionalHintToken = 0
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = 9000
  end
  L3_2 = InstructionalHintToken
  L3_2 = L3_2 + 1
  InstructionalHintToken = L3_2
  L3_2 = InstructionalHintToken
  L4_2 = ""
  L5_2 = ipairs
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L4_2
    L12_2 = InputNames
    L12_2 = L12_2[L10_2]
    if not L12_2 then
      L12_2 = "["
      L13_2 = tostring
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      L14_2 = "]"
      L12_2 = L12_2 .. L13_2 .. L14_2
    end
    L11_2 = L11_2 .. L12_2
    L4_2 = L11_2
    L11_2 = #A1_2
    if L9_2 < L11_2 then
      L11_2 = L4_2
      L12_2 = " + "
      L11_2 = L11_2 .. L12_2
      L4_2 = L11_2
    end
  end
  L5_2 = "%s %s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L4_2
  L8_2 = A0_2 or L8_2
  if not A0_2 then
    L8_2 = ""
  end
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L7_1
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A2_2
    L0_3 = L0_3 + L1_3
    while true do
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = L3_2
      L2_3 = InstructionalHintToken
      if L1_3 ~= L2_3 then
        L1_3 = ClearAllHelpMessages
        L1_3()
        L1_3 = ClearHelp
        L2_3 = true
        L1_3(L2_3)
        return
      end
      L1_3 = BeginTextCommandDisplayHelp
      L2_3 = "STRING"
      L1_3(L2_3)
      L1_3 = AddTextComponentSubstringPlayerName
      L2_3 = L5_2
      L1_3(L2_3)
      L1_3 = EndTextCommandDisplayHelp
      L2_3 = 0
      L3_3 = false
      L4_3 = false
      L5_3 = -1
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = L3_2
    L2_3 = InstructionalHintToken
    if L1_3 == L2_3 then
      L1_3 = ClearAllHelpMessages
      L1_3()
      L1_3 = ClearHelp
      L2_3 = true
      L1_3(L2_3)
    end
  end
  L6_2(L7_2)
end
ShowInstructionalButtonsTimed = L8_1
L8_1 = exports
L9_1 = "ShowInstructionalButtonsTimed"
L10_1 = ShowInstructionalButtonsTimed
L8_1(L9_1, L10_1)
horsedebug = false
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = horsedebug
  if L1_2 then
    L1_2 = horseprint
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
dhorseprint = L8_1
lastUpdateMs = 0
MAX_DELTA_MS = 250
CamActiveLocal = false
isJumping = false
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = IsPedDeadOrDying
  L2_2 = A0_2
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2
  L2_2 = IsPedInAnyVehicle
  L3_2 = A0_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = A0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L1_2 = L2_2
    end
  end
  L2_2 = GetEntityVelocity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = #L3_2
  L4_2 = 0.3
  L4_2 = L3_2 > L4_2
  return L4_2
end
IsPedMoving = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = A1_2
    L1_3 = 7000
    L2_3 = GetGameTimer
    L2_3 = L2_3()
    L3_3 = L1_3
    L4_3 = 0.0
    L5_3 = 0.003
    if nil == L0_3 then
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L0_3 = L6_3
      L6_3 = Wait
      L7_3 = 25
      L6_3(L7_3)
    end
    while true do
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = DoesEntityExist
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = IsPedFatallyInjured
        L7_3 = L0_3
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          goto lbl_30
        end
      end
      do return end
      ::lbl_30::
      L6_3 = GetGameTimer
      L6_3 = L6_3()
      L7_3 = L6_3 - L2_3
      if L3_3 <= L7_3 then
        break
      end
      L8_3 = L7_3 / L3_3
      L4_3 = L8_3 * 0.6
      L9_3 = GetEntityCoords
      L10_3 = L0_3
      L9_3 = L9_3(L10_3)
      L10_3 = DrawText3DHorse
      L11_3 = L9_3.x
      L12_3 = L9_3.y
      L13_3 = L9_3.z
      L13_3 = L13_3 + L4_3
      L14_3 = A0_2
      L15_3 = 0.3
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
    end
  end
  L2_2(L3_2)
end
testo3d = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = HasAnimDictLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
LoadAnim = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = LoadAnim
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = IsEntityPlayingAnim
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = TaskPlayAnim
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = 5.0
    L9_2 = 5.0
    L10_2 = A2_2
    L11_2 = A3_2
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
faiAnim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = horseprint
    L2_2 = "MODEL IS NIL"
    L1_2(L2_2)
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = IsModelValid
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_33
    end
  end
  L2_2 = horseprint
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  do return end
  ::lbl_33::
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = horseprint
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L8_1
possoScendere = true
miMuovo = nil
controlloMovement = 0
possoGirare = true
lastPos = nil
dusttimer = 0
dustballa = nil
dustballa2 = nil
AttachedEntity = nil
increasedflag = 1
L8_1 = {}
L8_1.a = ""
L8_1.b = ""
lastAnims = L8_1
tiredMode = false
notBUY = nil
LastNPCEdit = nil
myAnimalAnimWas = ""
myAnimalAnim = "deer"
staminaMode = false
L8_1 = exports
L9_1 = "possoScendere"
function L10_1(A0_2)
  local L1_2
  possoScendere = A0_2
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L6_2 = 3.0
  if nil ~= A3_2 then
    L6_2 = A3_2
  end
  L7_2 = HasNamedPtfxAssetLoaded
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = RequestNamedPtfxAsset
    L8_2 = A0_2
    L7_2(L8_2)
  end
  while true do
    L7_2 = HasNamedPtfxAssetLoaded
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = SetPtfxAssetNextCall
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if nil ~= A4_2 then
    L7_2 = A4_2
  end
  L8_2 = StartParticleFxLoopedAtCoord
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = L7_2.x
  L12_2 = L7_2.y
  L13_2 = L7_2.z
  L14_2 = L6_2
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if nil ~= A5_2 then
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 1500
      L0_3(L1_3)
      L0_3 = StopParticleFxLooped
      L1_3 = L8_2
      L2_3 = 0
      L0_3(L1_3, L2_3)
      L0_3 = RemoveParticleFx
      L1_3 = L8_2
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L9_2(L10_2)
  end
  return L8_2
end
PlayEffect = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 11
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedDrawableVariation
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = GetPedTextureVariation
    L8_2 = A0_2
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if nil ~= L6_2 then
      if L7_2 > 0 then
        L8_2 = {}
        L9_2 = L6_2
        L10_2 = L7_2
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L1_2[L5_2] = L8_2
      else
        L8_2 = {}
        L9_2 = L6_2
        L10_2 = 0
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L1_2[L5_2] = L8_2
      end
    end
  end
  return L1_2
end
GetComponentAnimal = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A1_2 then
    L2_2 = next
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if nil ~= L2_2 then
      L2_2 = pairs
      L3_2 = A1_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = tonumber
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L9_2 = L7_2[1]
        if not L9_2 then
          L9_2 = 0
        end
        L10_2 = L7_2[2]
        if not L10_2 then
          L10_2 = 0
        end
        if L8_2 then
          L11_2 = IsPedComponentVariationValid
          L12_2 = A0_2
          L13_2 = L8_2
          L14_2 = L9_2
          L15_2 = L10_2
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          if L11_2 then
            L11_2 = SetPedPreloadVariationData
            L12_2 = A0_2
            L13_2 = L8_2
            L14_2 = L9_2
            L15_2 = L10_2
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = SetPedComponentVariation
            L12_2 = A0_2
            L13_2 = L8_2
            L14_2 = L9_2
            L15_2 = L10_2
            L16_2 = 0
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          else
          end
        end
      end
  end
  else
    L2_2 = SetPedDefaultComponentVariation
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
LoadComponentsAnimal = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = SonoInAria
  if not L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = DisablePedPainAudio
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = StopPedSpeaking
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = GetEntityForwardVector
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityVelocity
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = A1_2
  L6_2 = SetEntityVelocity
  L7_2 = A0_2
  L8_2 = L2_2.x
  L8_2 = L8_2 * L4_2
  L9_2 = L2_2.y
  L9_2 = L9_2 * L4_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  SonoInAria = true
  L6_2 = Wait
  L7_2 = 250
  L6_2(L7_2)
  while true do
    L6_2 = SonoInAria
    if not L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = DisablePedPainAudio
    L7_2 = A0_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = StopPedSpeaking
    L7_2 = A0_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = vector3
    L7_2 = 0
    L8_2 = 255
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = GetEntityForwardVector
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = GetEntityCoords
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    L10_2 = L7_2 * 0.1
    L9_2 = L9_2 + L10_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L11_2 = 511
    L12_2 = GetShapeTestResult
    L13_2 = StartShapeTestRay
    L14_2 = L8_2
    L15_2 = L9_2
    L16_2 = L10_2
    L17_2 = L8_2
    L18_2 = L9_2
    L19_2 = L10_2 - 1000.0
    L20_2 = L11_2
    L21_2 = A0_2
    L22_2 = 1
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    if L13_2 and L14_2 then
      L17_2 = vector3
      L18_2 = L8_2
      L19_2 = L9_2
      L20_2 = L10_2 + 1.0
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      L18_2 = vector3
      L19_2 = L14_2.x
      L20_2 = L14_2.y
      L21_2 = L14_2.z
      L21_2 = L21_2 + 0.3
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L17_2 = L17_2 - L18_2
      L17_2 = #L17_2
      L18_2 = 2.5
      if L17_2 < L18_2 then
        SonoInAria = false
      end
    end
  end
  L6_2 = Wait
  L7_2 = 0
  L6_2(L7_2)
  L6_2 = DoesEntityExist
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = ClearPedTasks
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = ClearPedSecondaryTask
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = ClearPedTasksImmediately
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = DisablePedPainAudio
    L7_2 = A0_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = StopPedSpeaking
    L7_2 = A0_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetPedRagdollOnCollision
    L7_2 = A0_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = "move_fall@beastjump"
    L7_2 = "low_land_stand"
    L8_2 = HasAnimDictLoaded
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = RequestAnimDict
      L9_2 = L6_2
      L8_2(L9_2)
      while true do
        L8_2 = HasAnimDictLoaded
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          break
        end
        L8_2 = Wait
        L9_2 = 10
        L8_2(L9_2)
      end
    end
    L8_2 = TaskPlayAnim
    L9_2 = A0_2
    L10_2 = L6_2
    L11_2 = L7_2
    L12_2 = 1.3
    L13_2 = 1.3
    L14_2 = -1
    L15_2 = 1
    L16_2 = 0
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
end
MakeNpcSuperJump = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = HorseExist
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = IsEntityPlayingAnim
    L1_2 = GetHorse
    L1_2 = L1_2()
    L2_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
    L3_2 = "idle_b"
    L4_2 = 3
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
    if not L0_2 then
      L0_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
      L1_2 = HasAnimDictLoaded
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = RequestAnimDict
        L2_2 = L0_2
        L1_2(L2_2)
        while true do
          L1_2 = HasAnimDictLoaded
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if L1_2 then
            break
          end
          L1_2 = Wait
          L2_2 = 10
          L1_2(L2_2)
        end
      end
      L1_2 = TaskPlayAnim
      L2_2 = GetHorse
      L2_2 = L2_2()
      L3_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
      L4_2 = "idle_b"
      L5_2 = 8.0
      L6_2 = 8.0
      L7_2 = -1
      L8_2 = 1
      L9_2 = 0
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
AnimHorseMangia = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = BeginTextCommandScaleformString
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentScaleform
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = EndTextCommandScaleformString
  L1_2()
end
ButtonMessageH = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L14_2 = "instructional_buttons"
  L15_2 = RequestScaleformMovie
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  while true do
    L16_2 = HasScaleformMovieLoaded
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      break
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "CLEAR_ALL"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_CLEAR_SPACE"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 200
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  if A0_2 and A0_2 > -1 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A0_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A0_2 and -1 == A0_2 and A1_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 6
    L16_2(L17_2)
    L16_2 = ButtonMessageH
    L17_2 = A1_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A2_2 and A3_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 5
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A2_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A3_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A4_2 and A5_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 4
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A4_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A5_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A6_2 and A7_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 3
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A6_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A7_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A8_2 and A9_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 2
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A8_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A9_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A10_2 and A11_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 1
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 1
    L19_2 = A10_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A11_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  if A12_2 and A13_2 then
    L16_2 = PushScaleformMovieFunction
    L17_2 = L15_2
    L18_2 = "SET_DATA_SLOT"
    L16_2(L17_2, L18_2)
    L16_2 = PushScaleformMovieFunctionParameterInt
    L17_2 = 0
    L16_2(L17_2)
    L16_2 = ButtonH
    L17_2 = GetControlInstructionalButton
    L18_2 = 2
    L19_2 = A12_2
    L20_2 = true
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = ButtonMessageH
    L17_2 = A13_2
    L16_2(L17_2)
    L16_2 = PopScaleformMovieFunctionVoid
    L16_2()
  end
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L16_2(L17_2, L18_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = PushScaleformMovieFunction
  L17_2 = L15_2
  L18_2 = "SET_BACKGROUND_COLOUR"
  L16_2(L17_2, L18_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 0
  L16_2(L17_2)
  L16_2 = PushScaleformMovieFunctionParameterInt
  L17_2 = 80
  L16_2(L17_2)
  L16_2 = PopScaleformMovieFunctionVoid
  L16_2()
  L16_2 = DrawScaleformMovieFullscreen
  L17_2 = L15_2
  L16_2(L17_2)
end
InfoHorse = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if 0 ~= L7_2 then
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L0_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L0_2
end
Giocatori = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = Giocatori
  L0_2 = L0_2()
  L1_2 = -1
  L2_2 = -1
  L3_2 = PlayerId
  L3_2 = L3_2()
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = #L0_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L0_2[L9_2]
    if L10_2 ~= L3_2 then
      L11_2 = GetPlayerPed
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if 0 ~= L11_2 then
        L12_2 = DoesEntityExist
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = GetEntityCoords
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L13_2 = L5_2 - L12_2
          L13_2 = #L13_2
          if -1 == L2_2 or L2_2 > L13_2 then
            L1_2 = L10_2
            L2_2 = L13_2
          end
        end
      end
    end
  end
  L6_2 = L1_2
  L7_2 = L2_2
  return L6_2, L7_2
end
PlayerVicino = L8_1
HeadAnimal = 0
ColpitoCavallo = 0
DelayColpitoHorse = false
PossoSalire = true
VarVeloce = 3.0
VarPiano = 0.3
ROTCavallo = 0
RotAttesa = 0
L8_1 = VarPiano
Range = L8_1
myRunStyle = "creatures@deer@move"
myRunStyleWas = ""
Invisibile = false
objCava = nil
mostraInfo = true
playerCarryng = nil
InShopHorse = false
L8_1 = {}
AnimaliShopSpawned = L8_1
L8_1 = exports
L9_1 = "inShopAnimals"
function L10_1()
  local L0_2, L1_2
  L0_2 = InShopHorse
  return L0_2
end
L8_1(L9_1, L10_1)
L8_1 = {}
MyAnimals = L8_1
playerPed = nil
CavalloMiSegue = false
IsRidingAnimal = false
L8_1 = {}
L8_1.Handle = nil
L8_1.InControl = false
Animal = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  if L0_2 then
    L0_2 = true
    return L0_2
  else
    L0_2 = false
    return L0_2
  end
end
HorseExist = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  if L0_2 then
    L0_2 = Animal
    L0_2 = L0_2.Handle
    return L0_2
  else
    L0_2 = nil
    return L0_2
  end
end
GetHorse = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  if not A1_2 then
    A1_2 = 3000
  end
  while true do
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    if not (A1_2 > L3_2) then
      break
    end
    L3_2 = GetPlayerFromServerId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if -1 ~= L3_2 then
      L4_2 = GetPlayerPed
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if 0 ~= L4_2 then
        L5_2 = DoesEntityExist
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = L4_2
          L6_2 = L3_2
          return L5_2, L6_2
        end
      end
    end
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
  end
  L3_2 = nil
  L4_2 = -1
  return L3_2, L4_2
end
GetTargetPedSafe = L8_1
L8_1 = {}
L9_1 = {}
L9_1.x = 0.0
L9_1.y = -0.35
L9_1.z = -0.05
L8_1[1] = L9_1
L9_1 = {}
L9_1.x = 0.0
L9_1.y = -0.7
L9_1.z = -0.05
L8_1[2] = L9_1
L9_1 = {}
L9_1.x = 0.0
L9_1.y = -1.05
L9_1.z = -0.05
L8_1[3] = L9_1
L9_1 = nil
L10_1 = false
L11_1 = 0
L12_1 = RegisterNetEvent
L13_1 = "horse:syncCava"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "horse:syncCava"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetTargetPedSafe
  L4_2 = A0_2
  L5_2 = 3000
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = print
  L6_2 = "[SYNCCAVA CLIENT] RICEVUTO rider:"
  L7_2 = A0_2
  L8_2 = "seat:"
  L9_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L3_2 then
    L5_2 = horseprint
    L6_2 = "[horse in 2] ERROR: target ped not valid after retry"
    L5_2(L6_2)
    return
  end
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = L8_1
  L5_2 = L6_2[L5_2]
  if not L5_2 then
    L5_2 = L8_1
    L5_2 = L5_2[1]
  end
  L6_2 = ClearPedSecondaryTask
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = ClearPedTasksImmediately
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = IsEntityAttached
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = DetachEntity
    L7_2 = L2_2
    L8_2 = true
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Wait
    L7_2 = 100
    L6_2(L7_2)
  end
  MountSetup = false
  L6_2 = AttachEntityToEntity
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = GetPedBoneIndex
  L10_2 = L3_2
  L11_2 = 0
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = true
  L20_2 = 2
  L21_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2 = horseprint
  L7_2 = "[horse in 2] seat:"
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = horseprint
  L7_2 = "[horse in 2] attached:"
  L8_2 = IsEntityAttached
  L9_2 = L2_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2 = IsEntityAttached
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = L11_1
    L6_2 = L6_2 + 1
    L11_1 = L6_2
    L6_2 = tonumber
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L9_1 = L6_2
    L6_2 = false
    L10_1 = L6_2
    L6_2 = LoopCarringCavallo
    L7_2 = L11_1
    L6_2(L7_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "horse:stop"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "horse:stop"
function L14_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = false
function L13_1()
  local L0_2, L1_2
  L0_2 = L12_1
  if L0_2 then
    return
  end
  L0_2 = true
  L12_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = Wait
    L1_3 = 225
    L0_3(L1_3)
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = L9_1
    L2_3 = 0
    while true do
      L3_3 = DoesEntityExist
      L4_3 = L0_3
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        break
      end
      L3_3 = IsEntityAttached
      L4_3 = L0_3
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        break
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
      L2_3 = L2_3 + 1
      L3_3 = Animal
      L3_3 = L3_3.InControl
      if not L3_3 then
        L3_3 = IsControlJustPressed
        L4_3 = 0
        L5_3 = 73
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlJustPressed
          L4_3 = 0
          L5_3 = 73
          L3_3 = L3_3(L4_3, L5_3)
        end
        if L3_3 then
          L3_3 = DetachEntity
          L4_3 = L0_3
          L5_3 = true
          L6_3 = false
          L3_3(L4_3, L5_3, L6_3)
          break
        end
      else
        L3_3 = DetachEntity
        L4_3 = L0_3
        L5_3 = true
        L6_3 = false
        L3_3(L4_3, L5_3, L6_3)
        break
      end
    end
    L3_3 = L9_1
    if L3_3 then
      L3_3 = TriggerServerEvent
      L4_3 = "horse:stop"
      L5_3 = L9_1
      L3_3(L4_3, L5_3)
      L3_3 = nil
      L9_1 = L3_3
    end
    L3_3 = ClearPedSecondaryTask
    L4_3 = L0_3
    L3_3(L4_3)
    L3_3 = ClearPedTasks
    L4_3 = L0_3
    L3_3(L4_3)
    L3_3 = false
    L12_1 = L3_3
  end
  L0_2(L1_2)
end
LoopCarringCavallo = L13_1
L13_1 = RegisterNetEvent
L14_1 = "horse:forcePassengerStop"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "horse:forcePassengerStop"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = L9_1
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = L11_1
  L1_2 = L1_2 + 1
  L11_1 = L1_2
  L1_2 = nil
  L9_1 = L1_2
  L1_2 = false
  L12_1 = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityAttached
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DetachEntity
    L3_2 = L1_2
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = ClearPedSecondaryTask
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "horse:passengerStopped"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "horse:passengerStopped"
function L15_1(A0_2)
  local L1_2
  L1_2 = playerCarryng
  if L1_2 == A0_2 then
    playerCarryng = nil
  end
end
L13_1(L14_1, L15_1)
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
RotToHorse = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 - L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 - L6_2
  L6_2 = GetHeadingFromVector_2d
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetEntityHeading
  L8_2 = A0_2
  L9_2 = L6_2 - 90
  L7_2(L8_2, L9_2)
end
RotToHorse2 = L13_1
UltimoCavallo = nil
BLIPCAVALLO = nil
L13_1 = RegisterNetEvent
L14_1 = "horse:spawnPed"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "horse:spawnPed"
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = nil
  if nil ~= A1_2 then
    L5_2 = A1_2
  end
  L6_2 = RequestModelStriano
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = PlayerPedId
  L11_2 = L11_2()
  if nil == A2_2 then
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L6_2 = L12_2
    L12_2 = GetEntityForwardVector
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L7_2 = L12_2
    L12_2 = table
    L12_2 = L12_2.unpack
    L13_2 = L7_2 * 0.3
    L13_2 = L6_2 + L13_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2 = L14_2
    L9_2 = L13_2
    L8_2 = L12_2
    L10_2 = L10_2 - 1
  else
    L6_2 = A2_2
    L12_2 = table
    L12_2 = L12_2.unpack
    L13_2 = L6_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2 = L14_2
    L9_2 = L13_2
    L8_2 = L12_2
  end
  L12_2 = GetEntityHeading
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  if A3_2 then
    L12_2 = A3_2
  end
  L13_2 = CreatePed
  L14_2 = 26
  L15_2 = A0_2
  L16_2 = L8_2
  L17_2 = L9_2
  L18_2 = L10_2
  L19_2 = L12_2
  L20_2 = true
  L21_2 = false
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L14_2 = 0
  while true do
    L15_2 = DoesEntityExist
    L16_2 = L13_2
    L15_2 = L15_2(L16_2)
    if not (not L15_2 and L14_2 < 100) then
      break
    end
    L14_2 = L14_2 + 1
    L15_2 = Wait
    L16_2 = 0
    L15_2(L16_2)
  end
  if L14_2 < 100 then
    L14_2 = 0
    while true do
      L15_2 = PedToNet
      L16_2 = L13_2
      L15_2 = L15_2(L16_2)
      if 0 ~= L15_2 then
        L15_2 = PedToNet
        L16_2 = L13_2
        L15_2 = L15_2(L16_2)
        if not (nil == L15_2 and L14_2 < 100) then
          break
        end
      end
      L14_2 = L14_2 + 1
      L15_2 = Wait
      L16_2 = 0
      L15_2(L16_2)
    end
    L15_2 = SetPedDefaultComponentVariation
    L16_2 = L13_2
    L15_2(L16_2)
    L15_2 = SetModelAsNoLongerNeeded
    L16_2 = A0_2
    L15_2(L16_2)
    L15_2 = Wait
    L16_2 = 25
    L15_2(L16_2)
    if nil ~= L5_2 then
      L15_2 = SetEntityAlpha
      L16_2 = L13_2
      L17_2 = L5_2
      L15_2(L16_2, L17_2)
    end
    L15_2 = Wait
    L16_2 = 25
    L15_2(L16_2)
    if A3_2 then
      L15_2 = SetEntityHeading
      L16_2 = L13_2
      L17_2 = A3_2
      L15_2(L16_2, L17_2)
    end
    if nil ~= A4_2 then
      L15_2 = LoadComponentsAnimal
      L16_2 = L13_2
      L17_2 = A4_2
      L15_2(L16_2, L17_2)
    else
      L15_2 = SetPedDefaultComponentVariation
      L16_2 = L13_2
      L15_2(L16_2)
    end
    L15_2 = GetNumberOfPedDrawableVariations
    L16_2 = L13_2
    L17_2 = 0
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = GetPedDrawableVariation
    L17_2 = L13_2
    L18_2 = 0
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = GetNumberOfPedTextureVariations
    L18_2 = L13_2
    L19_2 = 0
    L20_2 = L16_2
    L17_2 = L17_2(L18_2, L19_2, L20_2)
    L18_2 = L15_2 > 1 or L17_2 > 1
    if not L18_2 then
      L19_2 = SetPedDefaultComponentVariation
      L20_2 = L13_2
      L19_2(L20_2)
    end
    UltimoCavallo = L13_2
    L19_2 = oxTargetActive
    if L19_2 then
      L19_2 = AddOxEyeMountMenu
      L20_2 = L13_2
      L19_2(L20_2)
    end
    L19_2 = onGetMountMsg
    L19_2()
  else
    L15_2 = horseprint
    L16_2 = "The ped you try spawn not exist, please insert a valid model to spawn ped with (horse:spawnPed)"
    L15_2(L16_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = false
function L14_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L13_1
      if L0_3 then
        L0_3 = DisableAllControlActions
        L0_3()
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
BloccoCompletamente = L14_1
L14_1 = RegisterNetEvent
L15_1 = "spawnHorse"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "spawnHorse"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = PossoSalire
  if L4_2 then
    L4_2 = IsPedHuman
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = nil
      if nil ~= A1_2 then
        L4_2 = A1_2
      end
      L5_2 = Animal
      L5_2 = L5_2.Handle
      if nil ~= L5_2 then
        L5_2 = DoesEntityExist
        L6_2 = Animal
        L6_2 = L6_2.Handle
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = DoesBlipExist
          L6_2 = BLIPCAVALLO
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = RemoveBlip
            L6_2 = BLIPCAVALLO
            L5_2(L6_2)
            BLIPCAVALLO = nil
          end
          L5_2 = SetEntityAsMissionEntity
          L6_2 = Animal
          L6_2 = L6_2.Handle
          L5_2(L6_2)
          L5_2 = DeleteEntity
          L6_2 = Animal
          L6_2 = L6_2.Handle
          L5_2(L6_2)
          L5_2 = Animal
          L5_2.Handle = nil
          L5_2 = ClearPedTasks
          L6_2 = L3_2
          L5_2(L6_2)
          L5_2 = "gestures@f@standing@casual"
          L6_2 = HasAnimDictLoaded
          L7_2 = L5_2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = RequestAnimDict
            L7_2 = L5_2
            L6_2(L7_2)
            while true do
              L6_2 = HasAnimDictLoaded
              L7_2 = L5_2
              L6_2 = L6_2(L7_2)
              if L6_2 then
                break
              end
              L6_2 = Wait
              L7_2 = 10
              L6_2(L7_2)
            end
          end
          L6_2 = TaskPlayAnim
          L7_2 = L3_2
          L8_2 = "gestures@f@standing@casual"
          L9_2 = "gesture_pleased"
          L10_2 = 8.0
          L11_2 = 8.0
          L12_2 = 5
          L13_2 = 51
          L14_2 = 0
          L15_2 = false
          L16_2 = false
          L17_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L6_2 = ClearPedTasks
          L7_2 = L3_2
          L6_2(L7_2)
          L6_2 = ClearPedSecondaryTask
          L7_2 = L3_2
          L6_2(L7_2)
        end
      end
      L5_2 = DelAnteprimaAnimale
      L5_2()
      L5_2 = true
      L13_1 = L5_2
      L5_2 = BloccoCompletamente
      L5_2()
      L5_2 = PlaySoundFrontend
      L6_2 = -1
      L7_2 = "WOODEN_DOOR_CLOSING_AT"
      L8_2 = "0"
      L9_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = RequestModelStriano
      L6_2 = A0_2
      L5_2(L6_2)
      L5_2 = TriggerEvent
      L6_2 = "horse:spawnPed"
      L7_2 = A0_2
      L8_2 = L4_2
      L9_2 = nil
      L10_2 = nil
      L11_2 = A2_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = Wait
      L6_2 = 250
      L5_2(L6_2)
      L5_2 = SaliACavallo
      L5_2()
      L5_2 = Wait
      L6_2 = 250
      L5_2(L6_2)
      L5_2 = false
      L13_1 = L5_2
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "dropHorse"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "dropHorse"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = Animal
    L1_2 = L1_2.Handle
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = IsEntityPlayingAnim
      L2_2 = GetHorse
      L2_2 = L2_2()
      L3_2 = "rick3d@horsepassage"
      L4_2 = "horsepassage"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = ClearPedTasks
        L2_2 = GetHorse
        L2_2, L3_2, L4_2, L5_2 = L2_2()
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
      L1_2 = DoesBlipExist
      L2_2 = BLIPCAVALLO
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = RemoveBlip
        L2_2 = BLIPCAVALLO
        L1_2(L2_2)
        BLIPCAVALLO = nil
      end
      L1_2 = RemoveOxEyeMountMenu
      L2_2 = Animal
      L2_2 = L2_2.Handle
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = Animal
      L2_2 = L2_2.Handle
      L1_2(L2_2)
      L1_2 = ClearPedTasks
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = ClearPedSecondaryTask
      L2_2 = L0_2
      L1_2(L2_2)
      IsRidingAnimal = false
      L1_2 = Animal
      L1_2.Handle = nil
      L1_2 = EndOrbitCam
      L1_2()
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "possoCavalcare"
function L16_1(A0_2)
  local L1_2
  PossoSalire = A0_2
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "myhorse"
function L16_1()
  local L0_2, L1_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  return L0_2
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "aCavallo"
function L16_1()
  local L0_2, L1_2
  L0_2 = IsRidingAnimal
  return L0_2
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "horseJump"
function L16_1(A0_2)
  local L1_2
  HorseCanJump = A0_2
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "gethorseJump"
function L16_1()
  local L0_2, L1_2
  L0_2 = HorseCanJump
  return L0_2
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "lasthorse"
function L16_1()
  local L0_2, L1_2
  L0_2 = UltimoCavallo
  return L0_2
end
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = A2_2.x
  L7_2 = L5_2 * L7_2
  L8_2 = A2_2.y
  L8_2 = L6_2 * L8_2
  L7_2 = L7_2 + L8_2
  L8_2 = vector3
  L9_2 = A2_2.x
  L9_2 = L9_2 * L7_2
  L9_2 = L5_2 - L9_2
  L10_2 = A2_2.y
  L10_2 = L10_2 * L7_2
  L10_2 = L6_2 - L10_2
  L11_2 = A2_2.z
  L11_2 = -L11_2
  L11_2 = L11_2 * L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = math
  L9_2 = L9_2.sqrt
  L10_2 = L8_2.x
  L11_2 = L8_2.x
  L10_2 = L10_2 * L11_2
  L11_2 = L8_2.y
  L12_2 = L8_2.y
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L11_2 = L8_2.z
  L12_2 = L8_2.z
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = 0.001
  if L9_2 < L10_2 then
    return
  end
  L10_2 = vector3
  L11_2 = L8_2.x
  L11_2 = L11_2 / L9_2
  L12_2 = L8_2.y
  L12_2 = L12_2 / L9_2
  L13_2 = L8_2.z
  L13_2 = L13_2 / L9_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L8_2 = L10_2
  L10_2 = vector3
  L11_2 = L8_2.y
  L12_2 = A2_2.z
  L11_2 = L11_2 * L12_2
  L12_2 = L8_2.z
  L13_2 = A2_2.y
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 - L12_2
  L12_2 = L8_2.z
  L13_2 = A2_2.x
  L12_2 = L12_2 * L13_2
  L13_2 = L8_2.x
  L14_2 = A2_2.z
  L13_2 = L13_2 * L14_2
  L12_2 = L12_2 - L13_2
  L13_2 = L8_2.x
  L14_2 = A2_2.y
  L13_2 = L13_2 * L14_2
  L14_2 = L8_2.y
  L15_2 = A2_2.x
  L14_2 = L14_2 * L15_2
  L13_2 = L13_2 - L14_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = SetEntityCoords
  L12_2 = A0_2
  L13_2 = A1_2.x
  L14_2 = A2_2.x
  L14_2 = L14_2 * 0.02
  L13_2 = L13_2 + L14_2
  L14_2 = A1_2.y
  L15_2 = A2_2.y
  L15_2 = L15_2 * 0.02
  L14_2 = L14_2 + L15_2
  L15_2 = A1_2.z
  L16_2 = A2_2.z
  L16_2 = L16_2 * 0.02
  L15_2 = L15_2 + L16_2
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = SetEntityMatrix
  L12_2 = A0_2
  L13_2 = L10_2.x
  L14_2 = L10_2.y
  L15_2 = L10_2.z
  L16_2 = L8_2.x
  L17_2 = L8_2.y
  L18_2 = L8_2.z
  L19_2 = A2_2.x
  L20_2 = A2_2.y
  L21_2 = A2_2.z
  L22_2 = A1_2.x
  L23_2 = A2_2.x
  L23_2 = L23_2 * 0.02
  L22_2 = L22_2 + L23_2
  L23_2 = A1_2.y
  L24_2 = A2_2.y
  L24_2 = L24_2 * 0.02
  L23_2 = L23_2 + L24_2
  L24_2 = A1_2.z
  L25_2 = A2_2.z
  L25_2 = L25_2 * 0.02
  L24_2 = L24_2 + L25_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
end
AlignObjectToNormal = L14_1
function L14_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
lerp = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = GetEntityHeading
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.x
  L5_2 = L5_2 * L3_2
  L6_2 = A1_2.y
  L6_2 = L6_2 * L4_2
  L5_2 = L5_2 + L6_2
  L6_2 = math
  L6_2 = L6_2.deg
  L7_2 = math
  L7_2 = L7_2.atan2
  L8_2 = L5_2
  L9_2 = A1_2.z
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  return L6_2(L7_2, L8_2, L9_2)
end
GetPedPitchFromNormal = L14_1
L14_1 = {}
L15_1 = -383623015
L14_1[L15_1] = true
L15_1 = 2044171877
L14_1[L15_1] = true
L15_1 = -946956202
L14_1[L15_1] = true
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = A2_2 + 1.0
  L6_2 = A2_2 - 5.0
  L7_2 = 1
  L8_2 = 10
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetShapeTestResult
    L12_2 = StartShapeTestRay
    L13_2 = A0_2
    L14_2 = A1_2
    L15_2 = L5_2
    L16_2 = A0_2
    L17_2 = A1_2
    L18_2 = L6_2
    L19_2 = A3_2
    L20_2 = A4_2
    L21_2 = 1
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if 1 ~= L12_2 then
      L16_2 = L11_2
      L17_2 = L12_2
      L18_2 = L13_2
      L19_2 = L14_2
      L20_2 = L15_2
      return L16_2, L17_2, L18_2, L19_2, L20_2
    end
    if 0 == L15_2 then
      L16_2 = L11_2
      L17_2 = L12_2
      L18_2 = L13_2
      L19_2 = L14_2
      L20_2 = L15_2
      return L16_2, L17_2, L18_2, L19_2, L20_2
    end
    L16_2 = DoesEntityExist
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      L16_2 = GetEntityModel
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      L17_2 = L14_1
      L16_2 = L17_2[L16_2]
      if not L16_2 then
        L16_2 = L11_2
        L17_2 = L12_2
        L18_2 = L13_2
        L19_2 = L14_2
        L20_2 = L15_2
        return L16_2, L17_2, L18_2, L19_2, L20_2
      end
    end
    L16_2 = L13_2.z
    L5_2 = L16_2 - 0.02
    if L6_2 >= L5_2 then
      break
    end
  end
  L7_2 = 0
  L8_2 = 0
  L9_2 = vector3
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = vector3
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 1.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = 0
  return L7_2, L8_2, L9_2, L10_2, L11_2
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L6_2 = 511
  L7_2 = L15_1
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = A0_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if 1 == L8_2 then
    L12_2 = objCava
    if nil == L12_2 then
      L12_2 = CreateObject
      L13_2 = GetHashKey
      L14_2 = "prop_cs_leaf"
      L13_2 = L13_2(L14_2)
      L14_2 = L9_2
      L15_2 = true
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      objCava = L12_2
      L12_2 = SetEntityVisible
      L13_2 = objCava
      L14_2 = false
      L12_2(L13_2, L14_2)
      L12_2 = FreezeEntityPosition
      L13_2 = objCava
      L14_2 = true
      L12_2(L13_2, L14_2)
      L12_2 = SetEntityNoCollisionEntity
      L13_2 = A1_2
      L14_2 = objCava
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetEntityHeading
      L13_2 = objCava
      L14_2 = GetEntityHeading
      L15_2 = A0_2
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L14_2(L15_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L12_2 = SetEntityCollision
      L13_2 = objCava
      L14_2 = false
      L15_2 = false
      L12_2(L13_2, L14_2, L15_2)
    else
      L12_2 = SetEntityNoCollisionEntity
      L13_2 = A1_2
      L14_2 = objCava
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = SetEntityCoords
      L13_2 = objCava
      L14_2 = L9_2
      L12_2(L13_2, L14_2)
      L12_2 = AlignObjectToNormal
      L13_2 = objCava
      L14_2 = L9_2
      L15_2 = L10_2
      L16_2 = GetEntityHeading
      L17_2 = A0_2
      L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L12_2 = GetEntityRotation
      L13_2 = A0_2
      L14_2 = 2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = GetPedPitchFromNormal
      L14_2 = A0_2
      L15_2 = L10_2
      L13_2 = L13_2(L14_2, L15_2)
      L13_2 = -L13_2
      L14_2 = "creatures@cow@move"
      L15_2 = "walk"
      if A2_2 then
        L16_2 = IsEntityPlayingAnim
        L17_2 = A0_2
        L18_2 = L14_2
        L19_2 = L15_2
        L20_2 = 3
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
        if L16_2 then
          L16_2 = SetEntityRotation
          L17_2 = A0_2
          L18_2 = lerp
          L19_2 = L12_2.x
          L19_2 = L19_2 - 0.45
          L20_2 = L13_2
          L21_2 = 0.075
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L18_2 = L18_2 - 0.05
          L19_2 = 0.0
          L20_2 = L12_2.z
          L21_2 = 2
          L22_2 = true
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
      else
        L16_2 = SetEntityRotation
        L17_2 = A0_2
        L18_2 = lerp
        L19_2 = L12_2.x
        L19_2 = L19_2 - 0.05
        L20_2 = L13_2
        L21_2 = 0.075
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L18_2 = L18_2 - 0.05
        L19_2 = 0.0
        L20_2 = L12_2.z
        L21_2 = 2
        L22_2 = true
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
    end
  end
end
RayCastGamePlayCamera = L16_1
L16_1 = exports
L17_1 = "cadoCavallo"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = IsRidingAnimal
  if L1_2 then
    L1_2 = DelayColpitoHorse
    if not L1_2 then
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      DelayColpitoHorse = true
      L2_2 = ColpitoCavallo
      L2_2 = L2_2 + 1
      ColpitoCavallo = L2_2
      L2_2 = ColpitoCavallo
      if L2_2 >= 5 or A0_2 then
        ColpitoCavallo = 0
        L2_2 = GetEntityAttachedTo
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if nil ~= L2_2 then
          L3_2 = SetPedToRagdollWithFall
          L4_2 = L2_2
          L5_2 = 1350
          L6_2 = 1350
          L7_2 = 1
          L8_2 = GetEntityForwardVector
          L9_2 = L2_2
          L8_2 = L8_2(L9_2)
          L9_2 = 1.0
          L10_2 = 0.0
          L11_2 = 0.0
          L12_2 = 0.0
          L13_2 = 0.0
          L14_2 = 0.0
          L15_2 = 0.0
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
        L3_2 = DropPlayerFromAnimal
        L4_2 = L2_2
        L3_2(L4_2)
      else
        L2_2 = "ped"
        L3_2 = HasAnimDictLoaded
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = RequestAnimDict
          L4_2 = L2_2
          L3_2(L4_2)
          while true do
            L3_2 = HasAnimDictLoaded
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              break
            end
            L3_2 = Wait
            L4_2 = 10
            L3_2(L4_2)
          end
        end
        L3_2 = TaskPlayAnim
        L4_2 = L1_2
        L5_2 = "ped"
        L6_2 = "hit_wall"
        L7_2 = 8.0
        L8_2 = 8.0
        L9_2 = 500
        L10_2 = 51
        L11_2 = 0
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
      L2_2 = Wait
      L3_2 = 3000
      L2_2(L3_2)
      DelayColpitoHorse = false
    end
  end
end
L16_1(L17_1, L18_1)
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  lastUpdateMs = 0
  AttachedEntity = nil
  L0_2 = objCava
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = objCava
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = objCava
    L0_2(L1_2)
    objCava = nil
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  IsRidingAnimal = false
  L1_2 = Animal
  L1_2.InControl = false
  L1_2 = TriggerServerEvent
  L2_2 = "horse:setUnmounted"
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = IsPedRagdoll
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedGettingUp
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        break
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = OnPlayerLeaveAnimalCustom
  L1_2()
  L1_2 = Invisibile
  if L1_2 then
    Invisibile = false
    L1_2 = HideFunction
    L2_2 = true
    L1_2(L2_2)
  end
  L1_2 = playerCarryng
  if L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "horse:stop"
    L3_2 = playerCarryng
    L1_2(L2_2, L3_2)
    playerCarryng = nil
  end
  L1_2 = EndOrbitCam
  L1_2()
  ColpitoCavallo = 0
  backward = false
  miMuovo = nil
  eroVeloce = false
  controlloMovement = 0
  L1_2 = SetEnableScuba
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityInvincible
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
OnPlayerLeaveAnimal = L16_1
L16_1 = Animal
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = Animal
  L4_2 = L4_2.Handle
  if L4_2 and 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_20
    end
  end
  L5_2 = print
  L6_2 = "[RIDEHORSE] Animal.Attach handle non valido:"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = false
  do return L5_2 end
  ::lbl_20::
  if not A0_2 or 0 == A0_2 then
    L5_2 = print
    L6_2 = "[RIDEHORSE] Animal.Attach modello non valido:"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    L5_2 = false
    return L5_2
  end
  L5_2 = nil
  L6_2 = ipairs
  L7_2 = AnimalsModel
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetHashKey
    L13_2 = L11_2.model
    L12_2 = L12_2(L13_2)
    if A0_2 == L12_2 then
      L5_2 = L11_2
      break
    end
  end
  if not L5_2 then
    L6_2 = print
    L7_2 = "[RIDEHORSE] Modello non trovato in AnimalsModel:"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
    L6_2 = false
    return L6_2
  end
  L6_2 = L5_2
  if nil == A1_2 then
    L7_2 = AquaticAnimalModel
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    A1_2 = L7_2
  end
  if nil == A2_2 then
    L7_2 = IsFastAnimalModel
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    A2_2 = L7_2
  end
  L7_2 = Animal
  L7_2.Handle = L4_2
  L7_2 = Animal
  L7_2.Model = A0_2
  L7_2 = OnPlayerGoOnHorseCustom
  L7_2()
  L7_2 = ResetCavalloMove
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = DoesEntityExist
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = print
    L8_2 = "[RIDEHORSE] Cavallo perso dopo ResetCavalloMove:"
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L7_2 = false
    return L7_2
  end
  L7_2 = FreezeEntityPosition
  L8_2 = L3_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L4_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetPedAlertness
  L8_2 = L4_2
  L9_2 = 0
  L7_2(L8_2, L9_2)
  L7_2 = SetPedCanEvasiveDive
  L8_2 = L4_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = SetEntityAsMissionEntity
  L8_2 = L4_2
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = ResetPedMovementClipset
  L8_2 = L4_2
  L9_2 = 0.0
  L7_2(L8_2, L9_2)
  L7_2 = SetAnimalMood
  L8_2 = L4_2
  L9_2 = 1
  L7_2(L8_2, L9_2)
  L7_2 = SetPedFleeAttributes
  L8_2 = L4_2
  L9_2 = 0
  L10_2 = 0
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetPedDiesWhenInjured
  L8_2 = L4_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = SetBlockingOfNonTemporaryEvents
  L8_2 = L4_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = SetPedCanBeTargetted
  L8_2 = L4_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = GetEntityRotation
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.z
  ROTCavallo = L7_2
  if A1_2 then
    L7_2 = ApplyForceToEntity
    L8_2 = L4_2
    L9_2 = 1
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = -0.3
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0
    L17_2 = false
    L18_2 = true
    L19_2 = true
    L20_2 = false
    L21_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L7_2 = 900
    L8_2 = SetEntityMaxHealth
    L9_2 = L4_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityHealth
    L9_2 = L4_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = SetEnableScuba
    L9_2 = L3_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetPedMaxTimeUnderwater
    L9_2 = L3_2
    L10_2 = 50.0
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityInvincible
    L9_2 = L3_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetEnableScuba
    L9_2 = L4_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = SetPedMaxTimeUnderwater
    L9_2 = L4_2
    L10_2 = 50.0
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityInvincible
    L9_2 = L4_2
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
  L7_2 = DoesEntityExist
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = FreezeEntityPosition
    L8_2 = L3_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = print
    L8_2 = "[RIDEHORSE] Cavallo perso durante Animal.Attach:"
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L7_2 = false
    return L7_2
  end
  L7_2 = NetworkGetPlayerIndexFromPed
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if -1 == L7_2 then
    L7_2 = Animal
    L7_2.InControl = true
    L7_2 = L6_2.passengerSeats
    if nil == L7_2 then
      L7_2 = 1
    end
    L8_2 = TriggerServerEvent
    L9_2 = "horse:setMounted"
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L7_2 = L6_2.hidePG
  if L7_2 then
    Invisibile = true
    L7_2 = HideFunction
    L8_2 = false
    L7_2(L8_2)
  end
  L7_2 = AdjustSpeed
  L8_2 = L6_2.speedrate
  L7_2(L8_2)
  L7_2 = MyModelSpeedVar
  if nil == L7_2 then
    MyModelSpeedVar = 1.1
  end
  customFlag = nil
  L7_2 = L6_2.customAnim
  if L7_2 then
    L7_2 = L6_2.customAnim
    L7_2 = L7_2[1]
    dicBase = L7_2
    L7_2 = L6_2.customAnim
    L7_2 = L7_2[2]
    animBase = L7_2
    L7_2 = L6_2.customAnim
    L7_2 = L7_2[3]
    customFlag = L7_2
    L7_2 = L6_2.customAnim
    L7_2 = L7_2[1]
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 + 5000
    L9_2 = HasAnimDictLoaded
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = RequestAnimDict
      L10_2 = L7_2
      L9_2(L10_2)
      while true do
        L9_2 = HasAnimDictLoaded
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = Wait
        L10_2 = 10
        L9_2(L10_2)
        L9_2 = DoesEntityExist
        L10_2 = L4_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = FreezeEntityPosition
          L10_2 = L3_2
          L11_2 = false
          L9_2(L10_2, L11_2)
          L9_2 = print
          L10_2 = "[RIDEHORSE] Cavallo perso caricando animazione:"
          L11_2 = L4_2
          L9_2(L10_2, L11_2)
          L9_2 = false
          return L9_2
        end
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        if L8_2 <= L9_2 then
          L9_2 = FreezeEntityPosition
          L10_2 = L4_2
          L11_2 = false
          L9_2(L10_2, L11_2)
          L9_2 = FreezeEntityPosition
          L10_2 = L3_2
          L11_2 = false
          L9_2(L10_2, L11_2)
          L9_2 = print
          L10_2 = "[RIDEHORSE] Timeout caricamento animazione:"
          L11_2 = L7_2
          L9_2(L10_2, L11_2)
          L9_2 = false
          return L9_2
        end
      end
    end
  end
  L7_2 = L6_2.orbitActive
  L7_2 = nil ~= L7_2
  CamActiveLocal = L7_2
  if not A1_2 then
    L7_2 = L6_2.runstyle
    if nil == L7_2 then
      myAnimalAnim = "deer"
      L7_2 = "creatures@"
      L8_2 = myAnimalAnim
      L9_2 = "@move"
      L7_2 = L7_2 .. L8_2 .. L9_2
      myRunStyle = L7_2
    else
      L7_2 = L6_2.runstyle
      myAnimalAnim = L7_2
      L7_2 = "creatures@"
      L8_2 = L6_2.runstyle
      L9_2 = "@move"
      L7_2 = L7_2 .. L8_2 .. L9_2
      myRunStyle = L7_2
    end
  end
  L7_2 = DoesEntityExist
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = FreezeEntityPosition
    L8_2 = L3_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = print
    L8_2 = "[RIDEHORSE] Cavallo perso prima dell'attach:"
    L9_2 = L4_2
    L7_2(L8_2, L9_2)
    L7_2 = false
    return L7_2
  end
  L7_2 = GetPedBoneIndex
  L8_2 = L4_2
  L9_2 = 57597
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L7_2
  L12_2 = L6_2.att
  L12_2 = L12_2[1]
  L13_2 = L6_2.att
  L13_2 = L13_2[2]
  L14_2 = L6_2.att
  L14_2 = L14_2[3]
  L15_2 = L6_2.att
  L15_2 = L15_2[4]
  L16_2 = L6_2.att
  L16_2 = L16_2[5]
  L17_2 = L6_2.att
  L17_2 = L17_2[6]
  L18_2 = false
  L19_2 = true
  L20_2 = false
  L21_2 = true
  L22_2 = 2
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L4_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L3_2
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = LoopCavallo
  L9_2 = L4_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = DoesEntityExist
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = print
    L9_2 = "[RIDEHORSE] Cavallo perso dopo LoopCavallo:"
    L10_2 = L4_2
    L8_2(L9_2, L10_2)
    L8_2 = false
    return L8_2
  end
  L8_2 = 31086
  L9_2 = CreateHorseReins
  L10_2 = L4_2
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 then
    reinsActive = true
  end
  L9_2 = DoesEntityExist
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = StartAnimalGroundIk
    L10_2 = L4_2
    L9_2(L10_2)
  end
  L9_2 = true
  return L9_2
end
L16_1.Attach = L17_1
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = GetEntityHeading
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = 0.0
  end
  L4_2 = L4_2 + L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L4_2 = L4_2 * L5_2
  L4_2 = L4_2 / 180.0
  L5_2 = {}
  L6_2 = L3_2.x
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = -1.0 * L4_2
  L7_2 = L7_2(L8_2)
  L7_2 = A1_2 * L7_2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = -1.0 * L4_2
  L7_2 = L7_2(L8_2)
  L7_2 = A1_2 * L7_2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L3_2.z
  L5_2.z = L6_2
  return L5_2
end
GetCoordsInfrontOfEntityWithDistance = L16_1
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPedHuman
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
IsPedAnimale = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = ReinAnchors
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = ReinAnchors
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = SetEntityAsMissionEntity
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L2_2 = 1
  L3_2 = HorseReins
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = HorseReins
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = DoesRopeExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteRope
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  miMuovo = nil
  backward = false
  eroVeloce = false
  L2_2 = Animal
  L2_2.InControl = false
  L2_2 = TriggerServerEvent
  L3_2 = "horse:setUnmounted"
  L2_2(L3_2)
  IsRidingAnimal = false
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = faiAnim
  L3_2 = "random@homelandsecurity"
  L4_2 = "knees_loop_girl"
  L5_2 = -1
  L6_2 = 49
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = EndOrbitCam
  L2_2()
  L2_2 = SetPedCanRagdoll
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedCanRagdoll
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedToRagdoll
  L3_2 = A0_2
  L4_2 = 3000
  L5_2 = 3000
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = Wait
  L3_2 = 500
  L2_2(L3_2)
  L2_2 = DetachEntity
  L3_2 = L1_2
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedToRagdoll
  L3_2 = L1_2
  L4_2 = 3000
  L5_2 = 3000
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = OnPlayerLeaveAnimal
  L2_2()
  AnimalGroundIkActive = false
end
DropPlayerFromAnimal = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = HasAnimDictLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = L1_2
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
    end
  end
end
loadDictHorse = L16_1
L16_1 = CreateThread
function L17_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 5000
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = dicBase
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "laddersbase"
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "taxi_hail"
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "gestures@f@standing@casual"
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "anim@heists@ornate_bank@chat_manager"
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
  L0_2(L1_2)
  L0_2 = loadDictHorse
  L1_2 = "anim@am_hold_up@female"
  L2_2 = "shoplift_high"
  L0_2(L1_2, L2_2)
end
L16_1(L17_1)
function L16_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = BLIPCAVALLO
      if nil ~= L0_3 then
        L0_3 = DoesBlipExist
        L1_3 = BLIPCAVALLO
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = Animal
          L0_3 = L0_3.Handle
          if nil ~= L0_3 then
            L0_3 = DoesEntityExist
            L1_3 = Animal
            L1_3 = L1_3.Handle
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = IsPedDeadOrDying
              L1_3 = Animal
              L1_3 = L1_3.Handle
              L0_3 = L0_3(L1_3)
              if not L0_3 then
                L0_3 = IsPedFatallyInjured
                L1_3 = Animal
                L1_3 = L1_3.Handle
                L0_3 = L0_3(L1_3)
              end
            end
            if L0_3 then
              L0_3 = RemoveBlip
              L1_3 = BLIPCAVALLO
              L0_3(L1_3)
              BLIPCAVALLO = nil
              L0_3 = OnPlayerLeaveAnimal
              L0_3()
              L0_3 = EndOrbitCam
              L0_3()
            end
          end
        end
      else
        return
      end
    end
  end
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = Animal
      L0_3 = L0_3.Handle
      if nil ~= L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = Animal
        L1_3 = L1_3.Handle
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = IsPedDeadOrDying
          L1_3 = Animal
          L1_3 = L1_3.Handle
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsPedFatallyInjured
            L1_3 = Animal
            L1_3 = L1_3.Handle
            L0_3 = L0_3(L1_3)
          end
          if L0_3 then
            L0_3 = onHorseDie
            L1_3 = Animal
            L1_3 = L1_3.Handle
            L0_3(L1_3)
            L0_3 = Animal
            L0_3.Handle = nil
            loopStamina = false
          end
        else
          L0_3 = Animal
          L0_3.Handle = nil
          loopStamina = false
        end
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopBlipCavallo = L16_1
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsControlPressed
  L2_2 = 0
  L3_2 = LeftKeyHorseRot
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = RightKeyHorseRot
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = GoForwardKey
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = ClearPedTasks
        L2_2 = A0_2
        L1_2(L2_2)
      end
    end
  end
end
standIdleHuman = L16_1
eroVeloce = false
backward = false
AttachedEntity2 = nil
function L16_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = myRunStyle
    myRunStyleWas = L1_2
    myRunStyle = "creatures@cow@move"
    L1_2 = myAnimalAnim
    myAnimalAnimWas = L1_2
    myAnimalAnim = "cow"
  else
    L1_2 = myAnimalAnimWas
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = myRunStyleWas
      L1_2 = #L1_2
      if L1_2 > 0 then
        L1_2 = myAnimalAnimWas
        myAnimalAnim = L1_2
        myAnimalAnimWas = ""
        L1_2 = myRunStyleWas
        myRunStyle = L1_2
        myRunStyleWas = ""
      end
    end
  end
end
checkerStamina = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = CavalloMiSegue
      if not L0_3 then
        break
      end
      L0_3 = Animal
      L0_3 = L0_3.InControl
      if L0_3 then
        break
      end
      L0_3 = L0_2
      if nil == L0_3 then
        return
      end
      L0_3 = CavalloMiSegue
      if not L0_3 then
        return
      end
      L0_3 = GetEntityCoords
      L1_3 = L1_2
      L0_3 = L0_3(L1_3)
      L1_3 = TaskLookAtCoord
      L2_3 = L0_2
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L5_3 = L5_3 + 1
      L6_3 = 1000
      L7_3 = 0
      L8_3 = 2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L1_3 = GetEntityCoords
      L2_3 = L1_2
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityCoords
      L3_3 = L0_2
      L2_3 = L2_3(L3_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 > 30.0 then
        CavalloMiSegue = false
        L1_3 = ClearPedTasks
        L2_3 = L0_2
        L1_3(L2_3)
        return
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    CavalloMiSegue = false
    L0_3 = ClearPedTasks
    L1_3 = L0_2
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
LoopFollowMe = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Animal
  L0_2 = L0_2.Handle
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = DoesEntityExist
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "anim@heists@ornate_bank@chat_manager"
    L3_2 = HasAnimDictLoaded
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = RequestAnimDict
      L4_2 = L2_2
      L3_2(L4_2)
      while true do
        L3_2 = HasAnimDictLoaded
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 10
        L3_2(L4_2)
      end
    end
    L3_2 = TaskPlayAnim
    L4_2 = L1_2
    L5_2 = "anim@heists@ornate_bank@chat_manager"
    L6_2 = "fail"
    L7_2 = 8.0
    L8_2 = 8.0
    L9_2 = 2500
    L10_2 = 63
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
    L2_2 = IsRidingAnimal
    if not L2_2 then
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetEntityCoords
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L2_2 = L2_2 - L3_2
      L2_2 = #L2_2
      if L2_2 < 5.0 then
        L2_2 = GetEntityCoords
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = GetEntityForwardVector
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = L3_2 * 1.0
        L5_2 = L2_2 + L5_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L7_2 = SetEntityCoords
        L8_2 = L0_2
        L9_2 = L4_2
        L10_2 = L5_2
        L11_2 = L6_2 - 1.0
        L7_2(L8_2, L9_2, L10_2, L11_2)
      else
        L2_2 = "anim@heists@ornate_bank@chat_manager"
        L3_2 = HasAnimDictLoaded
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = RequestAnimDict
          L4_2 = L2_2
          L3_2(L4_2)
          while true do
            L3_2 = HasAnimDictLoaded
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              break
            end
            L3_2 = Wait
            L4_2 = 10
            L3_2(L4_2)
          end
        end
        L3_2 = TaskPlayAnim
        L4_2 = L1_2
        L5_2 = "anim@heists@ornate_bank@chat_manager"
        L6_2 = "fail"
        L7_2 = 8.0
        L8_2 = 8.0
        L9_2 = 2500
        L10_2 = 63
        L11_2 = 0
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
end
HoldHorse = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "anim@heists@ornate_bank@chat_manager"
    L3_2 = HasAnimDictLoaded
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = RequestAnimDict
      L4_2 = L2_2
      L3_2(L4_2)
      while true do
        L3_2 = HasAnimDictLoaded
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 10
        L3_2(L4_2)
      end
    end
    L3_2 = TaskPlayAnim
    L4_2 = L0_2
    L5_2 = "anim@heists@ornate_bank@chat_manager"
    L6_2 = "fail"
    L7_2 = 8.0
    L8_2 = 8.0
    L9_2 = 2500
    L10_2 = 63
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = testo3d
    L4_2 = notDetectHorse_txt
    L3_2(L4_2)
  else
    L2_2 = GetEntityCoords
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetEntityCoords
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 - L3_2
    L2_2 = #L2_2
    if L2_2 < 30.0 then
      L2_2 = IsRidingAnimal
      if L2_2 then
        return
      end
      L2_2 = CavalloMiSegue
      if L2_2 then
        goto lbl_177
      end
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_177
      end
      L2_2 = Animal
      L2_2 = L2_2.InControl
      if L2_2 then
        goto lbl_177
      end
      L2_2 = makeEntityFaceEntity
      L3_2 = L0_2
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      CavalloMiSegue = true
      L2_2 = LoopFollowMe
      L2_2()
      L2_2 = "anim@heists@ornate_bank@chat_manager"
      L3_2 = HasAnimDictLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = RequestAnimDict
        L4_2 = L2_2
        L3_2(L4_2)
        while true do
          L3_2 = HasAnimDictLoaded
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            break
          end
          L3_2 = Wait
          L4_2 = 10
          L3_2(L4_2)
        end
      end
      L3_2 = TaskPlayAnim
      L4_2 = L0_2
      L5_2 = "gestures@f@standing@casual"
      L6_2 = "gesture_come_here_soft"
      L7_2 = 8.0
      L8_2 = 8.0
      L9_2 = 1000
      L10_2 = 63
      L11_2 = 0
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L3_2 = SetPedAlertness
      L4_2 = L1_2
      L5_2 = 0
      L3_2(L4_2, L5_2)
      L3_2 = SetPedCanEvasiveDive
      L4_2 = L1_2
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = SetEntityAsMissionEntity
      L4_2 = L1_2
      L5_2 = true
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = ResetPedMovementClipset
      L4_2 = L1_2
      L5_2 = 0.0
      L3_2(L4_2, L5_2)
      L3_2 = TaskFollowToOffsetOfEntity
      L4_2 = L1_2
      L5_2 = L0_2
      L6_2 = 1.0
      L7_2 = 1.0
      L8_2 = 0.0
      L9_2 = 1.5
      L10_2 = -1
      L11_2 = 1.5
      L12_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L3_2 = SetPedKeepTask
      L4_2 = L1_2
      L5_2 = true
      L3_2(L4_2, L5_2)
    else
      L2_2 = "anim@heists@ornate_bank@chat_manager"
      L3_2 = HasAnimDictLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = RequestAnimDict
        L4_2 = L2_2
        L3_2(L4_2)
        while true do
          L3_2 = HasAnimDictLoaded
          L4_2 = L2_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            break
          end
          L3_2 = Wait
          L4_2 = 10
          L3_2(L4_2)
        end
      end
      L3_2 = TaskPlayAnim
      L4_2 = L0_2
      L5_2 = "anim@heists@ornate_bank@chat_manager"
      L6_2 = "fail"
      L7_2 = 8.0
      L8_2 = 8.0
      L9_2 = 2500
      L10_2 = 63
      L11_2 = 0
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L3_2 = testo3d
      L4_2 = tooFar_txt
      L3_2(L4_2)
    end
  end
  ::lbl_177::
end
FollowMeHorse = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  CavalloMiSegue = false
  L0_2 = Animal
  L0_2 = L0_2.Handle
  L1_2 = DoesEntityExist
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = makeEntityFaceEntity
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = faiAnim
    L2_2 = "gestures@f@standing@casual"
    L3_2 = "gesture_no_way"
    L4_2 = 950
    L5_2 = 49
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetPedKeepTask
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
StopFollowMeHorse = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = IsPedFatallyInjured
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = A0_2
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetEntityCoords
    L4_2 = A1_2
    L5_2 = true
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.x
    L5_2 = L2_2.x
    L4_2 = L4_2 - L5_2
    L5_2 = L3_2.y
    L6_2 = L2_2.y
    L5_2 = L5_2 - L6_2
    L6_2 = GetHeadingFromVector_2d
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = SetEntityHeading
    L8_2 = A0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
makeEntityFaceEntity = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = Animal
  L2_2 = L2_2.InControl
  if L2_2 then
    return
  end
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
  else
    L2_2 = ClearPedTasks
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = makeEntityFaceEntity
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = "taxi_hail"
    L3_2 = HasAnimDictLoaded
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = RequestAnimDict
      L4_2 = L2_2
      L3_2(L4_2)
      while true do
        L3_2 = HasAnimDictLoaded
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = Wait
        L4_2 = 10
        L3_2(L4_2)
      end
    end
    L3_2 = TaskPlayAnim
    L4_2 = L0_2
    L5_2 = "taxi_hail"
    L6_2 = "hail_taxi"
    L7_2 = 8.0
    L8_2 = 8.0
    L9_2 = 1500
    L10_2 = 63
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = Wait
    L4_2 = 1500
    L3_2(L4_2)
    L3_2 = SetPedAlertness
    L4_2 = L1_2
    L5_2 = 0
    L3_2(L4_2, L5_2)
    L3_2 = SetPedCanEvasiveDive
    L4_2 = L1_2
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = SetEntityAsMissionEntity
    L4_2 = L1_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ResetPedMovementClipset
    L4_2 = L1_2
    L5_2 = 0.0
    L3_2(L4_2, L5_2)
    L3_2 = GetEntityCoords
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetEntityCoords
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 - L4_2
    L3_2 = #L3_2
    if L3_2 > 3.0 then
      L3_2 = TaskFollowToOffsetOfEntity
      L4_2 = L1_2
      L5_2 = L0_2
      L6_2 = 0.0
      L7_2 = 0.0
      L8_2 = 0.0
      L9_2 = 2.5
      L10_2 = -1
      L11_2 = 3.0
      L12_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
ComeHorse = L16_1
L16_1 = 2.0
L17_1 = 20.0
L18_1 = 1.0
L19_1 = 1000
L20_1 = 8.0
L21_1 = 1.5
L22_1 = math
L22_1 = L22_1.cos
L23_1 = math
L23_1 = L23_1.sin
L24_1 = math
L24_1 = L24_1.min
L25_1 = math
L25_1 = L25_1.max
L26_1 = table
L26_1 = L26_1.insert
L27_1 = math
L27_1 = L27_1.pi
L27_1 = L27_1 / 180.0
L28_1 = nil
L29_1 = nil
L30_1 = vector3
L31_1 = 0
L32_1 = 0
L33_1 = 0
L30_1 = L30_1(L31_1, L32_1, L33_1)
L31_1 = nil
L32_1 = L16_1
L33_1 = L17_1
L34_1 = L32_1 + L33_1
L34_1 = L34_1 * 0.5
L35_1 = 0.0
L36_1 = 0.0
L37_1 = {}
L38_1 = 14
L39_1 = 15
L40_1 = 16
L41_1 = 17
L42_1 = 81
L43_1 = 82
L44_1 = 99
L37_1[1] = L38_1
L37_1[2] = L39_1
L37_1[3] = L40_1
L37_1[4] = L41_1
L37_1[5] = L42_1
L37_1[6] = L43_1
L37_1[7] = L44_1
function L38_1(A0_2, A1_2, A2_2)
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
  L11_2 = 511
  L12_2 = A2_2
  L13_2 = 2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
RayCast = L38_1
function L38_1(A0_2)
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
round = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsInputDisabled
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L20_1
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = L21_1
  ::lbl_10::
  L1_2 = L36_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 - L2_2
  L36_1 = L1_2
  L1_2 = L35_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 + L2_2
  L35_1 = L1_2
  L1_2 = L25_1
  L2_2 = L24_1
  L3_2 = L35_1
  L4_2 = 89.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = -89.0
  L1_2 = L1_2(L2_2, L3_2)
  L35_1 = L1_2
  L1_2 = L34_1
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 16
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 17
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  L3_2 = L18_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L34_1 = L1_2
  L1_2 = L25_1
  L2_2 = L24_1
  L3_2 = L34_1
  L4_2 = L33_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = round
  L4_2 = L32_1
  L4_2 = L4_2 / 2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L34_1 = L1_2
  L1_2 = L29_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L29_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L29_1
      L1_2 = L1_2(L2_2)
      L2_2 = L31_1
      L1_2 = L1_2 + L2_2
      L30_1 = L1_2
    end
  end
  L1_2 = L22_1
  L2_2 = L35_1
  L3_2 = L27_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L22_1
  L4_2 = L36_1
  L5_2 = L27_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = L23_1
  L5_2 = L36_1
  L6_2 = L27_1
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L23_1
  L6_2 = L35_1
  L7_2 = L27_1
  L6_2 = L6_2 * L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = L34_1
  L2_2 = L2_2 * L3_2
  L3_2 = L30_1
  L3_2 = L3_2 + L2_2
  L4_2 = L29_1
  if not L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
  end
  L5_2 = GetCamMatrix
  L6_2 = L28_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2 * 0.125
  L9_2 = L7_2 * 0.07
  L10_2 = {}
  L11_2 = {}
  L12_2 = RayCast
  L13_2 = L30_1
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
  L12_2 = RayCast
  L13_2 = L30_1
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
  L12_2 = RayCast
  L13_2 = L30_1
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
  L12_2 = RayCast
  L13_2 = L30_1
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
  L11_2 = L34_1
  L12_2 = 1
  L13_2 = #L10_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L10_2[L15_2]
    L16_2 = L16_2[1]
    if L16_2 then
      L16_2 = L30_1
      L17_2 = L10_2[L15_2]
      L17_2 = L17_2[2]
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if L11_2 > L16_2 then
        L11_2 = L16_2
      end
    end
  end
  L12_2 = L34_1
  L12_2 = L11_2 / L12_2
  L2_2 = L2_2 * L12_2
  L12_2 = L30_1
  L12_2 = L12_2 + L2_2
  return L12_2
end
ProcessNewPosition = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = ipairs
  L1_2 = L37_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = ProcessNewPosition
  L0_2 = L0_2()
  L1_2 = SetCamCoord
  L2_2 = L28_1
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = PointCamAtCoord
  L2_2 = L28_1
  L3_2 = L30_1.x
  L4_2 = L30_1.y
  L5_2 = L30_1.z
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetFocusPosAndVel
  L2_2 = L30_1.x
  L3_2 = L30_1.y
  L4_2 = L30_1.z
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
ProcessCamControls = L38_1
function L38_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = horseprint
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
LogError = L38_1
function L38_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = L28_1
  if L5_2 then
    return
  end
  L5_2 = ClearFocus
  L5_2()
  if A1_2 then
    L29_1 = A1_2
    L31_1 = A0_2
    L5_2 = GetEntityCoords
    L6_2 = L29_1
    L5_2 = L5_2(L6_2)
    L6_2 = L31_1
    L5_2 = L5_2 + L6_2
    L30_1 = L5_2
  else
    L30_1 = A0_2
  end
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = L16_1
  end
  L32_1 = L5_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = L17_1
  end
  L33_1 = L5_2
  L5_2 = L32_1
  L6_2 = L33_1
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 * 0.5
  L34_1 = L5_2
  L5_2 = GetGameplayCamRot
  L6_2 = 2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.x
  L6_2 = -L6_2
  L35_1 = L6_2
  L6_2 = L5_2.z
  L6_2 = L6_2 - 90
  L36_1 = L6_2
  L6_2 = CreateCamWithParams
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = L30_1.x
  L9_2 = L30_1.y
  L10_2 = L30_1.z
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = GetGameplayCamFov
  L14_2 = L14_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L28_1 = L6_2
  L6_2 = SetCamActive
  L7_2 = L28_1
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = RenderScriptCams
  L7_2 = true
  L8_2 = true
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = L19_1
  end
  L10_2 = true
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetCamNearClip
  L7_2 = L28_1
  L8_2 = 0.05
  L6_2(L7_2, L8_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3
    while true do
      L0_3 = L28_1
      if nil == L0_3 then
        break
      end
      L0_3 = ProcessCamControls
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
end
StartOrbitCam = L38_1
L38_1 = exports
L39_1 = "StartOrbitCam"
L40_1 = StartOrbitCam
L38_1(L39_1, L40_1)
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L28_1
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
    L4_2 = L19_1
  end
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = L28_1
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L28_1 = L1_2
  L1_2 = nil
  L29_1 = L1_2
end
EndOrbitCam = L38_1
L38_1 = exports
L39_1 = "EndOrbitCam"
L40_1 = EndOrbitCam
L38_1(L39_1, L40_1)
function L38_1()
  local L0_2, L1_2
  L0_2 = L28_1
  L0_2 = nil ~= L0_2
  return L0_2
end
IsOrbitCamActive = L38_1
L38_1 = exports
L39_1 = "IsOrbitCamActive"
L40_1 = IsOrbitCamActive
L38_1(L39_1, L40_1)
function L38_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L29_1
  end
  L1_2 = A0_2 == L1_2
  return L1_2
end
IsEntityBeingTracked = L38_1
L38_1 = exports
L39_1 = "IsEntityBeingTracked"
L40_1 = IsEntityBeingTracked
L38_1(L39_1, L40_1)
function L38_1()
  local L0_2, L1_2
  L0_2 = L29_1
  return L0_2
end
GetTrackedEntity = L38_1
L38_1 = exports
L39_1 = "GetTrackedEntity"
L40_1 = GetTrackedEntity
L38_1(L39_1, L40_1)
function L38_1(A0_2, A1_2)
  local L2_2, L3_2
  LastNPCEdit = A0_2
  L2_2 = Modifica
  L3_2 = A0_2
  L2_2(L3_2)
end
ConfermaAnimale = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = MyAnimals
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Renting
  if not L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "Striano:SaveAnimal"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = MyAnimals
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = horseprint
    L2_2 = "^2[Striano_RideHorse] ^7You have a new animal (^8"
    L3_2 = A0_2.model
    L4_2 = "^7) in your list! Now are "
    L5_2 = MyAnimals
    L5_2 = #L5_2
    L6_2 = " rideable animals."
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    L1_2(L2_2)
  end
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "OOB_Start"
  L4_2 = "GTAO_FM_Events_Soundset"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = AnimalInsertInList
  L1_2()
  InShopHorse = false
end
SuccessBuy = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = AnimalsModel
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = AnimalsModel
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L6_2 = L5_2.price
      if L6_2 then
        L6_2 = L5_2.price
        if L6_2 > -1 then
          L6_2 = L5_2.model
          if L6_2 then
            L6_2 = joaat
            L7_2 = L5_2.model
            L6_2 = L6_2(L7_2)
            L7_2 = IsModelInCdimage
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            if L7_2 then
              L7_2 = IsModelValid
              L8_2 = L6_2
              L7_2 = L7_2(L8_2)
              if L7_2 then
                L7_2 = table
                L7_2 = L7_2.insert
                L8_2 = L0_2
                L9_2 = L5_2
                L7_2(L8_2, L9_2)
            end
            else
              L7_2 = horseprint
              L8_2 = "^1[Striano Mounts] model not exist ("
              L9_2 = tostring
              L10_2 = L5_2.model
              L9_2 = L9_2(L10_2)
              L10_2 = ") skipped. If you want more premium mounts open ticket on Ds!^7"
              L8_2 = L8_2 .. L9_2 .. L10_2
              L7_2(L8_2)
            end
          end
        end
      end
    end
  end
  return L0_2
end
GeneraTabellaAnimali = L38_1
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = openShopAnimalMenuNew
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
OpenShopAnimals = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = AnimaliShopSpawned
    L0_2 = #L0_2
    if not (L0_2 > 0) then
      break
    end
    L0_2 = AnimaliShopSpawned
    L0_2 = L0_2[1]
    L1_2 = SetEntityAsMissionEntity
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = DeleteEntity
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = AnimaliShopSpawned
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
DelAnteprimaAnimale = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = DelAnteprimaAnimale
  L1_2()
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityForwardVector
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2 * 2.5
  L4_2 = L4_2 + L5_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2 - 1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = RequestModelStriano
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L7_2 = A0_2 or L7_2
  if "number" ~= L7_2 or not A0_2 then
    L7_2 = GetHashKey
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
  end
  L8_2 = IsModelValid
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = horseprint
    L9_2 = "HEY! INVALID MODEL INSERT IN CONFIG! (editable.lua)"
    L8_2(L9_2)
    return
  end
  L8_2 = CreatePed
  L9_2 = 1
  L10_2 = L7_2
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L14_2 = HeadAnimal
  L15_2 = false
  L16_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  while true do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = SetPedDefaultComponentVariation
  L10_2 = L8_2
  L9_2(L10_2)
  L9_2 = SetPedFleeAttributes
  L10_2 = L8_2
  L11_2 = 0
  L12_2 = 0
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SetPedDropsWeaponsWhenDead
  L10_2 = L8_2
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = SetPedDiesWhenInjured
  L10_2 = L8_2
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = SetEntityInvincible
  L10_2 = L8_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = FreezeEntityPosition
  L10_2 = L8_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = SetBlockingOfNonTemporaryEvents
  L10_2 = L8_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = SetEntityCollision
  L10_2 = L8_2
  L11_2 = false
  L12_2 = false
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = SetEntityAsMissionEntity
  L10_2 = L8_2
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = SetPedCanBeTargetted
  L10_2 = L8_2
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = SetEntityAlpha
  L10_2 = L8_2
  L11_2 = 250
  L9_2(L10_2, L11_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = AnimaliShopSpawned
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = SetModelAsNoLongerNeeded
  L10_2 = A0_2
  L9_2(L10_2)
  if "horse" == A0_2 or "a_c_deer" == A0_2 then
    L9_2 = 0
    L10_2 = IsPedComponentVariationValid
    L11_2 = L8_2
    L12_2 = 0
    L13_2 = 0
    L14_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if L10_2 then
      L10_2 = SetPedPreloadVariationData
      L11_2 = L8_2
      L12_2 = 0
      L13_2 = 0
      L14_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L10_2 = SetPedComponentVariation
      L11_2 = L8_2
      L12_2 = 0
      L13_2 = 0
      L14_2 = L9_2
      L15_2 = 0
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    L10_2 = 0
    L11_2 = 3
    L12_2 = L10_2
    L13_2 = 0
    L14_2 = GetPedDrawableVariation
    L15_2 = L8_2
    L16_2 = L11_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = IsPedComponentVariationValid
    L16_2 = L8_2
    L17_2 = L11_2
    L18_2 = L14_2
    L19_2 = L12_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    if L15_2 then
      L15_2 = SetPedPreloadVariationData
      L16_2 = L8_2
      L17_2 = L11_2
      L18_2 = L14_2
      L19_2 = L12_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
      L15_2 = SetPedComponentVariation
      L16_2 = L8_2
      L17_2 = L11_2
      L18_2 = L14_2
      L19_2 = L12_2
      L20_2 = L13_2
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L11_2 = 8
    L12_2 = L10_2
    L13_2 = 0
    L15_2 = GetPedDrawableVariation
    L16_2 = L8_2
    L17_2 = L11_2
    L15_2 = L15_2(L16_2, L17_2)
    L14_2 = L15_2
    L15_2 = IsPedComponentVariationValid
    L16_2 = L8_2
    L17_2 = L11_2
    L18_2 = L14_2
    L19_2 = L12_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    if L15_2 then
      L15_2 = SetPedPreloadVariationData
      L16_2 = L8_2
      L17_2 = L11_2
      L18_2 = L14_2
      L19_2 = L12_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
      L15_2 = SetPedComponentVariation
      L16_2 = L8_2
      L17_2 = L11_2
      L18_2 = L14_2
      L19_2 = L12_2
      L20_2 = L13_2
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  end
end
SpawnLocalAnimal = L38_1
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = InShopHorse
  if L0_2 then
    L0_2 = horseprint
    L1_2 = "Still in shop animals."
    L0_2(L1_2)
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedInAnyVehicle
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_24
    end
  end
  L1_2 = horseprint
  L2_2 = "Locked operation on vehicle."
  L1_2(L2_2)
  do return end
  ::lbl_24::
  L1_2 = MyAnimals
  if L1_2 then
    L1_2 = MyAnimals
    L1_2 = #L1_2
    if not (L1_2 <= 0) then
      L1_2 = MyAnimals
      L1_2 = L1_2[1]
      if nil ~= L1_2 then
        goto lbl_38
      end
    end
  end
  L1_2 = NoAnimalsFunction
  L1_2()
  do return end
  ::lbl_38::
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = MyAnimals
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = MyAnimals
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.model
    if not L6_2 then
      L6_2 = "unknown"
    end
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItemAdvanced
    L9_2 = {}
    L10_2 = "Mount ID [%s]"
    L11_2 = L10_2
    L10_2 = L10_2.format
    L12_2 = L4_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.label = L10_2
    L9_2.description = "Click to spawn this mount"
    L9_2.autoClose = false
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = ShowAnimalPreview
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = PreviewAnimal
      if L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = PreviewAnimal
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = L5_2.components
          if L0_3 then
            L0_3 = LoadComponentsAnimal
            L1_3 = PreviewAnimal
            L2_3 = L5_2.components
            L0_3(L1_3, L2_3)
          end
        end
      end
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "NAV_LEFT_RIGHT"
      L3_3 = "HUD_FREEMODE_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L9_2.onHover = L10_2
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.close
      L0_3(L1_3)
      L0_3 = L5_2.model
      L1_3 = L5_2.components
      L2_3 = Animal
      L2_3 = L2_3.Handle
      L3_3 = DeleteAnimalPreview
      L3_3()
      L3_3 = CreateThread
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = L2_3
        if L0_4 then
          L0_4 = L2_3
          if 0 ~= L0_4 then
            L0_4 = DoesEntityExist
            L1_4 = L2_3
            L0_4 = L0_4(L1_4)
            if L0_4 then
              L0_4 = NetworkGetEntityIsNetworked
              L1_4 = L2_3
              L0_4 = L0_4(L1_4)
              if L0_4 then
                L0_4 = GetGameTimer
                L0_4 = L0_4()
                L0_4 = L0_4 + 3000
                while true do
                  L1_4 = DoesEntityExist
                  L2_4 = L2_3
                  L1_4 = L1_4(L2_4)
                  if not L1_4 then
                    break
                  end
                  L1_4 = NetworkHasControlOfEntity
                  L2_4 = L2_3
                  L1_4 = L1_4(L2_4)
                  if L1_4 then
                    break
                  end
                  L1_4 = GetGameTimer
                  L1_4 = L1_4()
                  if not (L0_4 > L1_4) then
                    break
                  end
                  L1_4 = NetworkRequestControlOfEntity
                  L2_4 = L2_3
                  L1_4(L2_4)
                  L1_4 = Wait
                  L2_4 = 50
                  L1_4(L2_4)
                end
              end
              L0_4 = SetEntityAsMissionEntity
              L1_4 = L2_3
              L2_4 = true
              L3_4 = true
              L0_4(L1_4, L2_4, L3_4)
              L0_4 = DeletePed
              L1_4 = L2_3
              L0_4(L1_4)
              L0_4 = Wait
              L1_4 = 100
              L0_4(L1_4)
              L0_4 = DoesEntityExist
              L1_4 = L2_3
              L0_4 = L0_4(L1_4)
              if L0_4 then
                L0_4 = SetEntityAsMissionEntity
                L1_4 = L2_3
                L2_4 = true
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = DeleteEntity
                L1_4 = L2_3
                L0_4(L1_4)
                L0_4 = Wait
                L1_4 = 100
                L0_4(L1_4)
              end
              L0_4 = GetGameTimer
              L0_4 = L0_4()
              L0_4 = L0_4 + 2000
              while true do
                L1_4 = DoesEntityExist
                L2_4 = L2_3
                L1_4 = L1_4(L2_4)
                if not L1_4 then
                  break
                end
                L1_4 = GetGameTimer
                L1_4 = L1_4()
                if not (L0_4 > L1_4) then
                  break
                end
                L1_4 = NetworkGetEntityIsNetworked
                L2_4 = L2_3
                L1_4 = L1_4(L2_4)
                if L1_4 then
                  L1_4 = NetworkRequestControlOfEntity
                  L2_4 = L2_3
                  L1_4(L2_4)
                end
                L1_4 = SetEntityAsMissionEntity
                L2_4 = L2_3
                L3_4 = true
                L4_4 = true
                L1_4(L2_4, L3_4, L4_4)
                L1_4 = DeletePed
                L2_4 = L2_3
                L1_4(L2_4)
                L1_4 = DeleteEntity
                L2_4 = L2_3
                L1_4(L2_4)
                L1_4 = Wait
                L2_4 = 100
                L1_4(L2_4)
              end
            end
          end
        end
        L0_4 = Animal
        L0_4 = L0_4.Handle
        L1_4 = L2_3
        if L0_4 == L1_4 then
          L0_4 = Animal
          L0_4.Handle = nil
          L0_4 = Animal
          L0_4.Model = nil
        end
        L0_4 = TriggerEvent
        L1_4 = "spawnHorse"
        L2_4 = L0_3
        L3_4 = nil
        L4_4 = L1_3
        L0_4(L1_4, L2_4, L3_4, L4_4)
        InShopHorse = false
      end
      L3_3(L4_3)
    end
    L9_2.onClick = L10_2
    L10_2 = {}
    L9_2.hoverInfo = L10_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
  L1_2 = ShowAnimalPreview
  L2_2 = MyAnimals
  L2_2 = L2_2[1]
  L2_2 = L2_2.model
  L1_2(L2_2)
  L1_2 = PreviewAnimal
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = PreviewAnimal
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = MyAnimals
      L1_2 = L1_2[1]
      L1_2 = L1_2.components
      if L1_2 then
        L1_2 = LoadComponentsAnimal
        L2_2 = PreviewAnimal
        L3_2 = MyAnimals
        L3_2 = L3_2[1]
        L3_2 = L3_2.components
        L1_2(L2_2, L3_2)
      end
    end
  end
end
OpenMyAnimals = L38_1
L38_1 = CreateThread
function L39_1()
  local L0_2, L1_2, L2_2
  L0_2 = horseprint
  L1_2 = "^2[Loading Saved Animals] ^7Please wait..."
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    L1_2 = HasCollisionLoadedAroundEntity
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "getHorseList"
  L1_2(L2_2)
end
L38_1(L39_1)
L38_1 = nil
ActiveMenu = false
Promise = L38_1
L38_1 = RegisterNUICallback
L39_1 = "dataPost"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  if not L2_2 then
    L2_2 = nil
  end
  L3_2 = ActiveMenu
  if not L3_2 then
    L3_2 = closeMenu
    L3_2()
    return
  end
  L3_2 = ActiveMenu
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = Promise
    if nil ~= L4_2 then
      L4_2 = L3_2.args
      if L4_2 then
        L4_2 = L3_2.args
        L5_2 = A0_2.other_inputs
        L4_2.range = L5_2
      else
        L4_2 = {}
        L5_2 = A0_2.other_inputs
        L4_2.range = L5_2
        L3_2.args = L4_2
      end
      L4_2 = Promise
      L5_2 = L4_2
      L4_2 = L4_2.resolve
      L6_2 = L3_2.args
      L4_2(L5_2, L6_2)
      Promise = nil
    end
    L4_2 = L3_2.leave
    if L4_2 then
      L4_2 = closeMenu
      L4_2()
      return
    end
    L4_2 = L3_2.action
    if L4_2 then
      L4_2 = L3_2.unpack
      if L4_2 then
        L4_2 = L3_2.action
        L5_2 = table
        L5_2 = L5_2.unpack
        L6_2 = L3_2.args
        if not L6_2 then
          L6_2 = {}
        end
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = L3_2.action
        L5_2 = L3_2.args
        L4_2(L5_2)
      end
    end
    L4_2 = L3_2.event
    if not L4_2 then
      L4_2 = L3_2.server
      if L4_2 then
        L4_2 = assert
        L5_2 = L3_2.event
        L6_2 = "The Server event was called but no event name was passed!"
        L4_2(L5_2, L6_2)
    end
    else
      L4_2 = L3_2.event
      if not L4_2 then
        L4_2 = L3_2.client
        if L4_2 then
          L4_2 = assert
          L5_2 = L3_2.event
          L6_2 = "The Client event was called but no event name was passed!"
          L4_2(L5_2, L6_2)
        end
      end
    end
    L4_2 = L3_2.event
    if L4_2 then
      L4_2 = Promise
      if nil == L4_2 then
        L4_2 = L3_2.server
        if L4_2 then
          L4_2 = L3_2.unpack
          if L4_2 then
            L4_2 = TriggerServerEvent
            L5_2 = L3_2.event
            L6_2 = table
            L6_2 = L6_2.unpack
            L7_2 = L3_2.args
            if not L7_2 then
              L7_2 = {}
            end
            L6_2, L7_2 = L6_2(L7_2)
            L4_2(L5_2, L6_2, L7_2)
          else
            L4_2 = TriggerServerEvent
            L5_2 = L3_2.event
            L6_2 = L3_2.args
            L4_2(L5_2, L6_2)
          end
        else
          L4_2 = L3_2.server
          if not L4_2 then
            L4_2 = L3_2.unpack
            if L4_2 then
              L4_2 = TriggerEvent
              L5_2 = L3_2.event
              L6_2 = table
              L6_2 = L6_2.unpack
              L7_2 = L3_2.args
              if not L7_2 then
                L7_2 = {}
              end
              L6_2, L7_2 = L6_2(L7_2)
              L4_2(L5_2, L6_2, L7_2)
            else
              L4_2 = TriggerEvent
              L5_2 = L3_2.event
              L6_2 = L3_2.args
              L4_2(L5_2, L6_2)
            end
          else
            L4_2 = L3_2.client
            if L4_2 then
              L4_2 = L3_2.unpack
              if L4_2 then
                L4_2 = TriggerEvent
                L5_2 = L3_2.event
                L6_2 = table
                L6_2 = L6_2.unpack
                L7_2 = L3_2.args
                if not L7_2 then
                  L7_2 = {}
                end
                L6_2, L7_2 = L6_2(L7_2)
                L4_2(L5_2, L6_2, L7_2)
              else
                L4_2 = TriggerEvent
                L5_2 = L3_2.event
                L6_2 = L3_2.args
                L4_2(L5_2, L6_2)
              end
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "cancel"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Promise
  if nil ~= L2_2 then
    L2_2 = Promise
    L3_2 = L2_2
    L2_2 = L2_2.resolve
    L4_2 = nil
    L2_2(L3_2, L4_2)
    Promise = nil
  end
  L2_2 = closeMenu
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ProcessParams
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  ActiveMenu = L2_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "OPEN_MENU"
  L3_2.data = A0_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = false
  end
  L3_2.rtl = L4_2
  L2_2(L3_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = true
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = ActiveMenu
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = WhileMenuDisable
      L0_3()
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 1
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 2
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 200
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 1
      L2_3 = 200
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 2
      L2_3 = 200
      L0_3(L1_3, L2_3)
      L0_3 = IsDisabledControlJustPressed
      L1_3 = 0
      L2_3 = 200
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 200
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 199
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlJustPressed
            L1_3 = 0
            L2_3 = 199
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_60
            end
          end
        end
      end
      L0_3 = closeMenu
      L0_3()
      do return end
      ::lbl_60::
    end
  end
  L2_2(L3_2)
end
CreateMenu = L38_1
camLocked = false
L38_1 = AddEventHandler
L39_1 = "cameraLock"
function L40_1()
  local L0_2, L1_2
  L0_2 = camLocked
  L0_2 = not L0_2
  camLocked = L0_2
  L0_2 = checkCameraEdit
  L1_2 = camLocked
  L0_2(L1_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  if A0_2 then
    L2_2 = Promise
    if nil == L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = ActiveMenu
  if L2_2 then
    L2_2 = closeMenu
    L2_2()
    while true do
      L2_2 = ActiveMenu
      if not L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
  end
  L2_2 = promise
  L2_2 = L2_2.new
  L2_2 = L2_2()
  Promise = L2_2
  L2_2 = CreateMenu
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = ActiveMenu
      if not L0_3 then
        break
      end
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 1
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 2
      L2_3 = 199
      L0_3(L1_3, L2_3)
      L0_3 = IsDisabledControlJustPressed
      L1_3 = 0
      L2_3 = 25
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_34
        end
      end
      L0_3 = camLocked
      L0_3 = not L0_3
      camLocked = L0_3
      L0_3 = checkCameraEdit
      L1_3 = camLocked
      L0_3(L1_3)
      ::lbl_34::
      L0_3 = camLocked
      if L0_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 0
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 0
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 2
        L2_3 = 0
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 1
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = Promise
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  return L2_2(L3_2)
end
ContextMenu = L38_1
function L38_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "OPEN_OVERLAY"
  L2_2.data = A0_2
  L1_2(L2_2)
end
Overlay = L38_1
function L38_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "CLOSE_OVERLAY"
  L0_2(L1_2)
end
CloseOverlay = L38_1
function L38_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "CANCEL_MENU"
  L0_2(L1_2)
end
CancelMenu = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.args
    if L7_2 then
      L7_2 = type
      L8_2 = L6_2.args
      L7_2 = L7_2(L8_2)
      if "table" == L7_2 then
        L7_2 = next
        L8_2 = L6_2.args
        L7_2 = L7_2(L8_2)
        if nil ~= L7_2 then
          L7_2 = L6_2.hide
          if not L7_2 then
            L7_2 = PackParams
            L8_2 = L6_2.args
            L7_2 = L7_2(L8_2)
            L6_2.args = L7_2
          end
        end
      end
    end
  end
  return A0_2
end
ProcessParams = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
length = L38_1
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = 15
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L2_2[L6_2] = L7_2
  end
  L3_2 = #L2_2
  L4_2 = length
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L3_2 ~= L4_2 then
    L3_2 = #L2_2
    L3_2 = L3_2 + 1
    L4_2 = {}
    L2_2[L3_2] = L4_2
    L4_2 = pairs
    L5_2 = L1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = type
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if "number" ~= L10_2 then
        L10_2 = L2_2[L3_2]
        L10_2[L8_2] = L9_2
      end
    end
  end
  return L2_2
end
PackParams = L38_1
L38_1 = exports
L39_1 = "createMenu"
L40_1 = ContextMenu
L38_1(L39_1, L40_1)
L38_1 = exports
L39_1 = "Overlay"
L40_1 = Overlay
L38_1(L39_1, L40_1)
L38_1 = exports
L39_1 = "CloseOverlay"
L40_1 = CloseOverlay
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "mouse:move:sfx"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "mouse:search_found:sfx"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNUICallback
L39_1 = "mouse:search_not_found:sfx"
function L40_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L38_1(L39_1, L40_1)
function L38_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Promise
  if nil ~= L1_2 then
    L1_2 = Promise
    L2_2 = L1_2
    L1_2 = L1_2.resolve
    L3_2 = nil
    L1_2(L2_2, L3_2)
    Promise = nil
  end
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "CLOSE_MENU"
  L1_2(L2_2)
  ActiveMenu = false
end
closeMenu = L38_1
L38_1 = 0
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = menu
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = myAnimalAnim
  if "rottweiler" == L2_2 or "boar" == L2_2 then
    L2_2 = "deer"
  end
  L3_2 = "creatures@"
  L4_2 = L2_2
  L5_2 = "@move"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = "walk_bck_dwn"
  L5_2 = HasAnimDictLoaded
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestAnimDict
    L6_2 = L3_2
    L5_2(L6_2)
    while true do
      L5_2 = HasAnimDictLoaded
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 10
      L5_2(L6_2)
    end
  end
  L5_2 = TaskPlayAnim
  L6_2 = A0_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 2.0
  L10_2 = 2.0
  L11_2 = 150
  L12_2 = 1
  L13_2 = 0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = table
  L5_2 = L5_2.iforeach
  L6_2 = _components
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3.id
    L2_3 = GetNumberOfPedDrawableVariations
    L3_3 = A0_2
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    if not L2_3 then
      L2_3 = 0
    end
    if L2_3 > 0 then
      L3_3 = GetPedDrawableVariation
      L4_3 = A0_2
      L5_3 = L1_3
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        goto lbl_18
      end
    end
    L3_3 = 0
    ::lbl_18::
    if L2_3 > 0 then
      L4_3 = GetNumberOfPedTextureVariations
      L5_3 = A0_2
      L6_3 = L1_3
      L7_3 = L3_3
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      if L4_3 then
        goto lbl_31
      end
      L4_3 = 0
      if L4_3 then
        goto lbl_31
      end
    end
    L4_3 = 0
    ::lbl_31::
    if L2_3 > 1 or L4_3 > 1 then
      if L2_3 > 1 then
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = L1_2
        L7_3 = {}
        L8_3 = "3D "
        L9_3 = A0_3.name
        L10_3 = L9_3
        L9_3 = L9_3.upper
        L9_3 = L9_3(L10_3)
        L8_3 = L8_3 .. L9_3
        L7_3.header = L8_3
        L7_3.subheader = ""
        L7_3.range_slider = true
        L7_3.style = "color:green;"
        L7_3.searchable = true
        L7_3.currency = L1_3
        L7_3.multiplier = -1100
        L8_3 = {}
        L8_3.step = 1
        L8_3.min = 0
        L9_3 = math
        L9_3 = L9_3.max
        L10_3 = L2_3 - 1
        L11_3 = 0
        L9_3 = L9_3(L10_3, L11_3)
        L8_3.max = L9_3
        L8_3.value = L3_3
        L7_3.range = L8_3
        L5_3(L6_3, L7_3)
      end
      if L4_3 > 1 then
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = L1_2
        L7_3 = {}
        L8_3 = "TX "
        L9_3 = A0_3.name
        L10_3 = L9_3
        L9_3 = L9_3.upper
        L9_3 = L9_3(L10_3)
        L8_3 = L8_3 .. L9_3
        L7_3.header = L8_3
        L7_3.subheader = ""
        L7_3.range_slider = true
        L7_3.style = "color:green;"
        L7_3.searchable = true
        L7_3.currency = L1_3
        L7_3.multiplier = -1101
        L8_3 = {}
        L8_3.step = 1
        L8_3.min = 0
        L9_3 = math
        L9_3 = L9_3.max
        L10_3 = L4_3 - 1
        L11_3 = 0
        L9_3 = L9_3(L10_3, L11_3)
        L8_3.max = L9_3
        L9_3 = GetPedTextureVariation
        L10_3 = A0_2
        L11_3 = L1_3
        L9_3 = L9_3(L10_3, L11_3)
        L8_3.value = L9_3
        L7_3.range = L8_3
        L5_3(L6_3, L7_3)
      end
    end
  end
  L5_2(L6_2, L7_2)
  L5_2 = exports
  L5_2 = L5_2.striano_ridehorse
  L6_2 = L5_2
  L5_2 = L5_2.createMenu
  L7_2 = L1_2
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
end
Modifica = L39_1
L39_1 = RegisterNUICallback
L40_1 = "CambiaComponente"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = LastNPCEdit
  L3_2 = tonumber
  L4_2 = A0_2.currency
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2.index
  L4_2 = L4_2(L5_2)
  L5_2 = IsPedComponentVariationValid
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L5_2 = SetPedPreloadVariationData
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = SetPedComponentVariation
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = 0
    L10_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNUICallback
L40_1 = "CambiaComponenteTexture"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = LastNPCEdit
  L3_2 = tonumber
  L4_2 = A0_2.currency
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2.index
  L4_2 = L4_2(L5_2)
  L5_2 = GetPedDrawableVariation
  L6_2 = L2_2
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = IsPedComponentVariationValid
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L6_2 = SetPedPreloadVariationData
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L4_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetPedComponentVariation
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L5_2
    L10_2 = L4_2
    L11_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L6_2 = A1_2
  L7_2 = "ok"
  L6_2(L7_2)
end
L39_1(L40_1, L41_1)
L39_1 = table
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L39_1.foreach = L40_1
L39_1 = table
function L40_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L39_1.iforeach = L40_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 0
  L3_2 = 15
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = IsPedComponentVariationValid
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = SetPedPreloadVariationData
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = 0
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetPedComponentVariation
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = 0
    L6_2 = L1_2
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
ApplyRandoms = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = IsPedComponentVariationValid
  L4_2 = A0_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L3_2 = SetPedPreloadVariationData
    L4_2 = A0_2
    L5_2 = 0
    L6_2 = 0
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = SetPedComponentVariation
    L4_2 = A0_2
    L5_2 = 0
    L6_2 = 0
    L7_2 = L2_2
    L8_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
ApplySpecificColor = L39_1
L39_1 = 0
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = PedToNet
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = updaterDelay
  if not L3_2 then
    L3_2 = 7
  end
  L4_2 = L39_1
  if L2_2 < L4_2 then
    return
  end
  L4_2 = L2_2 + L3_2
  L39_1 = L4_2
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityRotation
  L6_2 = A0_2
  L7_2 = 2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = TriggerServerEvent
  L7_2 = "srtHorse"
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L11_2 = L4_2.x
  L12_2 = L4_2.y
  L13_2 = L4_2.z
  L14_2 = L1_2
  L15_2 = GetPlayerServerId
  L16_2 = PlayerId
  L16_2 = L16_2()
  L15_2, L16_2 = L15_2(L16_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
syncRot = L40_1
L40_1 = RegisterNetEvent
L41_1 = "srtHorse"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "srtHorse"
function L42_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L8_2 = GetPlayerServerId
  L9_2 = PlayerId
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  if A7_2 == L8_2 then
    return
  end
  if not A6_2 or 0 == A6_2 then
    return
  end
  L8_2 = NetworkDoesNetworkIdExist
  L9_2 = A6_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    return
  end
  L8_2 = NetToPed
  L9_2 = A6_2
  L8_2 = L8_2(L9_2)
  if 0 ~= L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L9_2 = GetEntityCoords
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = vector3
  L11_2 = A3_2 + 0.0
  L12_2 = A4_2 + 0.0
  L13_2 = A5_2 + 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = 0.25
  L12_2 = L10_2 - L9_2
  L12_2 = L12_2 * L11_2
  L12_2 = L9_2 + L12_2
  L13_2 = SetEntityCoordsNoOffset
  L14_2 = L8_2
  L15_2 = L12_2.x
  L16_2 = L12_2.y
  L17_2 = L12_2.z
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = GetEntityRotation
  L14_2 = L8_2
  L15_2 = 2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = vector3
  L15_2 = A0_2 + 0.0
  L16_2 = A1_2 + 0.0
  L17_2 = A2_2 + 0.0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_3 - A0_3
    L2_3 = L2_3 + 540.0
    L2_3 = L2_3 % 360.0
    L2_3 = L2_3 - 180.0
    L3_3 = L11_2
    L3_3 = L2_3 * L3_3
    L3_3 = A0_3 + L3_3
    return L3_3
  end
  lerpAngle = L15_2
  L15_2 = lerpAngle
  L16_2 = L13_2.x
  L17_2 = L14_2.x
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = lerpAngle
  L17_2 = L13_2.y
  L18_2 = L14_2.y
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = lerpAngle
  L18_2 = L13_2.z
  L19_2 = L14_2.z
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = SetEntityRotation
  L19_2 = L8_2
  L20_2 = L15_2
  L21_2 = L16_2
  L22_2 = L17_2
  L23_2 = 2
  L24_2 = true
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
end
L40_1(L41_1, L42_1)
L40_1 = nil
L41_1 = 0.37
L42_1 = 0.01
L43_1 = 0.11
L44_1 = -87.0
L45_1 = 97.0
L46_1 = 9.0
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L40_1
  if nil ~= L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L40_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L40_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeletePed
      L2_2 = L40_1
      L1_2(L2_2)
      L1_2 = nil
      L40_1 = L1_2
    end
    L1_2 = ClearPedTasks
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "Zoom_In"
    L4_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = 0.37
    L2_2 = 0.01
    L3_2 = 0.11
    L4_2 = -87.0
    L5_2 = 97.0
    L6_2 = 9.0
    L46_1 = L6_2
    L45_1 = L5_2
    L44_1 = L4_2
    L43_1 = L3_2
    L42_1 = L2_2
    L41_1 = L1_2
  end
end
AnnullaSit = L47_1
L47_1 = RegisterCommand
L48_1 = "striano_editor_mount"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = DoesEntityExist
  L4_2 = L40_1
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = AnnullaSit
    L4_2 = L2_2
    L3_2(L4_2)
    return
  end
  L3_2 = "a_c_deer"
  L4_2 = A1_2[1]
  if nil ~= L4_2 then
    L4_2 = A1_2[1]
    if "nil" ~= L4_2 then
      goto lbl_23
    end
  end
  L4_2 = testo3d
  L5_2 = "~r~~h~Not a valid model."
  L4_2(L5_2)
  do return end
  ::lbl_23::
  L4_2 = tostring
  L5_2 = A1_2[1]
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = RequestModelStriano
  L5_2 = GetHashKey
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L5_2(L6_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = CreatePed
  L6_2 = 26
  L7_2 = GetHashKey
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = 0.0
  L12_2 = true
  L13_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = 0
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if not (not L7_2 and L6_2 < 100) then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
    L6_2 = L6_2 + 1
  end
  if L6_2 >= 100 then
    L7_2 = testo3d
    L8_2 = "~r~~h~Model not exist."
    L7_2(L8_2)
    return
  end
  L7_2 = ApplySpecificColor
  L8_2 = L5_2
  L9_2 = math
  L9_2 = L9_2.random
  L10_2 = 1
  L11_2 = 5
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2(L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L7_2 = GetPedBoneIndex
  L8_2 = L5_2
  L9_2 = 57597
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L2_2
  L10_2 = L5_2
  L11_2 = L7_2
  L12_2 = L41_1
  L13_2 = L42_1
  L14_2 = L43_1
  L15_2 = L44_1
  L16_2 = L45_1
  L17_2 = L46_1
  L18_2 = false
  L19_2 = true
  L20_2 = false
  L21_2 = true
  L22_2 = 2
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L40_1 = L5_2
  L8_2 = SetPedDefaultComponentVariation
  L9_2 = L5_2
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 25
  L8_2(L9_2)
  L8_2 = testo3d
  L9_2 = "~g~~h~Editor start!~n~Tutorial key in F8."
  L8_2(L9_2)
  L8_2 = horseprint
  L9_2 = "My dear rider, use W-A-S-D to move/rotate, press SHIFT or SPACE to edit rotation, H to get coords."
  L8_2(L9_2)
  L8_2 = horseprint
  L9_2 = "Do you like the position you choose for your mount? Let's copy and paste it in 'att' table in editablehorse.lua of your custom mount!"
  L8_2(L9_2)
  L8_2 = faiAnim
  L9_2 = "bzzz@horse@stand"
  L10_2 = "bz_horse_stand"
  L11_2 = -1
  L12_2 = 1
  L13_2 = L2_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = UpdateAttaccatoVeicolo
  L9_2 = L5_2
  L10_2 = L7_2
  L11_2 = L2_2
  L8_2(L9_2, L10_2, L11_2)
end
L47_1(L48_1, L49_1)
function L47_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = -1
    L1_3 = A1_2
    if nil == L1_3 then
      L0_3 = -1
    else
      L0_3 = A1_2
    end
    L1_3 = GetEntityCoords
    L2_3 = A2_2
    L1_3 = L1_3(L2_3)
    while true do
      L2_3 = DoesEntityExist
      L3_3 = L40_1
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = DisableControlAction
      L3_3 = 0
      L4_3 = 23
      L5_3 = true
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = GetEntityCoords
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L3_3 = DisableCamCollisionForEntity
      L4_3 = A0_2
      L3_3(L4_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 44
      L3_3(L4_3, L5_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 14
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 15
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 16
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 17
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = IsEntityAPed
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = IsPedRagdoll
        L4_3 = A0_2
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = AnnullaSit
          L4_3 = A2_2
          L3_3(L4_3)
          return
        end
      end
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 73
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 73
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          goto lbl_84
        end
      end
      L3_3 = AnnullaSit
      L4_3 = A2_2
      L3_3(L4_3)
      do return end
      ::lbl_84::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = locksit
        if not L3_3 then
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 32
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = L43_1
            L3_3 = L3_3 + 0.001
            L43_1 = L3_3
            L3_3 = DetachEntity
            L4_3 = A2_2
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = A2_2
            L5_3 = A0_2
            L6_3 = L0_3
            L7_3 = L41_1
            L8_3 = L42_1
            L9_3 = L43_1
            L10_3 = L44_1
            L11_3 = L45_1
            L12_3 = L46_1
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 33
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = L43_1
            L3_3 = L3_3 - 0.001
            L43_1 = L3_3
            L3_3 = DetachEntity
            L4_3 = A2_2
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = A2_2
            L5_3 = A0_2
            L6_3 = L0_3
            L7_3 = L41_1
            L8_3 = L42_1
            L9_3 = L43_1
            L10_3 = L44_1
            L11_3 = L45_1
            L12_3 = L46_1
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 34
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 22
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L46_1
              L3_3 = L3_3 + 1.5
              L46_1 = L3_3
            else
              L3_3 = L46_1
              L3_3 = L3_3 + 0.5
              L46_1 = L3_3
            end
            L3_3 = L46_1
            L4_3 = 360.0
            if L3_3 > L4_3 then
              L3_3 = 1.0
              L46_1 = L3_3
            end
            L3_3 = DetachEntity
            L4_3 = A2_2
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = A2_2
            L5_3 = A0_2
            L6_3 = L0_3
            L7_3 = L41_1
            L8_3 = L42_1
            L9_3 = L43_1
            L10_3 = L44_1
            L11_3 = L45_1
            L12_3 = L46_1
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          else
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 35
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = IsControlPressed
              L4_3 = 0
              L5_3 = 22
              L3_3 = L3_3(L4_3, L5_3)
              if L3_3 then
                L3_3 = L46_1
                L3_3 = L3_3 - 1.5
                L46_1 = L3_3
              else
                L3_3 = L46_1
                L3_3 = L3_3 - 0.5
                L46_1 = L3_3
              end
              L3_3 = L46_1
              if L3_3 < 1.0 then
                L3_3 = 360.0
                L46_1 = L3_3
              end
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
          end
        end
      end
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = locksit
        if not L3_3 then
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 34
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L41_1
              L3_3 = L3_3 - 0.001
              L41_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 35
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L41_1
              L3_3 = L3_3 + 0.001
              L41_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
          else
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 34
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L44_1
              L3_3 = L3_3 - 0.5
              L44_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 35
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L44_1
              L3_3 = L3_3 + 0.5
              L44_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
          end
          L3_3 = IsControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 32
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L42_1
              L3_3 = L3_3 + 0.001
              L42_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 33
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L42_1
              L3_3 = L3_3 - 0.001
              L42_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
          else
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 32
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L45_1
              L3_3 = L3_3 + 0.5
              L45_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 33
            L3_3 = L3_3(L4_3, L5_3)
            if L3_3 then
              L3_3 = L45_1
              L3_3 = L3_3 - 0.5
              L45_1 = L3_3
              L3_3 = DetachEntity
              L4_3 = A2_2
              L5_3 = true
              L6_3 = true
              L3_3(L4_3, L5_3, L6_3)
              L3_3 = AttachEntityToEntity
              L4_3 = A2_2
              L5_3 = A0_2
              L6_3 = L0_3
              L7_3 = L41_1
              L8_3 = L42_1
              L9_3 = L43_1
              L10_3 = L44_1
              L11_3 = L45_1
              L12_3 = L46_1
              L13_3 = false
              L14_3 = true
              L15_3 = false
              L16_3 = true
              L17_3 = 2
              L18_3 = true
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
            end
          end
          L3_3 = IsControlJustReleased
          L4_3 = 0
          L5_3 = 74
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = PlaySoundFrontend
            L4_3 = -1
            L5_3 = "THERMAL_VISION_GOGGLES_ON_MASTER"
            L6_3 = "0"
            L7_3 = 1
            L3_3(L4_3, L5_3, L6_3, L7_3)
            L3_3 = testo3d
            L4_3 = "~y~~h~Coords get!"
            L3_3(L4_3)
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L41_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_560
              end
            end
            L3_3 = L41_1
            ::lbl_560::
            L41_1 = L3_3
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L42_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_572
              end
            end
            L3_3 = L42_1
            ::lbl_572::
            L42_1 = L3_3
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L43_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_584
              end
            end
            L3_3 = L43_1
            ::lbl_584::
            L43_1 = L3_3
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L44_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_596
              end
            end
            L3_3 = L44_1
            ::lbl_596::
            L44_1 = L3_3
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L45_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_608
              end
            end
            L3_3 = L45_1
            ::lbl_608::
            L45_1 = L3_3
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = L46_1
            L3_3 = L3_3(L4_3)
            L4_3 = 0.001
            if L3_3 < L4_3 then
              L3_3 = 0.0
              if L3_3 then
                goto lbl_620
              end
            end
            L3_3 = L46_1
            ::lbl_620::
            L46_1 = L3_3
            L3_3 = ExecuteCommand
            L4_3 = "copia "
            L5_3 = L41_1
            L6_3 = ","
            L7_3 = L42_1
            L8_3 = ","
            L9_3 = L43_1
            L10_3 = ","
            L11_3 = L44_1
            L12_3 = ","
            L13_3 = L45_1
            L14_3 = ","
            L15_3 = L46_1
            L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
            L3_3(L4_3)
            L3_3 = horseprint
            L4_3 = "Coords copied in clipboard ready: "
            L5_3 = L41_1
            L6_3 = ","
            L7_3 = L42_1
            L8_3 = ","
            L9_3 = L43_1
            L10_3 = ","
            L11_3 = L44_1
            L12_3 = ","
            L13_3 = L45_1
            L14_3 = ","
            L15_3 = L46_1
            L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
            L3_3(L4_3)
          end
        end
      end
    end
  end
  L3_2(L4_2)
end
UpdateAttaccatoVeicolo = L47_1
pedVelocizzato = false
function L47_1()
  local L0_2, L1_2
  L0_2 = pedVelocizzato
  if not L0_2 then
    pedVelocizzato = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
      while true do
        L0_3 = pedVelocizzato
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = Animal
        L0_3 = L0_3.Handle
        L1_3 = animBaseAnimale
        L1_3 = L1_3.a
        L2_3 = animBaseAnimale
        L2_3 = L2_3.b
        L3_3 = runAnim
        L3_3 = L3_3.a
        L4_3 = runAnim
        L4_3 = L4_3.b
        L5_3 = IsEntityPlayingAnim
        L6_3 = L0_3
        L7_3 = L1_3
        L8_3 = L2_3
        L9_3 = 3
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
        if not L5_3 then
          L5_3 = IsEntityPlayingAnim
          L6_3 = L0_3
          L7_3 = L3_3
          L8_3 = L4_3
          L9_3 = 3
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
          if not L5_3 then
            goto lbl_103
          end
        end
        L5_3 = GetEntityVelocity
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        L6_3 = math
        L6_3 = L6_3.sqrt
        L7_3 = L5_3.x
        L8_3 = L5_3.x
        L7_3 = L7_3 * L8_3
        L8_3 = L5_3.y
        L9_3 = L5_3.y
        L8_3 = L8_3 * L9_3
        L7_3 = L7_3 + L8_3
        L6_3 = L6_3(L7_3)
        L7_3 = nil
        L8_3 = nil
        L9_3 = 0.05
        if L6_3 > L9_3 then
          L9_3 = L5_3.x
          L9_3 = L9_3 / L6_3
          L10_3 = L5_3.y
          L8_3 = L10_3 / L6_3
          L7_3 = L9_3
        else
          L9_3 = GetEntityForwardVector
          L10_3 = L0_3
          L9_3 = L9_3(L10_3)
          L10_3 = L9_3.x
          L8_3 = L9_3.y
          L7_3 = L10_3
        end
        L9_3 = 6.8
        L10_3 = mySpeedRate
        L10_3 = L9_3 * L10_3
        L11_3 = IsControlPressed
        L12_3 = 0
        L13_3 = RightKeyHumanoidRot
        L11_3 = L11_3(L12_3, L13_3)
        if not L11_3 then
          L11_3 = IsControlPressed
          L12_3 = 0
          L13_3 = LeftKeyHumanoidRot
          L11_3 = L11_3(L12_3, L13_3)
          if not L11_3 then
            goto lbl_85
          end
        end
        L10_3 = L10_3 / 1.3
        ::lbl_85::
        L11_3 = 15.0
        if L10_3 > L11_3 then
          L10_3 = L11_3
        end
        L12_3 = 0.18
        L13_3 = lerp
        L14_3 = L6_3
        L15_3 = L10_3
        L16_3 = L12_3
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L14_3 = SetEntityVelocity
        L15_3 = L0_3
        L16_3 = L7_3 * L13_3
        L17_3 = L8_3 * L13_3
        L18_3 = L5_3.z
        L14_3(L15_3, L16_3, L17_3, L18_3)
        ::lbl_103::
      end
    end
    L0_2(L1_2)
  end
end
VelocizzaPed = L47_1
PreviewAnimal = nil
PreviewAnimalActive = false
PreviewAnimalToken = 0
L47_1 = PreviewAnimalList
if not L47_1 then
  L47_1 = {}
end
PreviewAnimalList = L47_1
L47_1 = heading_offset
if not L47_1 then
  L47_1 = 0.0
end
heading_offset = L47_1
function L47_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
joaatSafe = L47_1
function L47_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = joaatSafe
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = IsModelValid
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = horseprint
    L4_2 = "^1[ANIMAL PREVIEW]^7 model not valid:"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = nil
    return L3_2
  end
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = 5000
  end
  L3_2 = L3_2 + L4_2
  while true do
    L4_2 = HasModelLoaded
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if L3_2 < L4_2 then
      L4_2 = horseprint
      L5_2 = "^1[ANIMAL PREVIEW]^7 timeout loading:"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      L4_2 = nil
      return L4_2
    end
  end
  return L2_2
end
LoadModelSafe = L47_1
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = A0_2
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DeleteEntity
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = GetGameTimer
      L1_2 = L1_2()
      L1_2 = L1_2 + 500
      while true do
        L2_2 = DoesEntityExist
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          break
        end
        L2_2 = GetGameTimer
        L2_2 = L2_2()
        if not (L1_2 > L2_2) then
          break
        end
        L2_2 = Wait
        L3_2 = 0
        L2_2(L3_2)
        L2_2 = SetEntityAsMissionEntity
        L3_2 = A0_2
        L4_2 = true
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = DeleteEntity
        L3_2 = A0_2
        L2_2(L3_2)
      end
    end
  end
end
DeleteEntitySafe = L47_1
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PreviewAnimalToken
  L0_2 = L0_2 + 1
  PreviewAnimalToken = L0_2
  PreviewAnimalActive = false
  L0_2 = PreviewAnimal
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = PreviewAnimal
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DeleteEntitySafe
      L1_2 = PreviewAnimal
      L0_2(L1_2)
    end
  end
  L0_2 = PreviewAnimalList
  L0_2 = #L0_2
  L1_2 = 1
  L2_2 = -1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = PreviewAnimalList
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = DeleteEntitySafe
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = PreviewAnimalList
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
  PreviewAnimal = nil
end
DeleteAnimalPreview = L47_1
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = DeleteAnimalPreview
  L1_2()
  L1_2 = PreviewAnimalToken
  L1_2 = L1_2 + 1
  PreviewAnimalToken = L1_2
  L1_2 = PreviewAnimalToken
  PreviewAnimalActive = true
  L2_2 = LoadModelSafe
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = PreviewAnimalToken
    if L1_2 == L3_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = vector3
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 10.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2 - L5_2
  L5_2 = CreatePed
  L6_2 = 28
  L7_2 = L2_2
  L8_2 = L4_2.x
  L9_2 = L4_2.y
  L10_2 = L4_2.z
  L11_2 = 0.0
  L12_2 = false
  L13_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = DoesEntityExist
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = SetModelAsNoLongerNeeded
    L7_2 = L2_2
    L6_2(L7_2)
    L6_2 = horseprint
    L7_2 = "^1[ANIMAL PREVIEW]^7 fail to spawn model:"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = PreviewAnimalToken
  if L1_2 ~= L6_2 then
    L6_2 = DeleteEntitySafe
    L7_2 = L5_2
    L6_2(L7_2)
    return
  end
  PreviewAnimal = L5_2
  L6_2 = PreviewAnimalList
  L7_2 = PreviewAnimalList
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L6_2[L7_2] = L5_2
  L6_2 = SetEntityInvincible
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityLocallyVisible
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = NetworkSetEntityInvisibleToNetwork
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityCanBeDamaged
  L7_2 = L5_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = SetBlockingOfNonTemporaryEvents
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityAlpha
  L7_2 = L5_2
  L8_2 = 254
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityCollision
  L7_2 = L5_2
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetPedCanBeTargetted
  L7_2 = L5_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetPedDefaultComponentVariation
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3
    L0_3 = {}
    L1_3 = 5
    L2_3 = 500
    L3_3 = nil
    while true do
      L4_3 = PreviewAnimalActive
      if not L4_3 then
        break
      end
      L4_3 = L1_2
      L5_3 = PreviewAnimalToken
      if L4_3 ~= L5_3 then
        break
      end
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
      L4_3 = PreviewAnimal
      if not L4_3 then
        break
      end
      L4_3 = PreviewAnimal
      L5_3 = L5_2
      if L4_3 ~= L5_3 then
        break
      end
      L4_3 = DoesEntityExist
      L5_3 = L5_2
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        break
      end
      L4_3 = exports
      L4_3 = L4_3.striano_fastmenu
      L5_3 = L4_3
      L4_3 = L4_3.opened
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        if not L3_3 then
          L4_3 = GetGameTimer
          L4_3 = L4_3()
          L3_3 = L4_3
        end
        L4_3 = GetGameTimer
        L4_3 = L4_3()
        L4_3 = L4_3 - L3_3
        if L2_3 <= L4_3 then
          L4_3 = L1_2
          L5_3 = PreviewAnimalToken
          if L4_3 == L5_3 then
            L4_3 = DeleteAnimalPreview
            L4_3()
          else
            L4_3 = DeleteEntitySafe
            L5_3 = L5_2
            L4_3(L5_3)
          end
          return
        end
      else
        L3_3 = nil
      end
      L4_3 = 0.32135417461395
      L5_3 = 0.7
      L6_3 = 2.0
      L7_3 = 0.0
      L8_3 = DoesEntityExist
      L9_3 = L5_2
      L8_3 = L8_3(L9_3)
      if not L8_3 then
        break
      end
      L8_3 = GetModelDimensions
      L9_3 = GetEntityModel
      L10_3 = L5_2
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3 = L9_3(L10_3)
      L8_3, L9_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
      L10_3 = math
      L10_3 = L10_3.abs
      L11_3 = L9_3.z
      L12_3 = L8_3.z
      L11_3 = L11_3 - L12_3
      L10_3 = L10_3(L11_3)
      if L10_3 > 2.0 then
        L6_3 = 5.0
        L7_3 = -0.4
      else
        L11_3 = 0.8
        if L10_3 < L11_3 then
          L6_3 = 2.4
          L7_3 = 0.25
        end
      end
      L11_3 = GetWorldCoordFromScreenCoord
      L12_3 = L4_3
      L13_3 = L5_3
      L11_3, L12_3 = L11_3(L12_3, L13_3)
      L13_3 = L12_3 * L6_3
      L13_3 = L11_3 + L13_3
      L14_3 = #L0_3
      L14_3 = L14_3 + 1
      L0_3[L14_3] = L13_3
      L14_3 = #L0_3
      if L1_3 < L14_3 then
        L14_3 = table
        L14_3 = L14_3.remove
        L15_3 = L0_3
        L16_3 = 1
        L14_3(L15_3, L16_3)
      end
      L14_3 = vector3
      L15_3 = 0.0
      L16_3 = 0.0
      L17_3 = 0.0
      L14_3 = L14_3(L15_3, L16_3, L17_3)
      L15_3 = ipairs
      L16_3 = L0_3
      L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
      for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
        L14_3 = L14_3 + L20_3
      end
      L15_3 = #L0_3
      L14_3 = L14_3 / L15_3
      L15_3 = SetEntityCoords
      L16_3 = L5_2
      L17_3 = L14_3.x
      L18_3 = L14_3.y
      L19_3 = L14_3.z
      L19_3 = L19_3 + L7_3
      L20_3 = false
      L21_3 = false
      L22_3 = false
      L23_3 = false
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
      L15_3 = heading_offset
      L15_3 = L15_3 + 0.5
      heading_offset = L15_3
      L15_3 = heading_offset
      L16_3 = 359.0
      if L15_3 > L16_3 then
        heading_offset = 0.0
      end
      L15_3 = SetEntityHeading
      L16_3 = L5_2
      L17_3 = heading_offset
      L15_3(L16_3, L17_3)
      L15_3 = ForcePedMotionState
      L16_3 = L5_2
      L17_3 = -294553821
      L18_3 = false
      L19_3 = 1
      L20_3 = true
      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
      L15_3 = GetEntityCoords
      L16_3 = L5_2
      L15_3 = L15_3(L16_3)
      L16_3 = GetEntityRotation
      L17_3 = L5_2
      L16_3 = L16_3(L17_3)
      L17_3 = GetEntityForwardVector
      L18_3 = L5_2
      L17_3 = L17_3(L18_3)
      L18_3 = table
      L18_3 = L18_3.unpack
      L19_3 = L17_3 * 1.0
      L19_3 = L15_3 + L19_3
      L18_3, L19_3, L20_3 = L18_3(L19_3)
      L21_3 = DrawSpotLightWithShadow
      L22_3 = L18_3
      L23_3 = L19_3
      L24_3 = L20_3 + 2.5
      L25_3 = L16_3.x
      L26_3 = L16_3.y
      L27_3 = L16_3.z
      L27_3 = L27_3 - 180.0
      L28_3 = 255
      L29_3 = 255
      L30_3 = 190
      L31_3 = 17.0
      L32_3 = 0.15
      L33_3 = 5.0
      L34_3 = 150.0
      L35_3 = 10.0
      L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
      L21_3 = table
      L21_3 = L21_3.unpack
      L22_3 = L17_3 * -1.0
      L22_3 = L15_3 + L22_3
      L21_3, L22_3, L23_3 = L21_3(L22_3)
      L24_3 = DrawSpotLightWithShadow
      L25_3 = L21_3
      L26_3 = L22_3
      L27_3 = L23_3 + 2.5
      L28_3 = L16_3.x
      L29_3 = L16_3.y
      L30_3 = L16_3.z
      L30_3 = L30_3 - 180.0
      L31_3 = 255
      L32_3 = 255
      L33_3 = 190
      L34_3 = 17.0
      L35_3 = 0.15
      L36_3 = 5.0
      L37_3 = 150.0
      L38_3 = 10.0
      L24_3(L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
    end
    L4_3 = L1_2
    L5_3 = PreviewAnimalToken
    if L4_3 ~= L5_3 then
      L4_3 = DoesEntityExist
      L5_3 = L5_2
      L4_3 = L4_3(L5_3)
      if L4_3 then
        L4_3 = DeleteEntitySafe
        L5_3 = L5_2
        L4_3(L5_3)
      end
    end
  end
  L6_2(L7_2)
end
ShowAnimalPreview = L47_1
L47_1 = Animal
function L48_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = OnPlayerGoOnHorseCustom
  L0_2()
  L0_2 = ResetCavalloMove
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L0_2(L1_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = FreezeEntityPosition
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetPedAlertness
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = SetPedCanEvasiveDive
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetEntityAsMissionEntity
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ResetPedMovementClipset
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = 0.0
  L0_2(L1_2, L2_2)
  L0_2 = SetAnimalMood
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = SetPedFleeAttributes
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = 0
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetPedDiesWhenInjured
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetBlockingOfNonTemporaryEvents
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetPedCanBeTargetted
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = GetEntityRotation
  L1_2 = Animal
  L1_2 = L1_2.Handle
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.z
  ROTCavallo = L0_2
  L0_2 = ipairs
  L1_2 = AnimalsModel
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = Animal
    L7_2 = L7_2.Handle
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = modl
      L7_2 = GetHashKey
      L8_2 = L5_2.model
      L7_2 = L7_2(L8_2)
      if L6_2 == L7_2 then
        L6_2 = NetworkGetPlayerIndexFromPed
        L7_2 = Animal
        L7_2 = L7_2.Handle
        L6_2 = L6_2(L7_2)
        if -1 == L6_2 then
          L6_2 = Animal
          L6_2.InControl = true
        end
        L6_2 = L5_2.hidePG
        if nil ~= L6_2 then
          L6_2 = L5_2.hidePG
          if L6_2 then
            Invisibile = true
            L6_2 = HideFunction
            L7_2 = false
            L6_2(L7_2)
          end
        end
        L6_2 = L5_2.speedrateShift
        if nil ~= L6_2 then
          L6_2 = L5_2.speedrateShift
          if L6_2 > 0 then
            L6_2 = L5_2.speedrateShift
            mySpeedRate = L6_2
          end
        end
        L6_2 = L5_2.fastAnim
        if nil ~= L6_2 then
          L6_2 = L5_2.fastAnim
          if L6_2 >= 0 then
            L6_2 = L5_2.fastAnim
            FastAnim = L6_2
        end
        else
          FastAnim = 0.0
        end
        L6_2 = L5_2.customRunAnim
        if nil ~= L6_2 then
          L6_2 = {}
          L7_2 = L5_2.customRunAnim
          L7_2 = L7_2[1]
          L6_2.a = L7_2
          L7_2 = L5_2.customRunAnim
          L7_2 = L7_2[2]
          L6_2.b = L7_2
          runAnim = L6_2
        end
        L6_2 = L5_2.customBaseAnim
        if nil ~= L6_2 then
          L6_2 = {}
          L7_2 = L5_2.customBaseAnim
          L7_2 = L7_2[1]
          L6_2.a = L7_2
          L7_2 = L5_2.customBaseAnim
          L7_2 = L7_2[2]
          L6_2.b = L7_2
          animBaseAnimale = L6_2
        end
        L6_2 = L5_2.orbitActive
        if nil ~= L6_2 then
          CamActiveLocal = true
        else
          CamActiveLocal = false
        end
        L6_2 = GetPedBoneIndex
        L7_2 = Animal
        L7_2 = L7_2.Handle
        L8_2 = 57597
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = AttachEntityToEntity
        L8_2 = PlayerPedId
        L8_2 = L8_2()
        L9_2 = Animal
        L9_2 = L9_2.Handle
        L10_2 = L6_2
        L11_2 = L5_2.att
        L11_2 = L11_2[1]
        L12_2 = L5_2.att
        L12_2 = L12_2[2]
        L13_2 = L5_2.att
        L13_2 = L13_2[3]
        L14_2 = L5_2.att
        L14_2 = L14_2[4]
        L15_2 = L5_2.att
        L15_2 = L15_2[5]
        L16_2 = L5_2.att
        L16_2 = L16_2[6]
        L17_2 = false
        L18_2 = true
        L19_2 = false
        L20_2 = true
        L21_2 = 2
        L22_2 = true
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L7_2 = FreezeEntityPosition
        L8_2 = Animal
        L8_2 = L8_2.Handle
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = FreezeEntityPosition
        L8_2 = PlayerPedId
        L8_2 = L8_2()
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = LoopHumanoid
        L8_2 = Animal
        L8_2 = L8_2.Handle
        L7_2(L8_2)
        break
      end
    end
  end
end
L47_1.AttachHumanoid = L48_1
