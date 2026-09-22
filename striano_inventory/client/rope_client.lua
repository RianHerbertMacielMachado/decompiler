local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = nil
L1_1 = false
L2_1 = nil
L3_1 = false
L4_1 = true
L5_1 = nil
L6_1 = false
L7_1 = exports
L8_1 = "inCordaSlide"
function L9_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = SetPedHeadBlendData
  L3_2 = A1_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L6_2 <= 19 then
      L8_2 = SetPedFaceFeature
      L9_2 = A1_2
      L10_2 = L6_2
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    elseif 20 == L6_2 then
      L8_2 = SetPedHairColor
      L9_2 = A1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = SetPedHeadBlendData
      L9_2 = A1_2
      L10_2 = A0_2[L6_2]
      L10_2 = L10_2[1]
      L11_2 = A0_2[L6_2]
      L11_2 = L11_2[2]
      L12_2 = A0_2[L6_2]
      L12_2 = L12_2[3]
      L13_2 = A0_2[L6_2]
      L13_2 = L13_2[4]
      L14_2 = A0_2[L6_2]
      L14_2 = L14_2[5]
      L15_2 = A0_2[L6_2]
      L15_2 = L15_2[6]
      L16_2 = A0_2[L6_2]
      L16_2 = L16_2[7]
      L17_2 = A0_2[L6_2]
      L17_2 = L17_2[8]
      L18_2 = A0_2[L6_2]
      L18_2 = L18_2[9]
      L19_2 = false
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    end
  end
