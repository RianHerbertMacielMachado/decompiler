local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1
L0_1 = {}
L1_1 = 1500
L2_1 = 8
L3_1 = 60000
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 <= 0 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 2000
  end
  L2_2 = L2_2 + L3_2
  repeat
    L3_2 = NetworkDoesEntityExistWithNetworkId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = NetToPed
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if 0 ~= L3_2 then
        L4_2 = DoesEntityExist
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = IsEntityAPed
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            return L3_2
          end
        end
      end
    end
    L3_2 = Wait
    L4_2 = 20
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
  until L2_2 <= L3_2
  L3_2 = 0
  return L3_2
end
SafeNetToPed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 <= 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.expiresAt
    if L2_2 >= L4_2 then
      L4_2 = L0_1
      L4_2[A0_2] = nil
      L3_2 = nil
    else
      L4_2 = L3_2.fails
      L5_2 = L2_1
      if not (L4_2 >= L5_2) then
        L4_2 = L3_2.nextTry
        if not (L2_2 < L4_2) then
          goto lbl_33
        end
      end
      L4_2 = nil
      return L4_2
    end
  end
  ::lbl_33::
  L4_2 = NetworkDoesEntityExistWithNetworkId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = NetworkGetEntityFromNetworkId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if 0 ~= L4_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = L0_1
        L5_2[A0_2] = nil
        return L4_2
      end
    end
  end
  if not L3_2 then
    L4_2 = {}
    L4_2.fails = 0
    L4_2.nextTry = 0
    L5_2 = L3_1
    L5_2 = L2_2 + L5_2
    L4_2.expiresAt = L5_2
    L3_2 = L4_2
  end
  L4_2 = L3_2.fails
  L4_2 = L4_2 + 1
  L3_2.fails = L4_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = L1_1
  end
  L4_2 = L2_2 + L4_2
  L3_2.nextTry = L4_2
  L4_2 = L0_1
  L4_2[A0_2] = L3_2
  L4_2 = nil
  return L4_2
end
SafeNetToEnt = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 <= 0 then
    L2_2 = nil
    return L2_2
  end
  if not A1_2 then
    A1_2 = 1000
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + A1_2
  repeat
    L3_2 = NetworkDoesNetworkIdExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = NetworkGetEntityFromNetworkId
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if 0 ~= L3_2 then
        L4_2 = DoesEntityExist
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          return L3_2
        end
      end
    end
    L3_2 = Wait
    L4_2 = 20
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
  until L2_2 <= L3_2
  L3_2 = nil
  return L3_2
end
WaitEntityFromNetId = L4_1
function L4_1(A0_2)
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
ButtonMessageH = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
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
draw = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L14_2 = draw
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L18_2 = A3_2
  L19_2 = A4_2
  L20_2 = A5_2
  L21_2 = A6_2
  L22_2 = A7_2
  L23_2 = A8_2
  L24_2 = A9_2
  L25_2 = A10_2
  L26_2 = A11_2
  L27_2 = A12_2
  L28_2 = A13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
end
drawInfo = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = myBow
  if L1_2 > 0 then
    L1_2 = handCombatEffect
    L2_2 = ArrowList
    L3_2 = myArrow
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.trail
    L1_2 = L1_2[L2_2]
    L2_2 = _ENV
    L3_2 = "StartNetworkedParticleFxNonLoopedOnEntity"
    L2_2 = L2_2[L3_2]
    L3_2 = RequestNamedPtfxAsset
    L4_2 = L1_2.a
    L3_2(L4_2)
    while true do
      L3_2 = HasNamedPtfxAssetLoaded
      L4_2 = L1_2.a
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
    end
    L3_2 = vector3
    L4_2 = 0
    L5_2 = 0
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = rot
    if L4_2 then
      L3_2 = rot
    end
    L4_2 = UseParticleFxAssetNextCall
    L5_2 = L1_2.a
    L4_2(L5_2)
    L4_2 = L2_2
    L5_2 = L1_2.b
    L6_2 = A0_2
    L7_2 = 0.0
    L8_2 = 0.3
    L9_2 = 0.0
    L10_2 = L3_2
    L11_2 = L1_2.s
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
ArrowFX = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsEntityPlayingAnim
  L2_2 = A0_2
  L3_2 = "bow_and_arrow_idle_aim"
  L4_2 = "bow_and_arrow_idle_aim_clip"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = A0_2
    L3_2 = "bow_and_arrow_shoot_01"
    L4_2 = "bow_and_arrow_shoot_01_clip"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = A0_2
      L3_2 = "bow_and_arrow_pull"
      L4_2 = "bow_and_arrow_pull_clip"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = A0_2
        L3_2 = "bow_and_arrow_aim_idle_up"
        L4_2 = "bow_and_arrow_aim_idle_up_clip"
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = A0_2
          L3_2 = "bow_and_arrow_aim_idle_down"
          L4_2 = "bow_and_arrow_aim_idle_down_clip"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = "bow_and_arrow_pull_down"
            L4_2 = "bow_and_arrow_pull_down_clip"
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = "bow_and_arrow_pull_up"
              L4_2 = "bow_and_arrow_pull_up_clip"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = "bow_and_arrow_shoot_up"
                L4_2 = "bow_and_arrow_shoot_up_clip"
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = "bow_and_arrow_shoot_down"
                  L4_2 = "bow_and_arrow_shoot_down_clip"
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = "original_spear_idle_aim_forward_2"
                    L4_2 = "original_spear_idle_aim_forward_2_clip"
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = "original_spear_idle_aim_down_2"
                      L4_2 = "original_spear_idle_aim_down_2_clip"
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if not L1_2 then
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = "original_spear_idle_aim_up_2"
                        L4_2 = "original_spear_idle_aim_up_2_clip"
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          goto lbl_100
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L1_2 = true
  do return L1_2 end
  goto lbl_102
  ::lbl_100::
  L1_2 = false
  do return L1_2 end
  ::lbl_102::
end
inBowAnims = L4_1
libstrafe = "move_strafe@first_person@generic"
currentStance = "walk_"
L4_1 = currentStance
L5_1 = "fwd_0_loop"
L4_1 = L4_1 .. L5_1
strafe_fw = L4_1
L4_1 = currentStance
L5_1 = "bwd_180_loop"
L4_1 = L4_1 .. L5_1
strafe_bk = L4_1
avvisoSpecial = false
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = inLeviosa
  if not L4_2 then
    L4_2 = TriggerEvent
    L5_2 = "striano_combat:client:onEnterCombat"
    L4_2(L5_2)
    L4_2 = Sfoggiate
    if L4_2 then
      L4_2 = mySword
      if L4_2 > 0 then
        L4_2 = SwordList
        L5_2 = mySword
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.trailswordFx
        if nil ~= L4_2 then
          L4_2 = CreateThread
          function L5_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
            L0_3 = Wait
            L1_3 = 125
            L0_3(L1_3)
            L0_3 = indashfunc
            L1_3 = L3_2
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = ipairs
              L1_3 = SwordList
              L2_3 = mySword
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3.trailswordFx
              L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
              for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                L6_3 = L5_3
                L7_3 = SafeEntToNet
                L8_3 = L3_2
                L7_3 = L7_3(L8_3)
                if not L7_3 then
                  L8_3 = print
                  L9_3 = "This ped not exist (CODE: 1938). "
                  L10_3 = L3_2
                  L8_3(L9_3, L10_3)
                  return
                end
                L8_3 = nil
                L9_3 = myBuffID
                if L9_3 > 0 then
                  L9_3 = colorFx
                  L10_3 = BufferList
                  L11_3 = myBuffID
                  L10_3 = L10_3[L11_3]
                  L10_3 = L10_3.c
                  L8_3 = L9_3[L10_3]
                end
                L9_3 = TriggerServerEvent
                L10_3 = "PlayEffectEnt"
                L11_3 = {}
                L12_3 = L6_3[5]
                L11_3.a = L12_3
                L12_3 = L6_3[6]
                L11_3.b = L12_3
                L11_3.ent = L7_3
                L12_3 = L6_3[4]
                L11_3.s = L12_3
                L12_3 = L6_3[7]
                L11_3.bone = L12_3
                L11_3.timer = 2100
                L12_3 = vector3
                L13_3 = L6_3[1]
                L14_3 = L6_3[2]
                L15_3 = L6_3[3]
                L12_3 = L12_3(L13_3, L14_3, L15_3)
                L11_3.off = L12_3
                L11_3.c = L8_3
                L9_3(L10_3, L11_3)
              end
            end
          end
          L4_2(L5_2)
        end
      end
    end
    L4_2 = inHeavyWeap
    if L4_2 then
      inHeavyWeap = false
      L4_2 = Sfoggiate
      if L4_2 then
        L4_2 = SwordList
        L5_2 = mySword
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.m
        L5_2 = GetEntityCoords
        L6_2 = PlayerPedId
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2()
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L6_2 = SwordObj
        if nil ~= L6_2 then
          L6_2 = DoesEntityExist
          L7_2 = SwordObj
          L6_2 = L6_2(L7_2)
          if L6_2 then
            L6_2 = DetachEntity
            L7_2 = SwordObj
            L6_2(L7_2)
            L6_2 = SetEntityAsMissionEntity
            L7_2 = SwordObj
            L6_2(L7_2)
            L6_2 = DelIfOnClient
            L7_2 = SwordObj
            L6_2(L7_2)
            L6_2 = DeleteEntity
            L7_2 = SwordObj
            L6_2(L7_2)
            SwordObj = nil
          end
        end
        L6_2 = CreateObjectNoOffset
        L7_2 = GetHashKey
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L8_2 = L5_2.x
        L9_2 = L5_2.y
        L10_2 = L5_2.z
        L10_2 = L10_2 - 1.0
        L11_2 = true
        L12_2 = true
        L13_2 = false
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        SwordObj = L6_2
        L6_2 = SetEntityCollision
        L7_2 = SwordObj
        L8_2 = false
        L9_2 = false
        L6_2(L7_2, L8_2, L9_2)
        while true do
          L6_2 = DoesEntityExist
          L7_2 = SwordObj
          L6_2 = L6_2(L7_2)
          if L6_2 then
            break
          end
          L6_2 = Wait
          L7_2 = 0
          L6_2(L7_2)
        end
        L6_2 = MakeSwordNET
        L7_2 = SwordObj
        L6_2(L7_2)
        L6_2 = SwordList
        L7_2 = mySword
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.att
        L7_2 = table
        L7_2 = L7_2.unpack
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
        f = L12_2
        e = L11_2
        d = L10_2
        c = L9_2
        b = L8_2
        a = L7_2
        L7_2 = AttachEntityToEntity
        L8_2 = SwordObj
        L9_2 = L3_2
        L10_2 = GetPedBoneIndex
        L11_2 = L3_2
        L12_2 = SwordList
        L13_2 = mySword
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.bone
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = a
        L12_2 = b
        L13_2 = c
        L14_2 = d
        L15_2 = e
        L16_2 = f
        L17_2 = true
        L18_2 = true
        L19_2 = false
        L20_2 = true
        L21_2 = 1
        L22_2 = true
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L7_2 = SetModelAsNoLongerNeeded
        L8_2 = L4_2
        L7_2(L8_2)
      end
    end
    L4_2 = sonoInAria
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = 1.78
      L5_2 = FreezeEntityPosition
      L6_2 = L3_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = debuggerClb
      if nil == L5_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = RequestModelStriano
        L7_2 = "apa_mp_h_din_table_05"
        L6_2(L7_2)
        L6_2 = CreateObject
        L7_2 = GetHashKey
        L8_2 = "apa_mp_h_din_table_05"
        L7_2 = L7_2(L8_2)
        L8_2 = L5_2.x
        L9_2 = L5_2.y
        L10_2 = L5_2.z
        L10_2 = L10_2 - L4_2
        L11_2 = false
        L12_2 = false
        L13_2 = false
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        debuggerClb = L6_2
        while true do
          L6_2 = DoesEntityExist
          L7_2 = debuggerClb
          L6_2 = L6_2(L7_2)
          if L6_2 then
            break
          end
          L6_2 = Wait
          L7_2 = 0
          L6_2(L7_2)
        end
        L6_2 = FreezeEntityPosition
        L7_2 = debuggerClb
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = SetEntityAlpha
        L7_2 = debuggerClb
        L8_2 = 0
        L6_2(L7_2, L8_2)
        L6_2 = FiatoneCapriola
        L7_2 = exports
        L7_2 = L7_2.striano_combat
        L8_2 = L7_2
        L7_2 = L7_2.GetStaminaDrainMultiplier
        L7_2 = L7_2(L8_2)
        L7_2 = 5 * L7_2
        L6_2 = L6_2 - L7_2
        FiatoneCapriola = L6_2
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L3_2
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        startTimeJumpObj = L0_3
        while true do
          L0_3 = debuggerClb
          if nil == L0_3 then
            break
          end
          L0_3 = DoesEntityExist
          L1_3 = debuggerClb
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = IsEntityPlayingAnim
          L1_3 = L3_2
          L2_3 = AnimFightList
          L3_3 = indexCombat
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.a
          L3_3 = AnimFightList
          L4_3 = indexCombat
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.b
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if L0_3 then
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            startTimeJumpObj = L0_3
          end
          L0_3 = GetGameTimer
          L0_3 = L0_3()
          L1_3 = GetEntityCoords
          L2_3 = L3_2
          L1_3 = L1_3(L2_3)
          L2_3 = currentTarget
          if nil == L2_3 then
            L2_3 = IsPedGettingUp
            L3_3 = L3_2
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = SetEntityHeading
              L3_3 = debuggerClb
              L4_3 = GetGameplayCamRot
              L5_3 = 0
              L4_3 = L4_3(L5_3)
              L4_3 = L4_3.z
              L4_3 = L4_3 - 90.0
              L2_3(L3_3, L4_3)
            end
          end
          L2_3 = IsPedJumping
          L3_3 = L3_2
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedRagdoll
            L3_3 = L3_2
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 24
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsDisabledControlPressed
                L3_3 = 0
                L4_3 = 24
                L2_3 = L2_3(L3_3, L4_3)
              end
              if L2_3 then
                L2_3 = SetEntityCoords
                L3_3 = debuggerClb
                L4_3 = L1_3.x
                L5_3 = L1_3.y
                L6_3 = L1_3.z
                L7_3 = L4_2
                L6_3 = L6_3 - L7_3
                L6_3 = L6_3 - 1.0
                L2_3(L3_3, L4_3, L5_3, L6_3)
                L2_3 = FiatoneCapriola
                L3_3 = exports
                L3_3 = L3_3.striano_combat
                L4_3 = L3_3
                L3_3 = L3_3.GetStaminaDrainMultiplier
                L3_3 = L3_3(L4_3)
                L3_3 = 1 * L3_3
                L2_3 = L2_3 - L3_3
                FiatoneCapriola = L2_3
              end
          end
          else
            L2_3 = debuggerClb
            if nil ~= L2_3 then
              L2_3 = SetEntityAsMissionEntity
              L3_3 = debuggerClb
              L2_3(L3_3)
              L2_3 = DeleteEntity
              L3_3 = debuggerClb
              L2_3(L3_3)
              debuggerClb = nil
            end
            return
          end
          L2_3 = startTimeJumpObj
          L2_3 = L0_3 - L2_3
          L3_3 = 500
          if L2_3 >= L3_3 then
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            startTimeJumpObj = L2_3
            L2_3 = debuggerClb
            if nil ~= L2_3 then
              L2_3 = SetEntityAsMissionEntity
              L3_3 = debuggerClb
              L2_3(L3_3)
              L2_3 = DeleteEntity
              L3_3 = debuggerClb
              L2_3(L3_3)
              debuggerClb = nil
            end
          end
        end
      end
      L5_2(L6_2)
    end
    L4_2 = StessaMossa
    if L4_2 == A0_2 then
      StessaMossa = 10000
    else
      StessaMossa = A0_2
    end
    L4_2 = IsEntityAttached
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = IsPedSwimming
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = IsPedSwimmingUnderWater
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L4_2 = IsEntityInWater
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            goto lbl_233
          end
        end
      end
    end
    IDFLAG = 49
    L4_2 = ResetStrafe
    L5_2 = L3_2
    L4_2(L5_2)
    goto lbl_235
    ::lbl_233::
    L4_2 = FlagAnimBase
    IDFLAG = L4_2
    ::lbl_235::
    L4_2 = IsEntityAttached
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = 1
      L5_2 = idleFight
      L5_2 = #L5_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = IsEntityPlayingAnim
        L9_2 = L3_2
        L10_2 = idleFight
        L10_2 = L10_2[L7_2]
        L10_2 = L10_2.a
        L11_2 = idleFight
        L11_2 = L11_2[L7_2]
        L11_2 = L11_2.b
        L12_2 = 3
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        if L8_2 then
          L8_2 = exports
          L8_2 = L8_2.striano_combat
          L9_2 = L8_2
          L8_2 = L8_2.inroll
          L8_2 = L8_2(L9_2)
          if not L8_2 then
            L8_2 = ecc
            L8_2()
            L8_2 = ClearPedTasks
            L9_2 = L3_2
            L8_2(L9_2)
            L8_2 = ClearPedSecondaryTask
            L9_2 = L3_2
            L8_2(L9_2)
            L8_2 = UltimaMossa
            L9_2 = id
            if L8_2 ~= L9_2 then
              L8_2 = ClearPedTasksImmediately
              L9_2 = L3_2
              L8_2(L9_2)
            end
            L8_2 = ClearPedTasks
            L9_2 = L3_2
            L8_2(L9_2)
            break
          end
        end
      end
    else
      L4_2 = ecc
      L4_2()
    end
  end
end
OnStartCombat = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    startTimeJumpObj = L0_3
    myHit = 0
    L1_3 = A1_2
    L0_3 = A0_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.slow
    L1_3 = getStyleCombat
    L1_3 = L1_3()
    L2_3 = A1_2
    UltimaMossa = L2_3
    L2_3 = MarkerOn
    if L2_3 then
      L2_3 = print
      L3_3 = "UltimaMossa ID = "
      L4_3 = UltimaMossa
      L3_3 = L3_3 .. L4_3
      L2_3(L3_3)
    end
    L2_3 = FixCrouch
    L2_3()
    L2_3 = IsEntityVisible
    L3_3 = L2_2
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = DoesEntityExist
      L3_3 = ShieldObj
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = DetachEntity
        L3_3 = ShieldObj
        L2_3(L3_3)
        L2_3 = ShieldList
        L3_3 = myShield
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.attposato
        L3_3 = table
        L3_3 = L3_3.unpack
        L4_3 = L2_3
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3)
        f = L8_3
        e = L7_3
        d = L6_3
        c = L5_3
        b = L4_3
        a = L3_3
        L3_3 = AttachEntityToEntity
        L4_3 = ShieldObj
        L5_3 = L2_2
        L6_3 = GetPedBoneIndex
        L7_3 = L2_2
        L8_3 = ShieldList
        L9_3 = myShield
        L8_3 = L8_3[L9_3]
        L8_3 = L8_3.boneposato
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = a
        L8_3 = b
        L9_3 = c
        L10_3 = d
        L11_3 = e
        L12_3 = f
        L13_3 = true
        L14_3 = true
        L15_3 = false
        L16_3 = true
        L17_3 = 1
        L18_3 = true
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      end
    end
    L2_3 = CreateThread
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4
      L1_4 = A1_2
      L0_4 = A0_2
      L0_4 = L0_4[L1_4]
      L0_4 = L0_4.maxhit
      if L0_4 > 1 then
        L0_4 = 1
        L2_4 = A1_2
        L1_4 = A0_2
        L1_4 = L1_4[L2_4]
        L1_4 = L1_4.maxhit
        L2_4 = 1
        for L3_4 = L0_4, L1_4, L2_4 do
          L4_4 = IsEntityPlayingAnim
          L5_4 = L2_2
          L6_4 = AnimFightList
          L7_4 = indexCombat
          L6_4 = L6_4[L7_4]
          L6_4 = L6_4.a
          L7_4 = AnimFightList
          L8_4 = indexCombat
          L7_4 = L7_4[L8_4]
          L7_4 = L7_4.b
          L8_4 = 3
          L4_4 = L4_4(L5_4, L6_4, L7_4, L8_4)
          if L4_4 then
            L4_4 = IsPedRagdoll
            L5_4 = L2_2
            L4_4 = L4_4(L5_4)
            if not L4_4 then
              L4_4 = IsPedFatallyInjured
              L5_4 = L2_2
              L4_4 = L4_4(L5_4)
              if not L4_4 then
                L4_4 = GetEntityCoords
                L5_4 = L2_2
                L4_4 = L4_4(L5_4)
                L5_4 = OnEveryHit
                L7_4 = A1_2
                L6_4 = A0_2
                L6_4 = L6_4[L7_4]
                L6_4 = L6_4.bones
                L5_4(L6_4)
                L5_4 = myHit
                L7_4 = A1_2
                L6_4 = A0_2
                L6_4 = L6_4[L7_4]
                L6_4 = L6_4.maxhit
                if L5_4 < L6_4 then
                  L5_4 = GetEntityCoords
                  L6_4 = L2_2
                  L5_4 = L5_4(L6_4)
                  L6_4 = GetEntityForwardVector
                  L7_4 = L2_2
                  L6_4 = L6_4(L7_4)
                  L7_4 = 3.0
                  L8_4 = table
                  L8_4 = L8_4.unpack
                  L9_4 = L6_4 * L7_4
                  L9_4 = L5_4 + L9_4
                  L8_4, L9_4, L10_4 = L8_4(L9_4)
                  L11_4 = vector3
                  L12_4 = L5_4.x
                  L12_4 = L8_4 - L12_4
                  L13_4 = L5_4.y
                  L13_4 = L9_4 - L13_4
                  L14_4 = L10_4
                  L11_4 = L11_4(L12_4, L13_4, L14_4)
                  L12_4 = GetEntityVelocity
                  L13_4 = L2_2
                  L12_4 = L12_4(L13_4)
                  L13_4 = SetEntityVelocity
                  L14_4 = L2_2
                  L15_4 = L12_4.x
                  L16_4 = L11_4.x
                  L15_4 = L15_4 + L16_4
                  L16_4 = L12_4.y
                  L17_4 = L11_4.y
                  L16_4 = L16_4 + L17_4
                  L17_4 = 0.0
                  L13_4(L14_4, L15_4, L16_4, L17_4)
                  L14_4 = A1_2
                  L13_4 = A0_2
                  L13_4 = L13_4[L14_4]
                  L13_4 = L13_4.push
                  if L13_4 then
                    L13_4 = inblockfunc
                    L14_4 = L2_2
                    L13_4 = L13_4(L14_4)
                    if not L13_4 then
                      L13_4 = IsEntityAttached
                      L14_4 = L2_2
                      L13_4 = L13_4(L14_4)
                      if not L13_4 then
                        L13_4 = IsPedSwimming
                        L14_4 = L2_2
                        L13_4 = L13_4(L14_4)
                        if not L13_4 then
                          L13_4 = IsPedSwimmingUnderWater
                          L14_4 = L2_2
                          L13_4 = L13_4(L14_4)
                          if not L13_4 then
                            L13_4 = IsEntityInWater
                            L14_4 = L2_2
                            L13_4 = L13_4(L14_4)
                            if not L13_4 then
                              L13_4 = pedNearTree
                              L13_4 = L13_4()
                              if L13_4 then
                              else
                                L13_4 = pushForward
                                L14_4 = L2_2
                                L15_4 = 2.5
                                L13_4(L14_4, L15_4)
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                  L13_4 = FiatoneCapriola
                  L14_4 = delStaminaFight
                  L15_4 = exports
                  L15_4 = L15_4.striano_combat
                  L16_4 = L15_4
                  L15_4 = L15_4.GetStaminaDrainMultiplier
                  L15_4 = L15_4(L16_4)
                  L14_4 = L14_4 * L15_4
                  L13_4 = L13_4 - L14_4
                  FiatoneCapriola = L13_4
                  L14_4 = A1_2
                  L13_4 = A0_2
                  L13_4 = L13_4[L14_4]
                  L13_4 = L13_4.maxhit
                  if L3_4 == L13_4 then
                    L13_4 = FxOnMove
                    L15_4 = A1_2
                    L14_4 = A0_2
                    L14_4 = L14_4[L15_4]
                    L13_4(L14_4)
                  end
                  L13_4 = changeAnimSpeed
                  L14_4 = A1_2
                  L13_4 = L13_4(L14_4)
                  L15_4 = A1_2
                  L14_4 = A0_2
                  L14_4 = L14_4[L15_4]
                  L14_4 = L14_4.delay
                  L14_4 = L14_4 / L13_4
                  L15_4 = Wait
                  L16_4 = L14_4
                  L15_4(L16_4)
                  L15_4 = myHit
                  L15_4 = L15_4 + 1
                  myHit = L15_4
                end
              end
            end
          else
            L4_4 = ClearPedSecondaryTask
            L5_4 = L2_2
            L4_4(L5_4)
            L4_4 = ClearPedTasks
            L5_4 = L2_2
            L4_4(L5_4)
            break
          end
        end
      else
        L0_4 = IsEntityPlayingAnim
        L1_4 = L2_2
        L2_4 = AnimFightList
        L3_4 = indexCombat
        L2_4 = L2_4[L3_4]
        L2_4 = L2_4.a
        L3_4 = AnimFightList
        L4_4 = indexCombat
        L3_4 = L3_4[L4_4]
        L3_4 = L3_4.b
        L4_4 = 3
        L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
        if L0_4 then
          L0_4 = IsPedRagdoll
          L1_4 = L2_2
          L0_4 = L0_4(L1_4)
          if not L0_4 then
            L0_4 = IsPedFatallyInjured
            L1_4 = L2_2
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              L0_4 = OnEveryHit
              L2_4 = A1_2
              L1_4 = A0_2
              L1_4 = L1_4[L2_4]
              L1_4 = L1_4.bones
              L0_4(L1_4)
              L0_4 = FxOnMove
              L2_4 = A1_2
              L1_4 = A0_2
              L1_4 = L1_4[L2_4]
              L0_4(L1_4)
              L1_4 = A1_2
              L0_4 = A0_2
              L0_4 = L0_4[L1_4]
              L0_4 = L0_4.push
              if L0_4 then
                L0_4 = pushForward
                L1_4 = L2_2
                L2_4 = 2.5
                L0_4(L1_4, L2_4)
              end
            end
          end
        else
          L0_4 = ClearPedSecondaryTask
          L1_4 = L2_2
          L0_4(L1_4)
          L0_4 = ClearPedTasks
          L1_4 = L2_2
          L0_4(L1_4)
        end
      end
      L0_4 = IsControlPressed
      L1_4 = 0
      L2_4 = 32
      L0_4 = L0_4(L1_4, L2_4)
      if not L0_4 then
        L0_4 = IsControlPressed
        L1_4 = 0
        L2_4 = 34
        L0_4 = L0_4(L1_4, L2_4)
        if not L0_4 then
          L0_4 = IsControlPressed
          L1_4 = 0
          L2_4 = 35
          L0_4 = L0_4(L1_4, L2_4)
          if not L0_4 then
            L0_4 = IsControlPressed
            L1_4 = 0
            L2_4 = 22
            L0_4 = L0_4(L1_4, L2_4)
            if not L0_4 then
              L0_4 = IsDisabledControlPressed
              L1_4 = 0
              L2_4 = 32
              L0_4 = L0_4(L1_4, L2_4)
              if not L0_4 then
                L0_4 = IsDisabledControlPressed
                L1_4 = 0
                L2_4 = 34
                L0_4 = L0_4(L1_4, L2_4)
                if not L0_4 then
                  L0_4 = IsDisabledControlPressed
                  L1_4 = 0
                  L2_4 = 35
                  L0_4 = L0_4(L1_4, L2_4)
                  if not L0_4 then
                    L0_4 = IsDisabledControlPressed
                    L1_4 = 0
                    L2_4 = 22
                    L0_4 = L0_4(L1_4, L2_4)
                    if not L0_4 then
                      L0_4 = sonoInAria
                      L1_4 = L2_2
                      L0_4 = L0_4(L1_4)
                      if not L0_4 then
                        L0_4 = IsEntityAttached
                        L1_4 = L2_2
                        L0_4 = L0_4(L1_4)
                        if not L0_4 then
                          L0_4 = LoadIdleFight
                          L1_4 = L1_3.Idle
                          L0_4(L1_4)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      UltimaMossa = 0
      L0_4 = striano_cam
      if nil ~= L0_4 then
        L0_4 = RenderScriptCams
        L1_4 = false
        L2_4 = false
        L3_4 = 0
        L4_4 = true
        L5_4 = true
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
        L0_4 = DestroyCam
        L1_4 = striano_cam
        L2_4 = false
        L0_4(L1_4, L2_4)
        striano_cam = nil
        L0_4 = stopFilm
        L0_4()
      end
    end
    L2_3(L3_3)
    if L0_3 then
      L2_3 = SlowMe
      L2_3()
    end
  end
  L3_2(L4_2)
end
DashMe = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  myTabMove = false
  L0_2 = AnimFightList
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = CloseAllMenuCombat
  L1_2()
  closeall = true
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  closeall = false
  L1_2 = CaricaListaTastiMosse
  L1_2()
  L1_2 = inAnimList
  if not L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "combat:setalpha"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2 = L4_2()
    L3_2 = L3_2(L4_2)
    L4_2 = 254
    L1_2(L2_2, L3_2, L4_2)
    indexCombat = 1
    L1_2 = FlagAnimBase
    IDFLAG = L1_2
    inAnimList = true
    L1_2 = LoopLuceCaratteristiche
    L1_2()
    L1_2 = {}
    tnsa = L1_2
    L1_2 = {}
    tnsd = L1_2
    L1_2 = {}
    tnsw = L1_2
    L1_2 = {}
    tsa = L1_2
    L1_2 = {}
    tsd = L1_2
    L1_2 = {}
    tsw = L1_2
    stringaW = ""
    stringaA = ""
    stringaD = ""
    stringaSW = ""
    stringaSA = ""
    stringaSD = ""
    L1_2 = MexCreaCombo
    L1_2()
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      editorcombatopen = true
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = indexIdle
        if 0 == L1_3 then
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 47
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = IsDisabledControlJustPressed
            L2_3 = 0
            L3_3 = 47
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              goto lbl_785
            end
          end
          L1_3 = draw_DelConfirmBefore
          L2_3 = indexCombat
          L1_3(L2_3)
          L1_3 = L0_2
          L1_3 = #L1_3
          if L1_3 < 1 then
            L1_3 = print
            L2_3 = "No moves available in list to preview!"
            L1_3(L2_3)
          else
            goon = false
            while true do
              L1_3 = goon
              if L1_3 then
                break
              end
              L1_3 = indexIdle
              if 0 == L1_3 then
                L1_3 = IsControlPressed
                L2_3 = 0
                L3_3 = 194
                L1_3 = L1_3(L2_3, L3_3)
                if not L1_3 then
                  L1_3 = draw_DelConfirm
                  L2_3 = indexCombat
                  L1_3(L2_3)
                  L1_3 = IsControlJustPressed
                  L2_3 = 0
                  L3_3 = 73
                  L1_3 = L1_3(L2_3, L3_3)
                  if L1_3 then
                    L1_3 = strianoSub
                    L2_3 = ""
                    L1_3(L2_3)
                    goon = true
                  else
                    L1_3 = IsControlJustPressed
                    L2_3 = 0
                    L3_3 = 74
                    L1_3 = L1_3(L2_3, L3_3)
                    if not L1_3 then
                      L1_3 = IsDisabledControlJustPressed
                      L2_3 = 0
                      L3_3 = 74
                      L1_3 = L1_3(L2_3, L3_3)
                      if not L1_3 then
                        goto lbl_115
                      end
                    end
                    L1_3 = tnsa
                    L1_3 = #L1_3
                    if L1_3 > 0 then
                      L1_3 = tnsd
                      L1_3 = #L1_3
                      if L1_3 > 0 then
                        L1_3 = tnsw
                        L1_3 = #L1_3
                        if L1_3 > 0 then
                          L1_3 = tsa
                          L1_3 = #L1_3
                          if L1_3 > 0 then
                            L1_3 = tsd
                            L1_3 = #L1_3
                            if L1_3 > 0 then
                              L1_3 = tsw
                              L1_3 = #L1_3
                              if L1_3 > 0 then
                                L1_3 = ClearPedSecondaryTask
                                L2_3 = L0_3
                                L1_3(L2_3)
                                L1_3 = ClearPedTasks
                                L2_3 = L0_3
                                L1_3(L2_3)
                                stoCreandoStile = true
                                L1_3 = CheckIdleList
                                L1_3()
                                L1_3 = strianoSub
                                L2_3 = txt_IdleSet
                                L3_3 = true
                                L1_3(L2_3, L3_3)
                            end
                          end
                        end
                      end
                    end
                    else
                      L1_3 = strianoSub
                      L2_3 = txt_NotFull
                      L3_3 = true
                      L1_3(L2_3, L3_3)
                      goto lbl_781
                      ::lbl_115::
                      L1_3 = IsControlPressed
                      L2_3 = 0
                      L3_3 = 21
                      L1_3 = L1_3(L2_3, L3_3)
                      if not L1_3 then
                        L1_3 = IsDisabledControlPressed
                        L2_3 = 0
                        L3_3 = 21
                        L1_3 = L1_3(L2_3, L3_3)
                        if not L1_3 then
                          L1_3 = IsControlJustPressed
                          L2_3 = 0
                          L3_3 = 34
                          L1_3 = L1_3(L2_3, L3_3)
                          if L1_3 then
                            L1_3 = tnsa
                            L1_3 = #L1_3
                            L2_3 = maxAnimCombo
                            if L1_3 >= L2_3 then
                              L1_3 = strianoSub
                              L2_3 = txt_MaxMoves
                              L3_3 = maxAnimCombo
                              L2_3 = L2_3 .. L3_3
                              L3_3 = true
                              L1_3(L2_3, L3_3)
                              goon = true
                            else
                              L1_3 = indexCombat
                              L2_3 = L0_2
                              L2_3 = #L2_3
                              L3_3 = AnimFightList
                              L3_3 = #L3_3
                              if L2_3 < L3_3 then
                                L3_3 = indexCombat
                                L2_3 = L0_2
                                L2_3 = L2_3[L3_3]
                                L1_3 = L2_3.realid
                              end
                              L2_3 = strianoSub
                              L3_3 = "ID: "
                              L4_3 = L1_3
                              L5_3 = " ---> [ A ]"
                              L3_3 = L3_3 .. L4_3 .. L5_3
                              L4_3 = true
                              L2_3(L3_3, L4_3)
                              L2_3 = table
                              L2_3 = L2_3.insert
                              L3_3 = tnsa
                              L4_3 = L1_3
                              L2_3(L3_3, L4_3)
                              stringaA = ""
                              L2_3 = 1
                              L3_3 = tnsa
                              L3_3 = #L3_3
                              L4_3 = 1
                              for L5_3 = L2_3, L3_3, L4_3 do
                                L6_3 = stringaA
                                L7_3 = ""
                                L8_3 = tnsa
                                L8_3 = L8_3[L5_3]
                                L9_3 = " "
                                L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                                stringaA = L6_3
                              end
                              L2_3 = MexCreaCombo
                              L2_3()
                              goon = true
                            end
                          else
                            L1_3 = IsControlJustPressed
                            L2_3 = 0
                            L3_3 = 32
                            L1_3 = L1_3(L2_3, L3_3)
                            if L1_3 then
                              L1_3 = tnsw
                              L1_3 = #L1_3
                              L2_3 = maxAnimCombo
                              if L1_3 >= L2_3 then
                                L1_3 = strianoSub
                                L2_3 = txt_MaxMoves
                                L3_3 = maxAnimCombo
                                L2_3 = L2_3 .. L3_3
                                L3_3 = true
                                L1_3(L2_3, L3_3)
                                goon = true
                              else
                                L1_3 = indexCombat
                                L2_3 = L0_2
                                L2_3 = #L2_3
                                L3_3 = AnimFightList
                                L3_3 = #L3_3
                                if L2_3 < L3_3 then
                                  L3_3 = indexCombat
                                  L2_3 = L0_2
                                  L2_3 = L2_3[L3_3]
                                  L1_3 = L2_3.realid
                                end
                                L2_3 = strianoSub
                                L3_3 = "ID: "
                                L4_3 = L1_3
                                L5_3 = " ---> [ W ]"
                                L3_3 = L3_3 .. L4_3 .. L5_3
                                L4_3 = true
                                L2_3(L3_3, L4_3)
                                L2_3 = table
                                L2_3 = L2_3.insert
                                L3_3 = tnsw
                                L4_3 = L1_3
                                L2_3(L3_3, L4_3)
                                stringaW = ""
                                L2_3 = 1
                                L3_3 = tnsw
                                L3_3 = #L3_3
                                L4_3 = 1
                                for L5_3 = L2_3, L3_3, L4_3 do
                                  L6_3 = stringaW
                                  L7_3 = ""
                                  L8_3 = tnsw
                                  L8_3 = L8_3[L5_3]
                                  L9_3 = " "
                                  L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                                  stringaW = L6_3
                                end
                                L2_3 = MexCreaCombo
                                L2_3()
                                goon = true
                              end
                            else
                              L1_3 = IsControlJustPressed
                              L2_3 = 0
                              L3_3 = 35
                              L1_3 = L1_3(L2_3, L3_3)
                              if L1_3 then
                                L1_3 = tnsd
                                L1_3 = #L1_3
                                L2_3 = maxAnimCombo
                                if L1_3 >= L2_3 then
                                  L1_3 = strianoSub
                                  L2_3 = txt_MaxMoves
                                  L3_3 = maxAnimCombo
                                  L2_3 = L2_3 .. L3_3
                                  L3_3 = true
                                  L1_3(L2_3, L3_3)
                                  goon = true
                                else
                                  L1_3 = indexCombat
                                  L2_3 = L0_2
                                  L2_3 = #L2_3
                                  L3_3 = AnimFightList
                                  L3_3 = #L3_3
                                  if L2_3 < L3_3 then
                                    L3_3 = indexCombat
                                    L2_3 = L0_2
                                    L2_3 = L2_3[L3_3]
                                    L1_3 = L2_3.realid
                                  end
                                  L2_3 = strianoSub
                                  L3_3 = "ID: "
                                  L4_3 = L1_3
                                  L5_3 = " ---> [ D ]"
                                  L3_3 = L3_3 .. L4_3 .. L5_3
                                  L4_3 = true
                                  L2_3(L3_3, L4_3)
                                  L2_3 = table
                                  L2_3 = L2_3.insert
                                  L3_3 = tnsd
                                  L4_3 = L1_3
                                  L2_3(L3_3, L4_3)
                                  stringaD = ""
                                  L2_3 = 1
                                  L3_3 = tnsd
                                  L3_3 = #L3_3
                                  L4_3 = 1
                                  for L5_3 = L2_3, L3_3, L4_3 do
                                    L6_3 = stringaD
                                    L7_3 = ""
                                    L8_3 = tnsd
                                    L8_3 = L8_3[L5_3]
                                    L9_3 = " "
                                    L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                                    stringaD = L6_3
                                  end
                                  L2_3 = MexCreaCombo
                                  L2_3()
                                  goon = true
                                end
                              end
                            end
                          end
                      end
                      else
                        L1_3 = IsControlJustPressed
                        L2_3 = 0
                        L3_3 = 34
                        L1_3 = L1_3(L2_3, L3_3)
                        if L1_3 then
                          L1_3 = tsa
                          L1_3 = #L1_3
                          L2_3 = maxAnimCombo
                          if L1_3 >= L2_3 then
                            L1_3 = strianoSub
                            L2_3 = txt_MaxMoves
                            L3_3 = maxAnimCombo
                            L2_3 = L2_3 .. L3_3
                            L3_3 = true
                            L1_3(L2_3, L3_3)
                            goon = true
                          else
                            L1_3 = indexCombat
                            L2_3 = L0_2
                            L2_3 = #L2_3
                            L3_3 = AnimFightList
                            L3_3 = #L3_3
                            if L2_3 < L3_3 then
                              L3_3 = indexCombat
                              L2_3 = L0_2
                              L2_3 = L2_3[L3_3]
                              L1_3 = L2_3.realid
                            end
                            L2_3 = strianoSub
                            L3_3 = "ID: "
                            L4_3 = L1_3
                            L5_3 = " ---> [ SHIF + A ]"
                            L3_3 = L3_3 .. L4_3 .. L5_3
                            L4_3 = true
                            L2_3(L3_3, L4_3)
                            L2_3 = table
                            L2_3 = L2_3.insert
                            L3_3 = tsa
                            L4_3 = L1_3
                            L2_3(L3_3, L4_3)
                            stringaSA = ""
                            L2_3 = 1
                            L3_3 = tsa
                            L3_3 = #L3_3
                            L4_3 = 1
                            for L5_3 = L2_3, L3_3, L4_3 do
                              L6_3 = stringaSA
                              L7_3 = ""
                              L8_3 = tsa
                              L8_3 = L8_3[L5_3]
                              L9_3 = " "
                              L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                              stringaSA = L6_3
                            end
                            L2_3 = MexCreaCombo
                            L2_3()
                            goon = true
                          end
                        else
                          L1_3 = IsControlJustPressed
                          L2_3 = 0
                          L3_3 = 32
                          L1_3 = L1_3(L2_3, L3_3)
                          if L1_3 then
                            L1_3 = tsw
                            L1_3 = #L1_3
                            L2_3 = maxAnimCombo
                            if L1_3 >= L2_3 then
                              L1_3 = strianoSub
                              L2_3 = txt_MaxMoves
                              L3_3 = maxAnimCombo
                              L2_3 = L2_3 .. L3_3
                              L3_3 = true
                              L1_3(L2_3, L3_3)
                              goon = true
                            else
                              L1_3 = indexCombat
                              L2_3 = L0_2
                              L2_3 = #L2_3
                              L3_3 = AnimFightList
                              L3_3 = #L3_3
                              if L2_3 < L3_3 then
                                L3_3 = indexCombat
                                L2_3 = L0_2
                                L2_3 = L2_3[L3_3]
                                L1_3 = L2_3.realid
                              end
                              L2_3 = strianoSub
                              L3_3 = "ID: "
                              L4_3 = L1_3
                              L5_3 = " ---> [ SHIFT + W ]"
                              L3_3 = L3_3 .. L4_3 .. L5_3
                              L4_3 = true
                              L2_3(L3_3, L4_3)
                              L2_3 = table
                              L2_3 = L2_3.insert
                              L3_3 = tsw
                              L4_3 = L1_3
                              L2_3(L3_3, L4_3)
                              stringaSW = ""
                              L2_3 = 1
                              L3_3 = tsw
                              L3_3 = #L3_3
                              L4_3 = 1
                              for L5_3 = L2_3, L3_3, L4_3 do
                                L6_3 = stringaSW
                                L7_3 = ""
                                L8_3 = tsw
                                L8_3 = L8_3[L5_3]
                                L9_3 = " "
                                L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                                stringaSW = L6_3
                              end
                              L2_3 = MexCreaCombo
                              L2_3()
                              goon = true
                            end
                          else
                            L1_3 = IsControlJustPressed
                            L2_3 = 0
                            L3_3 = 35
                            L1_3 = L1_3(L2_3, L3_3)
                            if L1_3 then
                              L1_3 = tsd
                              L1_3 = #L1_3
                              L2_3 = maxAnimCombo
                              if L1_3 >= L2_3 then
                                L1_3 = strianoSub
                                L2_3 = txt_MaxMoves
                                L3_3 = maxAnimCombo
                                L2_3 = L2_3 .. L3_3
                                L3_3 = true
                                L1_3(L2_3, L3_3)
                                goon = true
                              else
                                L1_3 = indexCombat
                                L2_3 = L0_2
                                L2_3 = #L2_3
                                L3_3 = AnimFightList
                                L3_3 = #L3_3
                                if L2_3 < L3_3 then
                                  L3_3 = indexCombat
                                  L2_3 = L0_2
                                  L2_3 = L2_3[L3_3]
                                  L1_3 = L2_3.realid
                                end
                                L2_3 = strianoSub
                                L3_3 = "ID: "
                                L4_3 = L1_3
                                L5_3 = " ---> [ SHIFT + D ]"
                                L3_3 = L3_3 .. L4_3 .. L5_3
                                L4_3 = true
                                L2_3(L3_3, L4_3)
                                L2_3 = table
                                L2_3 = L2_3.insert
                                L3_3 = tsd
                                L4_3 = L1_3
                                L2_3(L3_3, L4_3)
                                stringaSD = ""
                                L2_3 = 1
                                L3_3 = tsd
                                L3_3 = #L3_3
                                L4_3 = 1
                                for L5_3 = L2_3, L3_3, L4_3 do
                                  L6_3 = stringaSD
                                  L7_3 = ""
                                  L8_3 = tsd
                                  L8_3 = L8_3[L5_3]
                                  L9_3 = " "
                                  L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
                                  stringaSD = L6_3
                                end
                                L2_3 = MexCreaCombo
                                L2_3()
                                goon = true
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                else
                  L1_3 = strianoSub
                  L2_3 = txt_HowToDel
                  L1_3(L2_3)
                  L1_3 = IsControlPressed
                  L2_3 = 0
                  L3_3 = 21
                  L1_3 = L1_3(L2_3, L3_3)
                  if not L1_3 then
                    L1_3 = IsDisabledControlPressed
                    L2_3 = 0
                    L3_3 = 21
                    L1_3 = L1_3(L2_3, L3_3)
                    if not L1_3 then
                      L1_3 = IsControlJustPressed
                      L2_3 = 0
                      L3_3 = 34
                      L1_3 = L1_3(L2_3, L3_3)
                      if L1_3 then
                        L1_3 = tnsa
                        L1_3 = #L1_3
                        if 0 == L1_3 then
                          L1_3 = strianoSub
                          L2_3 = txt_NoAnimKey
                          L3_3 = true
                          L1_3(L2_3, L3_3)
                          goon = true
                        else
                          L1_3 = strianoSub
                          L2_3 = txt_DeletedAnim
                          L3_3 = " [ A ]"
                          L2_3 = L2_3 .. L3_3
                          L3_3 = true
                          L1_3(L2_3, L3_3)
                          L1_3 = table
                          L1_3 = L1_3.remove
                          L2_3 = tnsa
                          L3_3 = tnsa
                          L3_3 = #L3_3
                          L1_3(L2_3, L3_3)
                          stringaA = ""
                          L1_3 = 1
                          L2_3 = tnsa
                          L2_3 = #L2_3
                          L3_3 = 1
                          for L4_3 = L1_3, L2_3, L3_3 do
                            L5_3 = stringaA
                            L6_3 = ""
                            L7_3 = tnsa
                            L7_3 = L7_3[L4_3]
                            L8_3 = " "
                            L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                            stringaA = L5_3
                          end
                          L1_3 = MexCreaCombo
                          L1_3()
                          goon = true
                        end
                      else
                        L1_3 = IsControlJustPressed
                        L2_3 = 0
                        L3_3 = 32
                        L1_3 = L1_3(L2_3, L3_3)
                        if L1_3 then
                          L1_3 = tnsw
                          L1_3 = #L1_3
                          if 0 == L1_3 then
                            L1_3 = strianoSub
                            L2_3 = txt_NoAnimKey
                            L3_3 = true
                            L1_3(L2_3, L3_3)
                            goon = true
                          else
                            L1_3 = strianoSub
                            L2_3 = txt_DeletedAnim
                            L3_3 = " [ W ]"
                            L2_3 = L2_3 .. L3_3
                            L3_3 = true
                            L1_3(L2_3, L3_3)
                            L1_3 = table
                            L1_3 = L1_3.remove
                            L2_3 = tnsw
                            L3_3 = tnsw
                            L3_3 = #L3_3
                            L1_3(L2_3, L3_3)
                            stringaW = ""
                            L1_3 = 1
                            L2_3 = tnsw
                            L2_3 = #L2_3
                            L3_3 = 1
                            for L4_3 = L1_3, L2_3, L3_3 do
                              L5_3 = stringaW
                              L6_3 = ""
                              L7_3 = tnsw
                              L7_3 = L7_3[L4_3]
                              L8_3 = " "
                              L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                              stringaW = L5_3
                            end
                            L1_3 = MexCreaCombo
                            L1_3()
                            goon = true
                          end
                        else
                          L1_3 = IsControlJustPressed
                          L2_3 = 0
                          L3_3 = 35
                          L1_3 = L1_3(L2_3, L3_3)
                          if L1_3 then
                            L1_3 = tnsd
                            L1_3 = #L1_3
                            if 0 == L1_3 then
                              L1_3 = strianoSub
                              L2_3 = txt_NoAnimKey
                              L3_3 = true
                              L1_3(L2_3, L3_3)
                              goon = true
                            else
                              L1_3 = strianoSub
                              L2_3 = txt_DeletedAnim
                              L3_3 = " [ D ]"
                              L2_3 = L2_3 .. L3_3
                              L3_3 = true
                              L1_3(L2_3, L3_3)
                              L1_3 = table
                              L1_3 = L1_3.remove
                              L2_3 = tnsd
                              L3_3 = tnsd
                              L3_3 = #L3_3
                              L1_3(L2_3, L3_3)
                              stringaD = ""
                              L1_3 = 1
                              L2_3 = tnsd
                              L2_3 = #L2_3
                              L3_3 = 1
                              for L4_3 = L1_3, L2_3, L3_3 do
                                L5_3 = stringaD
                                L6_3 = ""
                                L7_3 = tnsd
                                L7_3 = L7_3[L4_3]
                                L8_3 = " "
                                L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                                stringaD = L5_3
                              end
                              L1_3 = MexCreaCombo
                              L1_3()
                              goon = true
                            end
                          end
                        end
                      end
                  end
                  else
                    L1_3 = IsControlJustPressed
                    L2_3 = 0
                    L3_3 = 34
                    L1_3 = L1_3(L2_3, L3_3)
                    if L1_3 then
                      L1_3 = tsa
                      L1_3 = #L1_3
                      if 0 == L1_3 then
                        L1_3 = strianoSub
                        L2_3 = txt_NoAnimKey
                        L3_3 = true
                        L1_3(L2_3, L3_3)
                        goon = true
                      else
                        L1_3 = strianoSub
                        L2_3 = txt_DeletedAnim
                        L3_3 = " [ SHIF + A ]"
                        L2_3 = L2_3 .. L3_3
                        L3_3 = true
                        L1_3(L2_3, L3_3)
                        L1_3 = table
                        L1_3 = L1_3.remove
                        L2_3 = tsa
                        L3_3 = tsa
                        L3_3 = #L3_3
                        L1_3(L2_3, L3_3)
                        stringaSA = ""
                        L1_3 = 1
                        L2_3 = tsa
                        L2_3 = #L2_3
                        L3_3 = 1
                        for L4_3 = L1_3, L2_3, L3_3 do
                          L5_3 = stringaSA
                          L6_3 = ""
                          L7_3 = tsa
                          L7_3 = L7_3[L4_3]
                          L8_3 = " "
                          L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                          stringaSA = L5_3
                        end
                        L1_3 = MexCreaCombo
                        L1_3()
                        goon = true
                      end
                    else
                      L1_3 = IsControlJustPressed
                      L2_3 = 0
                      L3_3 = 32
                      L1_3 = L1_3(L2_3, L3_3)
                      if L1_3 then
                        L1_3 = tsw
                        L1_3 = #L1_3
                        if 0 == L1_3 then
                          L1_3 = strianoSub
                          L2_3 = txt_NoAnimKey
                          L3_3 = true
                          L1_3(L2_3, L3_3)
                          goon = true
                        else
                          L1_3 = strianoSub
                          L2_3 = txt_DeletedAnim
                          L3_3 = " [ SHIFT + W ]"
                          L2_3 = L2_3 .. L3_3
                          L3_3 = true
                          L1_3(L2_3, L3_3)
                          L1_3 = table
                          L1_3 = L1_3.remove
                          L2_3 = tsw
                          L3_3 = tsw
                          L3_3 = #L3_3
                          L1_3(L2_3, L3_3)
                          stringaSW = ""
                          L1_3 = 1
                          L2_3 = tsw
                          L2_3 = #L2_3
                          L3_3 = 1
                          for L4_3 = L1_3, L2_3, L3_3 do
                            L5_3 = stringaSW
                            L6_3 = ""
                            L7_3 = tsw
                            L7_3 = L7_3[L4_3]
                            L8_3 = " "
                            L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                            stringaSW = L5_3
                          end
                          L1_3 = MexCreaCombo
                          L1_3()
                          goon = true
                        end
                      else
                        L1_3 = IsControlJustPressed
                        L2_3 = 0
                        L3_3 = 35
                        L1_3 = L1_3(L2_3, L3_3)
                        if L1_3 then
                          L1_3 = tsd
                          L1_3 = #L1_3
                          if 0 == L1_3 then
                            L1_3 = strianoSub
                            L2_3 = txt_NoAnimKey
                            L3_3 = true
                            L1_3(L2_3, L3_3)
                            goon = true
                          else
                            L1_3 = strianoSub
                            L2_3 = txt_DeletedAnim
                            L3_3 = " [ SHIFT + D ]"
                            L2_3 = L2_3 .. L3_3
                            L3_3 = true
                            L1_3(L2_3, L3_3)
                            L1_3 = table
                            L1_3 = L1_3.remove
                            L2_3 = tsd
                            L3_3 = tsd
                            L3_3 = #L3_3
                            L1_3(L2_3, L3_3)
                            stringaSD = ""
                            L1_3 = 1
                            L2_3 = tsd
                            L2_3 = #L2_3
                            L3_3 = 1
                            for L4_3 = L1_3, L2_3, L3_3 do
                              L5_3 = stringaSD
                              L6_3 = ""
                              L7_3 = tsd
                              L7_3 = L7_3[L4_3]
                              L8_3 = " "
                              L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
                              stringaSD = L5_3
                            end
                            L1_3 = MexCreaCombo
                            L1_3()
                            goon = true
                          end
                        end
                      end
                    end
                  end
                end
              else
                L1_3 = Wait
                L2_3 = 250
                L1_3(L2_3)
              end
              ::lbl_781::
              L1_3 = Wait
              L2_3 = 0
              L1_3(L2_3)
            end
          end
          ::lbl_785::
          function L1_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
            L0_4 = indexCombat
            if L0_4 < 1 then
              L0_4 = L0_2
              L0_4 = #L0_4
              indexCombat = L0_4
            end
            L0_4 = indexCombat
            L1_4 = L0_2
            L1_4 = #L1_4
            if L0_4 > L1_4 then
              indexCombat = 1
            end
            L1_4 = indexCombat
            L0_4 = L0_2
            L0_4 = L0_4[L1_4]
            L0_4 = L0_4.a
            L1_4 = GetGameTimer
            L1_4 = L1_4()
            L2_4 = 3000
            L3_4 = DebugRequestAnimDict
            L4_4 = L0_4
            L3_4(L4_4)
            while true do
              L3_4 = HasAnimDictLoaded
              L4_4 = L0_4
              L3_4 = L3_4(L4_4)
              if L3_4 then
                break
              end
              L3_4 = GetGameTimer
              L3_4 = L3_4()
              L3_4 = L3_4 - L1_4
              if not (L2_4 > L3_4) then
                break
              end
              L3_4 = Wait
              L4_4 = 0
              L3_4(L4_4)
            end
            L3_4 = GetGameTimer
            L3_4 = L3_4()
            L3_4 = L3_4 - L1_4
            if L2_4 > L3_4 then
              L3_4 = OnStartCombat
              L4_4 = indexCombat
              L5_4 = true
              L6_4 = L0_2
              L3_4(L4_4, L5_4, L6_4)
              HoRollato = true
              L4_4 = indexCombat
              L3_4 = L0_2
              L3_4 = L3_4[L4_4]
              L3_4 = L3_4.freeze
              if L3_4 then
                L3_4 = FreezeEntityPosition
                L4_4 = L0_3
                L5_4 = true
                L3_4(L4_4, L5_4)
              end
              L3_4 = changeAnimSpeed
              L4_4 = indexCombat
              L3_4 = L3_4(L4_4)
              L4_4 = math
              L4_4 = L4_4.floor
              L5_4 = AnimFightList
              L6_4 = indexCombat
              L5_4 = L5_4[L6_4]
              L5_4 = L5_4.start
              L5_4 = L5_4 / L3_4
              L4_4 = L4_4(L5_4)
              L5_4 = math
              L5_4 = L5_4.floor
              L6_4 = GetAnimDuration
              L7_4 = AnimFightList
              L8_4 = indexCombat
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.a
              L8_4 = AnimFightList
              L9_4 = indexCombat
              L8_4 = L8_4[L9_4]
              L8_4 = L8_4.b
              L6_4 = L6_4(L7_4, L8_4)
              L6_4 = L6_4 * 1000
              L5_4 = L5_4(L6_4)
              L5_4 = L5_4 / L3_4
              L6_4 = AnimFightList
              L7_4 = indexCombat
              L6_4 = L6_4[L7_4]
              L6_4 = L6_4.tim
              if 999999 == L6_4 then
                L6_4 = AnimFightList
                L7_4 = indexCombat
                L6_4 = L6_4[L7_4]
                L6_4.tim = L5_4
              end
              L6_4 = math
              L6_4 = L6_4.floor
              L7_4 = AnimFightList
              L8_4 = indexCombat
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.tim
              L7_4 = L7_4 / L3_4
              L6_4 = L6_4(L7_4)
              L7_4 = StartCombatAnim
              L8_4 = L0_3
              L10_4 = indexCombat
              L9_4 = L0_2
              L9_4 = L9_4[L10_4]
              L9_4 = L9_4.a
              L11_4 = indexCombat
              L10_4 = L0_2
              L10_4 = L10_4[L11_4]
              L10_4 = L10_4.b
              L11_4 = L6_4
              L12_4 = L3_4
              L7_4(L8_4, L9_4, L10_4, L11_4, L12_4)
              L7_4 = DebugCopy
              L9_4 = indexCombat
              L8_4 = L0_2
              L8_4 = L8_4[L9_4]
              L8_4 = L8_4.b
              L7_4(L8_4)
              L7_4 = IsEntityAttached
              L8_4 = L0_3
              L7_4 = L7_4(L8_4)
              if L7_4 then
                grandezzaEnemy = 1.3
              end
              L8_4 = indexCombat
              L7_4 = L0_2
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.slow
              if L7_4 then
                L7_4 = CollMe
                L7_4()
              end
              L7_4 = Wait
              L8_4 = L4_4
              L7_4(L8_4)
              L7_4 = DashMePreview
              L8_4 = L0_2
              L9_4 = indexCombat
              L7_4(L8_4, L9_4)
              L8_4 = indexCombat
              L7_4 = L0_2
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.bones
              BonesCheck = L7_4
              L7_4 = {}
              BonesCheck = L7_4
              L8_4 = indexCombat
              L7_4 = L0_2
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.freeze
              if L7_4 then
                L7_4 = FreezeEntityPosition
                L8_4 = L0_3
                L9_4 = false
                L7_4(L8_4, L9_4)
              end
              HoRollato = false
              L7_4 = EndRoll
              L7_4()
            else
              L3_4 = print
              L4_4 = ""
              L6_4 = indexCombat
              L5_4 = L0_2
              L5_4 = L5_4[L6_4]
              L5_4 = L5_4.a
              L6_4 = " "
              L8_4 = indexCombat
              L7_4 = L0_2
              L7_4 = L7_4[L8_4]
              L7_4 = L7_4.b
              L8_4 = " NOT EXIST! Report to strianoDev please!"
              L4_4 = L4_4 .. L5_4 .. L6_4 .. L7_4 .. L8_4
              L3_4(L4_4)
            end
          end
          L3_3 = indexCombat
          L2_3 = L0_2
          L2_3 = L2_3[L3_3]
          if L2_3 then
            L2_3 = draw_ManageMove
            L3_3 = indexCombat
            L4_3 = L0_2
            L2_3(L3_3, L4_3)
            L2_3 = IsControlJustPressed
            L3_3 = 0
            L4_3 = 74
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsDisabledControlJustPressed
              L3_3 = 0
              L4_3 = 74
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                goto lbl_810
              end
            end
            L2_3 = L1_3
            L2_3()
            goto lbl_894
            ::lbl_810::
            L2_3 = IsDisabledControlJustPressed
            L3_3 = 0
            L4_3 = 26
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = strianoSub
              L3_3 = ""
              L2_3(L3_3)
              L2_3 = OpenInput
              L3_3 = "ID 1-"
              L4_3 = L0_2
              L4_3 = #L4_3
              L3_3 = L3_3 .. L4_3
              L2_3 = L2_3(L3_3)
              L3_3 = tonumber
              L4_3 = L2_3
              L3_3 = L3_3(L4_3)
              if nil ~= L3_3 then
                L4_3 = L0_2
                L4_3 = #L4_3
                if L3_3 <= L4_3 then
                  indexCombat = L3_3
                  L4_3 = L1_3
                  L4_3()
                end
              end
            else
              L2_3 = IsControlJustPressed
              L3_3 = 0
              L4_3 = 175
              L2_3 = L2_3(L3_3, L4_3)
              if L2_3 then
                L2_3 = indexCombat
                L3_3 = L0_2
                L3_3 = #L3_3
                if L2_3 < L3_3 then
                  L2_3 = indexCombat
                  L2_3 = L2_3 + 1
                  indexCombat = L2_3
                else
                  indexCombat = 1
                end
                CombatActive = false
                L2_3 = L1_3
                L2_3()
              else
                L2_3 = IsControlJustPressed
                L3_3 = 0
                L4_3 = 174
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = indexCombat
                  if L2_3 > 1 then
                    L2_3 = indexCombat
                    L2_3 = L2_3 - 1
                    indexCombat = L2_3
                  else
                    L2_3 = L0_2
                    L2_3 = #L2_3
                    indexCombat = L2_3
                  end
                  CombatActive = false
                  L2_3 = L1_3
                  L2_3()
                end
              end
            end
          else
            closeall = false
            inAnimList = false
            L2_3 = SendNUIMessage
            L3_3 = {}
            L3_3.action = "hide0"
            L2_3(L3_3)
            L2_3 = strianoSub
            L3_3 = ""
            L2_3(L3_3)
            L2_3 = FlagAnimBase
            IDFLAG = L2_3
            editorcombatopen = false
            return
          end
          ::lbl_894::
          L2_3 = IsControlJustPressed
          L3_3 = 0
          L4_3 = 73
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = closeall
          end
          if L2_3 then
            L2_3 = Wait
            L3_3 = 25
            L2_3(L3_3)
            closeall = false
            inAnimList = false
            L2_3 = SendNUIMessage
            L3_3 = {}
            L3_3.action = "hide0"
            L2_3(L3_3)
            L2_3 = strianoSub
            L3_3 = ""
            L2_3(L3_3)
            L2_3 = FlagAnimBase
            IDFLAG = L2_3
            editorcombatopen = false
            L2_3 = TriggerServerEvent
            L3_3 = "combat:setalpha"
            L4_3 = GetPlayerServerId
            L5_3 = PlayerId
            L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3()
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
            L5_3 = 255
            L2_3(L3_3, L4_3, L5_3)
            return
          end
        else
          L1_3 = Wait
          L2_3 = 250
          L1_3(L2_3)
        end
      end
      editorcombatopen = false
    end
    L1_2(L2_2)
  end
end
CombatListFull = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = AnimFightList
  if A0_2 < 1 then
    A0_2 = #L1_2
  end
  L2_2 = #L1_2
  if A0_2 > L2_2 then
    A0_2 = 1
  end
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.a
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = 3000
  L5_2 = DebugRequestAnimDict
  L6_2 = L2_2
  L5_2(L6_2)
  while true do
    L5_2 = HasAnimDictLoaded
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L5_2 = L5_2 - L3_2
    if not (L4_2 > L5_2) then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 - L3_2
  if L4_2 > L5_2 then
    L5_2 = OnStartCombat
    L6_2 = A0_2
    L7_2 = true
    L8_2 = L1_2
    L5_2(L6_2, L7_2, L8_2)
    HoRollato = true
    L5_2 = L1_2[A0_2]
    L5_2 = L5_2.freeze
    if L5_2 then
      L5_2 = FreezeEntityPosition
      L6_2 = ped
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
    L5_2 = changeAnimSpeed
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L1_2[A0_2]
    L7_2 = L7_2.start
    L7_2 = L7_2 / L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = GetAnimDuration
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.a
    L10_2 = L1_2[A0_2]
    L10_2 = L10_2.b
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2 * 1000
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 / L5_2
    L8_2 = L1_2[A0_2]
    L8_2 = L8_2.tim
    if 999999 == L8_2 then
      L8_2 = L1_2[A0_2]
      L8_2.tim = L7_2
    end
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.tim
    L9_2 = L9_2 / L5_2
    L8_2 = L8_2(L9_2)
    if L7_2 < L8_2 then
      L8_2 = L7_2 - 50
    end
    L9_2 = StartCombatAnim
    L10_2 = ped
    L11_2 = L1_2[A0_2]
    L11_2 = L11_2.a
    L12_2 = L1_2[A0_2]
    L12_2 = L12_2.b
    L13_2 = L8_2
    L14_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = DebugCopy
    L10_2 = L1_2[A0_2]
    L10_2 = L10_2.b
    L9_2(L10_2)
    L9_2 = IsEntityAttached
    L10_2 = ped
    L9_2 = L9_2(L10_2)
    if L9_2 then
      grandezzaEnemy = 1.3
    end
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.slow
    if L9_2 then
      L9_2 = CollMe
      L9_2()
    end
    L9_2 = Wait
    L10_2 = L6_2
    L9_2(L10_2)
    L9_2 = DashMePreview
    L10_2 = L1_2
    L11_2 = A0_2
    L9_2(L10_2, L11_2)
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.bones
    BonesCheck = L9_2
    L9_2 = Wait
    L10_2 = L8_2
    L9_2(L10_2)
    L9_2 = {}
    BonesCheck = L9_2
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.freeze
    if L9_2 then
      L9_2 = FreezeEntityPosition
      L10_2 = ped
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
    HoRollato = false
    L9_2 = EndRoll
    L9_2()
  else
    L5_2 = print
    L6_2 = "LOOK HERE! "
    L7_2 = L1_2[A0_2]
    L7_2 = L7_2.a
    L8_2 = " "
    L9_2 = L1_2[A0_2]
    L9_2 = L9_2.b
    L10_2 = " THIS ANIM NOT EXIST!! HEEEEEY!"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2(L6_2)
  end
end
PreviewMove = L4_1
nextDefensePress = 0
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = castingSpell
  if not L1_2 then
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 32
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = 33
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = IsControlPressed
        L2_2 = 0
        L3_2 = 34
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = IsControlPressed
          L2_2 = 0
          L3_2 = 35
          L1_2 = L1_2(L2_2, L3_2)
        end
      end
    end
    L2_2 = CanCombatCheck
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = inblockfunc
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = GetEntitySpeed
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        L3_2 = 0.05
        if L2_2 < L3_2 then
          L2_2 = ClearPedSecondaryTask
          L3_2 = A0_2
          L2_2(L3_2)
          L2_2 = ClearPedTasks
          L3_2 = A0_2
          L2_2(L3_2)
        end
      end
    end
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.incombatanim
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedSwimming
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = IsPedSwimmingUnderWater
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = exports
          L2_2 = L2_2.striano_combat
          L3_2 = L2_2
          L2_2 = L2_2.inroll
          L2_2 = L2_2(L3_2)
          if not L2_2 then
            L2_2 = IsPedRagdoll
            L3_2 = A0_2
            L2_2 = L2_2(L3_2)
            if not L2_2 then
              L2_2 = UltimaMossa
              if 0 == L2_2 then
                L2_2 = inSpellAnim
                L3_2 = A0_2
                L2_2 = L2_2(L3_2)
                if not L2_2 then
                  L2_2 = IsEntityPlayingAnim
                  L3_2 = A0_2
                  L4_2 = "hit_react_heavy_front_knockback_stagger"
                  L5_2 = "hit_react_heavy_front_knockback_stagger_clip"
                  L6_2 = 3
                  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
                  if not L2_2 then
                    L2_2 = getStyleCombat
                    L2_2 = L2_2()
                    L3_2 = castingSpell
                    if not L3_2 then
                      L3_2 = IsDisabledControlPressed
                      L4_2 = 0
                      L5_2 = tastoDifesa
                      L3_2 = L3_2(L4_2, L5_2)
                      if not L3_2 then
                        L3_2 = IsDisabledControlPressed
                        L4_2 = 0
                        L5_2 = tastoDifesa
                        L3_2 = L3_2(L4_2, L5_2)
                        if not L3_2 then
                          L3_2 = IsDisabledControlPressed
                          L4_2 = 0
                          L5_2 = 24
                          L3_2 = L3_2(L4_2, L5_2)
                          if not L3_2 then
                            L3_2 = IsControlPressed
                            L4_2 = 0
                            L5_2 = 24
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = IsDisabledControlPressed
                              L4_2 = 0
                              L5_2 = 22
                              L3_2 = L3_2(L4_2, L5_2)
                              if not L3_2 then
                                L3_2 = HoRollato
                                if not L3_2 then
                                  L3_2 = IsEntityPlayingAnim
                                  L4_2 = A0_2
                                  L5_2 = "hit_react_left_leg_stumble_knockdown"
                                  L6_2 = "hit_react_left_leg_stumble_knockdown_clip"
                                  L7_2 = 3
                                  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                                  if not L3_2 then
                                    L3_2 = CombatActive
                                    if L3_2 then
                                      L3_2 = IsPedInAnyVehicle
                                      L4_2 = A0_2
                                      L3_2 = L3_2(L4_2)
                                      if not L3_2 then
                                        L3_2 = FeritoCombat
                                        L3_2 = L3_2()
                                        if not L3_2 then
                                          L3_2 = GetSelectedPedWeapon
                                          L4_2 = A0_2
                                          L3_2 = L3_2(L4_2)
                                          if -1569615261 == L3_2 then
                                            L3_2 = IsPedArmed
                                            L4_2 = A0_2
                                            L5_2 = 7
                                            L3_2 = L3_2(L4_2, L5_2)
                                            if not L3_2 then
                                              L3_2 = ImACreaturePed
                                              L4_2 = A0_2
                                              L3_2 = L3_2(L4_2)
                                              if not L3_2 then
                                                L3_2 = GetEntitySpeed
                                                L4_2 = A0_2
                                                L3_2 = L3_2(L4_2)
                                                L4_2 = 0.3
                                                if L3_2 < L4_2 then
                                                  L3_2 = IsEntityAttached
                                                  L4_2 = A0_2
                                                  L3_2 = L3_2(L4_2)
                                                  if L3_2 then
                                                    L3_2 = Sfoggiate
                                                  end
                                                  if L3_2 then
                                                    L3_2 = LoadIdleFight
                                                    L4_2 = L2_2.Idle
                                                    L3_2(L4_2)
                                                  end
                                                else
                                                  L3_2 = UltimaMossa
                                                  if L3_2 > 0 then
                                                    L3_2 = IsEntityPlayingAnim
                                                    L4_2 = A0_2
                                                    L5_2 = AnimFightList
                                                    L6_2 = UltimaMossa
                                                    L5_2 = L5_2[L6_2]
                                                    L5_2 = L5_2.a
                                                    L6_2 = AnimFightList
                                                    L7_2 = UltimaMossa
                                                    L6_2 = L6_2[L7_2]
                                                    L6_2 = L6_2.b
                                                    L7_2 = 3
                                                    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                                                    if L3_2 then
                                                      L3_2 = IsEntityPlayingAnim
                                                      L4_2 = A0_2
                                                      L5_2 = "move_action@generic@2h_melee_weapon@idles@high_energy@a"
                                                      L6_2 = "idle"
                                                      L7_2 = 3
                                                      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                                                      if not L3_2 then
                                                        L3_2 = faiAnim
                                                        L4_2 = "move_action@generic@2h_melee_weapon@idles@high_energy@a"
                                                        L5_2 = "idle"
                                                        L6_2 = -1
                                                        L7_2 = 49
                                                        L3_2(L4_2, L5_2, L6_2, L7_2)
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                              end
                            end
                          end
                        end
                      end
                    end
                    else
                      L3_2 = IsDisabledControlPressed
                      L4_2 = 0
                      L5_2 = tastoDifesa
                      L3_2 = L3_2(L4_2, L5_2)
                      if L3_2 then
                        L3_2 = IsEntityPlayingAnim
                        L4_2 = A0_2
                        L5_2 = "magic@motions_left_hand_beam_struggle"
                        L6_2 = "magic@motions_left_hand_beam_struggle_clip"
                        L7_2 = 1
                        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                        if not L3_2 then
                          L3_2 = IsPedRagdoll
                          L4_2 = A0_2
                          L3_2 = L3_2(L4_2)
                          if not L3_2 then
                            L3_2 = IsDisabledControlPressed
                            L4_2 = 0
                            L5_2 = 22
                            L3_2 = L3_2(L4_2, L5_2)
                            if not L3_2 then
                              L3_2 = HoRollato
                              if not L3_2 then
                                L3_2 = IsEntityPlayingAnim
                                L4_2 = A0_2
                                L5_2 = "hit_react_heavy_front_knockback_stagger"
                                L6_2 = "hit_react_heavy_front_knockback_stagger_clip"
                                L3_2 = L3_2(L4_2, L5_2, L6_2)
                                if not L3_2 then
                                  L3_2 = IsPedRagdoll
                                  L4_2 = A0_2
                                  L3_2 = L3_2(L4_2)
                                  if not L3_2 then
                                    L3_2 = IsEntityPlayingAnim
                                    L4_2 = A0_2
                                    L5_2 = "hit_react_heavy_front_knockback_stagger"
                                    L6_2 = "hit_react_heavy_front_knockback_stagger_clip"
                                    L7_2 = 3
                                    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                                    if not L3_2 then
                                      L3_2 = GetGameTimer
                                      L3_2 = L3_2()
                                      L4_2 = nextDefensePress
                                      if L3_2 >= L4_2 then
                                        L4_2 = getStyleCombat
                                        L4_2 = L4_2()
                                        L5_2 = 50
                                        L6_2 = L3_2 + 250
                                        nextDefensePress = L6_2
                                        L6_2 = myShield
                                        if L6_2 > 0 then
                                          L6_2 = Sfoggiate
                                          if L6_2 then
                                            L6_2 = SwordList
                                            L7_2 = mySword
                                            L6_2 = L6_2[L7_2]
                                            L6_2 = L6_2.m2
                                            if nil == L6_2 then
                                              L6_2 = ImACreaturePed
                                              L7_2 = A0_2
                                              L6_2 = L6_2(L7_2)
                                              if not L6_2 then
                                                L6_2 = L4_2.Block
                                                L6_2.a = "weapons@projectile@"
                                                L6_2 = L4_2.Block
                                                L6_2.b = "aimlive_m"
                                                L6_2 = IsEntityVisible
                                                L7_2 = A0_2
                                                L6_2 = L6_2(L7_2)
                                                if L6_2 then
                                                  L6_2 = DoesEntityExist
                                                  L7_2 = ShieldObj
                                                  L6_2 = L6_2(L7_2)
                                                  if L6_2 then
                                                    L6_2 = DetachEntity
                                                    L7_2 = ShieldObj
                                                    L6_2(L7_2)
                                                    L6_2 = ShieldList
                                                    L7_2 = myShield
                                                    L6_2 = L6_2[L7_2]
                                                    L6_2 = L6_2.att
                                                    L7_2 = table
                                                    L7_2 = L7_2.unpack
                                                    L8_2 = L6_2
                                                    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
                                                    f = L12_2
                                                    e = L11_2
                                                    d = L10_2
                                                    c = L9_2
                                                    b = L8_2
                                                    a = L7_2
                                                    L7_2 = AttachEntityToEntity
                                                    L8_2 = ShieldObj
                                                    L9_2 = A0_2
                                                    L10_2 = GetPedBoneIndex
                                                    L11_2 = A0_2
                                                    L12_2 = ShieldList
                                                    L13_2 = myShield
                                                    L12_2 = L12_2[L13_2]
                                                    L12_2 = L12_2.bone
                                                    L10_2 = L10_2(L11_2, L12_2)
                                                    L11_2 = a
                                                    L12_2 = b
                                                    L13_2 = c
                                                    L14_2 = d
                                                    L15_2 = e
                                                    L16_2 = f
                                                    L17_2 = true
                                                    L18_2 = true
                                                    L19_2 = false
                                                    L20_2 = true
                                                    L21_2 = 1
                                                    L22_2 = true
                                                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                        L6_2 = false
                                        L7_2 = mySword
                                        if L7_2 > 0 then
                                          L7_2 = Sfoggiate
                                          if L7_2 then
                                            L7_2 = SwordList
                                            L8_2 = mySword
                                            L7_2 = L7_2[L8_2]
                                            L7_2 = L7_2.Name
                                            L8_2 = string
                                            L8_2 = L8_2.find
                                            L9_2 = L7_2
                                            L10_2 = KnuckleName
                                            L8_2 = L8_2(L9_2, L10_2)
                                            if L8_2 then
                                              L8_2 = "rc_dual_guns_set"
                                              L9_2 = "rc_dual_guns_idle_pose_1_clip"
                                              L10_2 = IsEntityPlayingAnim
                                              L11_2 = A0_2
                                              L12_2 = L8_2
                                              L13_2 = L9_2
                                              L14_2 = 3
                                              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                                              if not L10_2 then
                                                L10_2 = LoadAnim
                                                L11_2 = L8_2
                                                L10_2(L11_2)
                                                L10_2 = TaskPlayAnim
                                                L11_2 = A0_2
                                                L12_2 = L8_2
                                                L13_2 = L9_2
                                                L14_2 = 8.0
                                                L15_2 = 8.0
                                                L16_2 = -1
                                                L17_2 = L5_2
                                                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                                              end
                                            else
                                              L6_2 = true
                                            end
                                          end
                                        end
                                        if L6_2 then
                                          L7_2 = ImACreaturePed
                                          L8_2 = A0_2
                                          L7_2 = L7_2(L8_2)
                                          if L7_2 then
                                            L7_2 = "rc_dual_guns_set"
                                            L8_2 = "rc_dual_guns_idle_pose_1_clip"
                                            L9_2 = IsEntityPlayingAnim
                                            L10_2 = A0_2
                                            L11_2 = L7_2
                                            L12_2 = L8_2
                                            L13_2 = 3
                                            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
                                            if not L9_2 then
                                              L9_2 = LoadAnim
                                              L10_2 = L7_2
                                              L9_2(L10_2)
                                              L9_2 = TaskPlayAnim
                                              L10_2 = A0_2
                                              L11_2 = L7_2
                                              L12_2 = L8_2
                                              L13_2 = 8.0
                                              L14_2 = 8.0
                                              L15_2 = -1
                                              L16_2 = L5_2
                                              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                                            end
                                          else
                                            L7_2 = IsEntityPlayingAnim
                                            L8_2 = A0_2
                                            L9_2 = L4_2.Block
                                            L9_2 = L9_2.a
                                            L10_2 = L4_2.Block
                                            L10_2 = L10_2.b
                                            L11_2 = 3
                                            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
                                            if not L7_2 then
                                              L7_2 = LoadAnim
                                              L8_2 = L4_2.Block
                                              L8_2 = L8_2.a
                                              L7_2(L8_2)
                                              L7_2 = TaskPlayAnim
                                              L8_2 = A0_2
                                              L9_2 = L4_2.Block
                                              L9_2 = L9_2.a
                                              L10_2 = L4_2.Block
                                              L10_2 = L10_2.b
                                              L11_2 = 8.0
                                              L12_2 = 8.0
                                              L13_2 = -1
                                              L14_2 = L5_2
                                              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      else
                        L3_2 = ResetStrafe
                        L4_2 = A0_2
                        L3_2(L4_2)
                      end
                    end
                    L3_2 = Wait
                    L4_2 = 25
                    L3_2(L4_2)
                    L3_2 = CombatActive
                    if L3_2 then
                      L3_2 = exports
                      L3_2 = L3_2.striano_combat
                      L4_2 = L3_2
                      L3_2 = L3_2.incombatanim
                      L3_2 = L3_2(L4_2)
                      if not L3_2 then
                        L3_2 = IsDisabledControlPressed
                        L4_2 = 0
                        L5_2 = tastoDifesa
                        L3_2 = L3_2(L4_2, L5_2)
                        if not L3_2 then
                          L3_2 = IsControlPressed
                          L4_2 = 0
                          L5_2 = tastoDifesa
                          L3_2 = L3_2(L4_2, L5_2)
                          if not L3_2 then
                            L3_2 = false
                            L4_2 = mySword
                            if L4_2 > 0 then
                              L4_2 = Sfoggiate
                              if L4_2 then
                                L4_2 = SwordList
                                L5_2 = mySword
                                L4_2 = L4_2[L5_2]
                                L4_2 = L4_2.Name
                                L5_2 = string
                                L5_2 = L5_2.find
                                L6_2 = L4_2
                                L7_2 = KnuckleName
                                L5_2 = L5_2(L6_2, L7_2)
                                if L5_2 then
                                  L5_2 = "rc_dual_guns_set"
                                  L6_2 = "rc_dual_guns_idle_pose_1_clip"
                                  L7_2 = IsEntityPlayingAnim
                                  L8_2 = A0_2
                                  L9_2 = L5_2
                                  L10_2 = L6_2
                                  L11_2 = 3
                                  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
                                  if L7_2 then
                                    L7_2 = ResetStrafe
                                    L8_2 = A0_2
                                    L7_2(L8_2)
                                  end
                                else
                                  L3_2 = true
                                end
                              end
                            end
                            if L3_2 then
                              L4_2 = ImACreaturePed
                              L5_2 = A0_2
                              L4_2 = L4_2(L5_2)
                              if L4_2 then
                                L4_2 = "rc_dual_guns_set"
                                L5_2 = "rc_dual_guns_idle_pose_1_clip"
                                L6_2 = IsEntityPlayingAnim
                                L7_2 = A0_2
                                L8_2 = L4_2
                                L9_2 = L5_2
                                L10_2 = 3
                                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                                if L6_2 then
                                  L6_2 = ResetStrafe
                                  L7_2 = A0_2
                                  L6_2(L7_2)
                                end
                              else
                                L4_2 = IsEntityPlayingAnim
                                L5_2 = A0_2
                                L6_2 = L2_2.Block
                                L6_2 = L6_2.a
                                L7_2 = L2_2.Block
                                L7_2 = L7_2.b
                                L8_2 = 3
                                L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
                                if L4_2 then
                                  L4_2 = ResetStrafe
                                  L5_2 = A0_2
                                  L4_2(L5_2)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if not L1_2 then
      L2_2 = ResetStrafeImmediately
      L3_2 = A0_2
      L2_2(L3_2)
    end
  end
end
IdleStrafe = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = castingSpell
  if not L1_2 then
    L1_2 = inLeviosa
    if not L1_2 then
      L1_2 = IsPedRagdoll
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = CanCombatCheck
        L1_2 = L1_2()
        if L1_2 then
          L1_2 = ResetStrafeImmediately
          L2_2 = A0_2
          L1_2(L2_2)
          L1_2 = inSpellAnim
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.inroll
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = "hit_react_heavy_front_knockback_stagger"
              L4_2 = "hit_react_heavy_front_knockback_stagger_clip"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = libstrafe
                L4_2 = strafe_fw
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = libstrafe
                  L4_2 = strafe_bk
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = libstrafe
                    L4_2 = currentStance
                    L5_2 = "bwd_-90_loop"
                    L4_2 = L4_2 .. L5_2
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = libstrafe
                      L4_2 = currentStance
                      L5_2 = "fwd_90_loop"
                      L4_2 = L4_2 .. L5_2
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if not L1_2 then
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = libstrafe
                        L4_2 = currentStance
                        L5_2 = "bwd_135_loop"
                        L4_2 = L4_2 .. L5_2
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          L1_2 = IsEntityPlayingAnim
                          L2_2 = A0_2
                          L3_2 = libstrafe
                          L4_2 = currentStance
                          L5_2 = "bwd_-135_loop"
                          L4_2 = L4_2 .. L5_2
                          L5_2 = 3
                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                          if not L1_2 then
                            L1_2 = IsEntityPlayingAnim
                            L2_2 = A0_2
                            L3_2 = libstrafe
                            L4_2 = currentStance
                            L5_2 = "fwd_45_loop"
                            L4_2 = L4_2 .. L5_2
                            L5_2 = 3
                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                            if not L1_2 then
                              L1_2 = IsEntityPlayingAnim
                              L2_2 = A0_2
                              L3_2 = libstrafe
                              L4_2 = currentStance
                              L5_2 = "fwd_-45_loop"
                              L4_2 = L4_2 .. L5_2
                              L5_2 = 3
                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                              if not L1_2 then
                                L1_2 = IsEntityPlayingAnim
                                L2_2 = A0_2
                                L3_2 = "move_strafe@grenade"
                                L4_2 = "walk_fwd_0_loop"
                                L5_2 = 3
                                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                if not L1_2 then
                                  L1_2 = IsEntityPlayingAnim
                                  L2_2 = A0_2
                                  L3_2 = "move_strafe@grenade"
                                  L4_2 = "run_fwd_0_loop"
                                  L5_2 = 3
                                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                  if not L1_2 then
                                    L1_2 = IsEntityPlayingAnim
                                    L2_2 = A0_2
                                    L3_2 = "melee@wfire@beast_werewolf_animset"
                                    L4_2 = "wfire_wmg_were_beast_slow_right45_walk_clip"
                                    L5_2 = 3
                                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                    if not L1_2 then
                                      L1_2 = IsEntityPlayingAnim
                                      L2_2 = A0_2
                                      L3_2 = "melee@wfire@beast_werewolf_animset"
                                      L4_2 = "wfire_wmg_were_beast_slow_left45_walk_clip"
                                      L5_2 = 3
                                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                      if not L1_2 then
                                        L1_2 = IsEntityPlayingAnim
                                        L2_2 = A0_2
                                        L3_2 = "melee@wfire@beast_werewolf_animset"
                                        L4_2 = "wfire_wmg_werewolf_beast_forward_walk_clip"
                                        L5_2 = 3
                                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                        if not L1_2 then
                                          L1_2 = IsEntityPlayingAnim
                                          L2_2 = A0_2
                                          L3_2 = "melee@wfire@beast_werewolf_animset"
                                          L4_2 = "wfire_wmg_were_beast_right_slow_walk_clip"
                                          L5_2 = 3
                                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                          if not L1_2 then
                                            L1_2 = IsEntityPlayingAnim
                                            L2_2 = A0_2
                                            L3_2 = "melee@wfire@beast_werewolf_animset"
                                            L4_2 = "wfire_wmg_were_beast_slow_left_walk_clip"
                                            L5_2 = 3
                                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                            if not L1_2 then
                                              goto lbl_230
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                L1_2 = IsControlJustReleased
                L2_2 = 0
                L3_2 = 32
                L1_2 = L1_2(L2_2, L3_2)
                if not L1_2 then
                  L1_2 = IsControlJustReleased
                  L2_2 = 0
                  L3_2 = 33
                  L1_2 = L1_2(L2_2, L3_2)
                  if not L1_2 then
                    L1_2 = IsControlJustReleased
                    L2_2 = 0
                    L3_2 = 34
                    L1_2 = L1_2(L2_2, L3_2)
                    if not L1_2 then
                      L1_2 = IsControlJustReleased
                      L2_2 = 0
                      L3_2 = 35
                      L1_2 = L1_2(L2_2, L3_2)
                    end
                  end
                end
                if L1_2 then
                  L2_2 = IsControlPressed
                  L3_2 = 0
                  L4_2 = 32
                  L2_2 = L2_2(L3_2, L4_2)
                  if not L2_2 then
                    L2_2 = IsControlPressed
                    L3_2 = 0
                    L4_2 = 33
                    L2_2 = L2_2(L3_2, L4_2)
                    if not L2_2 then
                      L2_2 = IsControlPressed
                      L3_2 = 0
                      L4_2 = 34
                      L2_2 = L2_2(L3_2, L4_2)
                      if not L2_2 then
                        L2_2 = IsControlPressed
                        L3_2 = 0
                        L4_2 = 35
                        L2_2 = L2_2(L3_2, L4_2)
                      end
                    end
                  end
                  if not L2_2 then
                    L3_2 = inFinisher
                    if not L3_2 then
                      L3_2 = ClearPedSecondaryTask
                      L4_2 = A0_2
                      L3_2(L4_2)
                      L3_2 = ClearPedTasks
                      L4_2 = A0_2
                      L3_2(L4_2)
                    end
                  end
                end
                L2_2 = ApplyHeavyStandWeap
                L2_2()
                lastClipStrafe = ""
              end
            end
          end
        end
      end
    end
  end
  ::lbl_230::
end
ResetStrafe = L4_1
L4_1 = {}
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 or "" == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L4_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 10
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = print
      L3_2 = "[LoadAnimDict] timeout:"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = L4_1
  L2_2[A0_2] = true
  L2_2 = true
  return L2_2
end
L6_1 = 0
L7_1 = 150
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L6_1
  L1_2 = L0_2 - L1_2
  L2_2 = L7_1
  if L1_2 < L2_2 then
    L1_2 = false
    return L1_2
  end
  L6_1 = L0_2
  L1_2 = true
  return L1_2
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = AnimFightList
  L4_2 = indexCombat
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.a
  L4_2 = AnimFightList
  L5_2 = indexCombat
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.b
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 then
    return
  end
  L1_2 = {}
  L1_2.a = "move_action@generic@core"
  L1_2.b = "idle_turn_l_-90"
  L2_2 = {}
  L2_2.a = "move_action@generic@core"
  L2_2.b = "idle_turn_r_90"
  L3_2 = L5_1
  L4_2 = L1_2.a
  L3_2(L4_2)
  L3_2 = L5_1
  L4_2 = L2_2.a
  L3_2(L4_2)
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = IsEntityPlayingAnim
    L2_3 = A0_3
    L3_3 = L1_2.a
    L4_3 = L1_2.b
    L5_3 = 3
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if not L1_3 then
      L1_3 = castingSpell
      if not L1_3 then
        L1_3 = IsPedSwimming
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedSwimmingUnderWater
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = TaskPlayAnim
            L2_3 = A0_3
            L3_3 = L1_2.a
            L4_3 = L1_2.b
            L5_3 = 2.4
            L6_3 = 2.4
            L7_3 = 700
            L8_3 = 1
            L9_3 = 0
            L10_3 = false
            L11_3 = false
            L12_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          end
        end
      end
    end
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = IsEntityPlayingAnim
    L2_3 = A0_3
    L3_3 = L2_2.a
    L4_3 = L2_2.b
    L5_3 = 3
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if not L1_3 then
      L1_3 = castingSpell
      if not L1_3 then
        L1_3 = IsPedSwimming
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedSwimmingUnderWater
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = TaskPlayAnim
            L2_3 = A0_3
            L3_3 = L2_2.a
            L4_3 = L2_2.b
            L5_3 = 2.4
            L6_3 = 2.4
            L7_3 = 700
            L8_3 = 1
            L9_3 = 0
            L10_3 = false
            L11_3 = false
            L12_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          end
        end
      end
    end
  end
  L5_2 = getStyleCombat
  L5_2 = L5_2()
  L6_2 = inLeviosa
  if not L6_2 then
    L6_2 = inFinisher
    if not L6_2 then
      L6_2 = CombatActive
      if not L6_2 then
        L6_2 = CanCombatCheck
        L6_2 = L6_2()
        if L6_2 then
          L6_2 = exports
          L6_2 = L6_2.striano_combat
          L7_2 = L6_2
          L6_2 = L6_2.inroll
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = IsEntityPlayingAnim
            L7_2 = L0_2
            L8_2 = "magic@motions_lift_up_and_crush"
            L9_2 = "magic@motions_lift_up_and_crush_clip"
            L10_2 = 1
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
            if not L6_2 then
              L6_2 = IsEntityPlayingAnim
              L7_2 = L0_2
              L8_2 = "magic@motions_left_hand_beam_struggle"
              L9_2 = "magic@motions_left_hand_beam_struggle_clip"
              L10_2 = 1
              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
              if not L6_2 then
                L6_2 = putNearCameraOnCombat
                if L6_2 then
                  L6_2 = SetFollowPedCamViewMode
                  L7_2 = 4
                  L6_2(L7_2)
                  L6_2 = SfoggiatoBow
                  if not L6_2 then
                    L6_2 = SetFollowPedCamViewMode
                    L7_2 = 2
                    L6_2(L7_2)
                    L6_2 = SetCamViewModeForContext
                    L7_2 = GetCamActiveViewModeContext
                    L7_2 = L7_2()
                    L8_2 = 2
                    L6_2(L7_2, L8_2)
                  else
                    L6_2 = SetFollowPedCamViewMode
                    L7_2 = 0
                    L6_2(L7_2)
                    L6_2 = SetCamViewModeForContext
                    L7_2 = GetCamActiveViewModeContext
                    L7_2 = L7_2()
                    L8_2 = 0
                    L6_2(L7_2, L8_2)
                  end
                  L6_2 = DisableControlAction
                  L7_2 = 0
                  L8_2 = 0
                  L9_2 = true
                  L6_2(L7_2, L8_2, L9_2)
                  L6_2 = DisableFirstPersonCamThisFrame
                  L6_2()
                end
                L6_2 = FiatoneCapriola
                L7_2 = maxStamina
                if L6_2 == L7_2 then
                  L6_2 = CreateThread
                  function L7_2()
                    local L0_3, L1_3, L2_3, L3_3, L4_3
                    while true do
                      L0_3 = CombatActive
                      if not L0_3 then
                        L0_3 = FiatoneCapriola
                        L1_3 = maxStamina
                        if not (L0_3 < L1_3) then
                          break
                        end
                      end
                      L0_3 = Wait
                      L1_3 = 0
                      L0_3(L1_3)
                      L0_3 = IsPedRagdoll
                      L1_3 = L0_2
                      L0_3 = L0_3(L1_3)
                      if L0_3 then
                        L0_3 = wasRagdoll
                        if not L0_3 then
                          wasRagdoll = true
                        end
                      end
                      L0_3 = inFinisher
                      if not L0_3 then
                        L0_3 = IsPedRagdoll
                        L1_3 = L0_2
                        L0_3 = L0_3(L1_3)
                        if not L0_3 then
                          L0_3 = IsPedGettingUp
                          L1_3 = L0_2
                          L0_3 = L0_3(L1_3)
                          if not L0_3 then
                            L0_3 = wasRagdoll
                            if L0_3 then
                              wasRagdoll = false
                              L0_3 = ResetStrafe
                              L1_3 = L0_2
                              L0_3(L1_3)
                            end
                            L0_3 = IsNuiFocused
                            L0_3 = L0_3()
                            if L0_3 then
                              L0_3 = ResetStrafe
                              L1_3 = L0_2
                              L0_3(L1_3)
                            end
                            L0_3 = CombatActive
                            if L0_3 then
                              L0_3 = GetPedConfigFlag
                              L1_3 = L0_2
                              L2_3 = 388
                              L0_3 = L0_3(L1_3, L2_3)
                              if not L0_3 then
                                L0_3 = IsPedFatallyInjured
                                L1_3 = L0_2
                                L0_3 = L0_3(L1_3)
                                if not L0_3 then
                                  L0_3 = IsPedGettingUp
                                  L1_3 = L0_2
                                  L0_3 = L0_3(L1_3)
                                  if not L0_3 then
                                    L0_3 = pedAimSet
                                    if nil == L0_3 then
                                      L0_3 = currentTarget
                                      if nil == L0_3 then
                                        L0_3 = IsPedGettingUp
                                        L1_3 = L0_2
                                        L0_3 = L0_3(L1_3)
                                        if not L0_3 then
                                          L0_3 = IsPedSwimming
                                          L1_3 = L0_2
                                          L0_3 = L0_3(L1_3)
                                          if not L0_3 then
                                            L0_3 = IsPedSwimmingUnderWater
                                            L1_3 = L0_2
                                            L0_3 = L0_3(L1_3)
                                            if not L0_3 then
                                              L0_3 = currentTarget
                                              if nil == L0_3 then
                                                L0_3 = IsPedGettingUp
                                                L1_3 = L0_2
                                                L0_3 = L0_3(L1_3)
                                                if not L0_3 then
                                                  L0_3 = IsEntityAttached
                                                  L1_3 = L0_2
                                                  L0_3 = L0_3(L1_3)
                                                  if L0_3 then
                                                    L0_3 = GetEntityAttachedTo
                                                    L1_3 = L0_2
                                                    L0_3 = L0_3(L1_3)
                                                    L1_3 = IsEntityAPed
                                                    L2_3 = L0_3
                                                    L1_3 = L1_3(L2_3)
                                                    if L1_3 then
                                                      L1_3 = SetEntityHeading
                                                      L2_3 = L0_3
                                                      L3_3 = GetGameplayCamRot
                                                      L4_3 = 0
                                                      L3_3 = L3_3(L4_3)
                                                      L3_3 = L3_3.z
                                                      L1_3(L2_3, L3_3)
                                                    end
                                                  else
                                                    L0_3 = SetEntityHeading
                                                    L1_3 = L0_2
                                                    L2_3 = GetGameplayCamRot
                                                    L3_3 = 0
                                                    L2_3 = L2_3(L3_3)
                                                    L2_3 = L2_3.z
                                                    L0_3(L1_3, L2_3)
                                                  end
                                                  L0_3 = GetGameplayCamRot
                                                  L1_3 = 0
                                                  L0_3 = L0_3(L1_3)
                                                  L0_3 = L0_3.z
                                                  L1_3 = startHeading
                                                  if not L1_3 then
                                                    startHeading = L0_3
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                            L0_3 = IsPedRagdoll
                            L1_3 = L0_2
                            L0_3 = L0_3(L1_3)
                            if not L0_3 then
                              L0_3 = inFinisher
                              if not L0_3 then
                                L0_3 = staminaDownOnDefence
                                if L0_3 then
                                  L0_3 = Sfoggiate
                                  if not L0_3 then
                                    L0_3 = SfoggiatoBow
                                    if not L0_3 then
                                      goto lbl_174
                                    end
                                  end
                                  L0_3 = IsDisabledControlPressed
                                  L1_3 = 0
                                  L2_3 = tastoDifesa
                                  L0_3 = L0_3(L1_3, L2_3)
                                  if not L0_3 then
                                    L0_3 = IsControlPressed
                                    L1_3 = 0
                                    L2_3 = 21
                                    L0_3 = L0_3(L1_3, L2_3)
                                    if not L0_3 then
                                      goto lbl_174
                                    end
                                  end
                                  L0_3 = staminaDownOnDefence
                                  if L0_3 then
                                    L0_3 = FiatoneCapriola
                                    L1_3 = staminaDownOnDefence_HOWMUCH
                                    L2_3 = exports
                                    L2_3 = L2_3.striano_combat
                                    L3_3 = L2_3
                                    L2_3 = L2_3.GetStaminaDrainMultiplier
                                    L2_3 = L2_3(L3_3)
                                    L1_3 = L1_3 * L2_3
                                    L0_3 = L0_3 - L1_3
                                    FiatoneCapriola = L0_3
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                      ::lbl_174::
                    end
                  end
                  L6_2(L7_2)
                end
                L6_2 = NewTraceActive
                if L6_2 then
                  L6_2 = SwordList
                  L7_2 = mySword
                  L6_2 = L6_2[L7_2]
                  if L6_2 then
                    L6_2 = SwordList
                    L7_2 = mySword
                    L6_2 = L6_2[L7_2]
                    L6_2 = L6_2.trailPreset
                  end
                  if nil == L6_2 or not L6_2 then
                    L7_2 = CreateThread
                    function L8_2()
                      local L0_3, L1_3
                      while true do
                        L0_3 = CombatActive
                        if not L0_3 then
                          L0_3 = trail
                          L0_3 = L0_3.segments
                          L0_3 = #L0_3
                          if not (L0_3 > 0) then
                            break
                          end
                        end
                        L0_3 = Wait
                        L1_3 = 0
                        L0_3(L1_3)
                        L0_3 = Sfoggiate
                        if L0_3 then
                          L0_3 = SwordObj
                          if nil ~= L0_3 then
                            L0_3 = DoesEntityExist
                            L1_3 = SwordObj
                            L0_3 = L0_3(L1_3)
                            if L0_3 then
                              L0_3 = exports
                              L0_3 = L0_3.striano_combat
                              L1_3 = L0_3
                              L0_3 = L0_3.incombatanim
                              L0_3 = L0_3(L1_3)
                              if L0_3 then
                                L0_3 = UpdateSwordTrail
                                L1_3 = SwordObj
                                L0_3(L1_3)
                                L0_3 = SwordObj2
                                if nil ~= L0_3 then
                                  L0_3 = DoesEntityExist
                                  L1_3 = SwordObj2
                                  L0_3 = L0_3(L1_3)
                                  if L0_3 then
                                    L0_3 = UpdateSwordTrail
                                    L1_3 = SwordObj2
                                    L0_3(L1_3)
                                  end
                                end
                                L0_3 = RenderSwordTrail
                                L0_3()
                            end
                          end
                        end
                        else
                          L0_3 = trail
                          L0_3 = L0_3.segments
                          L0_3 = #L0_3
                          if L0_3 > 0 then
                            L0_3 = trail
                            L0_3.lastBase = nil
                            L0_3 = trail
                            L0_3.lastTip = nil
                            L0_3 = RenderSwordTrail
                            L0_3()
                          end
                        end
                      end
                    end
                    L7_2(L8_2)
                  end
                end
                L6_2 = CreateThread
                function L7_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
                  while true do
                    L0_3 = CombatActive
                    if not L0_3 then
                      break
                    end
                    L0_3 = Wait
                    L1_3 = 0
                    L0_3(L1_3)
                    L0_3 = DisableControlAction
                    L1_3 = 0
                    L2_3 = 24
                    L3_3 = true
                    L0_3(L1_3, L2_3, L3_3)
                    L0_3 = DisableControlAction
                    L1_3 = 0
                    L2_3 = 25
                    L3_3 = true
                    L0_3(L1_3, L2_3, L3_3)
                    L0_3 = IsPedSwimming
                    L1_3 = L0_2
                    L0_3 = L0_3(L1_3)
                    if not L0_3 then
                      L0_3 = IsPedSwimmingUnderWater
                      L1_3 = L0_2
                      L0_3 = L0_3(L1_3)
                      if not L0_3 then
                        L0_3 = DisableControlAction
                        L1_3 = 0
                        L2_3 = 22
                        L3_3 = true
                        L0_3(L1_3, L2_3, L3_3)
                        L0_3 = DisableControlAction
                        L1_3 = 0
                        L2_3 = 21
                        L3_3 = true
                        L0_3(L1_3, L2_3, L3_3)
                      end
                    end
                    L0_3 = IsDisabledControlPressed
                    L1_3 = 0
                    L2_3 = 24
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = editorcombatopen
                      if not L0_3 then
                      end
                    end
                    L0_3 = IsDisabledControlPressed
                    L1_3 = 0
                    L2_3 = 24
                    L0_3 = L0_3(L1_3, L2_3)
                    if L0_3 then
                      L0_3 = DisableControlAction
                      L1_3 = 0
                      L2_3 = 32
                      L0_3(L1_3, L2_3)
                      L0_3 = DisableControlAction
                      L1_3 = 0
                      L2_3 = 33
                      L0_3(L1_3, L2_3)
                      L0_3 = DisableControlAction
                      L1_3 = 0
                      L2_3 = 34
                      L0_3(L1_3, L2_3)
                      L0_3 = DisableControlAction
                      L1_3 = 0
                      L2_3 = 35
                      L0_3(L1_3, L2_3)
                    end
                    L0_3 = BarStamina
                    L1_3 = L0_2
                    L0_3(L1_3)
                    L0_3 = BarFinisher
                    L1_3 = L0_2
                    L0_3(L1_3)
                    L0_3 = IsEntityPlayingAnim
                    L1_3 = L0_2
                    L2_3 = "hit_react_heavy_front_knockback_stagger"
                    L3_3 = "hit_react_heavy_front_knockback_stagger_clip"
                    L4_3 = 3
                    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                    if not L0_3 then
                      L0_3 = exports
                      L0_3 = L0_3.striano_combat
                      L1_3 = L0_3
                      L0_3 = L0_3.inroll
                      L0_3 = L0_3(L1_3)
                      if not L0_3 then
                        L0_3 = IsEntityAttached
                        L1_3 = L0_2
                        L0_3 = L0_3(L1_3)
                        if not L0_3 then
                          L0_3 = IsDisabledControlPressed
                          L1_3 = 0
                          L2_3 = 24
                          L0_3 = L0_3(L1_3, L2_3)
                          if not L0_3 then
                            L0_3 = IsControlPressed
                            L1_3 = 0
                            L2_3 = 22
                            L0_3 = L0_3(L1_3, L2_3)
                            if not L0_3 then
                              L0_3 = IsDisabledControlPressed
                              L1_3 = 0
                              L2_3 = 22
                              L0_3 = L0_3(L1_3, L2_3)
                              if not L0_3 then
                                L0_3 = Sfoggiate
                                if L0_3 then
                                  L0_3 = IsDisabledControlJustPressed
                                  L1_3 = 0
                                  L2_3 = tastoDifesa
                                  L0_3 = L0_3(L1_3, L2_3)
                                  if not L0_3 then
                                    L0_3 = IsControlJustPressed
                                    L1_3 = 0
                                    L2_3 = 32
                                    L0_3 = L0_3(L1_3, L2_3)
                                    if not L0_3 then
                                      L0_3 = IsControlJustPressed
                                      L1_3 = 0
                                      L2_3 = 33
                                      L0_3 = L0_3(L1_3, L2_3)
                                      if not L0_3 then
                                        L0_3 = IsControlJustPressed
                                        L1_3 = 0
                                        L2_3 = 34
                                        L0_3 = L0_3(L1_3, L2_3)
                                        if not L0_3 then
                                          L0_3 = IsControlJustPressed
                                          L1_3 = 0
                                          L2_3 = 35
                                          L0_3 = L0_3(L1_3, L2_3)
                                          if not L0_3 then
                                            L0_3 = IsDisabledControlJustPressed
                                            L1_3 = 0
                                            L2_3 = 32
                                            L0_3 = L0_3(L1_3, L2_3)
                                            if not L0_3 then
                                              L0_3 = IsDisabledControlJustPressed
                                              L1_3 = 0
                                              L2_3 = 33
                                              L0_3 = L0_3(L1_3, L2_3)
                                              if not L0_3 then
                                                L0_3 = IsDisabledControlJustPressed
                                                L1_3 = 0
                                                L2_3 = 34
                                                L0_3 = L0_3(L1_3, L2_3)
                                                if not L0_3 then
                                                  L0_3 = IsDisabledControlJustPressed
                                                  L1_3 = 0
                                                  L2_3 = 35
                                                  L0_3 = L0_3(L1_3, L2_3)
                                                  if not L0_3 then
                                                    goto lbl_174
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                  L0_3 = SyncRotAndPos
                                  L1_3 = L0_2
                                  L0_3(L1_3)
                                  L0_3 = IdleStrafe
                                  L1_3 = L0_2
                                  L0_3(L1_3)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    ::lbl_174::
                    L0_3 = IsDisabledControlJustReleased
                    L1_3 = 0
                    L2_3 = tastoDifesa
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = IsDisabledControlJustReleased
                      L1_3 = 0
                      L2_3 = 24
                      L0_3 = L0_3(L1_3, L2_3)
                      if not L0_3 then
                        goto lbl_251
                      end
                    end
                    L0_3 = IsEntityVisible
                    L1_3 = L0_2
                    L0_3 = L0_3(L1_3)
                    if L0_3 then
                      L0_3 = DoesEntityExist
                      L1_3 = ShieldObj
                      L0_3 = L0_3(L1_3)
                      if L0_3 then
                        L0_3 = DetachEntity
                        L1_3 = ShieldObj
                        L0_3(L1_3)
                        L0_3 = ShieldList
                        L1_3 = myShield
                        L0_3 = L0_3[L1_3]
                        L0_3 = L0_3.attposato
                        L1_3 = table
                        L1_3 = L1_3.unpack
                        L2_3 = L0_3
                        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3 = L1_3(L2_3)
                        f = L6_3
                        e = L5_3
                        d = L4_3
                        c = L3_3
                        b = L2_3
                        a = L1_3
                        L1_3 = AttachEntityToEntity
                        L2_3 = ShieldObj
                        L3_3 = L0_2
                        L4_3 = GetPedBoneIndex
                        L5_3 = L0_2
                        L6_3 = ShieldList
                        L7_3 = myShield
                        L6_3 = L6_3[L7_3]
                        L6_3 = L6_3.boneposato
                        L4_3 = L4_3(L5_3, L6_3)
                        L5_3 = a
                        L6_3 = b
                        L7_3 = c
                        L8_3 = d
                        L9_3 = e
                        L10_3 = f
                        L11_3 = true
                        L12_3 = true
                        L13_3 = false
                        L14_3 = true
                        L15_3 = 1
                        L16_3 = true
                        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                      end
                    end
                    L0_3 = HoRollato
                    if not L0_3 then
                      L0_3 = IsEntityPlayingAnim
                      L1_3 = L0_2
                      L2_3 = L5_2.Block
                      L2_3 = L2_3.a
                      L3_3 = L5_2.Block
                      L3_3 = L3_3.b
                      L4_3 = 3
                      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                      if L0_3 then
                        L0_3 = IdleAnimFunc
                        L0_3()
                      end
                    end
                    ::lbl_251::
                  end
                end
                L6_2(L7_2)
                L6_2 = 0
                L7_2 = CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3
                  L0_3 = PlayerPedId
                  L0_3 = L0_3()
                  while true do
                    L1_3 = CombatActive
                    if not L1_3 then
                      break
                    end
                    L1_3 = DisablePlayerFiring
                    L2_3 = L0_3
                    L3_3 = true
                    L1_3(L2_3, L3_3)
                    L1_3 = DisableControlAction
                    L2_3 = 0
                    L3_3 = 44
                    L4_3 = true
                    L1_3(L2_3, L3_3, L4_3)
                    L1_3 = DisableControlAction
                    L2_3 = 0
                    L3_3 = 74
                    L4_3 = true
                    L1_3(L2_3, L3_3, L4_3)
                    L1_3 = DisableControlAction
                    L2_3 = 0
                    L3_3 = 23
                    L4_3 = true
                    L1_3(L2_3, L3_3, L4_3)
                    L1_3 = IsPedUsingActionMode
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if L1_3 then
                      L1_3 = SetPedUsingActionMode
                      L2_3 = L0_3
                      L3_3 = false
                      L4_3 = -1
                      L5_3 = 0
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                    end
                    L1_3 = CombatActive
                    if L1_3 then
                      L1_3 = inLeviosa
                      if not L1_3 then
                        goto lbl_43
                      end
                    end
                    do return end
                    ::lbl_43::
                    L1_3 = inFinisher
                    if not L1_3 then
                      L1_3 = IsPedRagdoll
                      L2_3 = L0_3
                      L1_3 = L1_3(L2_3)
                      if not L1_3 then
                        L1_3 = IsPedGettingUp
                        L2_3 = L0_3
                        L1_3 = L1_3(L2_3)
                        if not L1_3 then
                          L1_3 = GetPedConfigFlag
                          L2_3 = L0_3
                          L3_3 = 388
                          L1_3 = L1_3(L2_3, L3_3)
                          if not L1_3 then
                            L1_3 = PossoAttaccare
                            L1_3 = L1_3()
                            if L1_3 then
                              L1_3 = IsPedClimbing
                              L2_3 = L0_3
                              L1_3 = L1_3(L2_3)
                              if not L1_3 then
                                L1_3 = IsPedRagdoll
                                L2_3 = L0_3
                                L1_3 = L1_3(L2_3)
                                if not L1_3 then
                                  L1_3 = FeritoCombat
                                  L1_3 = L1_3()
                                  if not L1_3 then
                                    L1_3 = IsEntityPlayingAnim
                                    L2_3 = L0_3
                                    L3_3 = "gt_Animations"
                                    L4_3 = "rz_neckbreak_atk_clip"
                                    L5_3 = 3
                                    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                    if not L1_3 then
                                      L1_3 = castingSpell
                                      if not L1_3 then
                                        L1_3 = IsEntityPositionFrozen
                                        L2_3 = L0_3
                                        L1_3 = L1_3(L2_3)
                                        if not L1_3 then
                                          L1_3 = FiatoneCapriola
                                          if L1_3 > 0 then
                                            L1_3 = PossoCapriola
                                            if L1_3 then
                                              L1_3 = IsEntityPlayingAnim
                                              L2_3 = L0_3
                                              L3_3 = "get_up@directional@movement@from_knees@standard"
                                              L4_3 = "getup_l_0"
                                              L5_3 = 1
                                              L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                              if not L1_3 then
                                                L1_3 = IsControlPressed
                                                L2_3 = 0
                                                L3_3 = 21
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if not L1_3 then
                                                  L1_3 = IsDisabledControlPressed
                                                  L2_3 = 0
                                                  L3_3 = 21
                                                  L1_3 = L1_3(L2_3, L3_3)
                                                  if not L1_3 then
                                                    goto lbl_135
                                                  end
                                                end
                                                L1_3 = currentStance
                                                if "walk_" == L1_3 then
                                                  currentStance = "run_"
                                                  L1_3 = currentStance
                                                  L2_3 = "fwd_0_loop"
                                                  L1_3 = L1_3 .. L2_3
                                                  strafe_fw = L1_3
                                                  L1_3 = currentStance
                                                  L2_3 = "bwd_180_loop"
                                                  L1_3 = L1_3 .. L2_3
                                                  strafe_bk = L1_3
                                                  goto lbl_147
                                                  ::lbl_135::
                                                  L1_3 = currentStance
                                                  if "run_" == L1_3 then
                                                    currentStance = "walk_"
                                                    L1_3 = currentStance
                                                    L2_3 = "fwd_0_loop"
                                                    L1_3 = L1_3 .. L2_3
                                                    strafe_fw = L1_3
                                                    L1_3 = currentStance
                                                    L2_3 = "bwd_180_loop"
                                                    L1_3 = L1_3 .. L2_3
                                                    strafe_bk = L1_3
                                                  end
                                                end
                                                ::lbl_147::
                                                L1_3 = IsDisabledControlJustPressed
                                                L2_3 = 0
                                                L3_3 = 24
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if L1_3 then
                                                  L1_3 = IsNuiFocusKeepingInput
                                                  L1_3 = L1_3()
                                                  if not L1_3 then
                                                    L1_3 = IsNuiFocused
                                                    L1_3 = L1_3()
                                                    if not L1_3 then
                                                      L1_3 = IdleAnimFunc
                                                      L1_3()
                                                    end
                                                  end
                                                end
                                                L1_3 = IsControlPressed
                                                L2_3 = 0
                                                L3_3 = 44
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if not L1_3 then
                                                  L1_3 = IsDisabledControlPressed
                                                  L2_3 = 0
                                                  L3_3 = 44
                                                  L1_3 = L1_3(L2_3, L3_3)
                                                  if not L1_3 then
                                                    goto lbl_413
                                                  end
                                                end
                                                L1_3 = mySword
                                                if 64 == L1_3 then
                                                  L1_3 = PlayerPedId
                                                  L1_3 = L1_3()
                                                  L2_3 = ClearPedTasks
                                                  L3_3 = L1_3
                                                  L2_3(L3_3)
                                                  L2_3 = Wait
                                                  L3_3 = 1
                                                  L2_3(L3_3)
                                                  L2_3 = faiAnim
                                                  L3_3 = "original_spear_idle_aim_forward"
                                                  L4_3 = "original_spear_idle_aim_forward_clip"
                                                  L5_3 = -1
                                                  L6_3 = 1
                                                  L2_3(L3_3, L4_3, L5_3, L6_3)
                                                  L2_3 = Wait
                                                  L3_3 = 25
                                                  L2_3(L3_3)
                                                  L2_3 = 0
                                                  while true do
                                                    L3_3 = IsEntityPlayingAnim
                                                    L4_3 = L1_3
                                                    L5_3 = "original_spear_idle_aim_forward"
                                                    L6_3 = "original_spear_idle_aim_forward_clip"
                                                    L7_3 = 3
                                                    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                                                    if not L3_3 then
                                                      break
                                                    end
                                                    L3_3 = Wait
                                                    L4_3 = 0
                                                    L3_3(L4_3)
                                                    L3_3 = SetEntityHeading
                                                    L4_3 = L1_3
                                                    L5_3 = GetGameplayCamRot
                                                    L6_3 = 0
                                                    L5_3 = L5_3(L6_3)
                                                    L5_3 = L5_3.z
                                                    L3_3(L4_3, L5_3)
                                                    L3_3 = IsControlPressed
                                                    L4_3 = 0
                                                    L5_3 = 21
                                                    L3_3 = L3_3(L4_3, L5_3)
                                                    if not L3_3 then
                                                      L3_3 = IsDisabledControlPressed
                                                      L4_3 = 0
                                                      L5_3 = 21
                                                      L3_3 = L3_3(L4_3, L5_3)
                                                      if not L3_3 then
                                                        goto lbl_253
                                                      end
                                                    end
                                                    L3_3 = IsEntityPlayingAnim
                                                    L4_3 = L1_3
                                                    L5_3 = "rcmextreme3"
                                                    L6_3 = "idle"
                                                    L7_3 = 3
                                                    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                                                    if not L3_3 then
                                                      L3_3 = faiAnim
                                                      L4_3 = "rcmextreme3"
                                                      L5_3 = "idle"
                                                      L6_3 = -1
                                                      L7_3 = 1
                                                      L3_3(L4_3, L5_3, L6_3, L7_3)
                                                      L3_3 = Wait
                                                      L4_3 = 25
                                                      L3_3(L4_3)
                                                      L3_3 = faiAnim
                                                      L4_3 = "original_spear_idle_aim_forward"
                                                      L5_3 = "original_spear_idle_aim_forward_clip"
                                                      L6_3 = -1
                                                      L7_3 = 49
                                                      L3_3(L4_3, L5_3, L6_3, L7_3)
                                                      L3_3 = Wait
                                                      L4_3 = 75
                                                      L3_3(L4_3)
                                                      goto lbl_291
                                                      ::lbl_253::
                                                      L3_3 = IsEntityPlayingAnim
                                                      L4_3 = L1_3
                                                      L5_3 = "rcmextreme3"
                                                      L6_3 = "idle"
                                                      L7_3 = 3
                                                      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                                                      if L3_3 then
                                                        L3_3 = ClearPedTasks
                                                        L4_3 = L1_3
                                                        L3_3(L4_3)
                                                        L3_3 = Wait
                                                        L4_3 = 1
                                                        L3_3(L4_3)
                                                        L3_3 = faiAnim
                                                        L4_3 = "original_spear_idle_aim_forward"
                                                        L5_3 = "original_spear_idle_aim_forward_clip"
                                                        L6_3 = -1
                                                        L7_3 = 1
                                                        L3_3(L4_3, L5_3, L6_3, L7_3)
                                                        L3_3 = Wait
                                                        L4_3 = 25
                                                        L3_3(L4_3)
                                                      else
                                                        L3_3 = IsEntityPlayingAnim
                                                        L4_3 = L1_3
                                                        L5_3 = "original_spear_idle_aim_forward"
                                                        L6_3 = "original_spear_idle_aim_forward_clip"
                                                        L7_3 = 3
                                                        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                                                        if not L3_3 then
                                                          L3_3 = faiAnim
                                                          L4_3 = "original_spear_idle_aim_forward"
                                                          L5_3 = "original_spear_idle_aim_forward_clip"
                                                          L6_3 = -1
                                                          L7_3 = 49
                                                          L3_3(L4_3, L5_3, L6_3, L7_3)
                                                        end
                                                      end
                                                    end
                                                    ::lbl_291::
                                                    L3_3 = GetGameTimer
                                                    L3_3 = L3_3()
                                                    if L2_3 <= L3_3 then
                                                      L2_3 = L3_3 + 500
                                                      L4_3 = PlayerId
                                                      L4_3 = L4_3()
                                                      L5_3 = PlayerPedId
                                                      L5_3 = L5_3()
                                                      L6_3 = GetEntityCoords
                                                      L7_3 = L5_3
                                                      L6_3 = L6_3(L7_3)
                                                      L7_3 = GetEntityForwardVector
                                                      L8_3 = L5_3
                                                      L7_3 = L7_3(L8_3)
                                                      L8_3 = 3.0
                                                      L9_3 = L8_3 * L8_3
                                                      L10_3 = 0.7
                                                      L11_3 = {}
                                                      L12_3 = ipairs
                                                      L13_3 = GetActivePlayers
                                                      L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L13_3()
                                                      L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                                                      for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
                                                        if L17_3 ~= L4_3 then
                                                          L18_3 = GetPlayerPed
                                                          L19_3 = L17_3
                                                          L18_3 = L18_3(L19_3)
                                                          if 0 ~= L18_3 then
                                                            L19_3 = DoesEntityExist
                                                            L20_3 = L18_3
                                                            L19_3 = L19_3(L20_3)
                                                            if L19_3 then
                                                              L19_3 = IsEntityDead
                                                              L20_3 = L18_3
                                                              L19_3 = L19_3(L20_3)
                                                              if not L19_3 then
                                                                L19_3 = GetEntityCoords
                                                                L20_3 = L18_3
                                                                L19_3 = L19_3(L20_3)
                                                                L20_3 = L19_3.x
                                                                L21_3 = L6_3.x
                                                                L20_3 = L20_3 - L21_3
                                                                L21_3 = L19_3.y
                                                                L22_3 = L6_3.y
                                                                L21_3 = L21_3 - L22_3
                                                                L22_3 = L19_3.z
                                                                L23_3 = L6_3.z
                                                                L22_3 = L22_3 - L23_3
                                                                L23_3 = L20_3 * L20_3
                                                                L24_3 = L21_3 * L21_3
                                                                L23_3 = L23_3 + L24_3
                                                                L24_3 = L22_3 * L22_3
                                                                L23_3 = L23_3 + L24_3
                                                                L24_3 = 0.001
                                                                if L23_3 > L24_3 and L9_3 >= L23_3 then
                                                                  L24_3 = L20_3 * L20_3
                                                                  L25_3 = L21_3 * L21_3
                                                                  L24_3 = L24_3 + L25_3
                                                                  L25_3 = 0.001
                                                                  if L24_3 > L25_3 then
                                                                    L25_3 = math
                                                                    L25_3 = L25_3.sqrt
                                                                    L26_3 = L24_3
                                                                    L25_3 = L25_3(L26_3)
                                                                    L26_3 = L20_3 / L25_3
                                                                    L27_3 = L21_3 / L25_3
                                                                    L28_3 = L7_3.x
                                                                    L28_3 = L28_3 * L26_3
                                                                    L29_3 = L7_3.y
                                                                    L29_3 = L29_3 * L27_3
                                                                    L28_3 = L28_3 + L29_3
                                                                    if L10_3 <= L28_3 then
                                                                      L29_3 = #L11_3
                                                                      L29_3 = L29_3 + 1
                                                                      L30_3 = GetPlayerServerId
                                                                      L31_3 = L17_3
                                                                      L30_3 = L30_3(L31_3)
                                                                      L11_3[L29_3] = L30_3
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                      L12_3 = #L11_3
                                                      if L12_3 > 0 then
                                                        L12_3 = TriggerServerEvent
                                                        L13_3 = "striano_ragdoll:requestMany"
                                                        L14_3 = L11_3
                                                        L12_3(L13_3, L14_3)
                                                      end
                                                    end
                                                  end
                                                  L3_3 = ClearPedTasks
                                                  L4_3 = L1_3
                                                  L3_3(L4_3)
                                                end
                                                ::lbl_413::
                                                L1_3 = IsControlJustPressed
                                                L2_3 = 0
                                                L3_3 = 44
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if not L1_3 then
                                                  L1_3 = IsDisabledControlJustPressed
                                                  L2_3 = 0
                                                  L3_3 = 44
                                                  L1_3 = L1_3(L2_3, L3_3)
                                                  if not L1_3 then
                                                    goto lbl_472
                                                  end
                                                end
                                                L1_3 = mySword
                                                if 64 ~= L1_3 then
                                                  L1_3 = IsEntityAttached
                                                  L2_3 = L0_3
                                                  L1_3 = L1_3(L2_3)
                                                  if not L1_3 then
                                                    L1_3 = Sfoggiate
                                                    if L1_3 then
                                                      L1_3 = inFinisher
                                                      if not L1_3 then
                                                        L1_3 = IsPedHuman
                                                        L2_3 = FightPed
                                                        L1_3 = L1_3(L2_3)
                                                        if L1_3 then
                                                          L1_3 = FightPed
                                                          if nil ~= L1_3 then
                                                            L1_3 = VicinoAlNemico
                                                            L2_3 = FightPed
                                                            L1_3 = L1_3(L2_3)
                                                            if L1_3 then
                                                              L1_3 = IsPedFatallyInjured
                                                              L2_3 = FightPed
                                                              L1_3 = L1_3(L2_3)
                                                              if not L1_3 then
                                                                L1_3 = specialMove
                                                                if L1_3 >= 100 then
                                                                  L1_3 = FightPed
                                                                  testPedEnemy = L1_3
                                                                  CombatActive = false
                                                                  specialMove = 0
                                                                  avvisoSpecial = false
                                                                  ColpiPlayer = 0
                                                                  L1_3 = CreateThread
                                                                  function L2_3()
                                                                    local L0_4, L1_4, L2_4
                                                                    L0_4 = startFinisher
                                                                    L1_4 = GetEntityHeading
                                                                    L2_4 = L0_3
                                                                    L1_4, L2_4 = L1_4(L2_4)
                                                                    L0_4(L1_4, L2_4)
                                                                  end
                                                                  L1_3(L2_3)
                                                                  L1_3 = ResetEnemy
                                                                  L1_3()
                                                                  return
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                                ::lbl_472::
                                                L1_3 = IsControlJustPressed
                                                L2_3 = 0
                                                L3_3 = 38
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if not L1_3 then
                                                  L1_3 = IsDisabledControlJustPressed
                                                  L2_3 = 0
                                                  L3_3 = 38
                                                  L1_3 = L1_3(L2_3, L3_3)
                                                  if not L1_3 then
                                                    goto lbl_554
                                                  end
                                                end
                                                L1_3 = IsEntityAttached
                                                L2_3 = L0_3
                                                L1_3 = L1_3(L2_3)
                                                if not L1_3 then
                                                  L1_3 = Sfoggiate
                                                  if not L1_3 then
                                                    L1_3 = inFinisher
                                                    if not L1_3 then
                                                      L1_3 = specialMove
                                                      if L1_3 >= 10 then
                                                        L1_3 = inblockfunc
                                                        L2_3 = FightPed
                                                        L1_3 = L1_3(L2_3)
                                                        if not L1_3 then
                                                          L1_3 = IsPedHuman
                                                          L2_3 = FightPed
                                                          L1_3 = L1_3(L2_3)
                                                          if L1_3 then
                                                            L1_3 = FightPed
                                                            if nil ~= L1_3 then
                                                              L1_3 = VicinoAlNemico
                                                              L2_3 = FightPed
                                                              L1_3 = L1_3(L2_3)
                                                              if L1_3 then
                                                                L1_3 = IsPedFatallyInjured
                                                                L2_3 = FightPed
                                                                L1_3 = L1_3(L2_3)
                                                                if not L1_3 then
                                                                  L1_3 = IsPedRagdoll
                                                                  L2_3 = FightPed
                                                                  L1_3 = L1_3(L2_3)
                                                                  if not L1_3 then
                                                                    L1_3 = GetGameTimer
                                                                    L1_3 = L1_3()
                                                                    L2_3 = cooldownFinisher
                                                                    L1_3 = L1_3 - L2_3
                                                                    L2_3 = 15000
                                                                    if L1_3 > L2_3 then
                                                                      inFinisher = true
                                                                      L1_3 = specialMove
                                                                      L1_3 = L1_3 - 10
                                                                      specialMove = L1_3
                                                                      avvisoSpecial = false
                                                                      L1_3 = finisherByPlayer
                                                                      L2_3 = math
                                                                      L2_3 = L2_3.random
                                                                      L3_3 = 1
                                                                      L4_3 = FinisherList
                                                                      L4_3 = #L4_3
                                                                      L2_3 = L2_3(L3_3, L4_3)
                                                                      L3_3 = FightPed
                                                                      L1_3(L2_3, L3_3)
                                                                      L1_3 = ResetEnemy
                                                                      L1_3()
                                                                      L1_3 = GetGameTimer
                                                                      L1_3 = L1_3()
                                                                      cooldownFinisher = L1_3
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                                ::lbl_554::
                                                L1_3 = IsDisabledControlJustPressed
                                                L2_3 = 0
                                                L3_3 = 22
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if L1_3 then
                                                  L1_3 = GetEntitySpeed
                                                  L2_3 = L0_3
                                                  L1_3 = L1_3(L2_3)
                                                  L2_3 = 0.3
                                                  if L1_3 < L2_3 then
                                                    L1_3 = exports
                                                    L1_3 = L1_3.striano_combat
                                                    L2_3 = L1_3
                                                    L1_3 = L1_3.incombatanim
                                                    L1_3 = L1_3(L2_3)
                                                    if not L1_3 then
                                                      L1_3 = IsControlPressed
                                                      L2_3 = 0
                                                      L3_3 = 32
                                                      L1_3 = L1_3(L2_3, L3_3)
                                                      if not L1_3 then
                                                        L1_3 = IsControlPressed
                                                        L2_3 = 0
                                                        L3_3 = 33
                                                        L1_3 = L1_3(L2_3, L3_3)
                                                        if not L1_3 then
                                                          L1_3 = IsControlPressed
                                                          L2_3 = 0
                                                          L3_3 = 34
                                                          L1_3 = L1_3(L2_3, L3_3)
                                                          if not L1_3 then
                                                            L1_3 = IsControlPressed
                                                            L2_3 = 0
                                                            L3_3 = 35
                                                            L1_3 = L1_3(L2_3, L3_3)
                                                            if not L1_3 then
                                                              L1_3 = TaskClimb
                                                              L2_3 = L0_3
                                                              L1_3(L2_3)
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                                L1_3 = IsDisabledControlPressed
                                                L2_3 = 0
                                                L3_3 = 22
                                                L1_3 = L1_3(L2_3, L3_3)
                                                if L1_3 then
                                                  L1_3 = IsEntityAttached
                                                  L2_3 = L0_3
                                                  L1_3 = L1_3(L2_3)
                                                  if not L1_3 then
                                                    L1_3 = inFinisher
                                                    if not L1_3 then
                                                      L1_3 = debuggerClb
                                                      if nil == L1_3 then
                                                        L1_3 = IsPedSwimming
                                                        L2_3 = L0_3
                                                        L1_3 = L1_3(L2_3)
                                                        if not L1_3 then
                                                          L1_3 = IsPedSwimmingUnderWater
                                                          L2_3 = L0_3
                                                          L1_3 = L1_3(L2_3)
                                                          if not L1_3 then
                                                            L1_3 = canPressSpace
                                                            L1_3 = L1_3()
                                                            if L1_3 then
                                                              L1_3 = {}
                                                              L1_3.a = "kp_wm_gs_dodge_forwardroll"
                                                              L1_3.b = "kp_wm_gs_dodge_forwardroll_clip"
                                                              L2_3 = {}
                                                              L2_3.a = "kp_wm_gs_dodge_leftroll"
                                                              L2_3.b = "kp_wm_gs_dodge_leftroll_clip"
                                                              L3_3 = {}
                                                              L3_3.a = "kp_wm_gs_dodge_backroll"
                                                              L3_3.b = "kp_wm_gs_dodge_backroll_clip"
                                                              L4_3 = {}
                                                              L4_3.a = "kp_wm_gs_dodge_rightroll"
                                                              L4_3.b = "kp_wm_gs_dodge_rightroll_clip"
                                                              L5_3 = 500
                                                              L6_3 = mySword
                                                              if L6_3 > 0 then
                                                                L6_3 = SwordList
                                                                L7_3 = mySword
                                                                L6_3 = L6_3[L7_3]
                                                                L6_3 = L6_3.canRoll
                                                                if nil ~= L6_3 then
                                                                  L6_3 = Sfoggiate
                                                                  if L6_3 then
                                                                end
                                                              end
                                                              else
                                                                L6_3 = mySword
                                                                if L6_3 > 0 then
                                                                  L6_3 = SwordList
                                                                  L7_3 = mySword
                                                                  L6_3 = L6_3[L7_3]
                                                                  L6_3 = L6_3.heavySword
                                                                  if nil ~= L6_3 then
                                                                    L6_3 = Sfoggiate
                                                                    if L6_3 then
                                                                      goto lbl_675
                                                                    end
                                                                  end
                                                                end
                                                                L6_3 = DisableDashRoll
                                                                ::lbl_675::
                                                                if L6_3 then
                                                                  L6_3 = SwordList
                                                                  L7_3 = mySword
                                                                  L6_3 = L6_3[L7_3]
                                                                  L6_3 = L6_3.heavySword
                                                                  if nil ~= L6_3 then
                                                                    L7_3 = {}
                                                                    L8_3 = L6_3.frw
                                                                    L8_3 = L8_3.a
                                                                    L7_3.a = L8_3
                                                                    L8_3 = L6_3.frw
                                                                    L8_3 = L8_3.b
                                                                    L7_3.b = L8_3
                                                                    L1_3 = L7_3
                                                                    L7_3 = {}
                                                                    L8_3 = L6_3.bkw
                                                                    L8_3 = L8_3.a
                                                                    L7_3.a = L8_3
                                                                    L8_3 = L6_3.bkw
                                                                    L8_3 = L8_3.b
                                                                    L7_3.b = L8_3
                                                                    L3_3 = L7_3
                                                                    L7_3 = {}
                                                                    L8_3 = L6_3.lft
                                                                    L8_3 = L8_3.a
                                                                    L7_3.a = L8_3
                                                                    L8_3 = L6_3.lft
                                                                    L8_3 = L8_3.b
                                                                    L7_3.b = L8_3
                                                                    L2_3 = L7_3
                                                                    L7_3 = {}
                                                                    L8_3 = L6_3.rgt
                                                                    L8_3 = L8_3.a
                                                                    L7_3.a = L8_3
                                                                    L8_3 = L6_3.rgt
                                                                    L8_3 = L8_3.b
                                                                    L7_3.b = L8_3
                                                                    L4_3 = L7_3
                                                                    L7_3 = L6_3.delayer
                                                                    if nil ~= L7_3 then
                                                                      L5_3 = L6_3.delayer
                                                                    end
                                                                  else
                                                                    L7_3 = {}
                                                                    L7_3.a = "wm_greatsword_forward_dash"
                                                                    L7_3.b = "wm_greatsword_forward_dash_clip"
                                                                    L1_3 = L7_3
                                                                    L7_3 = {}
                                                                    L7_3.a = "wm_greatsword_back_dash"
                                                                    L7_3.b = "wm_greatsword_back_dash_clip"
                                                                    L3_3 = L7_3
                                                                    L7_3 = {}
                                                                    L7_3.a = "wm_greatsword_left_dash"
                                                                    L7_3.b = "wm_greatsword_left_dash_clip"
                                                                    L2_3 = L7_3
                                                                    L7_3 = {}
                                                                    L7_3.a = "wm_greatsword_right_dash"
                                                                    L7_3.b = "wm_greatsword_right_dash_clip"
                                                                    L4_3 = L7_3
                                                                  end
                                                                end
                                                              end
                                                              L6_3 = IsDisabledControlPressed
                                                              L7_3 = 0
                                                              L8_3 = tastoDifesa
                                                              L6_3 = L6_3(L7_3, L8_3)
                                                              if not L6_3 then
                                                                L6_3 = ImACreaturePed
                                                                L7_3 = L0_3
                                                                L6_3 = L6_3(L7_3)
                                                                if not L6_3 then
                                                                  goto lbl_775
                                                                end
                                                              end
                                                              L6_3 = PossoCapriola
                                                              if L6_3 then
                                                                L6_3 = HoRollato
                                                                if not L6_3 then
                                                                  L6_3 = GetGameTimer
                                                                  L6_3 = L6_3()
                                                                  L7_3 = cooldownCapriola
                                                                  L6_3 = L6_3 - L7_3
                                                                  L7_3 = mioCoolDown
                                                                  if L6_3 > L7_3 then
                                                                    L6_3 = sonoInAria
                                                                    L7_3 = L0_3
                                                                    L6_3 = L6_3(L7_3)
                                                                    if not L6_3 then
                                                                      L6_3 = SlideForward
                                                                      L6_3()
                                                                      goto lbl_1119
                                                                      ::lbl_775::
                                                                      L6_3 = sonoInAria
                                                                      L7_3 = L0_3
                                                                      L6_3 = L6_3(L7_3)
                                                                      if not L6_3 then
                                                                        L6_3 = IsControlPressed
                                                                        L7_3 = 0
                                                                        L8_3 = 32
                                                                        L6_3 = L6_3(L7_3, L8_3)
                                                                        if L6_3 then
                                                                          L6_3 = PossoCapriola
                                                                          if L6_3 then
                                                                            L6_3 = GetGameTimer
                                                                            L6_3 = L6_3()
                                                                            L7_3 = cooldownCapriola
                                                                            L6_3 = L6_3 - L7_3
                                                                            L7_3 = mioCoolDown
                                                                            if L6_3 > L7_3 then
                                                                              L6_3 = HoRollato
                                                                              if not L6_3 then
                                                                                L6_3 = BeforeRoll
                                                                                L6_3()
                                                                                L6_3 = ClearPedTasks
                                                                                L7_3 = L0_3
                                                                                L6_3(L7_3)
                                                                                L6_3 = GetGameTimer
                                                                                L6_3 = L6_3()
                                                                                cooldownCapriola = L6_3
                                                                                L6_3 = SyncRotAndPos
                                                                                L7_3 = L0_3
                                                                                L6_3(L7_3)
                                                                                L6_3 = FiatoneCapriola
                                                                                L7_3 = fiatoneDash
                                                                                L8_3 = exports
                                                                                L8_3 = L8_3.striano_combat
                                                                                L9_3 = L8_3
                                                                                L8_3 = L8_3.GetStaminaDrainMultiplier
                                                                                L8_3 = L8_3(L9_3)
                                                                                L7_3 = L7_3 * L8_3
                                                                                L6_3 = L6_3 - L7_3
                                                                                FiatoneCapriola = L6_3
                                                                                L6_3 = LoadAnim
                                                                                L7_3 = L1_3.a
                                                                                L6_3(L7_3)
                                                                                L6_3 = OnStartCombat
                                                                                L7_3 = indexCombat
                                                                                L8_3 = nil
                                                                                L9_3 = AnimFightList
                                                                                L6_3(L7_3, L8_3, L9_3)
                                                                                HoRollato = true
                                                                                L6_3 = TaskPlayAnim
                                                                                L7_3 = L0_3
                                                                                L8_3 = L1_3.a
                                                                                L9_3 = L1_3.b
                                                                                L10_3 = 3.0
                                                                                L11_3 = 1.0
                                                                                L12_3 = 500
                                                                                L13_3 = 0
                                                                                L14_3 = 0
                                                                                L15_3 = 0
                                                                                L16_3 = 0
                                                                                L17_3 = 0
                                                                                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                L6_3 = GetEntityCoords
                                                                                L7_3 = L0_3
                                                                                L6_3 = L6_3(L7_3)
                                                                                L7_3 = SuonoGlobal
                                                                                L8_3 = -1
                                                                                L9_3 = "Whoosh_1s_L_to_R"
                                                                                L10_3 = L6_3.x
                                                                                L11_3 = L6_3.y
                                                                                L12_3 = L6_3.z
                                                                                L13_3 = "MP_LOBBY_SOUNDS"
                                                                                L14_3 = 1
                                                                                L15_3 = 3.0
                                                                                L16_3 = 0
                                                                                L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                L7_3 = Wait
                                                                                L8_3 = 750
                                                                                L7_3(L8_3)
                                                                                HoRollato = false
                                                                                L7_3 = EndRoll
                                                                                L7_3()
                                                                            end
                                                                          end
                                                                        end
                                                                        else
                                                                          L6_3 = IsControlPressed
                                                                          L7_3 = 0
                                                                          L8_3 = 34
                                                                          L6_3 = L6_3(L7_3, L8_3)
                                                                          if L6_3 then
                                                                            L6_3 = PossoCapriola
                                                                            if L6_3 then
                                                                              L6_3 = GetGameTimer
                                                                              L6_3 = L6_3()
                                                                              L7_3 = cooldownCapriola
                                                                              L6_3 = L6_3 - L7_3
                                                                              L7_3 = mioCoolDown
                                                                              if L6_3 > L7_3 then
                                                                                L6_3 = HoRollato
                                                                                if not L6_3 then
                                                                                  L6_3 = BeforeRoll
                                                                                  L6_3()
                                                                                  L6_3 = ClearPedTasks
                                                                                  L7_3 = L0_3
                                                                                  L6_3(L7_3)
                                                                                  L6_3 = GetGameTimer
                                                                                  L6_3 = L6_3()
                                                                                  cooldownCapriola = L6_3
                                                                                  L6_3 = SyncRotAndPos
                                                                                  L7_3 = L0_3
                                                                                  L6_3(L7_3)
                                                                                  L6_3 = FiatoneCapriola
                                                                                  L7_3 = fiatoneDash
                                                                                  L8_3 = exports
                                                                                  L8_3 = L8_3.striano_combat
                                                                                  L9_3 = L8_3
                                                                                  L8_3 = L8_3.GetStaminaDrainMultiplier
                                                                                  L8_3 = L8_3(L9_3)
                                                                                  L7_3 = L7_3 * L8_3
                                                                                  L6_3 = L6_3 - L7_3
                                                                                  FiatoneCapriola = L6_3
                                                                                  L6_3 = LoadAnim
                                                                                  L7_3 = L2_3.a
                                                                                  L6_3(L7_3)
                                                                                  L6_3 = OnStartCombat
                                                                                  L7_3 = indexCombat
                                                                                  L8_3 = nil
                                                                                  L9_3 = AnimFightList
                                                                                  L6_3(L7_3, L8_3, L9_3)
                                                                                  HoRollato = true
                                                                                  L6_3 = TaskPlayAnim
                                                                                  L7_3 = L0_3
                                                                                  L8_3 = L2_3.a
                                                                                  L9_3 = L2_3.b
                                                                                  L10_3 = 3.0
                                                                                  L11_3 = 1.0
                                                                                  L12_3 = 200
                                                                                  L13_3 = 0
                                                                                  L14_3 = 0
                                                                                  L15_3 = 0
                                                                                  L16_3 = 0
                                                                                  L17_3 = 0
                                                                                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                  L6_3 = GetEntityCoords
                                                                                  L7_3 = L0_3
                                                                                  L6_3 = L6_3(L7_3)
                                                                                  L7_3 = SuonoGlobal
                                                                                  L8_3 = -1
                                                                                  L9_3 = "Whoosh_1s_L_to_R"
                                                                                  L10_3 = L6_3.x
                                                                                  L11_3 = L6_3.y
                                                                                  L12_3 = L6_3.z
                                                                                  L13_3 = "MP_LOBBY_SOUNDS"
                                                                                  L14_3 = 1
                                                                                  L15_3 = 3.0
                                                                                  L16_3 = 0
                                                                                  L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                  L7_3 = Wait
                                                                                  L8_3 = 750
                                                                                  L7_3(L8_3)
                                                                                  HoRollato = false
                                                                                  L7_3 = EndRoll
                                                                                  L7_3()
                                                                              end
                                                                            end
                                                                          end
                                                                          else
                                                                            L6_3 = IsControlPressed
                                                                            L7_3 = 0
                                                                            L8_3 = 35
                                                                            L6_3 = L6_3(L7_3, L8_3)
                                                                            if L6_3 then
                                                                              L6_3 = PossoCapriola
                                                                              if L6_3 then
                                                                                L6_3 = GetGameTimer
                                                                                L6_3 = L6_3()
                                                                                L7_3 = cooldownCapriola
                                                                                L6_3 = L6_3 - L7_3
                                                                                L7_3 = mioCoolDown
                                                                                if L6_3 > L7_3 then
                                                                                  L6_3 = HoRollato
                                                                                  if not L6_3 then
                                                                                    L6_3 = BeforeRoll
                                                                                    L6_3()
                                                                                    L6_3 = ClearPedTasks
                                                                                    L7_3 = L0_3
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = GetGameTimer
                                                                                    L6_3 = L6_3()
                                                                                    cooldownCapriola = L6_3
                                                                                    L6_3 = SyncRotAndPos
                                                                                    L7_3 = L0_3
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = FiatoneCapriola
                                                                                    L7_3 = fiatoneDash
                                                                                    L8_3 = exports
                                                                                    L8_3 = L8_3.striano_combat
                                                                                    L9_3 = L8_3
                                                                                    L8_3 = L8_3.GetStaminaDrainMultiplier
                                                                                    L8_3 = L8_3(L9_3)
                                                                                    L7_3 = L7_3 * L8_3
                                                                                    L6_3 = L6_3 - L7_3
                                                                                    FiatoneCapriola = L6_3
                                                                                    L6_3 = LoadAnim
                                                                                    L7_3 = L4_3.a
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = OnStartCombat
                                                                                    L7_3 = indexCombat
                                                                                    L8_3 = nil
                                                                                    L9_3 = AnimFightList
                                                                                    L6_3(L7_3, L8_3, L9_3)
                                                                                    HoRollato = true
                                                                                    L6_3 = TaskPlayAnim
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3.a
                                                                                    L9_3 = L4_3.b
                                                                                    L10_3 = 3.0
                                                                                    L11_3 = 1.0
                                                                                    L12_3 = 200
                                                                                    L13_3 = 0
                                                                                    L14_3 = 0
                                                                                    L15_3 = 0
                                                                                    L16_3 = 0
                                                                                    L17_3 = 0
                                                                                    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                    L6_3 = GetEntityCoords
                                                                                    L7_3 = L0_3
                                                                                    L6_3 = L6_3(L7_3)
                                                                                    L7_3 = SuonoGlobal
                                                                                    L8_3 = -1
                                                                                    L9_3 = "Whoosh_1s_L_to_R"
                                                                                    L10_3 = L6_3.x
                                                                                    L11_3 = L6_3.y
                                                                                    L12_3 = L6_3.z
                                                                                    L13_3 = "MP_LOBBY_SOUNDS"
                                                                                    L14_3 = 1
                                                                                    L15_3 = 3.0
                                                                                    L16_3 = 0
                                                                                    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                    L7_3 = Wait
                                                                                    L8_3 = 750
                                                                                    L7_3(L8_3)
                                                                                    HoRollato = false
                                                                                    L7_3 = EndRoll
                                                                                    L7_3()
                                                                                end
                                                                              end
                                                                            end
                                                                            else
                                                                              L6_3 = IsControlPressed
                                                                              L7_3 = 0
                                                                              L8_3 = 33
                                                                              L6_3 = L6_3(L7_3, L8_3)
                                                                              if L6_3 then
                                                                                L6_3 = PossoCapriola
                                                                                if L6_3 then
                                                                                  L6_3 = GetGameTimer
                                                                                  L6_3 = L6_3()
                                                                                  L7_3 = cooldownCapriola
                                                                                  L6_3 = L6_3 - L7_3
                                                                                  L7_3 = mioCoolDown
                                                                                  if L6_3 > L7_3 then
                                                                                    L6_3 = HoRollato
                                                                                    if not L6_3 then
                                                                                      L6_3 = BeforeRoll
                                                                                      L6_3()
                                                                                      L6_3 = ClearPedTasks
                                                                                      L7_3 = L0_3
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = GetGameTimer
                                                                                      L6_3 = L6_3()
                                                                                      cooldownCapriola = L6_3
                                                                                      L6_3 = SyncRotAndPos
                                                                                      L7_3 = L0_3
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = FiatoneCapriola
                                                                                      L7_3 = fiatoneDash
                                                                                      L8_3 = exports
                                                                                      L8_3 = L8_3.striano_combat
                                                                                      L9_3 = L8_3
                                                                                      L8_3 = L8_3.GetStaminaDrainMultiplier
                                                                                      L8_3 = L8_3(L9_3)
                                                                                      L7_3 = L7_3 * L8_3
                                                                                      L6_3 = L6_3 - L7_3
                                                                                      FiatoneCapriola = L6_3
                                                                                      L6_3 = LoadAnim
                                                                                      L7_3 = L3_3.a
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = OnStartCombat
                                                                                      L7_3 = indexCombat
                                                                                      L8_3 = nil
                                                                                      L9_3 = AnimFightList
                                                                                      L6_3(L7_3, L8_3, L9_3)
                                                                                      HoRollato = true
                                                                                      L6_3 = TaskPlayAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L3_3.a
                                                                                      L9_3 = L3_3.b
                                                                                      L10_3 = 3.0
                                                                                      L11_3 = 1.0
                                                                                      L12_3 = 500
                                                                                      L13_3 = 0
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L17_3 = 0
                                                                                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                      L6_3 = GetEntityCoords
                                                                                      L7_3 = L0_3
                                                                                      L6_3 = L6_3(L7_3)
                                                                                      L7_3 = SuonoGlobal
                                                                                      L8_3 = -1
                                                                                      L9_3 = "Whoosh_1s_L_to_R"
                                                                                      L10_3 = L6_3.x
                                                                                      L11_3 = L6_3.y
                                                                                      L12_3 = L6_3.z
                                                                                      L13_3 = "MP_LOBBY_SOUNDS"
                                                                                      L14_3 = 1
                                                                                      L15_3 = 3.0
                                                                                      L16_3 = 0
                                                                                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                      L7_3 = Wait
                                                                                      L8_3 = 750
                                                                                      L7_3(L8_3)
                                                                                      HoRollato = false
                                                                                      L7_3 = EndRoll
                                                                                      L7_3()
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                                ::lbl_1119::
                                                L1_3 = IsEntityPlayingAnim
                                                L2_3 = L0_3
                                                L3_3 = "hit_react_heavy_front_knockback_stagger"
                                                L4_3 = "hit_react_heavy_front_knockback_stagger_clip"
                                                L5_3 = 3
                                                L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                                if not L1_3 then
                                                  L1_3 = exports
                                                  L1_3 = L1_3.striano_combat
                                                  L2_3 = L1_3
                                                  L1_3 = L1_3.inroll
                                                  L1_3 = L1_3(L2_3)
                                                  if not L1_3 then
                                                    L1_3 = IsEntityAttached
                                                    L2_3 = L0_3
                                                    L1_3 = L1_3(L2_3)
                                                    if not L1_3 then
                                                      L1_3 = IsDisabledControlPressed
                                                      L2_3 = 0
                                                      L3_3 = 24
                                                      L1_3 = L1_3(L2_3, L3_3)
                                                      if not L1_3 then
                                                        L1_3 = IsControlPressed
                                                        L2_3 = 0
                                                        L3_3 = 22
                                                        L1_3 = L1_3(L2_3, L3_3)
                                                        if not L1_3 then
                                                          L1_3 = IsDisabledControlPressed
                                                          L2_3 = 0
                                                          L3_3 = 22
                                                          L1_3 = L1_3(L2_3, L3_3)
                                                          if not L1_3 then
                                                            L1_3 = IsControlPressed
                                                            L2_3 = 0
                                                            L3_3 = 32
                                                            L1_3 = L1_3(L2_3, L3_3)
                                                            L1_3 = IsDisabledControlPressed
                                                            L2_3 = 0
                                                            L3_3 = 32
                                                            L1_3 = L1_3(L2_3, L3_3)
                                                            L1_3 = IsDisabledControlPressed
                                                            L2_3 = 0
                                                            L3_3 = tastoDifesa
                                                            L1_3 = L1_3(L2_3, L3_3)
                                                            L1_3 = IsControlPressed
                                                            L2_3 = 0
                                                            L3_3 = 21
                                                            L1_3 = L1_3(L2_3, L3_3)
                                                            if not L1_3 then
                                                              L1_3 = IsDisabledControlPressed
                                                              L2_3 = 0
                                                              L3_3 = 21
                                                              L1_3 = not L1_3 and L1_3
                                                            end
                                                            L2_3 = 1.35
                                                            L3_3 = IsControlPressed
                                                            L4_3 = 0
                                                            L5_3 = 73
                                                            L3_3 = L3_3(L4_3, L5_3)
                                                            if not L3_3 then
                                                              L3_3 = IsDisabledControlPressed
                                                              L4_3 = 0
                                                              L5_3 = 73
                                                              L3_3 = L3_3(L4_3, L5_3)
                                                              if not L3_3 then
                                                                goto lbl_1203
                                                              end
                                                            end
                                                            L1_3 = true
                                                            L2_3 = L2_3 / 2
                                                            ::lbl_1203::
                                                            L3_3 = IsControlJustReleased
                                                            L4_3 = 0
                                                            L5_3 = 21
                                                            L3_3 = L3_3(L4_3, L5_3)
                                                            if not L3_3 then
                                                              L3_3 = IsDisabledControlJustReleased
                                                              L4_3 = 0
                                                              L5_3 = 21
                                                              L3_3 = L3_3(L4_3, L5_3)
                                                              if not L3_3 then
                                                                goto lbl_1228
                                                              end
                                                            end
                                                            L3_3 = lastClipStrafe
                                                            L3_3 = #L3_3
                                                            if L3_3 > 0 then
                                                              L3_3 = SetEntityAnimSpeed
                                                              L4_3 = L0_3
                                                              L5_3 = libstrafe
                                                              L6_3 = lastClipStrafe
                                                              L7_3 = 1.0
                                                              L3_3(L4_3, L5_3, L6_3, L7_3)
                                                            end
                                                            L3_3 = IdleStrafe
                                                            L4_3 = L0_3
                                                            L3_3(L4_3)
                                                            ::lbl_1228::
                                                            L3_3 = stealthKillEnabled
                                                            if L3_3 then
                                                              L3_3 = IsPedDeadOrDying
                                                              L4_3 = FightPed
                                                              L3_3 = L3_3(L4_3)
                                                              if not L3_3 then
                                                                L3_3 = GetEntityAlpha
                                                                L4_3 = FightPed
                                                                L3_3 = L3_3(L4_3)
                                                                if 255 == L3_3 then
                                                                  L3_3 = FightPed
                                                                  if nil ~= L3_3 then
                                                                    L3_3 = IsPedAPlayer
                                                                    L4_3 = FightPed
                                                                    L3_3 = L3_3(L4_3)
                                                                    if not L3_3 then
                                                                      L3_3 = inHolsterAnim
                                                                      L3_3 = L3_3()
                                                                      if not L3_3 then
                                                                        L3_3 = IsPedHuman
                                                                        L4_3 = FightPed
                                                                        L3_3 = L3_3(L4_3)
                                                                        if L3_3 then
                                                                          L3_3 = IsEntityPlayingAnim
                                                                          L4_3 = L0_3
                                                                          L5_3 = "gt_Animations"
                                                                          L6_3 = "rz_neckbreak_atk_clip"
                                                                          L7_3 = 3
                                                                          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                                                                          if not L3_3 then
                                                                            L3_3 = GetEntityCoords
                                                                            L4_3 = FightPed
                                                                            L3_3 = L3_3(L4_3)
                                                                            L4_3 = GetEntityCoords
                                                                            L5_3 = L0_3
                                                                            L4_3 = L4_3(L5_3)
                                                                            L3_3 = L3_3 - L4_3
                                                                            L3_3 = #L3_3
                                                                            if L3_3 < 3.0 then
                                                                              L3_3 = IsPedFatallyInjured
                                                                              L4_3 = L0_3
                                                                              L3_3 = L3_3(L4_3)
                                                                              if not L3_3 then
                                                                                L3_3 = IsPedFatallyInjured
                                                                                L4_3 = FightPed
                                                                                L3_3 = L3_3(L4_3)
                                                                                if not L3_3 then
                                                                                  L3_3 = IsPedRagdoll
                                                                                  L4_3 = FightPed
                                                                                  L3_3 = L3_3(L4_3)
                                                                                  if not L3_3 then
                                                                                    L3_3 = 0.5
                                                                                    L4_3 = GetEntityCoords
                                                                                    L5_3 = FightPed
                                                                                    L4_3 = L4_3(L5_3)
                                                                                    L5_3 = GetEntityForwardVector
                                                                                    L6_3 = FightPed
                                                                                    L5_3 = L5_3(L6_3)
                                                                                    L6_3 = table
                                                                                    L6_3 = L6_3.unpack
                                                                                    L7_3 = L5_3 * L3_3
                                                                                    L7_3 = L7_3 * -1
                                                                                    L7_3 = L4_3 + L7_3
                                                                                    L6_3, L7_3, L8_3 = L6_3(L7_3)
                                                                                    L9_3 = GetEntityAlpha
                                                                                    L10_3 = FightPed
                                                                                    L9_3 = L9_3(L10_3)
                                                                                    if 255 == L9_3 then
                                                                                      L9_3 = GetEntityCoords
                                                                                      L10_3 = L0_3
                                                                                      L9_3 = L9_3(L10_3)
                                                                                      L10_3 = vector3
                                                                                      L11_3 = L6_3
                                                                                      L12_3 = L7_3
                                                                                      L13_3 = L8_3
                                                                                      L10_3 = L10_3(L11_3, L12_3, L13_3)
                                                                                      L9_3 = L9_3 - L10_3
                                                                                      L9_3 = #L9_3
                                                                                      L10_3 = 0.9
                                                                                      if L9_3 < L10_3 then
                                                                                        L9_3 = GetEntitySpeed
                                                                                        L10_3 = FightPed
                                                                                        L9_3 = L9_3(L10_3)
                                                                                        L10_3 = 0.2
                                                                                        if L9_3 <= L10_3 then
                                                                                          L9_3 = IsPedRunning
                                                                                          L10_3 = FightPed
                                                                                          L9_3 = L9_3(L10_3)
                                                                                          if not L9_3 then
                                                                                            L9_3 = InEnemyList
                                                                                            L10_3 = FightPed
                                                                                            L9_3 = L9_3(L10_3)
                                                                                            if not L9_3 then
                                                                                              L9_3 = IsPedGettingUp
                                                                                              L10_3 = FightPed
                                                                                              L9_3 = L9_3(L10_3)
                                                                                              if not L9_3 then
                                                                                                L9_3 = IsPedRagdoll
                                                                                                L10_3 = FightPed
                                                                                                L9_3 = L9_3(L10_3)
                                                                                                if not L9_3 then
                                                                                                  L9_3 = DrawText3DCombatHP
                                                                                                  L10_3 = L6_3
                                                                                                  L11_3 = L7_3
                                                                                                  L12_3 = L8_3
                                                                                                  L13_3 = "~h~F~h~ ~c~stealth kill"
                                                                                                  L14_3 = 0.33
                                                                                                  L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                                                                                                  L9_3 = IsDisabledControlJustPressed
                                                                                                  L10_3 = 0
                                                                                                  L11_3 = 23
                                                                                                  L9_3 = L9_3(L10_3, L11_3)
                                                                                                  if not L9_3 then
                                                                                                    L9_3 = IsControlJustPressed
                                                                                                    L10_3 = 0
                                                                                                    L11_3 = 23
                                                                                                    L9_3 = L9_3(L10_3, L11_3)
                                                                                                    if not L9_3 then
                                                                                                      goto lbl_1385
                                                                                                    end
                                                                                                  end
                                                                                                  L9_3 = ClearPedTasks
                                                                                                  L10_3 = FightPed
                                                                                                  L9_3(L10_3)
                                                                                                  L9_3 = ClearPedTasks
                                                                                                  L10_3 = L0_3
                                                                                                  L9_3(L10_3)
                                                                                                  CombatActive = false
                                                                                                  L9_3 = Wait
                                                                                                  L10_3 = 250
                                                                                                  L9_3(L10_3)
                                                                                                  L9_3 = KruegerFunction
                                                                                                  L10_3 = FightPed
                                                                                                  L9_3(L10_3)
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            ::lbl_1385::
                                                            L3_3 = IsControlPressed
                                                            L4_3 = 0
                                                            L5_3 = 32
                                                            L3_3 = L3_3(L4_3, L5_3)
                                                            if not L3_3 then
                                                              L3_3 = IsControlPressed
                                                              L4_3 = 0
                                                              L5_3 = 33
                                                              L3_3 = L3_3(L4_3, L5_3)
                                                              if not L3_3 then
                                                                L3_3 = IsControlPressed
                                                                L4_3 = 0
                                                                L5_3 = 34
                                                                L3_3 = L3_3(L4_3, L5_3)
                                                                if not L3_3 then
                                                                  L3_3 = IsControlPressed
                                                                  L4_3 = 0
                                                                  L5_3 = 35
                                                                  L3_3 = L3_3(L4_3, L5_3)
                                                                end
                                                              end
                                                            end
                                                            L4_3 = L8_1
                                                            L4_3 = L4_3()
                                                            if L4_3 then
                                                              L4_3 = IsEntityPlayingAnim
                                                              L5_3 = L0_3
                                                              L6_3 = "hit_react_heavy_front_knockback_stagger"
                                                              L7_3 = "hit_react_heavy_front_knockback_stagger_clip"
                                                              L8_3 = 3
                                                              L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                                                              if not L4_3 then
                                                                L4_3 = IsPedOnFoot
                                                                L5_3 = L0_3
                                                                L4_3 = L4_3(L5_3)
                                                                if L4_3 then
                                                                  L4_3 = IsEntityPositionFrozen
                                                                  L5_3 = L0_3
                                                                  L4_3 = L4_3(L5_3)
                                                                  if not L4_3 then
                                                                    L4_3 = IsEntityAttached
                                                                    L5_3 = L0_3
                                                                    L4_3 = L4_3(L5_3)
                                                                    if not L4_3 then
                                                                      L4_3 = IsPedSwimming
                                                                      L5_3 = L0_3
                                                                      L4_3 = L4_3(L5_3)
                                                                      if not L4_3 then
                                                                        L4_3 = IsPedSwimmingUnderWater
                                                                        L5_3 = L0_3
                                                                        L4_3 = L4_3(L5_3)
                                                                        if not L4_3 then
                                                                          L4_3 = IsEntityInWater
                                                                          L5_3 = L0_3
                                                                          L4_3 = L4_3(L5_3)
                                                                          if not L4_3 then
                                                                            L4_3 = IsControlPressed
                                                                            L5_3 = 0
                                                                            L6_3 = 32
                                                                            L4_3 = L4_3(L5_3, L6_3)
                                                                            if L4_3 then
                                                                              L4_3 = IsControlPressed
                                                                              L5_3 = 0
                                                                              L6_3 = 35
                                                                              L4_3 = L4_3(L5_3, L6_3)
                                                                              if L4_3 then
                                                                                L4_3 = IsControlPressed
                                                                                L5_3 = 0
                                                                                L6_3 = 33
                                                                                L4_3 = L4_3(L5_3, L6_3)
                                                                                if not L4_3 then
                                                                                  L4_3 = ImACreaturePed
                                                                                  L5_3 = L0_3
                                                                                  L4_3 = L4_3(L5_3)
                                                                                  if L4_3 then
                                                                                    L4_3 = "melee@wfire@beast_werewolf_animset"
                                                                                    L5_3 = "wfire_wmg_were_beast_slow_right45_walk_clip"
                                                                                    L6_3 = LoadAnim
                                                                                    L7_3 = L4_3
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = IsEntityPlayingAnim
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = L5_3
                                                                                    L10_3 = 3
                                                                                    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                    if not L6_3 then
                                                                                      L6_3 = TaskPlayAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 3.0
                                                                                      L11_3 = 1.0
                                                                                      L12_3 = -1
                                                                                      L13_3 = 1
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L17_3 = 0
                                                                                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                    end
                                                                                    L6_3 = Wait
                                                                                    L7_3 = 25
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = SetEntityAnimSpeed
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = L5_3
                                                                                    L10_3 = 2.0
                                                                                    L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                    lastClipStrafe = L5_3
                                                                                    L6_3 = IdleStrafe
                                                                                    L7_3 = L0_3
                                                                                    L6_3(L7_3)
                                                                                  else
                                                                                    L4_3 = currentStance
                                                                                    L5_3 = "fwd_45_loop"
                                                                                    L4_3 = L4_3 .. L5_3
                                                                                    L5_3 = LoadAnim
                                                                                    L6_3 = libstrafe
                                                                                    L5_3(L6_3)
                                                                                    L5_3 = IsEntityPlayingAnim
                                                                                    L6_3 = L0_3
                                                                                    L7_3 = libstrafe
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = 3
                                                                                    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                    if not L5_3 then
                                                                                      L5_3 = TaskPlayAnim
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = 3.0
                                                                                      L10_3 = 1.0
                                                                                      L11_3 = -1
                                                                                      L12_3 = 1
                                                                                      L13_3 = 0
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                    end
                                                                                    if L1_3 then
                                                                                      L5_3 = SetEntityAnimSpeed
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = currentStance
                                                                                      L9_3 = "fwd_45_loop"
                                                                                      L8_3 = L8_3 .. L9_3
                                                                                      L9_3 = L2_3
                                                                                      L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                    end
                                                                                    L5_3 = currentStance
                                                                                    L6_3 = "fwd_45_loop"
                                                                                    L5_3 = L5_3 .. L6_3
                                                                                    lastClipStrafe = L5_3
                                                                                    L5_3 = IdleStrafe
                                                                                    L6_3 = L0_3
                                                                                    L5_3(L6_3)
                                                                                  end
                                                                              end
                                                                              else
                                                                                L4_3 = IsControlPressed
                                                                                L5_3 = 0
                                                                                L6_3 = 34
                                                                                L4_3 = L4_3(L5_3, L6_3)
                                                                                if L4_3 then
                                                                                  L4_3 = IsControlPressed
                                                                                  L5_3 = 0
                                                                                  L6_3 = 33
                                                                                  L4_3 = L4_3(L5_3, L6_3)
                                                                                  if not L4_3 then
                                                                                    L4_3 = ImACreaturePed
                                                                                    L5_3 = L0_3
                                                                                    L4_3 = L4_3(L5_3)
                                                                                    if L4_3 then
                                                                                      L4_3 = "melee@wfire@beast_werewolf_animset"
                                                                                      L5_3 = "wfire_wmg_were_beast_slow_left45_walk_clip"
                                                                                      L6_3 = LoadAnim
                                                                                      L7_3 = L4_3
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = IsEntityPlayingAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 3
                                                                                      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                      if not L6_3 then
                                                                                        L6_3 = TaskPlayAnim
                                                                                        L7_3 = L0_3
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = L5_3
                                                                                        L10_3 = 3.0
                                                                                        L11_3 = 1.0
                                                                                        L12_3 = -1
                                                                                        L13_3 = 1
                                                                                        L14_3 = 0
                                                                                        L15_3 = 0
                                                                                        L16_3 = 0
                                                                                        L17_3 = 0
                                                                                        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                      end
                                                                                      L6_3 = Wait
                                                                                      L7_3 = 25
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = SetEntityAnimSpeed
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 2.0
                                                                                      L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                      lastClipStrafe = L5_3
                                                                                      L6_3 = IdleStrafe
                                                                                      L7_3 = L0_3
                                                                                      L6_3(L7_3)
                                                                                    else
                                                                                      L4_3 = currentStance
                                                                                      L5_3 = "fwd_-45_loop"
                                                                                      L4_3 = L4_3 .. L5_3
                                                                                      L5_3 = LoadAnim
                                                                                      L6_3 = libstrafe
                                                                                      L5_3(L6_3)
                                                                                      L5_3 = IsEntityPlayingAnim
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = 3
                                                                                      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                      if not L5_3 then
                                                                                        L5_3 = TaskPlayAnim
                                                                                        L6_3 = L0_3
                                                                                        L7_3 = libstrafe
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = 3.0
                                                                                        L10_3 = 1.0
                                                                                        L11_3 = -1
                                                                                        L12_3 = 1
                                                                                        L13_3 = 0
                                                                                        L14_3 = 0
                                                                                        L15_3 = 0
                                                                                        L16_3 = 0
                                                                                        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                      end
                                                                                      if L1_3 then
                                                                                        L5_3 = SetEntityAnimSpeed
                                                                                        L6_3 = L0_3
                                                                                        L7_3 = libstrafe
                                                                                        L8_3 = currentStance
                                                                                        L9_3 = "fwd_-45_loop"
                                                                                        L8_3 = L8_3 .. L9_3
                                                                                        L9_3 = L2_3
                                                                                        L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                      end
                                                                                      L5_3 = currentStance
                                                                                      L6_3 = "fwd_-45_loop"
                                                                                      L5_3 = L5_3 .. L6_3
                                                                                      lastClipStrafe = L5_3
                                                                                      L5_3 = IdleStrafe
                                                                                      L6_3 = L0_3
                                                                                      L5_3(L6_3)
                                                                                    end
                                                                                end
                                                                                else
                                                                                  L4_3 = ImACreaturePed
                                                                                  L5_3 = L0_3
                                                                                  L4_3 = L4_3(L5_3)
                                                                                  if L4_3 then
                                                                                    L4_3 = "melee@wfire@beast_werewolf_animset"
                                                                                    L5_3 = "wfire_wmg_werewolf_beast_forward_walk_clip"
                                                                                    L6_3 = LoadAnim
                                                                                    L7_3 = L4_3
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = IsEntityPlayingAnim
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = L5_3
                                                                                    L10_3 = 3
                                                                                    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                    if not L6_3 then
                                                                                      L6_3 = TaskPlayAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 3.0
                                                                                      L11_3 = 1.0
                                                                                      L12_3 = -1
                                                                                      L13_3 = 1
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L17_3 = 0
                                                                                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                    end
                                                                                    L6_3 = Wait
                                                                                    L7_3 = 25
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = SetEntityAnimSpeed
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = L5_3
                                                                                    L10_3 = 2.0
                                                                                    L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                    lastClipStrafe = L5_3
                                                                                    L6_3 = IdleStrafe
                                                                                    L7_3 = L0_3
                                                                                    L6_3(L7_3)
                                                                                  else
                                                                                    L4_3 = IsControlPressed
                                                                                    L5_3 = 0
                                                                                    L6_3 = 21
                                                                                    L4_3 = L4_3(L5_3, L6_3)
                                                                                    if not L4_3 then
                                                                                      L4_3 = IsDisabledControlPressed
                                                                                      L5_3 = 0
                                                                                      L6_3 = 21
                                                                                      L4_3 = L4_3(L5_3, L6_3)
                                                                                      if not L4_3 then
                                                                                        goto lbl_1743
                                                                                      end
                                                                                    end
                                                                                    L4_3 = "move_strafe@grenade"
                                                                                    L5_3 = "run_fwd_0_loop"
                                                                                    L6_3 = LoadAnim
                                                                                    L7_3 = L4_3
                                                                                    L6_3(L7_3)
                                                                                    L6_3 = IsEntityPlayingAnim
                                                                                    L7_3 = L0_3
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = L5_3
                                                                                    L10_3 = 3
                                                                                    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                    if not L6_3 then
                                                                                      L6_3 = TaskPlayAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 3.0
                                                                                      L11_3 = 1.0
                                                                                      L12_3 = -1
                                                                                      L13_3 = 1
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L17_3 = 0
                                                                                      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                      goto lbl_2142
                                                                                      ::lbl_1743::
                                                                                      L4_3 = "move_strafe@grenade"
                                                                                      L5_3 = "walk_fwd_0_loop"
                                                                                      L6_3 = LoadAnim
                                                                                      L7_3 = L4_3
                                                                                      L6_3(L7_3)
                                                                                      L6_3 = IsEntityPlayingAnim
                                                                                      L7_3 = L0_3
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = L5_3
                                                                                      L10_3 = 3
                                                                                      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                      if not L6_3 then
                                                                                        L6_3 = TaskPlayAnim
                                                                                        L7_3 = L0_3
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = L5_3
                                                                                        L10_3 = 3.0
                                                                                        L11_3 = 1.0
                                                                                        L12_3 = -1
                                                                                        L13_3 = 1
                                                                                        L14_3 = 0
                                                                                        L15_3 = 0
                                                                                        L16_3 = 0
                                                                                        L17_3 = 0
                                                                                        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            else
                                                                              L4_3 = IsControlPressed
                                                                              L5_3 = 0
                                                                              L6_3 = 33
                                                                              L4_3 = L4_3(L5_3, L6_3)
                                                                              if L4_3 then
                                                                                L4_3 = IsControlPressed
                                                                                L5_3 = 0
                                                                                L6_3 = 35
                                                                                L4_3 = L4_3(L5_3, L6_3)
                                                                                if L4_3 then
                                                                                  L4_3 = IsControlPressed
                                                                                  L5_3 = 0
                                                                                  L6_3 = 32
                                                                                  L4_3 = L4_3(L5_3, L6_3)
                                                                                  if not L4_3 then
                                                                                    L4_3 = currentStance
                                                                                    L5_3 = "bwd_135_loop"
                                                                                    L4_3 = L4_3 .. L5_3
                                                                                    L5_3 = LoadAnim
                                                                                    L6_3 = libstrafe
                                                                                    L5_3(L6_3)
                                                                                    L5_3 = IsEntityPlayingAnim
                                                                                    L6_3 = L0_3
                                                                                    L7_3 = libstrafe
                                                                                    L8_3 = L4_3
                                                                                    L9_3 = 3
                                                                                    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                    if not L5_3 then
                                                                                      L5_3 = TaskPlayAnim
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = 3.0
                                                                                      L10_3 = 1.0
                                                                                      L11_3 = -1
                                                                                      L12_3 = 1
                                                                                      L13_3 = 0
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L16_3 = 0
                                                                                      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                    end
                                                                                    if L1_3 then
                                                                                      L5_3 = SetEntityAnimSpeed
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = currentStance
                                                                                      L9_3 = "bwd_135_loop"
                                                                                      L8_3 = L8_3 .. L9_3
                                                                                      L9_3 = L2_3
                                                                                      L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                    end
                                                                                    L5_3 = currentStance
                                                                                    L6_3 = "bwd_135_loop"
                                                                                    L5_3 = L5_3 .. L6_3
                                                                                    lastClipStrafe = L5_3
                                                                                    L5_3 = IdleStrafe
                                                                                    L6_3 = L0_3
                                                                                    L5_3(L6_3)
                                                                                end
                                                                                else
                                                                                  L4_3 = IsControlPressed
                                                                                  L5_3 = 0
                                                                                  L6_3 = 34
                                                                                  L4_3 = L4_3(L5_3, L6_3)
                                                                                  if L4_3 then
                                                                                    L4_3 = IsControlPressed
                                                                                    L5_3 = 0
                                                                                    L6_3 = 32
                                                                                    L4_3 = L4_3(L5_3, L6_3)
                                                                                    if not L4_3 then
                                                                                      L4_3 = currentStance
                                                                                      L5_3 = "bwd_-135_loop"
                                                                                      L4_3 = L4_3 .. L5_3
                                                                                      L5_3 = LoadAnim
                                                                                      L6_3 = libstrafe
                                                                                      L5_3(L6_3)
                                                                                      L5_3 = IsEntityPlayingAnim
                                                                                      L6_3 = L0_3
                                                                                      L7_3 = libstrafe
                                                                                      L8_3 = L4_3
                                                                                      L9_3 = 3
                                                                                      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                      if not L5_3 then
                                                                                        L5_3 = TaskPlayAnim
                                                                                        L6_3 = L0_3
                                                                                        L7_3 = libstrafe
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = 3.0
                                                                                        L10_3 = 1.0
                                                                                        L11_3 = -1
                                                                                        L12_3 = 1
                                                                                        L13_3 = 0
                                                                                        L14_3 = 0
                                                                                        L15_3 = 0
                                                                                        L16_3 = 0
                                                                                        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                      end
                                                                                      if L1_3 then
                                                                                        L5_3 = SetEntityAnimSpeed
                                                                                        L6_3 = L0_3
                                                                                        L7_3 = libstrafe
                                                                                        L8_3 = currentStance
                                                                                        L9_3 = "bwd_-135_loop"
                                                                                        L8_3 = L8_3 .. L9_3
                                                                                        L9_3 = L2_3
                                                                                        L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                      end
                                                                                      L5_3 = currentStance
                                                                                      L6_3 = "bwd_-135_loop"
                                                                                      L5_3 = L5_3 .. L6_3
                                                                                      lastClipStrafe = L5_3
                                                                                      L5_3 = IdleStrafe
                                                                                      L6_3 = L0_3
                                                                                      L5_3(L6_3)
                                                                                  end
                                                                                  else
                                                                                    L4_3 = LoadAnim
                                                                                    L5_3 = libstrafe
                                                                                    L4_3(L5_3)
                                                                                    L4_3 = IsEntityPlayingAnim
                                                                                    L5_3 = L0_3
                                                                                    L6_3 = libstrafe
                                                                                    L7_3 = strafe_bk
                                                                                    L8_3 = 3
                                                                                    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                                                                                    if not L4_3 then
                                                                                      L4_3 = TaskPlayAnim
                                                                                      L5_3 = L0_3
                                                                                      L6_3 = libstrafe
                                                                                      L7_3 = strafe_bk
                                                                                      L8_3 = 3.0
                                                                                      L9_3 = 1.0
                                                                                      L10_3 = -1
                                                                                      L11_3 = 1
                                                                                      L12_3 = 0
                                                                                      L13_3 = 0
                                                                                      L14_3 = 0
                                                                                      L15_3 = 0
                                                                                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                                                                                    end
                                                                                    if L1_3 then
                                                                                      L4_3 = SetEntityAnimSpeed
                                                                                      L5_3 = L0_3
                                                                                      L6_3 = libstrafe
                                                                                      L7_3 = strafe_bk
                                                                                      L8_3 = L2_3
                                                                                      L4_3(L5_3, L6_3, L7_3, L8_3)
                                                                                    end
                                                                                  end
                                                                                end
                                                                              else
                                                                                L4_3 = IsControlPressed
                                                                                L5_3 = 0
                                                                                L6_3 = 35
                                                                                L4_3 = L4_3(L5_3, L6_3)
                                                                                if L4_3 then
                                                                                  L4_3 = IsControlPressed
                                                                                  L5_3 = 0
                                                                                  L6_3 = 32
                                                                                  L4_3 = L4_3(L5_3, L6_3)
                                                                                  if not L4_3 then
                                                                                    L4_3 = IsControlPressed
                                                                                    L5_3 = 0
                                                                                    L6_3 = 33
                                                                                    L4_3 = L4_3(L5_3, L6_3)
                                                                                    if not L4_3 then
                                                                                      L4_3 = ImACreaturePed
                                                                                      L5_3 = L0_3
                                                                                      L4_3 = L4_3(L5_3)
                                                                                      if L4_3 then
                                                                                        L4_3 = "melee@wfire@beast_werewolf_animset"
                                                                                        L5_3 = "wfire_wmg_were_beast_right_slow_walk_clip"
                                                                                        L6_3 = LoadAnim
                                                                                        L7_3 = L4_3
                                                                                        L6_3(L7_3)
                                                                                        L6_3 = IsEntityPlayingAnim
                                                                                        L7_3 = L0_3
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = L5_3
                                                                                        L10_3 = 3
                                                                                        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                        if not L6_3 then
                                                                                          L6_3 = TaskPlayAnim
                                                                                          L7_3 = L0_3
                                                                                          L8_3 = L4_3
                                                                                          L9_3 = L5_3
                                                                                          L10_3 = 3.0
                                                                                          L11_3 = 1.0
                                                                                          L12_3 = -1
                                                                                          L13_3 = 1
                                                                                          L14_3 = 0
                                                                                          L15_3 = 0
                                                                                          L16_3 = 0
                                                                                          L17_3 = 0
                                                                                          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                        end
                                                                                        L6_3 = Wait
                                                                                        L7_3 = 25
                                                                                        L6_3(L7_3)
                                                                                        L6_3 = SetEntityAnimSpeed
                                                                                        L7_3 = L0_3
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = L5_3
                                                                                        L10_3 = 2.0
                                                                                        L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                        lastClipStrafe = L5_3
                                                                                        L6_3 = IdleStrafe
                                                                                        L7_3 = L0_3
                                                                                        L6_3(L7_3)
                                                                                      else
                                                                                        L4_3 = currentStance
                                                                                        L5_3 = "fwd_90_loop"
                                                                                        L4_3 = L4_3 .. L5_3
                                                                                        L5_3 = LoadAnim
                                                                                        L6_3 = libstrafe
                                                                                        L5_3(L6_3)
                                                                                        L5_3 = IsEntityPlayingAnim
                                                                                        L6_3 = L0_3
                                                                                        L7_3 = libstrafe
                                                                                        L8_3 = L4_3
                                                                                        L9_3 = 3
                                                                                        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                        if not L5_3 then
                                                                                          L5_3 = TaskPlayAnim
                                                                                          L6_3 = L0_3
                                                                                          L7_3 = libstrafe
                                                                                          L8_3 = L4_3
                                                                                          L9_3 = 3.0
                                                                                          L10_3 = 1.0
                                                                                          L11_3 = -1
                                                                                          L12_3 = 1
                                                                                          L13_3 = 0
                                                                                          L14_3 = 0
                                                                                          L15_3 = 0
                                                                                          L16_3 = 0
                                                                                          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                        end
                                                                                        if L1_3 then
                                                                                          L5_3 = SetEntityAnimSpeed
                                                                                          L6_3 = L0_3
                                                                                          L7_3 = libstrafe
                                                                                          L8_3 = currentStance
                                                                                          L9_3 = "fwd_90_loop"
                                                                                          L8_3 = L8_3 .. L9_3
                                                                                          L9_3 = L2_3
                                                                                          L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                        end
                                                                                        L5_3 = currentStance
                                                                                        L6_3 = "fwd_90_loop"
                                                                                        L5_3 = L5_3 .. L6_3
                                                                                        lastClipStrafe = L5_3
                                                                                        L5_3 = IdleStrafe
                                                                                        L6_3 = L0_3
                                                                                        L5_3(L6_3)
                                                                                      end
                                                                                  end
                                                                                end
                                                                                else
                                                                                  L4_3 = IsControlPressed
                                                                                  L5_3 = 0
                                                                                  L6_3 = 34
                                                                                  L4_3 = L4_3(L5_3, L6_3)
                                                                                  if L4_3 then
                                                                                    L4_3 = IsControlPressed
                                                                                    L5_3 = 0
                                                                                    L6_3 = 32
                                                                                    L4_3 = L4_3(L5_3, L6_3)
                                                                                    if not L4_3 then
                                                                                      L4_3 = IsControlPressed
                                                                                      L5_3 = 0
                                                                                      L6_3 = 33
                                                                                      L4_3 = L4_3(L5_3, L6_3)
                                                                                      if not L4_3 then
                                                                                        L4_3 = ImACreaturePed
                                                                                        L5_3 = L0_3
                                                                                        L4_3 = L4_3(L5_3)
                                                                                        if L4_3 then
                                                                                          L4_3 = "melee@wfire@beast_werewolf_animset"
                                                                                          L5_3 = "wfire_wmg_were_beast_slow_left_walk_clip"
                                                                                          L6_3 = LoadAnim
                                                                                          L7_3 = L4_3
                                                                                          L6_3(L7_3)
                                                                                          L6_3 = IsEntityPlayingAnim
                                                                                          L7_3 = L0_3
                                                                                          L8_3 = L4_3
                                                                                          L9_3 = L5_3
                                                                                          L10_3 = 3
                                                                                          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                          if not L6_3 then
                                                                                            L6_3 = TaskPlayAnim
                                                                                            L7_3 = L0_3
                                                                                            L8_3 = L4_3
                                                                                            L9_3 = L5_3
                                                                                            L10_3 = 3.0
                                                                                            L11_3 = 1.0
                                                                                            L12_3 = -1
                                                                                            L13_3 = 1
                                                                                            L14_3 = 0
                                                                                            L15_3 = 0
                                                                                            L16_3 = 0
                                                                                            L17_3 = 0
                                                                                            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                                                          end
                                                                                          L6_3 = Wait
                                                                                          L7_3 = 25
                                                                                          L6_3(L7_3)
                                                                                          L6_3 = SetEntityAnimSpeed
                                                                                          L7_3 = L0_3
                                                                                          L8_3 = L4_3
                                                                                          L9_3 = L5_3
                                                                                          L10_3 = 2.0
                                                                                          L6_3(L7_3, L8_3, L9_3, L10_3)
                                                                                          lastClipStrafe = L5_3
                                                                                          L6_3 = IdleStrafe
                                                                                          L7_3 = L0_3
                                                                                          L6_3(L7_3)
                                                                                        else
                                                                                          L4_3 = currentStance
                                                                                          L5_3 = "bwd_-90_loop"
                                                                                          L4_3 = L4_3 .. L5_3
                                                                                          L5_3 = LoadAnim
                                                                                          L6_3 = libstrafe
                                                                                          L5_3(L6_3)
                                                                                          L5_3 = IsEntityPlayingAnim
                                                                                          L6_3 = L0_3
                                                                                          L7_3 = libstrafe
                                                                                          L8_3 = L4_3
                                                                                          L9_3 = 3
                                                                                          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                          if not L5_3 then
                                                                                            L5_3 = TaskPlayAnim
                                                                                            L6_3 = L0_3
                                                                                            L7_3 = libstrafe
                                                                                            L8_3 = L4_3
                                                                                            L9_3 = 3.0
                                                                                            L10_3 = 1.0
                                                                                            L11_3 = -1
                                                                                            L12_3 = 1
                                                                                            L13_3 = 0
                                                                                            L14_3 = 0
                                                                                            L15_3 = 0
                                                                                            L16_3 = 0
                                                                                            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                                                                                          end
                                                                                          if L1_3 then
                                                                                            L5_3 = SetEntityAnimSpeed
                                                                                            L6_3 = L0_3
                                                                                            L7_3 = libstrafe
                                                                                            L8_3 = currentStance
                                                                                            L9_3 = "bwd_-90_loop"
                                                                                            L8_3 = L8_3 .. L9_3
                                                                                            L9_3 = L2_3
                                                                                            L5_3(L6_3, L7_3, L8_3, L9_3)
                                                                                          end
                                                                                          L5_3 = currentStance
                                                                                          L6_3 = "bwd_-90_loop"
                                                                                          L5_3 = L5_3 .. L6_3
                                                                                          lastClipStrafe = L5_3
                                                                                          L5_3 = IdleStrafe
                                                                                          L6_3 = L0_3
                                                                                          L5_3(L6_3)
                                                                                        end
                                                                                    end
                                                                                  end
                                                                                  else
                                                                                    L4_3 = ResetStrafe
                                                                                    L5_3 = L0_3
                                                                                    L4_3(L5_3)
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            ::lbl_2142::
                                                            if not L3_3 then
                                                              L4_3 = ResetStrafeImmediately
                                                              L5_3 = L0_3
                                                              L4_3(L5_3)
                                                            end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                                else
                                                  L1_3 = IsEntityPlayingAnim
                                                  L2_3 = L0_3
                                                  L3_3 = holsterlist
                                                  L3_3 = L3_3[7]
                                                  L3_3 = L3_3.a
                                                  L4_3 = holsterlist
                                                  L4_3 = L4_3[7]
                                                  L4_3 = L4_3.b
                                                  L5_3 = 3
                                                  L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                                  if not L1_3 then
                                                    L1_3 = IsEntityPlayingAnim
                                                    L2_3 = L0_3
                                                    L3_3 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
                                                    L4_3 = "throw_m_fb_stand"
                                                    L5_3 = 3
                                                    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                                    if not L1_3 then
                                                      L1_3 = IsEntityPlayingAnim
                                                      L2_3 = L0_3
                                                      L3_3 = "get_up@directional@movement@from_knees@standard"
                                                      L4_3 = "getup_l_0"
                                                      L5_3 = 1
                                                      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                                                      if not L1_3 then
                                                        L1_3 = IsDisabledControlPressed
                                                        L2_3 = 0
                                                        L3_3 = 24
                                                        L1_3 = L1_3(L2_3, L3_3)
                                                        if L1_3 then
                                                          L1_3 = SfoggiatoBow
                                                          if not L1_3 then
                                                            goto lbl_2744
                                                          end
                                                          L1_3 = CheckArrowItem
                                                          L1_3 = L1_3()
                                                          if not L1_3 then
                                                            L1_3 = NoArrowsMsg
                                                            L1_3()
                                                            L1_3 = FODERA_ARCO
                                                            L1_3()
                                                            L1_3 = lastAROV
                                                            if nil ~= L1_3 then
                                                              L1_3 = DoesEntityExist
                                                              L2_3 = lastAROV
                                                              L1_3 = L1_3(L2_3)
                                                              if L1_3 then
                                                                L1_3 = SetEntityAsMissionEntity
                                                                L2_3 = lastAROV
                                                                L1_3(L2_3)
                                                                L1_3 = DeleteEntity
                                                                L2_3 = lastAROV
                                                                L1_3(L2_3)
                                                                lastAROV = nil
                                                              end
                                                            end
                                                            CombatActive = false
                                                            return
                                                          end
                                                          L1_3 = SetFollowPedCamViewMode
                                                          L2_3 = 4
                                                          L1_3(L2_3)
                                                          L1_3 = SetFollowPedCamViewMode
                                                          L2_3 = 0
                                                          L1_3(L2_3)
                                                          L1_3 = SetCamViewModeForContext
                                                          L2_3 = GetCamActiveViewModeContext
                                                          L2_3 = L2_3()
                                                          L3_3 = 0
                                                          L1_3(L2_3, L3_3)
                                                          L1_3 = DisableControlAction
                                                          L2_3 = 0
                                                          L3_3 = 0
                                                          L4_3 = true
                                                          L1_3(L2_3, L3_3, L4_3)
                                                          L1_3 = DisableFirstPersonCamThisFrame
                                                          L1_3()
                                                          L1_3 = ClearPedTasks
                                                          L2_3 = L0_3
                                                          L1_3(L2_3)
                                                          L1_3 = InThrowWeap
                                                          L1_3 = L1_3()
                                                          if L1_3 then
                                                            myArrow = 5
                                                          end
                                                          L1_3 = ArrowList
                                                          L2_3 = myArrow
                                                          L1_3 = L1_3[L2_3]
                                                          L1_3 = L1_3.m
                                                          L2_3 = RequestModelStriano
                                                          L3_3 = L1_3
                                                          L2_3(L3_3)
                                                          L2_3 = GetEntityCoords
                                                          L3_3 = L0_3
                                                          L2_3 = L2_3(L3_3)
                                                          L3_3 = CreateObjectNoOffset
                                                          L4_3 = GetHashKey
                                                          L5_3 = L1_3
                                                          L4_3 = L4_3(L5_3)
                                                          L5_3 = L2_3.x
                                                          L6_3 = L2_3.y
                                                          L7_3 = L2_3.z
                                                          L7_3 = L7_3 - 1.0
                                                          L8_3 = true
                                                          L9_3 = true
                                                          L10_3 = false
                                                          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
                                                          while true do
                                                            L4_3 = DoesEntityExist
                                                            L5_3 = L3_3
                                                            L4_3 = L4_3(L5_3)
                                                            if L4_3 then
                                                              break
                                                            end
                                                            L4_3 = Wait
                                                            L5_3 = 0
                                                            L4_3(L5_3)
                                                          end
                                                          lastAROV = L3_3
                                                          L4_3 = SetEntityCollision
                                                          L5_3 = lastAROV
                                                          L6_3 = false
                                                          L7_3 = false
                                                          L4_3(L5_3, L6_3, L7_3)
                                                          L4_3 = MakeSwordNET
                                                          L5_3 = lastAROV
                                                          L4_3(L5_3)
                                                          L4_3 = ArrowList
                                                          L5_3 = myArrow
                                                          L4_3 = L4_3[L5_3]
                                                          L4_3 = L4_3.handpos
                                                          L5_3 = AttachEntityToEntity
                                                          L6_3 = lastAROV
                                                          L7_3 = L0_3
                                                          L8_3 = GetPedBoneIndex
                                                          L9_3 = L0_3
                                                          L10_3 = 57005
                                                          L8_3 = L8_3(L9_3, L10_3)
                                                          L9_3 = L4_3[1]
                                                          L10_3 = L4_3[2]
                                                          L11_3 = L4_3[3]
                                                          L12_3 = L4_3[4]
                                                          L13_3 = L4_3[5]
                                                          L14_3 = L4_3[6]
                                                          L15_3 = true
                                                          L16_3 = true
                                                          L17_3 = false
                                                          L18_3 = true
                                                          L19_3 = 1
                                                          L20_3 = true
                                                          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                                                          L5_3 = SetModelAsNoLongerNeeded
                                                          L6_3 = L1_3
                                                          L5_3(L6_3)
                                                          L5_3 = ArrowList
                                                          L6_3 = myArrow
                                                          L5_3 = L5_3[L6_3]
                                                          L5_3 = L5_3.damage
                                                          if not L5_3 then
                                                            L5_3 = 10
                                                          end
                                                          L6_3 = ArrowList
                                                          L7_3 = myArrow
                                                          L6_3 = L6_3[L7_3]
                                                          L6_3 = L6_3.damageRadius
                                                          if not L6_3 then
                                                            L6_3 = 2.5
                                                          end
                                                          L7_3 = ArrowList
                                                          L8_3 = myArrow
                                                          L7_3 = L7_3[L8_3]
                                                          L7_3 = L7_3.item
                                                          if not L7_3 then
                                                            L7_3 = nil
                                                          end
                                                          L8_3 = ArrowFX
                                                          L9_3 = lastAROV
                                                          L8_3(L9_3)
                                                          L8_3 = table
                                                          L8_3 = L8_3.insert
                                                          L9_3 = AROV
                                                          L10_3 = lastAROV
                                                          L8_3(L9_3, L10_3)
                                                          L8_3 = inBowAnims
                                                          L9_3 = L0_3
                                                          L8_3 = L8_3(L9_3)
                                                          if not L8_3 then
                                                            L8_3 = SyncRotAndPos
                                                            L9_3 = L0_3
                                                            L8_3(L9_3)
                                                            L8_3 = BowList
                                                            L9_3 = myBow
                                                            L8_3 = L8_3[L9_3]
                                                            L8_3 = L8_3.attacco
                                                            L9_3 = DetachEntity
                                                            L10_3 = BowObj
                                                            L9_3(L10_3)
                                                            L9_3 = Wait
                                                            L10_3 = 0
                                                            L9_3(L10_3)
                                                            L9_3 = AttachEntityToEntity
                                                            L10_3 = BowObj
                                                            L11_3 = L0_3
                                                            L12_3 = GetPedBoneIndex
                                                            L13_3 = L0_3
                                                            L14_3 = 18905
                                                            L12_3 = L12_3(L13_3, L14_3)
                                                            L13_3 = L8_3[1]
                                                            L14_3 = L8_3[2]
                                                            L15_3 = L8_3[3]
                                                            L16_3 = L8_3[4]
                                                            L17_3 = L8_3[5]
                                                            L18_3 = L8_3[6]
                                                            L19_3 = true
                                                            L20_3 = true
                                                            L21_3 = false
                                                            L22_3 = true
                                                            L23_3 = 1
                                                            L24_3 = true
                                                            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                                                            L9_3 = "bow_and_arrow_idle_aim"
                                                            L10_3 = "bow_and_arrow_idle_aim_clip"
                                                            L11_3 = GetGameplayCamRot
                                                            L12_3 = 2
                                                            L11_3 = L11_3(L12_3)
                                                            L11_3 = L11_3.x
                                                            if L11_3 >= 20.0 then
                                                              L12_3 = "bow_and_arrow_aim_idle_up"
                                                              L10_3 = "bow_and_arrow_aim_idle_up_clip"
                                                              L9_3 = L12_3
                                                            elseif L11_3 < -20.0 then
                                                              L12_3 = "bow_and_arrow_aim_idle_down"
                                                              L10_3 = "bow_and_arrow_aim_idle_down_clip"
                                                              L9_3 = L12_3
                                                            end
                                                            L12_3 = InThrowWeap
                                                            L12_3 = L12_3()
                                                            if L12_3 then
                                                              L12_3 = "original_spear_idle_aim_forward_2"
                                                              L10_3 = "original_spear_idle_aim_forward_2_clip"
                                                              L9_3 = L12_3
                                                              if L11_3 >= 20.0 then
                                                                L12_3 = "original_spear_idle_aim_up_2"
                                                                L10_3 = "original_spear_idle_aim_up_2_clip"
                                                                L9_3 = L12_3
                                                              elseif L11_3 < -20.0 then
                                                                L12_3 = "original_spear_idle_aim_down_2"
                                                                L10_3 = "original_spear_idle_aim_down_2_clip"
                                                                L9_3 = L12_3
                                                              end
                                                            end
                                                            L12_3 = LoadAnim
                                                            L13_3 = L9_3
                                                            L12_3(L13_3)
                                                            L12_3 = 2
                                                            L13_3 = IsEntityAttached
                                                            L14_3 = L0_3
                                                            L13_3 = L13_3(L14_3)
                                                            if L13_3 then
                                                              L12_3 = 49
                                                            end
                                                            L13_3 = Wait
                                                            L14_3 = 25
                                                            L13_3(L14_3)
                                                            L13_3 = TaskPlayAnim
                                                            L14_3 = L0_3
                                                            L15_3 = L9_3
                                                            L16_3 = L10_3
                                                            L17_3 = 3.0
                                                            L18_3 = 1.0
                                                            L19_3 = -1
                                                            L20_3 = L12_3
                                                            L21_3 = false
                                                            L22_3 = false
                                                            L23_3 = false
                                                            L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                                                          end
                                                          L8_3 = GetGameTimer
                                                          L8_3 = L8_3()
                                                          L9_3 = 120
                                                          L10_3 = SfoggiatoBow
                                                          if not L10_3 then
                                                            goto lbl_2744
                                                          end
                                                          L10_3 = IsDisabledControlJustPressed
                                                          L11_3 = 0
                                                          L12_3 = 24
                                                          L10_3 = L10_3(L11_3, L12_3)
                                                          if not L10_3 then
                                                            L10_3 = IsControlJustPressed
                                                            L11_3 = 0
                                                            L12_3 = 24
                                                            L10_3 = L10_3(L11_3, L12_3)
                                                            if not L10_3 then
                                                              goto lbl_2452
                                                            end
                                                          end
                                                          L10_3 = SyncRotAndPos
                                                          L11_3 = L0_3
                                                          L10_3(L11_3)
                                                          ::lbl_2452::
                                                          while true do
                                                            L10_3 = IsDisabledControlPressed
                                                            L11_3 = 0
                                                            L12_3 = 24
                                                            L10_3 = L10_3(L11_3, L12_3)
                                                            if not L10_3 then
                                                              L10_3 = IsControlPressed
                                                              L11_3 = 0
                                                              L12_3 = 24
                                                              L10_3 = L10_3(L11_3, L12_3)
                                                              if not L10_3 then
                                                                break
                                                              end
                                                            end
                                                            L10_3 = CombatActive
                                                            if not L10_3 then
                                                              return
                                                            end
                                                            L10_3 = DrawAimRay
                                                            L10_3()
                                                            L10_3 = "bow_and_arrow_idle_aim"
                                                            L11_3 = "bow_and_arrow_idle_aim_clip"
                                                            L12_3 = GetGameplayCamRot
                                                            L13_3 = 2
                                                            L12_3 = L12_3(L13_3)
                                                            L12_3 = L12_3.x
                                                            if L12_3 >= 20.0 then
                                                              L13_3 = "bow_and_arrow_aim_idle_up"
                                                              L11_3 = "bow_and_arrow_aim_idle_up_clip"
                                                              L10_3 = L13_3
                                                            elseif L12_3 < -20.0 then
                                                              L13_3 = "bow_and_arrow_aim_idle_down"
                                                              L11_3 = "bow_and_arrow_aim_idle_down_clip"
                                                              L10_3 = L13_3
                                                            end
                                                            L13_3 = 2
                                                            L14_3 = InThrowWeap
                                                            L14_3 = L14_3()
                                                            if L14_3 then
                                                              L14_3 = "original_spear_idle_aim_forward_2"
                                                              L11_3 = "original_spear_idle_aim_forward_2_clip"
                                                              L10_3 = L14_3
                                                              if L12_3 >= 20.0 then
                                                                L14_3 = "original_spear_idle_aim_up_2"
                                                                L11_3 = "original_spear_idle_aim_up_2_clip"
                                                                L10_3 = L14_3
                                                              elseif L12_3 < -20.0 then
                                                                L14_3 = "original_spear_idle_aim_down_2"
                                                                L11_3 = "original_spear_idle_aim_down_2_clip"
                                                                L10_3 = L14_3
                                                              end
                                                            end
                                                            L14_3 = IsEntityAttached
                                                            L15_3 = L0_3
                                                            L14_3 = L14_3(L15_3)
                                                            if L14_3 then
                                                              L13_3 = 49
                                                            end
                                                            L14_3 = faiAnim
                                                            L15_3 = L10_3
                                                            L16_3 = L11_3
                                                            L17_3 = -1
                                                            L18_3 = L13_3
                                                            L14_3(L15_3, L16_3, L17_3, L18_3)
                                                            L14_3 = GetGameTimer
                                                            L14_3 = L14_3()
                                                            L15_3 = L14_3 - L8_3
                                                            L8_3 = L14_3
                                                            L16_3 = L15_3 / 1000
                                                            L16_3 = L9_3 * L16_3
                                                            L17_3 = IsEntityAttached
                                                            L18_3 = L0_3
                                                            L17_3 = L17_3(L18_3)
                                                            if not L17_3 then
                                                              L17_3 = potenzaAvanti
                                                              if L17_3 then
                                                                L17_3 = arrowForce
                                                                L17_3 = L17_3 + L16_3
                                                                arrowForce = L17_3
                                                                L17_3 = arrowForce
                                                                if L17_3 >= 100 then
                                                                  arrowForce = 100
                                                                  potenzaAvanti = false
                                                                end
                                                              else
                                                                L17_3 = arrowForce
                                                                L17_3 = L17_3 - L16_3
                                                                arrowForce = L17_3
                                                                L17_3 = arrowForce
                                                                if L17_3 <= 0 then
                                                                  arrowForce = 0
                                                                  potenzaAvanti = true
                                                                end
                                                              end
                                                            else
                                                              arrowForce = 100
                                                              potenzaAvanti = false
                                                            end
                                                            L17_3 = SyncRotAndPos
                                                            L18_3 = L0_3
                                                            L17_3(L18_3)
                                                            L17_3 = Wait
                                                            L18_3 = 0
                                                            L17_3(L18_3)
                                                          end
                                                          L10_3 = 5.0
                                                          L11_3 = DoesEntityExist
                                                          L12_3 = lastAROV
                                                          L11_3 = L11_3(L12_3)
                                                          if L11_3 then
                                                            L11_3 = CombatActive
                                                            if L11_3 then
                                                              L11_3 = SyncRotAndPos
                                                              L12_3 = L0_3
                                                              L11_3(L12_3)
                                                              L11_3 = "bow_and_arrow_pull"
                                                              L12_3 = "bow_and_arrow_pull_clip"
                                                              L13_3 = GetGameplayCamRot
                                                              L14_3 = 2
                                                              L13_3 = L13_3(L14_3)
                                                              L13_3 = L13_3.x
                                                              if L13_3 >= 20.0 then
                                                                L14_3 = "bow_and_arrow_pull_up"
                                                                L12_3 = "bow_and_arrow_pull_up_clip"
                                                                L11_3 = L14_3
                                                              elseif L13_3 < -20.0 then
                                                                L14_3 = "bow_and_arrow_pull_down"
                                                                L12_3 = "bow_and_arrow_pull_down_clip"
                                                                L11_3 = L14_3
                                                              end
                                                              L14_3 = InThrowWeap
                                                              L14_3 = L14_3()
                                                              if L14_3 then
                                                                L10_3 = 1.0
                                                                L14_3 = "original_spear_idle_aim_forward_2"
                                                                L12_3 = "original_spear_idle_aim_forward_2_clip"
                                                                L11_3 = L14_3
                                                                if L13_3 >= 20.0 then
                                                                  L14_3 = "original_spear_idle_aim_up_2"
                                                                  L12_3 = "original_spear_idle_aim_up_2_clip"
                                                                  L11_3 = L14_3
                                                                elseif L13_3 < -20.0 then
                                                                  L14_3 = "original_spear_idle_aim_down_2"
                                                                  L12_3 = "original_spear_idle_aim_down_2_clip"
                                                                  L11_3 = L14_3
                                                                end
                                                              end
                                                              L14_3 = faiAnim
                                                              L15_3 = L11_3
                                                              L16_3 = L12_3
                                                              L17_3 = 450
                                                              L18_3 = 49
                                                              L14_3(L15_3, L16_3, L17_3, L18_3)
                                                              L14_3 = Wait
                                                              L15_3 = 25
                                                              L14_3(L15_3)
                                                              L14_3 = SetEntityAnimSpeed
                                                              L15_3 = L0_3
                                                              L16_3 = L11_3
                                                              L17_3 = L12_3
                                                              L18_3 = L10_3
                                                              L14_3(L15_3, L16_3, L17_3, L18_3)
                                                              L14_3 = InThrowWeap
                                                              L14_3 = L14_3()
                                                              if not L14_3 then
                                                                L14_3 = Wait
                                                                L15_3 = 350
                                                                L14_3(L15_3)
                                                              end
                                                              potenzaAvanti = true
                                                              L14_3 = Wait
                                                              L15_3 = 0
                                                              L14_3(L15_3)
                                                              L14_3 = InThrowWeap
                                                              L14_3 = L14_3()
                                                              if not L14_3 then
                                                                while true do
                                                                  L14_3 = IsEntityPlayingAnim
                                                                  L15_3 = L0_3
                                                                  L16_3 = L11_3
                                                                  L17_3 = L12_3
                                                                  L18_3 = 3
                                                                  L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3)
                                                                  if not L14_3 then
                                                                    break
                                                                  end
                                                                  L14_3 = Wait
                                                                  L15_3 = 0
                                                                  L14_3(L15_3)
                                                                end
                                                              end
                                                              L14_3 = Wait
                                                              L15_3 = 25
                                                              L14_3(L15_3)
                                                              L14_3 = arrowForce
                                                              L15_3 = _ENV
                                                              L16_3 = "maxRateBow"
                                                              L15_3 = L15_3[L16_3]
                                                              if L14_3 >= L15_3 then
                                                                L14_3 = InThrowWeap
                                                                L14_3 = L14_3()
                                                                if L14_3 then
                                                                  L14_3 = "original_spear_attack_8"
                                                                  L12_3 = "original_spear_attack_8_clip"
                                                                  L11_3 = L14_3
                                                                  L14_3 = faiAnim
                                                                  L15_3 = L11_3
                                                                  L16_3 = L12_3
                                                                  L17_3 = 1100
                                                                  L18_3 = 1
                                                                  L14_3(L15_3, L16_3, L17_3, L18_3)
                                                                end
                                                                L14_3 = InThrowWeap
                                                                L14_3 = L14_3()
                                                                if not L14_3 then
                                                                  L14_3 = Wait
                                                                  L15_3 = 250
                                                                  L14_3(L15_3)
                                                                else
                                                                  L14_3 = Wait
                                                                  L15_3 = 950
                                                                  L14_3(L15_3)
                                                                end
                                                                L14_3 = _ENV
                                                                L15_3 = "ArrowThrow"
                                                                L14_3 = L14_3[L15_3]
                                                                L15_3 = arrowForce
                                                                L16_3 = L5_3
                                                                L17_3 = L6_3
                                                                L18_3 = L7_3
                                                                L14_3(L15_3, L16_3, L17_3, L18_3)
                                                                arrowForce = 0
                                                              else
                                                                L14_3 = lastAROV
                                                                if nil ~= L14_3 then
                                                                  L14_3 = DoesEntityExist
                                                                  L15_3 = lastAROV
                                                                  L14_3 = L14_3(L15_3)
                                                                  if L14_3 then
                                                                    L14_3 = SetEntityAsMissionEntity
                                                                    L15_3 = lastAROV
                                                                    L14_3(L15_3)
                                                                    L14_3 = DeleteEntity
                                                                    L15_3 = lastAROV
                                                                    L14_3(L15_3)
                                                                  end
                                                                end
                                                                arrowForce = 0
                                                              end
                                                            end
                                                          end
                                                          L11_3 = Wait
                                                          L12_3 = 25
                                                          L11_3(L12_3)
                                                          L11_3 = IsEntityAttached
                                                          L12_3 = L0_3
                                                          L11_3 = L11_3(L12_3)
                                                          if not L11_3 then
                                                            L11_3 = ClearPedTasks
                                                            L12_3 = L0_3
                                                            L11_3(L12_3)
                                                          else
                                                            L11_3 = _ENV
                                                            L12_3 = "ecc"
                                                            L11_3 = L11_3[L12_3]
                                                            L11_3()
                                                          end
                                                        else
                                                          L1_3 = lastAROV
                                                          if nil ~= L1_3 then
                                                            L1_3 = DoesEntityExist
                                                            L2_3 = lastAROV
                                                            L1_3 = L1_3(L2_3)
                                                            if L1_3 then
                                                              L1_3 = SetEntityAsMissionEntity
                                                              L2_3 = lastAROV
                                                              L1_3(L2_3)
                                                              L1_3 = DeleteEntity
                                                              L2_3 = lastAROV
                                                              L1_3(L2_3)
                                                              lastAROV = nil
                                                            end
                                                          end
                                                        end
                                                        ::lbl_2744::
                                                        L1_3 = GetGameTimer
                                                        L1_3 = L1_3()
                                                        L2_3 = L6_2
                                                        if L1_3 >= L2_3 then
                                                          L2_3 = IsDisabledControlPressed
                                                          L3_3 = 0
                                                          L4_3 = 24
                                                          L2_3 = L2_3(L3_3, L4_3)
                                                          if L2_3 then
                                                            L2_3 = SfoggiatoBow
                                                            if not L2_3 then
                                                              L2_3 = _ENV
                                                              L3_3 = "nextPress"
                                                              L4_3 = 250
                                                              L4_3 = L1_3 + L4_3
                                                              L2_3[L3_3] = L4_3
                                                              L2_3 = AnimFightList
                                                              L3_3 = indexCombat
                                                              L2_3 = L2_3[L3_3]
                                                              if nil == L2_3 then
                                                                L2_3 = _ENV
                                                                L3_3 = "print"
                                                                L2_3 = L2_3[L3_3]
                                                                L3_3 = "ANIMATION YOU TRY TO START ID "
                                                                L4_3 = indexCombat
                                                                L5_3 = " NOT EXIST!"
                                                                L3_3 = L3_3 .. L4_3 .. L5_3
                                                                L2_3(L3_3)
                                                                return
                                                              end
                                                              L2_3 = _ENV
                                                              L3_3 = "CanCombatCheck"
                                                              L2_3 = L2_3[L3_3]
                                                              L2_3 = L2_3()
                                                              if not L2_3 then
                                                                goto lbl_4299
                                                              end
                                                              L2_3 = HoRollato
                                                              if L2_3 then
                                                                goto lbl_4299
                                                              end
                                                              L2_3 = PossoCapriola
                                                              if not L2_3 then
                                                                goto lbl_4299
                                                              end
                                                              L2_3 = _ENV
                                                              L3_3 = "EasyCombat"
                                                              L2_3 = L2_3[L3_3]
                                                              if L2_3 then
                                                                L2_3 = IsEntityPlayingAnim
                                                                L3_3 = L0_3
                                                                L4_3 = AnimFightList
                                                                L5_3 = indexCombat
                                                                L4_3 = L4_3[L5_3]
                                                                L4_3 = L4_3.a
                                                                L5_3 = AnimFightList
                                                                L6_3 = indexCombat
                                                                L5_3 = L5_3[L6_3]
                                                                L5_3 = L5_3.b
                                                                L6_3 = 3
                                                                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                                                                if not L2_3 then
                                                                  L2_3 = _ENV
                                                                  L3_3 = "LoopEasyCombatMode"
                                                                  L2_3 = L2_3[L3_3]
                                                                  L3_3 = L0_3
                                                                  L2_3(L3_3)
                                                                end
                                                              else
                                                                L2_3 = IsDisabledControlPressed
                                                                L3_3 = 0
                                                                L4_3 = 21
                                                                L2_3 = L2_3(L3_3, L4_3)
                                                                if not L2_3 then
                                                                  L2_3 = IsEntityPlayingAnim
                                                                  L3_3 = L0_3
                                                                  L4_3 = AnimFightList
                                                                  L5_3 = indexCombat
                                                                  L4_3 = L4_3[L5_3]
                                                                  L4_3 = L4_3.a
                                                                  L5_3 = AnimFightList
                                                                  L6_3 = indexCombat
                                                                  L5_3 = L5_3[L6_3]
                                                                  L5_3 = L5_3.b
                                                                  L6_3 = 3
                                                                  L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                                                                  if L2_3 then
                                                                    goto lbl_4299
                                                                  end
                                                                  L2_3 = IsDisabledControlPressed
                                                                  L3_3 = 0
                                                                  L4_3 = 32
                                                                  L2_3 = L2_3(L3_3, L4_3)
                                                                  if not L2_3 then
                                                                    L2_3 = IsDisabledControlPressed
                                                                    L3_3 = 0
                                                                    L4_3 = 33
                                                                    L2_3 = L2_3(L3_3, L4_3)
                                                                    if not L2_3 then
                                                                      goto lbl_3079
                                                                    end
                                                                  end
                                                                  L2_3 = FiatoneCapriola
                                                                  L3_3 = _ENV
                                                                  L4_3 = "delStaminaFight"
                                                                  L3_3 = L3_3[L4_3]
                                                                  L4_3 = exports
                                                                  L4_3 = L4_3.striano_combat
                                                                  L5_3 = L4_3
                                                                  L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                  L4_3 = L4_3(L5_3)
                                                                  L3_3 = L3_3 * L4_3
                                                                  L2_3 = L2_3 - L3_3
                                                                  FiatoneCapriola = L2_3
                                                                  L2_3 = OnStartCombat
                                                                  L3_3 = indexCombat
                                                                  L4_3 = nil
                                                                  L5_3 = AnimFightList
                                                                  L2_3(L3_3, L4_3, L5_3)
                                                                  HoRollato = true
                                                                  L2_3 = _ENV
                                                                  L3_3 = "tabAnim"
                                                                  L4_3 = L5_2
                                                                  L5_3 = "WithoutShift"
                                                                  L4_3 = L4_3[L5_3]
                                                                  L5_3 = "CombatW"
                                                                  L4_3 = L4_3[L5_3]
                                                                  L2_3[L3_3] = L4_3
                                                                  L2_3 = _ENV
                                                                  L3_3 = "tabAnim"
                                                                  L2_3 = L2_3[L3_3]
                                                                  L2_3 = #L2_3
                                                                  if L2_3 > 0 then
                                                                    L2_3 = L5_2
                                                                    L3_3 = "WithoutShift"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = "CombatW"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = math
                                                                    L3_3 = L3_3.random
                                                                    L4_3 = 1
                                                                    L5_3 = _ENV
                                                                    L6_3 = "tabAnim"
                                                                    L5_3 = L5_3[L6_3]
                                                                    L5_3 = #L5_3
                                                                    L3_3 = L3_3(L4_3, L5_3)
                                                                    L2_3 = L2_3[L3_3]
                                                                    indexCombat = L2_3
                                                                    L3_3 = AnimFightList
                                                                    L3_3 = #L3_3
                                                                    if L2_3 <= L3_3 then
                                                                      L3_3 = LoadAnim
                                                                      L4_3 = AnimFightList
                                                                      L4_3 = L4_3[L2_3]
                                                                      L4_3 = L4_3.a
                                                                      L3_3(L4_3)
                                                                      L3_3 = ClearPedTasks
                                                                      L4_3 = L0_3
                                                                      L3_3(L4_3)
                                                                      L3_3 = AnimFightList
                                                                      L3_3 = L3_3[L2_3]
                                                                      L4_3 = "freeze"
                                                                      L3_3 = L3_3[L4_3]
                                                                      if L3_3 then
                                                                        L3_3 = _ENV
                                                                        L4_3 = "FreezeEntityPosition"
                                                                        L3_3 = L3_3[L4_3]
                                                                        L4_3 = L0_3
                                                                        L5_3 = true
                                                                        L3_3(L4_3, L5_3)
                                                                      end
                                                                      L3_3 = _ENV
                                                                      L4_3 = "changeAnimSpeed"
                                                                      L3_3 = L3_3[L4_3]
                                                                      L4_3 = L2_3
                                                                      L3_3 = L3_3(L4_3)
                                                                      L4_3 = math
                                                                      L5_3 = "floor"
                                                                      L4_3 = L4_3[L5_3]
                                                                      L5_3 = AnimFightList
                                                                      L5_3 = L5_3[L2_3]
                                                                      L6_3 = "start"
                                                                      L5_3 = L5_3[L6_3]
                                                                      L5_3 = L5_3 / L3_3
                                                                      L4_3 = L4_3(L5_3)
                                                                      L5_3 = math
                                                                      L6_3 = "floor"
                                                                      L5_3 = L5_3[L6_3]
                                                                      L6_3 = _ENV
                                                                      L7_3 = "GetAnimDuration"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L7_3 = L7_3.a
                                                                      L8_3 = AnimFightList
                                                                      L8_3 = L8_3[L2_3]
                                                                      L8_3 = L8_3.b
                                                                      L6_3 = L6_3(L7_3, L8_3)
                                                                      L6_3 = L6_3 * 1000
                                                                      L5_3 = L5_3(L6_3)
                                                                      L5_3 = L5_3 / L3_3
                                                                      L6_3 = AnimFightList
                                                                      L6_3 = L6_3[L2_3]
                                                                      L7_3 = "tim"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = 999999
                                                                      if L6_3 == L7_3 then
                                                                        L6_3 = AnimFightList
                                                                        L6_3 = L6_3[L2_3]
                                                                        L7_3 = "tim"
                                                                        L6_3[L7_3] = L5_3
                                                                      end
                                                                      L6_3 = math
                                                                      L7_3 = "floor"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "tim"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L7_3 = L7_3 / L3_3
                                                                      L6_3 = L6_3(L7_3)
                                                                      if L5_3 < L6_3 then
                                                                        L6_3 = L5_3 - 50
                                                                      end
                                                                      L7_3 = _ENV
                                                                      L8_3 = "StartCombatAnim"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = L0_3
                                                                      L9_3 = AnimFightList
                                                                      L9_3 = L9_3[L2_3]
                                                                      L9_3 = L9_3.a
                                                                      L10_3 = AnimFightList
                                                                      L10_3 = L10_3[L2_3]
                                                                      L10_3 = L10_3.b
                                                                      L11_3 = L6_3
                                                                      L12_3 = L3_3
                                                                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                      L7_3 = IsEntityAttached
                                                                      L8_3 = L0_3
                                                                      L7_3 = L7_3(L8_3)
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "grandezzaEnemy"
                                                                        L9_3 = 1.3
                                                                        L7_3[L8_3] = L9_3
                                                                      end
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "slow"
                                                                      L7_3 = L7_3[L8_3]
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "CollMe"
                                                                        L7_3 = L7_3[L8_3]
                                                                        L7_3()
                                                                      end
                                                                      L7_3 = Wait
                                                                      L8_3 = L4_3
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "DashMe"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = AnimFightList
                                                                      L9_3 = L2_3
                                                                      L7_3(L8_3, L9_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "CheckTrain"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = "W"
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "BonesCheck"
                                                                      L9_3 = AnimFightList
                                                                      L9_3 = L9_3[L2_3]
                                                                      L10_3 = "bones"
                                                                      L9_3 = L9_3[L10_3]
                                                                      L7_3[L8_3] = L9_3
                                                                      L7_3 = Wait
                                                                      L8_3 = L6_3 - L4_3
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "BonesCheck"
                                                                      L9_3 = {}
                                                                      L7_3[L8_3] = L9_3
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "freeze"
                                                                      L7_3 = L7_3[L8_3]
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "FreezeEntityPosition"
                                                                        L7_3 = L7_3[L8_3]
                                                                        L8_3 = L0_3
                                                                        L9_3 = false
                                                                        L7_3(L8_3, L9_3)
                                                                      end
                                                                      L7_3 = Wait
                                                                      L8_3 = _ENV
                                                                      L9_3 = "DelaySkill"
                                                                      L8_3 = L8_3[L9_3]
                                                                      L7_3(L8_3)
                                                                      HoRollato = false
                                                                      L7_3 = EndRoll
                                                                      L7_3()
                                                                    else
                                                                      L3_3 = _ENV
                                                                      L4_3 = "print"
                                                                      L3_3 = L3_3[L4_3]
                                                                      L4_3 = "Hey ERROR! Animation ID "
                                                                      L5_3 = L2_3
                                                                      L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                      L4_3 = L4_3 .. L5_3 .. L6_3
                                                                      L3_3(L4_3)
                                                                    end
                                                                  else
                                                                    HoRollato = false
                                                                    L2_3 = _ENV
                                                                    L3_3 = "print"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = "Moveset empty!"
                                                                    L2_3(L3_3)
                                                                    L2_3 = Wait
                                                                    L3_3 = 150
                                                                    L2_3(L3_3)
                                                                    goto lbl_4299
                                                                    ::lbl_3079::
                                                                    L2_3 = IsDisabledControlPressed
                                                                    L3_3 = 0
                                                                    L4_3 = 34
                                                                    L2_3 = L2_3(L3_3, L4_3)
                                                                    if L2_3 then
                                                                      L2_3 = PossoCapriola
                                                                      if L2_3 then
                                                                        L2_3 = FiatoneCapriola
                                                                        L3_3 = _ENV
                                                                        L4_3 = "delStaminaFight"
                                                                        L3_3 = L3_3[L4_3]
                                                                        L4_3 = exports
                                                                        L4_3 = L4_3.striano_combat
                                                                        L5_3 = L4_3
                                                                        L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                        L4_3 = L4_3(L5_3)
                                                                        L3_3 = L3_3 * L4_3
                                                                        L2_3 = L2_3 - L3_3
                                                                        FiatoneCapriola = L2_3
                                                                        L2_3 = OnStartCombat
                                                                        L3_3 = indexCombat
                                                                        L4_3 = nil
                                                                        L5_3 = AnimFightList
                                                                        L2_3(L3_3, L4_3, L5_3)
                                                                        HoRollato = true
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L4_3 = L5_2
                                                                        L5_3 = "WithoutShift"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L5_3 = "CombatA"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L2_3[L3_3] = L4_3
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L2_3 = #L2_3
                                                                        if L2_3 > 0 then
                                                                          L2_3 = L5_2
                                                                          L3_3 = "WithoutShift"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "CombatA"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = math
                                                                          L3_3 = L3_3.random
                                                                          L4_3 = 1
                                                                          L5_3 = _ENV
                                                                          L6_3 = "tabAnim"
                                                                          L5_3 = L5_3[L6_3]
                                                                          L5_3 = #L5_3
                                                                          L3_3 = L3_3(L4_3, L5_3)
                                                                          L2_3 = L2_3[L3_3]
                                                                          indexCombat = L2_3
                                                                          L3_3 = ClearPedTasks
                                                                          L4_3 = L0_3
                                                                          L3_3(L4_3)
                                                                          L3_3 = AnimFightList
                                                                          L3_3 = #L3_3
                                                                          if L2_3 <= L3_3 then
                                                                            L3_3 = LoadAnim
                                                                            L4_3 = AnimFightList
                                                                            L4_3 = L4_3[L2_3]
                                                                            L4_3 = L4_3.a
                                                                            L3_3(L4_3)
                                                                            L3_3 = AnimFightList
                                                                            L3_3 = L3_3[L2_3]
                                                                            L4_3 = "freeze"
                                                                            L3_3 = L3_3[L4_3]
                                                                            if L3_3 then
                                                                              L3_3 = _ENV
                                                                              L4_3 = "FreezeEntityPosition"
                                                                              L3_3 = L3_3[L4_3]
                                                                              L4_3 = L0_3
                                                                              L5_3 = true
                                                                              L3_3(L4_3, L5_3)
                                                                            end
                                                                            L3_3 = _ENV
                                                                            L4_3 = "changeAnimSpeed"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = L2_3
                                                                            L3_3 = L3_3(L4_3)
                                                                            L4_3 = math
                                                                            L5_3 = "floor"
                                                                            L4_3 = L4_3[L5_3]
                                                                            L5_3 = AnimFightList
                                                                            L5_3 = L5_3[L2_3]
                                                                            L6_3 = "start"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L5_3 = L5_3 / L3_3
                                                                            L4_3 = L4_3(L5_3)
                                                                            L5_3 = math
                                                                            L6_3 = "floor"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L6_3 = _ENV
                                                                            L7_3 = "GetAnimDuration"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L7_3 = L7_3.a
                                                                            L8_3 = AnimFightList
                                                                            L8_3 = L8_3[L2_3]
                                                                            L8_3 = L8_3.b
                                                                            L6_3 = L6_3(L7_3, L8_3)
                                                                            L6_3 = L6_3 * 1000
                                                                            L5_3 = L5_3(L6_3)
                                                                            L5_3 = L5_3 / L3_3
                                                                            L6_3 = AnimFightList
                                                                            L6_3 = L6_3[L2_3]
                                                                            L7_3 = "tim"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = 999999
                                                                            if L6_3 == L7_3 then
                                                                              L6_3 = AnimFightList
                                                                              L6_3 = L6_3[L2_3]
                                                                              L7_3 = "tim"
                                                                              L6_3[L7_3] = L5_3
                                                                            end
                                                                            L6_3 = math
                                                                            L7_3 = "floor"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "tim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L7_3 = L7_3 / L3_3
                                                                            L6_3 = L6_3(L7_3)
                                                                            if L5_3 < L6_3 then
                                                                              L6_3 = L5_3 - 50
                                                                            end
                                                                            L7_3 = _ENV
                                                                            L8_3 = "StartCombatAnim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = L0_3
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L9_3 = L9_3.a
                                                                            L10_3 = AnimFightList
                                                                            L10_3 = L10_3[L2_3]
                                                                            L10_3 = L10_3.b
                                                                            L11_3 = L6_3
                                                                            L12_3 = L3_3
                                                                            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                            L7_3 = IsEntityAttached
                                                                            L8_3 = L0_3
                                                                            L7_3 = L7_3(L8_3)
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "grandezzaEnemy"
                                                                              L9_3 = 1.3
                                                                              L7_3[L8_3] = L9_3
                                                                            end
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "slow"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "CollMe"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L7_3()
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "DashMe"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = AnimFightList
                                                                            L9_3 = L2_3
                                                                            L7_3(L8_3, L9_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "CheckTrain"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = "A"
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L10_3 = "bones"
                                                                            L9_3 = L9_3[L10_3]
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = Wait
                                                                            L8_3 = L6_3 - L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = {}
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "freeze"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "FreezeEntityPosition"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L8_3 = L0_3
                                                                              L9_3 = false
                                                                              L7_3(L8_3, L9_3)
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = _ENV
                                                                            L9_3 = "DelaySkill"
                                                                            L8_3 = L8_3[L9_3]
                                                                            L7_3(L8_3)
                                                                            HoRollato = false
                                                                            L7_3 = EndRoll
                                                                            L7_3()
                                                                          else
                                                                            L3_3 = _ENV
                                                                            L4_3 = "print"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = "Hey ERROR! Animation ID "
                                                                            L5_3 = L2_3
                                                                            L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                            L4_3 = L4_3 .. L5_3 .. L6_3
                                                                            L3_3(L4_3)
                                                                          end
                                                                        else
                                                                          HoRollato = false
                                                                          L2_3 = _ENV
                                                                          L3_3 = "print"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "Moveset empty!"
                                                                          L2_3(L3_3)
                                                                          L2_3 = Wait
                                                                          L3_3 = 150
                                                                          L2_3(L3_3)
                                                                        end
                                                                    end
                                                                    else
                                                                      L2_3 = IsDisabledControlPressed
                                                                      L3_3 = 0
                                                                      L4_3 = 35
                                                                      L2_3 = L2_3(L3_3, L4_3)
                                                                      if L2_3 then
                                                                        L2_3 = FiatoneCapriola
                                                                        L3_3 = _ENV
                                                                        L4_3 = "delStaminaFight"
                                                                        L3_3 = L3_3[L4_3]
                                                                        L4_3 = exports
                                                                        L4_3 = L4_3.striano_combat
                                                                        L5_3 = L4_3
                                                                        L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                        L4_3 = L4_3(L5_3)
                                                                        L3_3 = L3_3 * L4_3
                                                                        L2_3 = L2_3 - L3_3
                                                                        FiatoneCapriola = L2_3
                                                                        L2_3 = OnStartCombat
                                                                        L3_3 = indexCombat
                                                                        L4_3 = nil
                                                                        L5_3 = AnimFightList
                                                                        L2_3(L3_3, L4_3, L5_3)
                                                                        HoRollato = true
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L4_3 = L5_2
                                                                        L5_3 = "WithoutShift"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L5_3 = "CombatD"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L2_3[L3_3] = L4_3
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L2_3 = #L2_3
                                                                        if L2_3 > 0 then
                                                                          L2_3 = L5_2
                                                                          L3_3 = "WithoutShift"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "CombatD"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = math
                                                                          L3_3 = L3_3.random
                                                                          L4_3 = 1
                                                                          L5_3 = _ENV
                                                                          L6_3 = "tabAnim"
                                                                          L5_3 = L5_3[L6_3]
                                                                          L5_3 = #L5_3
                                                                          L3_3 = L3_3(L4_3, L5_3)
                                                                          L2_3 = L2_3[L3_3]
                                                                          indexCombat = L2_3
                                                                          L3_3 = ClearPedTasks
                                                                          L4_3 = L0_3
                                                                          L3_3(L4_3)
                                                                          L3_3 = AnimFightList
                                                                          L3_3 = #L3_3
                                                                          if L2_3 <= L3_3 then
                                                                            L3_3 = LoadAnim
                                                                            L4_3 = AnimFightList
                                                                            L4_3 = L4_3[L2_3]
                                                                            L4_3 = L4_3.a
                                                                            L3_3(L4_3)
                                                                            L3_3 = AnimFightList
                                                                            L3_3 = L3_3[L2_3]
                                                                            L4_3 = "freeze"
                                                                            L3_3 = L3_3[L4_3]
                                                                            if L3_3 then
                                                                              L3_3 = _ENV
                                                                              L4_3 = "FreezeEntityPosition"
                                                                              L3_3 = L3_3[L4_3]
                                                                              L4_3 = L0_3
                                                                              L5_3 = true
                                                                              L3_3(L4_3, L5_3)
                                                                            end
                                                                            L3_3 = _ENV
                                                                            L4_3 = "changeAnimSpeed"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = L2_3
                                                                            L3_3 = L3_3(L4_3)
                                                                            L4_3 = math
                                                                            L5_3 = "floor"
                                                                            L4_3 = L4_3[L5_3]
                                                                            L5_3 = AnimFightList
                                                                            L5_3 = L5_3[L2_3]
                                                                            L6_3 = "start"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L5_3 = L5_3 / L3_3
                                                                            L4_3 = L4_3(L5_3)
                                                                            L5_3 = math
                                                                            L6_3 = "floor"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L6_3 = _ENV
                                                                            L7_3 = "GetAnimDuration"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L7_3 = L7_3.a
                                                                            L8_3 = AnimFightList
                                                                            L8_3 = L8_3[L2_3]
                                                                            L8_3 = L8_3.b
                                                                            L6_3 = L6_3(L7_3, L8_3)
                                                                            L6_3 = L6_3 * 1000
                                                                            L5_3 = L5_3(L6_3)
                                                                            L5_3 = L5_3 / L3_3
                                                                            L6_3 = AnimFightList
                                                                            L6_3 = L6_3[L2_3]
                                                                            L7_3 = "tim"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = 999999
                                                                            if L6_3 == L7_3 then
                                                                              L6_3 = AnimFightList
                                                                              L6_3 = L6_3[L2_3]
                                                                              L7_3 = "tim"
                                                                              L6_3[L7_3] = L5_3
                                                                            end
                                                                            L6_3 = math
                                                                            L7_3 = "floor"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "tim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L7_3 = L7_3 / L3_3
                                                                            L6_3 = L6_3(L7_3)
                                                                            if L5_3 < L6_3 then
                                                                              L6_3 = L5_3 - 50
                                                                            end
                                                                            L7_3 = _ENV
                                                                            L8_3 = "StartCombatAnim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = L0_3
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L9_3 = L9_3.a
                                                                            L10_3 = AnimFightList
                                                                            L10_3 = L10_3[L2_3]
                                                                            L10_3 = L10_3.b
                                                                            L11_3 = L6_3
                                                                            L12_3 = L3_3
                                                                            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                            L7_3 = IsEntityAttached
                                                                            L8_3 = L0_3
                                                                            L7_3 = L7_3(L8_3)
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "grandezzaEnemy"
                                                                              L9_3 = 1.3
                                                                              L7_3[L8_3] = L9_3
                                                                            end
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "slow"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "CollMe"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L7_3()
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "DashMe"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = AnimFightList
                                                                            L9_3 = L2_3
                                                                            L7_3(L8_3, L9_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "CheckTrain"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = "D"
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L10_3 = "bones"
                                                                            L9_3 = L9_3[L10_3]
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = Wait
                                                                            L8_3 = L6_3 - L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = {}
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "freeze"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "FreezeEntityPosition"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L8_3 = L0_3
                                                                              L9_3 = false
                                                                              L7_3(L8_3, L9_3)
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = _ENV
                                                                            L9_3 = "DelaySkill"
                                                                            L8_3 = L8_3[L9_3]
                                                                            L7_3(L8_3)
                                                                            HoRollato = false
                                                                            L7_3 = EndRoll
                                                                            L7_3()
                                                                          else
                                                                            L3_3 = _ENV
                                                                            L4_3 = "print"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = "Hey ERROR! Animation ID "
                                                                            L5_3 = L2_3
                                                                            L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                            L4_3 = L4_3 .. L5_3 .. L6_3
                                                                            L3_3(L4_3)
                                                                          end
                                                                        else
                                                                          HoRollato = false
                                                                          L2_3 = _ENV
                                                                          L3_3 = "print"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "Moveset empty!"
                                                                          L2_3(L3_3)
                                                                          L2_3 = Wait
                                                                          L3_3 = 150
                                                                          L2_3(L3_3)
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                else
                                                                  L2_3 = IsDisabledControlPressed
                                                                  L3_3 = 0
                                                                  L4_3 = 32
                                                                  L2_3 = L2_3(L3_3, L4_3)
                                                                  if not L2_3 then
                                                                    L2_3 = IsDisabledControlPressed
                                                                    L3_3 = 0
                                                                    L4_3 = 33
                                                                    L2_3 = L2_3(L3_3, L4_3)
                                                                    if not L2_3 then
                                                                      goto lbl_3804
                                                                    end
                                                                  end
                                                                  L2_3 = FiatoneCapriola
                                                                  L3_3 = _ENV
                                                                  L4_3 = "delStaminaFight"
                                                                  L3_3 = L3_3[L4_3]
                                                                  L3_3 = L3_3 + 5
                                                                  L4_3 = exports
                                                                  L4_3 = L4_3.striano_combat
                                                                  L5_3 = L4_3
                                                                  L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                  L4_3 = L4_3(L5_3)
                                                                  L3_3 = L3_3 * L4_3
                                                                  L2_3 = L2_3 - L3_3
                                                                  FiatoneCapriola = L2_3
                                                                  L2_3 = OnStartCombat
                                                                  L3_3 = indexCombat
                                                                  L4_3 = nil
                                                                  L5_3 = AnimFightList
                                                                  L2_3(L3_3, L4_3, L5_3)
                                                                  HoRollato = true
                                                                  L2_3 = _ENV
                                                                  L3_3 = "tabAnim"
                                                                  L4_3 = L5_2
                                                                  L5_3 = "WithShift"
                                                                  L4_3 = L4_3[L5_3]
                                                                  L5_3 = "CombatW"
                                                                  L4_3 = L4_3[L5_3]
                                                                  L2_3[L3_3] = L4_3
                                                                  L2_3 = _ENV
                                                                  L3_3 = "tabAnim"
                                                                  L2_3 = L2_3[L3_3]
                                                                  L2_3 = #L2_3
                                                                  if L2_3 > 0 then
                                                                    L2_3 = L5_2
                                                                    L3_3 = "WithShift"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = "CombatW"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = math
                                                                    L3_3 = L3_3.random
                                                                    L4_3 = 1
                                                                    L5_3 = _ENV
                                                                    L6_3 = "tabAnim"
                                                                    L5_3 = L5_3[L6_3]
                                                                    L5_3 = #L5_3
                                                                    L3_3 = L3_3(L4_3, L5_3)
                                                                    L2_3 = L2_3[L3_3]
                                                                    indexCombat = L2_3
                                                                    L3_3 = ClearPedTasks
                                                                    L4_3 = L0_3
                                                                    L3_3(L4_3)
                                                                    L3_3 = AnimFightList
                                                                    L3_3 = #L3_3
                                                                    if L2_3 <= L3_3 then
                                                                      L3_3 = LoadAnim
                                                                      L4_3 = AnimFightList
                                                                      L4_3 = L4_3[L2_3]
                                                                      L4_3 = L4_3.a
                                                                      L3_3(L4_3)
                                                                      L3_3 = AnimFightList
                                                                      L3_3 = L3_3[L2_3]
                                                                      L4_3 = "freeze"
                                                                      L3_3 = L3_3[L4_3]
                                                                      if L3_3 then
                                                                        L3_3 = _ENV
                                                                        L4_3 = "FreezeEntityPosition"
                                                                        L3_3 = L3_3[L4_3]
                                                                        L4_3 = L0_3
                                                                        L5_3 = true
                                                                        L3_3(L4_3, L5_3)
                                                                      end
                                                                      L3_3 = _ENV
                                                                      L4_3 = "changeAnimSpeed"
                                                                      L3_3 = L3_3[L4_3]
                                                                      L4_3 = L2_3
                                                                      L3_3 = L3_3(L4_3)
                                                                      L4_3 = math
                                                                      L5_3 = "floor"
                                                                      L4_3 = L4_3[L5_3]
                                                                      L5_3 = AnimFightList
                                                                      L5_3 = L5_3[L2_3]
                                                                      L6_3 = "start"
                                                                      L5_3 = L5_3[L6_3]
                                                                      L5_3 = L5_3 / L3_3
                                                                      L4_3 = L4_3(L5_3)
                                                                      L5_3 = math
                                                                      L6_3 = "floor"
                                                                      L5_3 = L5_3[L6_3]
                                                                      L6_3 = _ENV
                                                                      L7_3 = "GetAnimDuration"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L7_3 = L7_3.a
                                                                      L8_3 = AnimFightList
                                                                      L8_3 = L8_3[L2_3]
                                                                      L8_3 = L8_3.b
                                                                      L6_3 = L6_3(L7_3, L8_3)
                                                                      L6_3 = L6_3 * 1000
                                                                      L5_3 = L5_3(L6_3)
                                                                      L5_3 = L5_3 / L3_3
                                                                      L6_3 = AnimFightList
                                                                      L6_3 = L6_3[L2_3]
                                                                      L7_3 = "tim"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = 999999
                                                                      if L6_3 == L7_3 then
                                                                        L6_3 = AnimFightList
                                                                        L6_3 = L6_3[L2_3]
                                                                        L7_3 = "tim"
                                                                        L6_3[L7_3] = L5_3
                                                                      end
                                                                      L6_3 = math
                                                                      L7_3 = "floor"
                                                                      L6_3 = L6_3[L7_3]
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "tim"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L7_3 = L7_3 / L3_3
                                                                      L6_3 = L6_3(L7_3)
                                                                      if L5_3 < L6_3 then
                                                                        L6_3 = L5_3 - 50
                                                                      end
                                                                      L7_3 = _ENV
                                                                      L8_3 = "StartCombatAnim"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = L0_3
                                                                      L9_3 = AnimFightList
                                                                      L9_3 = L9_3[L2_3]
                                                                      L9_3 = L9_3.a
                                                                      L10_3 = AnimFightList
                                                                      L10_3 = L10_3[L2_3]
                                                                      L10_3 = L10_3.b
                                                                      L11_3 = L6_3
                                                                      L12_3 = L3_3
                                                                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                      L7_3 = IsEntityAttached
                                                                      L8_3 = L0_3
                                                                      L7_3 = L7_3(L8_3)
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "grandezzaEnemy"
                                                                        L9_3 = 1.3
                                                                        L7_3[L8_3] = L9_3
                                                                      end
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "slow"
                                                                      L7_3 = L7_3[L8_3]
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "CollMe"
                                                                        L7_3 = L7_3[L8_3]
                                                                        L7_3()
                                                                      end
                                                                      L7_3 = Wait
                                                                      L8_3 = L4_3
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "DashMe"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = AnimFightList
                                                                      L9_3 = L2_3
                                                                      L7_3(L8_3, L9_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "CheckTrain"
                                                                      L7_3 = L7_3[L8_3]
                                                                      L8_3 = "SW"
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "BonesCheck"
                                                                      L9_3 = AnimFightList
                                                                      L9_3 = L9_3[L2_3]
                                                                      L10_3 = "bones"
                                                                      L9_3 = L9_3[L10_3]
                                                                      L7_3[L8_3] = L9_3
                                                                      L7_3 = Wait
                                                                      L8_3 = L6_3 - L4_3
                                                                      L7_3(L8_3)
                                                                      L7_3 = _ENV
                                                                      L8_3 = "BonesCheck"
                                                                      L9_3 = {}
                                                                      L7_3[L8_3] = L9_3
                                                                      L7_3 = AnimFightList
                                                                      L7_3 = L7_3[L2_3]
                                                                      L8_3 = "freeze"
                                                                      L7_3 = L7_3[L8_3]
                                                                      if L7_3 then
                                                                        L7_3 = _ENV
                                                                        L8_3 = "FreezeEntityPosition"
                                                                        L7_3 = L7_3[L8_3]
                                                                        L8_3 = L0_3
                                                                        L9_3 = false
                                                                        L7_3(L8_3, L9_3)
                                                                      end
                                                                      L7_3 = Wait
                                                                      L8_3 = _ENV
                                                                      L9_3 = "DelaySkill"
                                                                      L8_3 = L8_3[L9_3]
                                                                      L7_3(L8_3)
                                                                      HoRollato = false
                                                                      L7_3 = EndRoll
                                                                      L7_3()
                                                                    else
                                                                      L3_3 = _ENV
                                                                      L4_3 = "print"
                                                                      L3_3 = L3_3[L4_3]
                                                                      L4_3 = "Hey ERROR! Animation ID "
                                                                      L5_3 = L2_3
                                                                      L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                      L4_3 = L4_3 .. L5_3 .. L6_3
                                                                      L3_3(L4_3)
                                                                    end
                                                                  else
                                                                    HoRollato = false
                                                                    L2_3 = _ENV
                                                                    L3_3 = "print"
                                                                    L2_3 = L2_3[L3_3]
                                                                    L3_3 = "Moveset empty!"
                                                                    L2_3(L3_3)
                                                                    L2_3 = Wait
                                                                    L3_3 = 150
                                                                    L2_3(L3_3)
                                                                    goto lbl_4299
                                                                    ::lbl_3804::
                                                                    L2_3 = IsDisabledControlPressed
                                                                    L3_3 = 0
                                                                    L4_3 = 34
                                                                    L2_3 = L2_3(L3_3, L4_3)
                                                                    if L2_3 then
                                                                      L2_3 = FiatoneCapriola
                                                                      L3_3 = _ENV
                                                                      L4_3 = "delStaminaFight"
                                                                      L3_3 = L3_3[L4_3]
                                                                      L3_3 = L3_3 + 5
                                                                      L4_3 = exports
                                                                      L4_3 = L4_3.striano_combat
                                                                      L5_3 = L4_3
                                                                      L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                      L4_3 = L4_3(L5_3)
                                                                      L3_3 = L3_3 * L4_3
                                                                      L2_3 = L2_3 - L3_3
                                                                      FiatoneCapriola = L2_3
                                                                      L2_3 = OnStartCombat
                                                                      L3_3 = indexCombat
                                                                      L4_3 = nil
                                                                      L5_3 = AnimFightList
                                                                      L2_3(L3_3, L4_3, L5_3)
                                                                      HoRollato = true
                                                                      L2_3 = _ENV
                                                                      L3_3 = "tabAnim"
                                                                      L4_3 = L5_2
                                                                      L5_3 = "WithShift"
                                                                      L4_3 = L4_3[L5_3]
                                                                      L5_3 = "CombatA"
                                                                      L4_3 = L4_3[L5_3]
                                                                      L2_3[L3_3] = L4_3
                                                                      L2_3 = _ENV
                                                                      L3_3 = "tabAnim"
                                                                      L2_3 = L2_3[L3_3]
                                                                      L2_3 = #L2_3
                                                                      if L2_3 > 0 then
                                                                        L2_3 = L5_2
                                                                        L3_3 = "WithShift"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L3_3 = "CombatA"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L3_3 = math
                                                                        L3_3 = L3_3.random
                                                                        L4_3 = 1
                                                                        L5_3 = _ENV
                                                                        L6_3 = "tabAnim"
                                                                        L5_3 = L5_3[L6_3]
                                                                        L5_3 = #L5_3
                                                                        L3_3 = L3_3(L4_3, L5_3)
                                                                        L2_3 = L2_3[L3_3]
                                                                        indexCombat = L2_3
                                                                        L3_3 = ClearPedTasks
                                                                        L4_3 = L0_3
                                                                        L3_3(L4_3)
                                                                        L3_3 = AnimFightList
                                                                        L3_3 = #L3_3
                                                                        if L2_3 <= L3_3 then
                                                                          L3_3 = LoadAnim
                                                                          L4_3 = AnimFightList
                                                                          L4_3 = L4_3[L2_3]
                                                                          L4_3 = L4_3.a
                                                                          L3_3(L4_3)
                                                                          L3_3 = AnimFightList
                                                                          L3_3 = L3_3[L2_3]
                                                                          L4_3 = "freeze"
                                                                          L3_3 = L3_3[L4_3]
                                                                          if L3_3 then
                                                                            L3_3 = _ENV
                                                                            L4_3 = "FreezeEntityPosition"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = L0_3
                                                                            L5_3 = true
                                                                            L3_3(L4_3, L5_3)
                                                                          end
                                                                          L3_3 = _ENV
                                                                          L4_3 = "changeAnimSpeed"
                                                                          L3_3 = L3_3[L4_3]
                                                                          L4_3 = L2_3
                                                                          L3_3 = L3_3(L4_3)
                                                                          L4_3 = math
                                                                          L5_3 = "floor"
                                                                          L4_3 = L4_3[L5_3]
                                                                          L5_3 = AnimFightList
                                                                          L5_3 = L5_3[L2_3]
                                                                          L6_3 = "start"
                                                                          L5_3 = L5_3[L6_3]
                                                                          L5_3 = L5_3 / L3_3
                                                                          L4_3 = L4_3(L5_3)
                                                                          L5_3 = math
                                                                          L6_3 = "floor"
                                                                          L5_3 = L5_3[L6_3]
                                                                          L6_3 = _ENV
                                                                          L7_3 = "GetAnimDuration"
                                                                          L6_3 = L6_3[L7_3]
                                                                          L7_3 = AnimFightList
                                                                          L7_3 = L7_3[L2_3]
                                                                          L7_3 = L7_3.a
                                                                          L8_3 = AnimFightList
                                                                          L8_3 = L8_3[L2_3]
                                                                          L8_3 = L8_3.b
                                                                          L6_3 = L6_3(L7_3, L8_3)
                                                                          L6_3 = L6_3 * 1000
                                                                          L5_3 = L5_3(L6_3)
                                                                          L5_3 = L5_3 / L3_3
                                                                          L6_3 = AnimFightList
                                                                          L6_3 = L6_3[L2_3]
                                                                          L7_3 = "tim"
                                                                          L6_3 = L6_3[L7_3]
                                                                          L7_3 = 999999
                                                                          if L6_3 == L7_3 then
                                                                            L6_3 = AnimFightList
                                                                            L6_3 = L6_3[L2_3]
                                                                            L7_3 = "tim"
                                                                            L6_3[L7_3] = L5_3
                                                                          end
                                                                          L6_3 = math
                                                                          L7_3 = "floor"
                                                                          L6_3 = L6_3[L7_3]
                                                                          L7_3 = AnimFightList
                                                                          L7_3 = L7_3[L2_3]
                                                                          L8_3 = "tim"
                                                                          L7_3 = L7_3[L8_3]
                                                                          L7_3 = L7_3 / L3_3
                                                                          L6_3 = L6_3(L7_3)
                                                                          if L5_3 < L6_3 then
                                                                            L6_3 = L5_3 - 50
                                                                          end
                                                                          L7_3 = _ENV
                                                                          L8_3 = "StartCombatAnim"
                                                                          L7_3 = L7_3[L8_3]
                                                                          L8_3 = L0_3
                                                                          L9_3 = AnimFightList
                                                                          L9_3 = L9_3[L2_3]
                                                                          L9_3 = L9_3.a
                                                                          L10_3 = AnimFightList
                                                                          L10_3 = L10_3[L2_3]
                                                                          L10_3 = L10_3.b
                                                                          L11_3 = L6_3
                                                                          L12_3 = L3_3
                                                                          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                          L7_3 = IsEntityAttached
                                                                          L8_3 = L0_3
                                                                          L7_3 = L7_3(L8_3)
                                                                          if L7_3 then
                                                                            L7_3 = _ENV
                                                                            L8_3 = "grandezzaEnemy"
                                                                            L9_3 = 1.3
                                                                            L7_3[L8_3] = L9_3
                                                                          end
                                                                          L7_3 = AnimFightList
                                                                          L7_3 = L7_3[L2_3]
                                                                          L8_3 = "slow"
                                                                          L7_3 = L7_3[L8_3]
                                                                          if L7_3 then
                                                                            L7_3 = _ENV
                                                                            L8_3 = "CollMe"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L7_3()
                                                                          end
                                                                          L7_3 = Wait
                                                                          L8_3 = L4_3
                                                                          L7_3(L8_3)
                                                                          L7_3 = _ENV
                                                                          L8_3 = "DashMe"
                                                                          L7_3 = L7_3[L8_3]
                                                                          L8_3 = AnimFightList
                                                                          L9_3 = L2_3
                                                                          L7_3(L8_3, L9_3)
                                                                          L7_3 = _ENV
                                                                          L8_3 = "CheckTrain"
                                                                          L7_3 = L7_3[L8_3]
                                                                          L8_3 = "SA"
                                                                          L7_3(L8_3)
                                                                          L7_3 = _ENV
                                                                          L8_3 = "BonesCheck"
                                                                          L9_3 = AnimFightList
                                                                          L9_3 = L9_3[L2_3]
                                                                          L10_3 = "bones"
                                                                          L9_3 = L9_3[L10_3]
                                                                          L7_3[L8_3] = L9_3
                                                                          L7_3 = Wait
                                                                          L8_3 = L6_3 - L4_3
                                                                          L7_3(L8_3)
                                                                          L7_3 = _ENV
                                                                          L8_3 = "BonesCheck"
                                                                          L9_3 = {}
                                                                          L7_3[L8_3] = L9_3
                                                                          L7_3 = AnimFightList
                                                                          L7_3 = L7_3[L2_3]
                                                                          L8_3 = "freeze"
                                                                          L7_3 = L7_3[L8_3]
                                                                          if L7_3 then
                                                                            L7_3 = _ENV
                                                                            L8_3 = "FreezeEntityPosition"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = L0_3
                                                                            L9_3 = false
                                                                            L7_3(L8_3, L9_3)
                                                                          end
                                                                          L7_3 = Wait
                                                                          L8_3 = _ENV
                                                                          L9_3 = "DelaySkill"
                                                                          L8_3 = L8_3[L9_3]
                                                                          L7_3(L8_3)
                                                                          HoRollato = false
                                                                          L7_3 = EndRoll
                                                                          L7_3()
                                                                        else
                                                                          L3_3 = _ENV
                                                                          L4_3 = "print"
                                                                          L3_3 = L3_3[L4_3]
                                                                          L4_3 = "Hey ERROR! Animation ID "
                                                                          L5_3 = L2_3
                                                                          L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                          L4_3 = L4_3 .. L5_3 .. L6_3
                                                                          L3_3(L4_3)
                                                                        end
                                                                      else
                                                                        HoRollato = false
                                                                        L2_3 = _ENV
                                                                        L3_3 = "print"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L3_3 = "Moveset empty!"
                                                                        L2_3(L3_3)
                                                                        L2_3 = Wait
                                                                        L3_3 = 150
                                                                        L2_3(L3_3)
                                                                      end
                                                                    else
                                                                      L2_3 = IsDisabledControlPressed
                                                                      L3_3 = 0
                                                                      L4_3 = 35
                                                                      L2_3 = L2_3(L3_3, L4_3)
                                                                      if L2_3 then
                                                                        L2_3 = FiatoneCapriola
                                                                        L3_3 = _ENV
                                                                        L4_3 = "delStaminaFight"
                                                                        L3_3 = L3_3[L4_3]
                                                                        L3_3 = L3_3 + 5
                                                                        L4_3 = exports
                                                                        L4_3 = L4_3.striano_combat
                                                                        L5_3 = L4_3
                                                                        L4_3 = L4_3.GetStaminaDrainMultiplier
                                                                        L4_3 = L4_3(L5_3)
                                                                        L3_3 = L3_3 * L4_3
                                                                        L2_3 = L2_3 - L3_3
                                                                        FiatoneCapriola = L2_3
                                                                        L2_3 = OnStartCombat
                                                                        L3_3 = indexCombat
                                                                        L4_3 = nil
                                                                        L5_3 = AnimFightList
                                                                        L2_3(L3_3, L4_3, L5_3)
                                                                        HoRollato = true
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L4_3 = L5_2
                                                                        L5_3 = "WithShift"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L5_3 = "CombatD"
                                                                        L4_3 = L4_3[L5_3]
                                                                        L2_3[L3_3] = L4_3
                                                                        L2_3 = _ENV
                                                                        L3_3 = "tabAnim"
                                                                        L2_3 = L2_3[L3_3]
                                                                        L2_3 = #L2_3
                                                                        if L2_3 > 0 then
                                                                          L2_3 = L5_2
                                                                          L3_3 = "WithShift"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "CombatD"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = math
                                                                          L3_3 = L3_3.random
                                                                          L4_3 = 1
                                                                          L5_3 = _ENV
                                                                          L6_3 = "tabAnim"
                                                                          L5_3 = L5_3[L6_3]
                                                                          L5_3 = #L5_3
                                                                          L3_3 = L3_3(L4_3, L5_3)
                                                                          L2_3 = L2_3[L3_3]
                                                                          indexCombat = L2_3
                                                                          L3_3 = ClearPedTasks
                                                                          L4_3 = L0_3
                                                                          L3_3(L4_3)
                                                                          L3_3 = AnimFightList
                                                                          L3_3 = #L3_3
                                                                          if L2_3 <= L3_3 then
                                                                            L3_3 = LoadAnim
                                                                            L4_3 = AnimFightList
                                                                            L4_3 = L4_3[L2_3]
                                                                            L4_3 = L4_3.a
                                                                            L3_3(L4_3)
                                                                            L3_3 = AnimFightList
                                                                            L3_3 = L3_3[L2_3]
                                                                            L4_3 = "freeze"
                                                                            L3_3 = L3_3[L4_3]
                                                                            if L3_3 then
                                                                              L3_3 = _ENV
                                                                              L4_3 = "FreezeEntityPosition"
                                                                              L3_3 = L3_3[L4_3]
                                                                              L4_3 = L0_3
                                                                              L5_3 = true
                                                                              L3_3(L4_3, L5_3)
                                                                            end
                                                                            L3_3 = _ENV
                                                                            L4_3 = "changeAnimSpeed"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = L2_3
                                                                            L3_3 = L3_3(L4_3)
                                                                            L4_3 = math
                                                                            L5_3 = "floor"
                                                                            L4_3 = L4_3[L5_3]
                                                                            L5_3 = AnimFightList
                                                                            L5_3 = L5_3[L2_3]
                                                                            L6_3 = "start"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L5_3 = L5_3 / L3_3
                                                                            L4_3 = L4_3(L5_3)
                                                                            L5_3 = math
                                                                            L6_3 = "floor"
                                                                            L5_3 = L5_3[L6_3]
                                                                            L6_3 = _ENV
                                                                            L7_3 = "GetAnimDuration"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L7_3 = L7_3.a
                                                                            L8_3 = AnimFightList
                                                                            L8_3 = L8_3[L2_3]
                                                                            L8_3 = L8_3.b
                                                                            L6_3 = L6_3(L7_3, L8_3)
                                                                            L6_3 = L6_3 * 1000
                                                                            L5_3 = L5_3(L6_3)
                                                                            L5_3 = L5_3 / L3_3
                                                                            L6_3 = AnimFightList
                                                                            L6_3 = L6_3[L2_3]
                                                                            L7_3 = "tim"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = 999999
                                                                            if L6_3 == L7_3 then
                                                                              L6_3 = AnimFightList
                                                                              L6_3 = L6_3[L2_3]
                                                                              L7_3 = "tim"
                                                                              L6_3[L7_3] = L5_3
                                                                            end
                                                                            L6_3 = math
                                                                            L7_3 = "floor"
                                                                            L6_3 = L6_3[L7_3]
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "tim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L7_3 = L7_3 / L3_3
                                                                            L6_3 = L6_3(L7_3)
                                                                            if L5_3 < L6_3 then
                                                                              L6_3 = L5_3 - 50
                                                                            end
                                                                            L7_3 = _ENV
                                                                            L8_3 = "StartCombatAnim"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = L0_3
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L9_3 = L9_3.a
                                                                            L10_3 = AnimFightList
                                                                            L10_3 = L10_3[L2_3]
                                                                            L10_3 = L10_3.b
                                                                            L11_3 = L6_3
                                                                            L12_3 = L3_3
                                                                            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                                                                            L7_3 = IsEntityAttached
                                                                            L8_3 = L0_3
                                                                            L7_3 = L7_3(L8_3)
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "grandezzaEnemy"
                                                                              L9_3 = 1.2
                                                                              L7_3[L8_3] = L9_3
                                                                            end
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "slow"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "CollMe"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L7_3()
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "DashMe"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = AnimFightList
                                                                            L9_3 = L2_3
                                                                            L7_3(L8_3, L9_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "CheckTrain"
                                                                            L7_3 = L7_3[L8_3]
                                                                            L8_3 = "SD"
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = AnimFightList
                                                                            L9_3 = L9_3[L2_3]
                                                                            L10_3 = "bones"
                                                                            L9_3 = L9_3[L10_3]
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = Wait
                                                                            L8_3 = L6_3 - L4_3
                                                                            L7_3(L8_3)
                                                                            L7_3 = _ENV
                                                                            L8_3 = "BonesCheck"
                                                                            L9_3 = {}
                                                                            L7_3[L8_3] = L9_3
                                                                            L7_3 = AnimFightList
                                                                            L7_3 = L7_3[L2_3]
                                                                            L8_3 = "freeze"
                                                                            L7_3 = L7_3[L8_3]
                                                                            if L7_3 then
                                                                              L7_3 = _ENV
                                                                              L8_3 = "FreezeEntityPosition"
                                                                              L7_3 = L7_3[L8_3]
                                                                              L8_3 = L0_3
                                                                              L9_3 = false
                                                                              L7_3(L8_3, L9_3)
                                                                            end
                                                                            L7_3 = Wait
                                                                            L8_3 = _ENV
                                                                            L9_3 = "DelaySkill"
                                                                            L8_3 = L8_3[L9_3]
                                                                            L7_3(L8_3)
                                                                            HoRollato = false
                                                                            L7_3 = EndRoll
                                                                            L7_3()
                                                                          else
                                                                            L3_3 = _ENV
                                                                            L4_3 = "print"
                                                                            L3_3 = L3_3[L4_3]
                                                                            L4_3 = "Hey ERROR! Animation ID "
                                                                            L5_3 = L2_3
                                                                            L6_3 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
                                                                            L4_3 = L4_3 .. L5_3 .. L6_3
                                                                            L3_3(L4_3)
                                                                          end
                                                                        else
                                                                          HoRollato = false
                                                                          L2_3 = _ENV
                                                                          L3_3 = "print"
                                                                          L2_3 = L2_3[L3_3]
                                                                          L3_3 = "Moveset empty!"
                                                                          L2_3(L3_3)
                                                                          L2_3 = Wait
                                                                          L3_3 = 150
                                                                          L2_3(L3_3)
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                          end
                                                        end
                                                        else
                                                          L2_3 = lastAROV
                                                          if nil ~= L2_3 then
                                                            L2_3 = DoesEntityExist
                                                            L3_3 = lastAROV
                                                            L2_3 = L2_3(L3_3)
                                                            if L2_3 then
                                                              L2_3 = SetEntityAsMissionEntity
                                                              L3_3 = lastAROV
                                                              L2_3(L3_3)
                                                              L2_3 = DeleteEntity
                                                              L3_3 = lastAROV
                                                              L2_3(L3_3)
                                                              lastAROV = nil
                                                            end
                                                          end
                                                        end
                                                        ::lbl_4299::
                                                        L2_3 = SfoggiatoBow
                                                        if not L2_3 then
                                                          L2_3 = Sfoggiate
                                                          if not L2_3 then
                                                            L2_3 = IsEntityAttached
                                                            L3_3 = L0_3
                                                            L2_3 = L2_3(L3_3)
                                                            if not L2_3 then
                                                              L2_3 = IsEntityPlayingAnim
                                                              L3_3 = L0_3
                                                              L4_3 = "hit_react_heavy_front_knockback_stagger"
                                                              L5_3 = "hit_react_heavy_front_knockback_stagger_clip"
                                                              L6_3 = 3
                                                              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                                                              if not L2_3 then
                                                                L2_3 = _ENV
                                                                L3_3 = "ClearPedSecondaryTask"
                                                                L2_3 = L2_3[L3_3]
                                                                L3_3 = L0_3
                                                                L2_3(L3_3)
                                                                L2_3 = ClearPedTasks
                                                                L3_3 = L0_3
                                                                L2_3(L3_3)
                                                              end
                                                              L2_3 = ResetStrafe
                                                              L3_3 = L0_3
                                                              L2_3(L3_3)
                                                            else
                                                              L2_3 = _ENV
                                                              L3_3 = "ecc"
                                                              L2_3 = L2_3[L3_3]
                                                              L2_3()
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    L1_3 = Wait
                    L2_3 = 25
                    L1_3(L2_3)
                  end
                end
                L7_2(L8_2)
                L7_2 = CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
                  while true do
                    L0_3 = CombatActive
                    if not L0_3 then
                      break
                    end
                    L0_3 = GetSelectedPedWeapon
                    L1_3 = L0_2
                    L0_3 = L0_3(L1_3)
                    L1_3 = IsPedArmed
                    L2_3 = L0_2
                    L3_3 = 7
                    L1_3 = L1_3(L2_3, L3_3)
                    if -1569615261 ~= L0_3 and L1_3 then
                      L2_3 = FoderaArmi
                      L3_3 = true
                      L2_3(L3_3)
                    end
                    L2_3 = FightPed
                    if nil ~= L2_3 then
                      L2_3 = GetEntityCoords
                      L3_3 = L0_2
                      L2_3 = L2_3(L3_3)
                      L3_3 = GetEntityCoords
                      L4_3 = FightPed
                      L3_3 = L3_3(L4_3)
                      L2_3 = L2_3 - L3_3
                      L2_3 = #L2_3
                      L3_3 = 2.5
                      if L2_3 > L3_3 then
                        L2_3 = ResetEnemy
                        L2_3()
                      end
                    end
                    L2_3 = idleFight
                    L3_3 = L5_2.Idle
                    L2_3 = L2_3[L3_3]
                    L2_3 = L2_3.flag
                    L2_3 = IsEntityPlayingAnim
                    L3_3 = L0_2
                    L4_3 = idleFight
                    L5_3 = L5_2.Idle
                    L4_3 = L4_3[L5_3]
                    L4_3 = L4_3.a
                    L5_3 = idleFight
                    L6_3 = L5_2.Idle
                    L5_3 = L5_3[L6_3]
                    L5_3 = L5_3.b
                    L6_3 = 3
                    L2_3 = 1 == L2_3 and L2_3
                    L3_3 = inBowAnims
                    L4_3 = L0_2
                    L3_3 = L3_3(L4_3)
                    if not L3_3 and not L2_3 then
                      L3_3 = startHeading
                      if nil ~= L3_3 then
                        L3_3 = GetGameplayCamRot
                        L4_3 = 0
                        L3_3 = L3_3(L4_3)
                        L3_3 = L3_3.z
                        L4_3 = startHeading
                        L4_3 = L3_3 - L4_3
                        L5_3 = 180.0
                        if L4_3 > L5_3 then
                          L4_3 = L4_3 - 360.0
                        end
                        L5_3 = -180.0
                        if L4_3 < L5_3 then
                          L4_3 = L4_3 + 360.0
                        end
                        L5_3 = IsEntityPlayingAnim
                        L6_3 = L0_2
                        L7_3 = "original_spear_idle_aim_forward"
                        L8_3 = "original_spear_idle_aim_forward_clip"
                        L9_3 = 3
                        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                        if not L5_3 then
                          L5_3 = math
                          L5_3 = L5_3.abs
                          L6_3 = L4_3
                          L5_3 = L5_3(L6_3)
                          L6_3 = DEADZONE_DEG
                          if L5_3 >= L6_3 then
                            L5_3 = inMovement
                            L5_3 = L5_3()
                            if not L5_3 then
                              if L4_3 > 0 then
                                L5_3 = L4_2
                                L6_3 = L0_2
                                L5_3(L6_3)
                              else
                                L5_3 = L4_2
                                L6_3 = L0_2
                                L5_3(L6_3)
                              end
                              startHeading = L3_3
                            end
                          end
                        end
                      end
                    end
                    L3_3 = PossoCapriola
                    if L3_3 then
                      L3_3 = inFinisher
                      if not L3_3 then
                        L3_3 = IsPedRagdoll
                        L4_3 = L0_2
                        L3_3 = L3_3(L4_3)
                        if not L3_3 then
                          L3_3 = IsPedGettingUp
                          L4_3 = L0_2
                          L3_3 = L3_3(L4_3)
                          if not L3_3 then
                            L3_3 = IsPedFatallyInjured
                            L4_3 = L0_2
                            L3_3 = L3_3(L4_3)
                            if not L3_3 then
                              L3_3 = freezeState
                              L3_3 = L3_3.active
                              if not L3_3 then
                                L3_3 = Sfoggiate
                                if not L3_3 then
                                  L3_3 = SfoggiatoBow
                                  if not L3_3 then
                                    goto lbl_546
                                  end
                                end
                                L3_3 = DisableControlAction
                                L4_3 = 0
                                L5_3 = 37
                                L6_3 = true
                                L3_3(L4_3, L5_3, L6_3)
                                L3_3 = DisableControlAction
                                L4_3 = 0
                                L5_3 = 45
                                L6_3 = true
                                L3_3(L4_3, L5_3, L6_3)
                                L3_3 = FightPed
                                if nil ~= L3_3 then
                                  L3_3 = DoesEntityExist
                                  L4_3 = FightPed
                                  L3_3 = L3_3(L4_3)
                                  if L3_3 then
                                    L3_3 = IsPedFatallyInjured
                                    L4_3 = FightPed
                                    L3_3 = L3_3(L4_3)
                                    if not L3_3 then
                                      L3_3 = IsPedAPlayer
                                      L4_3 = FightPed
                                      L3_3 = L3_3(L4_3)
                                      if L3_3 then
                                        L3_3 = getPedHeadCoords
                                        L4_3 = FightPed
                                        L3_3 = L3_3(L4_3)
                                        L4_3 = GetEntityCoords
                                        L5_3 = FightPed
                                        L4_3 = L4_3(L5_3)
                                        L4_3 = L3_3 - L4_3
                                        L4_3 = #L4_3
                                        if L4_3 < 25.0 then
                                          L4_3 = GetServerIdFromPed
                                          L5_3 = FightPed
                                          L4_3 = L4_3(L5_3)
                                          if L4_3 then
                                            L5_3 = Player
                                            L6_3 = L4_3
                                            L5_3 = L5_3(L6_3)
                                            L5_3 = L5_3.state
                                            L6_3 = L5_3 or L6_3
                                            if L5_3 then
                                              L6_3 = L5_3.vhp
                                            end
                                            L7_3 = L5_3 or L7_3
                                            if L5_3 then
                                              L7_3 = L5_3.vhp_max
                                            end
                                            L8_3 = type
                                            L9_3 = L6_3
                                            L8_3 = L8_3(L9_3)
                                            if "number" == L8_3 then
                                              L8_3 = type
                                              L9_3 = L7_3
                                              L8_3 = L8_3(L9_3)
                                              if "number" == L8_3 then
                                                L8_3 = BarraHP
                                                L9_3 = L3_3
                                                L10_3 = 1.0
                                                L11_3 = L6_3 - 100
                                                L12_3 = L7_3
                                                L13_3 = true
                                                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                                L3_3 = TutorialDraw
                                L3_3()
                                L3_3 = PallaTarget
                                L4_3 = L0_2
                                L3_3(L4_3)
                                L3_3 = FightPed
                                L4_3 = indexCombat
                                if nil ~= L4_3 then
                                  L4_3 = indexCombat
                                  if L4_3 > 0 then
                                    L4_3 = AnimFightList
                                    L5_3 = indexCombat
                                    L4_3 = L4_3[L5_3]
                                    if nil ~= L4_3 then
                                      L4_3 = IsEntityPlayingAnim
                                      L5_3 = L0_2
                                      L6_3 = AnimFightList
                                      L7_3 = indexCombat
                                      L6_3 = L6_3[L7_3]
                                      L6_3 = L6_3.a
                                      L7_3 = AnimFightList
                                      L8_3 = indexCombat
                                      L7_3 = L7_3[L8_3]
                                      L7_3 = L7_3.b
                                      L8_3 = 3
                                      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                                      if L4_3 and nil ~= L3_3 then
                                        L4_3 = DoesEntityExist
                                        L5_3 = L3_3
                                        L4_3 = L4_3(L5_3)
                                        if L4_3 then
                                          L4_3 = IsPedFatallyInjured
                                          L5_3 = L3_3
                                          L4_3 = L4_3(L5_3)
                                          if L4_3 then
                                            L4_3 = IsPedDeadOrDying
                                            L5_3 = L3_3
                                            L4_3 = L4_3(L5_3)
                                            if L4_3 then
                                              L4_3 = IsPedRagdoll
                                              L5_3 = L0_2
                                              L4_3 = L4_3(L5_3)
                                              if not L4_3 then
                                                L4_3 = SetPedCanRagdoll
                                                L5_3 = L3_3
                                                L6_3 = true
                                                L4_3(L5_3, L6_3)
                                                L4_3 = SetPedCanRagdollFromPlayerImpact
                                                L5_3 = L3_3
                                                L6_3 = true
                                                L4_3(L5_3, L6_3)
                                                L4_3 = SetEntityAsNoLongerNeeded
                                                L5_3 = L3_3
                                                L4_3(L5_3)
                                                L4_3 = PlaySoundFrontend
                                                L5_3 = -1
                                                L6_3 = "ROUND_ENDING_STINGER_CUSTOM"
                                                L7_3 = "CELEBRATION_SOUNDSET"
                                                L8_3 = 0
                                                L4_3(L5_3, L6_3, L7_3, L8_3)
                                                L4_3 = GetEntityCoords
                                                L5_3 = L3_3
                                                L4_3 = L4_3(L5_3)
                                                L5_3 = genSwordSpecial
                                                L5_3()
                                                L5_3 = specialMove
                                                L5_3 = L5_3 + 20
                                                specialMove = L5_3
                                                L5_3 = ResetEnemy
                                                L5_3()
                                                L5_3 = Entity
                                                L6_3 = L3_3
                                                L5_3 = L5_3(L6_3)
                                                L5_3 = L5_3.state
                                                L5_3 = L5_3.onlyMeleePed
                                                L6_3 = CreateThread
                                                function L7_3()
                                                  local L0_4, L1_4, L2_4, L3_4
                                                  L0_4 = Wait
                                                  L1_4 = 150
                                                  L0_4(L1_4)
                                                  L0_4 = PushDeadPedForward
                                                  L1_4 = L3_3
                                                  L2_4 = pushForceAfterDead
                                                  L3_4 = 1.0
                                                  L0_4(L1_4, L2_4, L3_4)
                                                end
                                                L6_3(L7_3)
                                                if L5_3 then
                                                  L6_3 = GetSelectedPedWeapon
                                                  L7_3 = L0_2
                                                  L6_3 = L6_3(L7_3)
                                                  L7_3 = IsPedArmed
                                                  L8_3 = L0_2
                                                  L9_3 = 7
                                                  L7_3 = L7_3(L8_3, L9_3)
                                                  if -1569615261 == L6_3 and not L7_3 then
                                                    L8_3 = onGetItemFromReward
                                                    L9_3 = L3_3
                                                    L8_3(L9_3)
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                                L4_3 = 1.1
                                L5_3 = IsEntityAttached
                                L6_3 = L0_2
                                L5_3 = L5_3(L6_3)
                                if L5_3 then
                                  L4_3 = 1.3
                                end
                                L5_3 = PlayerVicino
                                L6_3 = L4_3
                                L5_3, L6_3 = L5_3(L6_3)
                                if -1 ~= L5_3 and L4_3 >= L6_3 then
                                  L7_3 = IsPedAPlayer
                                  L8_3 = GetPlayerPed
                                  L9_3 = L5_3
                                  L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3)
                                  L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                  if L7_3 then
                                    L7_3 = IsPedDeadOrDying
                                    L8_3 = GetPlayerPed
                                    L9_3 = L5_3
                                    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3)
                                    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                    if not L7_3 then
                                      L7_3 = IsEntityPlayingAnim
                                      L8_3 = GetPlayerPed
                                      L9_3 = L5_3
                                      L8_3 = L8_3(L9_3)
                                      L9_3 = "combat@damage@rb_writhe"
                                      L10_3 = "rb_writhe_loop"
                                      L11_3 = 3
                                      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                                      if not L7_3 then
                                        L7_3 = IsPedFatallyInjured
                                        L8_3 = GetPlayerPed
                                        L9_3 = L5_3
                                        L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3)
                                        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                        if not L7_3 then
                                          L7_3 = FightPed
                                          if nil == L7_3 then
                                            L7_3 = GetPlayerPed
                                            L8_3 = L5_3
                                            L7_3 = L7_3(L8_3)
                                            FightPed = L7_3
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                                L7_3 = FightPed
                                if nil == L7_3 then
                                  L7_3 = TargetCoords
                                  if nil ~= L7_3 then
                                    L7_3 = SfoggiatoBow
                                    if not L7_3 then
                                      L7_3 = ipairs
                                      L8_3 = GetGamePool
                                      L9_3 = "CPed"
                                      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3)
                                      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
                                        L13_3 = L0_2
                                        if L12_3 ~= L13_3 then
                                          L13_3 = GetEntityAlpha
                                          L14_3 = L12_3
                                          L13_3 = L13_3(L14_3)
                                          if 255 == L13_3 then
                                            L13_3 = GetEntityCoords
                                            L14_3 = L0_2
                                            L13_3 = L13_3(L14_3)
                                            L14_3 = GetEntityCoords
                                            L15_3 = L12_3
                                            L14_3 = L14_3(L15_3)
                                            L13_3 = L13_3 - L14_3
                                            L13_3 = #L13_3
                                            if L13_3 < 2.0 then
                                              L13_3 = indexTarget
                                              if 0 == L13_3 then
                                                L13_3 = 1.1
                                                L14_3 = IsEntityAttached
                                                L15_3 = L0_2
                                                L14_3 = L14_3(L15_3)
                                                if L14_3 then
                                                  L13_3 = 1.7
                                                end
                                                L14_3 = IsPedHuman
                                                L15_3 = L12_3
                                                L14_3 = L14_3(L15_3)
                                                if not L14_3 then
                                                  L13_3 = 1.4
                                                end
                                                L14_3 = IsPedAPlayer
                                                L15_3 = L12_3
                                                L14_3 = L14_3(L15_3)
                                                if not L14_3 then
                                                  L14_3 = TargetCoords
                                                  L15_3 = GetEntityCoords
                                                  L16_3 = L12_3
                                                  L15_3 = L15_3(L16_3)
                                                  L14_3 = L14_3 - L15_3
                                                  L14_3 = #L14_3
                                                  if L13_3 > L14_3 then
                                                    L14_3 = IsPedFatallyInjured
                                                    L15_3 = L12_3
                                                    L14_3 = L14_3(L15_3)
                                                    if not L14_3 then
                                                      L14_3 = IsEntityVisible
                                                      L15_3 = L12_3
                                                      L14_3 = L14_3(L15_3)
                                                      if L14_3 then
                                                        L14_3 = GetEntityAttachedTo
                                                        L15_3 = L0_2
                                                        L14_3 = L14_3(L15_3)
                                                        if L14_3 ~= L12_3 then
                                                          L14_3 = FightPed
                                                          if nil == L14_3 then
                                                            L14_3 = IsPedFatallyInjured
                                                            L15_3 = L0_2
                                                            L14_3 = L14_3(L15_3)
                                                            if not L14_3 then
                                                              FightPed = L12_3
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                                L7_3 = PossoAttaccare
                                L7_3 = L7_3()
                                if L7_3 then
                                  L7_3 = currentTarget
                                  if nil == L7_3 then
                                    L7_3 = IsPedGettingUp
                                    L8_3 = L0_2
                                    L7_3 = L7_3(L8_3)
                                    if not L7_3 then
                                      L7_3 = indexTarget
                                      if 0 == L7_3 then
                                        L7_3 = IsEntityPlayingAnim
                                        L8_3 = L0_2
                                        L9_3 = "gt_Animations"
                                        L10_3 = "rz_neckbreak_atk_clip"
                                        L11_3 = 3
                                        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                                        if not L7_3 then
                                          L7_3 = IsDisabledControlPressed
                                          L8_3 = 0
                                          L9_3 = 24
                                          L7_3 = L7_3(L8_3, L9_3)
                                          if L7_3 then
                                            L7_3 = IsEntityAttached
                                            L8_3 = L0_2
                                            L7_3 = L7_3(L8_3)
                                            if not L7_3 then
                                              L7_3 = SetEntityHeading
                                              L8_3 = L0_2
                                              L9_3 = GetGameplayCamRot
                                              L10_3 = 0
                                              L9_3 = L9_3(L10_3)
                                              L9_3 = L9_3.z
                                              L7_3(L8_3, L9_3)
                                              L7_3 = DisableControlAction
                                              L8_3 = 0
                                              L9_3 = 21
                                              L10_3 = true
                                              L7_3(L8_3, L9_3, L10_3)
                                            end
                                          end
                                        end
                                      else
                                        L7_3 = FightPed
                                        if nil ~= L7_3 then
                                          L7_3 = makeEntityFaceEntity
                                          L8_3 = L0_2
                                          L9_3 = FightPed
                                          L7_3(L8_3, L9_3)
                                        else
                                          L7_3 = IsEntityPlayingAnim
                                          L8_3 = L0_2
                                          L9_3 = "gt_Animations"
                                          L10_3 = "rz_neckbreak_atk_clip"
                                          L11_3 = 3
                                          L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                                          if not L7_3 then
                                            L7_3 = IsDisabledControlPressed
                                            L8_3 = 0
                                            L9_3 = 24
                                            L7_3 = L7_3(L8_3, L9_3)
                                            if L7_3 then
                                              L7_3 = IsEntityAttached
                                              L8_3 = L0_2
                                              L7_3 = L7_3(L8_3)
                                              if not L7_3 then
                                                L7_3 = SetEntityHeading
                                                L8_3 = L0_2
                                                L9_3 = GetGameplayCamRot
                                                L10_3 = 0
                                                L9_3 = L9_3(L10_3)
                                                L9_3 = L9_3.z
                                                L7_3(L8_3, L9_3)
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                            end
                            ::lbl_546::
                            else
                              L3_3 = indexTarget
                              if L3_3 > 0 then
                                indexTarget = 0
                              end
                              L3_3 = IsEntityVisible
                              L4_3 = L0_2
                              L3_3 = L3_3(L4_3)
                              if L3_3 then
                                L3_3 = ShieldObj
                                if nil ~= L3_3 then
                                  L3_3 = DoesEntityExist
                                  L4_3 = ShieldObj
                                  L3_3 = L3_3(L4_3)
                                  if L3_3 then
                                    L3_3 = DetachEntity
                                    L4_3 = ShieldObj
                                    L3_3(L4_3)
                                    L3_3 = ShieldList
                                    L4_3 = myShield
                                    L3_3 = L3_3[L4_3]
                                    L3_3 = L3_3.attposato
                                    L4_3 = table
                                    L4_3 = L4_3.unpack
                                    L5_3 = L3_3
                                    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3)
                                    f = L9_3
                                    e = L8_3
                                    d = L7_3
                                    c = L6_3
                                    b = L5_3
                                    a = L4_3
                                    L4_3 = AttachEntityToEntity
                                    L5_3 = ShieldObj
                                    L6_3 = L0_2
                                    L7_3 = GetPedBoneIndex
                                    L8_3 = L0_2
                                    L9_3 = ShieldList
                                    L10_3 = myShield
                                    L9_3 = L9_3[L10_3]
                                    L9_3 = L9_3.boneposato
                                    L7_3 = L7_3(L8_3, L9_3)
                                    L8_3 = a
                                    L9_3 = b
                                    L10_3 = c
                                    L11_3 = d
                                    L12_3 = e
                                    L13_3 = f
                                    L14_3 = true
                                    L15_3 = true
                                    L16_3 = false
                                    L17_3 = true
                                    L18_3 = 1
                                    L19_3 = true
                                    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                  end
                                end
                              end
                              L3_3 = GetGameTimer
                              L3_3 = L3_3()
                              startTimeJumpObj = L3_3
                              L3_3 = delBowCam
                              L3_3()
                              CombatActive = false
                              L3_3 = OnFineCombat
                              L3_3()
                              L3_3 = stopCurrentMagicFX
                              L3_3()
                              L3_3 = SetPedUsingActionMode
                              L4_3 = L0_2
                              L5_3 = false
                              L6_3 = -1
                              L7_3 = 0
                              L3_3(L4_3, L5_3, L6_3, L7_3)
                              L3_3 = ResetStrafe
                              L4_3 = L0_2
                              L3_3(L4_3)
                              myHit = 0
                              lastClipStrafe = ""
                              L3_3 = CreateThread
                              function L4_3()
                                local L0_4, L1_4
                                L0_4 = IsPedFalling
                                L1_4 = L0_2
                                L0_4 = L0_4(L1_4)
                                if not L0_4 then
                                  L0_4 = IsPedRagdoll
                                  L1_4 = L0_2
                                  L0_4 = L0_4(L1_4)
                                  if not L0_4 then
                                    L0_4 = Wait
                                    L1_4 = 250
                                    L0_4(L1_4)
                                    L0_4 = CombatActive
                                    if not L0_4 then
                                      L0_4 = ResetStrafe
                                      L1_4 = L0_2
                                      L0_4(L1_4)
                                    end
                                end
                                else
                                  L0_4 = Wait
                                  L1_4 = 250
                                  L0_4(L1_4)
                                  L0_4 = ClearPedTasks
                                  L1_4 = L0_2
                                  L0_4(L1_4)
                                end
                              end
                              L3_3(L4_3)
                              L3_3 = Wait
                              L4_3 = 0
                              L3_3(L4_3)
                              L3_3 = ecc
                              L3_3()
                              L3_3 = ApplyHeavyStandWeap
                              L3_3()
                              return
                            end
                          end
                        end
                      end
                    end
                    L3_3 = Wait
                    L4_3 = 25
                    L3_3(L4_3)
                  end
                end
                L7_2(L8_2)
                L7_2 = CreateThread
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3
                  while true do
                    L0_3 = CombatActive
                    if not L0_3 then
                      break
                    end
                    L0_3 = inFinisher
                    if not L0_3 then
                      L0_3 = IsPedRagdoll
                      L1_3 = L0_2
                      L0_3 = L0_3(L1_3)
                      if not L0_3 then
                        L0_3 = IsPedGettingUp
                        L1_3 = L0_2
                        L0_3 = L0_3(L1_3)
                        if not L0_3 then
                          L0_3 = SfoggiatoBow
                          if not L0_3 then
                            L0_3 = IsPedRagdoll
                            L1_3 = L0_2
                            L0_3 = L0_3(L1_3)
                            if not L0_3 then
                              L0_3 = IsPedGettingUp
                              L1_3 = L0_2
                              L0_3 = L0_3(L1_3)
                              if not L0_3 then
                                L0_3 = Sfoggiate
                                if not L0_3 then
                                  L0_3 = vector3
                                  L1_3 = 255
                                  L2_3 = 255
                                  L3_3 = 255
                                  L0_3 = L0_3(L1_3, L2_3, L3_3)
                                  L1_3 = vector3
                                  L2_3 = 255
                                  L3_3 = 255
                                  L4_3 = 255
                                  L1_3 = L1_3(L2_3, L3_3, L4_3)
                                  L2_3 = vector3
                                  L3_3 = 255
                                  L4_3 = 255
                                  L5_3 = 255
                                  L2_3 = L2_3(L3_3, L4_3, L5_3)
                                  L3_3 = vector3
                                  L4_3 = 255
                                  L5_3 = 255
                                  L6_3 = 255
                                  L3_3 = L3_3(L4_3, L5_3, L6_3)
                                  L4_3 = table
                                  L4_3 = L4_3.unpack
                                  L5_3 = GetEntityBonePosition_2
                                  L6_3 = L0_2
                                  L7_3 = GetPedBoneIndex
                                  L8_3 = L0_2
                                  L9_3 = 18905
                                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L7_3(L8_3, L9_3)
                                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L7_3 = table
                                  L7_3 = L7_3.unpack
                                  L8_3 = GetEntityBonePosition_2
                                  L9_3 = L0_2
                                  L10_3 = GetPedBoneIndex
                                  L11_3 = L0_2
                                  L12_3 = 57005
                                  L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L10_3(L11_3, L12_3)
                                  L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L10_3 = table
                                  L10_3 = L10_3.unpack
                                  L11_3 = GetEntityBonePosition_2
                                  L12_3 = L0_2
                                  L13_3 = GetPedBoneIndex
                                  L14_3 = L0_2
                                  L15_3 = 14201
                                  L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L13_3(L14_3, L15_3)
                                  L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L10_3, L11_3, L12_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L13_3 = table
                                  L13_3 = L13_3.unpack
                                  L14_3 = GetEntityBonePosition_2
                                  L15_3 = L0_2
                                  L16_3 = GetPedBoneIndex
                                  L17_3 = L0_2
                                  L18_3 = 52301
                                  L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L16_3(L17_3, L18_3)
                                  L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L13_3, L14_3, L15_3 = L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                  L16_3 = BonesCheck
                                  if nil ~= L16_3 then
                                    L16_3 = BonesCheck
                                    L16_3 = #L16_3
                                    if 0 == L16_3 then
                                  end
                                  else
                                    L16_3 = changeAnimSpeed
                                    L17_3 = indexCombat
                                    L16_3 = L16_3(L17_3)
                                    L17_3 = AnimFightList
                                    L18_3 = indexCombat
                                    L17_3 = L17_3[L18_3]
                                    L17_3 = L17_3.delay
                                    L18_3 = funcCheckBone
                                    L19_3 = 1
                                    L18_3 = L18_3(L19_3)
                                    if L18_3 then
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L0_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L4_3
                                        L20_3 = L5_3
                                        L21_3 = L6_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L0_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L4_3
                                        L20_3 = L5_3
                                        L21_3 = L6_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = MarkerOn
                                      if L18_3 then
                                        L18_3 = DrawMarker
                                        L19_3 = 28
                                        L20_3 = L4_3
                                        L21_3 = L5_3
                                        L22_3 = L6_3
                                        L23_3 = 0.0
                                        L24_3 = 0.0
                                        L25_3 = 0.0
                                        L26_3 = 0.0
                                        L27_3 = 0.0
                                        L28_3 = 0.0
                                        L29_3 = grandezzaAtk
                                        L30_3 = grandezzaAtk
                                        L31_3 = grandezzaAtk
                                        L32_3 = L0_3
                                        L33_3 = 100
                                        L34_3 = false
                                        L35_3 = true
                                        L36_3 = 2
                                        L37_3 = nil
                                        L38_3 = nil
                                        L39_3 = false
                                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      end
                                    end
                                    L18_3 = funcCheckBone
                                    L19_3 = 2
                                    L18_3 = L18_3(L19_3)
                                    if L18_3 then
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L1_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L7_3
                                        L20_3 = L8_3
                                        L21_3 = L9_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L1_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L7_3
                                        L20_3 = L8_3
                                        L21_3 = L9_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = MarkerOn
                                      if L18_3 then
                                        L18_3 = DrawMarker
                                        L19_3 = 28
                                        L20_3 = L7_3
                                        L21_3 = L8_3
                                        L22_3 = L9_3
                                        L23_3 = 0.0
                                        L24_3 = 0.0
                                        L25_3 = 0.0
                                        L26_3 = 0.0
                                        L27_3 = 0.0
                                        L28_3 = 0.0
                                        L29_3 = grandezzaAtk
                                        L30_3 = grandezzaAtk
                                        L31_3 = grandezzaAtk
                                        L32_3 = L1_3
                                        L33_3 = 100
                                        L34_3 = false
                                        L35_3 = true
                                        L36_3 = 2
                                        L37_3 = nil
                                        L38_3 = nil
                                        L39_3 = false
                                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      end
                                    end
                                    L18_3 = funcCheckBone
                                    L19_3 = 3
                                    L18_3 = L18_3(L19_3)
                                    if L18_3 then
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L2_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L10_3
                                        L20_3 = L11_3
                                        L21_3 = L12_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L2_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L10_3
                                        L20_3 = L11_3
                                        L21_3 = L12_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = MarkerOn
                                      if L18_3 then
                                        L18_3 = DrawMarker
                                        L19_3 = 28
                                        L20_3 = L10_3
                                        L21_3 = L11_3
                                        L22_3 = L12_3
                                        L23_3 = 0.0
                                        L24_3 = 0.0
                                        L25_3 = 0.0
                                        L26_3 = 0.0
                                        L27_3 = 0.0
                                        L28_3 = 0.0
                                        L29_3 = grandezzaAtk
                                        L30_3 = grandezzaAtk
                                        L31_3 = grandezzaAtk
                                        L32_3 = L2_3
                                        L33_3 = 100
                                        L34_3 = false
                                        L35_3 = true
                                        L36_3 = 2
                                        L37_3 = nil
                                        L38_3 = nil
                                        L39_3 = false
                                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      end
                                    end
                                    L18_3 = funcCheckBone
                                    L19_3 = 4
                                    L18_3 = L18_3(L19_3)
                                    if L18_3 then
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L3_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L13_3
                                        L20_3 = L14_3
                                        L21_3 = L15_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = FAI_DANNO
                                      if L18_3 then
                                        L18_3 = vector3
                                        L19_3 = 255
                                        L20_3 = 0
                                        L21_3 = 0
                                        L18_3 = L18_3(L19_3, L20_3, L21_3)
                                        L3_3 = L18_3
                                        L18_3 = Colpito
                                        L19_3 = L13_3
                                        L20_3 = L14_3
                                        L21_3 = L15_3
                                        L18_3(L19_3, L20_3, L21_3)
                                        FAI_DANNO = false
                                        if nil ~= L17_3 then
                                          L18_3 = Wait
                                          L19_3 = AnimFightList
                                          L20_3 = indexCombat
                                          L19_3 = L19_3[L20_3]
                                          L19_3 = L19_3.delay
                                          L19_3 = L19_3 / L16_3
                                          L18_3(L19_3)
                                        end
                                      end
                                      L18_3 = MarkerOn
                                      if L18_3 then
                                        L18_3 = DrawMarker
                                        L19_3 = 28
                                        L20_3 = L13_3
                                        L21_3 = L14_3
                                        L22_3 = L15_3
                                        L23_3 = 0.0
                                        L24_3 = 0.0
                                        L25_3 = 0.0
                                        L26_3 = 0.0
                                        L27_3 = 0.0
                                        L28_3 = 0.0
                                        L29_3 = grandezzaAtk
                                        L30_3 = grandezzaAtk
                                        L31_3 = grandezzaAtk
                                        L32_3 = L3_3
                                        L33_3 = 100
                                        L34_3 = false
                                        L35_3 = true
                                        L36_3 = 2
                                        L37_3 = nil
                                        L38_3 = nil
                                        L39_3 = false
                                        L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      end
                                    end
                                  end
                                else
                                  L0_3 = vector3
                                  L1_3 = 255
                                  L2_3 = 255
                                  L3_3 = 255
                                  L0_3 = L0_3(L1_3, L2_3, L3_3)
                                  L1_3 = vector3
                                  L2_3 = 255
                                  L3_3 = 255
                                  L4_3 = 255
                                  L1_3 = L1_3(L2_3, L3_3, L4_3)
                                  L2_3 = vector3
                                  L3_3 = 255
                                  L4_3 = 255
                                  L5_3 = 255
                                  L2_3 = L2_3(L3_3, L4_3, L5_3)
                                  L3_3 = vector3
                                  L4_3 = 255
                                  L5_3 = 255
                                  L6_3 = 255
                                  L3_3 = L3_3(L4_3, L5_3, L6_3)
                                  L4_3 = {}
                                  L5_3 = 0.315
                                  L6_3 = 0.33
                                  L7_3 = 0.245
                                  L4_3[1] = L5_3
                                  L4_3[2] = L6_3
                                  L4_3[3] = L7_3
                                  L5_3 = GetBonePosSafe
                                  L6_3 = L0_2
                                  L7_3 = L4_3
                                  L5_3 = L5_3(L6_3, L7_3)
                                  L6_3 = L5_3.x
                                  L7_3 = L5_3.y
                                  L8_3 = L5_3.z
                                  L9_3 = FightPed
                                  if L9_3 then
                                    L9_3 = DoesEntityExist
                                    L10_3 = FightPed
                                    L9_3 = L9_3(L10_3)
                                    if L9_3 then
                                      L9_3 = table
                                      L9_3 = L9_3.unpack
                                      L10_3 = GetEntityBonePosition_2
                                      L11_3 = FightPed
                                      L12_3 = GetPedBoneIndex
                                      L13_3 = FightPed
                                      L14_3 = 24818
                                      L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L12_3(L13_3, L14_3)
                                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      L9_3, L10_3, L11_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3)
                                      L12_3 = MarkerOn
                                      if L12_3 then
                                        L12_3 = FightPed
                                        L13_3 = L0_2
                                        if L12_3 ~= L13_3 then
                                          L12_3 = DrawMarker
                                          L13_3 = 28
                                          L14_3 = L9_3
                                          L15_3 = L10_3
                                          L16_3 = L11_3
                                          L17_3 = 0.0
                                          L18_3 = 0.0
                                          L19_3 = 0.0
                                          L20_3 = 0.0
                                          L21_3 = 0.0
                                          L22_3 = 0.0
                                          L23_3 = grandezzaEnemy
                                          L24_3 = grandezzaEnemy
                                          L25_3 = grandezzaEnemy
                                          L26_3 = 255
                                          L27_3 = 255
                                          L28_3 = 255
                                          L29_3 = 50
                                          L30_3 = false
                                          L31_3 = true
                                          L32_3 = 2
                                          L33_3 = nil
                                          L34_3 = nil
                                          L35_3 = false
                                          L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
                                        end
                                      end
                                    end
                                  end
                                  L9_3 = AnimFightList
                                  L10_3 = indexCombat
                                  L9_3 = L9_3[L10_3]
                                  if nil ~= L9_3 then
                                    L9_3 = changeAnimSpeed
                                    L10_3 = indexCombat
                                    L9_3 = L9_3(L10_3)
                                    L10_3 = AnimFightList
                                    L11_3 = indexCombat
                                    L10_3 = L10_3[L11_3]
                                    L10_3 = L10_3.delay
                                    L11_3 = FAI_DANNO
                                    if L11_3 then
                                      L11_3 = vector3
                                      L12_3 = 255
                                      L13_3 = 0
                                      L14_3 = 0
                                      L11_3 = L11_3(L12_3, L13_3, L14_3)
                                      L0_3 = L11_3
                                      L11_3 = Colpito
                                      L12_3 = L6_3
                                      L13_3 = L7_3
                                      L14_3 = L8_3
                                      L11_3(L12_3, L13_3, L14_3)
                                      FAI_DANNO = false
                                      if nil ~= L10_3 then
                                        L11_3 = Wait
                                        L12_3 = AnimFightList
                                        L13_3 = indexCombat
                                        L12_3 = L12_3[L13_3]
                                        L12_3 = L12_3.delay
                                        L12_3 = L12_3 / L9_3
                                        L11_3(L12_3)
                                      end
                                    end
                                    L11_3 = MarkerOn
                                    if L11_3 then
                                      L11_3 = DrawMarker
                                      L12_3 = 28
                                      L13_3 = L6_3
                                      L14_3 = L7_3
                                      L15_3 = L8_3
                                      L16_3 = 0.0
                                      L17_3 = 0.0
                                      L18_3 = 0.0
                                      L19_3 = 0.0
                                      L20_3 = 0.0
                                      L21_3 = 0.0
                                      L22_3 = grandezzaAtk
                                      L23_3 = grandezzaAtk
                                      L24_3 = grandezzaAtk
                                      L25_3 = L0_3
                                      L26_3 = 100
                                      L27_3 = false
                                      L28_3 = true
                                      L29_3 = 2
                                      L30_3 = nil
                                      L31_3 = nil
                                      L32_3 = false
                                      L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                    L0_3 = Wait
                    L1_3 = 0
                    L0_3(L1_3)
                  end
                end
                L7_2(L8_2)
                CombatActive = true
                L7_2 = LoopAimBotCombat
                L7_2()
              end
            end
          end
        end
      end
    end
  end
end
EnableCombatMode = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = indexCombat
  if nil ~= L3_2 then
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = AnimFightList
    L5_2 = indexCombat
    L4_2 = L4_2[L5_2]
    if nil ~= L4_2 then
      L4_2 = AnimFightList
      L5_2 = indexCombat
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.maxhit
      if nil == L4_2 then
        L4_2 = print
        L5_2 = "^1 maxhit is NIL ("
        L6_2 = indexCombat
        L7_2 = ") (Report this on strianodev discord please)"
        L5_2 = L5_2 .. L6_2 .. L7_2
        L4_2(L5_2)
        L4_2 = AnimFightList
        L5_2 = indexCombat
        L4_2 = L4_2[L5_2]
        L4_2.maxhit = 1
      end
    end
    L4_2 = myHit
    L5_2 = AnimFightList
    L6_2 = indexCombat
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.maxhit
    if not (L4_2 < L5_2) then
      L4_2 = AnimFightList
      L5_2 = indexCombat
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.maxhit
      if 1 ~= L4_2 then
        goto lbl_414
      end
    end
    L4_2 = getStyleCombat
    L4_2 = L4_2()
    L5_2 = IsEntityPlayingAnim
    L6_2 = L3_2
    L7_2 = AnimFightList
    L8_2 = indexCombat
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.a
    L8_2 = AnimFightList
    L9_2 = indexCombat
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.b
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if L5_2 then
      L5_2 = FightPed
      if nil ~= L5_2 then
        L5_2 = shakeEveryHit
        if L5_2 then
          L5_2 = CreateThread
          function L6_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L1_3 = 0.06
            L2_3 = BigWeap
            L2_3 = L2_3()
            if L2_3 then
              L1_3 = L1_3 * 2
            end
            while true do
              L1_3 = L1_3 - 1.0E-4
              L2_3 = 0.001
              if L1_3 < L2_3 then
                L1_3 = 0.001
              end
              L2_3 = ShakeGameplayCam
              L3_3 = "SMALL_EXPLOSION_SHAKE"
              L4_3 = L1_3
              L2_3(L3_3, L4_3)
              L2_3 = GetGameTimer
              L2_3 = L2_3()
              L2_3 = L2_3 - L0_3
              L3_3 = 350
              if L2_3 > L3_3 then
                L2_3 = StopGameplayCamShaking
                L3_3 = true
                L2_3(L3_3)
                return
              end
              L2_3 = Wait
              L3_3 = timerShaker
              L2_3(L3_3)
            end
          end
          L5_2(L6_2)
        end
        L5_2 = ImASkeleton
        L6_2 = FightPed
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = SkeletonBlood
          L6_2 = FightPed
          L5_2(L6_2)
        else
          L5_2 = ImACreaturePed
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = CreatureBlood
            L6_2 = FightPed
            L5_2(L6_2)
          else
            L5_2 = Sfoggiate
            if not L5_2 then
              L5_2 = PunchBlood
              L6_2 = FightPed
              L5_2(L6_2)
            else
              L5_2 = SwordList
              L6_2 = mySword
              L5_2 = L5_2[L6_2]
              L5_2 = L5_2.tgn
              if nil ~= L5_2 then
                L5_2 = SwordBlood
                L6_2 = FightPed
                L5_2(L6_2)
              else
                L5_2 = BatBlood
                L6_2 = FightPed
                L5_2(L6_2)
              end
              L5_2 = ImACreaturePed
              L6_2 = L3_2
              L5_2 = L5_2(L6_2)
              if L5_2 then
                L5_2 = BloodActive
                if L5_2 then
                  L5_2 = ImASkeleton
                  L6_2 = FightPed
                  L5_2 = L5_2(L6_2)
                  if not L5_2 then
                    L5_2 = 1
                    L6_2 = 9
                    L7_2 = 1
                    for L8_2 = L5_2, L6_2, L7_2 do
                      L9_2 = GetEntityCoords
                      L10_2 = FightPed
                      L9_2 = L9_2(L10_2)
                      L10_2 = math
                      L10_2 = L10_2.random
                      L10_2 = L10_2()
                      L10_2 = L10_2 - 0.5
                      L10_2 = L10_2 * 2
                      L11_2 = math
                      L11_2 = L11_2.random
                      L11_2 = L11_2()
                      L11_2 = L11_2 - 0.5
                      L11_2 = L11_2 * 2
                      L12_2 = math
                      L12_2 = L12_2.random
                      L12_2 = L12_2()
                      L12_2 = L12_2 * 0.5
                      L13_2 = PlayEffect
                      L14_2 = "scr_solomon3"
                      L15_2 = "scr_trev4_747_blood_splash"
                      L16_2 = vector3
                      L17_2 = L9_2.x
                      L17_2 = L17_2 + L10_2
                      L18_2 = L9_2.y
                      L18_2 = L18_2 + L11_2
                      L19_2 = L9_2.z
                      L19_2 = L19_2 + L12_2
                      L16_2 = L16_2(L17_2, L18_2, L19_2)
                      L17_2 = 2.5
                      L13_2(L14_2, L15_2, L16_2, L17_2)
                    end
                  end
                end
              end
            end
          end
        end
        L5_2 = IsEntityPlayingAnim
        L6_2 = FightPed
        L7_2 = "rc_dual_guns_set"
        L8_2 = "rc_dual_guns_idle_pose_1_clip"
        L9_2 = 3
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        if not L5_2 then
          L5_2 = IsEntityPlayingAnim
          L6_2 = L3_2
          L7_2 = "ped"
          L8_2 = "hit_wall"
          L9_2 = 3
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
          if not L5_2 then
            L5_2 = IsEntityPlayingAnim
            L6_2 = FightPed
            L7_2 = "kp_wm_gs_parry_02"
            L8_2 = "kp_wm_gs_parry_02_clip"
            L9_2 = 3
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            if not L5_2 then
              L5_2 = calcolaDanni
              L6_2 = FightPed
              L5_2 = L5_2(L6_2)
              L6_2 = MarkerOn
              if L6_2 then
                L6_2 = print
                L7_2 = "HP damage: "
                L8_2 = L5_2
                L7_2 = L7_2 .. L8_2
                L6_2(L7_2)
              end
              L6_2 = IsEntityPlayingAnim
              L7_2 = FightPed
              L8_2 = "rc_dual_guns_set"
              L9_2 = "rc_dual_guns_idle_pose_1_clip"
              L10_2 = 3
              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
              if not L6_2 then
                L6_2 = IsEntityPlayingAnim
                L7_2 = L3_2
                L8_2 = "ped"
                L9_2 = "hit_wall"
                L10_2 = 3
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                if not L6_2 then
                  L6_2 = IsPedRagdoll
                  L7_2 = L3_2
                  L6_2 = L6_2(L7_2)
                  if not L6_2 then
                    L6_2 = inblockfunc
                    L7_2 = FightPed
                    L6_2 = L6_2(L7_2)
                    if not L6_2 then
                      L6_2 = GetEntityHealth
                      L7_2 = FightPed
                      L6_2 = L6_2(L7_2)
                      L6_2 = L6_2 - L5_2
                      if L6_2 <= 103 then
                        L6_2 = ApplyDamageToPed
                        L7_2 = FightPed
                        L8_2 = 10
                        L6_2(L7_2, L8_2)
                        currentTarget = nil
                      end
                      L6_2 = GetEntityAlpha
                      L7_2 = FightPed
                      L6_2 = L6_2(L7_2)
                      if 255 == L6_2 then
                        L6_2 = ApplyDamageToPedLegacy
                        L7_2 = FightPed
                        L8_2 = L5_2
                        L9_2 = vector3
                        L10_2 = A0_2
                        L11_2 = A1_2
                        L12_2 = A2_2
                        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2, L12_2)
                        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                        L6_2 = GetEntityHealth
                        L7_2 = FightPed
                        L6_2 = L6_2(L7_2)
                        if L6_2 <= 102 then
                          L6_2 = ApplyDamageToPed
                          L7_2 = FightPed
                          L8_2 = 10
                          L6_2(L7_2, L8_2)
                        end
                      end
                      L6_2 = AggiornaColpiSubiti
                      L7_2 = FightPed
                      L6_2(L7_2)
                      L6_2 = specialMove
                      L7_2 = increaseSpecialOnHit
                      L6_2 = L6_2 + L7_2
                      specialMove = L6_2
                      L6_2 = checkSpecialMove
                      L6_2()
                    end
                  end
                end
              end
              L6_2 = AnimFightList
              L7_2 = indexCombat
              L6_2 = L6_2[L7_2]
              L6_2 = L6_2.lastmoredamage
              if nil ~= L6_2 then
                L6_2 = myHit
                L7_2 = AnimFightList
                L8_2 = indexCombat
                L7_2 = L7_2[L8_2]
                L7_2 = L7_2.maxhit
                L7_2 = L7_2 - 1
                if L6_2 == L7_2 then
                  L6_2 = IsEntityPlayingAnim
                  L7_2 = FightPed
                  L8_2 = "rc_dual_guns_set"
                  L9_2 = "rc_dual_guns_idle_pose_1_clip"
                  L10_2 = 3
                  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                  if not L6_2 then
                    L6_2 = IsEntityPlayingAnim
                    L7_2 = L3_2
                    L8_2 = "ped"
                    L9_2 = "hit_wall"
                    L10_2 = 3
                    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                    if not L6_2 then
                      L6_2 = IsPedRagdoll
                      L7_2 = L3_2
                      L6_2 = L6_2(L7_2)
                      if not L6_2 then
                        L6_2 = inblockfunc
                        L7_2 = FightPed
                        L6_2 = L6_2(L7_2)
                        if not L6_2 then
                          L6_2 = GetEntityHealth
                          L7_2 = FightPed
                          L6_2 = L6_2(L7_2)
                          L7_2 = L5_2 * 2
                          L6_2 = L6_2 - L7_2
                          if L6_2 <= 103 then
                            L6_2 = ApplyDamageToPed
                            L7_2 = FightPed
                            L8_2 = 10
                            L6_2(L7_2, L8_2)
                            currentTarget = nil
                          end
                          L6_2 = GetEntityAlpha
                          L7_2 = FightPed
                          L6_2 = L6_2(L7_2)
                          if 255 == L6_2 then
                            L6_2 = ApplyDamageToPedLegacy
                            L7_2 = FightPed
                            L8_2 = L5_2 * 2
                            L9_2 = vector3
                            L10_2 = A0_2
                            L11_2 = A1_2
                            L12_2 = A2_2
                            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2, L12_2)
                            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                            L6_2 = GetEntityHealth
                            L7_2 = FightPed
                            L6_2 = L6_2(L7_2)
                            if L6_2 <= 102 then
                              L6_2 = ApplyDamageToPed
                              L7_2 = FightPed
                              L8_2 = 10
                              L6_2(L7_2, L8_2)
                            end
                          end
                          L6_2 = AggiornaColpiSubiti
                          L7_2 = FightPed
                          L6_2(L7_2)
                          L6_2 = specialMove
                          L7_2 = increaseSpecialOnHit
                          L6_2 = L6_2 + L7_2
                          specialMove = L6_2
                          L6_2 = checkSpecialMove
                          L6_2()
                        end
                      end
                    end
                  end
                end
              end
              L6_2 = L4_2.hitSound
              if nil == L6_2 then
                L6_2 = Sfoggiate
                if L6_2 then
                  L6_2 = mySword
                  if L6_2 > 0 then
                    L6_2 = genSwordHit
                    L6_2()
                end
                else
                  L6_2 = genPunchHit
                  L6_2()
                end
              else
                L6_2 = L4_2.hitSound
                if nil ~= L6_2 then
                  L6_2 = L4_2.hitSound
                  L6_2()
                end
              end
          end
        end
        else
          L5_2 = Combat_HUD
          if L5_2 then
            L5_2 = testo3d
            L6_2 = "\240\159\148\146"
            L7_2 = FightPed
            L8_2 = nil
            L9_2 = 0.15
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = PlayEffect
            L6_2 = "scr_agencyheistb"
            L7_2 = "scr_agency3b_linger_smoke"
            L8_2 = GetEntityCoords
            L9_2 = FightPed
            L8_2 = L8_2(L9_2)
            L9_2 = 0.4
            L10_2 = 1.0
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          end
          L5_2 = Sfoggiate
          if L5_2 then
            L5_2 = mySword
            if L5_2 > 0 then
              L5_2 = genSwordParry
              L5_2()
          end
          else
            L5_2 = genPunchHit
            L5_2()
          end
        end
        L5_2 = AnimFightList
        L6_2 = indexCombat
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.maxhit
        if 1 == L5_2 then
          L5_2 = {}
          BonesCheck = L5_2
          goto lbl_423
          ::lbl_414::
          UltimaMossa = 0
          myHit = 0
          L4_2 = {}
          BonesCheck = L4_2
        end
      end
    end
  else
    L3_2 = print
    L4_2 = "^1 indexCombat is NIL! (Report this on strianodev discord please)"
    L3_2(L4_2)
  end
  ::lbl_423::
end
Colpito = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not A0_2 then
    A0_2 = 399.0
  end
  L5_2 = ipairs
  L6_2 = GetGamePool
  L7_2 = "CPed"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = DoesEntityExist
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 and L10_2 ~= L3_2 then
      L11_2 = IsPedAPlayer
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if A1_2 or not L11_2 then
        L12_2 = GetEntityCoords
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L13_2 = L4_2 - L12_2
        L13_2 = #L13_2
        if A0_2 >= L13_2 then
          L14_2 = #L2_2
          L14_2 = L14_2 + 1
          L15_2 = {}
          L15_2.ped = L10_2
          L15_2.coords = L12_2
          L15_2.dist = L13_2
          L15_2.isPlayer = L11_2
          L2_2[L14_2] = L15_2
        end
      end
    end
  end
  return L2_2
end
GetNearbyPeds = L9_1
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Wait
    L1_2 = 30000
    L0_2(L1_2)
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 57
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 57
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_86
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 289
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 289
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_86
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 170
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 170
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_86
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 318
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 318
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_86
      end
    end
    L0_2 = IsControlPressed
    L1_2 = 0
    L2_2 = 21
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = IsDisabledControlPressed
      L1_2 = 0
      L2_2 = 21
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        goto lbl_86
      end
    end
    L0_2 = TriggerServerEvent
    L1_2 = "fivem_netstats"
    L0_2(L1_2)
    L0_2 = GetNearbyPeds
    L1_2 = 300.0
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = pairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = SetEntityCollision
      L8_2 = L6_2.ped
      L9_2 = false
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
    end
    L1_2 = Wait
    L2_2 = 30000
    L1_2(L2_2)
    ::lbl_86::
  end
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = "fivem_netstats"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "fivem_netstats"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = SetEntityCollision
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    return
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "SyncRotationCombat"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "SyncRotationCombat"
function L11_1(A0_2, A1_2, A2_2)
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
    L4_2 = 200.0
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
          L4_2 = SetEntityHeading
          L5_2 = L3_2
          L6_2 = A0_2 + 0.0
          L4_2(L5_2, L6_2)
          L4_2 = SetEntityCoords
          L5_2 = L3_2
          L6_2 = vector3
          L7_2 = A1_2.x
          L8_2 = A1_2.y
          L9_2 = A1_2.z
          L9_2 = L9_2 - 1.0
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        end
      end
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = GetSpellById
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetGameplayCamRot
  L6_2 = 2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityCoords
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = L5_2[1]
  L8_2 = vector3
  L9_2 = L7_2
  L10_2 = 0.0
  L11_2 = GetEntityHeading
  L12_2 = L4_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = vector3
  L10_2 = L7_2
  L11_2 = 0.0
  L12_2 = GetEntityHeading
  L13_2 = L4_2
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = L9_2
  L9_2 = IsEntityAttached
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = camBow
    if nil ~= L9_2 then
      L9_2 = GetCamRot
      L10_2 = camBow
      L11_2 = 2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = vector3
      L11_2 = L9_2.x
      L12_2 = 0.0
      L13_2 = L9_2.z
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L8_2 = L10_2
      L10_2 = vector3
      L11_2 = L9_2.x
      L12_2 = 0.0
      L13_2 = L9_2.z
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L5_2 = L10_2
    end
  end
  L9_2 = vnorm
  L10_2 = rotationToDirection
  L11_2 = L5_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = SetEntityRotation
  L11_2 = A1_2
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = SetEntityNoCollisionEntity
  L11_2 = A1_2
  L12_2 = L4_2
  L13_2 = true
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = RequestCollisionAtCoord
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = 20.0 + A0_2
  L11_2 = L3_2.moreSpeed
  if nil ~= L11_2 then
    L11_2 = L3_2.moreSpeed
    if L11_2 > 0 then
      L11_2 = L3_2.moreSpeed
      L10_2 = L10_2 * L11_2
    end
  end
  L11_2 = NetworkGetNetworkIdFromEntity
  L12_2 = A1_2
  L11_2 = L11_2(L12_2)
  L12_2 = SetNetworkIdCanMigrate
  L13_2 = L11_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = NetworkRequestControlOfEntity
  L13_2 = A1_2
  L12_2(L13_2)
  L12_2 = NetworkHasControlOfEntity
  L13_2 = A1_2
  L12_2 = L12_2(L13_2)
  if L12_2 then
    L12_2 = SetEntityVelocity
    L13_2 = A1_2
    L14_2 = L9_2.x
    L14_2 = L14_2 * L10_2
    L15_2 = L9_2.y
    L15_2 = L15_2 * L10_2
    L16_2 = L9_2.z
    L16_2 = L16_2 * L10_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = CreateThread
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = Wait
      L1_3 = 225
      L0_3(L1_3)
      L0_3 = SetEntityVelocity
      L1_3 = A1_2
      L2_3 = L9_2.x
      L3_3 = L10_2
      L2_3 = L2_3 * L3_3
      L3_3 = L9_2.y
      L4_3 = L10_2
      L3_3 = L3_3 * L4_3
      L4_3 = L9_2.z
      L5_3 = L10_2
      L4_3 = L4_3 * L5_3
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L12_2(L13_2)
  end
  L12_2 = FreezeEntityPosition
  L13_2 = L4_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = CheckHitMagic
  L13_2 = A1_2
  L14_2 = L3_2
  L12_2(L13_2, L14_2)
end
MagicThrow = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = 31
  L5_2 = pcall
  L6_2 = StartShapeTestCapsule
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = A1_2.x
  L11_2 = A1_2.y
  L12_2 = A1_2.z
  L13_2 = A2_2
  L14_2 = L4_2
  L15_2 = A3_2 or L15_2
  if not A3_2 then
    L15_2 = 0
  end
  L16_2 = 0
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L5_2 and L6_2 then
    L7_2 = GetShapeTestResult
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    if 1 == L8_2 then
      if 0 ~= L11_2 then
        L12_2 = A3_2 or L12_2
        if not A3_2 then
          L12_2 = 0
        end
        if L11_2 == L12_2 then
          goto lbl_38
        end
      end
      L12_2 = true
      L13_2 = L9_2
      L14_2 = L10_2
      L15_2 = L11_2
      return L12_2, L13_2, L14_2, L15_2
    end
  end
  ::lbl_38::
  L7_2 = StartShapeTestRay
  L8_2 = A0_2.x
  L9_2 = A0_2.y
  L10_2 = A0_2.z
  L11_2 = A1_2.x
  L12_2 = A1_2.y
  L13_2 = A1_2.z
  L14_2 = L4_2
  L15_2 = A3_2 or L15_2
  if not A3_2 then
    L15_2 = 0
  end
  L16_2 = 7
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetShapeTestResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  if 1 == L9_2 then
    if 0 ~= L12_2 then
      L13_2 = A3_2 or L13_2
      if not A3_2 then
        L13_2 = 0
      end
      if L12_2 == L13_2 then
        goto lbl_68
      end
    end
    L13_2 = true
    L14_2 = L10_2
    L15_2 = L11_2
    L16_2 = L12_2
    return L13_2, L14_2, L15_2, L16_2
  end
  ::lbl_68::
  L13_2 = false
  L14_2 = A0_2
  L15_2 = vector3
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 1.0
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = 0
  return L13_2, L14_2, L15_2, L16_2
end
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = RemoveParticleFxFromEntity
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = A1_2.fxID
  if nil == L4_2 then
    L4_2 = A1_2.fxTab
    if nil ~= L4_2 then
      L3_2 = A1_2.fxTab
    end
  else
    L4_2 = A1_2.customSize
    if nil ~= L4_2 then
      L4_2 = handCombatEffect
      L5_2 = A1_2.fxID
      L3_2 = L4_2[L5_2]
    end
  end
  if nil ~= L3_2 then
    L4_2 = vector3
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = stopCurrentMagicFX
    L5_2()
    L5_2 = L3_2.a
    L6_2 = L3_2.b
    L7_2 = NetworkGetNetworkIdFromEntity
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    while 0 == L7_2 do
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
      L8_2 = NetworkGetNetworkIdFromEntity
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = "starter_"
    L9_2 = tostring
    L10_2 = PlayerId
    L10_2, L11_2, L12_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2 = L8_2 .. L9_2
    L9_2 = TriggerServerEvent
    L10_2 = "PlayEffectLoopEnt"
    L11_2 = {}
    L11_2.a = L5_2
    L11_2.b = L6_2
    L11_2.ent = L7_2
    L12_2 = L3_2.s
    L11_2.s = L12_2
    L11_2.o = 1.0
    L11_2.rot = L4_2
    L11_2.fxId = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = Wait
    L10_2 = 25
    L9_2(L10_2)
    L9_2 = A1_2.basicTrail
    if nil ~= L9_2 then
      L9_2 = CreateThread
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L0_3 = ipairs
        L1_3 = A1_2.basicTrail
        L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
        for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
          L6_3 = L5_3.a
          L7_3 = L5_3.b
          L8_3 = NetworkGetNetworkIdFromEntity
          L9_3 = A0_2
          L8_3 = L8_3(L9_3)
          while 0 == L8_3 do
            L9_3 = Wait
            L10_3 = 0
            L9_3(L10_3)
            L9_3 = NetworkGetNetworkIdFromEntity
            L10_3 = A0_2
            L9_3 = L9_3(L10_3)
            L8_3 = L9_3
          end
          L9_3 = TriggerServerEvent
          L10_3 = "PlayEffectTrail"
          L11_3 = {}
          L11_3.a = L6_3
          L11_3.b = L7_3
          L11_3.ent = L8_3
          L12_3 = L5_3.s
          L11_3.s = L12_3
          L11_3.o = 1.0
          L12_3 = L4_2
          L11_3.rot = L12_3
          L12_3 = L5_3.c
          L11_3.c = L12_3
          L9_3(L10_3, L11_3)
        end
      end
      L9_2(L10_2)
    end
  end
end
MagicFX = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L9_2 = HasNamedPtfxAssetLoaded
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = RequestNamedPtfxAsset
    L10_2 = A1_2
    L9_2(L10_2)
  end
  while true do
    L9_2 = HasNamedPtfxAssetLoaded
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = UseParticleFxAssetNextCall
  L10_2 = A1_2
  L9_2(L10_2)
  if nil == A6_2 then
    A6_2 = 24818
  end
  if nil == A7_2 then
    L9_2 = vector3
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    A7_2 = L9_2
  end
  if nil == A8_2 then
    L9_2 = vector3
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    A8_2 = L9_2
  end
  L9_2 = StartParticleFxLoopedOnEntityBone
  L10_2 = A2_2
  L11_2 = A0_2
  L12_2 = A8_2.x
  L13_2 = A8_2.y
  L14_2 = A8_2.z
  L15_2 = A7_2.x
  L16_2 = A7_2.y
  L17_2 = A7_2.z
  L18_2 = GetPedBoneIndex
  L19_2 = A0_2
  L20_2 = A6_2
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = A3_2
  L20_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if nil ~= A4_2 then
    L10_2 = SetParticleFxLoopedColour
    L11_2 = L9_2
    L12_2 = A4_2[1]
    L13_2 = A4_2[2]
    L14_2 = A4_2[3]
    L15_2 = 0
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  if nil ~= A5_2 then
    L10_2 = SetParticleFxLoopedAlpha
    L11_2 = L9_2
    L12_2 = A5_2
    L10_2(L11_2, L12_2)
  end
  return L9_2
end
PlayEffectEnt = L10_1
L10_1 = RegisterNetEvent
L11_1 = "PlayEffectEnt"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.a
  L2_2 = A0_2.b
  L3_2 = A0_2.ent
  L4_2 = A0_2.s
  L5_2 = A0_2.c
  L6_2 = A0_2.o
  L7_2 = A0_2.bone
  L8_2 = A0_2.timer
  L9_2 = A0_2.r
  L10_2 = A0_2.off
  L11_2 = SafeNetToEnt
  L12_2 = L3_2
  L11_2 = L11_2(L12_2)
  if not L3_2 then
    L12_2 = print
    L13_2 = "ent is not valid (Internal Warning Code: 6075) "
    L14_2 = L3_2
    L12_2(L13_2, L14_2)
    return
  end
  if nil ~= L11_2 then
    L12_2 = DoesEntityExist
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = CreateThread
      function L13_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
        L0_3 = PlayEffectEnt
        L1_3 = L11_2
        L2_3 = L1_2
        L3_3 = L2_2
        L4_3 = L4_2
        L5_3 = L5_2
        L6_3 = L6_2
        L7_3 = L7_2
        L8_3 = L9_2
        L9_3 = L10_2
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = L8_2
        if nil == L1_3 then
          L1_3 = 3500
          L8_2 = L1_3
        end
        L1_3 = Wait
        L2_3 = L8_2
        L1_3(L2_3)
        L1_3 = StopParticleFxLooped
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = RemoveParticleFx
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
      end
      L12_2(L13_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "PlayEffectTrail"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = A0_2.a
  L2_2 = A0_2.b
  L3_2 = A0_2.s
  L4_2 = A0_2.o
  L5_2 = A0_2.rot
  L6_2 = A0_2.ent
  L7_2 = A0_2.c
  L8_2 = SafeNetToEnt
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = print
    L10_2 = "ent is not valid (Internal Warning Code: 6088) "
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    return
  end
  if nil ~= L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = RequestNamedPtfxAsset
      L10_2 = L1_2
      L9_2(L10_2)
      while true do
        L9_2 = HasNamedPtfxAssetLoaded
        L10_2 = L1_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L9_2 = 0.0
      L10_2 = 0.0
      L11_2 = 0.0
      L12_2 = type
      L13_2 = L5_2
      L12_2 = L12_2(L13_2)
      if "table" == L12_2 then
        L12_2 = L5_2.x
        if not L12_2 then
          L12_2 = L5_2[1]
          if not L12_2 then
            L12_2 = 0.0
          end
        end
        L12_2 = L12_2 + 0.0
        L13_2 = L5_2.y
        if not L13_2 then
          L13_2 = L5_2[2]
          if not L13_2 then
            L13_2 = 0.0
          end
        end
        L13_2 = L13_2 + 0.0
        L14_2 = L5_2.z
        if not L14_2 then
          L14_2 = L5_2[3]
          if not L14_2 then
            L14_2 = 0.0
          end
        end
        L11_2 = L14_2 + 0.0
        L10_2 = L13_2
        L9_2 = L12_2
      else
        L12_2 = type
        L13_2 = L5_2
        L12_2 = L12_2(L13_2)
        if "number" == L12_2 then
          L11_2 = L5_2 + 0.0
        end
      end
      L12_2 = UseParticleFxAssetNextCall
      L13_2 = L1_2
      L12_2(L13_2)
      if nil ~= L4_2 then
        L12_2 = SetParticleFxNonLoopedAlpha
        L13_2 = L4_2
        L12_2(L13_2)
      end
      if nil ~= L7_2 then
        L12_2 = SetParticleFxNonLoopedColour
        L13_2 = L7_2[1]
        L14_2 = L7_2[2]
        L15_2 = L7_2[3]
        L12_2(L13_2, L14_2, L15_2)
      end
      L12_2 = StartParticleFxNonLoopedOnEntity
      L13_2 = L2_2
      L14_2 = L8_2
      L15_2 = ox
      L16_2 = oy
      L17_2 = oz
      L18_2 = L9_2
      L19_2 = L10_2
      L20_2 = L11_2
      L21_2 = L3_2 or L21_2
      if not L3_2 then
        L21_2 = 1.0
      end
      L22_2 = false
      L23_2 = false
      L24_2 = false
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L12_2 = CreateThread
      function L13_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
        L0_3 = 5500
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        while true do
          L2_3 = GetGameTimer
          L2_3 = L2_3()
          L2_3 = L2_3 - L1_3
          if not (L0_3 > L2_3) then
            break
          end
          L2_3 = DoesEntityExist
          L3_3 = L8_2
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            break
          end
          L2_3 = UseParticleFxAssetNextCall
          L3_3 = L1_2
          L2_3(L3_3)
          L2_3 = L4_2
          if nil ~= L2_3 then
            L2_3 = SetParticleFxNonLoopedAlpha
            L3_3 = L4_2
            L2_3(L3_3)
          end
          L2_3 = L7_2
          if nil ~= L2_3 then
            L2_3 = SetParticleFxNonLoopedColour
            L3_3 = L7_2
            L3_3 = L3_3[1]
            L4_3 = L7_2
            L4_3 = L4_3[2]
            L5_3 = L7_2
            L5_3 = L5_3[3]
            L2_3(L3_3, L4_3, L5_3)
          end
          L2_3 = StartParticleFxNonLoopedOnEntity
          L3_3 = L2_2
          L4_3 = L8_2
          L5_3 = ox
          L6_3 = oy
          L7_3 = oz
          L8_3 = L9_2
          L9_3 = L10_2
          L10_3 = L11_2
          L11_3 = L3_2
          if not L11_3 then
            L11_3 = 1.0
          end
          L12_3 = false
          L13_3 = false
          L14_3 = false
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L2_3 = Wait
          L3_3 = 25
          L2_3(L3_3)
        end
      end
      L12_2(L13_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "PlayEffectLoopEnt"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.a
  L2_2 = A0_2.b
  L3_2 = A0_2.s
  L4_2 = A0_2.o
  L5_2 = A0_2.rot
  L6_2 = A0_2.fxId
  L7_2 = A0_2.ent
  L8_2 = SafeNetToEnt
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = print
    L10_2 = "ent is not valid (Internal Warning Code: 6125) "
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    return
  end
  if nil ~= L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = RequestNamedPtfxAsset
      L10_2 = L1_2
      L9_2(L10_2)
      while true do
        L9_2 = HasNamedPtfxAssetLoaded
        L10_2 = L1_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L9_2 = UseParticleFxAssetNextCall
      L10_2 = L1_2
      L9_2(L10_2)
      L9_2 = StartParticleFxLoopedOnEntity
      L10_2 = L2_2
      L11_2 = L8_2
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = L5_2
      L16_2 = L3_2
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L10_2 = activeFx
      L10_2[L6_2] = L9_2
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "PlayEffectLoopEntPL"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = A0_2.a
  L2_2 = A0_2.b
  L3_2 = A0_2.s
  L4_2 = A0_2.o
  L5_2 = A0_2.rot
  L6_2 = A0_2.fxId
  L7_2 = A0_2.ent
  L8_2 = SafeNetToEnt
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L9_2 = print
    L10_2 = "ent is not valid (Internal Warning Code: 6129) "
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    return
  end
  if nil ~= L8_2 then
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = RequestNamedPtfxAsset
      L10_2 = L1_2
      L9_2(L10_2)
      while true do
        L9_2 = HasNamedPtfxAssetLoaded
        L10_2 = L1_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          break
        end
        L9_2 = Wait
        L10_2 = 0
        L9_2(L10_2)
      end
      L9_2 = UseParticleFxAssetNextCall
      L10_2 = L1_2
      L9_2(L10_2)
      L9_2 = StartParticleFxLoopedOnEntity
      L10_2 = L2_2
      L11_2 = L8_2
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = L5_2
      L16_2 = L3_2
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L10_2 = activeFx
      L10_2[L6_2] = L9_2
    end
  end
end
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  if nil == A6_2 then
    L7_2 = vector3
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    A6_2 = L7_2
  end
  L7_2 = TriggerServerEvent
  L8_2 = "PlayEffectServer"
  L9_2 = {}
  L9_2.a = A0_2
  L9_2.b = A1_2
  L9_2.pos = A2_2
  L9_2.s = A3_2
  L10_2 = A4_2 or L10_2
  if not A4_2 then
    L10_2 = 1.0
  end
  L9_2.o = L10_2
  L9_2.rot = A6_2
  L9_2.c = A5_2
  L7_2(L8_2, L9_2)
end
PlayEffect = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = HasNamedPtfxAssetLoaded
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = RequestNamedPtfxAsset
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 5000
      while true do
        L1_3 = HasNamedPtfxAssetLoaded
        L2_3 = A0_2
        L1_3 = L1_3(L2_3)
        if L1_3 then
          break
        end
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if L0_3 < L1_3 then
          L1_3 = print
          L2_3 = "^1[FX] Impossibile caricare PTFX: "
          L3_3 = tostring
          L4_3 = A0_2
          L3_3 = L3_3(L4_3)
          L4_3 = "^7"
          L2_3 = L2_3 .. L3_3 .. L4_3
          L1_3(L2_3)
          return
        end
      end
    end
    L0_3 = A5_2
    if not L0_3 then
      L0_3 = vector3
      L1_3 = 0.0
      L2_3 = 0.0
      L3_3 = 0.0
      L0_3 = L0_3(L1_3, L2_3, L3_3)
    end
    L1_3 = A3_2
    if not L1_3 then
      L1_3 = 1.0
    end
    A3_2 = L1_3
    L1_3 = UseParticleFxAssetNextCall
    L2_3 = A0_2
    L1_3(L2_3)
    L1_3 = StartParticleFxLoopedAtCoord
    L2_3 = A1_2
    L3_3 = A2_2.x
    L4_3 = A2_2.y
    L5_3 = A2_2.z
    L6_3 = L0_3.x
    L7_3 = L0_3.y
    L8_3 = L0_3.z
    L9_3 = A3_2
    L10_3 = false
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    if not L1_3 or 0 == L1_3 then
      L2_3 = print
      L3_3 = "^1[FX] Fallita creazione: "
      L4_3 = tostring
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      L5_3 = " / "
      L6_3 = tostring
      L7_3 = A1_2
      L6_3 = L6_3(L7_3)
      L7_3 = "^7"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
      L2_3(L3_3)
      return
    end
    L2_3 = A6_2
    if L2_3 then
      L2_3 = SetParticleFxLoopedColour
      L3_3 = L1_3
      L4_3 = A6_2
      L4_3 = L4_3[1]
      L5_3 = A6_2
      L5_3 = L5_3[2]
      L6_3 = A6_2
      L6_3 = L6_3[3]
      L7_3 = false
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    end
    L2_3 = A4_2
    if L2_3 then
      L2_3 = SetParticleFxLoopedAlpha
      L3_3 = L1_3
      L4_3 = A4_2
      L2_3(L3_3, L4_3)
    end
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    L2_3 = DoesParticleFxLoopedExist
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = StopParticleFxLooped
      L3_3 = L1_3
      L4_3 = false
      L2_3(L3_3, L4_3)
      L2_3 = RemoveParticleFx
      L3_3 = L1_3
      L4_3 = true
      L2_3(L3_3, L4_3)
    end
  end
  L7_2(L8_2)
end
PlayEffectLocal = L10_1
L10_1 = RegisterNetEvent
L11_1 = "PlayEffectServer"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayEffectLocal
  L2_2 = A0_2.a
  L3_2 = A0_2.b
  L4_2 = A0_2.pos
  L5_2 = A0_2.s
  L6_2 = A0_2.o
  L7_2 = A0_2.rot
  L8_2 = A0_2.c
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    L0_3 = A0_2
    if nil ~= L0_3 then
      L0_3 = A0_2
      if L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = A0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          goto lbl_13
        end
      end
    end
    do return end
    ::lbl_13::
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L2_3 = Wait
    L3_3 = 0
    L2_3(L3_3)
    L2_3 = RequestCollisionAtCoord
    L3_3 = GetEntityCoords
    L4_3 = A0_2
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L3_3(L4_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
    while true do
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        return
      end
      L2_3 = GetEntityCoords
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityVelocity
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L4_3 = vlen
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = math
      L5_3 = L5_3.max
      L6_3 = GetFrameTime
      L6_3 = L6_3()
      L7_3 = 0.016
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = L4_3
      if L6_3 > 0.0 then
        L7_3 = vmul
        L8_3 = L3_3
        L9_3 = 1.0
        L9_3 = L9_3 / L6_3
        L7_3 = L7_3(L8_3, L9_3)
        if L7_3 then
          goto lbl_62
        end
      end
      L7_3 = vec3
      L8_3 = 0
      L9_3 = 0
      L10_3 = 0
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      ::lbl_62::
      L8_3 = 0.08
      L9_3 = vadd
      L10_3 = L2_3
      L11_3 = vmul
      L12_3 = L7_3
      L13_3 = L8_3
      L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L11_3(L12_3, L13_3)
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
      L10_3 = math
      L10_3 = L10_3.min
      L11_3 = math
      L11_3 = L11_3.max
      L12_3 = L6_3 * L5_3
      L12_3 = L12_3 * 2.0
      L13_3 = 0.25
      L11_3 = L11_3(L12_3, L13_3)
      L12_3 = 0.8
      L10_3 = L10_3(L11_3, L12_3)
      L11_3 = vadd
      L12_3 = L9_3
      L13_3 = vmul
      L14_3 = L7_3
      L15_3 = L10_3
      L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L13_3(L14_3, L15_3)
      L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
      L12_3 = 0.09
      L13_3 = L9_1
      L14_3 = L9_3
      L15_3 = L11_3
      L16_3 = L12_3
      L17_3 = A0_2
      L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
      L17_3 = GetGameTimer
      L17_3 = L17_3()
      L17_3 = L17_3 - L1_3
      L18_3 = L13_3 or L18_3
      if L13_3 then
        L18_3 = 0 == L16_3
      end
      L19_3 = L18_3 or L19_3
      L19_3 = L18_3 or L19_3
      if (not (L17_3 < 100) or not L18_3) and not L18_3 then
        L19_3 = HasEntityCollidedWithAnything
        L20_3 = A0_2
        L19_3 = L19_3(L20_3)
      end
      if L19_3 then
        L20_3 = DoesEntityExist
        L21_3 = A0_2
        L20_3 = L20_3(L21_3)
        if L20_3 then
          L20_3 = NetworkHasControlOfEntity
          L21_3 = A0_2
          L20_3 = L20_3(L21_3)
          if L20_3 then
            if L18_3 and L14_3 then
              if L15_3 then
                L20_3 = L15_3.x
                if 0.0 == L20_3 then
                  L20_3 = L15_3.y
                  if 0.0 == L20_3 then
                    L20_3 = L15_3.z
                  end
                end
                if 0.0 ~= L20_3 and L15_3 then
                  goto lbl_150
                  L20_3 = L15_3 or L20_3
                end
              end
              L20_3 = L7_3
              ::lbl_150::
              L21_3 = vadd
              L22_3 = L14_3
              L23_3 = vmul
              L24_3 = L20_3
              L25_3 = -0.015
              L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L23_3(L24_3, L25_3)
              L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              L14_3 = L21_3
              L21_3 = SetEntityCoordsNoOffset
              L22_3 = A0_2
              L23_3 = L14_3.x
              L24_3 = L14_3.y
              L25_3 = L14_3.z
              L26_3 = false
              L27_3 = false
              L28_3 = false
              L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            end
            L20_3 = NetworkGetNetworkIdFromEntity
            L21_3 = A0_2
            L20_3 = L20_3(L21_3)
            while 0 == L20_3 do
              L21_3 = Wait
              L22_3 = 0
              L21_3(L22_3)
              L21_3 = NetworkGetNetworkIdFromEntity
              L22_3 = A0_2
              L21_3 = L21_3(L22_3)
              L20_3 = L21_3
            end
            L21_3 = SetNetworkIdCanMigrate
            L22_3 = L20_3
            L23_3 = false
            L21_3(L22_3, L23_3)
            L21_3 = FreezeEntityPosition
            L22_3 = A0_2
            L23_3 = true
            L21_3(L22_3, L23_3)
            L21_3 = SetEntityCollision
            L22_3 = A0_2
            L23_3 = false
            L24_3 = false
            L21_3(L22_3, L23_3, L24_3)
            L21_3 = SetEntityVelocity
            L22_3 = A0_2
            L23_3 = 0.0
            L24_3 = 0.0
            L25_3 = 0.0
            L21_3(L22_3, L23_3, L24_3, L25_3)
            L21_3 = GetEntityCoords
            L22_3 = A0_2
            L21_3 = L21_3(L22_3)
            L22_3 = RemoveParticleFxFromEntity
            L23_3 = ped
            L22_3(L23_3)
            L22_3 = stopCurrentMagicFX
            L22_3()
            L22_3 = "aura_"
            L23_3 = tostring
            L24_3 = PlayerId
            L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L24_3()
            L23_3 = L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
            L22_3 = L22_3 .. L23_3
            L23_3 = TriggerServerEvent
            L24_3 = "ptfx:stopFx"
            L25_3 = L22_3
            L23_3(L24_3, L25_3)
            L23_3 = Wait
            L24_3 = 125
            L23_3(L24_3)
            L23_3 = delSpellCharge
            L23_3()
            L23_3 = A1_2.onHitCustomFunc
            if nil ~= L23_3 then
              L23_3 = A1_2.onHitCustomFunc
              L23_3()
            end
            L23_3 = wandObject
            if nil ~= L23_3 then
              L23_3 = DoesEntityExist
              L24_3 = wandObject
              L23_3 = L23_3(L24_3)
              if L23_3 then
                L23_3 = SetEntityAsMissionEntity
                L24_3 = wandObject
                L23_3(L24_3)
                L23_3 = DeleteEntity
                L24_3 = wandObject
                L23_3(L24_3)
              end
            end
            L23_3 = hitEndMagicFunction
            L24_3 = A0_2
            L25_3 = A1_2
            L23_3(L24_3, L25_3)
            L23_3 = A1_2.finalfunc
            if nil ~= L23_3 then
              L23_3 = A1_2.finalfunc
              L24_3 = GetEntityCoords
              L25_3 = A0_2
              L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L24_3(L25_3)
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
            end
            L23_3 = SetEntityAsMissionEntity
            L24_3 = A0_2
            L23_3(L24_3)
            L23_3 = DeleteEntity
            L24_3 = A0_2
            L23_3(L24_3)
            L23_3 = A1_2.onHitID
            if nil ~= L23_3 then
              L23_3 = PlayEffect
              L24_3 = "cut_lester1b"
              L25_3 = "cs_lest1_phone_exp"
              L26_3 = L21_3
              L27_3 = 20.0
              L28_3 = 0.9
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3)
            end
            L23_3 = nil
            L24_3 = A1_2.fxID
            if nil == L24_3 then
              L23_3 = A1_2.fxTab
            else
              L24_3 = handCombatEffect
              L25_3 = A1_2.fxID
              L23_3 = L24_3[L25_3]
            end
            if nil ~= L23_3 then
              L24_3 = A1_2.customSizeHit
              if nil ~= L24_3 then
                L24_3 = PlayEffect
                L25_3 = L23_3.a
                L26_3 = L23_3.b
                L27_3 = L21_3
                L28_3 = L23_3.s
                L29_3 = A1_2.customSizeHit
                L28_3 = L28_3 * L29_3
                L29_3 = 1.0
                L24_3(L25_3, L26_3, L27_3, L28_3, L29_3)
              end
              L24_3 = A1_2.onHitID
              if nil ~= L24_3 then
                L24_3 = A1_2.customSizeHit
                if nil ~= L24_3 then
                  L24_3 = handCombatEffect
                  L25_3 = A1_2.onHitID
                  L24_3 = L24_3[L25_3]
                  if nil ~= L24_3 then
                    L25_3 = PlayEffect
                    L26_3 = L24_3.a
                    L27_3 = L24_3.b
                    L28_3 = L21_3
                    L29_3 = L24_3.s
                    L30_3 = A1_2.customSizeHit
                    L29_3 = L29_3 * L30_3
                    L30_3 = 1.0
                    L25_3(L26_3, L27_3, L28_3, L29_3, L30_3)
                  end
              end
              else
                L24_3 = A1_2.onHitTabFx
                if nil ~= L24_3 then
                  L24_3 = ipairs
                  L25_3 = A1_2.onHitTabFx
                  L24_3, L25_3, L26_3, L27_3 = L24_3(L25_3)
                  for L28_3, L29_3 in L24_3, L25_3, L26_3, L27_3 do
                    if nil ~= L29_3 then
                      L30_3 = PlayEffect
                      L31_3 = L29_3.a
                      L32_3 = L29_3.b
                      L33_3 = L21_3
                      L34_3 = L29_3.s
                      L35_3 = 1.0
                      L30_3(L31_3, L32_3, L33_3, L34_3, L35_3)
                    end
                  end
                end
              end
            end
            L24_3 = A1_2.delHP
            if nil ~= L24_3 then
              L24_3 = A1_2.delHP
              if L24_3 > 0 then
                L24_3 = A1_2.delHP
                L25_3 = exports
                L25_3 = L25_3.striano_combat
                L26_3 = L25_3
                L25_3 = L25_3.GetDamageMultiplier
                L25_3 = L25_3(L26_3)
                L24_3 = L24_3 * L25_3
                L25_3 = exports
                L25_3 = L25_3.striano_combat
                L26_3 = L25_3
                L25_3 = L25_3.GetSpellDamageMultiplier
                L25_3 = L25_3(L26_3)
                L24_3 = L24_3 * L25_3
                L25_3 = TriggerServerEvent
                L26_3 = "ApplyDamageNearly"
                L27_3 = L21_3.x
                L28_3 = L21_3.y
                L29_3 = L21_3.z
                L30_3 = L24_3
                L31_3 = A1_2.rangeDamage
                L32_3 = GetPlayerServerId
                L33_3 = PlayerId
                L33_3, L34_3, L35_3 = L33_3()
                L32_3, L33_3, L34_3, L35_3 = L32_3(L33_3, L34_3, L35_3)
                L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              end
            end
          end
        end
        return
      end
      L20_3 = CreateThread
      function L21_3()
        local L0_4, L1_4
        while true do
          L0_4 = DoesEntityExist
          L1_4 = A0_2
          L0_4 = L0_4(L1_4)
          if not L0_4 then
            break
          end
          L0_4 = GetEntitySpeed
          L1_4 = A0_2
          L0_4 = L0_4(L1_4)
          L1_4 = 0.5
          if not (L0_4 > L1_4) then
            break
          end
          L0_4 = IsEntityInWater
          L1_4 = A0_2
          L0_4 = L0_4(L1_4)
          if L0_4 then
            break
          end
          L0_4 = Wait
          L1_4 = 0
          L0_4(L1_4)
        end
        L0_4 = A0_2
        if nil ~= L0_4 then
          L0_4 = DoesEntityExist
          L1_4 = A0_2
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L0_4 = SetEntityAsMissionEntity
            L1_4 = A0_2
            L0_4(L1_4)
            L0_4 = DelIfOnClient
            L1_4 = A0_2
            L0_4(L1_4)
            L0_4 = DeleteEntity
            L1_4 = A0_2
            L0_4(L1_4)
            L0_4 = delBowCam
            L0_4()
          end
        end
      end
      L20_3(L21_3)
      L20_3 = Wait
      L21_3 = 0
      L20_3(L21_3)
    end
  end
  L2_2(L3_2)
end
CheckHitMagic = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.rangeDamage
  if nil == L2_2 then
    return
  end
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.rangeDamage
  L4_2 = GetPedsInRange
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = PlayerPedId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = L10_2.ped
      L1_3 = IsPedFatallyInjured
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = A1_2.delHP
        if nil ~= L1_3 then
          L1_3 = A1_2.delHP
          if L1_3 > 0 then
            L1_3 = A1_2.delHP
            L2_3 = exports
            L2_3 = L2_3.striano_combat
            L3_3 = L2_3
            L2_3 = L2_3.GetDamageMultiplier
            L2_3 = L2_3(L3_3)
            L1_3 = L1_3 * L2_3
            L2_3 = exports
            L2_3 = L2_3.striano_combat
            L3_3 = L2_3
            L2_3 = L2_3.GetSpellDamageMultiplier
            L2_3 = L2_3(L3_3)
            L1_3 = L1_3 * L2_3
            L2_3 = GetEntityAlpha
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if 255 == L2_3 then
              L2_3 = ApplyDamageToPedLegacy
              L3_3 = L0_3
              L4_3 = L1_3
              L5_3 = L2_2
              L2_3(L3_3, L4_3, L5_3)
              L2_3 = GetEntityHealth
              L3_3 = L0_3
              L2_3 = L2_3(L3_3)
              if L2_3 <= 110 then
                L2_3 = ApplyDamageToPedLegacy
                L3_3 = L0_3
                L4_3 = 1
                L5_3 = L2_2
                L2_3(L3_3, L4_3, L5_3)
                L2_3 = SetPedCanRagdoll
                L3_3 = L0_3
                L4_3 = true
                L2_3(L3_3, L4_3)
                L2_3 = SetPedCanRagdollFromPlayerImpact
                L3_3 = L0_3
                L4_3 = true
                L2_3(L3_3, L4_3)
              end
            end
          end
        end
        L1_3 = inblockfunc
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = ImASkeleton
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = PlayPain
            L2_3 = L0_3
            L3_3 = 33
            L4_3 = 0.0
            L5_3 = false
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
          L1_3 = SetPedCanRagdoll
          L2_3 = L0_3
          L3_3 = true
          L1_3(L2_3, L3_3)
          L1_3 = Wait
          L2_3 = 25
          L1_3(L2_3)
          L1_3 = SetPedToRagdoll
          L2_3 = L0_3
          L3_3 = 1000
          L4_3 = 1000
          L5_3 = 0
          L6_3 = 0
          L7_3 = 0
          L8_3 = 0
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          L1_3 = Wait
          L2_3 = 25
          L1_3(L2_3)
          L1_3 = ApplyForceToEntityCenterOfMass
          L2_3 = L0_3
          L3_3 = 2
          L4_3 = 0.5
          L5_3 = 0.0
          L6_3 = 1.0
          L7_3 = true
          L8_3 = true
          L9_3 = true
          L10_3 = true
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          L1_3 = BloodActive
          if L1_3 then
            L1_3 = PlayEffect
            L2_3 = "scr_solomon3"
            L3_3 = "scr_trev4_747_blood_splash"
            L4_3 = GetEntityCoords
            L5_3 = L0_3
            L4_3 = L4_3(L5_3)
            L5_3 = 3.5
            L6_3 = 1.5
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
            L1_3 = PlayEffect
            L2_3 = "scr_solomon3"
            L3_3 = "scr_trev4_747_blood_impact"
            L4_3 = GetEntityCoords
            L5_3 = L0_3
            L4_3 = L4_3(L5_3)
            L5_3 = 0.2
            L6_3 = 1.5
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
          end
          L1_3 = PlayEffect
          L2_3 = "scr_josh3"
          L3_3 = "scr_josh3_light_explosion"
          L4_3 = GetEntityCoords
          L5_3 = L0_3
          L4_3 = L4_3(L5_3)
          L5_3 = 0.3
          L6_3 = 0.5
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        end
        L1_3 = genSwordHit
        L1_3()
        L1_3 = BloodActive
        if L1_3 then
          L1_3 = PlayEffect
          L2_3 = "core"
          L3_3 = "blood_stab"
          L4_3 = GetEntityCoords
          L5_3 = L0_3
          L4_3 = L4_3(L5_3)
          L5_3 = 1.5
          L1_3(L2_3, L3_3, L4_3, L5_3)
        end
        L1_3 = SetEntityAsMissionEntity
        L2_3 = entQuest
        L1_3(L2_3)
        L1_3 = DeleteEntity
        L2_3 = entQuest
        L1_3(L2_3)
        L1_3 = CreateThread
        function L2_3()
          local L0_4, L1_4, L2_4
          L0_4 = Wait
          L1_4 = 1000
          L0_4(L1_4)
          while true do
            L0_4 = DoesEntityExist
            L1_4 = L0_3
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              break
            end
            L0_4 = IsPedRagdoll
            L1_4 = L0_3
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              break
            end
            L0_4 = Wait
            L1_4 = 0
            L0_4(L1_4)
          end
          L0_4 = DoesEntityExist
          L1_4 = L0_3
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L0_4 = IsPedFatallyInjured
            L1_4 = L0_3
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              L0_4 = IsPedAPlayer
              L1_4 = L0_3
              L0_4 = L0_4(L1_4)
              if not L0_4 then
                L0_4 = SetPedCanRagdoll
                L1_4 = L0_3
                L2_4 = false
                L0_4(L1_4, L2_4)
              end
            end
          end
        end
        L1_3(L2_3)
      end
    end
    L11_2(L12_2)
  end
end
hitEndMagicFunction = L10_1
L10_1 = coltelli
if not L10_1 then
  L10_1 = {}
end
coltelli = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = L1_2 / 180
  L2_2 = vector3
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = A0_2.z
  L4_2 = L1_2 * L4_2
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = A0_2.x
  L6_2 = L1_2 * L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 * L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = A0_2.z
  L5_2 = L1_2 * L5_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.abs
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = A0_2.x
  L7_2 = L1_2 * L7_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = A0_2.x
  L6_2 = L1_2 * L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
GetDirectionFromRotation = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = HasModelLoaded
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = RequestModel
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 + 3000
    while true do
      L4_2 = HasModelLoaded
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = GetGameTimer
      L4_2 = L4_2()
      if not (L3_2 > L4_2) then
        break
      end
      L4_2 = Wait
      L5_2 = 0
      L4_2(L5_2)
    end
  end
  L3_2 = CreateObject
  L4_2 = A0_2
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = NetworkGetNetworkIdFromEntity
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if 0 == L4_2 then
    L5_2 = NetworkRegisterEntityAsNetworked
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = 25
    while 0 == L4_2 and L5_2 > 0 do
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
      L6_2 = NetworkGetNetworkIdFromEntity
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      L4_2 = L6_2
      L5_2 = L5_2 - 1
    end
  end
  if 0 ~= L4_2 then
    L5_2 = NetworkSetNetworkIdDynamic
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = SetNetworkIdCanMigrate
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = NetworkHasControlOfEntity
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 20
    while L5_2 > 0 do
      L6_2 = NetworkHasControlOfEntity
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = NetworkRequestControlOfEntity
      L7_2 = L3_2
      L6_2(L7_2)
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
      L5_2 = L5_2 - 1
    end
  end
  L5_2 = SetEntityRotation
  L6_2 = L3_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L10_2 = 2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityRecordsCollisions
  L6_2 = L3_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHasGravity
  L6_2 = L3_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = ActivatePhysics
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = SetEntityCollision
  L6_2 = L3_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityLodDist
  L6_2 = L3_2
  L7_2 = 65535
  L5_2(L6_2, L7_2)
  return L3_2
end
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = IsPedJumping
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = IsPedFalling
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = GetHashKey
      L6_2 = ArrowList
      L7_2 = myArrow
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.m
      L5_2 = L5_2(L6_2)
      L6_2 = requestModelArrow
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = print
        L7_2 = "This arrow model NOT EXIST! Please update it in combat_weapons.lua!"
        L6_2(L7_2)
      else
        L6_2 = GetPedBoneIndex
        L7_2 = L4_2
        L8_2 = 12844
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = GetEntityBonePosition_2
        L8_2 = L4_2
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = GetEntityForwardVector
        L9_2 = L4_2
        L8_2 = L8_2(L9_2)
        L9_2 = vadd
        L10_2 = L7_2
        L11_2 = vmul
        L12_2 = L8_2
        L13_2 = 0.5
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L11_2(L12_2, L13_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L10_2 = GetGameplayCamRot
        L11_2 = 2
        L10_2 = L10_2(L11_2)
        L11_2 = L10_2[1]
        L12_2 = vector3
        L13_2 = L11_2
        L14_2 = 0.0
        L15_2 = GetEntityHeading
        L16_2 = L4_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L15_2(L16_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L13_2 = vector3
        L14_2 = L11_2
        L15_2 = 0.0
        L16_2 = GetEntityHeading
        L17_2 = L4_2
        L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L16_2(L17_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L10_2 = L13_2
        L13_2 = vnorm
        L14_2 = rotationToDirection
        L15_2 = L10_2
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L14_2(L15_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L14_2 = GetHashKey
        L15_2 = "striano_arrow2"
        L14_2 = L14_2(L15_2)
        if L5_2 == L14_2 then
          L14_2 = vector3
          L15_2 = L9_2.x
          L16_2 = L9_2.y
          L17_2 = L9_2.z
          L17_2 = L17_2 - 0.5
          L14_2 = L14_2(L15_2, L16_2, L17_2)
          L9_2 = L14_2
        end
        L14_2 = L10_1
        L15_2 = L5_2
        L16_2 = L9_2
        L17_2 = L12_2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        if not L14_2 then
          return
        end
        L15_2 = SetEntityNoCollisionEntity
        L16_2 = L14_2
        L17_2 = L4_2
        L18_2 = true
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = RequestCollisionAtCoord
        L16_2 = L9_2.x
        L17_2 = L9_2.y
        L18_2 = L9_2.z
        L15_2(L16_2, L17_2, L18_2)
        L15_2 = 20.0 + A0_2
        L16_2 = SetEntityVelocity
        L17_2 = L14_2
        L18_2 = L13_2.x
        L18_2 = L18_2 * L15_2
        L19_2 = L13_2.y
        L19_2 = L19_2 * L15_2
        L20_2 = L13_2.z
        L20_2 = L20_2 * L15_2
        L16_2(L17_2, L18_2, L19_2, L20_2)
        L16_2 = coltelli
        L17_2 = coltelli
        L17_2 = #L17_2
        L17_2 = L17_2 + 1
        L18_2 = {}
        L18_2.item = A3_2
        L18_2.obj = L14_2
        L16_2[L17_2] = L18_2
        L16_2 = CheckHit
        L17_2 = L14_2
        L18_2 = A1_2
        L19_2 = A2_2
        L16_2(L17_2, L18_2, L19_2)
        L16_2 = SetEntityAlpha
        L17_2 = L14_2
        L18_2 = 240
        L16_2(L17_2, L18_2)
        L16_2 = SetModelAsNoLongerNeeded
        L17_2 = L5_2
        L16_2(L17_2)
        L16_2 = CheckLancioColtelli
        L16_2()
        L16_2 = "bow_and_arrow_shoot_01"
        L17_2 = "bow_and_arrow_shoot_01_clip"
        L18_2 = GetGameplayCamRot
        L19_2 = 2
        L18_2 = L18_2(L19_2)
        L18_2 = L18_2.x
        if L18_2 >= 20.0 then
          L19_2 = "bow_and_arrow_shoot_up"
          L17_2 = "bow_and_arrow_shoot_up_clip"
          L16_2 = L19_2
        elseif L18_2 < -20.0 then
          L19_2 = "bow_and_arrow_shoot_down"
          L17_2 = "bow_and_arrow_shoot_down_clip"
          L16_2 = L19_2
        end
        L19_2 = arrowSound
        L20_2 = GetEntityCoords
        L21_2 = L4_2
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2 = L20_2(L21_2)
        L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L19_2 = InThrowWeap
        L19_2 = L19_2()
        if L19_2 then
          L19_2 = "original_spear_attack_8"
          L17_2 = "original_spear_attack_8_clip"
          L16_2 = L19_2
          L19_2 = faiAnim
          L20_2 = L16_2
          L21_2 = L17_2
          L22_2 = 1100
          L23_2 = 1
          L19_2(L20_2, L21_2, L22_2, L23_2)
          L19_2 = Wait
          L20_2 = 150
          L19_2(L20_2)
        else
          L19_2 = faiAnim
          L20_2 = L16_2
          L21_2 = L17_2
          L22_2 = 750
          L23_2 = 49
          L19_2(L20_2, L21_2, L22_2, L23_2)
          L19_2 = Wait
          L20_2 = 350
          L19_2(L20_2)
        end
        L19_2 = onRemoveArrow
        L19_2()
        L19_2 = ArrowList
        L20_2 = myArrow
        L19_2 = L19_2[L20_2]
        L19_2 = L19_2.m
        L20_2 = RequestModelStriano
        L21_2 = L19_2
        L20_2(L21_2)
        L20_2 = GetEntityCoords
        L21_2 = L4_2
        L20_2 = L20_2(L21_2)
        L21_2 = DoesEntityExist
        L22_2 = lastAROV
        L21_2 = L21_2(L22_2)
        if L21_2 then
          L21_2 = delCaster
          L21_2()
        end
        while true do
          L21_2 = lastAROV
          if not L21_2 then
            break
          end
          L21_2 = DoesEntityExist
          L22_2 = lastAROV
          L21_2 = L21_2(L22_2)
          if not L21_2 then
            break
          end
          L21_2 = SetEntityAsMissionEntity
          L22_2 = lastAROV
          L21_2(L22_2)
          L21_2 = DeleteEntity
          L22_2 = lastAROV
          L21_2(L22_2)
          L21_2 = Wait
          L22_2 = 250
          L21_2(L22_2)
        end
        L21_2 = CreateObjectNoOffset
        L22_2 = GetHashKey
        L23_2 = L19_2
        L22_2 = L22_2(L23_2)
        L23_2 = L20_2.x
        L24_2 = L20_2.y
        L25_2 = L20_2.z
        L25_2 = L25_2 - 1.0
        L26_2 = true
        L27_2 = true
        L28_2 = false
        L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
        lastAROV = L21_2
        L21_2 = SetEntityCollision
        L22_2 = lastAROV
        L23_2 = false
        L24_2 = false
        L21_2(L22_2, L23_2, L24_2)
        while true do
          L21_2 = DoesEntityExist
          L22_2 = lastAROV
          L21_2 = L21_2(L22_2)
          if L21_2 then
            break
          end
          L21_2 = Wait
          L22_2 = 0
          L21_2(L22_2)
        end
        L21_2 = MakeSwordNET
        L22_2 = lastAROV
        L21_2(L22_2)
        L21_2 = ArrowList
        L22_2 = myArrow
        L21_2 = L21_2[L22_2]
        L21_2 = L21_2.handpos
        L22_2 = AttachEntityToEntity
        L23_2 = lastAROV
        L24_2 = L4_2
        L25_2 = GetPedBoneIndex
        L26_2 = L4_2
        L27_2 = 57005
        L25_2 = L25_2(L26_2, L27_2)
        L26_2 = L21_2[1]
        L27_2 = L21_2[2]
        L28_2 = L21_2[3]
        L29_2 = L21_2[4]
        L30_2 = L21_2[5]
        L31_2 = L21_2[6]
        L32_2 = true
        L33_2 = true
        L34_2 = false
        L35_2 = true
        L36_2 = 1
        L37_2 = true
        L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
        L22_2 = SetModelAsNoLongerNeeded
        L23_2 = L19_2
        L22_2(L23_2)
        L22_2 = Wait
        L23_2 = 25
        L22_2(L23_2)
        L22_2 = ResetStrafe
        L23_2 = L4_2
        L22_2(L23_2)
        L22_2 = lastAROV
        if nil ~= L22_2 then
          L22_2 = DoesEntityExist
          L23_2 = lastAROV
          L22_2 = L22_2(L23_2)
          if L22_2 then
            L22_2 = ArrowFX
            L23_2 = lastAROV
            L22_2(L23_2)
            L22_2 = Wait
            L23_2 = 25
            L22_2(L23_2)
            L22_2 = delCaster
            L22_2()
            L22_2 = IsEntityAttached
            L23_2 = L4_2
            L22_2 = L22_2(L23_2)
            if not L22_2 then
              L22_2 = ClearPedTasks
              L23_2 = L4_2
              L22_2(L23_2)
            else
              L22_2 = ecc
              L22_2()
            end
            L22_2 = delBowCam
            L22_2()
        end
        else
          L22_2 = delCaster
          L22_2()
          L22_2 = IsEntityAttached
          L23_2 = L4_2
          L22_2 = L22_2(L23_2)
          if not L22_2 then
            L22_2 = ClearPedTasks
            L23_2 = L4_2
            L22_2(L23_2)
          else
            L22_2 = ecc
            L22_2()
          end
          L22_2 = delBowCam
          L22_2()
        end
      end
    end
  end
end
ArrowThrow = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = 31
  L5_2 = pcall
  L6_2 = StartShapeTestCapsule
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = A1_2.x
  L11_2 = A1_2.y
  L12_2 = A1_2.z
  L13_2 = A2_2
  L14_2 = L4_2
  L15_2 = A3_2 or L15_2
  if not A3_2 then
    L15_2 = 0
  end
  L16_2 = 0
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L5_2 and L6_2 then
    L7_2 = GetShapeTestResult
    L8_2 = L6_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    if 1 == L8_2 then
      if 0 ~= L11_2 then
        L12_2 = A3_2 or L12_2
        if not A3_2 then
          L12_2 = 0
        end
        if L11_2 == L12_2 then
          goto lbl_38
        end
      end
      L12_2 = true
      L13_2 = L9_2
      L14_2 = L10_2
      L15_2 = L11_2
      return L12_2, L13_2, L14_2, L15_2
    end
  end
  ::lbl_38::
  L7_2 = StartShapeTestRay
  L8_2 = A0_2.x
  L9_2 = A0_2.y
  L10_2 = A0_2.z
  L11_2 = A1_2.x
  L12_2 = A1_2.y
  L13_2 = A1_2.z
  L14_2 = L4_2
  L15_2 = A3_2 or L15_2
  if not A3_2 then
    L15_2 = 0
  end
  L16_2 = 7
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetShapeTestResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  if 1 == L9_2 then
    if 0 ~= L12_2 then
      L13_2 = A3_2 or L13_2
      if not A3_2 then
        L13_2 = 0
      end
      if L12_2 == L13_2 then
        goto lbl_68
      end
    end
    L13_2 = true
    L14_2 = L10_2
    L15_2 = L11_2
    L16_2 = L12_2
    return L13_2, L14_2, L15_2, L16_2
  end
  ::lbl_68::
  L13_2 = false
  L14_2 = A0_2
  L15_2 = vector3
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 1.0
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = 0
  return L13_2, L14_2, L15_2, L16_2
end
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = print
      L1_3 = "Arrow doesn't exist!"
      L0_3(L1_3)
      return
    end
    L0_3 = ArrowFX
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L2_3 = Wait
    L3_3 = 0
    L2_3(L3_3)
    L2_3 = RequestCollisionAtCoord
    L3_3 = GetEntityCoords
    L4_3 = A0_2
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L3_3(L4_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
    while true do
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        return
      end
      L2_3 = GetEntityCoords
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L3_3 = GetEntityVelocity
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      L4_3 = vlen
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = DrawMarker
      L6_3 = 28
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L10_3 = 0.0
      L11_3 = 0.0
      L12_3 = 0.0
      L13_3 = 0.0
      L14_3 = 0.0
      L15_3 = 0.0
      L16_3 = 0.11
      L17_3 = 0.11
      L18_3 = 0.11
      L19_3 = 255
      L20_3 = 255
      L21_3 = 255
      L22_3 = 100
      L23_3 = false
      L24_3 = true
      L25_3 = 2
      L26_3 = nil
      L27_3 = nil
      L28_3 = false
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
      L5_3 = -1
      L6_3 = 9999.0
      L7_3 = GetGamePool
      L8_3 = "CPed"
      L7_3 = L7_3(L8_3)
      L8_3 = ipairs
      L9_3 = L7_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
        if L13_3 ~= L0_3 then
          L14_3 = DoesEntityExist
          L15_3 = L13_3
          L14_3 = L14_3(L15_3)
          if L14_3 then
            L14_3 = IsPedDeadOrDying
            L15_3 = L13_3
            L16_3 = true
            L14_3 = L14_3(L15_3, L16_3)
            if not L14_3 then
              L14_3 = vlen
              L15_3 = vsub
              L16_3 = GetEntityCoords
              L17_3 = L13_3
              L16_3 = L16_3(L17_3)
              L17_3 = L2_3
              L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L15_3(L16_3, L17_3)
              L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              if L6_3 > L14_3 then
                L6_3 = L14_3
                L5_3 = L13_3
              end
            end
          end
        end
      end
      if -1 ~= L5_3 then
        L8_3 = 1.3
        if L6_3 <= L8_3 then
          L8_3 = PlayerPedId
          L8_3 = L8_3()
          if L5_3 ~= L8_3 then
            L8_3 = L5_3
            L9_3 = IsPedFatallyInjured
            L10_3 = L8_3
            L9_3 = L9_3(L10_3)
            if not L9_3 then
              L9_3 = GetEntityAlpha
              L10_3 = L8_3
              L9_3 = L9_3(L10_3)
              if 255 == L9_3 then
                L9_3 = IsPedHuman
                L10_3 = L8_3
                L9_3 = L9_3(L10_3)
                if L9_3 then
                  L9_3 = ApplyDamageToPedLegacy
                  L10_3 = L8_3
                  L11_3 = arrowDamage
                  L9_3(L10_3, L11_3)
                else
                  L9_3 = ApplyDamageToPedLegacy
                  L10_3 = L8_3
                  L11_3 = arrowDamage
                  L11_3 = L11_3 * 3
                  L9_3(L10_3, L11_3)
                end
                L9_3 = SetPedCanRagdoll
                L10_3 = ped
                L11_3 = true
                L9_3(L10_3, L11_3)
                L9_3 = SetPedToRagdoll
                L10_3 = L8_3
                L11_3 = 550
                L12_3 = 550
                L13_3 = 0
                L14_3 = 0
                L15_3 = 0
                L16_3 = 0
                L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                L9_3 = CreateThread
                function L10_3()
                  local L0_4, L1_4, L2_4
                  L0_4 = Wait
                  L1_4 = 1000
                  L0_4(L1_4)
                  L0_4 = SetPedCanRagdoll
                  L1_4 = ped
                  L2_4 = false
                  L0_4(L1_4, L2_4)
                end
                L9_3(L10_3)
                L9_3 = ImASkeleton
                L10_3 = L8_3
                L9_3 = L9_3(L10_3)
                if not L9_3 then
                  L9_3 = PlayPain
                  L10_3 = L8_3
                  L11_3 = 0
                  L12_3 = 0.0
                  L13_3 = false
                  L9_3(L10_3, L11_3, L12_3, L13_3)
                  L9_3 = Wait
                  L10_3 = 0
                  L9_3(L10_3)
                  L9_3 = PlayPain
                  L10_3 = L8_3
                  L11_3 = 33
                  L12_3 = 0.0
                  L13_3 = false
                  L9_3(L10_3, L11_3, L12_3, L13_3)
                  L9_3 = BloodActive
                  if L9_3 then
                    L9_3 = PlayEffect
                    L10_3 = "core"
                    L11_3 = "blood_stab"
                    L12_3 = GetEntityCoords
                    L13_3 = L8_3
                    L12_3 = L12_3(L13_3)
                    L13_3 = 1.6
                    L9_3(L10_3, L11_3, L12_3, L13_3)
                    L9_3 = PlayEffect
                    L10_3 = "scr_solomon3"
                    L11_3 = "scr_trev4_747_blood_splash"
                    L12_3 = GetEntityCoords
                    L13_3 = L8_3
                    L12_3 = L12_3(L13_3)
                    L13_3 = 1.1
                    L9_3(L10_3, L11_3, L12_3, L13_3)
                    L9_3 = PlayEffect
                    L10_3 = "scr_solomon3"
                    L11_3 = "scr_trev4_747_blood_impact"
                    L12_3 = GetEntityCoords
                    L13_3 = L8_3
                    L12_3 = L12_3(L13_3)
                    L13_3 = 0.2
                    L9_3(L10_3, L11_3, L12_3, L13_3)
                  end
                end
                L9_3 = genSwordHit
                L10_3 = A0_2
                L9_3(L10_3)
                L9_3 = SetEntityAsMissionEntity
                L10_3 = A0_2
                L9_3(L10_3)
                L9_3 = DeleteEntity
                L10_3 = A0_2
                L9_3(L10_3)
              end
            end
          end
        end
      end
      L8_3 = DoesEntityExist
      L9_3 = A0_2
      L8_3 = L8_3(L9_3)
      if L8_3 then
        L8_3 = math
        L8_3 = L8_3.max
        L9_3 = GetFrameTime
        L9_3 = L9_3()
        L10_3 = 0.016
        L8_3 = L8_3(L9_3, L10_3)
        L9_3 = L4_3
        if L9_3 > 0.0 then
          L10_3 = vmul
          L11_3 = L3_3
          L12_3 = 1.0
          L12_3 = L12_3 / L9_3
          L10_3 = L10_3(L11_3, L12_3)
          if L10_3 then
            goto lbl_236
          end
        end
        L10_3 = vec3
        L11_3 = 0
        L12_3 = 0
        L13_3 = 0
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        ::lbl_236::
        L11_3 = 0.08
        L12_3 = vadd
        L13_3 = L2_3
        L14_3 = vmul
        L15_3 = L10_3
        L16_3 = L11_3
        L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L14_3(L15_3, L16_3)
        L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
        L13_3 = math
        L13_3 = L13_3.min
        L14_3 = math
        L14_3 = L14_3.max
        L15_3 = L9_3 * L8_3
        L15_3 = L15_3 * 2.0
        L16_3 = 0.25
        L14_3 = L14_3(L15_3, L16_3)
        L15_3 = 0.8
        L13_3 = L13_3(L14_3, L15_3)
        L14_3 = vadd
        L15_3 = L12_3
        L16_3 = vmul
        L17_3 = L10_3
        L18_3 = L13_3
        L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L16_3(L17_3, L18_3)
        L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
        L15_3 = 0.1
        L16_3 = L11_1
        L17_3 = L12_3
        L18_3 = L14_3
        L19_3 = L15_3
        L20_3 = A0_2
        L16_3, L17_3, L18_3, L19_3 = L16_3(L17_3, L18_3, L19_3, L20_3)
        L20_3 = GetGameTimer
        L20_3 = L20_3()
        L20_3 = L20_3 - L1_3
        L21_3 = L16_3 or L21_3
        if L16_3 then
          L21_3 = 0 == L19_3
        end
        L22_3 = L21_3 or L22_3
        L22_3 = L21_3 or L22_3
        if (not (L20_3 < 100) or not L21_3) and not L21_3 then
          L22_3 = HasEntityCollidedWithAnything
          L23_3 = A0_2
          L22_3 = L22_3(L23_3)
        end
        if L22_3 then
          L23_3 = GetEntityCoords
          L24_3 = A0_2
          L23_3 = L23_3(L24_3)
          L24_3 = DoesEntityExist
          L25_3 = A0_2
          L24_3 = L24_3(L25_3)
          if L24_3 then
            L24_3 = NetworkHasControlOfEntity
            L25_3 = A0_2
            L24_3 = L24_3(L25_3)
            if L24_3 then
              if L21_3 and L17_3 then
                if L18_3 then
                  L24_3 = L18_3.x
                  if 0.0 == L24_3 then
                    L24_3 = L18_3.y
                    if 0.0 == L24_3 then
                      L24_3 = L18_3.z
                    end
                  end
                  if 0.0 ~= L24_3 and L18_3 then
                    goto lbl_327
                    L24_3 = L18_3 or L24_3
                  end
                end
                L24_3 = L10_3
                ::lbl_327::
                L25_3 = vadd
                L26_3 = L17_3
                L27_3 = vmul
                L28_3 = L24_3
                L29_3 = -0.015
                L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3 = L27_3(L28_3, L29_3)
                L25_3 = L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
                L17_3 = L25_3
                L25_3 = SetEntityCoordsNoOffset
                L26_3 = A0_2
                L27_3 = L17_3.x
                L28_3 = L17_3.y
                L29_3 = L17_3.z
                L30_3 = false
                L31_3 = false
                L32_3 = false
                L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
              end
              L24_3 = FreezeEntityPosition
              L25_3 = A0_2
              L26_3 = true
              L24_3(L25_3, L26_3)
              L24_3 = SetEntityCollision
              L25_3 = A0_2
              L26_3 = false
              L27_3 = false
              L24_3(L25_3, L26_3, L27_3)
              L24_3 = SetEntityVelocity
              L25_3 = A0_2
              L26_3 = 0.0
              L27_3 = 0.0
              L28_3 = 0.0
              L24_3(L25_3, L26_3, L27_3, L28_3)
              L24_3 = ArrowList
              L25_3 = myArrow
              L24_3 = L24_3[L25_3]
              L24_3 = L24_3.thunder
              if nil ~= L24_3 then
                L24_3 = table
                L24_3 = L24_3.unpack
                L25_3 = L23_3
                L24_3, L25_3, L26_3 = L24_3(L25_3)
                L27_3 = Thunder
                L28_3 = L24_3
                L29_3 = L25_3
                L30_3 = L26_3
                L27_3(L28_3, L29_3, L30_3)
              end
              L24_3 = TriggerServerEvent
              L25_3 = "ApplyDamageNearly"
              L26_3 = L23_3.x
              L27_3 = L23_3.y
              L28_3 = L23_3.z
              L29_3 = A1_2
              L30_3 = A2_2
              if not L30_3 then
                L30_3 = 2.5
              end
              L31_3 = GetPlayerServerId
              L32_3 = PlayerId
              L32_3, L33_3, L34_3 = L32_3()
              L31_3, L32_3, L33_3, L34_3 = L31_3(L32_3, L33_3, L34_3)
              L24_3(L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L24_3 = ArrowList
              L25_3 = myArrow
              L24_3 = L24_3[L25_3]
              L24_3 = L24_3.hitEffects
              L24_3 = #L24_3
              if L24_3 > 0 then
                L24_3 = 1
                L25_3 = ArrowList
                L26_3 = myArrow
                L25_3 = L25_3[L26_3]
                L25_3 = L25_3.hitEffects
                L25_3 = #L25_3
                L26_3 = 1
                for L27_3 = L24_3, L25_3, L26_3 do
                  L28_3 = ArrowList
                  L29_3 = myArrow
                  L28_3 = L28_3[L29_3]
                  L28_3 = L28_3.hitEffects
                  L28_3 = L28_3[L27_3]
                  L29_3 = PlayEffect
                  L30_3 = L28_3.a
                  L31_3 = L28_3.b
                  L32_3 = L23_3
                  L33_3 = L28_3.c
                  L34_3 = L28_3.d
                  L29_3(L30_3, L31_3, L32_3, L33_3, L34_3)
                end
              end
              L24_3 = math
              L24_3 = L24_3.random
              L24_3 = L24_3()
              L24_3 = L24_3 * 2.0
              L24_3 = 1.0 + L24_3
              L25_3 = PlayEffect
              L26_3 = "cut_lester1b"
              L27_3 = "cs_lest1_phone_exp"
              L28_3 = L23_3
              L29_3 = L24_3
              L30_3 = 0.9
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3)
              L25_3 = hitMonsters
              L26_3 = vector3
              L27_3 = L23_3.x
              L28_3 = L23_3.y
              L29_3 = L23_3.z
              L26_3 = L26_3(L27_3, L28_3, L29_3)
              L27_3 = A1_2
              L28_3 = A0_2
              L25_3(L26_3, L27_3, L28_3)
              L25_3 = hitTargetCustom
              L26_3 = vector3
              L27_3 = L23_3.x
              L28_3 = L23_3.y
              L29_3 = L23_3.z
              L26_3 = L26_3(L27_3, L28_3, L29_3)
              L27_3 = "prop_target_frag_board"
              L28_3 = A0_2
              L25_3(L26_3, L27_3, L28_3)
            end
          end
          L24_3 = PlaySoundFrontend
          L25_3 = -1
          L26_3 = "LIMIT"
          L27_3 = "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS"
          L28_3 = 1
          L24_3(L25_3, L26_3, L27_3, L28_3)
          return
        end
      end
      L8_3 = Wait
      L9_3 = 0
      L8_3(L9_3)
    end
  end
  L3_2(L4_2)
end
CheckHit = L12_1
L12_1 = RaccogliColtelli
if not L12_1 then
  L12_1 = false
end
RaccogliColtelli = L12_1
function L12_1()
  local L0_2, L1_2
  L0_2 = RaccogliColtelli
  if not L0_2 then
    RaccogliColtelli = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = coltelli
        L0_3 = #L0_3
        if 0 == L0_3 then
          RaccogliColtelli = false
          return
        else
          L0_3 = false
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = GetEntityCoords
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = 1
          L4_3 = coltelli
          L4_3 = #L4_3
          L5_3 = 1
          for L6_3 = L3_3, L4_3, L5_3 do
            L7_3 = coltelli
            L7_3 = L7_3[L6_3]
            L7_3 = L7_3.obj
            if L7_3 then
              L8_3 = DoesEntityExist
              L9_3 = L7_3
              L8_3 = L8_3(L9_3)
              if L8_3 then
                goto lbl_38
              end
            end
            L8_3 = table
            L8_3 = L8_3.remove
            L9_3 = coltelli
            L10_3 = L6_3
            L8_3(L9_3, L10_3)
            do break end
            ::lbl_38::
            L8_3 = GetEntityCoords
            L9_3 = L7_3
            L8_3 = L8_3(L9_3)
            L9_3 = vlen
            L10_3 = vsub
            L11_3 = L2_3
            L12_3 = L8_3
            L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L10_3(L11_3, L12_3)
            L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
            L10_3 = 150.0
            if L9_3 > L10_3 then
              L10_3 = GetEntitySpeed
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              L11_3 = 0.01
              if L10_3 <= L11_3 then
                L10_3 = DoesEntityExist
                L11_3 = L7_3
                L10_3 = L10_3(L11_3)
                if L10_3 then
                  L10_3 = NetworkHasControlOfEntity
                  L11_3 = L7_3
                  L10_3 = L10_3(L11_3)
                  if L10_3 then
                    L10_3 = SetEntityAsMissionEntity
                    L11_3 = L7_3
                    L12_3 = true
                    L13_3 = true
                    L10_3(L11_3, L12_3, L13_3)
                    L10_3 = DeleteEntity
                    L11_3 = L7_3
                    L10_3(L11_3)
                  end
                end
                L10_3 = table
                L10_3 = L10_3.remove
                L11_3 = coltelli
                L12_3 = L6_3
                L10_3(L11_3, L12_3)
                break
              end
            end
            L10_3 = 9.5
            if L9_3 < L10_3 then
              L10_3 = IsEntityPositionFrozen
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              if L10_3 then
                L0_3 = true
                L10_3 = 3.5
                if L9_3 < L10_3 then
                  L10_3 = DoesEntityExist
                  L11_3 = L7_3
                  L10_3 = L10_3(L11_3)
                  if L10_3 then
                    L10_3 = CombatActive
                    if not L10_3 then
                      L10_3 = DrawMarker
                      L11_3 = 28
                      L12_3 = L8_3.x
                      L13_3 = L8_3.y
                      L14_3 = L8_3.z
                      L15_3 = 0.0
                      L16_3 = 0.0
                      L17_3 = 0.0
                      L18_3 = 0.0
                      L19_3 = 0.0
                      L20_3 = 0.0
                      L21_3 = 0.09
                      L22_3 = 0.09
                      L23_3 = 0.09
                      L24_3 = 255
                      L25_3 = 255
                      L26_3 = 255
                      L27_3 = 100
                      L28_3 = false
                      L29_3 = true
                      L30_3 = 2
                      L31_3 = nil
                      L32_3 = nil
                      L33_3 = false
                      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                      L10_3 = DrawText3DCombat
                      L11_3 = L8_3.x
                      L12_3 = L8_3.y
                      L13_3 = L8_3.z
                      L14_3 = "~h~H"
                      L10_3(L11_3, L12_3, L13_3, L14_3)
                      L10_3 = IsControlJustPressed
                      L11_3 = 0
                      L12_3 = 74
                      L10_3 = L10_3(L11_3, L12_3)
                      if not L10_3 then
                        L10_3 = IsDisabledControlJustPressed
                        L11_3 = 0
                        L12_3 = 74
                        L10_3 = L10_3(L11_3, L12_3)
                        if not L10_3 then
                          goto lbl_188
                        end
                      end
                      L10_3 = faiAnim
                      L11_3 = "anim@am_hold_up@female"
                      L12_3 = "shoplift_high"
                      L13_3 = 750
                      L14_3 = 49
                      L10_3(L11_3, L12_3, L13_3, L14_3)
                      L10_3 = Wait
                      L11_3 = 500
                      L10_3(L11_3)
                      L10_3 = DoesEntityExist
                      L11_3 = L7_3
                      L10_3 = L10_3(L11_3)
                      if L10_3 then
                        L10_3 = NetworkHasControlOfEntity
                        L11_3 = L7_3
                        L10_3 = L10_3(L11_3)
                        if L10_3 then
                          L10_3 = SetEntityAsMissionEntity
                          L11_3 = L7_3
                          L12_3 = true
                          L13_3 = true
                          L10_3(L11_3, L12_3, L13_3)
                          L10_3 = DeleteEntity
                          L11_3 = L7_3
                          L10_3(L11_3)
                          L10_3 = GetBackThrowItem
                          L11_3 = coltelli
                          L11_3 = L11_3[L6_3]
                          L11_3 = L11_3.item
                          L10_3(L11_3)
                        end
                      end
                      L10_3 = table
                      L10_3 = L10_3.remove
                      L11_3 = coltelli
                      L12_3 = L6_3
                      L10_3(L11_3, L12_3)
                      L10_3 = PlaySoundFrontend
                      L11_3 = -1
                      L12_3 = "Falling_Crates"
                      L13_3 = "EXILE_1"
                      L14_3 = 1
                      L10_3(L11_3, L12_3, L13_3, L14_3)
                      L10_3 = ecc
                      L10_3()
                      break
                    end
                  end
                end
              end
            end
            ::lbl_188::
          end
          if not L0_3 then
            L3_3 = Wait
            L4_3 = 1500
            L3_3(L4_3)
          end
        end
      end
    end
    L0_2(L1_2)
  end
end
CheckLancioColtelli = L12_1
L12_1 = 0
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = camBow
  if nil == L8_2 and nil == A1_2 then
    L8_2 = startBowCam
    L9_2 = A0_2
    L8_2(L9_2)
  end
  L8_2 = GetGameplayCamCoord
  L8_2 = L8_2()
  L9_2 = GetGameplayCamRot
  L10_2 = 2
  L9_2 = L9_2(L10_2)
  L10_2 = rotationToDirection
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = table
  L11_2 = L11_2.unpack
  L12_2 = GetPedBoneCoords
  L13_2 = L7_2
  L14_2 = 31086
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L12_2(L13_2, L14_2)
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
  L14_2 = vector3
  L15_2 = L11_2
  L16_2 = L12_2
  L17_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = 900.0
  L16_2 = vector3
  L17_2 = L14_2.x
  L18_2 = L10_2.x
  L18_2 = L18_2 * L15_2
  L17_2 = L17_2 + L18_2
  L18_2 = L14_2.y
  L19_2 = L10_2.y
  L19_2 = L19_2 * L15_2
  L18_2 = L18_2 + L19_2
  L19_2 = L14_2.z
  L20_2 = L10_2.z
  L20_2 = L20_2 * L15_2
  L19_2 = L19_2 + L20_2
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = 511
  L18_2 = StartShapeTestRay
  L19_2 = L14_2.x
  L20_2 = L14_2.y
  L21_2 = L14_2.z
  L22_2 = L16_2.x
  L23_2 = L16_2.y
  L24_2 = L16_2.z
  L25_2 = L17_2
  L26_2 = L7_2
  L27_2 = 7
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L19_2 = GetShapeTestResult
  L20_2 = L18_2
  L19_2, L20_2, L21_2, L22_2, L23_2 = L19_2(L20_2)
  L24_2 = L21_2 or L24_2
  if 1 ~= L20_2 or not L21_2 then
    L24_2 = L16_2
  end
  if nil == A2_2 then
    L25_2 = DrawLine
    L26_2 = L14_2.x
    L27_2 = L14_2.y
    L28_2 = L14_2.z
    L29_2 = L24_2.x
    L30_2 = L24_2.y
    L31_2 = L24_2.z
    L32_2 = 255
    L33_2 = 255
    L34_2 = 255
    L35_2 = 255
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
  end
  L25_2 = {}
  L26_2 = 210
  L27_2 = 210
  L28_2 = 210
  L25_2[1] = L26_2
  L25_2[2] = L27_2
  L25_2[3] = L28_2
  L26_2 = arrowForce
  L27_2 = maxRateBow
  if L26_2 >= L27_2 then
    L26_2 = {}
    L27_2 = 210
    L28_2 = 0
    L29_2 = 0
    L26_2[1] = L27_2
    L26_2[2] = L28_2
    L26_2[3] = L29_2
    L25_2 = L26_2
  end
  L26_2 = 0.12
  L27_2 = 28
  L28_2 = 200
  if nil ~= A3_2 then
    L26_2 = A3_2
  end
  if nil ~= A4_2 then
    L27_2 = A4_2
  end
  if nil ~= A5_2 then
    L28_2 = A5_2
  end
  if nil ~= A6_2 then
    L29_2 = L12_1
    L29_2 = L29_2 + 5
    L12_1 = L29_2
    L29_2 = L12_1
    L30_2 = 360
    if L29_2 >= L30_2 then
      L29_2 = 0
      L12_1 = L29_2
    end
  else
    L29_2 = L12_1
    if 0 ~= L29_2 then
      L29_2 = 0
      L12_1 = L29_2
    end
  end
  L29_2 = L24_2 - L14_2
  L29_2 = #L29_2
  L30_2 = L29_2 * 0.09
  L30_2 = 1.0 + L30_2
  if L30_2 < 1.0 then
    L30_2 = 1.0
  end
  L31_2 = 7.5
  if L30_2 > L31_2 then
    L30_2 = 7.5
  end
  L31_2 = L26_2 * L30_2
  L32_2 = DrawMarker
  L33_2 = L27_2
  L34_2 = L24_2.x
  L35_2 = L24_2.y
  L36_2 = L24_2.z
  L37_2 = 0.0
  L38_2 = 0.0
  L39_2 = 0.0
  L40_2 = 0.0
  L41_2 = L12_1
  L41_2 = L41_2 + 0.0
  L42_2 = 0.0
  L43_2 = L31_2
  L44_2 = L31_2
  L45_2 = L31_2
  L46_2 = L25_2[1]
  L47_2 = L25_2[2]
  L48_2 = L25_2[3]
  L49_2 = L28_2
  L50_2 = false
  L51_2 = true
  L52_2 = 2
  L53_2 = nil
  L54_2 = nil
  L55_2 = false
  L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
  L32_2 = arrowForce
  if L32_2 > 1 then
    L32_2 = IsEntityAttached
    L33_2 = L7_2
    L32_2 = L32_2(L33_2)
    if not L32_2 then
      L32_2 = table
      L32_2 = L32_2.unpack
      L33_2 = GetPedBoneCoords
      L34_2 = L7_2
      L35_2 = 57005
      L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L33_2(L34_2, L35_2)
      L32_2, L33_2, L34_2 = L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
      L35_2 = arrowForce
      L36_2 = maxRateBow
      if L35_2 <= L36_2 then
        L35_2 = BarraHP
        L36_2 = vector3
        L37_2 = L32_2
        L38_2 = L33_2
        L39_2 = L34_2
        L36_2 = L36_2(L37_2, L38_2, L39_2)
        L37_2 = 2.0
        L38_2 = math
        L38_2 = L38_2.floor
        L39_2 = arrowForce
        L38_2 = L38_2(L39_2)
        L39_2 = 100
        L40_2 = nil
        L41_2 = 210
        L42_2 = 210
        L43_2 = 210
        L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
      else
        L35_2 = BarraHP
        L36_2 = vector3
        L37_2 = L32_2
        L38_2 = L33_2
        L39_2 = L34_2
        L36_2 = L36_2(L37_2, L38_2, L39_2)
        L37_2 = 2.0
        L38_2 = math
        L38_2 = L38_2.floor
        L39_2 = arrowForce
        L38_2 = L38_2(L39_2)
        L39_2 = 100
        L40_2 = nil
        L41_2 = 210
        L42_2 = 0
        L43_2 = 0
        L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
      end
    end
  end
  L32_2 = 1 == L20_2
  L33_2 = L24_2
  L34_2 = L23_2
  L35_2 = L22_2
  return L32_2, L33_2, L34_2, L35_2
end
DrawAimRay = L13_1
camBow = nil
function L13_1()
  local L0_2, L1_2
  L0_2 = lastAROV
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = lastAROV
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = lastAROV
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = lastAROV
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = lastAROV
      L0_2(L1_2)
      L0_2 = delBowCam
      L0_2()
      lastAROV = nil
    end
  end
end
delCaster = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = "aura_"
  L1_2 = tostring
  L2_2 = PlayerId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L0_2 = L0_2 .. L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "ptfx:stopFx"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = false
  L4_2 = 0
  L5_2 = true
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = SetCamActive
  L2_2 = camBow
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = DestroyCam
  L2_2 = camBow
  L3_2 = false
  L1_2(L2_2, L3_2)
  camBow = nil
  L1_2 = ClearFocus
  L1_2()
end
delBowCam = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = camBow
  if nil == L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = CreateCam
    L3_2 = "DEFAULT_SCRIPTED_CAMERA"
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    camBow = L2_2
    L2_2 = -1.1
    if nil ~= A0_2 then
      L2_2 = A0_2
    end
    L3_2 = vec3
    L4_2 = 0.55
    L5_2 = L2_2
    L6_2 = 0.6
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = IsEntityAttached
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = vec3
      L5_2 = 0.0
      L6_2 = -2.2
      L7_2 = 2.5
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L4_2
    end
    L4_2 = AttachCamToEntity
    L5_2 = camBow
    L6_2 = L1_2
    L7_2 = L3_2.x
    L8_2 = L3_2.y
    L9_2 = L3_2.z
    L10_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = SetCamFov
    L5_2 = camBow
    L6_2 = GetGameplayCamFov
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = SetCamAffectsAiming
    L5_2 = camBow
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = RenderScriptCams
    L5_2 = true
    L6_2 = true
    L7_2 = 250
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      while true do
        L0_3 = camBow
        if nil == L0_3 then
          break
        end
        L0_3 = GetGameplayCamRot
        L1_3 = 2
        L0_3 = L0_3(L1_3)
        L1_3 = L0_3.x
        L2_3 = -L1_3
        L2_3 = L2_3 / 90.0
        L3_3 = L2_3 * 1.5
        L4_3 = IsEntityAttached
        L5_3 = L1_2
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L3_3 = -1.0
        end
        L4_3 = L3_2.z
        L4_3 = L4_3 + L3_3
        L5_3 = AttachCamToEntity
        L6_3 = camBow
        L7_3 = L1_2
        L8_3 = L3_2.x
        L9_3 = L3_2.y
        L10_3 = L4_3
        L11_3 = true
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L5_3 = SetCamRot
        L6_3 = camBow
        L7_3 = L0_3.x
        L8_3 = L0_3.y
        L9_3 = L0_3.z
        L10_3 = 2
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        L5_3 = Wait
        L6_3 = 0
        L5_3(L6_3)
      end
    end
    L4_2(L5_2)
  end
end
startBowCam = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = castingSpell
  if not L1_2 then
    L1_2 = inLeviosa
    if not L1_2 then
      L1_2 = IsPedRagdoll
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_combat
        L2_2 = L1_2
        L1_2 = L1_2.incombatanim
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = CanCombatCheck
          L1_2 = L1_2()
          if L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = A0_2
            L3_2 = libstrafe
            L4_2 = strafe_fw
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              L1_2 = IsEntityPlayingAnim
              L2_2 = A0_2
              L3_2 = libstrafe
              L4_2 = strafe_bk
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if not L1_2 then
                L1_2 = IsEntityPlayingAnim
                L2_2 = A0_2
                L3_2 = libstrafe
                L4_2 = currentStance
                L5_2 = "bwd_-90_loop"
                L4_2 = L4_2 .. L5_2
                L5_2 = 3
                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                if not L1_2 then
                  L1_2 = IsEntityPlayingAnim
                  L2_2 = A0_2
                  L3_2 = libstrafe
                  L4_2 = currentStance
                  L5_2 = "fwd_90_loop"
                  L4_2 = L4_2 .. L5_2
                  L5_2 = 3
                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                  if not L1_2 then
                    L1_2 = IsEntityPlayingAnim
                    L2_2 = A0_2
                    L3_2 = libstrafe
                    L4_2 = currentStance
                    L5_2 = "bwd_135_loop"
                    L4_2 = L4_2 .. L5_2
                    L5_2 = 3
                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                    if not L1_2 then
                      L1_2 = IsEntityPlayingAnim
                      L2_2 = A0_2
                      L3_2 = libstrafe
                      L4_2 = currentStance
                      L5_2 = "bwd_-135_loop"
                      L4_2 = L4_2 .. L5_2
                      L5_2 = 3
                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                      if not L1_2 then
                        L1_2 = IsEntityPlayingAnim
                        L2_2 = A0_2
                        L3_2 = libstrafe
                        L4_2 = currentStance
                        L5_2 = "fwd_45_loop"
                        L4_2 = L4_2 .. L5_2
                        L5_2 = 3
                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                        if not L1_2 then
                          L1_2 = IsEntityPlayingAnim
                          L2_2 = A0_2
                          L3_2 = libstrafe
                          L4_2 = currentStance
                          L5_2 = "fwd_-45_loop"
                          L4_2 = L4_2 .. L5_2
                          L5_2 = 3
                          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                          if not L1_2 then
                            L1_2 = IsEntityPlayingAnim
                            L2_2 = A0_2
                            L3_2 = "move_strafe@grenade"
                            L4_2 = "walk_fwd_0_loop"
                            L5_2 = 3
                            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                            if not L1_2 then
                              L1_2 = IsEntityPlayingAnim
                              L2_2 = A0_2
                              L3_2 = "move_strafe@grenade"
                              L4_2 = "run_fwd_0_loop"
                              L5_2 = 3
                              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                              if not L1_2 then
                                L1_2 = IsEntityPlayingAnim
                                L2_2 = A0_2
                                L3_2 = "melee@wfire@beast_werewolf_animset"
                                L4_2 = "wfire_wmg_were_beast_slow_right45_walk_clip"
                                L5_2 = 3
                                L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                if not L1_2 then
                                  L1_2 = IsEntityPlayingAnim
                                  L2_2 = A0_2
                                  L3_2 = "melee@wfire@beast_werewolf_animset"
                                  L4_2 = "wfire_wmg_were_beast_slow_left45_walk_clip"
                                  L5_2 = 3
                                  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                  if not L1_2 then
                                    L1_2 = IsEntityPlayingAnim
                                    L2_2 = A0_2
                                    L3_2 = "melee@wfire@beast_werewolf_animset"
                                    L4_2 = "wfire_wmg_werewolf_beast_forward_walk_clip"
                                    L5_2 = 3
                                    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                    if not L1_2 then
                                      L1_2 = IsEntityPlayingAnim
                                      L2_2 = A0_2
                                      L3_2 = "melee@wfire@beast_werewolf_animset"
                                      L4_2 = "wfire_wmg_were_beast_right_slow_walk_clip"
                                      L5_2 = 3
                                      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                      if not L1_2 then
                                        L1_2 = IsEntityPlayingAnim
                                        L2_2 = A0_2
                                        L3_2 = "melee@wfire@beast_werewolf_animset"
                                        L4_2 = "wfire_wmg_were_beast_slow_left_walk_clip"
                                        L5_2 = 3
                                        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
                                        if not L1_2 then
                                          goto lbl_162
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            L1_2 = ClearPedSecondaryTask
            L2_2 = A0_2
            L1_2(L2_2)
            L1_2 = ClearPedTasks
            L2_2 = A0_2
            L1_2(L2_2)
            L1_2 = ecc
            L1_2()
          end
        end
      end
    end
  end
  ::lbl_162::
end
ResetStrafeImmediately = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = NetworkHasControlOfEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 - L2_2
    L4_2 = A1_2 or L4_2
    if not A1_2 then
      L4_2 = 150
    end
    if not (L3_2 < L4_2) then
      break
    end
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = NetworkHasControlOfEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
  end
  return L3_2
end
L14_1 = {}
function L15_1(A0_2)
  local L1_2, L2_2
  if 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_10::
  L1_2 = NetworkGetNetworkIdFromEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if 0 == A0_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L14_1
  L4_2 = L14_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[A0_2] = L4_2
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = L14_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = L3_2 - L4_2
  if A2_2 > L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L14_1
  L5_2 = L5_2[A0_2]
  L5_2[A1_2] = L3_2
  L5_2 = true
  return L5_2
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = MioNemico
  L3_2 = #L3_2
  L4_2 = tonumber
  L5_2 = A0_2.timing
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 250
  end
  L5_2 = 250
  if L4_2 < L5_2 then
    L4_2 = 250
  end
  L5_2 = A0_2.sword_obj
  if nil == L5_2 then
    L5_2 = A0_2.Id_Arma
    if nil ~= L5_2 then
      L5_2 = A0_2.Id_Arma
      if L5_2 > 0 then
        L5_2 = A0_2.Id_Arma
        L6_2 = GetSwordNameFromId
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = string
        L7_2 = L7_2.find
        L8_2 = L6_2
        L9_2 = "Mantis"
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L5_2 = 1
        end
        L7_2 = nil
        L8_2 = DoesEntityExist
        L9_2 = A1_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = IsPedFatallyInjured
          L9_2 = A1_2
          L8_2 = L8_2(L9_2)
          if not L8_2 and nil ~= L5_2 then
            L8_2 = IsPedDeadOrDying
            L9_2 = A1_2
            L8_2 = L8_2(L9_2)
            if not L8_2 then
              L8_2 = IsPedHuman
              L9_2 = A1_2
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L8_2 = SwordList
                L8_2 = L8_2[L5_2]
                L8_2 = L8_2.m
                L9_2 = RequestModelStriano
                L10_2 = L8_2
                L9_2(L10_2)
                L9_2 = GetEntityCoords
                L10_2 = A1_2
                L9_2 = L9_2(L10_2)
                L10_2 = CreateObjectNoOffset
                L11_2 = GetHashKey
                L12_2 = L8_2
                L11_2 = L11_2(L12_2)
                L12_2 = L9_2.x
                L13_2 = L9_2.y
                L14_2 = L9_2.z
                L14_2 = L14_2 - 1.0
                L15_2 = true
                L16_2 = true
                L17_2 = false
                L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                L7_2 = L10_2
                L10_2 = SetEntityCollision
                L11_2 = L7_2
                L12_2 = false
                L13_2 = false
                L10_2(L11_2, L12_2, L13_2)
                while true do
                  L10_2 = DoesEntityExist
                  L11_2 = L7_2
                  L10_2 = L10_2(L11_2)
                  if L10_2 then
                    break
                  end
                  L10_2 = Wait
                  L11_2 = 0
                  L10_2(L11_2)
                end
                L10_2 = SwordList
                L10_2 = L10_2[L5_2]
                L10_2 = L10_2.att
                L11_2 = table
                L11_2 = L11_2.unpack
                L12_2 = L10_2
                L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2)
                f = L16_2
                e = L15_2
                d = L14_2
                c = L13_2
                b = L12_2
                a = L11_2
                L11_2 = AttachEntityToEntity
                L12_2 = L7_2
                L13_2 = A1_2
                L14_2 = GetPedBoneIndex
                L15_2 = A1_2
                L16_2 = SwordList
                L16_2 = L16_2[L5_2]
                L16_2 = L16_2.bone
                L14_2 = L14_2(L15_2, L16_2)
                L15_2 = a
                L16_2 = b
                L17_2 = c
                L18_2 = d
                L19_2 = e
                L20_2 = f
                L21_2 = true
                L22_2 = true
                L23_2 = false
                L24_2 = true
                L25_2 = 1
                L26_2 = true
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                L11_2 = SetModelAsNoLongerNeeded
                L12_2 = L8_2
                L11_2(L12_2)
                A0_2.sword_obj = L7_2
              end
            end
          end
        end
      end
    end
  end
  L5_2 = Wait
  L6_2 = 25
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = L13_1
      L1_3 = A1_2
      L2_3 = 120
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = Wait
        L1_3 = 250
        L0_3(L1_3)
      else
        L0_3 = getPedHeadCoords
        L1_3 = A1_2
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityHealth
        L2_3 = A1_2
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityMaxHealth
        L3_3 = A1_2
        L2_3 = L2_3(L3_3)
        L3_3 = L1_3 or L3_3
        if not L1_3 then
          L3_3 = 0
        end
        L3_3 = L3_3 - 100
        L4_3 = L2_3 or L4_3
        if not L2_3 then
          L4_3 = 0
        end
        L4_3 = L4_3 - 100
        if not (L2_3 <= 0) then
          L5_3 = 1000
          if not (L2_3 > L5_3) then
            goto lbl_42
          end
        end
        L2_3 = 200
        L4_3 = 100
        ::lbl_42::
        if L4_3 < 1 then
          L4_3 = 1
        end
        if L3_3 < 0 then
          L3_3 = 0
        end
        if L4_3 < L3_3 then
          L3_3 = L4_3
        end
        if L3_3 > 0 then
          L5_3 = BarraHP
          L6_3 = L0_3
          L7_3 = 1.0
          L8_3 = L3_3
          L9_3 = L4_3
          L10_3 = true
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = 25
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = L13_1
      L1_3 = A1_2
      L2_3 = 120
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = Wait
        L1_3 = 250
        L0_3(L1_3)
      else
        L0_3 = A1_2
        if nil ~= L0_3 then
          L0_3 = inFinisher
          if not L0_3 then
            L0_3 = A1_2
            if L0_3 then
              L0_3 = DoesEntityExist
              L1_3 = A1_2
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = GetEntityHealth
                L1_3 = A1_2
                L0_3 = L0_3(L1_3)
                if L0_3 > 0 then
                  L0_3 = GetEntityCoords
                  L1_3 = PlayerPedId
                  L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
                  L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                  L1_3 = GetEntityCoords
                  L2_3 = A1_2
                  L1_3 = L1_3(L2_3)
                  L0_3 = L0_3 - L1_3
                  L0_3 = #L0_3
                  L1_3 = 300.0
                  if L0_3 < L1_3 then
                    L0_3 = A0_2.checktimer
                    if 0 == L0_3 then
                      L0_3 = GetGameTimer
                      L0_3 = L0_3()
                      A0_2.checktimer = L0_3
                    else
                      L0_3 = GetGameTimer
                      L0_3 = L0_3()
                      L1_3 = A0_2.checktimer
                      L0_3 = L0_3 - L1_3
                      L1_3 = 5000
                      if L0_3 >= L1_3 then
                        A0_2.checktimer = 0
                        L0_3 = GetEntityCoords
                        L1_3 = A1_2
                        L0_3 = L0_3(L1_3)
                        A0_2.lastpos = L0_3
                        L0_3 = A0_2.lastpos
                        L1_3 = GetEntityCoords
                        L2_3 = A1_2
                        L1_3 = L1_3(L2_3)
                        L0_3 = L0_3 - L1_3
                        L0_3 = #L0_3
                        L1_3 = 0.1
                        if L0_3 < L1_3 then
                          L0_3 = GetEntityCoords
                          L1_3 = PlayerPedId
                          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L1_3()
                          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                          L1_3 = GetEntityCoords
                          L2_3 = A1_2
                          L1_3 = L1_3(L2_3)
                          L0_3 = L0_3 - L1_3
                          L0_3 = #L0_3
                          L1_3 = 10.5
                          if L0_3 > L1_3 then
                            L0_3 = GetEntityForwardVector
                            L1_3 = A1_2
                            L0_3 = L0_3(L1_3)
                            L1_3 = GetEntityCoords
                            L2_3 = A1_2
                            L1_3 = L1_3(L2_3)
                            L2_3 = table
                            L2_3 = L2_3.unpack
                            L3_3 = L0_3 * 2.0
                            L3_3 = L1_3 + L3_3
                            L2_3, L3_3, L4_3 = L2_3(L3_3)
                            L5_3 = SetEntityCoords
                            L6_3 = A1_2
                            L7_3 = L2_3
                            L8_3 = L3_3
                            L9_3 = L4_3 - 1
                            L10_3 = false
                            L11_3 = false
                            L12_3 = false
                            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L5_3 = L15_1
                            L6_3 = A1_2
                            L5_3 = L5_3(L6_3)
                            L6_3 = L16_1
                            L7_3 = L5_3
                            L8_3 = "stuckfix"
                            L9_3 = 8000
                            L6_3 = L6_3(L7_3, L8_3, L9_3)
                            if L6_3 then
                              L6_3 = TaskJump
                              L7_3 = A1_2
                              L6_3(L7_3)
                              L6_3 = Wait
                              L7_3 = 25
                              L6_3(L7_3)
                              L6_3 = TaskClimb
                              L7_3 = A1_2
                              L6_3(L7_3)
                            end
                            L6_3 = GetEntityCoords
                            L7_3 = A1_2
                            L6_3 = L6_3(L7_3)
                            A0_2.lastpos = L6_3
                            L6_3 = MakePedAngry
                            L7_3 = A1_2
                            L6_3(L7_3)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L0_3 = DisablePedPainAudio
      L1_3 = A1_2
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = StopPedSpeaking
      L1_3 = A1_2
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = Wait
      L1_3 = L4_2
      L0_3(L1_3)
    end
    L0_3 = L3_2
    if nil ~= L0_3 then
      L0_3 = MioNemico
      L1_3 = L3_2
      L0_3 = L0_3[L1_3]
      if nil ~= L0_3 then
        L0_3 = DetachAndDelete
        L1_3 = A1_2
        L2_3 = MioNemico
        L3_3 = L3_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.sword_obj
        L3_3 = A2_2
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = L13_1
      L1_3 = A1_2
      L2_3 = 120
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = Wait
        L1_3 = 250
        L0_3(L1_3)
      else
        L0_3 = MioNemico
        L1_3 = L3_2
        L0_3 = L0_3[L1_3]
        if nil == L0_3 then
          return
        else
          L0_3 = PlayerPedId
          L0_3 = L0_3()
          L1_3 = GetEntityHealth
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not (L1_3 <= 1) then
            L1_3 = GetEntityHealth
            L2_3 = A1_2
            L1_3 = L1_3(L2_3)
            if 0 ~= L1_3 then
              L1_3 = IsPedFatallyInjured
              L2_3 = A1_2
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsPedDeadOrDying
                L2_3 = A1_2
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsPedFatallyInjured
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = GetEntityCoords
                    L2_3 = A1_2
                    L1_3 = L1_3(L2_3)
                    L2_3 = GetEntityCoords
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    L1_3 = L1_3 - L2_3
                    L1_3 = #L1_3
                    L2_3 = DistanzaFightBase
                    L2_3 = L2_3 * 2
                    if not (L1_3 > L2_3) then
                      goto lbl_73
                    end
                  end
                end
              end
            end
          end
          L1_3 = DetachAndDelete
          L2_3 = A1_2
          L3_3 = MioNemico
          L4_3 = L3_2
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.sword_obj
          L4_3 = A2_2
          L1_3(L2_3, L3_3, L4_3)
          do return end
          ::lbl_73::
          L1_3 = VicinoAlNemico
          L2_3 = A1_2
          L1_3 = L1_3(L2_3)
          if L1_3 then
            L1_3 = IsPedFatallyInjured
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = IsPedGettingUp
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsEntityPositionFrozen
                L2_3 = A1_2
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsPedDeadOrDying
                  L2_3 = A1_2
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = inFinisher
                    if not L1_3 then
                      L1_3 = IsPedRagdoll
                      L2_3 = A1_2
                      L1_3 = L1_3(L2_3)
                      if not L1_3 then
                        L1_3 = IsPedGettingUp
                        L2_3 = A1_2
                        L1_3 = L1_3(L2_3)
                        if not L1_3 then
                          L1_3 = IsPedFatallyInjured
                          L2_3 = A1_2
                          L1_3 = L1_3(L2_3)
                          if not L1_3 then
                            L1_3 = IsPedHuman
                            L2_3 = A1_2
                            L1_3 = L1_3(L2_3)
                            if L1_3 then
                              L1_3 = AnnullaEventualeIdle
                              L2_3 = A1_2
                              L1_3(L2_3)
                              L1_3 = makeEntityFaceEntity
                              L2_3 = A1_2
                              L3_3 = L0_3
                              L1_3(L2_3, L3_3)
                            end
                            idR = 1
                            L1_3 = IsPedHuman
                            L2_3 = A1_2
                            L1_3 = L1_3(L2_3)
                            if L1_3 then
                              L1_3 = math
                              L1_3 = L1_3.random
                              L2_3 = 1
                              L3_3 = MioNemico
                              L4_3 = L3_2
                              L3_3 = L3_3[L4_3]
                              L3_3 = L3_3.combatSet
                              L3_3 = #L3_3
                              L1_3 = L1_3(L2_3, L3_3)
                              L2_3 = MioNemico
                              L3_3 = L3_2
                              L2_3 = L2_3[L3_3]
                              L2_3 = L2_3.combatSet
                              L2_3 = L2_3[L1_3]
                              idR = L2_3
                              L3_3 = LoadAnim
                              L4_3 = AnimFightList
                              L5_3 = idR
                              L4_3 = L4_3[L5_3]
                              L4_3 = L4_3.a
                              L3_3(L4_3)
                              L3_3 = TaskPlayAnim
                              L4_3 = A1_2
                              L5_3 = AnimFightList
                              L6_3 = idR
                              L5_3 = L5_3[L6_3]
                              L5_3 = L5_3.a
                              L6_3 = AnimFightList
                              L7_3 = idR
                              L6_3 = L6_3[L7_3]
                              L6_3 = L6_3.b
                              L7_3 = 3.0
                              L8_3 = 1.0
                              L9_3 = AnimFightList
                              L10_3 = idR
                              L9_3 = L9_3[L10_3]
                              L9_3 = L9_3.tim
                              L10_3 = 0
                              L11_3 = 0
                              L12_3 = 0
                              L13_3 = 0
                              L14_3 = 0
                              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                              L3_3 = Wait
                              L4_3 = AnimFightList
                              L5_3 = idR
                              L4_3 = L4_3[L5_3]
                              L4_3 = L4_3.start
                              L3_3(L4_3)
                            else
                              L1_3 = AttackPedAnimal
                              L2_3 = A1_2
                              L1_3(L2_3)
                            end
                            L1_3 = SilPedFunc
                            L2_3 = A1_2
                            L1_3(L2_3)
                            L1_3 = MioNemico
                            L2_3 = L3_2
                            L1_3 = L1_3[L2_3]
                            if nil ~= L1_3 then
                              L1_3 = IsPedFatallyInjured
                              L2_3 = A1_2
                              L1_3 = L1_3(L2_3)
                              if not L1_3 then
                                L1_3 = IsPedDeadOrDying
                                L2_3 = A1_2
                                L1_3 = L1_3(L2_3)
                                if not L1_3 then
                                  L1_3 = IsPedHuman
                                  L2_3 = A1_2
                                  L1_3 = L1_3(L2_3)
                                  if L1_3 then
                                    L1_3 = makeEntityFaceEntity
                                    L2_3 = A1_2
                                    L3_3 = L0_3
                                    L1_3(L2_3, L3_3)
                                  end
                                  L1_3 = MioNemico
                                  L2_3 = L3_2
                                  L1_3 = L1_3[L2_3]
                                  L1_3.lotto = true
                                  L1_3 = IsPedHuman
                                  L2_3 = A1_2
                                  L1_3 = L1_3(L2_3)
                                  if L1_3 then
                                    L1_3 = 1
                                    L2_3 = AnimFightList
                                    L3_3 = idR
                                    L2_3 = L2_3[L3_3]
                                    L2_3 = L2_3.maxhit
                                    L3_3 = 1
                                    for L4_3 = L1_3, L2_3, L3_3 do
                                      L5_3 = math
                                      L5_3 = L5_3.random
                                      L6_3 = 1
                                      L7_3 = 3
                                      L5_3 = L5_3(L6_3, L7_3)
                                      if 1 == L5_3 then
                                        L6_3 = makeEntityFaceEntity
                                        L7_3 = A1_2
                                        L8_3 = L0_3
                                        L6_3(L7_3, L8_3)
                                      end
                                      L6_3 = VicinoAlNemico
                                      L7_3 = A1_2
                                      L6_3 = L6_3(L7_3)
                                      if L6_3 then
                                        L6_3 = IsEntityPlayingAnim
                                        L7_3 = A1_2
                                        L8_3 = "ped"
                                        L9_3 = "hit_wall"
                                        L10_3 = 3
                                        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                        if not L6_3 then
                                          L6_3 = IsPedRagdoll
                                          L7_3 = A1_2
                                          L6_3 = L6_3(L7_3)
                                          if not L6_3 then
                                            L6_3 = IsPedFatallyInjured
                                            L7_3 = A1_2
                                            L6_3 = L6_3(L7_3)
                                            if not L6_3 then
                                              L6_3 = IsPedDeadOrDying
                                              L7_3 = A1_2
                                              L6_3 = L6_3(L7_3)
                                              if not L6_3 then
                                                L6_3 = inFinisher
                                                if not L6_3 then
                                                  L6_3 = Wait
                                                  L7_3 = 25
                                                  L6_3(L7_3)
                                                  L6_3 = IsEntityPlayingAnim
                                                  L7_3 = A1_2
                                                  L8_3 = AnimFightList
                                                  L9_3 = idR
                                                  L8_3 = L8_3[L9_3]
                                                  L8_3 = L8_3.a
                                                  L9_3 = AnimFightList
                                                  L10_3 = idR
                                                  L9_3 = L9_3[L10_3]
                                                  L9_3 = L9_3.b
                                                  L10_3 = 3
                                                  L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                                                  if L6_3 then
                                                    L6_3 = GetEntityCoords
                                                    L7_3 = L0_3
                                                    L6_3 = L6_3(L7_3)
                                                    L7_3 = A0_2.sword_obj
                                                    if nil ~= L7_3 then
                                                      L7_3 = IsEntityAttached
                                                      L8_3 = A0_2.sword_obj
                                                      L7_3 = L7_3(L8_3)
                                                      if L7_3 then
                                                        L7_3 = genSwordWosh2
                                                        L8_3 = A1_2
                                                        L9_3 = A0_2.voice
                                                        L7_3(L8_3, L9_3)
                                                    end
                                                    else
                                                      L7_3 = genPunchWosh2
                                                      L8_3 = A1_2
                                                      L7_3(L8_3)
                                                    end
                                                    L7_3 = VicinoAlNemico
                                                    L8_3 = A1_2
                                                    L7_3 = L7_3(L8_3)
                                                    if L7_3 then
                                                      L7_3 = IsPedFatallyInjured
                                                      L8_3 = A1_2
                                                      L7_3 = L7_3(L8_3)
                                                      if not L7_3 then
                                                        L7_3 = IsPedDeadOrDying
                                                        L8_3 = A1_2
                                                        L7_3 = L7_3(L8_3)
                                                        if not L7_3 then
                                                          L7_3 = IsPedRagdoll
                                                          L8_3 = A1_2
                                                          L7_3 = L7_3(L8_3)
                                                          if not L7_3 then
                                                            L7_3 = makeEntityFaceEntity
                                                            L8_3 = A1_2
                                                            L9_3 = L0_3
                                                            L7_3(L8_3, L9_3)
                                                            L7_3 = GetEntityCoords
                                                            L8_3 = A1_2
                                                            L7_3 = L7_3(L8_3)
                                                            L8_3 = GetEntityForwardVector
                                                            L9_3 = A1_2
                                                            L8_3 = L8_3(L9_3)
                                                            L9_3 = 3.0
                                                            L10_3 = table
                                                            L10_3 = L10_3.unpack
                                                            L11_3 = L8_3 * L9_3
                                                            L11_3 = L7_3 + L11_3
                                                            L10_3, L11_3, L12_3 = L10_3(L11_3)
                                                            L13_3 = vector3
                                                            L14_3 = L7_3.x
                                                            L14_3 = L10_3 - L14_3
                                                            L15_3 = L7_3.y
                                                            L15_3 = L11_3 - L15_3
                                                            L16_3 = L12_3
                                                            L13_3 = L13_3(L14_3, L15_3, L16_3)
                                                            L14_3 = GetEntityVelocity
                                                            L15_3 = A1_2
                                                            L14_3 = L14_3(L15_3)
                                                            L15_3 = SetEntityVelocity
                                                            L16_3 = A1_2
                                                            L17_3 = L14_3.x
                                                            L18_3 = L13_3.x
                                                            L17_3 = L17_3 + L18_3
                                                            L18_3 = L14_3.y
                                                            L19_3 = L13_3.y
                                                            L18_3 = L18_3 + L19_3
                                                            L19_3 = 0.0
                                                            L15_3(L16_3, L17_3, L18_3, L19_3)
                                                            L15_3 = pushForward
                                                            L16_3 = A1_2
                                                            L17_3 = 1.2
                                                            L15_3(L16_3, L17_3)
                                                            L15_3 = math
                                                            L15_3 = L15_3.random
                                                            L16_3 = 2
                                                            L17_3 = 10
                                                            L15_3 = L15_3(L16_3, L17_3)
                                                            L16_3 = PossoCapriola
                                                            if L16_3 then
                                                              L16_3 = IsPedRagdoll
                                                              L17_3 = A1_2
                                                              L16_3 = L16_3(L17_3)
                                                              if not L16_3 then
                                                                L16_3 = IsPedDeadOrDying
                                                                L17_3 = A1_2
                                                                L16_3 = L16_3(L17_3)
                                                                if not L16_3 then
                                                                  L16_3 = IsPedFatallyInjured
                                                                  L17_3 = A1_2
                                                                  L16_3 = L16_3(L17_3)
                                                                  if not L16_3 then
                                                                    L16_3 = IsEntityPlayingAnim
                                                                    L17_3 = A1_2
                                                                    L18_3 = AnimFightList
                                                                    L19_3 = idR
                                                                    L18_3 = L18_3[L19_3]
                                                                    L18_3 = L18_3.a
                                                                    L19_3 = AnimFightList
                                                                    L20_3 = idR
                                                                    L19_3 = L19_3[L20_3]
                                                                    L19_3 = L19_3.b
                                                                    L20_3 = 3
                                                                    L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3)
                                                                    if L16_3 then
                                                                      L16_3 = IsPedFatallyInjured
                                                                      L17_3 = L0_3
                                                                      L16_3 = L16_3(L17_3)
                                                                      if not L16_3 then
                                                                        L16_3 = IsPedGettingUp
                                                                        L17_3 = L0_3
                                                                        L16_3 = L16_3(L17_3)
                                                                        if not L16_3 then
                                                                          L16_3 = inblockfunc
                                                                          L17_3 = L0_3
                                                                          L16_3 = L16_3(L17_3)
                                                                          if not L16_3 then
                                                                            L16_3 = L15_3
                                                                            L17_3 = MioNemico
                                                                            L18_3 = L3_2
                                                                            L17_3 = L17_3[L18_3]
                                                                            L17_3 = L17_3.level
                                                                            if L17_3 > 1 then
                                                                              L17_3 = MioNemico
                                                                              L18_3 = L3_2
                                                                              L17_3 = L17_3[L18_3]
                                                                              L17_3 = L17_3.level
                                                                              L16_3 = L16_3 * L17_3
                                                                            else
                                                                              L17_3 = tonumber
                                                                              L18_3 = L16_3 / 2
                                                                              L17_3 = L17_3(L18_3)
                                                                              L16_3 = L17_3
                                                                            end
                                                                            if L16_3 <= 0 then
                                                                              L16_3 = 1
                                                                            end
                                                                            L17_3 = moreDamageInRagdoll
                                                                            if L17_3 then
                                                                              L17_3 = IsPedRagdoll
                                                                              L18_3 = L0_3
                                                                              L17_3 = L17_3(L18_3)
                                                                              if L17_3 then
                                                                                L16_3 = L16_3 * 3
                                                                              end
                                                                            end
                                                                            L17_3 = ApplyDamageToPedLegacy
                                                                            L18_3 = L0_3
                                                                            L19_3 = L16_3
                                                                            L17_3(L18_3, L19_3)
                                                                            if L16_3 > 1 then
                                                                              L17_3 = ColpiPlayer
                                                                              L17_3 = L17_3 + 1
                                                                              ColpiPlayer = L17_3
                                                                            end
                                                                            L17_3 = ApplicaSangueDaiColpi
                                                                            L18_3 = nil
                                                                            L19_3 = ColpiPlayer
                                                                            L17_3(L18_3, L19_3)
                                                                            L17_3 = GetEntityHealth
                                                                            L18_3 = L0_3
                                                                            L17_3 = L17_3(L18_3)
                                                                            if L17_3 <= 100 then
                                                                              L17_3 = ApplyDamageToPedLegacy
                                                                              L18_3 = L0_3
                                                                              L19_3 = 50
                                                                              L17_3(L18_3, L19_3)
                                                                            end
                                                                            L17_3 = HoRollato
                                                                            if not L17_3 then
                                                                              L17_3 = IsPedRagdoll
                                                                              L18_3 = L0_3
                                                                              L17_3 = L17_3(L18_3)
                                                                              if not L17_3 then
                                                                                L17_3 = inblockfunc
                                                                                L18_3 = L0_3
                                                                                L17_3 = L17_3(L18_3)
                                                                                if not L17_3 then
                                                                                  L17_3 = inFinisher
                                                                                  if not L17_3 then
                                                                                    L17_3 = SetPedToRagdoll
                                                                                    L18_3 = L0_3
                                                                                    L19_3 = 250
                                                                                    L20_3 = 250
                                                                                    L21_3 = 6
                                                                                    L22_3 = 0
                                                                                    L23_3 = 0
                                                                                    L24_3 = 0
                                                                                    L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                            L17_3 = A0_2.sword_obj
                                                                            if nil ~= L17_3 then
                                                                              L17_3 = IsEntityAttached
                                                                              L18_3 = A0_2.sword_obj
                                                                              L17_3 = L17_3(L18_3)
                                                                              if L17_3 then
                                                                                L17_3 = genSwordHit
                                                                                L18_3 = A1_2
                                                                                L17_3(L18_3)
                                                                            end
                                                                            else
                                                                              L17_3 = genPunchHit2
                                                                              L18_3 = A1_2
                                                                              L17_3(L18_3)
                                                                            end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                            else
                                                              L16_3 = IsEntityPlayingAnim
                                                              L17_3 = L0_3
                                                              L18_3 = "weapons@projectile@"
                                                              L19_3 = "aimlive_m"
                                                              L20_3 = 3
                                                              L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3)
                                                              if not L16_3 then
                                                                L16_3 = FiatoneCapriola
                                                                L17_3 = exports
                                                                L17_3 = L17_3.striano_combat
                                                                L18_3 = L17_3
                                                                L17_3 = L17_3.GetStaminaDrainMultiplier
                                                                L17_3 = L17_3(L18_3)
                                                                L17_3 = 10 * L17_3
                                                                L16_3 = L16_3 - L17_3
                                                                FiatoneCapriola = L16_3
                                                                L16_3 = ApplyDamageToPedLegacy
                                                                L17_3 = L0_3
                                                                L18_3 = 1
                                                                L16_3(L17_3, L18_3)
                                                              else
                                                                L16_3 = FiatoneCapriola
                                                                L17_3 = exports
                                                                L17_3 = L17_3.striano_combat
                                                                L18_3 = L17_3
                                                                L17_3 = L17_3.GetStaminaDrainMultiplier
                                                                L17_3 = L17_3(L18_3)
                                                                L17_3 = 5 * L17_3
                                                                L16_3 = L16_3 - L17_3
                                                                FiatoneCapriola = L16_3
                                                              end
                                                              L16_3 = genSwordParry
                                                              L16_3()
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  else
                                                    break
                                                  end
                                                  L6_3 = AnimFightList
                                                  L7_3 = idR
                                                  L6_3 = L6_3[L7_3]
                                                  L6_3 = L6_3.delay
                                                  if nil ~= L6_3 then
                                                    L6_3 = changeAnimSpeed
                                                    L7_3 = idR
                                                    L6_3 = L6_3(L7_3)
                                                    L7_3 = AnimFightList
                                                    L8_3 = idR
                                                    L7_3 = L7_3[L8_3]
                                                    L7_3 = L7_3.delay
                                                    L7_3 = L7_3 / L6_3
                                                    L8_3 = Wait
                                                    L9_3 = L7_3 + 75
                                                    L8_3(L9_3)
                                                  else
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                    L1_3 = math
                                    L1_3 = L1_3.random
                                    L2_3 = 1
                                    L3_3 = 2
                                    L1_3 = L1_3(L2_3, L3_3)
                                    if 1 == L1_3 then
                                      L2_3 = Wait
                                      L3_3 = AnimFightList
                                      L4_3 = idR
                                      L3_3 = L3_3[L4_3]
                                      L3_3 = L3_3.tim
                                      L4_3 = AnimFightList
                                      L5_3 = idR
                                      L4_3 = L4_3[L5_3]
                                      L4_3 = L4_3.start
                                      L3_3 = L3_3 - L4_3
                                      L2_3(L3_3)
                                    end
                                    L2_3 = inFinisher
                                    if not L2_3 then
                                      L2_3 = L15_1
                                      L3_3 = A1_2
                                      L2_3 = L2_3(L3_3)
                                      L3_3 = L16_1
                                      L4_3 = L2_3
                                      L5_3 = "clear"
                                      L6_3 = 1200
                                      L3_3 = L3_3(L4_3, L5_3, L6_3)
                                      if L3_3 then
                                        L3_3 = ClearPedSecondaryTask
                                        L4_3 = A1_2
                                        L3_3(L4_3)
                                        L3_3 = ClearPedTasks
                                        L4_3 = A1_2
                                        L3_3(L4_3)
                                      end
                                    end
                                    L2_3 = MioNemico
                                    L3_3 = L3_2
                                    L2_3 = L2_3[L3_3]
                                    if nil ~= L2_3 then
                                      L2_3 = IsPedHuman
                                      L3_3 = A1_2
                                      L2_3 = L2_3(L3_3)
                                      if L2_3 then
                                        L2_3 = IsPedRagdoll
                                        L3_3 = A1_2
                                        L2_3 = L2_3(L3_3)
                                        if not L2_3 then
                                          L2_3 = ImACreaturePed
                                          L3_3 = A1_2
                                          L2_3 = L2_3(L3_3)
                                          if not L2_3 then
                                            L2_3 = MioNemico
                                            L3_3 = L3_2
                                            L2_3 = L2_3[L3_3]
                                            if nil ~= L2_3 then
                                              L2_3 = MioNemico
                                              L3_3 = L3_2
                                              L2_3 = L2_3[L3_3]
                                              L2_3.lotto = false
                                            end
                                            L2_3 = math
                                            L2_3 = L2_3.random
                                            L3_3 = 1
                                            L4_3 = 2
                                            L2_3 = L2_3(L3_3, L4_3)
                                            if 1 == L2_3 then
                                              L3_3 = AnnullaEventualeIdle
                                              L4_3 = A1_2
                                              L3_3(L4_3)
                                              L3_3 = math
                                              L3_3 = L3_3.random
                                              L4_3 = 500
                                              L5_3 = 1500
                                              L3_3 = L3_3(L4_3, L5_3)
                                              L4_3 = MioNemico
                                              L5_3 = L3_2
                                              L4_3 = L4_3[L5_3]
                                              if nil ~= L4_3 then
                                                L4_3 = MioNemico
                                                L5_3 = L3_2
                                                L4_3 = L4_3[L5_3]
                                                L4_3.lotto = true
                                              end
                                              L4_3 = "rc_dual_guns_set"
                                              L5_3 = "rc_dual_guns_idle_pose_1_clip"
                                              L6_3 = SwordList
                                              L7_3 = A0_2.Id_Arma
                                              L6_3 = L6_3[L7_3]
                                              L6_3 = L6_3.Name
                                              L7_3 = A0_2.sword_obj
                                              if nil ~= L7_3 then
                                                L7_3 = IsEntityAttached
                                                L8_3 = A0_2.sword_obj
                                                L7_3 = L7_3(L8_3)
                                                if L7_3 then
                                                  L7_3 = string
                                                  L7_3 = L7_3.find
                                                  L8_3 = L6_3
                                                  L9_3 = KnuckleName
                                                  L7_3 = L7_3(L8_3, L9_3)
                                                  if not L7_3 then
                                                    L4_3 = "kp_wm_gs_parry_02"
                                                    L5_3 = "kp_wm_gs_parry_02_clip"
                                                  end
                                                end
                                              end
                                              L7_3 = LoadAnim
                                              L8_3 = L4_3
                                              L7_3(L8_3)
                                              L7_3 = inFinisher
                                              if not L7_3 then
                                                L7_3 = IsPedHuman
                                                L8_3 = A1_2
                                                L7_3 = L7_3(L8_3)
                                                if L7_3 then
                                                  L7_3 = IsPedRagdoll
                                                  L8_3 = A1_2
                                                  L7_3 = L7_3(L8_3)
                                                  if not L7_3 then
                                                    L7_3 = TaskPlayAnim
                                                    L8_3 = A1_2
                                                    L9_3 = L4_3
                                                    L10_3 = L5_3
                                                    L11_3 = 3.0
                                                    L12_3 = 1.0
                                                    L13_3 = L3_3
                                                    L14_3 = 2
                                                    L15_3 = 0
                                                    L16_3 = 0
                                                    L17_3 = 0
                                                    L18_3 = 0
                                                    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                                                    L7_3 = makeEntityFaceEntity
                                                    L8_3 = A1_2
                                                    L9_3 = L0_3
                                                    L7_3(L8_3, L9_3)
                                                    L7_3 = Wait
                                                    L8_3 = L3_3
                                                    L7_3(L8_3)
                                                    L7_3 = MioNemico
                                                    L8_3 = L3_2
                                                    L7_3 = L7_3[L8_3]
                                                    if nil ~= L7_3 then
                                                      L7_3 = MioNemico
                                                      L8_3 = L3_2
                                                      L7_3 = L7_3[L8_3]
                                                      L7_3.lotto = false
                                                    end
                                                  else
                                                    L7_3 = MioNemico
                                                    L8_3 = L3_2
                                                    L7_3 = L7_3[L8_3]
                                                    if nil ~= L7_3 then
                                                      L7_3 = MioNemico
                                                      L8_3 = L3_2
                                                      L7_3 = L7_3[L8_3]
                                                      L7_3.lotto = false
                                                    end
                                                  end
                                                end
                                              end
                                            else
                                              L3_3 = math
                                              L3_3 = L3_3.random
                                              L4_3 = 1
                                              L5_3 = 4
                                              L3_3 = L3_3(L4_3, L5_3)
                                              if 1 == L3_3 then
                                                L4_3 = inFinisher
                                                if not L4_3 then
                                                  L4_3 = AnnullaEventualeIdle
                                                  L5_3 = A1_2
                                                  L4_3(L5_3)
                                                  L4_3 = math
                                                  L4_3 = L4_3.random
                                                  L5_3 = 1
                                                  L6_3 = 3
                                                  L4_3 = L4_3(L5_3, L6_3)
                                                  L5_3 = "kp_wm_gs_dodge_forwardroll"
                                                  L6_3 = "kp_wm_gs_dodge_forwardroll_clip"
                                                  if 1 == L4_3 then
                                                    L5_3 = "kp_wm_gs_dodge_leftroll"
                                                    L6_3 = "kp_wm_gs_dodge_leftroll_clip"
                                                  elseif 2 == L4_3 then
                                                    L5_3 = "kp_wm_gs_dodge_rightroll"
                                                    L6_3 = "kp_wm_gs_dodge_rightroll_clip"
                                                  elseif 3 == L4_3 then
                                                    L5_3 = "kp_wm_gs_dodge_backroll"
                                                    L6_3 = "kp_wm_gs_dodge_backroll_clip"
                                                  end
                                                  L7_3 = LoadAnim
                                                  L8_3 = L5_3
                                                  L7_3(L8_3)
                                                  if 4 == L4_3 then
                                                    L7_3 = Wait
                                                    L8_3 = math
                                                    L8_3 = L8_3.random
                                                    L9_3 = 950
                                                    L10_3 = 1150
                                                    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L8_3(L9_3, L10_3)
                                                    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                                                  else
                                                    L7_3 = Wait
                                                    L8_3 = math
                                                    L8_3 = L8_3.random
                                                    L9_3 = 350
                                                    L10_3 = 700
                                                    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3 = L8_3(L9_3, L10_3)
                                                    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
                                                  end
                                                  L7_3 = inFinisher
                                                  if not L7_3 then
                                                    L7_3 = IsPedHuman
                                                    L8_3 = A1_2
                                                    L7_3 = L7_3(L8_3)
                                                    if L7_3 then
                                                      L7_3 = makeEntityFaceEntity
                                                      L8_3 = A1_2
                                                      L9_3 = L0_3
                                                      L7_3(L8_3, L9_3)
                                                      L7_3 = TaskPlayAnim
                                                      L8_3 = A1_2
                                                      L9_3 = L5_3
                                                      L10_3 = L6_3
                                                      L11_3 = 3.0
                                                      L12_3 = 1.0
                                                      L13_3 = 350
                                                      L14_3 = 0
                                                      L15_3 = false
                                                      L16_3 = false
                                                      L17_3 = false
                                                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                      L7_3 = Wait
                                                      L8_3 = 350
                                                      L7_3(L8_3)
                                                      L7_3 = L15_1
                                                      L8_3 = A1_2
                                                      L7_3 = L7_3(L8_3)
                                                      L8_3 = L16_1
                                                      L9_3 = L7_3
                                                      L10_3 = "clear"
                                                      L11_3 = 1200
                                                      L8_3 = L8_3(L9_3, L10_3, L11_3)
                                                      if L8_3 then
                                                        L8_3 = ClearPedSecondaryTask
                                                        L9_3 = A1_2
                                                        L8_3(L9_3)
                                                        L8_3 = ClearPedTasks
                                                        L9_3 = A1_2
                                                        L8_3(L9_3)
                                                      end
                                                      L8_3 = makeEntityFaceEntity
                                                      L9_3 = A1_2
                                                      L10_3 = L0_3
                                                      L8_3(L9_3, L10_3)
                                                    end
                                                  end
                                              end
                                              else
                                                if 2 == L3_3 then
                                                  L4_3 = inFinisher
                                                  if not L4_3 then
                                                    L4_3 = CapriolaAvanti
                                                    L5_3 = A1_2
                                                    L4_3(L5_3)
                                                end
                                                else
                                                  L4_3 = inFinisher
                                                  if not L4_3 then
                                                    L4_3 = IsPedHuman
                                                    L5_3 = A1_2
                                                    L4_3 = L4_3(L5_3)
                                                    if L4_3 then
                                                      L4_3 = AnnullaEventualeIdle
                                                      L5_3 = A1_2
                                                      L4_3(L5_3)
                                                      L4_3 = "melee@wfire@yakuza_animset"
                                                      L5_3 = "wfire_wmg_yakuza_idle_clip"
                                                      L6_3 = LoadAnim
                                                      L7_3 = L4_3
                                                      L6_3(L7_3)
                                                      L6_3 = 250
                                                      L7_3 = TaskPlayAnim
                                                      L8_3 = A1_2
                                                      L9_3 = L4_3
                                                      L10_3 = L5_3
                                                      L11_3 = 3.0
                                                      L12_3 = 1.0
                                                      L13_3 = L6_3
                                                      L14_3 = 49
                                                      L15_3 = false
                                                      L16_3 = false
                                                      L17_3 = false
                                                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                                                      L7_3 = makeEntityFaceEntity
                                                      L8_3 = A1_2
                                                      L9_3 = L0_3
                                                      L7_3(L8_3, L9_3)
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                end
              end
            end
          end
          else
            L1_3 = MioNemico
            L2_3 = L3_2
            L1_3 = L1_3[L2_3]
            if nil ~= L1_3 then
              L1_3 = inFinisher
              if not L1_3 then
                L1_3 = MioNemico
                L2_3 = L3_2
                L1_3 = L1_3[L2_3]
                L1_3.lotto = false
                L1_3 = false
                L2_3 = MioNemico
                L3_3 = L3_2
                L2_3 = L2_3[L3_3]
                L2_3 = L2_3.sfidante
                if -1 == L2_3 then
                  L1_3 = true
                else
                  L2_3 = MioNemico
                  L3_3 = L3_2
                  L2_3 = L2_3[L3_3]
                  L2_3 = L2_3.sfidante
                  if L2_3 > -1 then
                    L1_3 = true
                  end
                end
                if L1_3 then
                  L2_3 = GetEntitySpeed
                  L3_3 = A1_2
                  L2_3 = L2_3(L3_3)
                  L3_3 = 0.1
                  if L2_3 < L3_3 then
                    L2_3 = IsPedHuman
                    L3_3 = A1_2
                    L2_3 = L2_3(L3_3)
                    if L2_3 then
                      L2_3 = makeEntityFaceEntity
                      L3_3 = A1_2
                      L4_3 = L0_3
                      L2_3(L3_3, L4_3)
                    end
                  end
                  L2_3 = GetEntityCoords
                  L3_3 = A1_2
                  L2_3 = L2_3(L3_3)
                  L3_3 = GetEntityCoords
                  L4_3 = L0_3
                  L3_3 = L3_3(L4_3)
                  L2_3 = L2_3 - L3_3
                  L2_3 = #L2_3
                  L3_3 = DistanzaFightBase
                  if L2_3 < L3_3 then
                    L2_3 = GetEntityCoords
                    L3_3 = L0_3
                    L2_3 = L2_3(L3_3)
                    L3_3 = L15_1
                    L4_3 = A1_2
                    L3_3 = L3_3(L4_3)
                    L4_3 = L16_1
                    L5_3 = L3_3
                    L6_3 = "goto"
                    L7_3 = 2000
                    L4_3 = L4_3(L5_3, L6_3, L7_3)
                    if L4_3 then
                      L4_3 = TaskGoStraightToCoord
                      L5_3 = A1_2
                      L6_3 = L2_3.x
                      L7_3 = L2_3.y
                      L8_3 = L2_3.z
                      L9_3 = 2.0
                      L10_3 = -1
                      L11_3 = 0
                      L12_3 = 1.0
                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                      L4_3 = SilPedFunc
                      L5_3 = A1_2
                      L4_3(L5_3)
                    end
                  end
                else
                  L2_3 = GetEntitySpeed
                  L3_3 = A1_2
                  L2_3 = L2_3(L3_3)
                  L3_3 = 0.1
                  if L2_3 > L3_3 then
                    L2_3 = inFinisher
                    if not L2_3 then
                      L2_3 = IsPedHuman
                      L3_3 = A1_2
                      L2_3 = L2_3(L3_3)
                      if L2_3 then
                        L2_3 = makeEntityFaceEntity
                        L3_3 = A1_2
                        L4_3 = L0_3
                        L2_3(L3_3, L4_3)
                        L2_3 = L15_1
                        L3_3 = A1_2
                        L2_3 = L2_3(L3_3)
                        L3_3 = L16_1
                        L4_3 = L2_3
                        L5_3 = "clear"
                        L6_3 = 1200
                        L3_3 = L3_3(L4_3, L5_3, L6_3)
                        if L3_3 then
                          L3_3 = ClearPedSecondaryTask
                          L4_3 = A1_2
                          L3_3(L4_3)
                          L3_3 = ClearPedTasks
                          L4_3 = A1_2
                          L3_3(L4_3)
                        end
                        L3_3 = nemicoIdleAnim
                        L4_3 = A1_2
                        L3_3(L4_3)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L0_3 = Wait
      L1_3 = L4_2
      L0_3(L1_3)
    end
    L0_3 = MioNemico
    L1_3 = L3_2
    L0_3 = L0_3[L1_3]
    if nil ~= L0_3 then
      L0_3 = MioNemico
      L1_3 = L3_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.sword_obj
      if nil ~= L0_3 then
        L0_3 = DetachAndDelete
        L1_3 = A1_2
        L2_3 = MioNemico
        L3_3 = L3_2
        L2_3 = L2_3[L3_3]
        L2_3 = L2_3.sword_obj
        L3_3 = A2_2
        L0_3(L1_3, L2_3, L3_3)
    end
    else
      L0_3 = DetachAndDelete
      L1_3 = A1_2
      L2_3 = A2_2
      L0_3(L1_3, L2_3)
    end
  end
  L5_2(L6_2)
end
handleNemico = L17_1
L17_1 = 0
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = IsPedGettingUp
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedRagdoll
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedSwimming
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedSwimmingUnderWater
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = currentTarget
            if nil == L1_2 then
              L1_2 = SetEntityHeading
              L2_2 = A0_2
              L3_2 = GetGameplayCamRot
              L4_2 = 0
              L3_2 = L3_2(L4_2)
              L3_2 = L3_2.z
              L1_2(L2_2, L3_2)
              L1_2 = GetGameTimer
              L1_2 = L1_2()
              L2_2 = L17_1
              if L1_2 >= L2_2 then
                L1_2 = GetGameTimer
                L1_2 = L1_2()
                L1_2 = L1_2 + 500
                L17_1 = L1_2
                L1_2 = TriggerServerEvent
                L2_2 = "SyncRotationCombat"
                L3_2 = GetGameplayCamRot
                L4_2 = 0
                L3_2 = L3_2(L4_2)
                L3_2 = L3_2.z
                L4_2 = GetEntityCoords
                L5_2 = A0_2
                L4_2 = L4_2(L5_2)
                L5_2 = GetPlayerServerId
                L6_2 = PlayerId
                L6_2 = L6_2()
                L5_2, L6_2 = L5_2(L6_2)
                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
              end
            else
              L1_2 = GetGameTimer
              L1_2 = L1_2()
              L2_2 = L17_1
              if L1_2 >= L2_2 then
                L1_2 = GetGameTimer
                L1_2 = L1_2()
                L1_2 = L1_2 + 500
                L17_1 = L1_2
                L1_2 = TriggerServerEvent
                L2_2 = "SyncRotationCombat"
                L3_2 = GetEntityHeading
                L4_2 = A0_2
                L3_2 = L3_2(L4_2)
                L4_2 = GetEntityCoords
                L5_2 = A0_2
                L4_2 = L4_2(L5_2)
                L5_2 = GetPlayerServerId
                L6_2 = PlayerId
                L6_2 = L6_2()
                L5_2, L6_2 = L5_2(L6_2)
                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
              end
            end
          end
        end
      end
    end
  end
end
SyncRotAndPos = L18_1
lastActionEaasy = 0
currentMovesEasy = 0
currentMovesEasy_HEAVY = 1
inHeavyCombat = false
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PossoCapriola
  if L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = A0_2
    L3_2 = "magic@motions_left_hand_beam_struggle"
    L4_2 = "magic@motions_left_hand_beam_struggle_clip"
    L5_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = EasyCombatStyle
      L2_2 = myWStyle
      L1_2 = L1_2[L2_2]
      L2_2 = currentMovesEasy
      L2_2 = L2_2 + 1
      currentMovesEasy = L2_2
      L2_2 = currentMovesEasy
      L3_2 = EasyCombatStyle
      L4_2 = myWStyle
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.NormalHit
      L3_2 = #L3_2
      if L2_2 > L3_2 then
        currentMovesEasy = 1
      end
      L2_2 = FiatoneCapriola
      L3_2 = delStaminaFight
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.GetStaminaDrainMultiplier
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 * L4_2
      L2_2 = L2_2 - L3_2
      FiatoneCapriola = L2_2
      if nil == L1_2 then
        L2_2 = print
        L3_2 = "This Combat Easy Style not exist, assigned ID 1 as default!"
        L2_2(L3_2)
        myWStyle = 1
        L2_2 = TriggerServerEvent
        L3_2 = "updatePlayerInfo"
        L4_2 = mySword
        L5_2 = myShield
        L6_2 = myCombatList
        L7_2 = myWStyle
        L8_2 = myBow
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        HoRollato = false
        L2_2 = Wait
        L3_2 = 150
        L2_2(L3_2)
      else
        L2_2 = GetGameTimer
        L2_2 = L2_2()
        L3_2 = lastActionEaasy
        L2_2 = L2_2 - L3_2
        L3_2 = ResetEasyHeavyHit
        if L2_2 > L3_2 then
          currentMovesEasy_HEAVY = 0
        end
        L2_2 = GetRandomHit
        L3_2 = FightWStyle
        L4_2 = myWStyle
        L3_2 = L3_2[L4_2]
        L4_2 = false
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = 0
        L4_2 = EasyCombatStyle
        L5_2 = myWStyle
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.NormalHit
        L4_2 = #L4_2
        if 1 == L4_2 then
          L3_2 = 1
        end
        L4_2 = currentMovesEasy
        L4_2 = L4_2 + L3_2
        L5_2 = EasyCombatStyle
        L6_2 = myWStyle
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.NormalHit
        L5_2 = #L5_2
        if L4_2 >= L5_2 then
          inHeavyCombat = true
          L4_2 = GetGameTimer
          L4_2 = L4_2()
          lastActionEaasy = L4_2
          L4_2 = currentMovesEasy_HEAVY
          L4_2 = L4_2 + 1
          currentMovesEasy_HEAVY = L4_2
          L4_2 = currentMovesEasy_HEAVY
          L5_2 = EasyCombatStyle
          L6_2 = myWStyle
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.HeavyHit
          L5_2 = #L5_2
          if L4_2 > L5_2 then
            currentMovesEasy_HEAVY = 1
          end
          L4_2 = GetRandomHit
          L5_2 = FightWStyle
          L6_2 = myWStyle
          L5_2 = L5_2[L6_2]
          L6_2 = true
          L4_2 = L4_2(L5_2, L6_2)
          L2_2 = L4_2
        end
        L4_2 = OnStartCombat
        L5_2 = L2_2
        L6_2 = nil
        L7_2 = AnimFightList
        L4_2(L5_2, L6_2, L7_2)
        HoRollato = true
        indexCombat = L2_2
        L4_2 = AnimFightList
        L4_2 = #L4_2
        if L2_2 <= L4_2 then
          L4_2 = LoadAnim
          L5_2 = AnimFightList
          L5_2 = L5_2[L2_2]
          L5_2 = L5_2.a
          L4_2(L5_2)
          L4_2 = ClearPedTasks
          L5_2 = A0_2
          L4_2(L5_2)
          L4_2 = AnimFightList
          L4_2 = L4_2[L2_2]
          L4_2 = L4_2.freeze
          if L4_2 then
            L4_2 = FreezeEntityPosition
            L5_2 = A0_2
            L6_2 = true
            L4_2(L5_2, L6_2)
          end
          L4_2 = changeAnimSpeed
          L5_2 = L2_2
          L4_2 = L4_2(L5_2)
          L5_2 = math
          L5_2 = L5_2.floor
          L6_2 = AnimFightList
          L6_2 = L6_2[L2_2]
          L6_2 = L6_2.start
          L6_2 = L6_2 / L4_2
          L5_2 = L5_2(L6_2)
          L6_2 = math
          L6_2 = L6_2.floor
          L7_2 = GetAnimDuration
          L8_2 = AnimFightList
          L8_2 = L8_2[L2_2]
          L8_2 = L8_2.a
          L9_2 = AnimFightList
          L9_2 = L9_2[L2_2]
          L9_2 = L9_2.b
          L7_2 = L7_2(L8_2, L9_2)
          L7_2 = L7_2 * 1000
          L6_2 = L6_2(L7_2)
          L6_2 = L6_2 / L4_2
          L7_2 = AnimFightList
          L7_2 = L7_2[L2_2]
          L7_2 = L7_2.tim
          if 999999 == L7_2 then
            L7_2 = AnimFightList
            L7_2 = L7_2[L2_2]
            L7_2.tim = L6_2
          end
          L7_2 = math
          L7_2 = L7_2.floor
          L8_2 = AnimFightList
          L8_2 = L8_2[L2_2]
          L8_2 = L8_2.tim
          L8_2 = L8_2 / L4_2
          L7_2 = L7_2(L8_2)
          if L6_2 < L7_2 then
            L7_2 = L6_2 - 50
          end
          L8_2 = StartCombatAnim
          L9_2 = A0_2
          L10_2 = AnimFightList
          L10_2 = L10_2[L2_2]
          L10_2 = L10_2.a
          L11_2 = AnimFightList
          L11_2 = L11_2[L2_2]
          L11_2 = L11_2.b
          L12_2 = L7_2
          L13_2 = L4_2
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
          L8_2 = IsEntityAttached
          L9_2 = A0_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            grandezzaEnemy = 1.3
          end
          L8_2 = AnimFightList
          L8_2 = L8_2[L2_2]
          L8_2 = L8_2.slow
          if L8_2 then
            L8_2 = CollMe
            L8_2()
          end
          L8_2 = Wait
          L9_2 = L5_2
          L8_2(L9_2)
          L8_2 = DashMe
          L9_2 = AnimFightList
          L10_2 = L2_2
          L8_2(L9_2, L10_2)
          L8_2 = AnimFightList
          L8_2 = L8_2[L2_2]
          L8_2 = L8_2.bones
          BonesCheck = L8_2
          L8_2 = Wait
          L9_2 = L7_2 - L5_2
          L8_2(L9_2)
          L8_2 = {}
          BonesCheck = L8_2
          L8_2 = AnimFightList
          L8_2 = L8_2[L2_2]
          L8_2 = L8_2.freeze
          if L8_2 then
            L8_2 = FreezeEntityPosition
            L9_2 = A0_2
            L10_2 = false
            L8_2(L9_2, L10_2)
          end
          while true do
            L8_2 = IsEntityPlayingAnim
            L9_2 = A0_2
            L10_2 = AnimFightList
            L10_2 = L10_2[L2_2]
            L10_2 = L10_2.a
            L11_2 = AnimFightList
            L11_2 = L11_2[L2_2]
            L11_2 = L11_2.b
            L12_2 = 3
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            if not L8_2 then
              break
            end
            L8_2 = Wait
            L9_2 = 0
            L8_2(L9_2)
          end
          HoRollato = false
          L8_2 = EndRoll
          L8_2()
          inHeavyCombat = false
        else
          L4_2 = print
          L5_2 = "Hey ERROR (easy Combat mode)! Anim ID "
          L6_2 = L2_2
          L7_2 = " doesnt exist in tab, be sure to change it in the combat set you insert!"
          L5_2 = L5_2 .. L6_2 .. L7_2
          L4_2(L5_2)
        end
      end
    end
  end
end
LoopEasyCombatMode = L18_1
L18_1 = {}
L19_1 = {}
L18_1.instances = L19_1
L19_1 = {}
L18_1.segments = L19_1
L19_1 = {}
L18_1.modelCache = L19_1
L18_1.threadRunning = false
StrianoTrails = L18_1
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2 or A0_2
  if not L3_2 then
    A0_2 = A1_2
  end
  if A1_2 > A0_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return A0_2
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L19_1
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L1_2[L6_2] = L8_2
  end
  return L1_2
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = StrianoTrailPresets
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_8::
  L1_2 = StrianoTrailPresets
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  return L1_2
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = GetEntityModel
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ":"
  L5_2 = tostring
  L6_2 = A1_2.axis
  if not L6_2 then
    L6_2 = "auto"
  end
  L5_2 = L5_2(L6_2)
  L6_2 = ":"
  L7_2 = tostring
  L8_2 = A1_2.widthScale
  if not L8_2 then
    L8_2 = 1.0
  end
  L7_2 = L7_2(L8_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = StrianoTrails
  L4_2 = L4_2.modelCache
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L5_2 = L4_2.base
    L6_2 = L4_2.tip
    return L5_2, L6_2
  end
  L5_2 = GetModelDimensions
  L6_2 = L2_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = L6_2.x
  L9_2 = L5_2.x
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.abs
  L9_2 = L6_2.y
  L10_2 = L5_2.y
  L9_2 = L9_2 - L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.abs
  L10_2 = L6_2.z
  L11_2 = L5_2.z
  L10_2 = L10_2 - L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = tostring
  L11_2 = A1_2.axis
  if not L11_2 then
    L11_2 = "auto"
  end
  L10_2 = L10_2(L11_2)
  if "auto" == L10_2 then
    L10_2 = "y"
    if L7_2 >= L8_2 and L7_2 >= L9_2 then
      L10_2 = "x"
    elseif L7_2 <= L9_2 and L8_2 <= L9_2 then
      L10_2 = "z"
    end
  end
  L11_2 = L5_2.x
  L12_2 = L6_2.x
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 * 0.5
  L12_2 = L5_2.y
  L13_2 = L6_2.y
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 * 0.5
  L13_2 = L5_2.z
  L14_2 = L6_2.z
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 * 0.5
  L14_2 = L18_1
  L15_2 = A1_2.widthScale
  if not L15_2 then
    L15_2 = 1.0
  end
  L16_2 = 0.05
  L17_2 = 3.0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = nil
  L16_2 = nil
  if "x" == L10_2 then
    L17_2 = L7_2 * 0.5
    L17_2 = L17_2 * L14_2
    L18_2 = vector3
    L19_2 = L11_2 - L17_2
    L20_2 = L12_2
    L21_2 = L13_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L15_2 = L18_2
    L18_2 = vector3
    L19_2 = L11_2 + L17_2
    L20_2 = L12_2
    L21_2 = L13_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L16_2 = L18_2
  elseif "z" == L10_2 then
    L17_2 = L9_2 * 0.5
    L17_2 = L17_2 * L14_2
    L18_2 = vector3
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2 - L17_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L15_2 = L18_2
    L18_2 = vector3
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2 + L17_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L16_2 = L18_2
  else
    L17_2 = L8_2 * 0.5
    L17_2 = L17_2 * L14_2
    L18_2 = vector3
    L19_2 = L11_2
    L20_2 = L12_2 - L17_2
    L21_2 = L13_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L15_2 = L18_2
    L18_2 = vector3
    L19_2 = L11_2
    L20_2 = L12_2 + L17_2
    L21_2 = L13_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L16_2 = L18_2
  end
  L17_2 = StrianoTrails
  L17_2 = L17_2.modelCache
  L18_2 = {}
  L18_2.base = L15_2
  L18_2.tip = L16_2
  L17_2[L3_2] = L18_2
  L17_2 = L15_2
  L18_2 = L16_2
  return L17_2, L18_2
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L21_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = A0_2
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = A0_2
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = StrianoTrails
  L6_2 = L6_2.segments
  L7_2 = StrianoTrails
  L7_2 = L7_2.segments
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L8_2 = {}
  L8_2.b1 = A0_2
  L8_2.t1 = A1_2
  L8_2.b2 = A2_2
  L8_2.t2 = A3_2
  L8_2.born = L5_2
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = L18_1
  L11_2 = A4_2.lifeMs
  if not L11_2 then
    L11_2 = 145
  end
  L12_2 = 35
  L13_2 = 800
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = L5_2 + L9_2
  L8_2.expire = L9_2
  L9_2 = L19_1
  L10_2 = A4_2.color
  if not L10_2 then
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
  end
  L9_2 = L9_2(L10_2)
  L8_2.color = L9_2
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = L18_1
  L11_2 = A4_2.alpha
  if not L11_2 then
    L11_2 = 190
  end
  L12_2 = 1
  L13_2 = 255
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.alpha = L9_2
  L9_2 = A4_2.light
  L9_2 = true == L9_2
  L8_2.light = L9_2
  L6_2[L7_2] = L8_2
  L6_2 = StrianoTrails
  L6_2 = L6_2.segments
  L6_2 = #L6_2
  L7_2 = 160
  if L6_2 > L7_2 then
    L6_2 = table
    L6_2 = L6_2.remove
    L7_2 = StrianoTrails
    L7_2 = L7_2.segments
    L8_2 = 1
    L6_2(L7_2, L8_2)
  end
end
function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = DrawPoly
  L8_2 = A0_2.x
  L9_2 = A0_2.y
  L10_2 = A0_2.z
  L11_2 = A1_2.x
  L12_2 = A1_2.y
  L13_2 = A1_2.z
  L14_2 = A2_2.x
  L15_2 = A2_2.y
  L16_2 = A2_2.z
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = StrianoTrails
  L1_2 = L1_2.segments
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = StrianoTrails
    L5_2 = L5_2.segments
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.expire
    if L0_2 >= L6_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = StrianoTrails
      L7_2 = L7_2.segments
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = math
      L6_2 = L6_2.max
      L7_2 = 1
      L8_2 = L5_2.expire
      L9_2 = L5_2.born
      L8_2 = L8_2 - L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L18_1
      L8_2 = L5_2.expire
      L8_2 = L8_2 - L0_2
      L8_2 = L8_2 / L6_2
      L9_2 = 0.0
      L10_2 = 1.0
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = L5_2.color
      if not L8_2 then
        L8_2 = {}
        L9_2 = 255
        L10_2 = 255
        L11_2 = 255
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L8_2[3] = L11_2
      end
      L9_2 = math
      L9_2 = L9_2.floor
      L10_2 = L8_2[1]
      if not L10_2 then
        L10_2 = 255
      end
      L9_2 = L9_2(L10_2)
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = L8_2[2]
      if not L11_2 then
        L11_2 = 255
      end
      L10_2 = L10_2(L11_2)
      L11_2 = math
      L11_2 = L11_2.floor
      L12_2 = L8_2[3]
      if not L12_2 then
        L12_2 = 255
      end
      L11_2 = L11_2(L12_2)
      L12_2 = math
      L12_2 = L12_2.floor
      L13_2 = L5_2.alpha
      if not L13_2 then
        L13_2 = 190
      end
      L13_2 = L13_2 * L7_2
      L12_2 = L12_2(L13_2)
      L13_2 = L24_1
      L14_2 = L5_2.b1
      L15_2 = L5_2.t1
      L16_2 = L5_2.t2
      L17_2 = L9_2
      L18_2 = L10_2
      L19_2 = L11_2
      L20_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L24_1
      L14_2 = L5_2.b1
      L15_2 = L5_2.t2
      L16_2 = L5_2.b2
      L17_2 = L9_2
      L18_2 = L10_2
      L19_2 = L11_2
      L20_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L24_1
      L14_2 = L5_2.t2
      L15_2 = L5_2.t1
      L16_2 = L5_2.b1
      L17_2 = L9_2
      L18_2 = L10_2
      L19_2 = L11_2
      L20_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L24_1
      L14_2 = L5_2.b2
      L15_2 = L5_2.t2
      L16_2 = L5_2.b1
      L17_2 = L9_2
      L18_2 = L10_2
      L19_2 = L11_2
      L20_2 = L12_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L5_2.light
      if L13_2 then
        L13_2 = DrawLightWithRange
        L14_2 = L5_2.b1
        L14_2 = L14_2.x
        L15_2 = L5_2.b1
        L15_2 = L15_2.y
        L16_2 = L5_2.b1
        L16_2 = L16_2.z
        L17_2 = L9_2
        L18_2 = L10_2
        L19_2 = L11_2
        L20_2 = 0.5
        L21_2 = 1.0
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = StrianoTrails
  L1_2 = L1_2.instances
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = L5_2.active
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L0_2 = false
  return L0_2
end
function L27_1()
  local L0_2, L1_2
  L0_2 = StrianoTrails
  L0_2 = L0_2.threadRunning
  if L0_2 then
    return
  end
  L0_2 = StrianoTrails
  L0_2.threadRunning = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L26_1
      L1_3 = L1_3()
      if not L1_3 then
        L1_3 = StrianoTrails
        L1_3 = L1_3.segments
        L1_3 = #L1_3
        L1_3 = L1_3 > 0
      end
      if not L1_3 then
        L2_3 = StrianoTrails
        L2_3.threadRunning = false
        break
      end
      L2_3 = pairs
      L3_3 = StrianoTrails
      L3_3 = L3_3.instances
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        if L7_3 then
          L8_3 = L7_3.active
          if L8_3 then
            L8_3 = L7_3.object
            if L8_3 then
              L8_3 = DoesEntityExist
              L9_3 = L7_3.object
              L8_3 = L8_3(L9_3)
              if L8_3 then
                L8_3 = L7_3.spec
                if not L8_3 then
                  L8_3 = {}
                end
                L9_3 = tostring
                L10_3 = L8_3.mode
                if not L10_3 then
                  L10_3 = "ribbon"
                end
                L9_3 = L9_3(L10_3)
                if "ribbon" == L9_3 then
                  L9_3 = L7_3.lastSample
                  if not L9_3 then
                    L9_3 = 0
                  end
                  L9_3 = L0_3 - L9_3
                  L10_3 = math
                  L10_3 = L10_3.floor
                  L11_3 = L18_1
                  L12_3 = L8_3.sampleMs
                  if not L12_3 then
                    L12_3 = 0
                  end
                  L13_3 = 0
                  L14_3 = 100
                  L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3, L13_3, L14_3)
                  L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                  if L9_3 >= L10_3 then
                    L9_3 = L22_1
                    L10_3 = L7_3.object
                    L11_3 = L8_3
                    L9_3, L10_3 = L9_3(L10_3, L11_3)
                    L11_3 = L7_3.lastBase
                    if L11_3 then
                      L11_3 = L7_3.lastTip
                      if L11_3 then
                        L11_3 = L23_1
                        L12_3 = L7_3.lastBase
                        L13_3 = L7_3.lastTip
                        L14_3 = L9_3
                        L15_3 = L10_3
                        L16_3 = L8_3
                        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
                      end
                    end
                    L7_3.lastBase = L9_3
                    L7_3.lastTip = L10_3
                    L7_3.lastSample = L0_3
                  end
                end
            end
            else
              L8_3 = StrianoTrails
              L8_3 = L8_3.instances
              L8_3[L6_3] = nil
            end
          end
        end
      end
      L2_3 = L25_1
      L2_3()
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A1_2 then
    L5_2 = false
    return L5_2
  end
  if A0_2 and 0 ~= A0_2 then
    L5_2 = DoesEntityExist
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_16
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_16::
  L5_2 = Sfoggiate
  if not L5_2 then
    return
  end
  L5_2 = L20_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = print
    L7_2 = "^1[StrianoTrails]^7 Preset non trovato:"
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
    L6_2 = false
    return L6_2
  end
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L18_1
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = 800
  end
  L9_2 = 100
  L10_2 = 5000
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A2_2 = L6_2
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = tostring
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
  end
  L7_2 = StrianoTrails
  L7_2 = L7_2.instances
  L7_2 = L7_2[L6_2]
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = L7_2.token
  if not L8_2 then
    L8_2 = 0
  end
  L8_2 = L8_2 + 1
  L7_2.token = L8_2
  L8_2 = StrianoTrails
  L8_2 = L8_2.instances
  L9_2 = {}
  L9_2.active = true
  L9_2.object = A0_2
  L10_2 = L19_1
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L9_2.spec = L10_2
  L9_2.lastBase = nil
  L9_2.lastTip = nil
  L9_2.lastSample = 0
  L10_2 = L7_2.token
  L9_2.token = L10_2
  L8_2[L6_2] = L9_2
  L8_2 = L7_2.token
  if not A3_2 then
    L9_2 = NetworkGetEntityIsNetworked
    L10_2 = A0_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = NetworkGetNetworkIdFromEntity
      L10_2 = A0_2
      L9_2 = L9_2(L10_2)
      if L9_2 and 0 ~= L9_2 then
        L10_2 = TriggerServerEvent
        L11_2 = "striano_combat:trailStart"
        L12_2 = L9_2
        L13_2 = tostring
        L14_2 = A1_2
        L13_2 = L13_2(L14_2)
        L14_2 = A2_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
  L9_2 = L27_1
  L9_2()
  L9_2 = SetTimeout
  L10_2 = A2_2
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = StrianoTrails
    L0_3 = L0_3.instances
    L1_3 = L6_2
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = L0_3.token
      L2_3 = L8_2
      if L1_3 == L2_3 then
        L1_3 = StrianoTrails
        L1_3 = L1_3.instances
        L2_3 = L6_2
        L1_3[L2_3] = nil
      end
    end
  end
  L9_2(L10_2, L11_2)
  L9_2 = true
  return L9_2
end
StartTrailOnEntity = L28_1
function L28_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = StrianoTrails
    L2_2 = {}
    L1_2.instances = L2_2
    return
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StrianoTrails
  L2_2 = L2_2.instances
  L2_2[L1_2] = nil
end
StopTrailOnEntity = L28_1
L28_1 = exports
L29_1 = "StartTrailOnEntity"
L30_1 = StartTrailOnEntity
L28_1(L29_1, L30_1)
L28_1 = exports
L29_1 = "StopTrailOnEntity"
L30_1 = StopTrailOnEntity
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "striano_combat:trailRemoteStart"
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L4_2 == L5_2 then
    return
  end
  L4_2 = tonumber
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2 or A1_2
  if not L4_2 then
    A1_2 = 0
  end
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 and 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = StartTrailOnEntity
      L6_2 = L4_2
      L7_2 = A2_2
      L8_2 = A3_2
      L9_2 = true
      L10_2 = "net:"
      L11_2 = tostring
      L12_2 = A1_2
      L11_2 = L11_2(L12_2)
      L10_2 = L10_2 .. L11_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "striano_ragdoll:apply"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = DoesEntityExist
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_ridehorse
    L2_2 = L1_2
    L1_2 = L1_2.myHorseHandler
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 then
      L1_2 = IsEntityAttached
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsEntityDead
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedInAnyVehicle
          L2_2 = L0_2
          L3_2 = false
          L1_2 = L1_2(L2_2, L3_2)
          if not L1_2 then
            L1_2 = IsPedRagdoll
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = SetPedToRagdoll
              L2_2 = L0_2
              L3_2 = 1500
              L4_2 = 1500
              L5_2 = 0
              L6_2 = false
              L7_2 = false
              L8_2 = false
              L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
              L1_2 = SetPedToRagdoll
              L2_2 = exports
              L2_2 = L2_2.striano_ridehorse
              L3_2 = L2_2
              L2_2 = L2_2.myHorseHandler
              L2_2 = L2_2(L3_2)
              L3_2 = 5500
              L4_2 = 5500
              L5_2 = 0
              L6_2 = false
              L7_2 = false
              L8_2 = false
              L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
            end
          end
        end
      end
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = {}
L28_1[24] = "~INPUT_ATTACK~"
L28_1[25] = "~INPUT_AIM~"
L28_1[45] = "~INPUT_RELOAD~"
L28_1[44] = "~INPUT_COVER~"
L28_1[21] = "~INPUT_SPRINT~"
L28_1[22] = "~INPUT_JUMP~"
L28_1[32] = "~INPUT_MOVE_UP_ONLY~"
L28_1[33] = "~INPUT_MOVE_DOWN_ONLY~"
L28_1[38] = "~INPUT_PICKUP~"
L28_1[34] = "~INPUT_MOVE_LEFT_ONLY~"
L28_1[35] = "~INPUT_MOVE_RIGHT_ONLY~"
L28_1[23] = "~INPUT_ENTER~"
L28_1[73] = "~INPUT_VEH_DUCK~"
L28_1[166] = "~INPUT_SELECT_CHARACTER_MICHAEL~"
L29_1 = 288
L28_1[L29_1] = "~INPUT_REPLAY_START_STOP_RECORDING~"
InputNames = L28_1
L28_1 = nil
L29_1 = 0
function L30_1(A0_2)
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
  L2_2 = L28_1
  if L2_2 == A0_2 then
    L2_2 = L29_1
    L2_2 = L1_2 - L2_2
    L3_2 = 2000
    if not (L2_2 >= L3_2) then
      goto lbl_26
    end
  end
  L28_1 = A0_2
  L29_1 = L1_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Off_High"
  L5_2 = "MP_RADIO_SFX"
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  ::lbl_26::
end
function L31_1(A0_2, A1_2)
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
  L4_2 = L30_1
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
ShowInstructionalButtons = L31_1
InstructionalHintToken = 0
function L31_1(A0_2, A1_2, A2_2)
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
  L6_2 = L30_1
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
ShowInstructionalButtonsTimed = L31_1
L31_1 = AddEventHandler
L32_1 = "onResourceStop"
function L33_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = StrianoTrails
  L2_2 = {}
  L1_2.instances = L2_2
  L1_2 = StrianoTrails
  L2_2 = {}
  L1_2.segments = L2_2
end
L31_1(L32_1, L33_1)
