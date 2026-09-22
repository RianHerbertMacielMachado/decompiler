local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
L1_1 = false
L2_1 = "prop_cs_burger_01"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_ridehorse
  L3_2 = L2_2
  L2_2 = L2_2.ShowInstructionalButtonsTimed
  L4_2 = A0_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = {}
  end
  L2_2(L3_2, L4_2, L5_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = vector3
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = -L4_2
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = GetGameplayCamCoord
  L3_2 = L3_2()
  L4_2 = L4_1
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * A0_2
  L5_2 = L3_2 + L5_2
  if not A1_2 then
    A1_2 = -1
  end
  L6_2 = StartShapeTestRay
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = L5_2.x
  L11_2 = L5_2.y
  L12_2 = L5_2.z
  L13_2 = A1_2
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = 7
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = GetShapeTestResult
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L12_2 = 1 == L8_2
  L13_2 = L9_2
  L14_2 = L11_2
  return L12_2, L13_2, L14_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
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
      L3_2 = nil
      return L3_2
    end
  end
  return L1_2
end
function L7_1()
  local L0_2, L1_2
  L0_2 = RopeAreTexturesLoaded
  L0_2 = L0_2()
  if not L0_2 then
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
  end
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityVisible
      L2_2 = A0_2
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityAlpha
      L2_2 = A0_2
      L3_2 = 0
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = SetEntityCollision
      L2_2 = A0_2
      L3_2 = false
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = FreezeEntityPosition
      L2_2 = A0_2
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = SetEntityAsMissionEntity
      L2_2 = A0_2
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L6_1
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = CreateObject
  L3_2 = L1_2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L2_2 and 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_28::
  L3_2 = L8_1
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsEntityAPed
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = IsEntityAVehicle
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          goto lbl_37
        end
      end
      L2_2 = NetworkGetEntityIsNetworked
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = NetworkGetNetworkIdFromEntity
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if L2_2 and 0 ~= L2_2 then
          L3_2 = {}
          L3_2.type = "net"
          L3_2.net = L2_2
          return L3_2
        end
      end
    end
  end
  ::lbl_37::
  L2_2 = {}
  L2_2.type = "coord"
  L3_2 = A1_2.x
  L2_2.x = L3_2
  L3_2 = A1_2.y
  L2_2.y = L3_2
  L3_2 = A1_2.z
  L2_2.z = L3_2
  return L2_2
end
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L0_2 = L1_1
  if L0_2 then
    return
  end
  L0_2 = L7_1
  L0_2()
  L0_2 = true
  L1_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = 1
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = 15.0
  L7_2 = L3_1
  L8_2 = "Select the first point."
  L9_2 = {}
  L10_2 = 38
  L9_2[1] = L10_2
  L7_2(L8_2, L9_2)
  while true do
    L7_2 = L1_1
    if not L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L0_2 = L7_2
    L7_2 = L5_1
    L8_2 = 25.0
    L9_2 = -1
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    if L7_2 and L8_2 then
      L10_2 = DrawMarker
      L11_2 = 28
      L12_2 = L8_2.x
      L13_2 = L8_2.y
      L14_2 = L8_2.z
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = 0.0
      L21_2 = 0.15
      L22_2 = 0.15
      L23_2 = 0.15
      L24_2 = 248
      L25_2 = 156
      L26_2 = 255
      L27_2 = 255
      L28_2 = false
      L29_2 = false
      L30_2 = 2
      L31_2 = false
      L32_2 = nil
      L33_2 = nil
      L34_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    end
    L10_2 = IsControlJustReleased
    L11_2 = 0
    L12_2 = 38
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      if not L7_2 or not L8_2 then
        L10_2 = L3_1
        L11_2 = "No valid point."
        L10_2(L11_2)
      else
        L10_2 = GetEntityCoords
        L11_2 = L0_2
        L10_2 = L10_2(L11_2)
        L10_2 = L10_2 - L8_2
        L10_2 = #L10_2
        if L6_2 < L10_2 then
          L10_2 = L3_1
          L11_2 = "Too far."
          L10_2(L11_2)
        elseif 1 == L1_2 then
          L2_2 = L9_2
          L4_2 = L8_2
          L1_2 = 2
          L10_2 = L3_1
          L11_2 = "First point selected, now select the second."
          L12_2 = {}
          L13_2 = 38
          L12_2[1] = L13_2
          L10_2(L11_2, L12_2)
        elseif 2 == L1_2 then
          L3_2 = L9_2
          L5_2 = L8_2
          if not L4_2 or not L5_2 then
            L10_2 = L3_1
            L11_2 = "Coord not valid."
            L10_2(L11_2)
          else
            L10_2 = L10_1
            L11_2 = L2_2
            L12_2 = L4_2
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = L10_1
            L12_2 = L3_2
            L13_2 = L5_2
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = TriggerServerEvent
            L13_2 = "rope:createRope"
            L14_2 = L10_2
            L15_2 = L11_2
            L12_2(L13_2, L14_2, L15_2)
            L12_2 = false
            L1_1 = L12_2
            break
          end
        end
      end
    else
      L10_2 = IsControlJustReleased
      L11_2 = 0
      L12_2 = 73
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = IsControlJustReleased
        L11_2 = 0
        L12_2 = 24
        L10_2 = L10_2(L11_2, L12_2)
        if not L10_2 then
          L10_2 = IsControlJustReleased
          L11_2 = 0
          L12_2 = 25
          L10_2 = L10_2(L11_2, L12_2)
          if not L10_2 then
            L10_2 = IsControlJustReleased
            L11_2 = 0
            L12_2 = 194
            L10_2 = L10_2(L11_2, L12_2)
            if not L10_2 then
              L10_2 = IsPedFatallyInjured
              L11_2 = L0_2
              L10_2 = L10_2(L11_2)
              if not L10_2 then
                L10_2 = IsPedRagdoll
                L11_2 = L0_2
                L10_2 = L10_2(L11_2)
                if not L10_2 then
                  goto lbl_168
                end
              end
            end
          end
        end
      end
      L10_2 = false
      L1_1 = L10_2
      break
    end
    ::lbl_168::
  end
end
rope = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = select
  L2_2 = 1
  L3_2 = GetModelDimensions
  L4_2 = GetEntityModel
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = A0_2
  L4_2 = 0.0
  L5_2 = L1_2.y
  L6_2 = 0.0
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetModelDimensions
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = A0_2
  L5_2 = 0.0
  L6_2 = L2_2.y
  L7_2 = 0.0
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = 0
    return L2_2, L3_2
  end
  L2_2 = IsEntityAPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityBoneIndexByName
    L3_2 = A0_2
    L4_2 = "IK_R_Foot"
    L2_2 = L2_2(L3_2, L4_2)
    if -1 == L2_2 then
      L2_2 = 0
    end
    L3_2 = GetWorldPositionOfEntityBone
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2 or L4_2
    if not L3_2 then
      L4_2 = GetEntityCoords
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
    end
    L5_2 = L2_2
    return L4_2, L5_2
  end
  L2_2 = IsEntityAVehicle
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityBoneIndexByName
    L3_2 = A0_2
    if A1_2 then
      L4_2 = "chassis_rear"
      if L4_2 then
        goto lbl_49
      end
    end
    L4_2 = "chassis_dummy"
    ::lbl_49::
    L2_2 = L2_2(L3_2, L4_2)
    if -1 == L2_2 then
      L2_2 = 0
    end
    if A1_2 then
      L3_2 = L11_1
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_63
      end
    end
    L3_2 = L12_1
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    ::lbl_63::
    L4_2 = L3_2
    L5_2 = L2_2
    return L4_2, L5_2
  end
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  return L2_2, L3_2
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L7_1
  L2_2()
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2 - L3_2
  L4_2 = #L4_2
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L4_2
  L7_2 = 1.5
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = AddRope
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = L5_2
  L14_2 = 6
  L15_2 = L5_2
  L16_2 = 0.5
  L17_2 = false
  L18_2 = false
  L19_2 = true
  L20_2 = 1.0
  L21_2 = false
  L22_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  if not L6_2 then
    L7_2 = nil
    return L7_2
  end
  L7_2 = L13_1
  L8_2 = A0_2
  L9_2 = true
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L9_2 = L13_1
  L10_2 = A1_2
  L11_2 = false
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L11_2 = AttachEntitiesToRope
  L12_2 = L6_2
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = L7_2.x
  L16_2 = L7_2.y
  L17_2 = L7_2.z
  L18_2 = L9_2.x
  L19_2 = L9_2.y
  L20_2 = L9_2.z
  L21_2 = L5_2
  L22_2 = 0.5
  L23_2 = 0.5
  L24_2 = L8_2
  L25_2 = L10_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L11_2 = ActivatePhysics
  L12_2 = L6_2
  L11_2(L12_2)
  L11_2 = StartRopeUnwindingFront
  L12_2 = L6_2
  L11_2(L12_2)
  L11_2 = {}
  L11_2.ropeObject = L6_2
  L11_2.ent1 = A0_2
  L11_2.ent2 = A1_2
  return L11_2
end
CreateRopeBetweenEntities = L14_1
L14_1 = RegisterNetEvent
L15_1 = "rope:createRopeSync"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2.type
  if "net" == L4_2 then
    L4_2 = NetworkGetEntityFromNetworkId
    L5_2 = A0_2.net
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  else
    L4_2 = L9_1
    L5_2 = vector3
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L2_2 = L4_2
  end
  L4_2 = A1_2.type
  if "net" == L4_2 then
    L4_2 = NetworkGetEntityFromNetworkId
    L5_2 = A1_2.net
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = L9_1
    L5_2 = vector3
    L6_2 = A1_2.x
    L7_2 = A1_2.y
    L8_2 = A1_2.z
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2 = L4_2
  end
  if L2_2 and 0 ~= L2_2 then
    L4_2 = DoesEntityExist
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_47
    end
  end
  L4_2 = print
  L5_2 = "[ROPE] ent1 non valida"
  L4_2(L5_2)
  do return end
  ::lbl_47::
  if L3_2 and 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_60
    end
  end
  L4_2 = print
  L5_2 = "[ROPE] ent2 non valida"
  L4_2(L5_2)
  do return end
  ::lbl_60::
  L4_2 = CreateRopeBetweenEntities
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L0_1
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = print
    L6_2 = "[ROPE] creazione corda fallita"
    L5_2(L6_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "delcorde"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ropeObject
    if L6_2 then
      L6_2 = DeleteRope
      L7_2 = L5_2.ropeObject
      L6_2(L7_2)
    end
    L6_2 = L5_2.ent1
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.ent1
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = IsEntityAPed
        L7_2 = L5_2.ent1
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = IsEntityAVehicle
          L7_2 = L5_2.ent1
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = DeleteEntity
            L7_2 = L5_2.ent1
            L6_2(L7_2)
          end
        end
      end
    end
    L6_2 = L5_2.ent2
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.ent2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = IsEntityAPed
        L7_2 = L5_2.ent2
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = IsEntityAVehicle
          L7_2 = L5_2.ent2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = DeleteEntity
            L7_2 = L5_2.ent2
            L6_2(L7_2)
          end
        end
      end
    end
  end
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "rope:deleteAllRopes"
  L0_2(L1_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "delcorda"
function L16_1()
  local L0_2, L1_2
  L0_2 = exports
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L0_2 = L0_2[L1_2]
  L1_2 = L0_2
  L0_2 = L0_2.delcorde
  L0_2(L1_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "rope:deleteAllRopes"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ropeObject
    if L6_2 then
      L6_2 = DeleteRope
      L7_2 = L5_2.ropeObject
      L6_2(L7_2)
    end
    L6_2 = L5_2.ent1
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.ent1
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = IsEntityAPed
        L7_2 = L5_2.ent1
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = IsEntityAVehicle
          L7_2 = L5_2.ent1
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = DeleteEntity
            L7_2 = L5_2.ent1
            L6_2(L7_2)
          end
        end
      end
    end
    L6_2 = L5_2.ent2
    if L6_2 then
      L6_2 = DoesEntityExist
      L7_2 = L5_2.ent2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = IsEntityAPed
        L7_2 = L5_2.ent2
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = IsEntityAVehicle
          L7_2 = L5_2.ent2
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = DeleteEntity
            L7_2 = L5_2.ent2
            L6_2(L7_2)
          end
        end
      end
    end
  end
  L0_2 = {}
  L0_1 = L0_2
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "rope:deleteRope"
function L16_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = DeleteRope
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L14_1(L15_1, L16_1)