end
setSkinStriano = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = 2830157900151113168
  L3_2 = A0_2
  L4_2 = Citizen
  L4_2 = L4_2.PointerValueIntInitialized
  L5_2 = 0
  L4_2 = L4_2(L5_2)
  L5_2 = Citizen
  L5_2 = L5_2.PointerValueIntInitialized
  L6_2 = 0
  L5_2 = L5_2(L6_2)
  L6_2 = Citizen
  L6_2 = L6_2.PointerValueIntInitialized
  L7_2 = 0
  L6_2 = L6_2(L7_2)
  L7_2 = Citizen
  L7_2 = L7_2.PointerValueIntInitialized
  L8_2 = 0
  L7_2 = L7_2(L8_2)
  L8_2 = Citizen
  L8_2 = L8_2.PointerValueIntInitialized
  L9_2 = 0
  L8_2 = L8_2(L9_2)
  L9_2 = Citizen
  L9_2 = L9_2.PointerValueIntInitialized
  L10_2 = 0
  L9_2 = L9_2(L10_2)
  L10_2 = Citizen
  L10_2 = L10_2.PointerValueFloatInitialized
  L11_2 = 0
  L10_2 = L10_2(L11_2)
  L11_2 = Citizen
  L11_2 = L11_2.PointerValueFloatInitialized
  L12_2 = 0
  L11_2 = L11_2(L12_2)
  L12_2 = Citizen
  L12_2 = L12_2.PointerValueFloatInitialized
  L13_2 = 0
  L12_2, L13_2 = L12_2(L13_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
GetHeadBlendData = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = 21
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if L5_2 <= 19 then
      L6_2 = GetPedFaceFeature
      L7_2 = L1_2
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L0_2[L5_2] = L6_2
    elseif 20 == L5_2 then
      L6_2 = GetPedHairColor
      L7_2 = L1_2
      L6_2 = L6_2(L7_2)
      L0_2[L5_2] = L6_2
    else
      L6_2 = {}
      L7_2 = GetHeadBlendData
      L8_2 = L1_2
      L7_2, L8_2 = L7_2(L8_2)
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L0_2[L5_2] = L6_2
    end
  end
  return L0_2
end
GetMySkin = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L5_2 = L5_2 + 0.9
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = L2_2 * 2.5
  L4_2 = L1_2 + L4_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = CastRayPointToPoint
  L8_2 = L1_2.x
  L9_2 = L1_2.y
  L10_2 = L1_2.z
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L14_2 = 1
  L15_2 = L0_2
  L16_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetRaycastResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  if 1 == L9_2 then
    L13_2 = IsEntityPositionFrozen
    L14_2 = L0_2
    L13_2 = L13_2(L14_2)
    if not L13_2 then
      L13_2 = L0_1
      if L13_2 then
        L13_2 = SetEntityCoords
        L14_2 = L0_1
        L15_2 = L10_2
        L13_2(L14_2, L15_2)
        L13_2 = SetEntityRotation
        L14_2 = L0_1
        L15_2 = L11_2
        L13_2(L14_2, L15_2)
      end
      L13_2 = L9_2
      L14_2 = L10_2
      return L13_2, L14_2
  end
  else
    L13_2 = SetEntityCoords
    L14_2 = L0_1
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = nil
    return L13_2
  end
end
CastFront = L7_1
L7_1 = AddEventHandler
L8_1 = "onResourceStop"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L0_1
    if L1_2 then
      L1_2 = DeleteEntity
      L2_2 = L0_1
      L1_2(L2_2)
    end
    L1_2 = EvilPed
    if L1_2 then
      L1_2 = DeletePed
      L2_2 = EvilPed
      L1_2(L2_2)
    end
    L1_2 = NetworkSetEntityInvisibleToNetwork
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L5_1
    if L1_2 then
      L1_2 = DeletePed
      L2_2 = L5_1
      L1_2(L2_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = nil
L8_1 = nil
L9_1 = 0.1
L10_1 = 0
L11_1 = 0.0
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L3_1
    if not L0_2 then
      goto lbl_11
    end
  end
  L0_2 = print
  L1_2 = "Blocco la corda."
  L0_2(L1_2)
  do return end
  ::lbl_11::
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = L2_2 * 0.4
  L4_2 = L1_2 + L4_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L1_2 = L6_2
  L6_2 = 300.0
  L7_2 = CastRayPointToPoint
  L8_2 = L1_2.x
  L9_2 = L1_2.y
  L10_2 = L1_2.z
  L11_2 = L1_2.x
  L12_2 = L1_2.y
  L13_2 = L1_2.z
  L13_2 = L13_2 - L6_2
  L14_2 = 1
  L15_2 = L0_2
  L16_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetRaycastResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L13_2 = IsEntityPlayingAnim
  L14_2 = L0_2
  L15_2 = "anim@heists@narcotics@trash"
  L16_2 = "idle"
  L17_2 = 3
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  if not L13_2 then
    L13_2 = ExecuteCommand
    L14_2 = "e cc"
    L13_2(L14_2)
    L13_2 = ExecuteCommand
    L14_2 = "e portacorda"
    L13_2(L14_2)
  end
  L13_2 = GetPedMovementClipset
  L14_2 = L0_2
  L13_2 = L13_2(L14_2)
  if "clipset@anim_heist@hs3f@ig1_rappel@male" ~= L13_2 then
    L13_2 = L1_2 - L10_2
    L13_2 = #L13_2
    if L13_2 > 9.0 then
      L13_2 = IsEntityPositionFrozen
      L14_2 = L0_2
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L13_2 = IsEntityInAir
        L14_2 = L0_2
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = IsPedFalling
          L14_2 = L0_2
          L13_2 = L13_2(L14_2)
          if not L13_2 then
            if 1 == L9_2 then
              L13_2 = GetEntityCoords
              L14_2 = L0_2
              L13_2 = L13_2(L14_2)
              L14_2 = table
              L14_2 = L14_2.unpack
              L15_2 = L9_1
              L15_2 = L2_2 * L15_2
              L15_2 = L13_2 + L15_2
              L14_2, L15_2, L16_2 = L14_2(L15_2)
              L17_2 = CastRayPointToPoint
              L18_2 = L14_2
              L19_2 = L15_2
              L20_2 = L13_2.z
              L21_2 = L14_2
              L22_2 = L15_2
              L23_2 = L13_2.z
              L23_2 = L23_2 - 2.0
              L24_2 = 1
              L25_2 = L0_2
              L26_2 = 0
              L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
              L18_2 = GetRaycastResult
              L19_2 = L17_2
              L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2(L19_2)
              if 1 == L19_2 then
                L23_2 = GetEntitySpeed
                L24_2 = L0_2
                L23_2 = L23_2(L24_2)
                L24_2 = 0.05
                if L23_2 < L24_2 then
                  L23_2 = L7_1
                  if nil == L23_2 then
                    L23_2 = L9_1
                    L23_2 = L23_2 + 0.05
                    L9_1 = L23_2
                    L23_2 = L20_2.z
                    L8_1 = L23_2
                  end
                  L23_2 = DrawMarker
                  L24_2 = 1
                  L25_2 = L10_2
                  L26_2 = 0.0
                  L27_2 = 0.0
                  L28_2 = 0.0
                  L29_2 = 0
                  L30_2 = 0.0
                  L31_2 = 0.0
                  L32_2 = 0.05
                  L33_2 = 0.05
                  L34_2 = L1_2 - L10_2
                  L34_2 = #L34_2
                  L34_2 = L34_2 + 2.0
                  L35_2 = 255
                  L36_2 = 0
                  L37_2 = 110
                  L38_2 = 255
                  L39_2 = false
                  L40_2 = true
                  L41_2 = 2
                  L42_2 = false
                  L43_2 = false
                  L44_2 = false
                  L45_2 = false
                  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  L23_2 = L1_2 - L10_2
                  L23_2 = #L23_2
                  L23_2 = L23_2 + 2
                  if L23_2 > 30 then
                    L23_2 = DrawMarker
                    L24_2 = 23
                    L25_2 = vector3
                    L26_2 = L10_2.x
                    L27_2 = L10_2.y
                    L28_2 = L10_2.z
                    L28_2 = L28_2 + 0.1
                    L25_2 = L25_2(L26_2, L27_2, L28_2)
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0
                    L30_2 = 0.0
                    L31_2 = 0.0
                    L32_2 = 1.0
                    L33_2 = 1.0
                    L34_2 = 1.0
                    L35_2 = 255
                    L36_2 = 0
                    L37_2 = 110
                    L38_2 = 255
                    L39_2 = false
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  else
                    L23_2 = DrawMarker
                    L24_2 = 23
                    L25_2 = vector3
                    L26_2 = L10_2.x
                    L27_2 = L10_2.y
                    L28_2 = L10_2.z
                    L28_2 = L28_2 + 0.1
                    L25_2 = L25_2(L26_2, L27_2, L28_2)
                    L26_2 = 0.0
                    L27_2 = 0.0
                    L28_2 = 0.0
                    L29_2 = 0
                    L30_2 = 0.0
                    L31_2 = 0.0
                    L32_2 = 0.5
                    L33_2 = 0.5
                    L34_2 = 0.5
                    L35_2 = 255
                    L36_2 = 0
                    L37_2 = 110
                    L38_2 = 255
                    L39_2 = false
                    L40_2 = true
                    L41_2 = 2
                    L42_2 = false
                    L43_2 = false
                    L44_2 = false
                    L45_2 = false
                    L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                  end
                else
                  L23_2 = nil
                  L7_1 = L23_2
                  L23_2 = 0.1
                  L9_1 = L23_2
                  L23_2 = nil
                  L8_1 = L23_2
                end
              else
                L23_2 = L7_1
                if nil == L23_2 then
                  L23_2 = L8_1
                  if nil ~= L23_2 then
                    L23_2 = L9_1
                    L23_2 = L23_2 - 0.1
                    L9_1 = L23_2
                    L23_2 = vector3
                    L24_2 = L14_2
                    L25_2 = L15_2
                    L26_2 = L8_1
                    L23_2 = L23_2(L24_2, L25_2, L26_2)
                    L7_1 = L23_2
                    L23_2 = nil
                    L8_1 = L23_2
                  end
                end
              end
            end
            L13_2 = IsControlJustPressed
            L14_2 = 0
            L15_2 = 38
            L13_2 = L13_2(L14_2, L15_2)
            if not L13_2 or 1 ~= L9_2 then
              goto lbl_946
            end
            L13_2 = L7_1
            if not L13_2 then
              goto lbl_946
            end
            L13_2 = IsPedOnFoot
            L14_2 = L0_2
            L13_2 = L13_2(L14_2)
            if not L13_2 then
              goto lbl_946
            end
            L13_2 = GetEntitySpeed
            L14_2 = L0_2
            L13_2 = L13_2(L14_2)
            L14_2 = 0.05
            if not (L13_2 <= L14_2) then
              goto lbl_946
            end
            L13_2 = IsPedRagdoll
            L14_2 = L0_2
            L13_2 = L13_2(L14_2)
            if L13_2 then
              goto lbl_946
            end
            L13_2 = true
            L3_1 = L13_2
            L13_2 = false
            L1_1 = L13_2
            L13_2 = ExecuteCommand
            L14_2 = "e c"
            L13_2(L14_2)
            L13_2 = ExecuteCommand
            L14_2 = "e cc"
            L13_2(L14_2)
            L13_2 = ClearPedTasks
            L14_2 = L0_2
            L13_2(L14_2)
            L13_2 = ExecuteCommand
            L14_2 = "e kneel3"
            L13_2(L14_2)
            L13_2 = Wait
            L14_2 = 100
            L13_2(L14_2)
            L13_2 = ExecuteCommand
            L14_2 = "e lavora"
            L13_2(L14_2)
            L13_2 = Wait
            L14_2 = 500
            L13_2(L14_2)
            L13_2 = GetEntityCoords
            L14_2 = L0_2
            L13_2 = L13_2(L14_2)
            L14_2 = L13_2
            L15_2 = GetEntityHeading
            L16_2 = L0_2
            L15_2 = L15_2(L16_2)
            L15_2 = L15_2 - 180.0
            L11_1 = L15_2
            L15_2 = table
            L15_2 = L15_2.unpack
            L16_2 = L7_1
            L17_2 = L2_2 * 0.75
            L16_2 = L16_2 + L17_2
            L15_2, L16_2, L17_2 = L15_2(L16_2)
            L18_2 = vector3
            L19_2 = L15_2
            L20_2 = L16_2
            L21_2 = L17_2
            L18_2 = L18_2(L19_2, L20_2, L21_2)
            posPlayer = L18_2
            L18_2 = {}
            L19_2 = L7_1
            L18_2.a = L19_2
            L19_2 = L11_1
            L19_2 = -L19_2
            L18_2.b = L19_2
            L19_2 = L11_1
            L18_2.c = L19_2
            L19_2 = L11_1
            L19_2 = -L19_2
            L18_2.d = L19_2
            L19_2 = L1_2 - L10_2
            L19_2 = #L19_2
            L19_2 = L19_2 - 3.5
            L18_2.e = L19_2
            L18_2.f = 7
            L19_2 = L1_2 - L10_2
            L19_2 = #L19_2
            L19_2 = L19_2 - 3.5
            L18_2.g = L19_2
            L19_2 = L1_2 - L10_2
            L19_2 = #L19_2
            L19_2 = L19_2 - 3.5
            L18_2.h = L19_2
            L18_2.i = 1.5
            L18_2.l = false
            L18_2.m = false
            L18_2.n = true
            L18_2.o = 10.0
            L18_2.p = true
            L18_2.q = 0
            L19_2 = GetMySkin
            L19_2 = L19_2()
            L20_2 = TriggerServerEvent
            L21_2 = "CreaCordaAll"
            L22_2 = L10_2.z
            L23_2 = GetPlayerServerId
            L24_2 = PlayerId
            L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L24_2()
            L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
            L24_2 = L18_2
            L25_2 = L19_2
            L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
            while true do
              L20_2 = L2_1
              if nil ~= L20_2 then
                break
              end
              L20_2 = Wait
              L21_2 = 0
              L20_2(L21_2)
            end
            L20_2 = N_0xa1ae736541b0fca3
            L21_2 = L2_1
            L22_2 = true
            L20_2(L21_2, L22_2)
            L20_2 = PinRopeVertex
            L21_2 = L2_1
            L22_2 = GetRopeVertexCount
            L23_2 = L2_1
            L22_2 = L22_2(L23_2)
            L22_2 = L22_2 - 1
            L23_2 = newmuro
            L20_2(L21_2, L22_2, L23_2)
            L20_2 = RopeSetUpdateOrder
            L21_2 = L2_1
            L22_2 = 0
            L20_2(L21_2, L22_2)
            L20_2 = Wait
            L21_2 = 25
            L20_2(L21_2)
            L20_2 = L10_2
            L21_2 = L10_2.z
            L21_2 = L21_2 - 5.0
            L22_2 = false
            repeat
              L23_2 = Wait
              L24_2 = 0
              L23_2(L24_2)
              L23_2 = SetEntityHeading
              L24_2 = L0_2
              L25_2 = L11_1
              L23_2(L24_2, L25_2)
              L23_2 = DrawMarker
              L24_2 = 0
              L25_2 = vector3
              L26_2 = GetEntityCoords
              L27_2 = L0_2
              L26_2 = L26_2(L27_2)
              L26_2 = L26_2.x
              L27_2 = GetEntityCoords
              L28_2 = L0_2
              L27_2 = L27_2(L28_2)
              L27_2 = L27_2.y
              L28_2 = L20_2.z
              L28_2 = L28_2 + 1.0
              L25_2 = L25_2(L26_2, L27_2, L28_2)
              L26_2 = 0.0
              L27_2 = 0.0
              L28_2 = 0.0
              L29_2 = 0
              L30_2 = 0.0
              L31_2 = 0.0
              L32_2 = 0.3
              L33_2 = 0.3
              L34_2 = 1.0
              L35_2 = 255
              L36_2 = 0
              L37_2 = 110
              L38_2 = 255
              L39_2 = false
              L40_2 = true
              L41_2 = 2
              L42_2 = false
              L43_2 = false
              L44_2 = false
              L45_2 = false
              L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
              L23_2 = CastFront
              L23_2, L24_2 = L23_2()
              if 1 == L23_2 then
                L25_2 = GetEntityCoords
                L26_2 = L0_1
                L25_2 = L25_2(L26_2)
                L25_2 = L25_2.z
                if 0 ~= L25_2 then
                  L25_2 = GetEntityCoords
                  L26_2 = L0_2
                  L25_2 = L25_2(L26_2)
                  L26_2 = GetEntityCoords
                  L27_2 = L0_1
                  L26_2 = L26_2(L27_2)
                  L25_2 = L25_2 - L26_2
                  L25_2 = #L25_2
                  if L25_2 <= 1.0 then
                    L25_2 = GetEntityForwardVector
                    L26_2 = L0_2
                    L25_2 = L25_2(L26_2)
                    L26_2 = table
                    L26_2 = L26_2.unpack
                    L27_2 = GetEntityCoords
                    L28_2 = L0_2
                    L27_2 = L27_2(L28_2)
                    L28_2 = L25_2 * 0.65
                    L28_2 = L28_2 * -1
                    L27_2 = L27_2 + L28_2
                    L26_2, L27_2, L28_2 = L26_2(L27_2)
                    L29_2 = vector3
                    L30_2 = L26_2
                    L31_2 = L27_2
                    L32_2 = GetEntityCoords
                    L33_2 = L0_2
                    L32_2 = L32_2(L33_2)
                    L32_2 = L32_2.z
                    L32_2 = L32_2 - 1
                    L29_2 = L29_2(L30_2, L31_2, L32_2)
                    L30_2 = SetEntityCoords
                    L31_2 = L0_2
                    L32_2 = L29_2
                    L30_2(L31_2, L32_2)
                    L30_2 = TaskRappelDownWall
                    L31_2 = L0_2
                    L32_2 = L7_1
                    L33_2 = L7_1
                    L34_2 = L21_2
                    L35_2 = L2_1
                    L36_2 = "clipset@anim_heist@hs3f@ig1_rappel@male"
                    L37_2 = 1
                    L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
                    L30_2 = N_0xa1ae736541b0fca3
                    L31_2 = L2_1
                    L32_2 = true
                    L30_2(L31_2, L32_2)
                    L30_2 = PinRopeVertex
                    L31_2 = L2_1
                    L32_2 = GetRopeVertexCount
                    L33_2 = L2_1
                    L32_2 = L32_2(L33_2)
                    L32_2 = L32_2 - 1
                    L33_2 = L29_2
                    L30_2(L31_2, L32_2, L33_2)
                    L30_2 = RopeSetUpdateOrder
                    L31_2 = L2_1
                    L32_2 = 0
                    L30_2(L31_2, L32_2)
                  end
                  L25_2 = GetEntityCoords
                  L26_2 = L0_2
                  L25_2 = L25_2(L26_2)
                  L25_2 = L25_2 - L24_2
                  L25_2 = #L25_2
                  L26_2 = 1.1
                  if L25_2 > L26_2 then
                    L25_2 = vector2
                    L26_2 = L7_1.x
                    L27_2 = L7_1.y
                    L25_2 = L25_2(L26_2, L27_2)
                    L26_2 = vector2
                    L27_2 = GetEntityCoords
                    L28_2 = L0_2
                    L27_2 = L27_2(L28_2)
                    L27_2 = L27_2.x
                    L28_2 = GetEntityCoords
                    L29_2 = L0_2
                    L28_2 = L28_2(L29_2)
                    L28_2 = L28_2.y
                    L26_2 = L26_2(L27_2, L28_2)
                    L25_2 = L25_2 - L26_2
                    L25_2 = #L25_2
                    L26_2 = 0.2
                    if L25_2 <= L26_2 then
                      L25_2 = GetEntityForwardVector
                      L26_2 = L0_1
                      L25_2 = L25_2(L26_2)
                      L26_2 = table
                      L26_2 = L26_2.unpack
                      L27_2 = GetEntityCoords
                      L28_2 = L0_1
                      L27_2 = L27_2(L28_2)
                      L28_2 = L25_2 * 0.65
                      L27_2 = L27_2 + L28_2
                      L26_2, L27_2, L28_2 = L26_2(L27_2)
                      L29_2 = vector3
                      L30_2 = L26_2
                      L31_2 = L27_2
                      L32_2 = GetEntityCoords
                      L33_2 = L0_2
                      L32_2 = L32_2(L33_2)
                      L32_2 = L32_2.z
                      L32_2 = L32_2 - 1
                      L29_2 = L29_2(L30_2, L31_2, L32_2)
                      L30_2 = SetEntityCoords
                      L31_2 = L0_2
                      L32_2 = L29_2
                      L30_2(L31_2, L32_2)
                      L30_2 = GetEntityCoords
                      L31_2 = L0_2
                      L30_2 = L30_2(L31_2)
                      L31_2 = CastRayPointToPoint
                      L32_2 = L30_2.x
                      L33_2 = L30_2.y
                      L34_2 = L30_2.z
                      L35_2 = L30_2.x
                      L36_2 = L30_2.y
                      L37_2 = L30_2.z
                      L37_2 = L37_2 - L6_2
                      L38_2 = 1
                      L39_2 = L0_2
                      L40_2 = 0
                      L31_2 = L31_2(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L32_2 = GetRaycastResult
                      L33_2 = L31_2
                      L32_2, L33_2, L34_2, L35_2, L36_2 = L32_2(L33_2)
                      if 1 == L33_2 then
                        L20_2 = L34_2
                        L37_2 = L34_2.z
                        L21_2 = L37_2 - 5.0
                        L37_2 = TaskRappelDownWall
                        L38_2 = L0_2
                        L39_2 = L29_2
                        L40_2 = L29_2
                        L41_2 = L21_2
                        L42_2 = L2_1
                        L43_2 = "clipset@anim_heist@hs3f@ig1_rappel@male"
                        L44_2 = 1
                        L37_2(L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2)
                        L37_2 = N_0xa1ae736541b0fca3
                        L38_2 = L2_1
                        L39_2 = true
                        L37_2(L38_2, L39_2)
                        L37_2 = PinRopeVertex
                        L38_2 = L2_1
                        L39_2 = GetRopeVertexCount
                        L40_2 = L2_1
                        L39_2 = L39_2(L40_2)
                        L39_2 = L39_2 - 1
                        L40_2 = L29_2
                        L37_2(L38_2, L39_2, L40_2)
                        L37_2 = RopeSetUpdateOrder
                        L38_2 = L2_1
                        L39_2 = 0
                        L37_2(L38_2, L39_2)
                      end
                  end
                  else
                    L25_2 = vector2
                    L26_2 = L7_1.x
                    L27_2 = L7_1.y
                    L25_2 = L25_2(L26_2, L27_2)
                    L26_2 = vector2
                    L27_2 = GetEntityCoords
                    L28_2 = L0_2
                    L27_2 = L27_2(L28_2)
                    L27_2 = L27_2.x
                    L28_2 = GetEntityCoords
                    L29_2 = L0_2
                    L28_2 = L28_2(L29_2)
                    L28_2 = L28_2.y
                    L26_2 = L26_2(L27_2, L28_2)
                    L25_2 = L25_2 - L26_2
                    L25_2 = #L25_2
                    if L25_2 > 2.0 then
                      L25_2 = GetEntityCoords
                      L26_2 = L0_2
                      L25_2 = L25_2(L26_2)
                      L26_2 = L7_1
                      L25_2 = L25_2 - L26_2
                      L25_2 = #L25_2
                      if L25_2 > 4.0 then
                        L25_2 = SetPedToRagdoll
                        L26_2 = L0_2
                        L27_2 = 5000
                        L28_2 = 5000
                        L29_2 = 0
                        L30_2 = 0
                        L31_2 = 0
                        L32_2 = 0
                        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
                        L25_2 = exports
                        L25_2 = L25_2.striano_combat
                        L26_2 = L25_2
                        L25_2 = L25_2.submexError
                        L27_2 = "La corda era troppo tirata, devi posizionarti meglio!"
                        L25_2(L26_2, L27_2)
                      else
                        L25_2 = SetEntityCoords
                        L26_2 = L0_2
                        L27_2 = vector3
                        L28_2 = L14_2.x
                        L29_2 = L14_2.y
                        L30_2 = L14_2.z
                        L30_2 = L30_2 - 0.5
                        L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L27_2(L28_2, L29_2, L30_2)
                        L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                        L25_2 = exports
                        L25_2 = L25_2.striano_combat
                        L26_2 = L25_2
                        L25_2 = L25_2.submexError
                        L27_2 = "Era una posizione troppo pericolosa, sei risalito per non cadere."
                        L25_2(L26_2, L27_2)
                      end
                    end
                  end
                end
              else
                L25_2 = L4_1
                if L25_2 then
                  L25_2 = GetEntityCoords
                  L26_2 = L0_2
                  L25_2 = L25_2(L26_2)
                  L26_2 = L7_1
                  L25_2 = L25_2 - L26_2
                  L25_2 = #L25_2
                  if L25_2 < 4.0 then
                    L25_2 = timerVuotoStart
                    if not L25_2 then
                      L25_2 = GetGameTimer
                      L25_2 = L25_2()
                      timerVuotoStart = L25_2
                    end
                    L25_2 = GetGameTimer
                    L25_2 = L25_2()
                    L26_2 = timerVuotoStart
                    L26_2 = L25_2 - L26_2
                    if L26_2 < 100 then
                      L27_2 = math
                      L27_2 = L27_2.floor
                      L28_2 = L26_2
                      L27_2 = L27_2(L28_2)
                      L10_1 = L27_2
                      if L26_2 >= 100 then
                        L27_2 = true
                        L6_1 = L27_2
                        L27_2 = SetEntityCoords
                        L28_2 = L0_2
                        L29_2 = vector3
                        L30_2 = L14_2.x
                        L31_2 = L14_2.y
                        L32_2 = L14_2.z
                        L32_2 = L32_2 - 0.5
                        L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L29_2(L30_2, L31_2, L32_2)
                        L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                        L27_2 = exports
                        L27_2 = L27_2.striano_combat
                        L28_2 = L27_2
                        L27_2 = L27_2.submexError
                        L29_2 = "Era una posizione troppo pericolosa, sei risalito per non cadere."
                        L27_2(L28_2, L29_2)
                        L27_2 = ExecuteCommand
                        L28_2 = "e c"
                        L27_2(L28_2)
                        L27_2 = ExecuteCommand
                        L28_2 = "e cc"
                        L27_2(L28_2)
                        L27_2 = ClearPedTasks
                        L28_2 = L0_2
                        L27_2(L28_2)
                        L27_2 = 0
                        L10_1 = L27_2
                        timerVuotoStart = nil
                      end
                    else
                      L27_2 = 0
                      L10_1 = L27_2
                      timerVuotoStart = nil
                    end
                  end
                end
              end
              L25_2 = IsControlPressed
              L26_2 = 0
              L27_2 = 33
              L25_2 = L25_2(L26_2, L27_2)
              if not L25_2 then
                L25_2 = DisableControlAction
                L26_2 = 0
                L27_2 = 21
                L25_2(L26_2, L27_2)
              end
              L25_2 = SetEntityHeading
              L26_2 = L0_2
              L27_2 = L11_1
              L25_2(L26_2, L27_2)
              L25_2 = GetEntityCoords
              L26_2 = L0_2
              L25_2 = L25_2(L26_2)
              L26_2 = L7_1
              L25_2 = L25_2 - L26_2
              L25_2 = #L25_2
              if L25_2 < 4.0 then
                L25_2 = draw
                L26_2 = 38
                L27_2 = "Risali sulla sponda"
                L28_2 = 21
                L29_2 = "Velocizza discesa"
                L30_2 = 31
                L31_2 = "Scendi"
                L32_2 = 73
                L33_2 = "Lasciati cadere"
                L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
                L25_2 = IsControlJustPressed
                L26_2 = 0
                L27_2 = 38
                L25_2 = L25_2(L26_2, L27_2)
                if L25_2 then
                  L25_2 = L5_1
                  if L25_2 then
                    L25_2 = TriggerServerEvent
                    L26_2 = "DelPedSync"
                    L27_2 = PedToNet
                    L28_2 = L5_1
                    L27_2 = L27_2(L28_2)
                    L28_2 = GetPlayerServerId
                    L29_2 = PlayerId
                    L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L29_2()
                    L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
                    L25_2 = DeletePed
                    L26_2 = L5_1
                    L25_2(L26_2)
                  end
                  L22_2 = true
                  L25_2 = false
                  L1_1 = L25_2
                  break
                end
              else
                L25_2 = draw
                L26_2 = 21
                L27_2 = "Velocizza discesa"
                L28_2 = 31
                L29_2 = "Scendi"
                L30_2 = 73
                L31_2 = "Lasciati cadere"
                L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
              end
              L25_2 = GetEntityCoords
              L26_2 = L0_2
              L25_2 = L25_2(L26_2)
              L25_2 = L25_2.z
              L25_2 = L25_2 - L21_2
              if L25_2 < 7.0 then
                break
              end
              L25_2 = IsControlJustPressed
              L26_2 = 0
              L27_2 = 73
              L25_2 = L25_2(L26_2, L27_2)
              if L25_2 then
                break
              end
              L25_2 = IsPedRagdoll
              L26_2 = L0_2
              L25_2 = L25_2(L26_2)
              if L25_2 then
                break
              end
              L25_2 = IsEntityDead
              L26_2 = L0_2
              L25_2 = L25_2(L26_2)
              if L25_2 then
                break
              end
              L25_2 = L6_1
            until L25_2
            L23_2 = nil
            L7_1 = L23_2
            L23_2 = 0.1
            L9_1 = L23_2
            L23_2 = nil
            L8_1 = L23_2
            L23_2 = 0
            L10_1 = L23_2
            L23_2 = true
            L6_1 = L23_2
            L23_2 = L5_1
            if L23_2 then
              L23_2 = TriggerServerEvent
              L24_2 = "DelPedSync"
              L25_2 = PedToNet
              L26_2 = L5_1
              L25_2 = L25_2(L26_2)
              L26_2 = GetPlayerServerId
              L27_2 = PlayerId
              L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L27_2()
              L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
              L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
              L23_2 = DeletePed
              L24_2 = L5_1
              L23_2(L24_2)
            end
            L23_2 = ClearPedTasks
            L24_2 = L0_2
            L23_2(L24_2)
            if L22_2 then
              L23_2 = SetEntityCoords
              L24_2 = L0_2
              L25_2 = vector3
              L26_2 = L14_2.x
              L27_2 = L14_2.y
              L28_2 = L14_2.z
              L28_2 = L28_2 - 0.5
              L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L25_2(L26_2, L27_2, L28_2)
              L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
            end
            L23_2 = IsPedOnFoot
            L24_2 = L0_2
            L23_2 = L23_2(L24_2)
            if L23_2 then
              L23_2 = IsPedFalling
              L24_2 = L0_2
              L23_2 = L23_2(L24_2)
              if not L23_2 then
                L23_2 = ExecuteCommand
                L24_2 = "e endladderdown"
                L23_2(L24_2)
                L23_2 = Wait
                L24_2 = 500
                L23_2(L24_2)
                L23_2 = ExecuteCommand
                L24_2 = "e puliscimani"
                L23_2(L24_2)
                L23_2 = L0_1
                if L23_2 then
                  L23_2 = DeleteEntity
                  L24_2 = L0_1
                  L23_2(L24_2)
                  L23_2 = nil
                  L0_1 = L23_2
                end
              end
            end
            L23_2 = Wait
            L24_2 = 1
            L23_2(L24_2)
            L23_2 = false
            L6_1 = L23_2
            return
        end
      end
    end
  end
  else
    L13_2 = L7_1
    if L13_2 then
      L13_2 = nil
      L7_1 = L13_2
      L13_2 = 0.1
      L9_1 = L13_2
      L13_2 = 0
      L10_1 = L13_2
      L13_2 = nil
      L8_1 = L13_2
    end
  end
  ::lbl_946::
end
CastDown = L12_1
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = print
    L1_2 = "Check corda attivo, bloccato!"
    L0_2(L1_2)
    return
  end
  L0_2 = true
  L1_1 = L0_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexInfo
  L2_2 = "Go near an edge and press [E]."
  L0_2(L1_2, L2_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = CastDown
      L0_3()
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 289
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 311
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 170
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 24
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 25
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 14
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 15
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 16
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 17
      L0_3(L1_3, L2_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = L1_1
      if L1_3 then
        L1_3 = IsPedRagdoll
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsControlPressed
          L2_3 = 0
          L3_3 = 73
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            goto lbl_72
          end
        end
      end
      L1_3 = L3_1
      if not L1_3 then
        L1_3 = ExecuteCommand
        L2_3 = "e c"
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "e posatasca"
        L1_3(L2_3)
      end
      L1_3 = false
      L1_1 = L1_3
      L1_3 = false
      L3_1 = L1_3
      do return end
      ::lbl_72::
    end
  end
  L0_2(L1_2)
end
LoopCorda = L12_1
L12_1 = RegisterCommand
L13_1 = "rope"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  if nil == L2_2 then
    L2_2 = CreateObject
    L3_2 = 2136410906
    L4_2 = GetEntityCoords
    L5_2 = PlayerPedId
    L5_2, L6_2, L7_2, L8_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = 0
    L6_2 = true
    L7_2 = true
    L8_2 = true
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L0_1 = L2_2
    L2_2 = SetEntityVisible
    L3_2 = L0_1
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = LoopCorda
  L2_2()
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "cordavuoto"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L2_2 = not L2_2
  L4_1 = L2_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Non puoi scendere nel vuoto con la corda."
    L2_2(L3_2, L4_2)
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexInfo
    L4_2 = "Puoi scendere nel vuoto con la corda."
    L2_2(L3_2, L4_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "PedCopiaCordaSetup"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "PedCopiaCordaSetup"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L3_2 ~= A2_2 then
    L3_2 = A0_2
    L4_2 = 0
    while true do
      L5_2 = NetworkDoesEntityExistWithNetworkId
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if not (not L5_2 and L4_2 < 100) then
        break
      end
      L4_2 = L4_2 + 1
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
    end
    L5_2 = 0
    while true do
      L6_2 = NetworkDoesNetworkIdExist
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      if not (not L6_2 and L5_2 < 100) then
        break
      end
      L5_2 = L5_2 + 1
      L6_2 = Wait
      L7_2 = 1
      L6_2(L7_2)
    end
    L6_2 = NetworkDoesNetworkIdExist
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = NetworkDoesEntityExistWithNetworkId
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      if L6_2 and L4_2 < 100 and L5_2 < 100 then
        L6_2 = NetToPed
        L7_2 = A0_2
        L6_2 = L6_2(L7_2)
        L7_2 = 0
        while true do
          L8_2 = DoesEntityExist
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          if not (not L8_2 and L7_2 < 100) then
            break
          end
          L8_2 = NetToPed
          L9_2 = A0_2
          L8_2 = L8_2(L9_2)
          L6_2 = L8_2
          L7_2 = L7_2 + 1
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = DoesEntityExist
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = GetEntityCoords
          L9_2 = PlayerPedId
          L9_2, L10_2 = L9_2()
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = GetEntityCoords
          L10_2 = L6_2
          L9_2 = L9_2(L10_2)
          L8_2 = L8_2 - L9_2
          L8_2 = #L8_2
          L9_2 = 300
          if L8_2 < L9_2 then
            L8_2 = setSkinStriano
            L9_2 = A1_2
            L10_2 = L6_2
            L8_2(L9_2, L10_2)
          else
          end
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "CreaCordaAll"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "CreaCordaAll"
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = A2_2
  L5_2 = AddRope
  L6_2 = L4_2.a
  L7_2 = L4_2.b
  L8_2 = L4_2.c
  L9_2 = L4_2.d
  L10_2 = L4_2.e
  L11_2 = L4_2.f
  L12_2 = L4_2.g
  L13_2 = L4_2.h
  L14_2 = L4_2.i
  L15_2 = L4_2.l
  L16_2 = L4_2.m
  L17_2 = L4_2.n
  L18_2 = L4_2.o
  L19_2 = L4_2.p
  L20_2 = L4_2.q
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  while true do
    L6_2 = DoesRopeExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = RopeLoadTextures
  L6_2()
  L6_2 = N_0xa1ae736541b0fca3
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = PinRopeVertex
  L7_2 = L5_2
  L8_2 = GetRopeVertexCount
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 - 1
  L9_2 = L4_2.a
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = RopeSetUpdateOrder
  L7_2 = L5_2
  L8_2 = 0
  L6_2(L7_2, L8_2)
  L6_2 = GetPlayerPed
  L7_2 = GetPlayerFromServerId
  L8_2 = A1_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  if L6_2 > 0 then
    L7_2 = GetPlayerServerId
    L8_2 = PlayerId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    if A1_2 == L7_2 then
      L7_2 = SetEntityCoords
      L8_2 = L6_2
      L9_2 = L4_2.a
      L10_2 = vector3
      L11_2 = 0
      L12_2 = 0
      L13_2 = 2.3
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L9_2 - L10_2
      L7_2(L8_2, L9_2)
      L7_2 = TaskRappelDownWall
      L8_2 = L6_2
      L9_2 = L4_2.a
      L10_2 = L4_2.a
      L11_2 = A0_2 - 2.0
      L12_2 = L5_2
      L13_2 = "clipset@anim_heist@hs3f@ig1_rappel@male"
      L14_2 = 1
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = TaskRappelDownWall
      L8_2 = L6_2
      L9_2 = L4_2.a
      L10_2 = L4_2.a
      L11_2 = A0_2 - 2.0
      L12_2 = L5_2
      L13_2 = "clipset@anim_heist@hs3f@ig1_rappel@male"
      L14_2 = 1
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = SetEntityInvincible
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityCanBeDamaged
      L8_2 = PlayerPedId
      L8_2 = L8_2()
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = SetEntityVisible
      L8_2 = L6_2
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = ClonePed
      L8_2 = L6_2
      L9_2 = true
      L10_2 = false
      L11_2 = true
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L5_1 = L7_2
      L7_2 = SetEntityVisible
      L8_2 = L5_1
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = L5_1
      L8_2 = 0
      while true do
        L9_2 = DoesEntityExist
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if not (not L9_2 and L8_2 < 100) then
          break
        end
        L8_2 = L8_2 + 1
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L8_2 = 0
      while true do
        L9_2 = PedToNet
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if 0 ~= L9_2 then
          L9_2 = PedToNet
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          if not (nil == L9_2 and L8_2 < 100) then
            break
          end
        end
        L8_2 = L8_2 + 1
        L9_2 = Wait
        L10_2 = 25
        L9_2(L10_2)
      end
      L9_2 = TriggerServerEvent
      L10_2 = "AddPedSync"
      L11_2 = PedToNet
      L12_2 = L5_1
      L11_2 = L11_2(L12_2)
      L12_2 = GetPlayerServerId
      L13_2 = PlayerId
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L9_2 = GetMySkin
      L9_2 = L9_2()
      L10_2 = TriggerServerEvent
      L11_2 = "PedCopiaCordaSetup"
      L12_2 = PedToNet
      L13_2 = L7_2
      L12_2 = L12_2(L13_2)
      L13_2 = L9_2
      L14_2 = GetPlayerServerId
      L15_2 = PlayerId
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L15_2()
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2 = SetEntityLodDist
      L11_2 = L5_1
      L12_2 = 65535
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityInvincible
      L11_2 = L5_1
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityCompletelyDisableCollision
      L11_2 = L5_1
      L12_2 = true
      L13_2 = false
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = SetEntityCanBeDamaged
      L11_2 = L5_1
      L12_2 = false
      L10_2(L11_2, L12_2)
      L2_1 = L5_2
      L10_2 = SetEntityCollision
      L11_2 = L5_1
      L12_2 = false
      L13_2 = false
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = SetEntityHeading
      L11_2 = L5_1
      L12_2 = GetEntityHeading
      L13_2 = L6_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2 = SetBlockingOfNonTemporaryEvents
      L11_2 = L5_1
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityCoords
      L11_2 = L5_1
      L12_2 = L4_2.a
      L13_2 = vector3
      L14_2 = 0
      L15_2 = 0
      L16_2 = 2.3
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2 = L12_2 - L13_2
      L10_2(L11_2, L12_2)
      L10_2 = SetPedFleeAttributes
      L11_2 = L5_1
      L12_2 = 0
      L13_2 = 0
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = SetPedDropsWeaponsWhenDead
      L11_2 = L5_1
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = SetPedCanRagdollFromPlayerImpact
      L11_2 = L5_1
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityCollision
      L11_2 = L5_1
      L12_2 = false
      L13_2 = false
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = SetPedCanBeTargetted
      L11_2 = L5_1
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = SetPedDiesWhenInjured
      L11_2 = L5_1
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityHealth
      L11_2 = L5_1
      L12_2 = 1000.0
      L10_2(L11_2, L12_2)
      L10_2 = TaskRappelDownWall
      L11_2 = L5_1
      L12_2 = L4_2.a
      L13_2 = L4_2.a
      L14_2 = A0_2 - 2.0
      L15_2 = L5_2
      L16_2 = "clipset@anim_heist@hs3f@ig1_rappel@male"
      L17_2 = 1
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = Wait
      L11_2 = 7
      L10_2(L11_2)
      L10_2 = SetEntityVisible
      L11_2 = L5_1
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = SetEntityVisible
      L11_2 = PlayerPedId
      L11_2 = L11_2()
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = 0
      repeat
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = GetEntityCoords
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L13_2 = SetEntityCoords
        L14_2 = L5_1
        L15_2 = L12_2.x
        L16_2 = L12_2.y
        L17_2 = L12_2.z
        L17_2 = L17_2 - 1.0
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = SetEntityHeading
        L14_2 = L5_1
        L15_2 = L4_2.c
        L13_2(L14_2, L15_2)
        L13_2 = PlayerPedId
        L13_2 = L13_2()
        if L6_2 == L13_2 then
          L13_2 = Wait
          L14_2 = 1
          L13_2(L14_2)
          L10_2 = L10_2 + 1
          if 10 == L10_2 then
            L10_2 = 0
            L13_2 = DoesEntityExist
            L14_2 = L5_1
            L13_2 = L13_2(L14_2)
            if L13_2 then
              L13_2 = TriggerServerEvent
              L14_2 = "updateCopia"
              L15_2 = PedToNet
              L16_2 = L5_1
              L15_2 = L15_2(L16_2)
              L16_2 = GetEntityCoords
              L17_2 = L5_1
              L16_2 = L16_2(L17_2)
              L17_2 = L4_2.c
              L18_2 = GetPlayerServerId
              L19_2 = PlayerId
              L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L19_2()
              L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            end
          end
        end
        L13_2 = IsDisabledControlPressed
        L14_2 = 0
        L15_2 = 21
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          L13_2 = IsEntityPlayingAnim
          L14_2 = L5_1
          L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
          L16_2 = "rappel_jump_b"
          L17_2 = 3
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
          if not L13_2 then
            L13_2 = TaskPlayAnim
            L14_2 = L5_1
            L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
            L16_2 = "rappel_jump_b"
            L17_2 = 8.0
            L18_2 = 8.0
            L19_2 = -1
            L20_2 = 32
            L21_2 = 0
            L22_2 = 0
            L23_2 = 0
            L24_2 = 0
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          end
        end
        L13_2 = IsEntityPlayingAnim
        L14_2 = L5_1
        L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
        L16_2 = "rappel_jump_b"
        L17_2 = 3
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
        if not L13_2 then
          L13_2 = IsControlJustPressed
          L14_2 = 0
          L15_2 = 33
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L13_2 = IsDisabledControlPressed
            L14_2 = 0
            L15_2 = 21
            L13_2 = L13_2(L14_2, L15_2)
            if not L13_2 then
              L13_2 = IsEntityPlayingAnim
              L14_2 = L5_1
              L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
              L16_2 = "rappel_walk"
              L17_2 = 3
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
              if not L13_2 then
                L13_2 = TaskPlayAnim
                L14_2 = L5_1
                L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
                L16_2 = "rappel_walk"
                L17_2 = 8.0
                L18_2 = 8.0
                L19_2 = -1
                L20_2 = 1
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              end
          end
          else
            L13_2 = IsEntityPlayingAnim
            L14_2 = L5_1
            L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
            L16_2 = "rappel_idle"
            L17_2 = 3
            L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
            if not L13_2 then
              L13_2 = GetEntitySpeed
              L14_2 = L11_2
              L13_2 = L13_2(L14_2)
              if 0 == L13_2 then
                L13_2 = TaskPlayAnim
                L14_2 = L5_1
                L15_2 = "anim_heist@hs3f@ig1_rappel@male@"
                L16_2 = "rappel_idle"
                L17_2 = 8.0
                L18_2 = 8.0
                L19_2 = -1
                L20_2 = 1
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              end
            end
          end
        end
        L13_2 = GetEntityHealth
        L14_2 = L5_1
        L13_2 = L13_2(L14_2)
        L14_2 = 1000
        if L13_2 < L14_2 then
          L13_2 = true
          L6_1 = L13_2
        end
        L13_2 = IsEntityDead
        L14_2 = L6_2
        L13_2 = L13_2(L14_2)
        if L13_2 then
          break
        end
        L13_2 = L6_1
      until L13_2
      L11_2 = DeleteRope
      L12_2 = L5_2
      L11_2(L12_2)
      L11_2 = TriggerServerEvent
      L12_2 = "EliminaRope"
      L13_2 = L5_2
      L14_2 = GetPlayerServerId
      L15_2 = PlayerId
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L15_2()
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L11_2 = SetEntityVisible
      L12_2 = L6_2
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = Wait
      L12_2 = 1000
      L11_2(L12_2)
      L11_2 = SetEntityInvincible
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = false
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityCanBeDamaged
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = Wait
      L12_2 = 500
      L11_2(L12_2)
      L11_2 = false
      L3_1 = L11_2
      L11_2 = false
      L1_1 = L11_2
      L11_2 = false
      L6_1 = L11_2
      annullo = false
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "updateCopia"
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L4_2 == A3_2 then
  elseif A0_2 then
    L4_2 = A0_2
    L5_2 = 0
    while true do
      L6_2 = NetworkDoesEntityExistWithNetworkId
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if not (not L6_2 and L5_2 < 100) then
        break
      end
      L5_2 = L5_2 + 1
      L6_2 = Wait
      L7_2 = 1
      L6_2(L7_2)
    end
    L6_2 = 0
    while true do
      L7_2 = NetworkDoesNetworkIdExist
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L6_2 < 100) then
        break
      end
      L6_2 = L6_2 + 1
      L7_2 = Wait
      L8_2 = 1
      L7_2(L8_2)
    end
    L7_2 = NetworkDoesNetworkIdExist
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = NetworkDoesEntityExistWithNetworkId
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if L7_2 and L5_2 < 100 and L6_2 < 100 then
        L7_2 = NetToPed
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = vector3
          L9_2 = A1_2.x
          L10_2 = A1_2.y
          L11_2 = A1_2.z
          L11_2 = L11_2 - 1.0
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          A1_2 = L8_2
          L8_2 = SetEntityCoords
          L9_2 = L7_2
          L10_2 = A1_2
          L8_2(L9_2, L10_2)
          L8_2 = SetEntityHeading
          L9_2 = L7_2
          L10_2 = A2_2
          L8_2(L9_2, L10_2)
          L8_2 = FreezeEntityPosition
          L9_2 = L7_2
          L10_2 = true
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "EliminaPedCopia"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 == A1_2 then
  else
    L2_2 = A0_2
    L3_2 = 0
    while true do
      L4_2 = NetworkDoesEntityExistWithNetworkId
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if not (not L4_2 and L3_2 < 100) then
        break
      end
      L3_2 = L3_2 + 1
      L4_2 = Wait
      L5_2 = 1
      L4_2(L5_2)
    end
    L4_2 = 0
    while true do
      L5_2 = NetworkDoesNetworkIdExist
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      if not (not L5_2 and L4_2 < 100) then
        break
      end
      L4_2 = L4_2 + 1
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
    end
    L5_2 = NetworkDoesNetworkIdExist
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = NetworkDoesEntityExistWithNetworkId
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      if L5_2 and L3_2 < 100 and L4_2 < 100 then
        L5_2 = NetToPed
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        L6_2 = DoesEntityExist
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = SetEntityVisible
          L7_2 = L5_2
          L8_2 = false
          L6_2(L7_2, L8_2)
          L6_2 = DeletePed
          L7_2 = L5_2
          L6_2(L7_2)
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "EliminaRope"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  if L2_2 == A1_2 then
  else
    L2_2 = DeleteRope
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "EliminaPedSync"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "EliminaPedSync"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = print
  L2_2 = "Ci sono "
  L3_2 = #A0_2
  L4_2 = " Peds di un giocatore che \195\168 sloggato da eliminare dal gioco."
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = #A0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L6_2 = 0
    while true do
      L7_2 = NetworkDoesEntityExistWithNetworkId
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if not (not L7_2 and L6_2 < 100) then
        break
      end
      L6_2 = L6_2 + 1
      L7_2 = Wait
      L8_2 = 1
      L7_2(L8_2)
    end
    L7_2 = 0
    while true do
      L8_2 = NetworkDoesNetworkIdExist
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      if not (not L8_2 and L7_2 < 100) then
        break
      end
      L7_2 = L7_2 + 1
      L8_2 = Wait
      L9_2 = 1
      L8_2(L9_2)
    end
    L8_2 = NetworkDoesNetworkIdExist
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = NetworkDoesEntityExistWithNetworkId
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      if L8_2 and L6_2 < 100 and L7_2 < 100 then
        L8_2 = NetToPed
        L9_2 = A0_2[L4_2]
        L8_2 = L8_2(L9_2)
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = SetEntityAsMissionEntity
          L10_2 = L8_2
          L11_2 = true
          L9_2(L10_2, L11_2)
          L9_2 = DeletePed
          L10_2 = L8_2
          L9_2(L10_2)
          L9_2 = print
          L10_2 = "Ped trovato ed eliminato "
          L11_2 = L8_2
          L12_2 = " [id tabella: "
          L13_2 = L4_2
          L14_2 = "] "
          L15_2 = GetEntityCoords
          L16_2 = L8_2
          L15_2 = L15_2(L16_2)
          L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L9_2(L10_2)
          L9_2 = Wait
          L10_2 = 1
          L9_2(L10_2)
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
