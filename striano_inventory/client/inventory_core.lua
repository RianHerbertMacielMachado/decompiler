local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1
function L0_1(A0_2)
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
ButtonMessageH = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
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
draw = L0_1
L0_1 = false
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if L0_2 then
    return
  end
  L0_2 = true
  L0_1 = L0_2
  L0_2 = SetTimeout
  L1_2 = 500
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = false
    L0_1 = L0_3
    L0_3 = currentInvName
    if not L0_3 then
      return
    end
    L0_3 = type
    L1_3 = Items3D
    L0_3 = L0_3(L1_3)
    if "table" ~= L0_3 then
      return
    end
    L0_3 = {}
    L1_3 = pairs
    L2_3 = Items3D
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.uid
      if L7_3 then
        L7_3 = L6_3.item
        if L7_3 then
          L7_3 = #L0_3
          L7_3 = L7_3 + 1
          L8_3 = {}
          L9_3 = L6_3.uid
          L8_3.uid = L9_3
          L9_3 = L6_3.item
          L8_3.item = L9_3
          L9_3 = L6_3.count
          if not L9_3 then
            L9_3 = 1
          end
          L8_3.count = L9_3
          L9_3 = L6_3.meta
          L8_3.meta = L9_3
          L9_3 = L6_3.off
          L8_3.off = L9_3
          L9_3 = L6_3.rot
          L8_3.rot = L9_3
          L0_3[L7_3] = L8_3
        end
      end
    end
    L1_3 = TriggerServerEvent
    L2_3 = "inv3d:saveItems"
    L3_3 = currentInvName
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
  end
  L0_2(L1_2, L2_2)
end
SaveCurrentInv3D = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
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
  else
    L2_2 = print
    L3_2 = "Una delle 2 entity non esiste per girarla (makeEntityFaceEntity)."
    L2_2(L3_2)
  end
end
makeEntityFaceEntity = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = A0_2
  L6_2 = "|"
  L7_2 = "~"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2 = L4_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 3000
    while true do
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      if not (L1_3 > L2_3) then
        break
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = nil
      L3_3 = A2_2
      if L3_3 then
        L2_3 = A2_2
      else
        L3_3 = A1_2
        if L3_3 then
          L3_3 = A1_2
          if 0 ~= L3_3 then
            L3_3 = DoesEntityExist
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            if not L3_3 then
              L3_3 = NetworkDoesNetworkIdExist
              L4_3 = A1_2
              L3_3 = L3_3(L4_3)
              if L3_3 then
                L3_3 = NetToEnt
                L4_3 = A1_2
                L3_3 = L3_3(L4_3)
                A1_2 = L3_3
              end
            end
            L3_3 = DoesEntityExist
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            if not L3_3 then
              return
            end
            L3_3 = IsEntityAPed
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L3_3 = IsPedFatallyInjured
              L4_3 = A1_2
              L3_3 = L3_3(L4_3)
              if L3_3 then
                return
              end
            end
            L3_3 = GetEntityCoords
            L4_3 = A1_2
            L3_3 = L3_3(L4_3)
            L2_3 = L3_3
        end
        else
          L3_3 = GetEntityCoords
          L4_3 = PlayerPedId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L2_3 = L3_3
        end
      end
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      L3_3 = L3_3 - L0_3
      L4_3 = L3_3 / L1_3
      L5_3 = L4_3 * 0.3
      L5_3 = 0.5 + L5_3
      L6_3 = DrawText3D
      L7_3 = L2_3.x
      L8_3 = L2_3.y
      L9_3 = L2_3.z
      L9_3 = L9_3 + L5_3
      L10_3 = A0_2
      L11_3 = A3_2
      if not L11_3 then
        L11_3 = 0.45
      end
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    end
  end
  L4_2(L5_2)
end
testo3d = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = 3.0
  if nil ~= A3_2 then
    L5_2 = A3_2
  end
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestNamedPtfxAsset
    L7_2 = A0_2
    L6_2(L7_2)
  end
  while true do
    L6_2 = HasNamedPtfxAssetLoaded
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = SetPtfxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if nil ~= A4_2 then
    L6_2 = A4_2
  end
  L7_2 = StartParticleFxLoopedAtCoord
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L6_2.x
  L11_2 = L6_2.y
  L12_2 = L6_2.z
  L13_2 = L5_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  return L7_2
end
PlayEffectTutorial = L1_1
L1_1 = 0.0
L2_1 = 55.0
L3_1 = 12.0
L4_1 = 0.2
L5_1 = 0.5
lastCursorY = 0.5
lastCursorX = L5_1
mergeable = false
L5_1 = false
L6_1 = 0
L7_1 = nil
L8_1 = 0
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
isRuntimeInv = L9_1
L9_1 = {}
L9_1.center = nil
L9_1.f = nil
L9_1.r = nil
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = getFrontPoint
  L2_2 = L0_2
  L3_2 = FORWARD_DIST
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetEntityForwardVector
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityRightVector
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L9_1.center = L1_2
  L9_1.f = L2_2
  L9_1.r = L3_2
end
UpdateInvBasis = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = vector3
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
v3 = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = v3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 + L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
vadd = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = v3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
vsub = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = v3
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
vmul = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L8_2 = DrawPoly
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A0_2.z
  L12_2 = A1_2.x
  L13_2 = A1_2.y
  L14_2 = A1_2.z
  L15_2 = A2_2.x
  L16_2 = A2_2.y
  L17_2 = A2_2.z
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L8_2 = DrawPoly
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = A0_2.z
  L12_2 = A2_2.x
  L13_2 = A2_2.y
  L14_2 = A2_2.z
  L15_2 = A3_2.x
  L16_2 = A3_2.y
  L17_2 = A3_2.z
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
end
drawQuad = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L2_2 = invOpen
  if not L2_2 then
    return
  end
  L2_2 = L9_1
  if L2_2 then
    L2_2 = L9_1.center
    if L2_2 then
      L2_2 = L9_1.r
      if L2_2 then
        L2_2 = L9_1.f
        if L2_2 then
          goto lbl_18
        end
      end
    end
  end
  do return end
  ::lbl_18::
  L2_2 = L9_1.center
  L3_2 = L9_1.r
  L4_2 = L9_1.f
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1.1
  end
  L6_2 = tonumber
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.35
  end
  L7_2 = vadd
  L8_2 = vadd
  L9_2 = L2_2
  L10_2 = vmul
  L11_2 = L3_2
  L12_2 = -L5_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L10_2(L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L9_2 = vmul
  L10_2 = L4_2
  L11_2 = -L5_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L9_2(L10_2, L11_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L8_2 = vadd
  L9_2 = vadd
  L10_2 = L2_2
  L11_2 = vmul
  L12_2 = L3_2
  L13_2 = L5_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L10_2 = vmul
  L11_2 = L4_2
  L12_2 = -L5_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L10_2(L11_2, L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L9_2 = vadd
  L10_2 = vadd
  L11_2 = L2_2
  L12_2 = vmul
  L13_2 = L3_2
  L14_2 = L5_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L12_2(L13_2, L14_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L11_2 = vmul
  L12_2 = L4_2
  L13_2 = L5_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L10_2 = vadd
  L11_2 = vadd
  L12_2 = L2_2
  L13_2 = vmul
  L14_2 = L3_2
  L15_2 = -L5_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L13_2(L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L12_2 = vmul
  L13_2 = L4_2
  L14_2 = L5_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L12_2(L13_2, L14_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L11_2 = v3
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = L6_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = vadd
  L13_2 = L7_2
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = vadd
  L14_2 = L8_2
  L15_2 = L11_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = vadd
  L15_2 = L9_2
  L16_2 = L11_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = vadd
  L16_2 = L10_2
  L17_2 = L11_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = DrawLine
  L17_2 = L7_2.x
  L18_2 = L7_2.y
  L19_2 = L7_2.z
  L20_2 = L8_2.x
  L21_2 = L8_2.y
  L22_2 = L8_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 120
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L8_2.x
  L18_2 = L8_2.y
  L19_2 = L8_2.z
  L20_2 = L9_2.x
  L21_2 = L9_2.y
  L22_2 = L9_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 120
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L9_2.x
  L18_2 = L9_2.y
  L19_2 = L9_2.z
  L20_2 = L10_2.x
  L21_2 = L10_2.y
  L22_2 = L10_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 120
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L10_2.x
  L18_2 = L10_2.y
  L19_2 = L10_2.z
  L20_2 = L7_2.x
  L21_2 = L7_2.y
  L22_2 = L7_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 120
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L7_2.x
  L18_2 = L7_2.y
  L19_2 = L7_2.z
  L20_2 = L12_2.x
  L21_2 = L12_2.y
  L22_2 = L12_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 80
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L8_2.x
  L18_2 = L8_2.y
  L19_2 = L8_2.z
  L20_2 = L13_2.x
  L21_2 = L13_2.y
  L22_2 = L13_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 80
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L9_2.x
  L18_2 = L9_2.y
  L19_2 = L9_2.z
  L20_2 = L14_2.x
  L21_2 = L14_2.y
  L22_2 = L14_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 80
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = DrawLine
  L17_2 = L10_2.x
  L18_2 = L10_2.y
  L19_2 = L10_2.z
  L20_2 = L15_2.x
  L21_2 = L15_2.y
  L22_2 = L15_2.z
  L23_2 = 255
  L24_2 = 255
  L25_2 = 255
  L26_2 = 80
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L16_2 = 80
  L17_2 = 180
  L18_2 = 255
  L19_2 = 45
  L20_2 = drawQuad
  L21_2 = L7_2
  L22_2 = L8_2
  L23_2 = L13_2
  L24_2 = L12_2
  L25_2 = L16_2
  L26_2 = L17_2
  L27_2 = L18_2
  L28_2 = L19_2
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L20_2 = drawQuad
  L21_2 = L8_2
  L22_2 = L9_2
  L23_2 = L14_2
  L24_2 = L13_2
  L25_2 = L16_2
  L26_2 = L17_2
  L27_2 = L18_2
  L28_2 = L19_2
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L20_2 = drawQuad
  L21_2 = L9_2
  L22_2 = L10_2
  L23_2 = L15_2
  L24_2 = L14_2
  L25_2 = L16_2
  L26_2 = L17_2
  L27_2 = L18_2
  L28_2 = L19_2
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L20_2 = drawQuad
  L21_2 = L10_2
  L22_2 = L7_2
  L23_2 = L12_2
  L24_2 = L15_2
  L25_2 = L16_2
  L26_2 = L17_2
  L27_2 = L18_2
  L28_2 = L19_2
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L20_2 = drawQuad
  L21_2 = L12_2
  L22_2 = L13_2
  L23_2 = L14_2
  L24_2 = L15_2
  L25_2 = L16_2
  L26_2 = L17_2
  L27_2 = L18_2
  L28_2 = 18
  L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
end
DrawInvLimitWalls = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 1.0
  end
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = A1_2
  end
  L3_2 = A0_2.x
  if A1_2 < L3_2 then
    A0_2.x = A1_2
  end
  L3_2 = A0_2.x
  L4_2 = -A1_2
  if L3_2 < L4_2 then
    L3_2 = -A1_2
    A0_2.x = L3_2
  end
  L3_2 = A0_2.y
  if A2_2 < L3_2 then
    A0_2.y = A2_2
  end
  L3_2 = A0_2.y
  L4_2 = -A2_2
  if L3_2 < L4_2 then
    L3_2 = -A2_2
    A0_2.y = L3_2
  end
end
clampOffsetSquare = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = spawned
  if not L1_2 then
    L1_2 = {}
    spawned = L1_2
  end
  L1_2 = uidByEnt
  if not L1_2 then
    L1_2 = {}
    uidByEnt = L1_2
  end
  L1_2 = spawned
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = L1_2
      L4_2 = true
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = DeleteEntity
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
  if L1_2 then
    L2_2 = uidByEnt
    L2_2[L1_2] = nil
  end
  L2_2 = spawned
  L2_2[A0_2] = nil
end
deleteSpawnedUid = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Config
  L1_2 = L1_2.Items
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.Items
    L1_2 = L1_2[A0_2]
  end
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.model
  if not L2_2 then
    L2_2 = L1_2.prop
    if not L2_2 then
      L2_2 = L1_2.object
      if not L2_2 then
        L2_2 = L1_2.worldModel
      end
    end
  end
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    return L2_2
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 then
    L3_2 = joaat
    L4_2 = L2_2
    return L3_2(L4_2)
  end
  L3_2 = nil
  return L3_2
end
getItemModelHash = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = currentLayout
  if L1_2 then
    L1_2 = currentLayout
    L1_2 = L1_2[A0_2]
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.off
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = tonumber
  L4_2 = L2_2.x
  if not L4_2 then
    L4_2 = L2_2[1]
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = L2_2.y
  if not L5_2 then
    L5_2 = L2_2[2]
  end
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = L2_2.z
  if not L6_2 then
    L6_2 = L2_2[3]
  end
  L5_2 = L5_2(L6_2)
  if nil == L3_2 or nil == L4_2 or nil == L5_2 then
    L6_2 = nil
    return L6_2
  end
  L6_2 = {}
  L6_2.x = L3_2
  L6_2.y = L4_2
  L6_2.z = L5_2
  return L6_2
end
getOff = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = currentLayout
  if L1_2 then
    L1_2 = currentLayout
    L1_2 = L1_2[A0_2]
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.placed
    L2_2 = true == L2_2
  end
  return L2_2
end
isObstacle = L10_1
invOpen = false
currentInv = nil
selectedID = nil
currentWeapon = nil
currentWeaponData = nil
L10_1 = {}
instances = L10_1
L10_1 = {}
currentLayout = L10_1
L10_1 = {}
spawned = L10_1
L10_1 = {}
uidByEnt = L10_1
L10_1 = {}
instByUid = L10_1
L10_1 = {}
qtyByUid = L10_1
L10_1 = {}
L10_1.primary = 0
L10_1.secondry = 0
slotEnt = L10_1
L10_1 = {}
slotKindByEnt = L10_1
function L10_1()
  local L0_2, L1_2
  L0_2 = tostring
  L1_2 = currentInv
  if not L1_2 then
    L1_2 = ""
  end
  L0_2 = L0_2(L1_2)
  L0_2 = "player" == L0_2
  return L0_2
end
isPlayerInventory = L10_1
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = slotEnt
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = deleteEntSafe
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = slotEnt
    L6_2[L4_2] = 0
  end
  L0_2 = {}
  slotKindByEnt = L0_2
end
clearSlotObjects = L10_1
L10_1 = 0.02
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = SafeDoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = spawned
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 ~= A0_2 then
      L7_2 = SafeDoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = SetEntityNoCollisionEntity
        L8_2 = A0_2
        L9_2 = L6_2
        L10_2 = true
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
ApplyNoCollisionForMoving = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = SafeDoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = spawned
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 ~= A0_2 then
      L7_2 = SafeDoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = SetEntityNoCollisionEntity
        L8_2 = A0_2
        L9_2 = L6_2
        L10_2 = false
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
RestoreCollisionAfterDrag = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Holders
  if L1_2 then
    L1_2 = Holders
    L1_2 = L1_2[A0_2]
  end
  if L1_2 then
    L2_2 = L1_2.item
    if L2_2 then
      L2_2 = Config
      L2_2 = L2_2.Items
      L3_2 = L1_2.item
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L3_2 = L2_2.model
        if L3_2 then
          L3_2 = type
          L4_2 = L2_2.model
          L3_2 = L3_2(L4_2)
          if "number" == L3_2 then
            L3_2 = L2_2.model
            if L3_2 then
              goto lbl_31
            end
          end
          L3_2 = GetHashKey
          L4_2 = L2_2.model
          L3_2 = L3_2(L4_2)
          ::lbl_31::
          L4_2 = {}
          L4_2.x = 0.0
          L4_2.y = 0.0
          L4_2.z = 180.0
          L5_2 = L3_2
          L6_2 = L4_2
          L7_2 = L1_2.item
          return L5_2, L6_2, L7_2
        end
      end
    end
  end
  L2_2 = GetHashKey
  L3_2 = "prop_holster_01"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L3_2.x = 0.0
  L3_2.y = 0.0
  L3_2.z = 0.0
  L4_2 = nil
  return L2_2, L3_2, L4_2
end
getSlotModelAndRot = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = getSlotModelAndRot
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = RequestModel
  L5_2 = L2_2
  L4_2(L5_2)
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
  end
  L4_2 = CreateObjectNoOffset
  L5_2 = L2_2
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityInvincible
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityAlpha
  L6_2 = L4_2
  L7_2 = 255
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityVisible
  L6_2 = L4_2
  L7_2 = true
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityRotation
  L6_2 = L4_2
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = 2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityCompletelyDisableCollision
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = slotEnt
  L5_2[A0_2] = L4_2
  L5_2 = slotKindByEnt
  L5_2[L4_2] = A0_2
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = L2_2
  L5_2(L6_2)
  return L4_2
end
spawnHolsterSlot = L11_1
tappeto = nil
function L11_1()
  local L0_2, L1_2
end
SpawnHolsterSlotsInInv = L11_1
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = false
  L1_2 = hoverEnt
  if L1_2 then
    L1_2 = slotKindByEnt
    if L1_2 then
      L1_2 = slotKindByEnt
      L2_2 = hoverEnt
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L0_2 = true
      end
    end
  end
  if L0_2 then
    L1_2 = L3_1
    if L1_2 then
      goto lbl_20
    end
  end
  L1_2 = L2_1
  ::lbl_20::
  L2_2 = L1_1
  L3_2 = GetFrameTime
  L3_2 = L3_2()
  L3_2 = L1_2 * L3_2
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 % 360.0
  L1_1 = L2_2
  L2_2 = pairs
  L3_2 = slotEnt
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if 0 ~= L7_2 then
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = -12.0
        L9_2 = 0.0
        L10_2 = L1_1
        L11_2 = SetEntityRotation
        L12_2 = L7_2
        L13_2 = L8_2
        L14_2 = L9_2
        L15_2 = L10_2
        L16_2 = 2
        L17_2 = true
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      end
    end
  end
end
UpdateHolsterSlotsSpin = L11_1
mybagid = 0
mybagmodel = ""
propmybag = nil
L11_1 = exports
L12_1 = "mybagid"
function L13_1()
  local L0_2, L1_2
  L0_2 = mybagid
  return L0_2
end
L11_1(L12_1, L13_1)
L11_1 = exports
L12_1 = "mybagmodel"
function L13_1()
  local L0_2, L1_2
  L0_2 = mybagmodel
  return L0_2
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = itemByUid
  if L1_2 then
    L1_2 = itemByUid
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = itemByUid
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L1_2 = pairs
  L2_2 = instances
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = tostring
      L8_2 = L6_2.uid
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        L7_2 = L6_2.item
        if not L7_2 then
          L7_2 = L6_2.name
          if not L7_2 then
            L7_2 = L6_2.itemName
          end
        end
        return L7_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
GetInventoryItemByUid = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = Config
  L2_2 = L2_2.ModelToItem
  L2_2 = L2_2[L1_2]
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.weaponValid
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L2_2 = "melee_weapon"
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.Items
    L3_2 = L3_2[L2_2]
  end
  if L3_2 then
    L4_2 = type
    L5_2 = L3_2.onUse
    L4_2 = L4_2(L5_2)
    if "function" == L4_2 then
      goto lbl_36
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_36::
  L4_2 = L3_2.onUse
  L5_2 = L2_2
  return L4_2, L5_2
end
GetOnUseFromModel = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if 0 ~= A0_2 then
    L1_2 = SafeDoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = uidByEnt
  if L1_2 then
    L1_2 = uidByEnt
    L1_2 = L1_2[A0_2]
  end
  if not L1_2 then
    return
  end
  L2_2 = GetInventoryItemByUid
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.Items
    L3_2 = L3_2[L2_2]
  end
  L4_2 = nil
  L5_2 = L2_2
  L6_2 = L3_2
  if L3_2 then
    L7_2 = L3_2.UseThis
    if true == L7_2 then
      L7_2 = type
      L8_2 = L3_2.onUse
      L7_2 = L7_2(L8_2)
      if "function" == L7_2 then
        L4_2 = L3_2.onUse
        L5_2 = L2_2
        L6_2 = L3_2
    end
  end
  else
    L7_2 = GetEntityModel
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetOnUseFromModel
    L9_2 = L7_2
    L8_2, L9_2 = L8_2(L9_2)
    L5_2 = L9_2
    L4_2 = L8_2
    L6_2 = L5_2 or L6_2
    if L5_2 then
      L8_2 = Config
      L8_2 = L8_2.Items
      L6_2 = L8_2[L5_2]
    end
  end
  if not L4_2 then
    L7_2 = ExecuteCommand
    L8_2 = "prova3 Not usable."
    L7_2(L8_2)
    L7_2 = L3_2.notRemove
    if nil == L7_2 then
      L7_2 = TriggerServerEvent
      L8_2 = "inv3d:giveItem"
      L9_2 = GetPlayerServerId
      L10_2 = PlayerId
      L10_2, L11_2, L12_2 = L10_2()
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L10_2 = currentInv
      if not L10_2 then
        L10_2 = "player"
      end
      L11_2 = L2_2
      L12_2 = qtyByUid
      L12_2 = L12_2[L1_2]
      if not L12_2 then
        L12_2 = 1
      end
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    return
  end
  L7_2 = {}
  L7_2.entity = A0_2
  L7_2.item = L5_2
  L7_2.realItem = L2_2
  L7_2.uid = L1_2
  L8_2 = qtyByUid
  L8_2 = L8_2[L1_2]
  if not L8_2 then
    L8_2 = 1
  end
  L7_2.count = L8_2
  L8_2 = currentInv
  L7_2.inv = L8_2
  if "melee_weapon" == L5_2 or "buffer" == L5_2 then
    L8_2 = TriggerServerEvent
    L9_2 = "inv3d:removeItem"
    L10_2 = currentInv
    L11_2 = L7_2.uid
    L12_2 = qtyByUid
    L12_2 = L12_2[L1_2]
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L8_2 = closeInventory
  L8_2()
  L8_2 = L4_2
  L9_2 = L7_2
  L8_2(L9_2)
end
UseEntityInInventory = L11_1
function L11_1()
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
  return L0_2
end
Giocatori = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Giocatori
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = false
  L5_2 = PlayerId
  L5_2 = L5_2()
  L6_2 = 1
  L7_2 = #L1_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = GetPlayerPed
    L11_2 = L1_2[L9_2]
    L10_2 = L10_2(L11_2)
    L11_2 = L1_2[L9_2]
    if L11_2 ~= L5_2 then
      L11_2 = GetEntityCoords
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = vector3
      L13_2 = A0_2.x
      L14_2 = A0_2.y
      L15_2 = A0_2.z
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L12_2 = L11_2 - L12_2
      L12_2 = #L12_2
      if -1 == L2_2 or L2_2 > L12_2 then
        L3_2 = L1_2[L9_2]
        L2_2 = L12_2
      end
    end
  end
  L6_2 = L3_2
  L7_2 = L2_2
  return L6_2, L7_2
end
PlayerVicinoPos = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = NoFloodFun
  if not L3_2 then
    L3_2 = duskevent
    if not L3_2 then
      if not A0_2 then
        L3_2 = {}
        A0_2 = L3_2
      end
      L3_2 = A0_2.metadata
      if not L3_2 then
        L3_2 = A0_2.meta
        if not L3_2 then
          L3_2 = {}
        end
      end
      A0_2.metadata = L3_2
      L3_2 = A0_2.metadata
      A0_2.meta = L3_2
      L3_2 = currentWeaponData
      if not L3_2 then
        L3_2 = A0_2
      end
      currentWeaponData = L3_2
      NoFloodFun = true
      L3_2 = tostring
      L4_2 = A0_2.name
      L3_2 = L3_2(L4_2)
      L4_2 = 0
      L5_2 = "reaction@intimidation@1h"
      L6_2 = "intro"
      L7_2 = "outro"
      L8_2 = L5_2
      L9_2 = HasAnimDictLoaded
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = RequestAnimDict
        L10_2 = L8_2
        L9_2(L10_2)
        while true do
          L9_2 = HasAnimDictLoaded
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            break
          end
          L9_2 = Wait
          L10_2 = 10
          L9_2(L10_2)
        end
      end
      L9_2 = currentWeapon
      if L9_2 == L3_2 then
        L9_2 = IsPedInAnyVehicle
        L10_2 = L2_2
        L11_2 = true
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = IsPedInAnyVehicle
          L10_2 = L2_2
          L11_2 = false
          L9_2 = L9_2(L10_2, L11_2)
          if not L9_2 then
            L9_2 = TaskPlayAnim
            L10_2 = L2_2
            L11_2 = L5_2
            L12_2 = L7_2
            L13_2 = 8.0
            L14_2 = 8.0
            L15_2 = -1
            L16_2 = 50
            L17_2 = 0
            L18_2 = false
            L19_2 = false
            L20_2 = false
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            L9_2 = Wait
            L10_2 = 1
            L9_2(L10_2)
            while true do
              L9_2 = IsEntityPlayingAnim
              L10_2 = L2_2
              L11_2 = L5_2
              L12_2 = L7_2
              L13_2 = 3
              L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
              if not (L9_2 and L4_2 < 50) then
                break
              end
              L9_2 = Wait
              L10_2 = 0
              L9_2(L10_2)
              L4_2 = L4_2 + 1
              L9_2 = SetEntityAnimSpeed
              L10_2 = L2_2
              L11_2 = L5_2
              L12_2 = L7_2
              L13_2 = 1.5
              L9_2(L10_2, L11_2, L12_2, L13_2)
            end
          end
        end
        L9_2 = Wait
        L10_2 = 200
        L9_2(L10_2)
        L9_2 = exports
        L9_2 = L9_2.xsound
        L10_2 = L9_2
        L9_2 = L9_2.PlayUrlPos
        L11_2 = "sounds/bag2"
        L12_2 = "sounds/bag2.mp3"
        L13_2 = 0.03
        L14_2 = GetEntityCoords
        L15_2 = L2_2
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2)
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L9_2 = SetCurrentPedWeapon
        L10_2 = L2_2
        L11_2 = -1569615261
        L12_2 = true
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = Wait
        L10_2 = 200
        L9_2(L10_2)
        L9_2 = ClearPedTasks
        L10_2 = L2_2
        L9_2(L10_2)
        L9_2 = currentWeaponData
        if not L9_2 then
          L9_2 = A0_2
        end
        L10_2 = L9_2.metadata
        if not L10_2 then
          L10_2 = L9_2.meta
          if not L10_2 then
            L10_2 = {}
          end
        end
        L9_2.metadata = L10_2
        L10_2 = L9_2.metadata
        L9_2.meta = L10_2
        L10_2 = GetHashKey
        L11_2 = L3_2
        L10_2 = L10_2(L11_2)
        L11_2 = GetAmmoInPedWeapon
        L12_2 = L2_2
        L13_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = GetAmmoInClip
        L13_2 = L2_2
        L14_2 = L10_2
        L12_2, L13_2 = L12_2(L13_2, L14_2)
        if not L12_2 or not L13_2 then
          L13_2 = 0
        end
        L14_2 = L9_2.metadata
        L14_2.ammoTotal = L11_2
        L14_2 = L9_2.metadata
        L14_2.ammoClip = L13_2
        if "primary" == A1_2 or "secondry" == A1_2 then
          L14_2 = TriggerServerEvent
          L15_2 = "inv3d:updateHolderMeta"
          L16_2 = A1_2
          L17_2 = L9_2.metadata
          L14_2(L15_2, L16_2, L17_2)
        end
        L14_2 = RemoveAllPedWeapons
        L15_2 = L2_2
        L16_2 = true
        L14_2(L15_2, L16_2)
        currentWeapon = nil
        currentWeaponData = nil
        L14_2 = ExecuteCommand
        L15_2 = "guidabase"
        L14_2(L15_2)
      elseif "weapon_stickybomb" == L3_2 or "weapon_pipebomb" == L3_2 or "weapon_smokegrenade" == L3_2 or "weapon_flare" == L3_2 or "weapon_proxmine" == L3_2 or "weapon_ball" == L3_2 or "weapon_snowball" == L3_2 or "weapon_molotov" == L3_2 or "weapon_grenade" == L3_2 or "weapon_bzgas" == L3_2 then
        L9_2 = IsPedInAnyVehicle
        L10_2 = L2_2
        L11_2 = true
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = TaskPlayAnim
          L10_2 = L2_2
          L11_2 = L5_2
          L12_2 = L6_2
          L13_2 = 8.0
          L14_2 = 8.0
          L15_2 = -1
          L16_2 = 50
          L17_2 = 0
          L18_2 = false
          L19_2 = false
          L20_2 = false
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L9_2 = Wait
          L10_2 = 1
          L9_2(L10_2)
          while true do
            L9_2 = IsEntityPlayingAnim
            L10_2 = L2_2
            L11_2 = L5_2
            L12_2 = L6_2
            L13_2 = 3
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
            if not (L9_2 and L4_2 < 50) then
              break
            end
            L9_2 = Wait
            L10_2 = 0
            L9_2(L10_2)
            L4_2 = L4_2 + 1
            L9_2 = SetEntityAnimSpeed
            L10_2 = L2_2
            L11_2 = L5_2
            L12_2 = L6_2
            L13_2 = 1.5
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
        L9_2 = Wait
        L10_2 = 250
        L9_2(L10_2)
        L9_2 = "sounds/bag1"
        L10_2 = L9_2
        L11_2 = ".mp3"
        L10_2 = L10_2 .. L11_2
        L11_2 = exports
        L11_2 = L11_2.xsound
        L12_2 = L11_2
        L11_2 = L11_2.PlayUrlPos
        L13_2 = L9_2
        L14_2 = L10_2
        L15_2 = 0.05
        L16_2 = GetEntityCoords
        L17_2 = L2_2
        L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L11_2 = Wait
        L12_2 = 1
        L11_2(L12_2)
        L11_2 = GiveWeaponToPed
        L12_2 = L2_2
        L13_2 = GetHashKey
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = false
        L16_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        L11_2 = SetCurrentPedWeapon
        L12_2 = L2_2
        L13_2 = GetHashKey
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = true
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = GetHashKey
        L12_2 = L3_2
        L11_2 = L11_2(L12_2)
        L12_2 = SetPedAmmo
        L13_2 = L2_2
        L14_2 = L11_2
        L15_2 = 0
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = SetAmmoInClip
        L13_2 = L2_2
        L14_2 = L11_2
        L15_2 = 0
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = Wait
        L13_2 = 250
        L12_2(L13_2)
        L12_2 = ClearPedTasks
        L13_2 = L2_2
        L12_2(L13_2)
        currentWeapon = L3_2
        L12_2 = CreateThread
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = IsPedShooting
            L1_3 = L2_2
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = false
              L1_3 = currentWeapon
              if "weapon_stickybomb" ~= L1_3 then
                L1_3 = currentWeapon
                if "weapon_pipebomb" ~= L1_3 then
                  L1_3 = currentWeapon
                  if "weapon_smokegrenade" ~= L1_3 then
                    L1_3 = currentWeapon
                    if "weapon_flare" ~= L1_3 then
                      L1_3 = currentWeapon
                      if "weapon_proxmine" ~= L1_3 then
                        L1_3 = currentWeapon
                        if "weapon_ball" ~= L1_3 then
                          L1_3 = currentWeapon
                          if "weapon_snowball" ~= L1_3 then
                            L1_3 = currentWeapon
                            if "weapon_molotov" ~= L1_3 then
                              L1_3 = currentWeapon
                              if "weapon_grenade" ~= L1_3 then
                                L1_3 = currentWeapon
                                if "weapon_bzgas" ~= L1_3 then
                                  goto lbl_38
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
              L0_3 = true
              ::lbl_38::
              if L0_3 then
                currentWeapon = nil
                L1_3 = SetHolder
                L2_3 = A1_2
                L3_3 = nil
                L1_3(L2_3, L3_3)
                L1_3 = UpdateHolderProps
                L1_3()
              end
              break
            end
            L0_3 = Wait
            L1_3 = 1
            L0_3(L1_3)
          end
        end
        L12_2(L13_2)
      else
        L9_2 = IsPedInAnyVehicle
        L10_2 = L2_2
        L11_2 = true
        L9_2 = L9_2(L10_2, L11_2)
        if not L9_2 then
          L9_2 = TaskPlayAnim
          L10_2 = L2_2
          L11_2 = L5_2
          L12_2 = L6_2
          L13_2 = 8.0
          L14_2 = 8.0
          L15_2 = -1
          L16_2 = 50
          L17_2 = 0
          L18_2 = false
          L19_2 = false
          L20_2 = false
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L9_2 = Wait
          L10_2 = 1
          L9_2(L10_2)
          while true do
            L9_2 = IsEntityPlayingAnim
            L10_2 = L2_2
            L11_2 = L5_2
            L12_2 = L6_2
            L13_2 = 3
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
            if not (L9_2 and L4_2 < 50) then
              break
            end
            L9_2 = Wait
            L10_2 = 0
            L9_2(L10_2)
            L4_2 = L4_2 + 1
            L9_2 = SetEntityAnimSpeed
            L10_2 = L2_2
            L11_2 = L5_2
            L12_2 = L6_2
            L13_2 = 1.5
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
        L9_2 = Wait
        L10_2 = 250
        L9_2(L10_2)
        L9_2 = "sounds/bag1"
        L10_2 = L9_2
        L11_2 = ".mp3"
        L10_2 = L10_2 .. L11_2
        L11_2 = exports
        L11_2 = L11_2.xsound
        L12_2 = L11_2
        L11_2 = L11_2.PlayUrlPos
        L13_2 = L9_2
        L14_2 = L10_2
        L15_2 = 0.03
        L16_2 = GetEntityCoords
        L17_2 = L2_2
        L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L11_2 = Wait
        L12_2 = 1
        L11_2(L12_2)
        L11_2 = GiveWeaponToPed
        L12_2 = L2_2
        L13_2 = GetHashKey
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = false
        L16_2 = false
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        L11_2 = SetPedAmmo
        L12_2 = L2_2
        L13_2 = GetHashKey
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = ammo
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = SetCurrentPedWeapon
        L12_2 = L2_2
        L13_2 = GetHashKey
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        L14_2 = true
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = Wait
        L12_2 = 25
        L11_2(L12_2)
        L11_2 = exports
        L11_2 = L11_2.gs_weaponcustomizer
        L12_2 = L11_2
        L11_2 = L11_2.LoadHeldWeaponAttachments
        L13_2 = true
        L11_2, L12_2 = L11_2(L12_2, L13_2)
        L13_2 = Wait
        L14_2 = 250
        L13_2(L14_2)
        L13_2 = ClearPedTasks
        L14_2 = L2_2
        L13_2(L14_2)
        currentWeapon = L3_2
      end
      L9_2 = RemoveAnimDict
      L10_2 = L5_2
      L9_2(L10_2)
      L9_2 = Wait
      L10_2 = 25
      L9_2(L10_2)
      NoFloodFun = false
      L9_2 = UpdateHolderProps
      L9_2()
      L9_2 = ExecuteCommand
      L10_2 = "guidaArmi"
      L9_2(L10_2)
      L9_2 = Wait
      L10_2 = 25
      L9_2(L10_2)
      L9_2 = IsDisabledControlPressed
      L10_2 = 0
      L11_2 = 25
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = IsPedInAnyVehicle
        L10_2 = L2_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = ExecuteCommand
          L10_2 = "guardaarma"
          L9_2(L10_2)
        end
      end
      L9_2 = currentWeapon
      if nil ~= L9_2 then
        L9_2 = GetWeaponClipSize
        L10_2 = L3_2
        L9_2 = L9_2(L10_2)
        L10_2 = GetAmmoInPedWeapon
        L11_2 = L2_2
        L12_2 = L3_2
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = testo3dAmmo
        L12_2 = ""
        L13_2 = L10_2
        L14_2 = "/"
        L15_2 = L9_2
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
        L11_2(L12_2)
        L11_2 = PlaySoundFrontend
        L12_2 = -1
        L13_2 = "PICK_UP_WEAPON"
        L14_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
        L15_2 = 1
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = faiAnim
        L12_2 = "anim@char_rld_pistol"
        L13_2 = "pistol_reload"
        L14_2 = 1350
        L15_2 = 49
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
    end
  end
end
useWeapon = L11_1
L11_1 = CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 1500
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = TriggerServerEvent
  L2_2 = "inv3d:requestHolders"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L11_1(L12_1)
L11_1 = RegisterNetEvent
L12_1 = "inv3d:holdersResult"
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  Holders = L1_2
  L1_2 = UpdateHolderProps
  L1_2()
end
L11_1(L12_1, L13_1)
L11_1 = Holders
if not L11_1 then
  L11_1 = {}
end
Holders = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  if A1_2 then
    L2_2 = A1_2.item
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = Config
  L2_2 = L2_2.Items
  L3_2 = A1_2.item
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.weapon
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.notify
  L5_2 = "~r~This is not a fire weapon."
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_27::
  L3_2 = {}
  L4_2 = A1_2.item
  L3_2.name = L4_2
  L4_2 = A1_2.item
  L3_2.label = L4_2
  L4_2 = A1_2.metadata
  if not L4_2 then
    L4_2 = A1_2.meta
    if not L4_2 then
      L4_2 = {}
    end
  end
  L3_2.metadata = L4_2
  L4_2 = Holders
  L4_2[A0_2] = L3_2
  L4_2 = TriggerServerEvent
  L5_2 = "inv3d:setHolder"
  L6_2 = A0_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = testo3d
  L5_2 = "~g~Fire weapon assigned: %s."
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
SetHolder = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if nil == A0_2 then
    L1_2 = print
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
      goto lbl_32
    end
  end
  L2_2 = print
  L3_2 = "MODEL NOT EXIST "
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_32::
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
      L3_2 = print
      L4_2 = "NOT EXIST (time out) "
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      return
    end
  end
end
RequestModelStriano = L11_1
L11_1 = false
L12_1 = exports
L13_1 = "duskevent_on"
function L14_1()
  local L0_2, L1_2
  L0_2 = true
  L11_1 = L0_2
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "duskevent_off"
function L14_1()
  local L0_2, L1_2
  L0_2 = false
  L11_1 = L0_2
end
L12_1(L13_1, L14_1)
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L11_1
    if not L0_2 then
      L0_2 = BlockWeaponWheelThisFrame
      L0_2()
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 37
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
    end
  end
end
L12_1(L13_1)
function L12_1(A0_2)
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
ButtonMessageH = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
ButtonH = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
  local L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L14_2 = RequestScaleformMovie
  L15_2 = "instructional_buttons"
  L14_2 = L14_2(L15_2)
  while true do
    L15_2 = HasScaleformMovieLoaded
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    if L15_2 then
      break
    end
    L15_2 = Wait
    L16_2 = 0
    L15_2(L16_2)
  end
  L15_2 = PushScaleformMovieFunction
  L16_2 = L14_2
  L17_2 = "CLEAR_ALL"
  L15_2(L16_2, L17_2)
  L15_2 = PopScaleformMovieFunctionVoid
  L15_2()
  L15_2 = PushScaleformMovieFunction
  L16_2 = L14_2
  L17_2 = "SET_CLEAR_SPACE"
  L15_2(L16_2, L17_2)
  L15_2 = PushScaleformMovieFunctionParameterInt
  L16_2 = 200
  L15_2(L16_2)
  L15_2 = PopScaleformMovieFunctionVoid
  L15_2()
  if A0_2 and A0_2 > -1 and A1_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 6
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A0_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A1_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A0_2 and -1 == A0_2 and A1_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 6
    L15_2(L16_2)
    L15_2 = ButtonMessageH
    L16_2 = A1_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A2_2 and A3_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 5
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A2_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A3_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A4_2 and A5_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 4
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A4_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A5_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A6_2 and A7_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 3
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A6_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A7_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A8_2 and A9_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 2
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A8_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A9_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A10_2 and A11_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 1
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 1
    L18_2 = A10_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A11_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  if A12_2 and A13_2 then
    L15_2 = PushScaleformMovieFunction
    L16_2 = L14_2
    L17_2 = "SET_DATA_SLOT"
    L15_2(L16_2, L17_2)
    L15_2 = PushScaleformMovieFunctionParameterInt
    L16_2 = 0
    L15_2(L16_2)
    L15_2 = ButtonH
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A12_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = ButtonMessageH
    L16_2 = A13_2
    L15_2(L16_2)
    L15_2 = PopScaleformMovieFunctionVoid
    L15_2()
  end
  L15_2 = PushScaleformMovieFunction
  L16_2 = L14_2
  L17_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L15_2(L16_2, L17_2)
  L15_2 = PopScaleformMovieFunctionVoid
  L15_2()
  L15_2 = PushScaleformMovieFunction
  L16_2 = L14_2
  L17_2 = "SET_BACKGROUND_COLOUR"
  L15_2(L16_2, L17_2)
  L15_2 = PushScaleformMovieFunctionParameterInt
  L16_2 = 0
  L15_2(L16_2)
  L15_2 = PushScaleformMovieFunctionParameterInt
  L16_2 = 0
  L15_2(L16_2)
  L15_2 = PushScaleformMovieFunctionParameterInt
  L16_2 = 0
  L15_2(L16_2)
  L15_2 = PushScaleformMovieFunctionParameterInt
  L16_2 = 80
  L15_2(L16_2)
  L15_2 = PopScaleformMovieFunctionVoid
  L15_2()
  L15_2 = DrawScaleformMovieFullscreen
  L16_2 = L14_2
  L15_2(L16_2)
end
infoInv = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = "number" == L1_2 and 0 ~= A0_2 and L1_2
  return L1_2
end
SafeExists = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = SafeExists
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0.08
    return L1_2
  end
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 and 0 ~= L1_2 then
    L2_2 = IsModelInCdimage
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_22
    end
  end
  L2_2 = 0.08
  do return L2_2 end
  ::lbl_22::
  L2_2 = pcall
  L3_2 = GetModelDimensions
  L4_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  if not (L2_2 and L3_2) or not L4_2 then
    L5_2 = 0.08
    return L5_2
  end
  L5_2 = L4_2.x
  L6_2 = L3_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = L4_2.y
  L7_2 = L3_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 * 0.5
  L8_2 = 0.02
  if L7_2 < L8_2 then
    L7_2 = 0.02
  end
  L8_2 = 1.5
  if L7_2 > L8_2 then
    L7_2 = 1.5
  end
  return L7_2
end
getModelRadius = L12_1
L12_1 = {}
L12_1.center = nil
L12_1.camF = nil
L12_1.camR = nil
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  if 0 == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = pcall
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = L2_2
  end
  return L3_2
end
SafeDoesEntityExist = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityForwardVector
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = vector3
  L4_2 = L1_2.x
  L5_2 = L2_2.x
  L6_2 = Config
  L6_2 = L6_2.AnchorForward
  if not L6_2 then
    L6_2 = FORWARD_DIST
  end
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L5_2 = L1_2.y
  L6_2 = L2_2.y
  L7_2 = Config
  L7_2 = L7_2.AnchorForward
  if not L7_2 then
    L7_2 = FORWARD_DIST
  end
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = L1_2.z
  L7_2 = Config
  L7_2 = L7_2.AnchorUp
  if not L7_2 then
    L7_2 = 0.15
  end
  L6_2 = L6_2 + L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
getAnchor = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = getAnchor
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityRightVector
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = vector3
  L6_2 = L2_2.x
  L7_2 = L4_2.x
  L8_2 = A1_2.x
  if not L8_2 then
    L8_2 = 0.0
  end
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L7_2 = L3_2.x
  L8_2 = A1_2.y
  if not L8_2 then
    L8_2 = 0.0
  end
  L7_2 = L7_2 * L8_2
  L6_2 = L6_2 + L7_2
  L7_2 = L2_2.y
  L8_2 = L4_2.y
  L9_2 = A1_2.x
  if not L9_2 then
    L9_2 = 0.0
  end
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.y
  L9_2 = A1_2.y
  if not L9_2 then
    L9_2 = 0.0
  end
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2.z
  L9_2 = A1_2.z
  if not L9_2 then
    L9_2 = 0.0
  end
  L8_2 = L8_2 + L9_2
  return L5_2(L6_2, L7_2, L8_2)
end
offsetToWorld = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = spawned
  L1_2 = L1_2[A0_2]
  L2_2 = spawned
  L2_2[A0_2] = nil
  L2_2 = instByUid
  L2_2[A0_2] = nil
  L2_2 = qtyByUid
  L2_2[A0_2] = nil
  L2_2 = currentLayout
  if L2_2 then
    L2_2 = currentLayout
    L2_2[A0_2] = nil
  end
  L2_2 = pairs
  L3_2 = uidByEnt
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A0_2 then
      L8_2 = uidByEnt
      L8_2[L6_2] = nil
    end
  end
  L2_2 = instances
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = instances
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L6_2 = instances
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.uid
      if L6_2 == A0_2 then
        L6_2 = table
        L6_2 = L6_2.remove
        L7_2 = instances
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
        break
      end
    end
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 and 0 ~= L1_2 then
    L2_2 = pcall
    L3_2 = DeleteEntity
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
  end
end
removeStackLocal = L13_1
previewTargetUid = nil
previewCanMerge = false
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = spawned
  if L1_2 then
    L1_2 = spawned
    L1_2 = L1_2[A0_2]
  end
  if L1_2 then
    L2_2 = SafeDoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_19::
  L2_2 = currentLayout
  if L2_2 then
    L2_2 = currentLayout
    L2_2 = L2_2[A0_2]
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.off
  end
  if L3_2 then
    L4_2 = tonumber
    L5_2 = L3_2.z
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_38
    end
  end
  L4_2 = GetEntityCoords
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.z
  ::lbl_38::
  L5_2 = GetEntityCoords
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0.3
  L7_2 = getItemRadiusByUid
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.2
  end
  L8_2 = nil
  L9_2 = math
  L9_2 = L9_2.huge
  L10_2 = pairs
  L11_2 = spawned
  if not L11_2 then
    L11_2 = {}
  end
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
    if L14_2 ~= A0_2 and L15_2 then
      L16_2 = SafeDoesEntityExist
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = currentLayout
        if L16_2 then
          L16_2 = currentLayout
          L16_2 = L16_2[L14_2]
        end
        L17_2 = L16_2 or L17_2
        if L16_2 then
          L17_2 = L16_2.off
        end
        if L17_2 then
          L18_2 = tonumber
          L19_2 = L17_2.z
          L18_2 = L18_2(L19_2)
          if L18_2 then
            goto lbl_87
          end
        end
        L18_2 = GetEntityCoords
        L19_2 = L15_2
        L18_2 = L18_2(L19_2)
        L18_2 = L18_2.z
        ::lbl_87::
        L19_2 = math
        L19_2 = L19_2.abs
        L20_2 = L18_2 - L4_2
        L19_2 = L19_2(L20_2)
        L20_2 = L4_1
        if L19_2 <= L20_2 then
          L19_2 = GetEntityCoords
          L20_2 = L15_2
          L19_2 = L19_2(L20_2)
          L20_2 = L19_2.x
          L21_2 = L5_2.x
          L20_2 = L20_2 - L21_2
          L21_2 = L19_2.y
          L22_2 = L5_2.y
          L21_2 = L21_2 - L22_2
          L22_2 = L20_2 * L20_2
          L23_2 = L21_2 * L21_2
          L22_2 = L22_2 + L23_2
          L23_2 = getItemRadiusByUid
          L24_2 = L14_2
          L23_2 = L23_2(L24_2)
          if not L23_2 then
            L23_2 = 0.2
          end
          L24_2 = L6_2 + L7_2
          L24_2 = L24_2 + L23_2
          L25_2 = L24_2 * L24_2
          if L22_2 < L25_2 and L9_2 > L22_2 then
            L9_2 = L22_2
            L8_2 = L14_2
          end
        end
      end
    end
  end
  return L8_2
end
findNearestTargetUid = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = Config
  L4_2 = L4_2.CraftPairs
  if not L4_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.CraftPairs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.items
    L10_2 = L10_2[1]
    L11_2 = L9_2.items
    L11_2 = L11_2[2]
    L12_2 = A0_2 == L10_2 and A1_2 == L11_2
    L13_2 = A0_2 == L11_2 and A1_2 == L10_2
    if (L12_2 or L13_2) and A2_2 == A3_2 then
      L14_2 = {}
      L15_2 = L9_2.result
      L14_2.result = L15_2
      return L14_2
    end
  end
  L4_2 = nil
  return L4_2
end
getCraftPairResult = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = instByUid
  L2_2 = L2_2[A0_2]
  L3_2 = instByUid
  L3_2 = L3_2[A1_2]
  if not L2_2 or not L3_2 then
    L4_2 = false
    L5_2 = nil
    return L4_2, L5_2
  end
  L4_2 = tonumber
  L5_2 = qtyByUid
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 1
  end
  L5_2 = tonumber
  L6_2 = qtyByUid
  L6_2 = L6_2[A1_2]
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = L2_2.item
  L7_2 = L3_2.item
  if L6_2 == L7_2 then
    L6_2 = Config
    L6_2 = L6_2.Items
    L7_2 = L2_2.item
    L6_2 = L6_2[L7_2]
    if L6_2 then
      L7_2 = L6_2.stackable
      if true == L7_2 then
        L7_2 = L6_2.noMerge
        if not L7_2 then
          L7_2 = tonumber
          L8_2 = L6_2.maxStack
          if not L8_2 then
            L8_2 = L6_2.maxstack
            if not L8_2 then
              L8_2 = 10
            end
          end
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = 10
          end
          L8_2 = L5_2 + L4_2
          if L7_2 >= L8_2 then
            L8_2 = "merge"
            L9_2 = nil
            return L8_2, L9_2
          end
        end
      end
    end
  end
  L6_2 = getCraftPairResult
  L7_2 = L2_2.item
  L8_2 = L3_2.item
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L7_2 = "craft"
    L8_2 = L6_2
    return L7_2, L8_2
  end
  L7_2 = false
  L8_2 = nil
  return L7_2, L8_2
end
canMergeOrCraftUids = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = instByUid
  L3_2 = L3_2[A0_2]
  L4_2 = instByUid
  L4_2 = L4_2[A1_2]
  if not L3_2 or not L4_2 then
    L5_2 = false
    return L5_2
  end
  if A2_2 then
    L5_2 = A2_2.result
    if L5_2 then
      goto lbl_18
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_18::
  L5_2 = tonumber
  L6_2 = qtyByUid
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L6_2 = 1
  end
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L6_2 = tonumber
  L7_2 = qtyByUid
  L7_2 = L7_2[A1_2]
  if not L7_2 then
    L7_2 = 1
  end
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  if L5_2 ~= L6_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = A1_2
  L8_2 = A0_2
  L9_2 = A2_2.result
  L10_2 = instByUid
  L10_2 = L10_2[L7_2]
  L10_2.item = L9_2
  L10_2 = qtyByUid
  L10_2[L7_2] = L6_2
  L10_2 = instByUid
  L10_2[L8_2] = nil
  L10_2 = qtyByUid
  L10_2[L8_2] = nil
  L10_2 = true
  return L10_2
end
craftUids = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = spawned
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = SafeDoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = getEntityVisualCenter
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = getItemRadiusByUid
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_1
  if not L6_2 then
    L6_2 = previewCraftData
    if nil ~= L6_2 then
      L6_2 = previewTargetUid
      if L6_2 then
        L6_2 = DrawMarker
        L7_2 = 0
        L8_2 = L4_2.x
        L9_2 = L4_2.y
        L10_2 = L4_2.z
        L10_2 = L10_2 + L5_2
        L10_2 = L10_2 + 0.3
        L11_2 = 0
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0.1
        L18_2 = 0.1
        L19_2 = 0.1
        L20_2 = 80
        L21_2 = 255
        L22_2 = 80
        L23_2 = 240
        L24_2 = true
        L25_2 = true
        L26_2 = 2
        L27_2 = false
        L28_2 = nil
        L29_2 = nil
        L30_2 = false
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        L6_2 = DrawMarker
        L7_2 = 28
        L8_2 = L4_2.x
        L9_2 = L4_2.y
        L10_2 = L4_2.z
        L11_2 = 0
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = L5_2
        L18_2 = L5_2
        L19_2 = L5_2
        L20_2 = 80
        L21_2 = 255
        L22_2 = 80
        L23_2 = 210
        L24_2 = false
        L25_2 = true
        L26_2 = 2
        L27_2 = false
        L28_2 = nil
        L29_2 = nil
        L30_2 = false
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    end
    else
      L6_2 = previewCanMerge
      if L6_2 then
        L6_2 = mergeable
        if L6_2 then
          L6_2 = DrawMarker
          L7_2 = 0
          L8_2 = L4_2.x
          L9_2 = L4_2.y
          L10_2 = L4_2.z
          L10_2 = L10_2 + L5_2
          L10_2 = L10_2 + 0.3
          L11_2 = 0
          L12_2 = 0
          L13_2 = 0
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0.1
          L18_2 = 0.1
          L19_2 = 0.1
          L20_2 = 100
          L21_2 = 155
          L22_2 = 80
          L23_2 = 240
          L24_2 = true
          L25_2 = true
          L26_2 = 2
          L27_2 = false
          L28_2 = nil
          L29_2 = nil
          L30_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
          L6_2 = DrawMarker
          L7_2 = 28
          L8_2 = L4_2.x
          L9_2 = L4_2.y
          L10_2 = L4_2.z
          L11_2 = 0
          L12_2 = 0
          L13_2 = 0
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = L5_2
          L18_2 = L5_2
          L19_2 = L5_2
          L20_2 = 100
          L21_2 = 155
          L22_2 = 80
          L23_2 = 210
          L24_2 = false
          L25_2 = true
          L26_2 = 2
          L27_2 = false
          L28_2 = nil
          L29_2 = nil
          L30_2 = false
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        end
      end
    end
  end
  L6_2 = GetEntityCoords
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = instByUid
  L7_2 = L7_2[A0_2]
  L8_2 = qtyByUid
  L8_2 = L8_2[A0_2]
  if not L8_2 then
    L8_2 = 1
  end
  L9_2 = "~b~"
  if L7_2 then
    L10_2 = L7_2.item
    if L10_2 then
      goto lbl_160
    end
  end
  L10_2 = "item"
  ::lbl_160::
  L11_2 = " ~h~x"
  L12_2 = tostring
  L13_2 = L8_2
  L12_2 = L12_2(L13_2)
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L10_2 = 0.5
  L11_2 = DrawText3D
  L12_2 = L6_2.x
  L13_2 = L6_2.y
  L14_2 = L6_2.z
  L14_2 = L14_2 + 0.25
  L15_2 = L9_2
  L16_2 = L10_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = previewTargetUid
  if nil ~= L11_2 then
    L11_2 = nil
    L12_2 = ""
    L13_2 = L5_1
    if not L13_2 then
      L13_2 = previewCraftData
      if nil ~= L13_2 then
        L13_2 = previewCraftData
        L12_2 = L13_2.result
        L13_2 = Config
        L13_2 = L13_2.Items
        if L13_2 then
          L13_2 = Config
          L13_2 = L13_2.Items
          L14_2 = previewCraftData
          L14_2 = L14_2.result
          L13_2 = L13_2[L14_2]
          if L13_2 then
            L13_2 = Config
            L13_2 = L13_2.Items
            L14_2 = previewCraftData
            L14_2 = L14_2.result
            L13_2 = L13_2[L14_2]
            L13_2 = L13_2.label
            if L13_2 then
              L13_2 = Config
              L13_2 = L13_2.Items
              L14_2 = previewCraftData
              L14_2 = L14_2.result
              L13_2 = L13_2[L14_2]
              L12_2 = L13_2.label
            end
          end
        end
        L13_2 = "~h~~y~CRAFT: ~w~"
        L14_2 = tostring
        L15_2 = L12_2
        L14_2 = L14_2(L15_2)
        L13_2 = L13_2 .. L14_2
        L11_2 = L13_2
        L13_2 = infoInv
        L14_2 = 25
        L15_2 = "Craft"
        L13_2(L14_2, L15_2)
      else
        L13_2 = previewCanMerge
        if L13_2 then
          L13_2 = mergeable
          if L13_2 then
            L11_2 = "~g~MERGE"
          end
        end
      end
    end
    if nil ~= L11_2 then
      L13_2 = DrawText3D
      L14_2 = L4_2.x
      L15_2 = L4_2.y
      L16_2 = L4_2.z
      L16_2 = L16_2 + L5_2
      L16_2 = L16_2 + 0.42
      L17_2 = L11_2
      L18_2 = L10_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    end
    L13_2 = false
    L14_2 = IsControlJustPressed
    L15_2 = 0
    L16_2 = 25
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L14_2 = IsDisabledControlJustPressed
      L15_2 = 0
      L16_2 = 25
      L14_2 = L14_2(L15_2, L16_2)
      if not L14_2 then
        goto lbl_408
      end
    end
    if L13_2 then
      return
    end
    L14_2 = isRuntimeInv
    L15_2 = currentInv
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = selectedID
      L15_2 = previewTargetUid
      if not L14_2 or not L15_2 then
        L16_2 = testo3d
        L17_2 = "~r~~h~Invalid craft/merge"
        L16_2(L17_2)
        L16_2 = PlaySoundFrontend
        L17_2 = -1
        L18_2 = "Click"
        L19_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
        L20_2 = 1
        L16_2(L17_2, L18_2, L19_2, L20_2)
        L16_2 = SetEntityDrawOutline
        L17_2 = hoverEnt
        L18_2 = false
        L16_2(L17_2, L18_2)
        selectedID = nil
        return
      end
      L16_2 = previewCraftData
      if nil ~= L16_2 then
        L16_2 = currentInv
        if "player" == L16_2 then
          L16_2 = PlaySoundFrontend
          L17_2 = -1
          L18_2 = "MP_IDLE_KICK"
          L19_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L20_2 = 1
          L16_2(L17_2, L18_2, L19_2, L20_2)
          L13_2 = true
          L16_2 = TriggerServerEvent
          L17_2 = "inv3d:craft"
          L18_2 = currentInv
          L19_2 = L14_2
          L20_2 = L15_2
          L21_2 = L8_2
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
          L16_2 = SetEntityDrawOutline
          L17_2 = hoverEnt
          L18_2 = false
          L16_2(L17_2, L18_2)
          L16_2 = GetEntityCoords
          L17_2 = L2_2
          L16_2 = L16_2(L17_2)
          while true do
            L17_2 = IsControlPressed
            L18_2 = 0
            L19_2 = 24
            L17_2 = L17_2(L18_2, L19_2)
            if not L17_2 then
              L17_2 = IsDisabledControlPressed
              L18_2 = 0
              L19_2 = 24
              L17_2 = L17_2(L18_2, L19_2)
              if not L17_2 then
                break
              end
            end
            L17_2 = Wait
            L18_2 = 0
            L17_2(L18_2)
            L17_2 = DrawText3D
            L18_2 = L16_2.x
            L19_2 = L16_2.y
            L20_2 = L16_2.z
            L20_2 = L20_2 + 0.25
            L21_2 = "Release to Craft"
            L22_2 = 0.5
            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
          end
          if nil ~= L12_2 then
            L17_2 = testo3d
            L18_2 = "~h~~y~"
            L19_2 = tostring
            L20_2 = L12_2
            L19_2 = L19_2(L20_2)
            L20_2 = " ~w~crafted"
            L18_2 = L18_2 .. L19_2 .. L20_2
            L17_2(L18_2)
          end
          selectedID = nil
          L17_2 = closeInventory
          L17_2()
          L17_2 = CreateThread
          function L18_2()
            local L0_3, L1_3
            L0_3 = Wait
            L1_3 = 25
            L0_3(L1_3)
            L0_3 = false
            L13_2 = L0_3
            L0_3 = Wait
            L1_3 = 0
            L0_3(L1_3)
            L0_3 = exports
            L0_3 = L0_3.striano_inventory
            L1_3 = L0_3
            L0_3 = L0_3.OpenInventory
            L0_3(L1_3)
          end
          L17_2(L18_2)
        else
          L16_2 = testo3d
          L17_2 = "~h~~r~Only main inv."
          L16_2(L17_2)
        end
      else
        L16_2 = previewCanMerge
        if L16_2 then
          L16_2 = mergeable
          if L16_2 then
            L13_2 = true
            L16_2 = TriggerServerEvent
            L17_2 = "inv3d:merge"
            L18_2 = currentInv
            L19_2 = L14_2
            L20_2 = L15_2
            L16_2(L17_2, L18_2, L19_2, L20_2)
            L16_2 = SetEntityDrawOutline
            L17_2 = hoverEnt
            L18_2 = false
            L16_2(L17_2, L18_2)
            selectedID = nil
            L16_2 = PlaySoundFrontend
            L17_2 = -1
            L18_2 = "MP_IDLE_KICK"
            L19_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            L20_2 = 1
            L16_2(L17_2, L18_2, L19_2, L20_2)
            L16_2 = CreateThread
            function L17_2()
              local L0_3, L1_3
              L0_3 = Wait
              L1_3 = 500
              L0_3(L1_3)
              L0_3 = false
              L13_2 = L0_3
            end
            L16_2(L17_2)
          end
        end
      end
    else
      L14_2 = stopDrag
      L14_2()
      L14_2 = previewCraftData
      if nil ~= L14_2 then
        L14_2 = testo3d
        L15_2 = "~r~~h~Can't craft loot."
        L14_2(L15_2)
      else
        L14_2 = testo3d
        L15_2 = "~r~~h~Can't merge loot."
        L14_2(L15_2)
      end
      L14_2 = PlaySoundFrontend
      L15_2 = -1
      L16_2 = "Click"
      L17_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
      L18_2 = 1
      L14_2(L15_2, L16_2, L17_2, L18_2)
      L14_2 = Wait
      L15_2 = 1000
      L14_2(L15_2)
    end
    ::lbl_408::
  end
end
drawMergePreview = L13_1
invLoopRunning = false
lastEntity = nil
hoverEnt = 0
hooverQT = 0
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A1_2
  L5_2 = L5_2 + L6_2
  L6_2 = L2_2.y
  L7_2 = L3_2.y
  L7_2 = L7_2 * A1_2
  L6_2 = L6_2 + L7_2
  L7_2 = L2_2.z
  return L4_2(L5_2, L6_2, L7_2)
end
getFrontPoint = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = HasAnimDictLoaded
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RequestAnimDict
    L5_2 = A0_2
    L4_2(L5_2)
    while true do
      L4_2 = HasAnimDictLoaded
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = IsEntityPlayingAnim
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = IsPedInAnyVehicle
    L6_2 = L4_2
    L7_2 = false
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = TaskPlayAnim
      L6_2 = L4_2
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = 5.0
      L10_2 = 5.0
      L11_2 = A2_2 or L11_2
      if not A2_2 then
        L11_2 = -1
      end
      L12_2 = A3_2 or L12_2
      if not A3_2 then
        L12_2 = 49
      end
      L13_2 = false
      L14_2 = false
      L15_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
faiAnim = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetEntityMatrix
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  return L2_2
end
GetEntityRightVector = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = getAnchor
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 1.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
inventoryPlane = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = getAnchor
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityRightVector
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2 - L2_2
  L6_2 = {}
  L7_2 = L5_2.x
  L8_2 = L4_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L5_2.y
  L9_2 = L4_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.z
  L9_2 = L4_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L5_2.x
  L8_2 = L3_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L5_2.y
  L9_2 = L3_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.z
  L9_2 = L3_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L7_2 = L5_2.z
  L6_2.z = L7_2
  return L6_2
end
worldToOffset = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = vector3
  L4_2 = A0_2.x
  L5_2 = A1_2.x
  L5_2 = L5_2 * L2_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.y
  L6_2 = A1_2.y
  L6_2 = L6_2 * L2_2
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.z
  L7_2 = A1_2.z
  L7_2 = L7_2 * L2_2
  L6_2 = L6_2 - L7_2
  return L3_2(L4_2, L5_2, L6_2)
end
projectOnPlane = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  return L2_2
end
dot = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
sub = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.y
  L5_2 = A1_2.y
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.z
  L6_2 = A1_2.z
  L5_2 = L5_2 + L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
add = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = vector3
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
mul = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = A0_2.x
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2.y
  L4_2 = A0_2.y
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.z
  L4_2 = A0_2.z
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0E-6
  if L1_2 < L2_2 then
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = vector3
  L3_2 = A0_2.x
  L3_2 = L3_2 / L1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 / L1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 / L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
normalize = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = vector3
  L3_2 = A0_2.y
  L4_2 = A1_2.z
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.y
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.x
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2.x
  L6_2 = A1_2.z
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.x
  L6_2 = A1_2.y
  L5_2 = L5_2 * L6_2
  L6_2 = A0_2.y
  L7_2 = A1_2.x
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 - L6_2
  return L2_2(L3_2, L4_2, L5_2)
end
cross = L13_1
L13_1 = FORWARD_DIST
MAX_DIST_XY = L13_1
dragging = false
dragEnt = 0
dragUid = ""
L13_1 = {}
L13_1.x = 0.0
L13_1.y = 0.0
L13_1.z = 0.0
L14_1 = nil
L15_1 = nil
L16_1 = 1
L17_1 = 2
L18_1 = 0.4
L19_1 = -0.5
L20_1 = -0.5
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetDisabledControlNormal
  L1_2 = 0
  L2_2 = 239
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetDisabledControlNormal
  L2_2 = 0
  L3_2 = 240
  L1_2 = L1_2(L2_2, L3_2)
  if 0.0 == L0_2 and 0.0 == L1_2 then
    L2_2 = GetControlNormal
    L3_2 = 0
    L4_2 = 239
    L2_2 = L2_2(L3_2, L4_2)
    L0_2 = L2_2
    L2_2 = GetControlNormal
    L3_2 = 0
    L4_2 = 240
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end
getCursor01 = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.x
  if not L2_2 then
    L2_2 = 0.0
  end
  L3_2 = A0_2.y
  if not L3_2 then
    L3_2 = 0.0
  end
  L4_2 = L2_2 * L2_2
  L5_2 = L3_2 * L3_2
  L4_2 = L4_2 + L5_2
  L5_2 = A1_2 * A1_2
  if L4_2 > L5_2 then
    L6_2 = 1.0E-6
    if L4_2 > L6_2 then
      L6_2 = math
      L6_2 = L6_2.sqrt
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = A1_2 / L6_2
      L8_2 = L2_2 * L7_2
      A0_2.x = L8_2
      L8_2 = L3_2 * L7_2
      A0_2.y = L8_2
      L8_2 = true
      return L8_2
    end
  end
  L6_2 = false
  return L6_2
end
clampOffsetXY = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
rotationToDirection = L21_1
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = getCursor01
  L0_2, L1_2 = L0_2()
  L2_2 = GetFinalRenderedCamCoord
  L2_2 = L2_2()
  L3_2 = GetFinalRenderedCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = rotationToDirection
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityRightVector
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = vector3
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 1.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L0_2 - 0.5
  L7_2 = L7_2 * 2.0
  L8_2 = L1_2 - 0.5
  L8_2 = L8_2 * 2.0
  L9_2 = L5_2 * L7_2
  L9_2 = L9_2 * 0.75
  L9_2 = L4_2 + L9_2
  L10_2 = -L8_2
  L10_2 = L6_2 * L10_2
  L10_2 = L10_2 * 0.75
  L9_2 = L9_2 + L10_2
  L10_2 = math
  L10_2 = L10_2.sqrt
  L11_2 = L9_2.x
  L12_2 = L9_2.x
  L11_2 = L11_2 * L12_2
  L12_2 = L9_2.y
  L13_2 = L9_2.y
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L12_2 = L9_2.z
  L13_2 = L9_2.z
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L10_2 = L10_2(L11_2)
  L11_2 = vector3
  L12_2 = L9_2.x
  L12_2 = L12_2 / L10_2
  L13_2 = L9_2.y
  L13_2 = L13_2 / L10_2
  L14_2 = L9_2.z
  L14_2 = L14_2 / L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L9_2 = L11_2
  L11_2 = L2_2
  L12_2 = L9_2 * 10.0
  L12_2 = L2_2 + L12_2
  return L11_2, L12_2
end
screenToWorldRayFromCursor = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsModelInCdimage
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L2_2 = L2_2 - L1_2
    L3_2 = 3000
    if L2_2 > L3_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end
ensureModel = L21_1
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = baseInv
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = baseInv
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = baseInv
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = baseInv
      L0_2(L1_2)
    end
  end
  L0_2 = baseInv2
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = baseInv2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = baseInv2
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = baseInv2
      L0_2(L1_2)
    end
  end
  L0_2 = pairs
  L1_2 = spawned
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  spawned = L0_2
  L0_2 = {}
  uidByEnt = L0_2
end
clearSpawned = L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = spawned
  if not L4_2 then
    L4_2 = {}
  end
  spawned = L4_2
  L4_2 = uidByEnt
  if not L4_2 then
    L4_2 = {}
  end
  uidByEnt = L4_2
  L4_2 = spawned
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = uidByEnt
      L5_2[L4_2] = A0_2
      L5_2 = SetEntityCoordsNoOffset
      L6_2 = L4_2
      L7_2 = A2_2.x
      L8_2 = A2_2.y
      L9_2 = A2_2.z
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityInvincible
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      return L4_2
    end
  end
  L5_2 = ensureModel
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = print
    L6_2 = "[inv3d] model failed:"
    L7_2 = A0_2
    L8_2 = A1_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = GetHashKey
  L6_2 = "w_me_dagger"
  L5_2 = L5_2(L6_2)
  if A1_2 == L5_2 then
    L5_2 = GetResourceState
    L6_2 = "striano_combat"
    L5_2 = L5_2(L6_2)
    if "started" == L5_2 then
      L5_2 = exports
      L5_2 = L5_2.striano_combat
      L6_2 = L5_2
      L5_2 = L5_2.getModelloArmaDaID
      L7_2 = A3_2
      L5_2 = L5_2(L6_2, L7_2)
      A1_2 = L5_2
    end
  end
  L5_2 = RequestModelStriano
  L6_2 = A1_2
  L5_2(L6_2)
  L5_2 = CreateObjectNoOffset
  L6_2 = A1_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L9_2 = A2_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 and 0 ~= L5_2 then
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_98
    end
  end
  L6_2 = print
  L7_2 = "[inv3d] CreateObject failed:"
  L8_2 = A0_2
  L9_2 = A1_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = nil
  do return L6_2 end
  ::lbl_98::
  L6_2 = SetEntityAsMissionEntity
  L7_2 = L5_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityCollision
  L7_2 = L5_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityCompletelyDisableCollision
  L7_2 = L5_2
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = FreezeEntityPosition
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityInvincible
  L7_2 = L5_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = spawned
  L6_2[A0_2] = L5_2
  L6_2 = uidByEnt
  L6_2[L5_2] = A0_2
  return L5_2
end
spawnLocal = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L2_2 = L2_2 + 1
    L10_2 = Config
    L10_2 = L10_2.Grid
    L10_2 = L10_2.cols
    if L2_2 > L10_2 then
      L2_2 = 1
      L3_2 = L3_2 + 1
    end
    L10_2 = L9_2.uid
    L11_2 = {}
    L12_2 = {}
    L13_2 = L2_2 - 1
    L14_2 = Config
    L14_2 = L14_2.Grid
    L14_2 = L14_2.spacing
    L13_2 = L13_2 * L14_2
    L12_2.x = L13_2
    L13_2 = Config
    L13_2 = L13_2.Grid
    L13_2 = L13_2.spacing
    L13_2 = L3_2 * L13_2
    L12_2.y = L13_2
    L12_2.z = 0.0
    L11_2.off = L12_2
    L11_2.placed = false
    L1_2[L10_2] = L11_2
  end
  return L1_2
end
buildDefaultLayout = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = currentLayout
  if L1_2 then
    L1_2 = currentLayout
    L1_2 = L1_2[A0_2]
  end
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.placed
  if true == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = spawned
  if L2_2 then
    L2_2 = spawned
    L2_2 = L2_2[A0_2]
  end
  if L2_2 then
    L3_2 = SafeDoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_29
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_29::
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = getItemRadiusByUid
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0.12
  end
  L5_2 = pairs
  L6_2 = spawned
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L9_2 ~= A0_2 then
      L11_2 = SafeDoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = currentLayout
        if L11_2 then
          L11_2 = currentLayout
          L11_2 = L11_2[L9_2]
        end
        if L11_2 then
          L12_2 = L11_2.placed
          if true == L12_2 then
            L12_2 = GetEntityCoords
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L13_2 = getItemRadiusByUid
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            if not L13_2 then
              L13_2 = 0.12
            end
            L14_2 = L3_2.x
            L15_2 = L12_2.x
            L14_2 = L14_2 - L15_2
            L15_2 = L3_2.y
            L16_2 = L12_2.y
            L15_2 = L15_2 - L16_2
            L16_2 = math
            L16_2 = L16_2.sqrt
            L17_2 = L14_2 * L14_2
            L18_2 = L15_2 * L15_2
            L17_2 = L17_2 + L18_2
            L16_2 = L16_2(L17_2)
            L17_2 = L4_2 + L13_2
            L17_2 = L17_2 * 1.05
            if L16_2 < L17_2 then
              L17_2 = math
              L17_2 = L17_2.abs
              L18_2 = L12_2.z
              L19_2 = L3_2.z
              L18_2 = L18_2 - L19_2
              L17_2 = L17_2(L18_2)
              L18_2 = 0.15
              if L17_2 > L18_2 then
                L17_2 = false
                return L17_2
              end
            end
          end
        end
      end
    end
  end
  L5_2 = true
  return L5_2
end
canDragUid = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetModelDimensions
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = vector3
  L4_2 = L1_2.x
  L5_2 = L2_2.x
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 * 0.5
  L5_2 = L1_2.y
  L6_2 = L2_2.y
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 * 0.5
  L6_2 = L1_2.z
  L7_2 = L2_2.z
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 * 0.5
  return L3_2(L4_2, L5_2, L6_2)
end
getModelCenterOffset = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = getModelCenterOffset
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = A0_2
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
getEntityVisualCenter = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = getOff
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not A0_2 or not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = instByUid
  if L2_2 then
    L2_2 = instByUid
    L2_2 = L2_2[A0_2]
  end
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = Config
  L3_2 = L3_2.Items
  L4_2 = L2_2.item
  L3_2 = L3_2[L4_2]
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = tonumber
  L5_2 = L3_2.radius
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0.1
  end
  L5_2 = L1_2.z
  L6_2 = pairs
  L7_2 = instByUid
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L10_2 ~= A0_2 then
      L12_2 = isObstacle
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = getOff
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L13_2 = L12_2.z
          L14_2 = L5_2 - 0.02
          if L13_2 < L14_2 then
            L13_2 = Config
            L13_2 = L13_2.Items
            L14_2 = L11_2.item
            L13_2 = L13_2[L14_2]
            if not L13_2 then
              L13_2 = {}
            end
            L14_2 = tonumber
            L15_2 = L13_2.radius
            L14_2 = L14_2(L15_2)
            if not L14_2 then
              L14_2 = 0.1
            end
            L15_2 = L1_2.x
            L16_2 = L12_2.x
            L15_2 = L15_2 - L16_2
            L16_2 = L1_2.y
            L17_2 = L12_2.y
            L16_2 = L16_2 - L17_2
            L17_2 = L4_2 + L14_2
            L18_2 = L15_2 * L15_2
            L19_2 = L16_2 * L16_2
            L18_2 = L18_2 + L19_2
            L19_2 = L17_2 * L17_2
            if L18_2 < L19_2 then
              L18_2 = true
              return L18_2
            end
          end
        end
      end
    end
  end
  L6_2 = false
  return L6_2
end
HasPlacedSupportBelow = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    L1_2 = 0.12
    return L1_2
  end
  L1_2 = instByUid
  if L1_2 then
    L1_2 = instByUid
    L1_2 = L1_2[A0_2]
  end
  if not L1_2 then
    L2_2 = 0.12
    return L2_2
  end
  L2_2 = Config
  L2_2 = L2_2.Items
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Items
    L3_2 = L1_2.item
    L2_2 = L2_2[L3_2]
  end
  if L2_2 then
    L3_2 = L2_2.radius
    if L3_2 then
      L3_2 = tonumber
      L4_2 = L2_2.radius
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = 0.12
      end
      return L3_2
    end
  end
  L3_2 = 0.12
  return L3_2
end
getItemRadiusByUid = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = getCursor01
  L1_2, L2_2 = L1_2()
  L3_2 = nil
  L4_2 = 999.0
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 and 0 ~= A0_3 then
      L1_3 = SafeDoesEntityExist
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_11
      end
    end
    do return end
    ::lbl_11::
    L1_3 = GetEntityCoords
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = World3dToScreen2d
    L3_3 = L1_3.x
    L4_3 = L1_3.y
    L5_3 = L1_3.z
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3, L5_3)
    if not L2_3 then
      return
    end
    L5_3 = L1_2
    L5_3 = L3_3 - L5_3
    L6_3 = L2_2
    L6_3 = L4_3 - L6_3
    L7_3 = math
    L7_3 = L7_3.sqrt
    L8_3 = L5_3 * L5_3
    L9_3 = L6_3 * L6_3
    L8_3 = L8_3 + L9_3
    L7_3 = L7_3(L8_3)
    L8_3 = 0.035
    if L7_3 < L8_3 then
      L9_3 = L4_2
      if L7_3 < L9_3 then
        L4_2 = L7_3
        L3_2 = A0_3
      end
    end
  end
  consider = L5_2
  L5_2 = pairs
  L6_2 = spawned
  if not L6_2 then
    L6_2 = {}
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = consider
    L12_2 = L10_2
    L11_2(L12_2)
  end
  L5_2 = isPlayerInventory
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = pairs
    L6_2 = slotEnt
    if not L6_2 then
      L6_2 = {}
    end
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = consider
      L12_2 = L10_2
      L11_2(L12_2)
    end
  end
  return L3_2
end
pickEntityFromCam = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  dragging = true
  dragEnt = A0_2
  L1_2 = uidByEnt
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = ""
  end
  dragUid = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = getFrontPoint
  L3_2 = L1_2
  L4_2 = FORWARD_DIST
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = inventoryPlane
  L3_2, L4_2 = L3_2()
  L5_2 = GetEntityForwardVector
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityRightVector
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = projectOnPlane
  L8_2 = L5_2
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = projectOnPlane
  L9_2 = L6_2
  L10_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = math
  L9_2 = L9_2.sqrt
  L10_2 = L7_2.x
  L11_2 = L7_2.x
  L10_2 = L10_2 * L11_2
  L11_2 = L7_2.y
  L12_2 = L7_2.y
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L11_2 = L7_2.z
  L12_2 = L7_2.z
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L10_2 = math
  L10_2 = L10_2.sqrt
  L11_2 = L8_2.x
  L12_2 = L8_2.x
  L11_2 = L11_2 * L12_2
  L12_2 = L8_2.y
  L13_2 = L8_2.y
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L12_2 = L8_2.z
  L13_2 = L8_2.z
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 + L12_2
  L10_2 = L10_2(L11_2)
  L11_2 = 1.0E-4
  if L9_2 < L11_2 then
    L9_2 = 1.0
  end
  L11_2 = 1.0E-4
  if L10_2 < L11_2 then
    L10_2 = 1.0
  end
  L11_2 = vector3
  L12_2 = L7_2.x
  L12_2 = L12_2 / L9_2
  L13_2 = L7_2.y
  L13_2 = L13_2 / L9_2
  L14_2 = L7_2.z
  L14_2 = L14_2 / L9_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L7_2 = L11_2
  L11_2 = vector3
  L12_2 = L8_2.x
  L12_2 = L12_2 / L10_2
  L13_2 = L8_2.y
  L13_2 = L13_2 / L10_2
  L14_2 = L8_2.z
  L14_2 = L14_2 / L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L8_2 = L11_2
  L12_1.center = L2_2
  L12_1.camF = L7_2
  L12_1.camR = L8_2
  L11_2 = GetEntityCoords
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2 - L2_2
  L13_2 = L12_2.x
  L14_2 = L8_2.x
  L13_2 = L13_2 * L14_2
  L14_2 = L12_2.y
  L15_2 = L8_2.y
  L14_2 = L14_2 * L15_2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2.z
  L15_2 = L8_2.z
  L14_2 = L14_2 * L15_2
  L13_2 = L13_2 + L14_2
  L13_1.x = L13_2
  L13_2 = L12_2.x
  L14_2 = L7_2.x
  L13_2 = L13_2 * L14_2
  L14_2 = L12_2.y
  L15_2 = L7_2.y
  L14_2 = L14_2 * L15_2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2.z
  L15_2 = L7_2.z
  L14_2 = L14_2 * L15_2
  L13_2 = L13_2 + L14_2
  L13_1.y = L13_2
  L13_2 = L11_2.z
  L14_2 = L2_2.z
  L13_2 = L13_2 - L14_2
  L13_1.z = L13_2
end
startDrag = L21_1
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = dragUid
  L1_2 = dragEnt
  L2_2 = currentInv
  if not L2_2 then
    L2_2 = "player"
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  if "" ~= L0_2 then
    L4_2 = L7_1
    if L4_2 == L0_2 then
      L4_2 = L8_1
      L4_2 = L3_2 - L4_2
      L5_2 = 600
      if L4_2 < L5_2 then
        return
      end
    end
  end
  L7_1 = L0_2
  L8_1 = L3_2
  dragging = false
  L12_1.center = nil
  L12_1.camF = nil
  L12_1.camR = nil
  if L1_2 and 0 ~= L1_2 then
    L4_2 = SafeDoesEntityExist
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_39
    end
  end
  dragEnt = 0
  dragUid = ""
  do return end
  ::lbl_39::
  L4_2 = RestoreCollisionAfterDrag
  L5_2 = L1_2
  L4_2(L5_2)
  if "" ~= L0_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "inv3d:setPlaced"
    L6_2 = L2_2
    L7_2 = L0_2
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = worldToOffset
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetEntityRotation
  L9_2 = L1_2
  L10_2 = 2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2, L10_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = GetEntityHeading
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L11_2 = L9_2 or L11_2
  if not L9_2 then
    L11_2 = 0.0
  end
  L11_2 = L11_2 - L10_2
  L12_2 = GetGameTimer
  L12_2 = L12_2()
  L12_2 = L12_2 + 700
  L6_1 = L12_2
  L12_2 = currentLayout
  if L12_2 and "" ~= L0_2 then
    L12_2 = currentLayout
    L13_2 = currentLayout
    L13_2 = L13_2[L0_2]
    if not L13_2 then
      L13_2 = {}
    end
    L12_2[L0_2] = L13_2
    L12_2 = currentLayout
    L12_2 = L12_2[L0_2]
    L12_2.placed = true
    L12_2 = currentLayout
    L12_2 = L12_2[L0_2]
    L12_2.pending = false
  end
  L12_2 = TriggerServerEvent
  L13_2 = "inv3d:setTransform"
  L14_2 = L2_2
  L15_2 = L0_2
  L16_2 = {}
  L17_2 = L6_2[1]
  if not L17_2 then
    L17_2 = 0.0
  end
  L18_2 = L6_2[2]
  if not L18_2 then
    L18_2 = 0.0
  end
  L19_2 = L6_2[3]
  if not L19_2 then
    L19_2 = 0.0
  end
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L17_2 = {}
  L18_2 = L7_2 or L18_2
  if not L7_2 then
    L18_2 = 0.0
  end
  L19_2 = L8_2 or L19_2
  if not L8_2 then
    L19_2 = 0.0
  end
  L20_2 = L11_2 or L20_2
  if not L11_2 then
    L20_2 = 0.0
  end
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  dragEnt = 0
  dragUid = ""
  L12_2 = SafeDoesEntityExist
  L13_2 = L1_2
  L12_2 = L12_2(L13_2)
  if L12_2 then
    L12_2 = hoverEnt
    if L12_2 ~= L1_2 then
      L12_2 = hoverEnt
      if 0 == L12_2 then
        L12_2 = SetEntityDrawOutline
        L13_2 = L1_2
        L14_2 = false
        L12_2(L13_2, L14_2)
      end
    end
  end
  L12_2 = SaveCurrentInv3D
  L12_2()
  L12_2 = SetPedAlphaInstant
  L13_2 = 0
  L12_2(L13_2)
  L12_2 = ResetEntityAlpha
  L13_2 = L4_2
  L12_2(L13_2)
end
stopDrag = L21_1
freezCam = 0
function L21_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = freezCam
    if 0 == L2_2 then
      freezCam = 1
      if nil ~= A1_2 then
        freezCam = A1_2
      end
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = freezCam
          if not (L0_3 > 0) then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = ClampGameplayCamPitch
          L1_3 = -1.0
          L2_3 = 1.0
          L0_3(L1_3, L2_3)
          L0_3 = ClampGameplayCamYaw
          L1_3 = -1.0
          L2_3 = 1.0
          L0_3(L1_3, L2_3)
          L0_3 = freezCam
          L0_3 = L0_3 - 1
          freezCam = L0_3
        end
      end
      L2_2(L3_2)
    end
  else
    L2_2 = freezCam
    if L2_2 > 0 then
      freezCam = 0
    end
  end
end
FreezaCam = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = uidByEnt
  L2_2 = L2_2[A0_2]
  L3_2 = getItemRadiusByUid
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = getModelRadius
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
  end
  L4_2 = A1_2
  L5_2 = A1_2.z
  L6_2 = 0.12
  L7_2 = pairs
  L8_2 = spawned
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    if L12_2 ~= A0_2 then
      L13_2 = SafeExists
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = currentLayout
        if L13_2 then
          L13_2 = currentLayout
          L13_2 = L13_2[L11_2]
        end
        L14_2 = nil == L13_2
        if L14_2 then
          L15_2 = GetEntityCoords
          L16_2 = L12_2
          L15_2 = L15_2(L16_2)
          L16_2 = L15_2.z
          L16_2 = L16_2 - L5_2
          if L6_2 < L16_2 then
          else
            L16_2 = getItemRadiusByUid
            L17_2 = L11_2
            L16_2 = L16_2(L17_2)
            if not L16_2 then
              L16_2 = getModelRadius
              L17_2 = L12_2
              L16_2 = L16_2(L17_2)
            end
            L17_2 = L4_2.x
            L18_2 = L15_2.x
            L17_2 = L17_2 - L18_2
            L18_2 = L4_2.y
            L19_2 = L15_2.y
            L18_2 = L18_2 - L19_2
            L19_2 = math
            L19_2 = L19_2.sqrt
            L20_2 = L17_2 * L17_2
            L21_2 = L18_2 * L18_2
            L20_2 = L20_2 + L21_2
            L19_2 = L19_2(L20_2)
            L20_2 = L3_2 + L16_2
            L21_2 = Config
            L21_2 = L21_2.Drag
            L21_2 = L21_2.antiOverlapPad
            if not L21_2 then
              L21_2 = 1.08
            end
            L20_2 = L20_2 * L21_2
            if L19_2 < L20_2 then
              L21_2 = 1.0E-4
              if L19_2 > L21_2 then
                L21_2 = L20_2 - L19_2
                L22_2 = L17_2 / L19_2
                L23_2 = L18_2 / L19_2
                L24_2 = vector3
                L25_2 = L4_2.x
                L26_2 = L22_2 * L21_2
                L25_2 = L25_2 + L26_2
                L26_2 = L4_2.y
                L27_2 = L23_2 * L21_2
                L26_2 = L26_2 + L27_2
                L27_2 = L4_2.z
                L24_2 = L24_2(L25_2, L26_2, L27_2)
                L4_2 = L24_2
              end
            end
          end
        end
      end
    end
  end
  return L4_2
end
resolveOverlap = L21_1
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetGameplayCamRelativeHeading
  L1_2 = L1_2()
  L2_2 = GetGameplayCamRelativePitch
  L2_2 = L2_2()
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L5_2, L6_2, L7_2, L8_2
end
camAngleToPlayer = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    A0_2 = 140.0
  end
  L1_2 = camAngleToPlayer
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L5_2 = A0_2 <= L3_2
  L6_2 = L1_2
  L7_2 = L2_2
  return L5_2, L6_2, L7_2
end
isCamFacingPlayer = L21_1
L21_1 = false
function L22_1()
  local L0_2, L1_2
  L0_2 = L21_1
  if not L0_2 then
    L0_2 = true
    L21_1 = L0_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      while true do
        L0_3 = invLoopRunning
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityRotation
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        L3_3 = GetEntityForwardVector
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        L4_3 = table
        L4_3 = L4_3.unpack
        L5_3 = L3_3 * 1.0
        L5_3 = L1_3 + L5_3
        L4_3, L5_3, L6_3 = L4_3(L5_3)
        L7_3 = DrawSpotLightWithShadow
        L8_3 = L4_3
        L9_3 = L5_3
        L10_3 = L6_3 + 2.3
        L11_3 = L2_3.x
        L12_3 = L2_3.y
        L13_3 = L2_3.z
        L13_3 = L13_3 - 180
        L14_3 = 255
        L15_3 = 190
        L16_3 = 190
        L17_3 = 7.0
        L18_3 = 1.35
        L19_3 = 15.0
        L20_3 = 250.0
        L21_3 = 20.0
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L7_3 = table
        L7_3 = L7_3.unpack
        L8_3 = L3_3 * -1.0
        L8_3 = L1_3 + L8_3
        L7_3, L8_3, L9_3 = L7_3(L8_3)
        L10_3 = DrawSpotLightWithShadow
        L11_3 = L7_3
        L12_3 = L8_3
        L13_3 = L9_3 + 2.3
        L14_3 = L2_3.x
        L15_3 = L2_3.y
        L16_3 = L2_3.z
        L16_3 = L16_3 - 180
        L17_3 = 255
        L18_3 = 190
        L19_3 = 190
        L20_3 = 7.0
        L21_3 = 1.35
        L22_3 = 15.0
        L23_3 = 250.0
        L24_3 = 20.0
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      end
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      L0_3 = false
      L21_1 = L0_3
    end
    L0_2(L1_2)
  end
end
LoopLuceCaratteristiche = L22_1
L22_1 = 0
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if not A0_2 then
    A0_2 = 250
  end
  L2_2 = L22_1
  L2_2 = L2_2 + 1
  L22_1 = L2_2
  L2_2 = L22_1
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = GetEntityAlpha
    L2_3 = L1_2
    L1_3 = L1_3(L2_3)
    while true do
      L2_3 = L2_2
      L3_3 = L22_1
      if L2_3 ~= L3_3 then
        return
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = math
      L3_3 = L3_3.min
      L4_3 = A0_2
      L4_3 = L2_3 / L4_3
      L5_3 = 1.0
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = math
      L4_3 = L4_3.floor
      L5_3 = 1.0
      L5_3 = L5_3 - L3_3
      L5_3 = L1_3 * L5_3
      L4_3 = L4_3(L5_3)
      L5_3 = SetEntityAlpha
      L6_3 = L1_2
      L7_3 = L4_3
      L8_3 = false
      L5_3(L6_3, L7_3, L8_3)
      if L3_3 >= 1.0 then
        L5_3 = SetEntityAlpha
        L6_3 = L1_2
        L7_3 = 0
        L8_3 = false
        L5_3(L6_3, L7_3, L8_3)
        return
      end
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
    end
  end
  L3_2(L4_2)
end
FadePedOut = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if not A0_2 then
    A0_2 = 250
  end
  L2_2 = L22_1
  L2_2 = L2_2 + 1
  L22_1 = L2_2
  L2_2 = L22_1
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = GetEntityAlpha
    L2_3 = L1_2
    L1_3 = L1_3(L2_3)
    while true do
      L2_3 = L2_2
      L3_3 = L22_1
      if L2_3 ~= L3_3 then
        return
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = math
      L3_3 = L3_3.min
      L4_3 = A0_2
      L4_3 = L2_3 / L4_3
      L5_3 = 1.0
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = math
      L4_3 = L4_3.floor
      L5_3 = 255
      L5_3 = L5_3 - L1_3
      L5_3 = L5_3 * L3_3
      L5_3 = L1_3 + L5_3
      L4_3 = L4_3(L5_3)
      L5_3 = SetEntityAlpha
      L6_3 = L1_2
      L7_3 = L4_3
      L8_3 = false
      L5_3(L6_3, L7_3, L8_3)
      if L3_3 >= 1.0 then
        L5_3 = ResetEntityAlpha
        L6_3 = L1_2
        L5_3(L6_3)
        return
      end
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
    end
  end
  L3_2(L4_2)
end
FadePedIn = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L22_1
  L1_2 = L1_2 + 1
  L22_1 = L1_2
  L1_2 = SetEntityAlpha
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
SetPedAlphaInstant = L23_1
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = invLoopRunning
  if L0_2 then
    return
  end
  while true do
    L0_2 = IsDisabledControlPressed
    L1_2 = 0
    L2_2 = 37
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  invLoopRunning = true
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = faiAnim
  L2_2 = "anim@amb@business@cfm@cfm_cut_sheets@"
  L3_2 = "load_and_tune_guilotine_v1_billcutter"
  L4_2 = -1
  L5_2 = 49
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    while true do
      L0_3 = invLoopRunning
      if not L0_3 then
        break
      end
      L0_3 = invOpen
      if not L0_3 then
        break
      end
      L0_3 = IsPedRagdoll
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = IsPedFatallyInjured
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = isPlayerInventory
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = UpdateHolsterSlotsSpin
        L0_3()
      end
      L0_3 = LoopLuceCaratteristiche
      L0_3()
      L0_3 = inExam
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 200
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlJustPressed
            L1_3 = 0
            L2_3 = 73
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlJustPressed
              L1_3 = 0
              L2_3 = 194
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = IsDisabledControlJustReleased
                L1_3 = 0
                L2_3 = 37
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  goto lbl_68
                end
              end
            end
          end
        end
        L0_3 = dragging
        if not L0_3 then
          L0_3 = exports
          L1_3 = GetCurrentResourceName
          L1_3 = L1_3()
          L0_3 = L0_3[L1_3]
          L1_3 = L0_3
          L0_3 = L0_3.CloseInventory
          L0_3(L1_3)
          break
        end
      end
      ::lbl_68::
      previewTargetUid = nil
      previewCanMerge = false
      previewCraftData = nil
      L0_3 = hoverEnt
      if L0_3 then
        L0_3 = SafeDoesEntityExist
        L1_3 = hoverEnt
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = dragUid
          if L0_3 then
            L0_3 = dragUid
            L0_3 = #L0_3
            if L0_3 >= 1 then
              L0_3 = findNearestTargetUid
              L1_3 = dragUid
              L0_3 = L0_3(L1_3)
              previewTargetUid = L0_3
            end
          end
        end
      end
      L0_3 = previewTargetUid
      if L0_3 then
        L0_3 = canMergeOrCraftUids
        L1_3 = dragUid
        L2_3 = previewTargetUid
        L0_3, L1_3 = L0_3(L1_3, L2_3)
        previewCanMerge = L0_3
        previewCraftData = L1_3
        if L0_3 then
          L2_3 = drawMergePreview
          L3_3 = previewTargetUid
          L4_3 = L0_3
          L2_3(L3_3, L4_3)
        end
      end
      L0_3 = IsDisabledControlJustPressed
      L1_3 = 0
      L2_3 = 45
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = only2d
        if not L0_3 then
          L0_3 = ExecuteCommand
          L1_3 = "cinv"
          L0_3(L1_3)
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = ExecuteCommand
          L1_3 = "inv2d"
          L0_3(L1_3)
        else
          L0_3 = ExecuteCommand
          L1_3 = "cinv"
          L0_3(L1_3)
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = ExecuteCommand
          L1_3 = "inv"
          L0_3(L1_3)
        end
      end
      L0_3 = hoverEnt
      if L0_3 then
        L0_3 = SafeDoesEntityExist
        L1_3 = hoverEnt
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.opened
          L0_3 = L0_3(L1_3)
          if L0_3 then
            goto lbl_606
          end
          L0_3 = previewCanMerge
          if not L0_3 then
            goto lbl_606
          end
          L0_3 = dragging
          if not L0_3 then
            L0_3 = inExam
            if not L0_3 then
              L0_3 = isRuntimeInv
              L1_3 = currentInv
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = infoInv
                L1_3 = 24
                L2_3 = "Drag"
                L3_3 = 25
                L4_3 = "Take"
                L0_3(L1_3, L2_3, L3_3, L4_3)
              else
                L0_3 = infoInv
                L1_3 = 24
                L2_3 = "Drag"
                L3_3 = 25
                L4_3 = "Manage"
                L0_3(L1_3, L2_3, L3_3, L4_3)
              end
            end
          else
            L0_3 = isRuntimeInv
            L1_3 = currentInv
            L0_3 = L0_3(L1_3)
            if L0_3 then
              goto lbl_606
            end
            L0_3 = previewTargetUid
            if not L0_3 then
            else
              L0_3 = uidByEnt
              L1_3 = hoverEnt
              L0_3 = L0_3[L1_3]
              L1_3 = previewTargetUid
              L2_3 = L0_3
              L3_3 = GetEntityCoords
              L4_3 = hoverEnt
              L3_3 = L3_3(L4_3)
              L4_3 = L2_3 or L4_3
              if L2_3 then
                L4_3 = instByUid
                L4_3 = L4_3[L2_3]
              end
              if L2_3 then
                L5_3 = qtyByUid
                L5_3 = L5_3[L2_3]
                if L5_3 then
                  goto lbl_206
                end
                L5_3 = 1
                if L5_3 then
                  goto lbl_206
                end
              end
              L5_3 = 1
              ::lbl_206::
              if L4_3 then
                L6_3 = L4_3.item
                if L6_3 then
                  goto lbl_212
                end
              end
              L6_3 = "item"
              ::lbl_212::
              L7_3 = " ~h~x"
              L8_3 = tostring
              L9_3 = L5_3
              L8_3 = L8_3(L9_3)
              L6_3 = L6_3 .. L7_3 .. L8_3
              L7_3 = L4_3.item
              if "melee_weapon" == L7_3 then
                L7_3 = exports
                L7_3 = L7_3.striano_combat
                L8_3 = L7_3
                L7_3 = L7_3.getSwordNameFromID
                L9_3 = L5_3
                L7_3 = L7_3(L8_3, L9_3)
                L6_3 = L7_3
              else
                L7_3 = L4_3.item
                if "bag" == L7_3 then
                  L7_3 = "Bag ID ~h~"
                  L8_3 = L5_3
                  L7_3 = L7_3 .. L8_3
                  L6_3 = L7_3
                else
                  L7_3 = L4_3.item
                  if "buffer" == L7_3 then
                    L7_3 = exports
                    L7_3 = L7_3.striano_combat
                    L8_3 = L7_3
                    L7_3 = L7_3.BufferList
                    L9_3 = L5_3
                    L7_3 = L7_3(L8_3, L9_3)
                    L6_3 = L7_3.name
                  else
                    L7_3 = L4_3.item
                    if "book" == L7_3 then
                      L7_3 = exports
                      L7_3 = L7_3.striano_inventory
                      L8_3 = L7_3
                      L7_3 = L7_3.getBookName
                      L9_3 = L5_3
                      L7_3 = L7_3(L8_3, L9_3)
                      L6_3 = L7_3
                    else
                      L7_3 = L4_3.item
                      if "buffer" == L7_3 then
                        L7_3 = exports
                        L7_3 = L7_3.striano_combat
                        L8_3 = L7_3
                        L7_3 = L7_3.getBufferNameFromID
                        L9_3 = L5_3
                        L7_3 = L7_3(L8_3, L9_3)
                        L8_3 = "buffer: ~h~"
                        L9_3 = L7_3.name
                        L10_3 = " (~r~"
                        L11_3 = L7_3.dmg
                        L12_3 = "~w~)"
                        L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3
                        L6_3 = L8_3
                      end
                    end
                  end
                end
              end
              L7_3 = DrawText3D
              L8_3 = L3_3.x
              L9_3 = L3_3.y
              L10_3 = L3_3.z
              L10_3 = L10_3 + 0.25
              L11_3 = L6_3
              L12_3 = 0.3
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
              L2_3 = false
              L5_1 = L2_3
              L2_3 = false
              L3_3 = false
              L4_3 = nil
              L5_3 = currentLayout
              if L5_3 then
                L5_3 = currentLayout
                L5_3 = L5_3[L0_3]
              end
              L6_3 = currentLayout
              if L6_3 then
                L6_3 = currentLayout
                L6_3 = L6_3[L1_3]
              end
              if L5_3 then
                L7_3 = L5_3.placed
              end
              L7_3 = false == L7_3
              if L6_3 then
                L8_3 = L6_3.placed
              end
              L8_3 = false == L8_3
              if L7_3 or L8_3 then
                L2_3 = false
                L3_3 = false
                L9_3 = true
                L5_1 = L9_3
                mergeable = false
              end
              L9_3 = 0
              L10_3 = 0
              if L0_3 and L1_3 and L0_3 ~= L1_3 then
                L11_3 = instByUid
                L11_3 = L11_3[L0_3]
                L12_3 = instByUid
                L12_3 = L12_3[L1_3]
                if L11_3 and L12_3 then
                  L13_3 = L11_3.item
                  L14_3 = L12_3.item
                  if L13_3 == L14_3 then
                    L13_3 = Config
                    L13_3 = L13_3.Items
                    L14_3 = L11_3.item
                    L13_3 = L13_3[L14_3]
                    if L13_3 then
                      L14_3 = L13_3.stackable
                      if true == L14_3 then
                        L14_3 = tonumber
                        L15_3 = L13_3.maxStack
                        L14_3 = L14_3(L15_3)
                        L10_3 = L14_3 or L10_3
                        if not L14_3 then
                          L10_3 = 1
                        end
                        L14_3 = tonumber
                        L15_3 = qtyByUid
                        L15_3 = L15_3[L0_3]
                        if not L15_3 then
                          L15_3 = 1
                        end
                        L14_3 = L14_3(L15_3)
                        L15_3 = tonumber
                        L16_3 = qtyByUid
                        L16_3 = L16_3[L1_3]
                        if not L16_3 then
                          L16_3 = 1
                        end
                        L15_3 = L15_3(L16_3)
                        L9_3 = L15_3 + L14_3
                        if L10_3 >= L9_3 then
                          L2_3 = true
                          L4_3 = L9_3
                        else
                          L3_3 = true
                        end
                      end
                    end
                  end
                end
              end
              L11_3 = isRuntimeInv
              L12_3 = currentInv
              L11_3 = L11_3(L12_3)
              if not L11_3 then
                L11_3 = GetEntityCoords
                L12_3 = hoverEnt
                L11_3 = L11_3(L12_3)
                L12_3 = L5_1
                if not L12_3 then
                  if L2_3 then
                    L12_3 = infoInv
                    L13_3 = 14
                    L14_3 = "Rotate"
                    L15_3 = 25
                    L16_3 = "Merge"
                    L12_3(L13_3, L14_3, L15_3, L16_3)
                    L12_3 = DrawText3D
                    L13_3 = L11_3.x
                    L14_3 = L11_3.y
                    L15_3 = L11_3.z
                    L15_3 = L15_3 + 0.5
                    L16_3 = "~g~~h~x"
                    L17_3 = L4_3
                    L16_3 = L16_3 .. L17_3
                    L17_3 = 0.5
                    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                    L12_3 = mergeable
                    if not L12_3 then
                      mergeable = true
                    end
                  elseif L3_3 then
                    L12_3 = DrawText3D
                    L13_3 = L11_3.x
                    L14_3 = L11_3.y
                    L15_3 = L11_3.z
                    L15_3 = L15_3 + 0.5
                    L16_3 = "~c~Max stack (%d/%d)"
                    L17_3 = L16_3
                    L16_3 = L16_3.format
                    L18_3 = L9_3
                    L19_3 = L10_3
                    L16_3 = L16_3(L17_3, L18_3, L19_3)
                    L17_3 = 0.5
                    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                  end
                else
                  mergeable = false
                  L12_3 = DrawText3D
                  L13_3 = L11_3.x
                  L14_3 = L11_3.y
                  L15_3 = L11_3.z
                  L15_3 = L15_3 + 0.5
                  L16_3 = "~c~Place first."
                  L17_3 = 0.5
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                end
              end
            end
          end
      end
      else
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 22
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 24
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 21
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = inExam
              if not L0_3 then
                L0_3 = HasAnyBagAttached
                L0_3, L1_3, L2_3 = L0_3()
                if not L0_3 then
                  L3_3 = currentInv
                  if "player" == L3_3 then
                    L3_3 = infoInv
                    L4_3 = 21
                    L5_3 = "Turn camera"
                    L6_3 = 45
                    L7_3 = "Open 2D"
                    L3_3(L4_3, L5_3, L6_3, L7_3)
                end
                else
                  L3_3 = currentInv
                  if "player" == L3_3 then
                    L3_3 = infoInv
                    L4_3 = 38
                    L5_3 = "View ~h~bag_"
                    L6_3 = L1_3
                    L5_3 = L5_3 .. L6_3
                    L6_3 = 74
                    L7_3 = "Disassemble ~h~bag_"
                    L8_3 = L1_3
                    L7_3 = L7_3 .. L8_3
                    L8_3 = 45
                    L9_3 = "Put in Inv ~h~bag_"
                    L10_3 = L1_3
                    L9_3 = L9_3 .. L10_3
                    L10_3 = 21
                    L11_3 = "Turn camera"
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                    L3_3 = IsControlJustPressed
                    L4_3 = 0
                    L5_3 = 38
                    L3_3 = L3_3(L4_3, L5_3)
                    if not L3_3 then
                      L3_3 = IsDisabledControlJustPressed
                      L4_3 = 0
                      L5_3 = 38
                      L3_3 = L3_3(L4_3, L5_3)
                      if not L3_3 then
                        goto lbl_518
                      end
                    end
                    L3_3 = closeInventory
                    L3_3()
                    L3_3 = CreateThread
                    function L4_3()
                      local L0_4, L1_4, L2_4, L3_4, L4_4
                      L0_4 = faiAnim
                      L1_4 = "anim@heists@ornate_bank@ig_4_grab_gold"
                      L2_4 = "enter"
                      L3_4 = 950
                      L4_4 = 49
                      L0_4(L1_4, L2_4, L3_4, L4_4)
                      L0_4 = Wait
                      L1_4 = 0
                      L0_4(L1_4)
                      L0_4 = SetEntityAnimSpeed
                      L1_4 = L0_2
                      L2_4 = "anim@heists@ornate_bank@ig_4_grab_gold"
                      L3_4 = "enter"
                      L4_4 = 1.2
                      L0_4(L1_4, L2_4, L3_4, L4_4)
                      L0_4 = Wait
                      L1_4 = 525
                      L0_4(L1_4)
                      L0_4 = ExecuteCommand
                      L1_4 = "openbag"
                      L0_4(L1_4)
                    end
                    L3_3(L4_3)
                    do return end
                    ::lbl_518::
                    L3_3 = IsControlJustPressed
                    L4_3 = 0
                    L5_3 = 74
                    L3_3 = L3_3(L4_3, L5_3)
                    if not L3_3 then
                      L3_3 = IsDisabledControlJustPressed
                      L4_3 = 0
                      L5_3 = 74
                      L3_3 = L3_3(L4_3, L5_3)
                      if not L3_3 then
                        goto lbl_536
                      end
                    end
                    L3_3 = IsInventoryEmpty
                    L4_3 = "bag_"
                    L5_3 = L1_3
                    L4_3 = L4_3 .. L5_3
                    function L5_3(A0_4)
                      local L1_4, L2_4
                      if A0_4 then
                        L1_4 = closeInventory
                        L1_4()
                        L1_4 = CreateThread
                        function L2_4()
                          local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5
                          L0_5 = Wait
                          L1_5 = 125
                          L0_5(L1_5)
                          L0_5 = removeAttachedBag
                          L1_5 = L1_3
                          L0_5(L1_5)
                          L0_5 = TriggerServerEvent
                          L1_5 = "bags:server:DeleteBag"
                          L2_5 = L1_3
                          L0_5(L1_5, L2_5)
                          L0_5 = TriggerServerEvent
                          L1_5 = "inv3d:giveItem"
                          L2_5 = GetPlayerServerId
                          L3_5 = PlayerId
                          L3_5, L4_5, L5_5 = L3_5()
                          L2_5 = L2_5(L3_5, L4_5, L5_5)
                          L3_5 = "player"
                          L4_5 = "empty_bag"
                          L5_5 = 1
                          L0_5(L1_5, L2_5, L3_5, L4_5, L5_5)
                        end
                        L1_4(L2_4)
                        return
                      else
                        L1_4 = testo3d
                        L2_4 = "~r~~h~Not empty."
                        L1_4(L2_4)
                      end
                    end
                    L3_3(L4_3, L5_3)
                    ::lbl_536::
                    L3_3 = IsControlJustPressed
                    L4_3 = 0
                    L5_3 = 45
                    L3_3 = L3_3(L4_3, L5_3)
                    if not L3_3 then
                      L3_3 = IsDisabledControlJustPressed
                      L4_3 = 0
                      L5_3 = 45
                      L3_3 = L3_3(L4_3, L5_3)
                    end
                    if L3_3 then
                      L3_3 = closeInventory
                      L3_3()
                      L3_3 = CreateThread
                      function L4_3()
                        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
                        L0_4 = Wait
                        L1_4 = 125
                        L0_4(L1_4)
                        L0_4 = TriggerServerEvent
                        L1_4 = "inv3d:giveItem"
                        L2_4 = GetPlayerServerId
                        L3_4 = PlayerId
                        L3_4, L4_4, L5_4 = L3_4()
                        L2_4 = L2_4(L3_4, L4_4, L5_4)
                        L3_4 = "player"
                        L4_4 = "bag"
                        L5_4 = L1_3
                        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
                        L0_4 = TriggerServerEvent
                        L1_4 = "bags:server:noOwner"
                        L2_4 = L1_3
                        L0_4(L1_4, L2_4)
                        L0_4 = removeAttachedBag
                        L1_4 = L1_3
                        L0_4(L1_4)
                      end
                      L3_3(L4_3)
                      return
                    end
                  else
                    L3_3 = currentInv
                    if nil ~= L3_3 then
                      L3_3 = string
                      L3_3 = L3_3.find
                      L4_3 = currentInv
                      L5_3 = "bag"
                      L3_3 = L3_3(L4_3, L5_3)
                      if L3_3 then
                        L3_3 = infoInv
                        L4_3 = 47
                        L5_3 = "Drop: ~h~"
                        L6_3 = currentInv
                        L7_3 = "~h~"
                        L5_3 = L5_3 .. L6_3 .. L7_3
                        L6_3 = 21
                        L7_3 = "Turn camera"
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                        L3_3 = IsControlJustPressed
                        L4_3 = 0
                        L5_3 = 47
                        L3_3 = L3_3(L4_3, L5_3)
                        if not L3_3 then
                          L3_3 = IsDisabledControlJustPressed
                          L4_3 = 0
                          L5_3 = 47
                          L3_3 = L3_3(L4_3, L5_3)
                          if not L3_3 then
                            goto lbl_605
                          end
                        end
                        L3_3 = OpenInput
                        L4_3 = "Drop "
                        L5_3 = currentInv
                        L6_3 = "? Type 'yes'"
                        L4_3 = L4_3 .. L5_3 .. L6_3
                        L3_3 = L3_3(L4_3)
                        L4_3 = string
                        L4_3 = L4_3.find
                        L5_3 = L3_3
                        L6_3 = "yes"
                        L4_3 = L4_3(L5_3, L6_3)
                        if L4_3 then
                          L4_3 = closeInventory
                          L4_3()
                          L4_3 = CreateThread
                          function L5_3()
                            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
                            L0_4 = Wait
                            L1_4 = 125
                            L0_4(L1_4)
                            L0_4 = DetachEntity
                            L1_4 = L2_3
                            L0_4(L1_4)
                            L0_4 = TriggerEvent
                            L1_4 = "StartEditorFromPool"
                            L2_4 = L2_3
                            L3_4 = GetEntityModel
                            L4_4 = L2_3
                            L3_4 = L3_4(L4_4)
                            L4_4 = "bag"
                            L5_4 = L1_3
                            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
                            L0_4 = TriggerServerEvent
                            L1_4 = "bags:server:dropBagToWorld"
                            L2_4 = L1_3
                            L3_4 = GetEntityCoords
                            L4_4 = L2_3
                            L3_4, L4_4, L5_4 = L3_4(L4_4)
                            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
                            L0_4 = AttachedBags
                            L1_4 = L1_3
                            L0_4[L1_4] = nil
                          end
                          L4_3(L5_3)
                          return
                        end
                      end
                    end
                  end
                end
                ::lbl_605::
              end
            end
          end
        end
      end
      ::lbl_606::
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 14
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 15
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
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
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 14
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 15
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 241
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 242
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 32
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 33
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 34
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 35
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 21
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 22
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 36
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableFirstPersonCamThisFrame
      L0_3()
      L0_3 = inExam
      if not L0_3 then
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.opened
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = dragging
          if L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 21
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlPressed
              L1_3 = 0
              L2_3 = 22
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
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
          end
          else
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 22
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlPressed
              L1_3 = 0
              L2_3 = 24
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = IsDisabledControlPressed
                L1_3 = 0
                L2_3 = 21
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  L0_3 = SetMouseCursorActiveThisFrame
                  L0_3()
                  L0_3 = getCursor01
                  L0_3, L1_3 = L0_3()
                  L2_3 = 0.001
                  if not (L0_3 > L2_3) then
                    L2_3 = 0.001
                    if not (L1_3 > L2_3) then
                      goto lbl_759
                    end
                  end
                  L2_3 = L0_3
                  lastCursorY = L1_3
                  lastCursorX = L2_3
                  ::lbl_759::
                  L2_3 = DisableControlAction
                  L3_3 = 0
                  L4_3 = 1
                  L5_3 = true
                  L2_3(L3_3, L4_3, L5_3)
                  L2_3 = DisableControlAction
                  L3_3 = 0
                  L4_3 = 2
                  L5_3 = true
                  L2_3(L3_3, L4_3, L5_3)
                end
              end
            end
          end
        end
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 22
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 24
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 21
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = pairs
              L1_3 = spawned
              L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
              for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                L6_3 = SafeDoesEntityExist
                L7_3 = L5_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  L6_3 = GetEntityCoords
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = instByUid
                  L7_3 = L7_3[L4_3]
                  L8_3 = qtyByUid
                  L8_3 = L8_3[L4_3]
                  if not L8_3 then
                    L8_3 = 1
                  end
                  if L7_3 then
                    L9_3 = L7_3.item
                    if L9_3 then
                      goto lbl_812
                    end
                  end
                  L9_3 = "item"
                  ::lbl_812::
                  L10_3 = " ~h~x"
                  L11_3 = tostring
                  L12_3 = L8_3
                  L11_3 = L11_3(L12_3)
                  L9_3 = L9_3 .. L10_3 .. L11_3
                  L10_3 = L7_3.item
                  if "melee_weapon" == L10_3 then
                    L10_3 = exports
                    L10_3 = L10_3.striano_combat
                    L11_3 = L10_3
                    L10_3 = L10_3.getSwordNameFromID
                    L12_3 = L8_3
                    L10_3 = L10_3(L11_3, L12_3)
                    L9_3 = L10_3
                  else
                    L10_3 = L7_3.item
                    if "bag" == L10_3 then
                      L10_3 = "Bag ID ~h~"
                      L11_3 = L8_3
                      L10_3 = L10_3 .. L11_3
                      L9_3 = L10_3
                    else
                      L10_3 = L7_3.item
                      if "buffer" == L10_3 then
                        L10_3 = exports
                        L10_3 = L10_3.striano_combat
                        L11_3 = L10_3
                        L10_3 = L10_3.BufferList
                        L12_3 = L8_3
                        L10_3 = L10_3(L11_3, L12_3)
                        L9_3 = L10_3.name
                      else
                        L10_3 = L7_3.item
                        if "book" == L10_3 then
                          L10_3 = exports
                          L10_3 = L10_3.striano_inventory
                          L11_3 = L10_3
                          L10_3 = L10_3.getBookName
                          L12_3 = L8_3
                          L10_3 = L10_3(L11_3, L12_3)
                          L9_3 = L10_3
                        end
                      end
                    end
                  end
                  L10_3 = 0.35
                  L11_3 = ""
                  L12_3 = hoverEnt
                  if L12_3 == L5_3 then
                    L10_3 = 0.45
                    L11_3 = "~y~~h~"
                  end
                  L12_3 = GetModelDimensions
                  L13_3 = GetEntityModel
                  L14_3 = L5_3
                  L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L13_3(L14_3)
                  L12_3, L13_3 = L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
                  L14_3 = math
                  L14_3 = L14_3.abs
                  L15_3 = L13_3.z
                  L16_3 = L12_3.z
                  L15_3 = L15_3 - L16_3
                  L14_3 = L14_3(L15_3)
                  L15_3 = hoverEnt
                  if L15_3 == L5_3 then
                    L15_3 = DrawText3D
                    L16_3 = L6_3.x
                    L17_3 = L6_3.y
                    L18_3 = L6_3.z
                    L18_3 = L18_3 + 0.1
                    L19_3 = L11_3
                    L20_3 = "\226\128\162"
                    L19_3 = L19_3 .. L20_3
                    L20_3 = 0.5
                    L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
                    L15_3 = DrawText3D
                    L16_3 = L6_3.x
                    L17_3 = L6_3.y
                    L18_3 = L6_3.z
                    L19_3 = L11_3
                    L20_3 = ""
                    L21_3 = L9_3
                    L19_3 = L19_3 .. L20_3 .. L21_3
                    L20_3 = L10_3
                    L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
                    break
                  else
                    L15_3 = hoverEnt
                    if 0 == L15_3 then
                      L15_3 = DrawText3D
                      L16_3 = L6_3.x
                      L17_3 = L6_3.y
                      L18_3 = L6_3.z
                      L18_3 = L18_3 + 0.1
                      L19_3 = "\226\128\162"
                      L20_3 = 0.7
                      L15_3(L16_3, L17_3, L18_3, L19_3, L20_3)
                    end
                  end
                end
              end
              L0_3 = pairs
              L1_3 = slotKindByEnt
              L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
              for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                L6_3 = SafeDoesEntityExist
                L7_3 = L4_3
                L6_3 = L6_3(L7_3)
                if L6_3 then
                  L6_3 = GetEntityCoords
                  L7_3 = L4_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = Holders
                  if L7_3 then
                    L7_3 = Holders
                    L7_3 = L7_3[L5_3]
                    if L7_3 then
                      L7_3 = Holders
                      L7_3 = L7_3[L5_3]
                      L7_3 = L7_3.item
                      if L7_3 then
                        L7_3 = Holders
                        L7_3 = L7_3[L5_3]
                        L7_3 = L7_3.item
                        if L7_3 then
                          goto lbl_944
                        end
                      end
                    end
                  end
                  L7_3 = "empty"
                  ::lbl_944::
                  L8_3 = 0.0
                  L9_3 = hoverEnt
                  if L9_3 == L4_3 then
                    L8_3 = 0.3
                  end
                  L9_3 = DrawText3D
                  L10_3 = L6_3.x
                  L11_3 = L6_3.y
                  L12_3 = L6_3.z
                  L12_3 = L12_3 + 0.25
                  L13_3 = "~y~%s~s~: %s"
                  L14_3 = L13_3
                  L13_3 = L13_3.format
                  L15_3 = L5_3
                  L16_3 = L7_3
                  L13_3 = L13_3(L14_3, L15_3, L16_3)
                  L14_3 = L8_3
                  L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                end
              end
            end
          end
        end
      end
      L0_3 = dragging
      if not L0_3 then
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.opened
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = inExam
          if not L0_3 then
            L0_3 = pickEntityFromCam
            L1_3 = Config
            L1_3 = L1_3.Drag
            L1_3 = L1_3.maxPickDist
            L0_3 = L0_3(L1_3)
            if not L0_3 then
              L0_3 = 0
            end
            L1_3 = hoverEnt
            if L0_3 ~= L1_3 then
              L1_3 = hoverEnt
              if 0 ~= L1_3 then
                L1_3 = SetEntityDrawOutline
                L2_3 = hoverEnt
                L3_3 = false
                L1_3(L2_3, L3_3)
              end
              hoverEnt = L0_3
              L1_3 = uidByEnt
              L2_3 = hoverEnt
              L1_3 = L1_3[L2_3]
              L2_3 = currentLayout
              if L2_3 then
                L2_3 = currentLayout
                L2_3 = L2_3[L1_3]
              end
              L3_3 = slotKindByEnt
              L4_3 = hoverEnt
              L3_3 = L3_3[L4_3]
              if L3_3 then
                selectedSlot = L3_3
                selectedID = nil
                hooverQT = 0
              else
                selectedSlot = nil
                L4_3 = uidByEnt
                L5_3 = hoverEnt
                L4_3 = L4_3[L5_3]
                selectedID = L4_3
                L4_3 = selectedID
                if L4_3 then
                  L5_3 = qtyByUid
                  L5_3 = L5_3[L4_3]
                  if L5_3 then
                    goto lbl_1026
                  end
                end
                L5_3 = 1
                ::lbl_1026::
                hooverQT = L5_3
              end
              L4_3 = hoverEnt
              if 0 ~= L4_3 then
                if not L3_3 then
                  L4_3 = IsDisabledControlPressed
                  L5_3 = 0
                  L6_3 = 25
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsDisabledControlPressed
                    L5_3 = 0
                    L6_3 = 22
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      L4_3 = IsDisabledControlPressed
                      L5_3 = 0
                      L6_3 = 24
                      L4_3 = L4_3(L5_3, L6_3)
                      if not L4_3 then
                        L4_3 = IsDisabledControlPressed
                        L5_3 = 0
                        L6_3 = 21
                        L4_3 = L4_3(L5_3, L6_3)
                        if not L4_3 then
                          L4_3 = SetEntityDrawOutlineColor
                          L5_3 = 255
                          L6_3 = 255
                          L7_3 = 255
                          L8_3 = 100
                          L4_3(L5_3, L6_3, L7_3, L8_3)
                          L4_3 = SetEntityDrawOutline
                          L5_3 = hoverEnt
                          L6_3 = true
                          L4_3(L5_3, L6_3)
                          L4_3 = PlaySoundFrontend
                          L5_3 = -1
                          L6_3 = "HIGHLIGHT_NAV_UP_DOWN"
                          L7_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                          L8_3 = 1
                          L4_3(L5_3, L6_3, L7_3, L8_3)
                          L4_3 = FadePedOut
                          L4_3()
                          L4_3 = exports
                          L4_3 = L4_3.striano_combat
                          L5_3 = L4_3
                          L4_3 = L4_3.weaponAttachedAlpha
                          L6_3 = 0
                          L4_3(L5_3, L6_3)
                          L4_3 = SetHolderPropsAlpha
                          L5_3 = 0
                          L4_3(L5_3)
                        end
                      end
                    end
                  end
                end
              else
                L4_3 = GetEntityAlpha
                L5_3 = L0_2
                L4_3 = L4_3(L5_3)
                if L4_3 < 1 then
                  L4_3 = FadePedIn
                  L4_3()
                end
              end
            end
          end
        end
      end
      L0_3 = inExam
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 24
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.opened
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 25
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlPressed
              L1_3 = 0
              L2_3 = 25
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = dragging
                if not L0_3 then
                  L0_3 = hoverEnt
                  if 0 ~= L0_3 then
                    L0_3 = slotKindByEnt
                    L1_3 = hoverEnt
                    L0_3 = L0_3[L1_3]
                    if L0_3 then
                    else
                      L1_3 = SetEntityDrawOutline
                      L2_3 = hoverEnt
                      L3_3 = false
                      L1_3(L2_3, L3_3)
                      L1_3 = SetEntityDrawOutlineColor
                      L2_3 = 255
                      L3_3 = 255
                      L4_3 = 0
                      L5_3 = 100
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                      L1_3 = SetEntityDrawOutline
                      L2_3 = hoverEnt
                      L3_3 = true
                      L1_3(L2_3, L3_3)
                      L1_3 = PlaySoundFrontend
                      L2_3 = -1
                      L3_3 = "HIGHLIGHT_NAV_UP_DOWN"
                      L4_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                      L5_3 = 1
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                      L1_3 = selectedID
                      if not L1_3 then
                        L1_3 = uidByEnt
                        L2_3 = hoverEnt
                        L1_3 = L1_3[L2_3]
                      end
                      if L1_3 then
                        L2_3 = canDragUid
                        L3_3 = L1_3
                        L2_3 = L2_3(L3_3)
                        if not L2_3 then
                          L2_3 = testo3d
                          L3_3 = "~r~~h~Blocked: ~w~remove item downside."
                          L2_3(L3_3)
                          L2_3 = Wait
                          L3_3 = 700
                          L2_3(L3_3)
                      end
                      else
                        L2_3 = isCamFacingPlayer
                        L3_3 = 120.0
                        L2_3, L3_3, L4_3 = L2_3(L3_3)
                        if L2_3 then
                          L5_3 = RenderScriptCams
                          L6_3 = false
                          L7_3 = true
                          L8_3 = 500
                          L9_3 = true
                          L10_3 = true
                          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
                          L5_3 = SetGameplayCamRelativeHeading
                          L6_3 = 0.0
                          L5_3(L6_3)
                          L5_3 = SetGameplayCamRelativePitch
                          L6_3 = 0.0
                          L7_3 = 1.0
                          L5_3(L6_3, L7_3)
                        end
                        L5_3 = startDrag
                        L6_3 = hoverEnt
                        L5_3(L6_3)
                      end
                    end
                  end
                else
                  L0_3 = SetEntityDrawOutline
                  L1_3 = hoverEnt
                  L2_3 = false
                  L0_3(L1_3, L2_3)
                  L0_3 = stopDrag
                  L0_3()
                end
              end
            end
          end
        end
        L0_3 = dragging
        if L0_3 then
          L0_3 = IsDisabledControlJustReleased
          L1_3 = 0
          L2_3 = 24
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = SetEntityDrawOutline
            L1_3 = hoverEnt
            L2_3 = false
            L0_3(L1_3, L2_3)
            L0_3 = stopDrag
            L0_3()
          end
        end
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.opened
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = dragging
          if not L0_3 then
            L0_3 = IsDisabledControlJustPressed
            L1_3 = 0
            L2_3 = 25
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = SafeDoesEntityExist
              L1_3 = hoverEnt
              L0_3 = L0_3(L1_3)
              if L0_3 then
                L0_3 = IsDisabledControlJustPressed
                L1_3 = 0
                L2_3 = 25
                L0_3 = L0_3(L1_3, L2_3)
                if L0_3 then
                  L0_3 = SafeDoesEntityExist
                  L1_3 = hoverEnt
                  L0_3 = L0_3(L1_3)
                  if L0_3 then
                    L0_3 = slotKindByEnt
                    L1_3 = hoverEnt
                    L0_3 = L0_3[L1_3]
                    if L0_3 then
                      L1_3 = openHolsterMenu
                      L2_3 = L0_3
                      L1_3(L2_3)
                    else
                      L1_3 = uidByEnt
                      L2_3 = hoverEnt
                      L1_3 = L1_3[L2_3]
                      L2_3 = currentLayout
                      if L2_3 then
                        L2_3 = currentLayout
                        L2_3 = L2_3[L1_3]
                      end
                      if L2_3 then
                        L3_3 = L2_3.placed
                        if true == L3_3 then
                          goto lbl_1279
                        end
                      end
                      L3_3 = testo3d
                      L4_3 = "~r~~h~Not yet placed."
                      L3_3(L4_3)
                      L3_3 = PlaySoundFrontend
                      L4_3 = -1
                      L5_3 = "Pre_Screen_Stinger"
                      L6_3 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                      L7_3 = 0
                      L3_3(L4_3, L5_3, L6_3, L7_3)
                      L3_3 = Wait
                      L4_3 = 350
                      L3_3(L4_3)
                      goto lbl_1281
                      ::lbl_1279::
                      L3_3 = openFastMenu
                      L3_3()
                    end
                  end
                end
                ::lbl_1281::
                L0_3 = SetEntityDrawOutlineColor
                L1_3 = 0
                L2_3 = 255
                L3_3 = 255
                L4_3 = 150
                L0_3(L1_3, L2_3, L3_3, L4_3)
                L0_3 = SetEntityDrawOutline
                L1_3 = hoverEnt
                L2_3 = true
                L0_3(L1_3, L2_3)
                L0_3 = PlaySoundFrontend
                L1_3 = -1
                L2_3 = "HIGHLIGHT_NAV_UP_DOWN"
                L3_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                L4_3 = 1
                L0_3(L1_3, L2_3, L3_3, L4_3)
              end
            end
          end
        end
      end
      L0_3 = dragging
      if L0_3 then
        L0_3 = SafeDoesEntityExist
        L1_3 = dragEnt
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.opened
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = GetDisabledControlNormal
            L1_3 = 0
            L2_3 = 1
            L0_3 = L0_3(L1_3, L2_3)
            L1_3 = GetDisabledControlNormal
            L2_3 = 0
            L3_3 = 2
            L1_3 = L1_3(L2_3, L3_3)
            L2_3 = L13_1.x
            L3_3 = L18_1
            L3_3 = L0_3 * L3_3
            L2_3 = L2_3 + L3_3
            L13_1.x = L2_3
            L2_3 = L13_1.y
            L3_3 = L18_1
            L3_3 = L1_3 * L3_3
            L2_3 = L2_3 - L3_3
            L13_1.y = L2_3
            L2_3 = MAX_DIST_XY
            if L2_3 then
              L2_3 = clampOffsetSquare
              L3_3 = L13_1
              L4_3 = MAX_DIST_XY
              L5_3 = MAX_DIST_XY
              L2_3(L3_3, L4_3, L5_3)
            end
            L2_3 = 10.0
            L3_3 = table
            L3_3 = L3_3.unpack
            L4_3 = GetEntityRotation
            L5_3 = dragEnt
            L6_3 = 2
            L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L4_3(L5_3, L6_3)
            L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
            L6_3 = IsDisabledControlPressed
            L7_3 = 0
            L8_3 = 15
            L6_3 = L6_3(L7_3, L8_3)
            if L6_3 then
              L5_3 = L5_3 + L2_3
            else
              L6_3 = IsDisabledControlPressed
              L7_3 = 0
              L8_3 = 14
              L6_3 = L6_3(L7_3, L8_3)
              if L6_3 then
                L5_3 = L5_3 - L2_3
              end
            end
            L6_3 = SetEntityRotation
            L7_3 = dragEnt
            L8_3 = L3_3
            L9_3 = L4_3
            L10_3 = L5_3
            L11_3 = 2
            L12_3 = true
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L2_3 = L13_1.z
            L3_3 = L19_1
            if L2_3 < L3_3 then
              L2_3 = L19_1
              L13_1.z = L2_3
            end
            L2_3 = L13_1.z
            L3_3 = L20_1
            if L2_3 > L3_3 then
              L2_3 = L20_1
              L13_1.z = L2_3
            end
            L2_3 = L12_1.center
            L3_3 = L12_1.camF
            L4_3 = L12_1.camR
            L5_3 = vector3
            L6_3 = L2_3.x
            L7_3 = L4_3.x
            L8_3 = L13_1.x
            L7_3 = L7_3 * L8_3
            L6_3 = L6_3 + L7_3
            L7_3 = L3_3.x
            L8_3 = L13_1.y
            L7_3 = L7_3 * L8_3
            L6_3 = L6_3 + L7_3
            L7_3 = L2_3.y
            L8_3 = L4_3.y
            L9_3 = L13_1.x
            L8_3 = L8_3 * L9_3
            L7_3 = L7_3 + L8_3
            L8_3 = L3_3.y
            L9_3 = L13_1.y
            L8_3 = L8_3 * L9_3
            L7_3 = L7_3 + L8_3
            L8_3 = L2_3.z
            L9_3 = L13_1.z
            L8_3 = L8_3 + L9_3
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            L6_3 = slotKindByEnt
            L7_3 = dragEnt
            L6_3 = L6_3[L7_3]
            if L6_3 then
              L7_3 = vector3
              L8_3 = L5_3.x
              L9_3 = L5_3.y
              L10_3 = GetEntityCoords
              L11_3 = PlayerPedId
              L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3 = L11_3()
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
              L10_3 = L10_3.z
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L5_3 = L7_3
            end
            L7_3 = dragUid
            if L7_3 then
              L7_3 = currentLayout
              if L7_3 then
                L7_3 = currentLayout
                L8_3 = dragUid
                L7_3 = L7_3[L8_3]
                if L7_3 then
                  L7_3 = PlayerPedId
                  L7_3 = L7_3()
                  L8_3 = currentLayout
                  L9_3 = dragUid
                  L8_3 = L8_3[L9_3]
                  L9_3 = worldToOffset
                  L10_3 = L7_3
                  L11_3 = L5_3
                  L9_3 = L9_3(L10_3, L11_3)
                  L8_3.off = L9_3
                end
              end
            end
            L7_3 = resolveOverlap
            L8_3 = dragEnt
            L9_3 = L5_3
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L5_3 = L7_3
              L8_3 = SetEntityCoordsNoOffset
              L9_3 = dragEnt
              L10_3 = L5_3.x
              L11_3 = L5_3.y
              L12_3 = L5_3.z
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            end
            L8_3 = L5_3 - L2_3
            L9_3 = L8_3.x
            L10_3 = L4_3.x
            L9_3 = L9_3 * L10_3
            L10_3 = L8_3.y
            L11_3 = L4_3.y
            L10_3 = L10_3 * L11_3
            L9_3 = L9_3 + L10_3
            L10_3 = L8_3.z
            L11_3 = L4_3.z
            L10_3 = L10_3 * L11_3
            L9_3 = L9_3 + L10_3
            L13_1.x = L9_3
            L9_3 = L8_3.x
            L10_3 = L3_3.x
            L9_3 = L9_3 * L10_3
            L10_3 = L8_3.y
            L11_3 = L3_3.y
            L10_3 = L10_3 * L11_3
            L9_3 = L9_3 + L10_3
            L10_3 = L8_3.z
            L11_3 = L3_3.z
            L10_3 = L10_3 * L11_3
            L9_3 = L9_3 + L10_3
            L13_1.y = L9_3
            L9_3 = L5_3.z
            L10_3 = L2_3.z
            L9_3 = L9_3 - L10_3
            L13_1.z = L9_3
            L9_3 = ApplyNoCollisionForMoving
            L10_3 = dragEnt
            L9_3(L10_3)
            L9_3 = dragging
            if L9_3 then
              L9_3 = SafeDoesEntityExist
              L10_3 = dragEnt
              L9_3 = L9_3(L10_3)
              if L9_3 then
                L9_3 = ApplyNoCollisionForMoving
                L10_3 = dragEnt
                L9_3(L10_3)
              end
            end
            L9_3 = SetEntityCoordsNoOffset
            L10_3 = dragEnt
            L11_3 = L5_3.x
            L12_3 = L5_3.y
            L13_3 = L5_3.z
            L14_3 = false
            L15_3 = false
            L16_3 = false
            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
          end
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = hoverEnt
    if 0 ~= L0_3 then
      L0_3 = SetEntityDrawOutline
      L1_3 = hoverEnt
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    invLoopRunning = false
    dragging = false
    dragEnt = 0
    dragUid = ""
    L0_3 = FreezeEntityPosition
    L1_3 = L0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = hoverEnt
    if 0 ~= L0_3 then
      L0_3 = SafeDoesEntityExist
      L1_3 = hoverEnt
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityDrawOutline
        L1_3 = hoverEnt
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    hoverEnt = 0
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = faiAnim
    L1_3 = "weapon@w_sp_jerrycan"
    L2_3 = "holster"
    L3_3 = 750
    L4_3 = 49
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L1_2(L2_2)
end
StartInvLoop = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    return
  end
  L2_2 = Holders
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.item
    if L3_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L3_2 = tostring
  L4_2 = L2_2.item
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.meta
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = L4_2.ammoTotal
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0
  end
  L5_2 = L5_2(L6_2)
  if L5_2 > 0 then
    L6_2 = TriggerServerEvent
    L7_2 = "inv3d:weaponUnloadToAmmoItem"
    L8_2 = A0_2
    L9_2 = L3_2
    L10_2 = "player"
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L4_2.ammoTotal = 0
  L4_2.ammoClip = 0
  L2_2.meta = L4_2
  L6_2 = Holders
  L6_2[A0_2] = nil
  L6_2 = TriggerServerEvent
  L7_2 = "inv3d:updateHolderMeta"
  L8_2 = A0_2
  L9_2 = L4_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = GetCurrentPedWeapon
  L7_2 = L1_2
  L8_2 = true
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 and -1569615261 ~= L7_2 then
    L8_2 = GetHashKey
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L8_2 = SetPedAmmo
      L9_2 = L1_2
      L10_2 = L7_2
      L11_2 = 0
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = SetAmmoInClip
      L9_2 = L1_2
      L10_2 = L7_2
      L11_2 = 0
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = SetCurrentPedWeapon
      L9_2 = L1_2
      L10_2 = -1569615261
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = RemoveAllPedWeapons
      L9_2 = L1_2
      L10_2 = true
      L8_2(L9_2, L10_2)
    end
  end
end
UnequipHolsterSlot = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.lower
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = type
  L2_2 = NameToHashW
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = NameToHashW
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = NameToHashW
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.sub
  L3_2 = 1
  L4_2 = 7
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if "weapon_" == L1_2 then
    L1_2 = "WEAPON_"
    L3_2 = A0_2
    L2_2 = A0_2.sub
    L4_2 = 8
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2
    L2_2 = L2_2.upper
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2 .. L2_2
    L2_2 = GetHashKey
    L3_2 = L1_2
    return L2_2(L3_2)
  end
  L1_2 = nil
  return L1_2
end
ResolveWeaponHashFromItem = L23_1
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Holders
  if L1_2 then
    L1_2 = Holders
    L1_2 = L1_2[A0_2]
  end
  if L1_2 then
    L2_2 = L1_2.item
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_13::
  L2_2 = ResolveWeaponHashFromItem
  L3_2 = L1_2.item
  L2_2 = L2_2(L3_2)
  if not L2_2 or 0 == L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetSelectedPedWeapon
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 or -1569615261 == L4_2 then
    L5_2 = false
    return L5_2
  end
  if L4_2 == L2_2 then
    L5_2 = true
    L6_2 = L2_2
    L7_2 = L1_2.item
    return L5_2, L6_2, L7_2
  end
  L5_2 = false
  return L5_2
end
IsHolsteredWeaponEquipped = L23_1
L23_1 = RegisterCommand
L24_1 = "menuSword"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.getmysword
  L0_2 = L0_2(L1_2)
  L1_2 = false
  if L0_2 > 0 then
    L1_2 = true
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "Disassemble Melee Weapon"
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = TriggerServerEvent
      L1_3 = "inv3d:giveItem"
      L2_3 = GetPlayerServerId
      L3_3 = PlayerId
      L3_3, L4_3, L5_3 = L3_3()
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = "player"
      L4_3 = "melee_weapon"
      L5_3 = L0_2
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.strianosetweapon
      L2_3 = 0
      L0_3(L1_3, L2_3)
      L0_3 = ExecuteCommand
      L1_3 = "e posatasca"
      L0_3(L1_3)
    end
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.getmybow
  L2_2 = L2_2(L3_2)
  if L2_2 > 0 then
    L1_2 = true
    L3_2 = exports
    L3_2 = L3_2.striano_fastmenu
    L4_2 = L3_2
    L3_2 = L3_2.addMenuItem
    L5_2 = "Disassemble Bow"
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = "bow"
      L1_3 = L2_2
      if L1_3 > 1 then
        L1_3 = "bow"
        L2_3 = L2_2
        L1_3 = L1_3 .. L2_3
        L0_3 = L1_3
      end
      L1_3 = TriggerServerEvent
      L2_3 = "inv3d:giveItem"
      L3_3 = GetPlayerServerId
      L4_3 = PlayerId
      L4_3, L5_3, L6_3 = L4_3()
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = "player"
      L5_3 = L0_3
      L6_3 = L2_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.strianosetbow
      L3_3 = 0
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e posatasca"
      L1_3(L2_3)
    end
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = exports
  L3_2 = L3_2.striano_combat
  L4_2 = L3_2
  L3_2 = L3_2.getmyshield
  L3_2 = L3_2(L4_2)
  if L3_2 > 0 then
    L1_2 = true
    L4_2 = exports
    L4_2 = L4_2.striano_fastmenu
    L5_2 = L4_2
    L4_2 = L4_2.addMenuItem
    L6_2 = "Disassemble Shield"
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = "shield"
      L1_3 = L3_2
      if L1_3 > 1 then
        L1_3 = "shield"
        L2_3 = L3_2
        L1_3 = L1_3 .. L2_3
        L0_3 = L1_3
      end
      L1_3 = TriggerServerEvent
      L2_3 = "inv3d:giveItem"
      L3_3 = GetPlayerServerId
      L4_3 = PlayerId
      L4_3, L5_3, L6_3 = L4_3()
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = "player"
      L5_3 = L0_3
      L6_3 = L3_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.strianosetshield
      L3_3 = 0
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e posatasca"
      L1_3(L2_3)
    end
    L4_2(L5_2, L6_2, L7_2)
  end
  if L1_2 then
    L4_2 = exports
    L4_2 = L4_2.striano_fastmenu
    L5_2 = L4_2
    L4_2 = L4_2.closeWithX
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = exports
    L4_2 = L4_2.striano_fastmenu
    L5_2 = L4_2
    L4_2 = L4_2.openMenu
    L4_2(L5_2)
  else
    L4_2 = ExecuteCommand
    L5_2 = "e shrug5"
    L4_2(L5_2)
  end
end
L23_1(L24_1, L25_1)
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = Holders
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.item
    if L2_2 then
      L2_2 = IsHolsteredWeaponEquipped
      L3_2 = A0_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      if L2_2 then
        L5_2 = exports
        L5_2 = L5_2.striano_fastmenu
        L6_2 = L5_2
        L5_2 = L5_2.addMenuItem
        L7_2 = "Accessories [%s]"
        L8_2 = L7_2
        L7_2 = L7_2.format
        L9_2 = A0_2
        L7_2 = L7_2(L8_2, L9_2)
        function L8_2()
          local L0_3, L1_3
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.close
          L0_3(L1_3)
          L0_3 = CreateThread
          function L1_3()
            local L0_4, L1_4, L2_4
            L0_4 = Wait
            L1_4 = 125
            L0_4(L1_4)
            L0_4 = closeInventory
            L0_4()
            L0_4 = exports
            L0_4 = L0_4.gs_weaponcustomizer
            L1_4 = L0_4
            L0_4 = L0_4.editweap
            L2_4 = L3_2
            L0_4(L1_4, L2_4)
          end
          L0_3(L1_3)
        end
        L9_2 = true
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
      L5_2 = PlayerPedId
      L5_2 = L5_2()
      L6_2 = GetSelectedPedWeapon
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L7_2 = GetHashKey
      L8_2 = L1_2.item
      L7_2 = L7_2(L8_2)
      L8_2 = L6_2 == L7_2
      if L8_2 then
        L9_2 = "Unequip ("
        L10_2 = L1_2.item
        L11_2 = ")"
        L9_2 = L9_2 .. L10_2 .. L11_2
        if L9_2 then
          goto lbl_51
        end
      end
      L9_2 = "Equip ("
      L10_2 = L1_2.item
      L11_2 = ")"
      L9_2 = L9_2 .. L10_2 .. L11_2
      ::lbl_51::
      L10_2 = exports
      L10_2 = L10_2.striano_fastmenu
      L11_2 = L10_2
      L10_2 = L10_2.addMenuItem
      L12_2 = L9_2
      function L13_2()
        local L0_3, L1_3
        L0_3 = closeInventory
        L0_3()
        L0_3 = A0_2
        if "primary" == L0_3 then
          L0_3 = ExecuteCommand
          L1_3 = "weapslot1"
          L0_3(L1_3)
        else
          L0_3 = ExecuteCommand
          L1_3 = "weapslot2"
          L0_3(L1_3)
        end
      end
      L10_2(L11_2, L12_2, L13_2)
      if not L8_2 then
        L10_2 = exports
        L10_2 = L10_2.striano_fastmenu
        L11_2 = L10_2
        L10_2 = L10_2.addMenuItem
        L12_2 = "Disassemble [%s]"
        L13_2 = L12_2
        L12_2 = L12_2.format
        L14_2 = A0_2
        L12_2 = L12_2(L13_2, L14_2)
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.clearMenu
          L0_3(L1_3)
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.close
          L0_3(L1_3)
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = OpenInput
          L1_3 = "Disassemble? Type 'yes'"
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L1_3 = string
            L1_3 = L1_3.find
            L2_3 = L0_3
            L3_3 = "yes"
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = L2_2
              if L1_3 then
                L1_3 = L3_2
                if L1_3 then
                  L1_3 = GetAmmoInClip
                  L2_3 = PlayerPedId
                  L2_3 = L2_3()
                  L3_3 = L3_2
                  L1_3, L2_3 = L1_3(L2_3, L3_3)
                  if L2_3 and L2_3 > 0 then
                    L3_3 = TriggerServerEvent
                    L4_3 = "inv3d:giveItem"
                    L5_3 = GetPlayerServerId
                    L6_3 = PlayerId
                    L6_3, L7_3, L8_3 = L6_3()
                    L5_3 = L5_3(L6_3, L7_3, L8_3)
                    L6_3 = "player"
                    L7_3 = HashToNameW
                    L8_3 = L3_2
                    L7_3 = L7_3(L8_3)
                    L8_3 = L2_3
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                    L3_3 = ExecuteCommand
                    L4_3 = "e posatasca"
                    L3_3(L4_3)
                    L3_3 = Wait
                    L4_3 = 550
                    L3_3(L4_3)
                    L3_3 = testo3d
                    L4_3 = "~h~~g~Disassembled"
                    L3_3(L4_3)
                  end
                end
              end
              L1_3 = TriggerServerEvent
              L2_3 = "inv3d:holderUnequip"
              L3_3 = A0_2
              L4_3 = currentInv
              L1_3(L2_3, L3_3, L4_3)
              L1_3 = UnequipHolsterSlot
              L2_3 = A0_2
              L1_3(L2_3)
              L1_3 = slotEnt
              L2_3 = A0_2
              L1_3 = L1_3[L2_3]
              if L1_3 then
                L1_3 = DoesEntityExist
                L2_3 = slotEnt
                L3_3 = A0_2
                L2_3 = L2_3[L3_3]
                L1_3 = L1_3(L2_3)
                if L1_3 then
                  L1_3 = SetEntityAsMissionEntity
                  L2_3 = slotEnt
                  L3_3 = A0_2
                  L2_3 = L2_3[L3_3]
                  L3_3 = true
                  L4_3 = true
                  L1_3(L2_3, L3_3, L4_3)
                  L1_3 = DeleteEntity
                  L2_3 = slotEnt
                  L3_3 = A0_2
                  L2_3 = L2_3[L3_3]
                  L1_3(L2_3)
                end
              end
              L1_3 = Holders
              L2_3 = A0_2
              L1_3[L2_3] = nil
              L1_3 = TriggerServerEvent
              L2_3 = "inv3d:setHolder"
              L3_3 = A0_2
              L4_3 = nil
              L1_3(L2_3, L3_3, L4_3)
              L1_3 = nil
              L6_2 = L1_3
              currentWeaponData = nil
              L1_3 = exports
              L1_3 = L1_3.striano_fastmenu
              L2_3 = L1_3
              L1_3 = L1_3.close
              L1_3(L2_3)
            end
          end
        end
        L14_2 = true
        L10_2(L11_2, L12_2, L13_2, L14_2)
      end
  end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "Slot [%s] empty"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    function L5_2()
      local L0_3, L1_3
    end
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.closeWithX
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
openHolsterMenu = L23_1
baseInv = nil
baseInv2 = nil
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = baseInv
  if L0_2 then
    L0_2 = SafeDoesEntityExist
    L1_2 = baseInv
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = baseInv
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = baseInv
      L0_2(L1_2)
    end
  end
  L0_2 = baseInv2
  if L0_2 then
    L0_2 = SafeDoesEntityExist
    L1_2 = baseInv2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = baseInv2
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = baseInv2
      L0_2(L1_2)
    end
  end
  L0_2 = RequestModelStriano
  L1_2 = -422507380
  L0_2(L1_2)
  L0_2 = getFrontPoint
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = FORWARD_DIST
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = CreateObjectNoOffset
  L2_2 = -422507380
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L5_2 = L5_2 - 0.5
  L6_2 = false
  L7_2 = false
  L8_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = SetEntityAsMissionEntity
  L3_2 = L1_2
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetEntityCollision
  L3_2 = L1_2
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetEntityCompletelyDisableCollision
  L3_2 = L1_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  baseInv = L1_2
  L2_2 = CreateObjectNoOffset
  L3_2 = -422507380
  L4_2 = L0_2.x
  L5_2 = L0_2.y
  L6_2 = L0_2.z
  L6_2 = L6_2 - 0.5
  L6_2 = L6_2 + 0.001
  L7_2 = false
  L8_2 = false
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetEntityAsMissionEntity
  L4_2 = L2_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityCollision
  L4_2 = L2_2
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityCompletelyDisableCollision
  L4_2 = L2_2
  L5_2 = false
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = GetEntityRotation
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = SetEntityRotation
  L5_2 = L2_2
  L6_2 = L3_2.x
  L6_2 = L6_2 + 180
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  baseInv2 = L2_2
end
spawnBaseInv = L23_1
L23_1 = nil
L24_1 = RegisterNetEvent
L25_1 = "inv3d:checkEmptyInvResult"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L23_1
  if L1_2 then
    L1_2 = L23_1
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = nil
    L23_1 = L1_2
  end
end
L24_1(L25_1, L26_1)
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L23_1 = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = "inv3d:checkEmptyInv"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
IsInventoryEmpty = L24_1
LastOpenedInventory = ""
LastOpenedInventoryPos = nil
L24_1 = 550
L25_1 = false
L26_1 = 0
function L27_1()
  local L0_2, L1_2, L2_2
  L0_2 = canOpenInv
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L25_1
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = invOpen
  if not L1_2 then
    L1_2 = invLoopRunning
    if not L1_2 then
      goto lbl_21
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_21::
  L1_2 = L26_1
  L1_2 = L0_2 - L1_2
  L2_2 = L24_1
  if L1_2 < L2_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  L25_1 = L1_2
  L26_1 = L0_2
  L1_2 = true
  return L1_2
end
CanOpenInvNow = L27_1
L27_1 = exports
L28_1 = "OpenInventory"
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CanOpenInvNow
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedRagdoll
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedFatallyInjured
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_21
    end
  end
  L2_2 = false
  L25_1 = L2_2
  do return end
  ::lbl_21::
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.HintHud_SetVisible
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Grab_Parachute"
  L5_2 = "BASEJUMPS_SOUNDS"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  while true do
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 37
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IsDisabledControlPressed
      L3_2 = 0
      L4_2 = 45
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 45
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          break
        end
      end
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  bloccoMiraSparo = true
  L2_2 = bloccoMira
  L2_2()
  previewTargetUid = nil
  previewCanMerge = false
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "player"
  end
  currentInv = L2_2
  if "player" ~= A0_2 then
    LastOpenedInventory = A0_2
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    LastOpenedInventoryPos = L2_2
  end
  invOpen = true
  selectedID = nil
  L2_2 = isPlayerInventory
  L2_2 = L2_2()
  if L2_2 then
  else
    L2_2 = clearSlotObjects
    L2_2()
  end
  L2_2 = false
  L25_1 = L2_2
  L2_2 = StartInvLoop
  L2_2()
  L2_2 = TriggerServerEvent
  L3_2 = "inv3d:load"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L27_1(L28_1, L29_1)
L27_1 = exports
L28_1 = "isopen"
function L29_1()
  local L0_2, L1_2
  L0_2 = invLoopRunning
  return L0_2
end
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = invOpen
  if not L2_2 then
    return
  end
  L2_2 = tappeto
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = tappeto
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = tappeto
      L2_2(L3_2)
      L2_2 = DeleteEntity
      L3_2 = tappeto
      L2_2(L3_2)
      tappeto = nil
    end
  end
  L2_2 = stopDrag
  L2_2()
  bloccoMiraSparo = false
  L2_2 = SetPedAlphaInstant
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = ResetEntityAlpha
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.weaponAttachedAlpha
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = SetHolderPropsAlpha
  L3_2 = nil
  L2_2(L3_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Falling_Crates"
  L5_2 = "EXILE_1"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = spawned
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = SafeDoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = {}
      L10_2 = worldToOffset
      L11_2 = L1_2
      L12_2 = GetEntityCoords
      L13_2 = L8_2
      L12_2, L13_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2.off = L10_2
      L10_2 = currentLayout
      L10_2 = L10_2[L7_2]
      L10_2 = L10_2.placed
      L9_2.placed = L10_2
      L2_2[L7_2] = L9_2
    end
  end
  L3_2 = TriggerServerEvent
  L4_2 = "inv3d:saveLayout"
  L5_2 = currentInv
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = clearSpawned
  L3_2()
  invOpen = false
  currentInv = nil
  invLoopRunning = false
  L3_2 = clearSlotObjects
  L3_2()
  if nil == A0_2 then
    L3_2 = ClearPedTasks
    L4_2 = L1_2
    L3_2(L4_2)
  end
end
closeInventory = L27_1
L27_1 = exports
L28_1 = "CloseInventory"
function L29_1()
  local L0_2, L1_2
  L0_2 = closeInventory
  L0_2()
end
L27_1(L28_1, L29_1)
L27_1 = exports
L28_1 = "closeInventory"
function L29_1()
  local L0_2, L1_2
  L0_2 = closeInventory
  L0_2()
end
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = {}
    L1_2.x = 0.0
    L1_2.y = 0.0
    L1_2.z = 0.0
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = tonumber
    L2_2 = A0_2[1]
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 0.0
    end
  end
  L2_2 = tonumber
  L3_2 = A0_2.y
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A0_2[2]
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = 0.0
    end
  end
  L3_2 = tonumber
  L4_2 = A0_2.z
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = tonumber
    L4_2 = A0_2[3]
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = 0.0
    end
  end
  L4_2 = {}
  L4_2.x = L1_2
  L4_2.y = L2_2
  L4_2.z = L3_2
  return L4_2
end
normVec3 = L27_1
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 then
      L8_2 = L7_2.uid
      if L8_2 then
        L8_2 = L7_2.uid
        L1_2[L8_2] = true
      end
    end
  end
  L2_2 = spawned
  if not L2_2 then
    L2_2 = {}
  end
  spawned = L2_2
  L2_2 = uidByEnt
  if not L2_2 then
    L2_2 = {}
  end
  uidByEnt = L2_2
  L2_2 = pairs
  L3_2 = spawned
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = dragging
    if L8_2 then
      L8_2 = dragUid
      if L6_2 ~= L8_2 then
        L8_2 = dragEnt
        if L7_2 ~= L8_2 then
          goto lbl_46
        end
      end
      L1_2[L6_2] = true
    end
    ::lbl_46::
    L8_2 = L1_2[L6_2]
    if not L8_2 then
      if L7_2 then
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = uidByEnt
          L8_2[L7_2] = nil
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L7_2
          L10_2 = true
          L11_2 = true
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = DeleteEntity
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
      L8_2 = spawned
      L8_2[L6_2] = nil
      L8_2 = qtyByUid
      L8_2[L6_2] = nil
      L8_2 = instByUid
      L8_2[L6_2] = nil
    end
  end
end
reconcileInvEntities = L27_1
L27_1 = {}
L28_1 = false
L29_1 = 0
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L27_1 = L1_2
  L1_2 = ipairs
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L27_1
    L7_2[L5_2] = L6_2
  end
  L1_2 = true
  L28_1 = L1_2
end
RefreshPlayerCache = L30_1
L30_1 = lastInvRev
if not L30_1 then
  L30_1 = {}
end
L31_1 = RegisterNetEvent
L32_1 = "inv3d:loadResult"
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = L30_1
  L5_2 = tonumber
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = L30_1
    L5_2 = L5_2[A0_2]
    if not L5_2 then
      L5_2 = 0
    end
  end
  L4_2[A0_2] = L5_2
  L4_2 = type
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = "string" == L4_2
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = {}
  end
  instances = L5_2
  if "player" == A0_2 then
    L5_2 = RefreshPlayerCache
    L6_2 = A1_2
    L5_2(L6_2)
  end
  if not L4_2 then
    L5_2 = type
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L5_2 = A2_2 or L5_2
    if "table" ~= L5_2 or not A2_2 then
      L5_2 = {}
    end
    currentLayout = L5_2
  else
    L5_2 = currentLayout
    if not L5_2 then
      L5_2 = {}
    end
    currentLayout = L5_2
    L5_2 = pairs
    L6_2 = A2_2 or L6_2
    if not A2_2 then
      L6_2 = {}
    end
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = currentLayout
      L12_2 = currentLayout
      L12_2 = L12_2[L9_2]
      if not L12_2 then
        L12_2 = {}
      end
      L11_2[L9_2] = L12_2
      L11_2 = pairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = currentLayout
        L17_2 = L17_2[L9_2]
        L17_2[L15_2] = L16_2
      end
    end
  end
  L5_2 = {}
  instByUid = L5_2
  L5_2 = {}
  qtyByUid = L5_2
  L5_2 = ipairs
  L6_2 = instances
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = L10_2.uid
      if L11_2 then
        L11_2 = instByUid
        L12_2 = L10_2.uid
        L11_2[L12_2] = L10_2
        L11_2 = qtyByUid
        L12_2 = L10_2.uid
        L13_2 = tonumber
        L14_2 = L10_2.count
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = 1
        end
        L11_2[L12_2] = L13_2
      end
    end
  end
  L5_2 = ipairs
  L6_2 = instances
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = L10_2.uid
      if L11_2 then
        L11_2 = tostring
        L12_2 = L10_2.uid
        L11_2 = L11_2(L12_2)
        L12_2 = currentLayout
        L13_2 = type
        L14_2 = currentLayout
        L14_2 = L14_2[L11_2]
        L13_2 = L13_2(L14_2)
        if "table" == L13_2 then
          L13_2 = currentLayout
          L13_2 = L13_2[L11_2]
          if L13_2 then
            goto lbl_138
          end
        end
        L13_2 = {}
        ::lbl_138::
        L12_2[L11_2] = L13_2
        L12_2 = currentLayout
        L12_2 = L12_2[L11_2]
        if not L4_2 then
          L13_2 = L12_2.off
          if L13_2 then
            L13_2 = normVec3
            L14_2 = L12_2.off
            L13_2 = L13_2(L14_2)
            L12_2.off = L13_2
            L12_2.placed = true
          else
            L13_2 = L10_2.off
            if L13_2 then
              L13_2 = normVec3
              L14_2 = L10_2.off
              L13_2 = L13_2(L14_2)
              L12_2.off = L13_2
              L12_2.placed = false
            else
              L12_2.off = nil
              L12_2.placed = false
            end
          end
        else
          L13_2 = L12_2.off
          if L13_2 then
            L13_2 = normVec3
            L14_2 = L12_2.off
            L13_2 = L13_2(L14_2)
            L12_2.off = L13_2
            L12_2.placed = true
            L12_2.pending = false
          else
            L12_2.placed = false
            L12_2.pending = false
          end
        end
      end
    end
  end
  L5_2 = reconcileInvEntities
  L6_2 = instances
  L5_2(L6_2)
  L5_2 = invOpen
  if L5_2 then
    L5_2 = currentInv
    if A0_2 == L5_2 then
      goto lbl_189
    end
  end
  do return end
  ::lbl_189::
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = ipairs
  L7_2 = instances
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    if L11_2 then
      L12_2 = L11_2.uid
      if L12_2 then
        L12_2 = L11_2.item
        if L12_2 then
          L12_2 = Config
          L12_2 = L12_2.Items
          L13_2 = L11_2.item
          L12_2 = L12_2[L13_2]
          L13_2 = currentLayout
          L14_2 = L11_2.uid
          L13_2 = L13_2[L14_2]
          if L12_2 then
            L14_2 = L12_2.model
            if L14_2 and L13_2 then
              L14_2 = L13_2.off
              if L14_2 then
                L14_2 = L13_2.placed
                if true == L14_2 then
                  L14_2 = offsetToWorld
                  L15_2 = L5_2
                  L16_2 = L13_2.off
                  L14_2 = L14_2(L15_2, L16_2)
                  L15_2 = spawnLocal
                  L16_2 = L11_2.uid
                  L17_2 = L12_2.model
                  L18_2 = L14_2
                  L19_2 = L11_2.count
                  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                  if L15_2 then
                    L16_2 = normVec3
                    L17_2 = L11_2.rot
                    L16_2 = L16_2(L17_2)
                    L17_2 = GetEntityHeading
                    L18_2 = L5_2
                    L17_2 = L17_2(L18_2)
                    L18_2 = L16_2.z
                    if not L18_2 then
                      L18_2 = 0.0
                    end
                    L17_2 = L17_2 + L18_2
                    L18_2 = SetEntityRotation
                    L19_2 = L15_2
                    L20_2 = L16_2.x
                    if not L20_2 then
                      L20_2 = 0.0
                    end
                    L21_2 = L16_2.y
                    if not L21_2 then
                      L21_2 = 0.0
                    end
                    L22_2 = L17_2
                    L23_2 = 2
                    L24_2 = true
                    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
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
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "inv3d:mergeResult"
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = qtyByUid
  L4_2[A2_2] = A3_2
  L4_2 = instByUid
  L4_2 = L4_2[A2_2]
  if L4_2 then
    L4_2 = instByUid
    L4_2 = L4_2[A2_2]
    L4_2.count = A3_2
  end
  L4_2 = removeStackLocal
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = testo3d
  L5_2 = "Merged ("
  L6_2 = A3_2
  L7_2 = ")"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2(L5_2)
  L4_2 = PlaySoundFrontend
  L5_2 = -1
  L6_2 = "PUSH"
  L7_2 = "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS"
  L8_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = faiAnim
  L5_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L6_2 = "fullcut_cycle_v2_cokecutter"
  L7_2 = 750
  L8_2 = 49
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = Wait
    L1_3 = 750
    L0_3(L1_3)
    L0_3 = invOpen
    if L0_3 then
      L0_3 = faiAnim
      L1_3 = "anim@amb@business@cfm@cfm_cut_sheets@"
      L2_3 = "load_and_tune_guilotine_v1_billcutter"
      L3_3 = -1
      L4_3 = 49
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  L4_2(L5_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "inv3d:splitResult"
function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = invOpen
  if L5_2 then
    L5_2 = currentInv
    if A0_2 == L5_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L5_2 = qtyByUid
  L5_2[A1_2] = A4_2
  L5_2 = instByUid
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L5_2 = instByUid
    L5_2 = L5_2[A1_2]
    L5_2.count = A4_2
  end
  L5_2 = instByUid
  L5_2 = L5_2[A2_2]
  if not L5_2 then
    L5_2 = instByUid
    L5_2 = L5_2[A1_2]
    if not L5_2 then
      return
    end
    L6_2 = {}
    L6_2.uid = A2_2
    L7_2 = L5_2.item
    L6_2.item = L7_2
    L6_2.count = A3_2
    L7_2 = L5_2.meta
    L6_2.meta = L7_2
    L7_2 = L5_2.off
    L6_2.off = L7_2
    L7_2 = L5_2.rot
    L6_2.rot = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = instances
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = instByUid
    L7_2[A2_2] = L6_2
    L7_2 = qtyByUid
    L7_2[A2_2] = A3_2
  end
  L5_2 = currentLayout
  if not L5_2 then
    L5_2 = {}
  end
  currentLayout = L5_2
  L5_2 = currentLayout
  L6_2 = currentLayout
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L6_2 = {}
  end
  L5_2[A2_2] = L6_2
  L5_2 = TriggerServerEvent
  L6_2 = "inv3d:setPlaced"
  L7_2 = currentInv
  if not L7_2 then
    L7_2 = "player"
  end
  L8_2 = A2_2
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L31_1(L32_1, L33_1)
L31_1 = AddEventHandler
L32_1 = "onResourceStop"
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = tappeto
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = tappeto
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = tappeto
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = tappeto
        L2_2(L3_2)
      end
    end
    L2_2 = baseInv
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = baseInv
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = baseInv
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = baseInv
        L2_2(L3_2)
      end
    end
    L2_2 = baseInv2
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = baseInv2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = baseInv2
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = baseInv2
        L2_2(L3_2)
      end
    end
    L2_2 = pala
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = pala
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = pala
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = pala
        L2_2(L3_2)
      end
    end
    L2_2 = carriola3d
    if L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = carriola3d
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = carriola3d
        L2_2(L3_2)
        L2_2 = DeleteEntity
        L3_2 = carriola3d
        L2_2(L3_2)
      end
    end
    L2_2 = pairs
    L3_2 = spawned
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = SetEntityAsMissionEntity
        L9_2 = L7_2
        L8_2(L9_2)
        L8_2 = DeleteEntity
        L9_2 = L7_2
        L8_2(L9_2)
      end
    end
    L2_2 = pairs
    L3_2 = slotEnt
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = SetEntityAsMissionEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = DeleteEntity
      L9_2 = L7_2
      L8_2(L9_2)
    end
    L2_2 = SetCurrentPedWeapon
    L3_2 = L1_2
    L4_2 = -1569615261
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetCurrentPedVehicleWeapon
    L3_2 = L1_2
    L4_2 = -1569615261
    L2_2(L3_2, L4_2)
    L2_2 = SetCanPedEquipAllWeapons
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = pairs
    L3_2 = holderProps
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if L7_2 and 0 ~= L7_2 then
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L7_2
          L8_2(L9_2)
          L8_2 = DeleteEntity
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
    end
    L2_2 = pairs
    L3_2 = chestEnt
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if L7_2 then
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L7_2
          L10_2 = true
          L11_2 = true
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = DeleteEntity
          L9_2 = L7_2
          L8_2(L9_2)
        end
      end
    end
  end
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "inv3d:invChanged"
L31_1(L32_1)
L31_1 = AddEventHandler
L32_1 = "inv3d:invChanged"
function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = invOpen
  if not L1_2 then
    return
  end
  L1_2 = currentInv
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = dragging
  if L2_2 then
    return
  end
  L2_2 = L6_1
  if not L2_2 then
    L2_2 = 0
  end
  if L1_2 < L2_2 then
    return
  end
  L2_2 = L30_1
  if L2_2 then
    L2_2 = L30_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_36
    end
  end
  L2_2 = 0
  ::lbl_36::
  L3_2 = TriggerServerEvent
  L4_2 = "inv3d:sync"
  L5_2 = A0_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L31_1(L32_1, L33_1)
L31_1 = RegisterNetEvent
L32_1 = "inv3d:syncNoChange"
L31_1(L32_1)
L31_1 = AddEventHandler
L32_1 = "inv3d:syncNoChange"
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = L30_1
  if not L2_2 then
    L2_2 = {}
  end
  L30_1 = L2_2
  L2_2 = L30_1
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L30_1
    L3_2 = L3_2[A0_2]
    if not L3_2 then
      L3_2 = 0
    end
  end
  L2_2[A0_2] = L3_2
end
L31_1(L32_1, L33_1)
L31_1 = {}
L32_1 = {}
L32_1.x = 55.0
L32_1.y = 55.0
L32_1.z = 85.0
L31_1.sens = L32_1
L31_1.deadzone = 0.002
L32_1 = {}
L33_1 = -85.0
L34_1 = 85.0
L32_1[1] = L33_1
L32_1[2] = L34_1
L31_1.clampPitch = L32_1
L32_1 = {}
L33_1 = -180.0
L34_1 = 180.0
L32_1[1] = L33_1
L32_1[2] = L34_1
L31_1.clampRoll = L32_1
L32_1 = {}
L32_1.x = true
L32_1.y = true
L32_1.z = true
L31_1.axes = L32_1
L31_1.invertY = true
L31_1.blockCamera = true
L32_1 = {}
L32_1.rollWithMouseX = 44
L32_1.rollWithMouseY = 38
L32_1.stop = 21
L31_1.keys = L32_1
function L32_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
clampROT = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = pairs
  L3_2 = L31_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2[L6_2]
    if nil == L8_2 then
      A1_2[L6_2] = L7_2
    end
  end
  L2_2 = pairs
  L3_2 = L31_1.sens
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2.sens
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = A1_2.sens
      L8_2[L6_2] = L7_2
    end
  end
  L2_2 = pairs
  L3_2 = L31_1.axes
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2.axes
    L8_2 = L8_2[L6_2]
    if nil == L8_2 then
      L8_2 = A1_2.axes
      L8_2[L6_2] = L7_2
    end
  end
  L2_2 = pairs
  L3_2 = L31_1.keys
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2.keys
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = A1_2.keys
      L8_2[L6_2] = L7_2
    end
  end
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityRotation
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = GetEntityRotation
    L1_3 = A0_2
    L2_3 = 2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = true
    while L1_3 do
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = IsControlPressed
      L3_3 = 0
      L4_3 = 73
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        break
      end
      L2_3 = DisableControlAction
      L3_3 = 0
      L4_3 = 1
      L5_3 = true
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = DisableControlAction
      L3_3 = 0
      L4_3 = 2
      L5_3 = true
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = GetDisabledControlNormal
      L3_3 = 0
      L4_3 = 1
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = GetDisabledControlNormal
      L4_3 = 0
      L5_3 = 2
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L5_3 = A1_2.deadzone
      if L4_3 < L5_3 then
        L2_3 = 0.0
      end
      L4_3 = math
      L4_3 = L4_3.abs
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = A1_2.deadzone
      if L4_3 < L5_3 then
        L3_3 = 0.0
      end
      L4_3 = A1_2.blockCamera
      if L4_3 then
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = A1_2.keys
        L6_3 = L6_3.rollWithMouseX
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlPressed
          L5_3 = 0
          L6_3 = A1_2.keys
          L6_3 = L6_3.rollWithMouseY
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            goto lbl_80
          end
        end
        L4_3 = DisableControlAction
        L5_3 = 0
        L6_3 = 1
        L7_3 = true
        L4_3(L5_3, L6_3, L7_3)
        L4_3 = DisableControlAction
        L5_3 = 0
        L6_3 = 2
        L7_3 = true
        L4_3(L5_3, L6_3, L7_3)
      end
      ::lbl_80::
      L4_3 = L0_3.x
      L5_3 = L0_3.y
      L6_3 = L0_3.z
      L7_3 = A1_2.axes
      L7_3 = L7_3.z
      if L7_3 and 0.0 ~= L2_3 then
        L7_3 = IsControlPressed
        L8_3 = 0
        L9_3 = A1_2.keys
        L9_3 = L9_3.rollWithMouseX
        L7_3 = L7_3(L8_3, L9_3)
        if not L7_3 then
          L7_3 = IsControlPressed
          L8_3 = 0
          L9_3 = A1_2.keys
          L9_3 = L9_3.rollWithMouseY
          L7_3 = L7_3(L8_3, L9_3)
          if not L7_3 then
            L7_3 = A1_2.sens
            L7_3 = L7_3.z
            L7_3 = L2_3 * L7_3
            L6_3 = L6_3 + L7_3
          end
        end
      end
      L7_3 = A1_2.axes
      L7_3 = L7_3.x
      if L7_3 and 0.0 ~= L3_3 then
        L7_3 = IsControlPressed
        L8_3 = 0
        L9_3 = A1_2.keys
        L9_3 = L9_3.rollWithMouseX
        L7_3 = L7_3(L8_3, L9_3)
        if not L7_3 then
          L7_3 = IsControlPressed
          L8_3 = 0
          L9_3 = A1_2.keys
          L9_3 = L9_3.rollWithMouseY
          L7_3 = L7_3(L8_3, L9_3)
          if not L7_3 then
            L7_3 = A1_2.invertY
            if L7_3 then
              L7_3 = 1
              if L7_3 then
                goto lbl_136
              end
            end
            L7_3 = -1
            ::lbl_136::
            L8_3 = L7_3 * L3_3
            L9_3 = A1_2.sens
            L9_3 = L9_3.x
            L8_3 = L8_3 * L9_3
            L4_3 = L4_3 + L8_3
            L8_3 = clampROT
            L9_3 = L4_3
            L10_3 = A1_2.clampPitch
            L10_3 = L10_3[1]
            L11_3 = A1_2.clampPitch
            L11_3 = L11_3[2]
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L4_3 = L8_3
          end
        end
      end
      L7_3 = A1_2.axes
      L7_3 = L7_3.y
      if L7_3 then
        L7_3 = 0.0
        L8_3 = IsControlPressed
        L9_3 = 0
        L10_3 = A1_2.keys
        L10_3 = L10_3.rollWithMouseX
        L8_3 = L8_3(L9_3, L10_3)
        if L8_3 and 0.0 ~= L2_3 then
          L8_3 = A1_2.sens
          L8_3 = L8_3.y
          L7_3 = L2_3 * L8_3
        else
          L8_3 = IsControlPressed
          L9_3 = 0
          L10_3 = A1_2.keys
          L10_3 = L10_3.rollWithMouseY
          L8_3 = L8_3(L9_3, L10_3)
          if L8_3 and 0.0 ~= L3_3 then
            L8_3 = A1_2.invertY
            if L8_3 then
              L8_3 = 1
              if L8_3 then
                goto lbl_187
              end
            end
            L8_3 = -1
            ::lbl_187::
            L9_3 = L8_3 * L3_3
            L10_3 = A1_2.sens
            L10_3 = L10_3.y
            L7_3 = L9_3 * L10_3
          end
        end
        if 0.0 ~= L7_3 then
          L5_3 = L5_3 + L7_3
          L8_3 = A1_2.clampRoll
          if L8_3 then
            L8_3 = clampROT
            L9_3 = L5_3
            L10_3 = A1_2.clampRoll
            L10_3 = L10_3[1]
            L11_3 = A1_2.clampRoll
            L11_3 = L11_3[2]
            L8_3 = L8_3(L9_3, L10_3, L11_3)
            L5_3 = L8_3
          end
        end
      end
      L7_3 = 180.0
      if L6_3 > L7_3 then
        L6_3 = L6_3 - 360.0
      else
        L7_3 = -180.0
        if L6_3 < L7_3 then
          L6_3 = L6_3 + 360.0
        end
      end
      L7_3 = 180.0
      if L4_3 > L7_3 then
        L4_3 = L4_3 - 360.0
      else
        L7_3 = -180.0
        if L4_3 < L7_3 then
          L4_3 = L4_3 + 360.0
        end
      end
      L7_3 = 180.0
      if L5_3 > L7_3 then
        L5_3 = L5_3 - 360.0
      else
        L7_3 = -180.0
        if L5_3 < L7_3 then
          L5_3 = L5_3 + 360.0
        end
      end
      L7_3 = vec3
      L8_3 = L4_3
      L9_3 = L5_3
      L10_3 = L6_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L0_3 = L7_3
      L7_3 = SetEntityRotation
      L8_3 = A0_2
      L9_3 = L0_3.x
      L10_3 = L0_3.y
      L11_3 = L0_3.z
      L12_3 = 2
      L13_3 = true
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3 = IsControlJustReleased
      L8_3 = 0
      L9_3 = A1_2.keys
      L9_3 = L9_3.stop
      L7_3 = L7_3(L8_3, L9_3)
      if not L7_3 then
        L7_3 = IsControlJustReleased
        L8_3 = 0
        L9_3 = 73
        L7_3 = L7_3(L8_3, L9_3)
        if not L7_3 then
          L7_3 = IsControlJustReleased
          L8_3 = 0
          L9_3 = 24
          L7_3 = L7_3(L8_3, L9_3)
          if not L7_3 then
            L7_3 = IsControlJustReleased
            L8_3 = 0
            L9_3 = 25
            L7_3 = L7_3(L8_3, L9_3)
            if not L7_3 then
              L7_3 = IsDisabledControlJustReleased
              L8_3 = 0
              L9_3 = A1_2.keys
              L9_3 = L9_3.stop
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                L7_3 = IsDisabledControlJustReleased
                L8_3 = 0
                L9_3 = 73
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  L7_3 = IsDisabledControlJustReleased
                  L8_3 = 0
                  L9_3 = 24
                  L7_3 = L7_3(L8_3, L9_3)
                  if not L7_3 then
                    L7_3 = IsDisabledControlJustReleased
                    L8_3 = 0
                    L9_3 = 25
                    L7_3 = L7_3(L8_3, L9_3)
                    if not L7_3 then
                      goto lbl_306
                    end
                  end
                end
              end
            end
          end
        end
      end
      L1_3 = false
      ::lbl_306::
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L2_3 = DisableControlAction
    L3_3 = 0
    L4_3 = 0
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = DisableFirstPersonCamThisFrame
    L2_3()
    L2_3 = SetEntityCoordsNoOffset
    L3_3 = A0_2
    L4_3 = L2_2
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityRotation
    L3_3 = A0_2
    L4_3 = L3_2
    L2_3(L3_3, L4_3)
    inExam = false
  end
  L4_2(L5_2)
end
RotateWithMouse = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L3_2 = L3_2 * A1_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L3_2 = L3_2 * A1_2
  L2_2.z = L3_2
  return L2_2
end
mulNumber = L32_1
function L32_1(A0_2)
  local L1_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = A0_2 * L1_2
  L1_2 = L1_2 / 180.0
  return L1_2
end
degToRad = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 + L4_2
  L2_2.z = L3_2
  return L2_2
end
addVector3 = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2.x
  L4_2 = A1_2.x
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L3_2 = A0_2.z
  L4_2 = A1_2.z
  L3_2 = L3_2 - L4_2
  L2_2.z = L3_2
  return L2_2
end
subVector3 = L32_1
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = degToRad
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = degToRad
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L4_2.x = L5_2
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * L3_2
  L4_2.y = L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2.z = L5_2
  return L4_2
end
rotationToDirection = L32_1
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetScreenCoordFromWorldCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = {}
  L5_2 = L2_2 - 0.5
  L5_2 = L5_2 * 2
  L4_2.x = L5_2
  L5_2 = L3_2 - 0.5
  L5_2 = L5_2 * 2
  L4_2.y = L5_2
  L4_2.z = 0
  return L4_2
end
w2s = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetActiveScreenResolution
  L2_2, L3_2 = L2_2()
  L4_2 = A0_2 / L2_2
  L4_2 = L4_2 * 1.0
  L4_2 = L4_2 * 2
  L5_2 = 1
  L4_2 = L5_2 - L4_2
  L5_2 = A1_2 / L3_2
  L5_2 = L5_2 * 1.0
  L5_2 = L5_2 * 2
  L6_2 = 1
  L5_2 = L6_2 - L5_2
  if L4_2 > 0.0 then
    L4_2 = -L4_2
  else
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
  end
  if L5_2 > 0.0 then
    L5_2 = -L5_2
  else
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = {}
  L6_2.x = L4_2
  L6_2.y = L5_2
  return L6_2
end
processCoordinates = L32_1
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = GetGameplayCamRot
  L4_2 = 0
  L3_2 = L3_2(L4_2)
  L4_2 = rotationToDirection
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = addVector3
  L6_2 = L3_2
  L7_2 = {}
  L7_2.x = 10
  L7_2.y = 0
  L7_2.z = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = addVector3
  L7_2 = L3_2
  L8_2 = {}
  L8_2.x = -10
  L8_2.y = 0
  L8_2.z = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = addVector3
  L8_2 = L3_2
  L9_2 = {}
  L9_2.x = 0
  L9_2.y = 0
  L9_2.z = -10
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = addVector3
  L9_2 = L3_2
  L10_2 = {}
  L10_2.x = 0
  L10_2.y = 0
  L10_2.z = 10
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = subVector3
  L10_2 = rotationToDirection
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  L11_2 = rotationToDirection
  L12_2 = L7_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L10_2 = subVector3
  L11_2 = rotationToDirection
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = rotationToDirection
  L13_2 = L6_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L11_2 = degToRad
  L12_2 = L3_2.y
  L11_2 = L11_2(L12_2)
  L11_2 = -L11_2
  L12_2 = subVector3
  L13_2 = mulNumber
  L14_2 = L9_2
  L15_2 = math
  L15_2 = L15_2.cos
  L16_2 = L11_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = mulNumber
  L15_2 = L10_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = addVector3
  L14_2 = mulNumber
  L15_2 = L9_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L15_2 = mulNumber
  L16_2 = L10_2
  L17_2 = math
  L17_2 = L17_2.cos
  L18_2 = L11_2
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L17_2(L18_2)
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = addVector3
  L15_2 = addVector3
  L16_2 = addVector3
  L17_2 = A0_2
  L18_2 = mulNumber
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = L12_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = w2s
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  L16_2 = undefined
  if L15_2 == L16_2 then
    L16_2 = addVector3
    L17_2 = A0_2
    L18_2 = mulNumber
    L19_2 = L4_2
    L20_2 = 10.0
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
    return L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
  L16_2 = addVector3
  L17_2 = A0_2
  L18_2 = mulNumber
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = w2s
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  if nil == L17_2 then
    L18_2 = addVector3
    L19_2 = A0_2
    L20_2 = mulNumber
    L21_2 = L4_2
    L22_2 = 10.0
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L20_2(L21_2, L22_2)
    return L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
  L18_2 = 0.001
  L19_2 = math
  L19_2 = L19_2.abs
  L20_2 = L15_2.x
  L21_2 = L17_2.x
  L20_2 = L20_2 - L21_2
  L19_2 = L19_2(L20_2)
  if not (L18_2 > L19_2) then
    L19_2 = math
    L19_2 = L19_2.abs
    L20_2 = L15_2.y
    L21_2 = L17_2.y
    L20_2 = L20_2 - L21_2
    L19_2 = L19_2(L20_2)
    if not (L18_2 > L19_2) then
      goto lbl_165
    end
  end
  L19_2 = addVector3
  L20_2 = A0_2
  L21_2 = mulNumber
  L22_2 = L4_2
  L23_2 = 10.0
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L21_2(L22_2, L23_2)
  do return L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2) end
  ::lbl_165::
  L19_2 = L17_2.x
  L19_2 = A1_2 - L19_2
  L20_2 = L15_2.x
  L21_2 = L17_2.x
  L20_2 = L20_2 - L21_2
  L19_2 = L19_2 / L20_2
  L20_2 = L17_2.y
  L20_2 = A2_2 - L20_2
  L21_2 = L15_2.y
  L22_2 = L17_2.y
  L21_2 = L21_2 - L22_2
  L20_2 = L20_2 / L21_2
  L21_2 = addVector3
  L22_2 = addVector3
  L23_2 = addVector3
  L24_2 = A0_2
  L25_2 = mulNumber
  L26_2 = L4_2
  L27_2 = 10.0
  L25_2, L26_2, L27_2 = L25_2(L26_2, L27_2)
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L24_2 = mulNumber
  L25_2 = L12_2
  L26_2 = L19_2
  L24_2, L25_2, L26_2, L27_2 = L24_2(L25_2, L26_2)
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
  L23_2 = mulNumber
  L24_2 = L13_2
  L25_2 = L20_2
  L23_2, L24_2, L25_2, L26_2, L27_2 = L23_2(L24_2, L25_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  return L21_2
end
s2w = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = GetNuiCursorPosition
  L2_2, L3_2 = L2_2()
  L4_2 = L2_2
  L5_2 = L3_2
  L6_2 = GetGameplayCamCoord
  L6_2 = L6_2()
  L7_2 = processCoordinates
  L8_2 = L4_2
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = s2w
  L9_2 = L6_2
  L10_2 = L7_2.x
  L11_2 = L7_2.y
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = subVector3
  L10_2 = L8_2
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = addVector3
  L11_2 = L6_2
  L12_2 = mulNumber
  L13_2 = L9_2
  L14_2 = 0.05
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = addVector3
  L12_2 = L6_2
  L13_2 = mulNumber
  L14_2 = L9_2
  L15_2 = 300
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2 = nil
  L13_2 = PlayerPedId
  L13_2 = L13_2()
  L14_2 = Finded
  if nil ~= L14_2 then
    L14_2 = SetEntityCollision
    L15_2 = Finded
    L16_2 = false
    L17_2 = false
    L14_2(L15_2, L16_2, L17_2)
  end
  L14_2 = _ENV
  L15_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L14_2 = L14_2[L15_2]
  L15_2 = L6_2
  L16_2 = vector3
  L17_2 = L11_2.x
  L18_2 = L11_2.y
  L19_2 = L11_2.z
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = 127
  L18_2 = L13_2
  L19_2 = 0
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2 = L14_2
  L14_2 = GetShapeTestResult
  L15_2 = L12_2
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2)
  if L15_2 then
    return L16_2
  else
    L19_2 = nil
    return L19_2
  end
end
screenToWorld = L32_1
inExam = false
function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  while true do
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 24
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsDisabledControlPressed
      L2_2 = 0
      L3_2 = 24
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        break
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  inExam = true
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = screenToWorld
    L1_3 = 0
    L0_3 = L0_3(L1_3)
    if nil ~= L0_3 then
      L1_3 = vector3
      L2_3 = 0.0
      L3_3 = 0.0
      L4_3 = 0.0
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      if L0_3 ~= L1_3 then
        L1_3 = RotateWithMouse
        L2_3 = A0_2
        L3_3 = {}
        L4_3 = {}
        L4_3.x = 10.0
        L4_3.y = 10.0
        L4_3.z = 10.0
        L3_3.sens = L4_3
        L4_3 = {}
        L4_3.x = true
        L4_3.y = true
        L4_3.z = true
        L3_3.axes = L4_3
        L3_3.invertY = true
        L1_3(L2_3, L3_3)
      end
    end
  end
  L1_2(L2_2)
end
ExamineItem = L32_1
L32_1 = exports
L33_1 = "hoparacadute"
function L34_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = HasPedGotWeapon
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetHashKey
  L3_2 = "GADGET_PARACHUTE"
  L2_2 = L2_2(L3_2)
  L3_2 = false
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  return L0_2
end
L32_1(L33_1, L34_1)
L32_1 = {}
L32_1.primary = 0
L32_1.secondry = 0
holderProps = L32_1
L32_1 = false
L33_1 = false
function L34_1(A0_2)
  local L1_2, L2_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
deleteEntSafe = L34_1
function L34_1()
  local L0_2, L1_2
  L0_2 = L33_1
  if L0_2 then
    return
  end
  L0_2 = true
  L33_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L32_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = pairs
      L1_3 = holderProps
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        if L5_3 and 0 ~= L5_3 then
          L6_3 = DoesEntityExist
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if L6_3 then
            L6_3 = SetEntityVisible
            L7_3 = L5_3
            L8_3 = false
            L9_3 = false
            L6_3(L7_3, L8_3, L9_3)
            L6_3 = SetEntityAlpha
            L7_3 = L5_3
            L8_3 = 0
            L9_3 = false
            L6_3(L7_3, L8_3, L9_3)
            L6_3 = SetEntityLocallyInvisible
            L7_3 = L5_3
            L6_3(L7_3)
          end
        end
      end
    end
    L0_3 = pairs
    L1_3 = holderProps
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      if L5_3 and 0 ~= L5_3 then
        L6_3 = DoesEntityExist
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = ResetEntityAlpha
          L7_3 = L5_3
          L6_3(L7_3)
          L6_3 = SetEntityVisible
          L7_3 = L5_3
          L8_3 = true
          L9_3 = false
          L6_3(L7_3, L8_3, L9_3)
        end
      end
    end
    L0_3 = false
    L33_1 = L0_3
  end
  L0_2(L1_2)
end
StartHolderInvisibleThread = L34_1
L34_1 = exports
L35_1 = "SetHolderPropsInvisible"
function L36_1(A0_2)
  local L1_2
  L1_2 = true == A0_2
  L32_1 = L1_2
  L1_2 = L32_1
  if L1_2 then
    L1_2 = StartHolderInvisibleThread
    L1_2()
  end
end
L34_1(L35_1, L36_1)
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  if "primary" ~= A0_2 and "secondry" ~= A0_2 then
    L1_2 = print
    L2_2 = "^1[spawnHolderProp] slot NOT valid:^7"
    L3_2 = tostring
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = deleteEntSafe
  L3_2 = holderProps
  L3_2 = L3_2[A0_2]
  L2_2(L3_2)
  L2_2 = holderProps
  L2_2[A0_2] = 0
  L2_2 = Holders
  if L2_2 then
    L2_2 = Holders
    L2_2 = L2_2[A0_2]
  end
  if L2_2 then
    L3_2 = L2_2.item
    if L3_2 then
      goto lbl_31
    end
  end
  do return end
  ::lbl_31::
  L3_2 = Config
  L3_2 = L3_2.Items
  L4_2 = L2_2.item
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L4_2 = L3_2.model
    if L4_2 then
      L4_2 = L3_2.bone
      if L4_2 then
        L4_2 = L3_2.d
        if L4_2 then
          goto lbl_47
        end
      end
    end
  end
  do return end
  ::lbl_47::
  L4_2 = currentWeapon
  if L4_2 then
    L4_2 = currentWeapon
    L5_2 = L2_2.item
    if L4_2 == L5_2 then
      return
    end
  end
  L4_2 = L3_2.model
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L4_2 or L5_2
  if "number" ~= L5_2 or not L4_2 then
    L5_2 = GetHashKey
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
  end
  L6_2 = RequestModel
  L7_2 = L5_2
  L6_2(L7_2)
  while true do
    L6_2 = HasModelLoaded
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = CreateObjectNoOffset
  L7_2 = L5_2
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetEntityCollision
  L8_2 = L6_2
  L9_2 = false
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityCompletelyDisableCollision
  L8_2 = L6_2
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = SetEntityAsMissionEntity
  L8_2 = L6_2
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L3_2.bone
  L8_2 = L3_2.d
  L9_2 = AttachEntityToEntity
  L10_2 = L6_2
  L11_2 = L1_2
  L12_2 = GetPedBoneIndex
  L13_2 = L1_2
  L14_2 = L7_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L8_2[1]
  L14_2 = L8_2[2]
  L15_2 = L8_2[3]
  L16_2 = L8_2[4]
  L17_2 = L8_2[5]
  L18_2 = L8_2[6]
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L22_2 = true
  L23_2 = 1
  L24_2 = true
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L9_2 = holderProps
  L9_2[A0_2] = L6_2
  L9_2 = SetModelAsNoLongerNeeded
  L10_2 = L5_2
  L9_2(L10_2)
end
spawnHolderProp = L34_1
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityVisible
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityAlpha
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = 200
      if L1_2 > L2_2 then
        L1_2 = spawnHolderProp
        L2_2 = "primary"
        L1_2(L2_2)
        L1_2 = spawnHolderProp
        L2_2 = "secondry"
        L1_2(L2_2)
      end
    end
  end
end
UpdateHolderProps = L34_1
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "inv3d:holderUnequip"
  L3_2 = A0_2
  L4_2 = "player"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = hoverEnt
  if L1_2 > 0 then
    L1_2 = SetEntityDrawOutline
    L2_2 = hoverEnt
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = UnequipHolsterSlot
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = SetEntityAsMissionEntity
  L2_2 = slotEnt
  L2_2 = L2_2[A0_2]
  L1_2(L2_2)
  L1_2 = DeleteEntity
  L2_2 = slotEnt
  L2_2 = L2_2[A0_2]
  L1_2(L2_2)
  L1_2 = Holders
  L1_2[A0_2] = nil
  L1_2 = TriggerServerEvent
  L2_2 = "inv3d:setHolder"
  L3_2 = A0_2
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = closeInventory
  L1_2()
end
UnequipFunc = L34_1
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = "primary"
  L1_2 = UnequipFunc
  L2_2 = L0_2
  L1_2(L2_2)
  L0_2 = "secondry"
  L1_2 = UnequipFunc
  L2_2 = L0_2
  L1_2(L2_2)
end
UnequipSlots = L34_1
L34_1 = RegisterNetEvent
L35_1 = "inv3d:clearWeaponSlot"
function L36_1()
  local L0_2, L1_2
  L0_2 = UnequipSlots
  L0_2()
end
L34_1(L35_1, L36_1)
L34_1 = exports
L35_1 = "clearWeaponSlot"
function L36_1()
  local L0_2, L1_2
  L0_2 = UnequipSlots
  L0_2()
end
L34_1(L35_1, L36_1)
L34_1 = exports
L35_1 = "aggiornaHolders"
function L36_1()
  local L0_2, L1_2
  L0_2 = UpdateHolderProps
  L0_2()
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "inv3d:fullInventory"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = testo3d
  L3_2 = "~r~~h~FULL~h~ ("
  L4_2 = A0_2
  L5_2 = ")"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.Items
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.model
  end
  L4_2 = PlaySoundFrontend
  L5_2 = -1
  L6_2 = "ERROR"
  L7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "inv3d:limitHit"
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = testo3d
  L3_2 = "~r~~h~LIMIT~h~ ("
  L4_2 = A0_2
  L5_2 = ")"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = Config
  L2_2 = L2_2.Items
  L2_2 = L2_2[A0_2]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.model
  end
  L4_2 = PlaySoundFrontend
  L5_2 = -1
  L6_2 = "ERROR"
  L7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = "inv3d:openInspect"
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = invOpen
  if L1_2 then
    return
  end
  L1_2 = "inspect:%d"
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L1_2 = L1_2(L2_2, L3_2)
  currentInv = L1_2
  invOpen = true
  selectedID = nil
  L1_2 = clearSlotObjects
  L1_2()
  L1_2 = StartInvLoop
  L1_2()
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Grab_Parachute"
  L4_2 = "BASEJUMPS_SOUNDS"
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = TriggerServerEvent
  L2_2 = "inv3d:frugaRequest"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L34_1(L35_1, L36_1)
L34_1 = -413608921
L35_1 = -427546305
L36_1 = {}
chests = L36_1
L36_1 = {}
chestEnt = L36_1
L36_1 = CreateThread
function L37_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 3000
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
  L2_2 = "inv3d:requestChestsSync"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L36_1(L37_1)
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = chests
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = chestEnt
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = chestEnt
    L3_2 = L3_2[A0_2]
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = chestEnt
      L3_2 = L3_2[A0_2]
      L4_2 = true
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = DeleteEntity
      L3_2 = chestEnt
      L3_2 = L3_2[A0_2]
      L2_2(L3_2)
      L2_2 = chestEnt
      L2_2[A0_2] = nil
    end
  end
  L2_2 = L1_2.open
  if L2_2 then
    L2_2 = L35_1
    if L2_2 then
      goto lbl_35
    end
  end
  L2_2 = L34_1
  ::lbl_35::
  L3_2 = RequestModelStriano
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = CreateObjectNoOffset
  L4_2 = L2_2
  L5_2 = L1_2.pos
  L5_2 = L5_2.x
  L6_2 = L1_2.pos
  L6_2 = L6_2.y
  L7_2 = L1_2.pos
  L7_2 = L7_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  while true do
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = SetEntityRotation
  L5_2 = L3_2
  L6_2 = L1_2.rot
  L6_2 = L6_2.x
  L7_2 = L1_2.rot
  L7_2 = L7_2.y
  L8_2 = L1_2.rot
  L8_2 = L8_2.z
  L9_2 = 2
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = chestEnt
  L4_2[A0_2] = L3_2
end
spawnChest = L36_1
L36_1 = RegisterNetEvent
L37_1 = "inv3d:chestsSync"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  chests = L1_2
  L1_2 = ipairs
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = chests
    L8_2 = {}
    L9_2 = vector3
    L10_2 = L6_2.pos
    L10_2 = L10_2[1]
    L11_2 = L6_2.pos
    L11_2 = L11_2[2]
    L12_2 = L6_2.pos
    L12_2 = L12_2[3]
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.pos = L9_2
    L9_2 = vector3
    L10_2 = L6_2.rot
    L10_2 = L10_2[1]
    L11_2 = L6_2.rot
    L11_2 = L11_2[2]
    L12_2 = L6_2.rot
    L12_2 = L12_2[3]
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.rot = L9_2
    L9_2 = L6_2.open
    L9_2 = true == L9_2
    L8_2.open = L9_2
    L7_2[L5_2] = L8_2
    L7_2 = spawnChest
    L8_2 = L5_2
    L7_2(L8_2)
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "inv3d:chestState"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = chests
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = chests
  L2_2 = L2_2[A0_2]
  L3_2 = true == A1_2
  L2_2.open = L3_2
  L2_2 = spawnChest
  L3_2 = A0_2
  L2_2(L3_2)
end
L36_1(L37_1, L38_1)
L36_1 = false
L37_1 = 0
L38_1 = nil
L39_1 = RegisterNetEvent
L40_1 = "inv3d:openInvByName"
function L41_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L36_1
  if L2_2 then
    L2_2 = L38_1
    if L2_2 == A0_2 then
      L2_2 = L37_1
      L2_2 = L1_2 - L2_2
      L3_2 = 800
      if L2_2 < L3_2 then
        return
      end
    end
  end
  L2_2 = true
  L36_1 = L2_2
  L37_1 = L1_2
  L38_1 = A0_2
  L2_2 = OpenInventory2D
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 800
    L0_3(L1_3)
    L0_3 = false
    L36_1 = L0_3
  end
  L2_2(L3_2)
end
L39_1(L40_1, L41_1)
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
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
makeEntityFacePos = L39_1
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = 3
  L0_2 = L0_2(L1_2, L2_2)
  if 1 == L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "inv3d:giveItem"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = "player"
    L5_2 = "mweapon_pumpshotgun"
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 10
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  elseif 2 == L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "inv3d:giveItem"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = "player"
    L5_2 = "mweapon_smg"
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 50
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L1_2 = TriggerServerEvent
    L2_2 = "inv3d:giveItem"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = "player"
    L5_2 = "mweapon_pistol"
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 1
    L8_2 = 20
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
EstraiMunizioni = L39_1
L39_1 = CreateThread
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Wait
  L1_2 = 1500
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = false
    L3_2 = pairs
    L4_2 = chests
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.pos
      L9_2 = L1_2 - L9_2
      L9_2 = #L9_2
      L10_2 = 1.2
      if L9_2 < L10_2 then
        L10_2 = invOpen
        if not L10_2 then
          L2_2 = true
          L10_2 = DrawText3D
          L11_2 = L8_2.pos
          L11_2 = L11_2.x
          L12_2 = L8_2.pos
          L12_2 = L12_2.y
          L13_2 = L8_2.pos
          L13_2 = L13_2.z
          L13_2 = L13_2 + 0.3
          L14_2 = L8_2.open
          if L14_2 then
            L14_2 = "~y~~h~[E]~h~ ~w~Chest"
            if L14_2 then
              goto lbl_44
            end
          end
          L14_2 = "~y~~h~[E]~h~ ~w~Open"
          ::lbl_44::
          L15_2 = 0.45
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L10_2 = IsControlJustPressed
          L11_2 = 0
          L12_2 = 38
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 then
            L10_2 = chests
            L10_2 = L10_2[L7_2]
            L10_2 = L10_2.open
            if not L10_2 then
              L10_2 = makeEntityFacePos
              L11_2 = L0_2
              L12_2 = L8_2.pos
              L10_2(L11_2, L12_2)
              L10_2 = faiAnim
              L11_2 = "anim@mp_snowball"
              L12_2 = "pickup_snowball"
              L13_2 = 750
              L14_2 = 49
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = Wait
              L11_2 = 950
              L10_2(L11_2)
            end
            L10_2 = TriggerServerEvent
            L11_2 = "inv3d:openChestRequest"
            L12_2 = L7_2
            L10_2(L11_2, L12_2)
            L10_2 = Wait
            L11_2 = 250
            L10_2(L11_2)
          end
        end
      end
    end
    if not L2_2 then
      L3_2 = Wait
      L4_2 = 2000
      L3_2(L4_2)
    end
  end
end
L39_1(L40_1)
L39_1 = _ENV
L40_1 = "giveInvSword"
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.getmysword
  L1_2 = L1_2(L2_2)
  if L1_2 > 0 then
    L2_2 = L1_2
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:giveItem"
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = "player"
    L7_2 = "melee_weapon"
    L8_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.strianosetweapon
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "bloccoMiraSparo"
L39_1[L40_1] = false
L39_1 = _ENV
L40_1 = "bloccoMira"
function L41_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = bloccoMiraSparo
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
      L2_3 = 257
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 25
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 68
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 91
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 140
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 141
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 142
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisablePlayerFiring
      L1_3 = PlayerId
      L1_3 = L1_3()
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  L0_2(L1_2)
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "exports"
L39_1 = L39_1[L40_1]
L40_1 = "bloccamira"
function L41_1(A0_2)
  local L1_2
  if A0_2 then
    bloccoMiraSparo = true
    L1_2 = bloccoMira
    L1_2()
  else
    bloccoMiraSparo = false
  end
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNetEvent
L40_1 = "inv3d:clientRebuildWeaponHolsters"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:requestHolders"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "BloccaAnim"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = A0_2
      L3_3 = A1_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 0
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 21
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 22
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 44
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L2_2(L3_2)
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "pala"
L41_1 = nil
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "palapiena"
L41_1 = nil
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "carriola3d"
L41_1 = nil
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "GetClosestObject"
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = 0
  L4_2 = {}
  L5_2 = GetGamePool
  L6_2 = "CObject"
  L5_2 = L5_2(L6_2)
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = 1
    L13_2 = #A0_2
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L16_2 = GetEntityModel
      L17_2 = L11_2
      L16_2 = L16_2(L17_2)
      L17_2 = A0_2[L15_2]
      if L16_2 == L17_2 then
        L16_2 = GetEntityCoords
        L17_2 = L11_2
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2 - A1_2
        L16_2 = #L16_2
        if L16_2 < 3.0 then
          L16_2 = table
          L16_2 = L16_2.insert
          L17_2 = L4_2
          L18_2 = L11_2
          L16_2(L17_2, L18_2)
        end
      end
    end
  end
  L6_2 = print
  L7_2 = "Inseriti "
  L8_2 = #L4_2
  L9_2 = " oggetti riempibili con il terreno nella tabella."
  L7_2 = L7_2 .. L8_2 .. L9_2
  L6_2(L7_2)
  L6_2 = 2.0
  if nil ~= A2_2 then
    L6_2 = A2_2
  end
  L7_2 = false
  L8_2 = ipairs
  L9_2 = L4_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    if nil ~= L13_2 then
      L14_2 = DoesEntityExist
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L14_2 - A1_2
        L15_2 = #L15_2
        if L6_2 >= L15_2 then
          L7_2 = true
          L6_2 = L15_2
          L3_2 = L13_2
        end
      end
    end
  end
  if not L7_2 then
    L3_2 = 0
  end
  return L3_2
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "Scavabile"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = StartShapeTestRay
  L2_2 = L0_2
  L3_2 = vector3
  L4_2 = L0_2.x
  L5_2 = L0_2.y
  L6_2 = L0_2.z
  L6_2 = L6_2 - 2.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 17
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = 7
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = GetShapeTestResultIncludingMaterial
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  if L3_2 then
    if -1833527165 == L6_2 or 1333033863 == L6_2 or -700658213 == L6_2 or 1109728704 == L6_2 or -642658848 == L6_2 or -1885547121 == L6_2 or -1942898710 == L6_2 or 951832588 == L6_2 or 510490462 == L6_2 or 1635937914 == L6_2 then
      L8_2 = true
      return L8_2
    else
      L8_2 = false
      return L8_2
    end
  else
    L8_2 = false
    return L8_2
  end
  L8_2 = false
  return L8_2
end
L39_1[L40_1] = L41_1
L39_1 = RegisterNetEvent
L40_1 = "PrendiPala"
L39_1(L40_1)
L39_1 = AddEventHandler
L40_1 = "PrendiPala"
function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L1_2 = ExecuteCommand
  L2_2 = "e prendi4"
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 255
  L1_2(L2_2)
  L1_2 = "prop_tool_shovel006"
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "weapons@heavy@minigun"
  L4_2 = "idle"
  L5_2 = RequestModelStriano
  L6_2 = GetHashKey
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L5_2 = GetEntityCoords
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if nil ~= A0_2 then
    L6_2 = DoesEntityExist
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = SetEntityAsMissionEntity
      L7_2 = A0_2
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = A0_2
      L6_2(L7_2)
    end
  end
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = L5_2
  L9_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  pala = L6_2
  L6_2 = 0
  while true do
    L7_2 = DoesEntityExist
    L8_2 = pala
    L7_2 = L7_2(L8_2)
    if not (not L7_2 and L6_2 < 100) then
      break
    end
    L6_2 = L6_2 + 1
    L7_2 = print
    L8_2 = "Pala in caricamento"
    L7_2(L8_2)
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = AttachEntityToEntity
  L8_2 = pala
  L9_2 = L2_2
  L10_2 = GetPedBoneIndex
  L11_2 = L2_2
  L12_2 = 28422
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = 1.22
  L12_2 = 0.3
  L13_2 = 0.14
  L14_2 = -191.0
  L15_2 = 88.0
  L16_2 = 22.0
  L17_2 = true
  L18_2 = true
  L19_2 = false
  L20_2 = true
  L21_2 = 1
  L22_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = false
  while not L7_2 do
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
    L8_2 = DisableControlAction
    L9_2 = 0
    L10_2 = 24
    L8_2(L9_2, L10_2)
    L8_2 = DisableControlAction
    L9_2 = 0
    L10_2 = 25
    L8_2(L9_2, L10_2)
    L8_2 = IsEntityPlayingAnim
    L9_2 = L2_2
    L10_2 = L3_2
    L11_2 = L4_2
    L12_2 = 3
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    if not L8_2 then
      L8_2 = faiAnim
      L9_2 = L3_2
      L10_2 = L4_2
      L11_2 = -1
      L12_2 = 49
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
    L8_2 = IsControlPressed
    L9_2 = 0
    L10_2 = 73
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L7_2 = true
    end
    L8_2 = IsControlJustPressed
    L9_2 = 0
    L10_2 = 38
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = palapiena
      if nil == L8_2 then
        L8_2 = DetachEntity
        L9_2 = pala
        L8_2(L9_2)
        L8_2 = AttachEntityToEntity
        L9_2 = pala
        L10_2 = L2_2
        L11_2 = GetPedBoneIndex
        L12_2 = L2_2
        L13_2 = 28422
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = -0.02
        L13_2 = 0.08
        L14_2 = -0.9
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = 204.0
        L18_2 = true
        L19_2 = true
        L20_2 = false
        L21_2 = true
        L22_2 = 1
        L23_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L8_2 = faiAnim
        L9_2 = "anim@amb@drug_field_workers@rake@male_b@base"
        L10_2 = "base"
        L11_2 = 2500
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = BloccaAnim
        L9_2 = "anim@amb@drug_field_workers@rake@male_b@base"
        L10_2 = "base"
        L8_2(L9_2, L10_2)
        L8_2 = Wait
        L9_2 = 1500
        L8_2(L9_2)
        L8_2 = nil
        L9_2 = false
        L10_2 = GetClosestObject
        L11_2 = {}
        L12_2 = 1016208508
        L13_2 = -1974355966
        L14_2 = 1564663269
        L15_2 = 571634518
        L11_2[1] = L12_2
        L11_2[2] = L13_2
        L11_2[3] = L14_2
        L11_2[4] = L15_2
        L12_2 = GetEntityCoords
        L13_2 = L2_2
        L12_2 = L12_2(L13_2)
        L13_2 = 3.0
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        if L10_2 > 0 then
          L11_2 = GetEntityModel
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if 1016208508 == L11_2 then
            L8_2 = L10_2
            L12_2 = makeEntityFaceEntity
            L13_2 = L2_2
            L14_2 = L10_2
            L12_2(L13_2, L14_2)
            L9_2 = true
          elseif -1974355966 == L11_2 then
            L12_2 = GetEntityCoords
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L5_2 = L12_2
            L12_2 = GetEntityRotation
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L8_2 = L10_2
            L13_2 = 1016208508
            L14_2 = RequestModelStriano
            L15_2 = L13_2
            L14_2(L15_2)
            L14_2 = CreateObject
            L15_2 = L13_2
            L16_2 = vector3
            L17_2 = L5_2.x
            L18_2 = L5_2.y
            L19_2 = L5_2.z
            L19_2 = L19_2 - 0.1
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            L17_2 = true
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L15_2 = FreezeEntityPosition
            L16_2 = L14_2
            L17_2 = true
            L15_2(L16_2, L17_2)
            L15_2 = SetEntityCollision
            L16_2 = L14_2
            L17_2 = false
            L18_2 = false
            L15_2(L16_2, L17_2, L18_2)
            L15_2 = SetEntityRotation
            L16_2 = L14_2
            L17_2 = L12_2
            L15_2(L16_2, L17_2)
            L9_2 = true
          elseif 1564663269 == L11_2 then
            L12_2 = GetEntityCoords
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L5_2 = L12_2
            L12_2 = GetEntityRotation
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L8_2 = L10_2
            L13_2 = -1974355966
            L14_2 = RequestModelStriano
            L15_2 = L13_2
            L14_2(L15_2)
            L14_2 = CreateObject
            L15_2 = L13_2
            L16_2 = vector3
            L17_2 = L5_2.x
            L18_2 = L5_2.y
            L19_2 = L5_2.z
            L19_2 = L19_2 - 0.1
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            L17_2 = true
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L15_2 = FreezeEntityPosition
            L16_2 = L14_2
            L17_2 = true
            L15_2(L16_2, L17_2)
            L15_2 = SetEntityCollision
            L16_2 = L14_2
            L17_2 = false
            L18_2 = false
            L15_2(L16_2, L17_2, L18_2)
            L15_2 = SetEntityRotation
            L16_2 = L14_2
            L17_2 = L12_2
            L15_2(L16_2, L17_2)
            L9_2 = true
          elseif 571634518 == L11_2 then
            L12_2 = GetEntityCoords
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L5_2 = L12_2
            L12_2 = GetEntityRotation
            L13_2 = L10_2
            L12_2 = L12_2(L13_2)
            L8_2 = L10_2
            L13_2 = 1564663269
            L14_2 = RequestModelStriano
            L15_2 = L13_2
            L14_2(L15_2)
            L14_2 = CreateObject
            L15_2 = L13_2
            L16_2 = vector3
            L17_2 = L5_2.x
            L18_2 = L5_2.y
            L19_2 = L5_2.z
            L19_2 = L19_2 - 0.1
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            L17_2 = true
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L15_2 = FreezeEntityPosition
            L16_2 = L14_2
            L17_2 = true
            L15_2(L16_2, L17_2)
            L15_2 = SetEntityCollision
            L16_2 = L14_2
            L17_2 = false
            L18_2 = false
            L15_2(L16_2, L17_2, L18_2)
            L15_2 = SetEntityRotation
            L16_2 = L14_2
            L17_2 = L12_2
            L15_2(L16_2, L17_2)
            L9_2 = true
          end
        end
        L11_2 = Scavabile
        L11_2 = L11_2()
        if L11_2 or L9_2 then
          L11_2 = GetEntityForwardVector
          L12_2 = L2_2
          L11_2 = L11_2(L12_2)
          L12_2 = table
          L12_2 = L12_2.unpack
          L13_2 = GetEntityCoords
          L14_2 = L2_2
          L13_2 = L13_2(L14_2)
          L14_2 = L11_2 * 0.9
          L13_2 = L13_2 + L14_2
          L12_2, L13_2, L14_2 = L12_2(L13_2)
          L15_2 = PlayEffectTutorial
          L16_2 = "core"
          L17_2 = "ent_anim_dusty_hands"
          L18_2 = vector3
          L19_2 = L12_2
          L20_2 = L13_2
          L21_2 = L14_2 - 0.9
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L19_2 = 3.5
          L20_2 = vector3
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = 0.0
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L20_2(L21_2, L22_2, L23_2)
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          while true do
            L16_2 = IsEntityPlayingAnim
            L17_2 = L2_2
            L18_2 = "anim@amb@drug_field_workers@rake@male_b@base"
            L19_2 = "base"
            L20_2 = 3
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            if not L16_2 then
              break
            end
            L16_2 = Wait
            L17_2 = 0
            L16_2(L17_2)
          end
          if nil ~= L8_2 then
            L16_2 = SetEntityAsMissionEntity
            L17_2 = L8_2
            L16_2(L17_2)
            L16_2 = DeleteEntity
            L17_2 = L8_2
            L16_2(L17_2)
          end
          L16_2 = RequestModelStriano
          L17_2 = GetHashKey
          L18_2 = "striano_showel"
          L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L17_2(L18_2)
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L16_2 = CreateObject
          L17_2 = GetHashKey
          L18_2 = "striano_showel"
          L17_2 = L17_2(L18_2)
          L18_2 = L5_2
          L19_2 = true
          L16_2 = L16_2(L17_2, L18_2, L19_2)
          palapiena = L16_2
          while true do
            L16_2 = DoesEntityExist
            L17_2 = pala
            L16_2 = L16_2(L17_2)
            if L16_2 then
              break
            end
            L16_2 = Wait
            L17_2 = 0
            L16_2(L17_2)
          end
          L16_2 = AttachEntityToEntity
          L17_2 = palapiena
          L18_2 = L2_2
          L19_2 = GetPedBoneIndex
          L20_2 = L2_2
          L21_2 = 28422
          L19_2 = L19_2(L20_2, L21_2)
          L20_2 = 1.22
          L21_2 = 0.3
          L22_2 = 0.14
          L23_2 = -191.0
          L24_2 = 88.0
          L25_2 = 22.0
          L26_2 = true
          L27_2 = true
          L28_2 = false
          L29_2 = true
          L30_2 = 1
          L31_2 = true
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L16_2 = SetEntityAsMissionEntity
          L17_2 = pala
          L16_2(L17_2)
          L16_2 = DeleteEntity
          L17_2 = pala
          L16_2(L17_2)
          L16_2 = CreateThread
          function L17_2()
            local L0_3, L1_3, L2_3
            L0_3 = Wait
            L1_3 = 500
            L0_3(L1_3)
            L0_3 = StopParticleFxLooped
            L1_3 = L15_2
            L2_3 = 0
            L0_3(L1_3, L2_3)
            L0_3 = RemoveParticleFx
            L1_3 = L15_2
            L2_3 = true
            L0_3(L1_3, L2_3)
          end
          L16_2(L17_2)
        else
          L11_2 = GetEntityForwardVector
          L12_2 = L2_2
          L11_2 = L11_2(L12_2)
          L12_2 = table
          L12_2 = L12_2.unpack
          L13_2 = GetEntityCoords
          L14_2 = L2_2
          L13_2 = L13_2(L14_2)
          L14_2 = L11_2 * 0.9
          L13_2 = L13_2 + L14_2
          L12_2, L13_2, L14_2 = L12_2(L13_2)
          L15_2 = PlayEffectTutorial
          L16_2 = "core"
          L17_2 = "ent_dst_dust"
          L18_2 = vector3
          L19_2 = L12_2
          L20_2 = L13_2
          L21_2 = L14_2 - 0.9
          L18_2 = L18_2(L19_2, L20_2, L21_2)
          L19_2 = 1.2
          L20_2 = vector3
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = 0.0
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L20_2(L21_2, L22_2, L23_2)
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L16_2 = CreateThread
          function L17_2()
            local L0_3, L1_3, L2_3
            L0_3 = Wait
            L1_3 = 500
            L0_3(L1_3)
            L0_3 = StopParticleFxLooped
            L1_3 = L15_2
            L2_3 = 0
            L0_3(L1_3, L2_3)
            L0_3 = RemoveParticleFx
            L1_3 = L15_2
            L2_3 = true
            L0_3(L1_3, L2_3)
          end
          L16_2(L17_2)
          L16_2 = PlaySoundFrontend
          L17_2 = -1
          L18_2 = "LIMIT"
          L19_2 = "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS"
          L20_2 = 1
          L16_2(L17_2, L18_2, L19_2, L20_2)
          L16_2 = DetachEntity
          L17_2 = pala
          L16_2(L17_2)
          L16_2 = AttachEntityToEntity
          L17_2 = pala
          L18_2 = L2_2
          L19_2 = GetPedBoneIndex
          L20_2 = L2_2
          L21_2 = 28422
          L19_2 = L19_2(L20_2, L21_2)
          L20_2 = 1.22
          L21_2 = 0.3
          L22_2 = 0.14
          L23_2 = -191.0
          L24_2 = 88.0
          L25_2 = 22.0
          L26_2 = true
          L27_2 = true
          L28_2 = false
          L29_2 = true
          L30_2 = 1
          L31_2 = true
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        end
      else
        L8_2 = faiAnim
        L9_2 = "weapons@heavy@minigun"
        L10_2 = "fire_low"
        L11_2 = 750
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = BloccaAnim
        L9_2 = "weapons@heavy@minigun"
        L10_2 = "fire_low"
        L8_2(L9_2, L10_2)
        L8_2 = Wait
        L9_2 = 25
        L8_2(L9_2)
        while true do
          L8_2 = IsEntityPlayingAnim
          L9_2 = L2_2
          L10_2 = "weapons@heavy@minigun"
          L11_2 = "fire_low"
          L12_2 = 3
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
          if not L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = CreateObject
        L9_2 = GetHashKey
        L10_2 = L1_2
        L9_2 = L9_2(L10_2)
        L10_2 = L5_2
        L11_2 = true
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        pala = L8_2
        while true do
          L8_2 = DoesEntityExist
          L9_2 = pala
          L8_2 = L8_2(L9_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = AttachEntityToEntity
        L9_2 = pala
        L10_2 = L2_2
        L11_2 = GetPedBoneIndex
        L12_2 = L2_2
        L13_2 = 28422
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = 1.22
        L13_2 = 0.3
        L14_2 = 0.14
        L15_2 = -191.0
        L16_2 = 88.0
        L17_2 = 22.0
        L18_2 = true
        L19_2 = true
        L20_2 = false
        L21_2 = true
        L22_2 = 1
        L23_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L8_2 = SetEntityAsMissionEntity
        L9_2 = palapiena
        L8_2(L9_2)
        L8_2 = DeleteEntity
        L9_2 = palapiena
        L8_2(L9_2)
        palapiena = nil
        L8_2 = GetEntityForwardVector
        L9_2 = L2_2
        L8_2 = L8_2(L9_2)
        L9_2 = table
        L9_2 = L9_2.unpack
        L10_2 = GetEntityCoords
        L11_2 = L2_2
        L10_2 = L10_2(L11_2)
        L11_2 = L8_2 * 0.9
        L10_2 = L10_2 + L11_2
        L9_2, L10_2, L11_2 = L9_2(L10_2)
        L12_2 = PlayEffectTutorial
        L13_2 = "core"
        L14_2 = "ent_anim_dusty_hands"
        L15_2 = vector3
        L16_2 = L9_2
        L17_2 = L10_2
        L18_2 = L11_2 - 0.9
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L16_2 = 3.5
        L17_2 = vector3
        L18_2 = 0.0
        L19_2 = 0.0
        L20_2 = 0.0
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L17_2(L18_2, L19_2, L20_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        L13_2 = CreateThread
        function L14_2()
          local L0_3, L1_3, L2_3
          L0_3 = Wait
          L1_3 = 500
          L0_3(L1_3)
          L0_3 = StopParticleFxLooped
          L1_3 = L12_2
          L2_3 = 0
          L0_3(L1_3, L2_3)
          L0_3 = RemoveParticleFx
          L1_3 = L12_2
          L2_3 = true
          L0_3(L1_3, L2_3)
        end
        L13_2(L14_2)
        L13_2 = GetClosestObject
        L14_2 = {}
        L15_2 = GetHashKey
        L16_2 = "prop_bucket_01a"
        L15_2 = L15_2(L16_2)
        L16_2 = GetHashKey
        L17_2 = "striano_bterra_s"
        L16_2 = L16_2(L17_2)
        L17_2 = GetHashKey
        L18_2 = "striano_bterra_m"
        L17_2 = L17_2(L18_2)
        L18_2 = GetHashKey
        L19_2 = "striano_bterra_l"
        L18_2 = L18_2(L19_2)
        L19_2 = GetHashKey
        L20_2 = "prop_wheelbarrow01a"
        L19_2 = L19_2(L20_2)
        L20_2 = GetHashKey
        L21_2 = "striano_carr_s"
        L20_2 = L20_2(L21_2)
        L21_2 = GetHashKey
        L22_2 = "striano_carr_m"
        L21_2 = L21_2(L22_2)
        L22_2 = GetHashKey
        L23_2 = "striano_carr_l"
        L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L22_2(L23_2)
        L14_2[1] = L15_2
        L14_2[2] = L16_2
        L14_2[3] = L17_2
        L14_2[4] = L18_2
        L14_2[5] = L19_2
        L14_2[6] = L20_2
        L14_2[7] = L21_2
        L14_2[8] = L22_2
        L14_2[9] = L23_2
        L14_2[10] = L24_2
        L14_2[11] = L25_2
        L14_2[12] = L26_2
        L14_2[13] = L27_2
        L14_2[14] = L28_2
        L14_2[15] = L29_2
        L14_2[16] = L30_2
        L14_2[17] = L31_2
        L15_2 = GetEntityCoords
        L16_2 = L2_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L15_2(L16_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        if L13_2 > 0 then
          L14_2 = makeEntityFaceEntity
          L15_2 = L2_2
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
          L14_2 = Entity
          L15_2 = L13_2
          L14_2 = L14_2(L15_2)
          L14_2 = L14_2.state
          L14_2 = L14_2.terreno_dentro
          L15_2 = GetEntityModel
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L16_2 = GetHashKey
          L17_2 = "prop_wheelbarrow01a"
          L16_2 = L16_2(L17_2)
          if L15_2 ~= L16_2 then
            L15_2 = GetEntityModel
            L16_2 = L13_2
            L15_2 = L15_2(L16_2)
            L16_2 = GetHashKey
            L17_2 = "striano_carr_s"
            L16_2 = L16_2(L17_2)
            if L15_2 ~= L16_2 then
              L15_2 = GetEntityModel
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetHashKey
              L17_2 = "striano_carr_m"
              L16_2 = L16_2(L17_2)
              if L15_2 ~= L16_2 then
                L15_2 = GetEntityModel
                L16_2 = L13_2
                L15_2 = L15_2(L16_2)
                L16_2 = GetHashKey
                L17_2 = "striano_carr_l"
                L16_2 = L16_2(L17_2)
                if L15_2 ~= L16_2 then
                  goto lbl_704
                end
              end
            end
          end
          if nil == L14_2 then
            L14_2 = 0
            L15_2 = GetEntityModel
            L16_2 = L13_2
            L15_2 = L15_2(L16_2)
            L16_2 = GetHashKey
            L17_2 = "striano_carr_s"
            L16_2 = L16_2(L17_2)
            if L15_2 == L16_2 then
              L14_2 = 25
            else
              L15_2 = GetEntityModel
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetHashKey
              L17_2 = "striano_carr_m"
              L16_2 = L16_2(L17_2)
              if L15_2 == L16_2 then
                L14_2 = 50
              else
                L15_2 = GetEntityModel
                L16_2 = L13_2
                L15_2 = L15_2(L16_2)
                L16_2 = GetHashKey
                L17_2 = "striano_carr_l"
                L16_2 = L16_2(L17_2)
                if L15_2 == L16_2 then
                  L14_2 = 75
                end
              end
            end
          end
          L14_2 = L14_2 + 25
          if L14_2 > 100 then
            L14_2 = 100
          end
          L15_2 = Entity
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L15_2 = L15_2.state
          L16_2 = L15_2
          L15_2 = L15_2.set
          L17_2 = "terreno_dentro"
          L18_2 = L14_2
          L19_2 = true
          L15_2(L16_2, L17_2, L18_2, L19_2)
          L15_2 = AggiornaCarriola
          L16_2 = L13_2
          L17_2 = L14_2
          L15_2(L16_2, L17_2)
          goto lbl_809
          ::lbl_704::
          L15_2 = GetEntityModel
          L16_2 = L13_2
          L15_2 = L15_2(L16_2)
          L16_2 = GetHashKey
          L17_2 = "prop_bucket_01a"
          L16_2 = L16_2(L17_2)
          if L15_2 ~= L16_2 then
            L15_2 = GetEntityModel
            L16_2 = L13_2
            L15_2 = L15_2(L16_2)
            L16_2 = GetHashKey
            L17_2 = "striano_bterra_s"
            L16_2 = L16_2(L17_2)
            if L15_2 ~= L16_2 then
              L15_2 = GetEntityModel
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetHashKey
              L17_2 = "striano_bterra_m"
              L16_2 = L16_2(L17_2)
              if L15_2 ~= L16_2 then
                L15_2 = GetEntityModel
                L16_2 = L13_2
                L15_2 = L15_2(L16_2)
                L16_2 = GetHashKey
                L17_2 = "striano_bterra_l"
                L16_2 = L16_2(L17_2)
              end
            end
          end
          if L15_2 == L16_2 then
            if nil == L14_2 then
              L14_2 = 0
              L15_2 = GetEntityModel
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetHashKey
              L17_2 = "striano_bterra_s"
              L16_2 = L16_2(L17_2)
              if L15_2 == L16_2 then
                L14_2 = 25
              else
                L15_2 = GetEntityModel
                L16_2 = L13_2
                L15_2 = L15_2(L16_2)
                L16_2 = GetHashKey
                L17_2 = "striano_bterra_m"
                L16_2 = L16_2(L17_2)
                if L15_2 == L16_2 then
                  L14_2 = 50
                else
                  L15_2 = GetEntityModel
                  L16_2 = L13_2
                  L15_2 = L15_2(L16_2)
                  L16_2 = GetHashKey
                  L17_2 = "striano_bterra_l"
                  L16_2 = L16_2(L17_2)
                  if L15_2 == L16_2 then
                    L14_2 = 75
                  end
                end
              end
            end
            L14_2 = L14_2 + 25
            if L14_2 > 100 then
              L14_2 = 100
            end
            L15_2 = Entity
            L16_2 = L13_2
            L15_2 = L15_2(L16_2)
            L15_2 = L15_2.state
            L16_2 = L15_2
            L15_2 = L15_2.set
            L17_2 = "terreno_dentro"
            L18_2 = L14_2
            L19_2 = true
            L15_2(L16_2, L17_2, L18_2, L19_2)
            L15_2 = AggiornaSecchioTerreno
            L16_2 = L13_2
            L17_2 = L14_2
            L15_2(L16_2, L17_2)
          end
        else
          L14_2 = GetEntityForwardVector
          L15_2 = L2_2
          L14_2 = L14_2(L15_2)
          L15_2 = table
          L15_2 = L15_2.unpack
          L16_2 = GetEntityCoords
          L17_2 = L2_2
          L16_2 = L16_2(L17_2)
          L17_2 = L14_2 * 0.95
          L16_2 = L16_2 + L17_2
          L15_2, L16_2, L17_2 = L15_2(L16_2)
          L18_2 = GenTerrenoTerra
          L19_2 = 1
          L20_2 = vector3
          L21_2 = L15_2
          L22_2 = L16_2
          L23_2 = L17_2 - 1.0
          L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L20_2(L21_2, L22_2, L23_2)
          L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        end
        ::lbl_809::
      end
    end
  end
  L8_2 = palapiena
  if nil ~= L8_2 then
    L8_2 = SetEntityAsMissionEntity
    L9_2 = palapiena
    L8_2(L9_2)
    L8_2 = DeleteEntity
    L9_2 = palapiena
    L8_2(L9_2)
    palapiena = nil
    L8_2 = table
    L8_2 = L8_2.unpack
    L9_2 = GetEntityCoords
    L10_2 = L2_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L9_2(L10_2)
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L11_2 = vector3
    L12_2 = L8_2
    L13_2 = L9_2
    L14_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = RequestModelStriano
    L13_2 = GetHashKey
    L14_2 = "prop_tool_shovel006"
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L13_2(L14_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L12_2 = CreateObject
    L13_2 = GetHashKey
    L14_2 = "prop_tool_shovel006"
    L13_2 = L13_2(L14_2)
    L14_2 = L11_2
    L15_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    while true do
      L13_2 = DoesEntityExist
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        break
      end
      L13_2 = Wait
      L14_2 = 0
      L13_2(L14_2)
    end
    L13_2 = PlaceObjectOnGroundProperly
    L14_2 = L12_2
    L13_2(L14_2)
  else
    L8_2 = GetEntityCoords
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L9_2 = GetEntityForwardVector
    L10_2 = L2_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2 * 0.5
    L10_2 = L8_2 + L10_2
    L11_2 = RequestModelStriano
    L12_2 = GetHashKey
    L13_2 = "p_cs_bbbat_01"
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L12_2(L13_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L11_2 = CreateObject
    L12_2 = GetHashKey
    L13_2 = "p_cs_bbbat_01"
    L12_2 = L12_2(L13_2)
    L13_2 = L10_2
    L14_2 = true
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = SetEntityVisible
    L13_2 = L11_2
    L14_2 = false
    L12_2(L13_2, L14_2)
    while true do
      L12_2 = DoesEntityExist
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        break
      end
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    L12_2 = DetachEntity
    L13_2 = pala
    L12_2(L13_2)
    L12_2 = AttachEntityToEntity
    L13_2 = pala
    L14_2 = L11_2
    L15_2 = -1
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L21_2 = 0.0
    L22_2 = true
    L23_2 = true
    L24_2 = false
    L25_2 = true
    L26_2 = 1
    L27_2 = true
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L12_2 = ApplyForceToEntity
    L13_2 = L11_2
    L14_2 = 1
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = -0.05
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L21_2 = true
    L22_2 = false
    L23_2 = false
    L24_2 = false
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L12_2 = Wait
    L13_2 = 1
    L12_2(L13_2)
    L12_2 = ExecuteCommand
    L13_2 = "e pointdown"
    L12_2(L13_2)
    while true do
      L12_2 = GetEntitySpeed
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = 0.01
      if not (L12_2 > L13_2) then
        break
      end
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    L12_2 = DetachEntity
    L13_2 = pala
    L12_2(L13_2)
    L12_2 = SetEntityAsMissionEntity
    L13_2 = L11_2
    L12_2(L13_2)
    L12_2 = DeleteEntity
    L13_2 = L11_2
    L12_2(L13_2)
    pala = nil
  end
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "AggiornaCarriola"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = nil
  L3_2 = A0_2
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityRotation
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = Entity
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L6_2 = L6_2.terreno_dentro
  if A1_2 >= 1 and A1_2 < 50 then
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_carr_s"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_carr_s"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = ApplyForceToEntity
    L8_2 = L2_2
    L9_2 = 1
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = -0.1
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = true
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  elseif A1_2 >= 50 and A1_2 < 100 then
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_carr_m"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_carr_m"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = ApplyForceToEntity
    L8_2 = L2_2
    L9_2 = 1
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = -0.1
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = true
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  else
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_carr_l"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_carr_l"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = ApplyForceToEntity
    L8_2 = L2_2
    L9_2 = 1
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = -0.1
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = true
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  end
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetEntityCoords
  L9_2 = L2_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = PlayEffectTutorial
  L11_2 = "core"
  L12_2 = "ent_anim_dusty_hands"
  L13_2 = vector3
  L14_2 = L7_2
  L15_2 = L8_2
  L16_2 = L9_2 + 0.1
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = 4.5
  L15_2 = vector3
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0.0
  L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L10_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L10_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L11_2(L12_2)
  L11_2 = carriola3d
  if nil == L11_2 then
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      carriola3d = 1
      while true do
        L0_3 = DoesEntityExist
        L1_3 = L2_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = L2_2
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L1_3 = L1_3 - L0_3
        L1_3 = #L1_3
        if L1_3 < 10.0 then
          L1_3 = IsEntityAttached
          L2_3 = L2_2
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = Entity
            L2_3 = L2_2
            L1_3 = L1_3(L2_3)
            L1_3 = L1_3.state
            L1_3 = L1_3.terreno_dentro
            if nil == L1_3 then
              L1_3 = 0
            end
            L2_3 = DrawText3D
            L3_3 = L0_3.x
            L4_3 = L0_3.y
            L5_3 = L0_3.z
            L5_3 = L5_3 + 0.3
            L6_3 = L1_3
            L7_3 = "%"
            L6_3 = L6_3 .. L7_3
            L2_3(L3_3, L4_3, L5_3, L6_3)
        end
        else
          return
        end
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
      end
      carriola3d = nil
    end
    L11_2(L12_2)
  end
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "AggiornaSecchioTerreno"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = nil
  L3_2 = A0_2
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityRotation
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = Entity
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.state
  L6_2 = L6_2.terreno_dentro
  if A1_2 >= 10 and A1_2 <= 50 then
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_s"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_s"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  elseif A1_2 > 50 and A1_2 <= 85 then
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_m"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_m"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  else
    L7_2 = RequestModelStriano
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_l"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = CreateObject
    L8_2 = GetHashKey
    L9_2 = "striano_bterra_l"
    L8_2 = L8_2(L9_2)
    L9_2 = L4_2
    L10_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L2_2 = L7_2
    while true do
      L7_2 = DoesEntityExist
      L8_2 = L2_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        break
      end
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    L7_2 = SetEntityRotation
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = Entity
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.state
    L8_2 = L7_2
    L7_2 = L7_2.set
    L9_2 = "terreno_dentro"
    L10_2 = L6_2
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L3_2
    L7_2(L8_2)
  end
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetEntityCoords
  L9_2 = L2_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = PlayEffectTutorial
  L11_2 = "core"
  L12_2 = "ent_anim_dusty_hands"
  L13_2 = vector3
  L14_2 = L7_2
  L15_2 = L8_2
  L16_2 = L9_2 + 0.1
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = 4.5
  L15_2 = vector3
  L16_2 = 0.0
  L17_2 = 0.0
  L18_2 = 0.0
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L10_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L10_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L11_2(L12_2)
  L11_2 = carriola3d
  if nil == L11_2 then
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      carriola3d = 1
      while true do
        L0_3 = DoesEntityExist
        L1_3 = L2_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = GetEntityCoords
        L1_3 = L2_2
        L0_3 = L0_3(L1_3)
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L1_3 = L0_3 - L1_3
        L1_3 = #L1_3
        if L1_3 < 15.0 then
          L1_3 = Entity
          L2_3 = L2_2
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.state
          L1_3 = L1_3.terreno_dentro
          if nil == L1_3 then
            L1_3 = 0
          end
          L2_3 = DrawText3D
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L5_3 = L5_3 + 0.3
          L6_3 = L1_3
          L7_3 = "%"
          L6_3 = L6_3 .. L7_3
          L2_3(L3_3, L4_3, L5_3, L6_3)
        end
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
      end
      carriola3d = nil
    end
    L11_2(L12_2)
  end
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "secchio"
L41_1 = nil
L39_1[L40_1] = L41_1
L39_1 = RegisterNetEvent
L40_1 = "SecchioVuoto"
L39_1(L40_1)
L39_1 = AddEventHandler
L40_1 = "SecchioVuoto"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.secchio
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = RequestModelStriano
  L3_2 = GetHashKey
  L4_2 = "prop_bucket_01a"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = CreateObject
  L3_2 = GetHashKey
  L4_2 = "prop_bucket_01a"
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = tutorialFatto
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  secchio = L2_2
  L2_2 = AttachEntityToEntity
  L3_2 = secchio
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = 28422
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0.41
  L7_2 = -0.28
  L8_2 = -0.14
  L9_2 = -39.0
  L10_2 = -64.5
  L11_2 = -32.0
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = true
  L16_2 = 1
  L17_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  while true do
    L2_2 = DoesEntityExist
    L3_2 = secchio
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = GetEntityAttachedTo
    L3_2 = secchio
    L2_2 = L2_2(L3_2)
    if L2_2 ~= L0_2 then
      break
    end
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "cover@move@base@rpg"
    L5_2 = "high_idle_l"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = faiAnim
      L3_2 = "cover@move@base@rpg"
      L4_2 = "high_idle_l"
      L5_2 = -1
      L6_2 = 49
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = GetEntityBonePosition_2
    L3_2 = L0_2
    L4_2 = GetPedBoneIndex
    L5_2 = L0_2
    L6_2 = 28422
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L4_2(L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L3_2 = IsEntityInWater
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsDisabledControlJustPressed
      L4_2 = 0
      L5_2 = 73
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = TriggerEvent
        L4_2 = "StartEditorFish"
        L5_2 = secchio
        L3_2(L4_2, L5_2)
        secchio = nil
        return
      end
      L3_2 = DrawText3D
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = "~h~X ~h~~w~Drop"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = IsPedSwimming
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedSwimmingUnderWater
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = DrawText3D
          L4_2 = L2_2.x
          L5_2 = L2_2.y
          L6_2 = L2_2.z
          L7_2 = "~h~E ~h~~w~Fill"
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = IsControlJustReleased
          L4_2 = 0
          L5_2 = 38
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            L3_2 = faiAnim
            L4_2 = "anim@mp_snowball"
            L5_2 = "pickup_snowball"
            L6_2 = -1
            L7_2 = 49
            L3_2(L4_2, L5_2, L6_2, L7_2)
            L3_2 = Wait
            L4_2 = 950
            L3_2(L4_2)
            L3_2 = secchio
            if nil ~= L3_2 then
              L3_2 = DoesEntityExist
              L4_2 = secchio
              L3_2 = L3_2(L4_2)
              if L3_2 then
                L3_2 = 0
                while true do
                  L4_2 = NetworkHasControlOfEntity
                  L5_2 = secchio
                  L4_2 = L4_2(L5_2)
                  if not (not L4_2 and L3_2 < 100) then
                    break
                  end
                  L4_2 = DoesEntityExist
                  L5_2 = secchio
                  L4_2 = L4_2(L5_2)
                  if not L4_2 then
                    break
                  end
                  L4_2 = Wait
                  L5_2 = 1
                  L4_2(L5_2)
                  L4_2 = NetworkRequestControlOfEntity
                  L5_2 = secchio
                  L4_2(L5_2)
                  L3_2 = L3_2 + 1
                end
                L4_2 = SetEntityAsMissionEntity
                L5_2 = secchio
                L4_2(L5_2)
                L4_2 = DeleteEntity
                L5_2 = secchio
                L4_2(L5_2)
              end
            end
            secchio = nil
            L3_2 = TriggerEvent
            L4_2 = "SecchioPieno"
            L3_2(L4_2)
            return
          end
        end
      end
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = RegisterNetEvent
L40_1 = "SecchioPieno"
L39_1(L40_1)
L39_1 = AddEventHandler
L40_1 = "SecchioPieno"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.secchio
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    return
  end
  L0_2 = ExecuteCommand
  L1_2 = "pointingStop"
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = RequestModelStriano
  L3_2 = GetHashKey
  L4_2 = "striano_bwatert"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L2_2 = CreateObject
  L3_2 = GetHashKey
  L4_2 = "striano_bwatert"
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  secchio = L2_2
  L2_2 = AttachEntityToEntity
  L3_2 = secchio
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = 28422
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0.65
  L7_2 = -0.37
  L8_2 = 0.03
  L9_2 = -32.5
  L10_2 = -88.0
  L11_2 = 4.0
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = true
  L16_2 = 1
  L17_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  while true do
    L2_2 = DoesEntityExist
    L3_2 = secchio
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = GetEntityAttachedTo
    L3_2 = secchio
    L2_2 = L2_2(L3_2)
    if L2_2 ~= L0_2 then
      break
    end
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "cover@move@base@rpg"
    L5_2 = "high_idle_l"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = Citizen
      L2_2 = L2_2.InvokeNative
      L3_2 = -7918206464511161279
      L4_2 = L0_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = faiAnim
        L3_2 = "cover@move@base@rpg"
        L4_2 = "high_idle_l"
        L5_2 = -1
        L6_2 = 49
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    end
    L2_2 = Citizen
    L2_2 = L2_2.InvokeNative
    L3_2 = -7918206464511161279
    L4_2 = L0_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = GetEntityBonePosition_2
      L3_2 = L0_2
      L4_2 = GetPedBoneIndex
      L5_2 = L0_2
      L6_2 = 28422
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L4_2(L5_2, L6_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L3_2 = DrawText3D
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = "~h~X ~h~~w~Drop~n~~h~E ~h~~w~Pour"
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = IsDisabledControlJustPressed
      L4_2 = 0
      L5_2 = 73
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = TriggerEvent
        L4_2 = "StartEditorFish"
        L5_2 = secchio
        L3_2(L4_2, L5_2)
        secchio = nil
        return
      end
      L3_2 = IsControlJustPressed
      L4_2 = 0
      L5_2 = 38
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = FreezeEntityPosition
        L4_2 = L0_2
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = BloccaAnim
        L4_2 = "cover@move@base@rpg"
        L5_2 = "high_idle_l"
        L3_2(L4_2, L5_2)
        L3_2 = GetEntityForwardVector
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = GetEntityCoords
        L6_2 = L0_2
        L5_2 = L5_2(L6_2)
        L6_2 = L3_2 * 0.45
        L5_2 = L5_2 + L6_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L7_2 = PlayEffectTutorial
        L8_2 = "core"
        L9_2 = "ent_sht_water_tower"
        L10_2 = vector3
        L11_2 = L4_2
        L12_2 = L5_2
        L13_2 = L6_2 - 0.2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L11_2 = 2.8
        L12_2 = vector3
        L13_2 = 180.0
        L14_2 = 0.0
        L15_2 = 0.0
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L12_2(L13_2, L14_2, L15_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L8_2 = DetachEntity
        L9_2 = secchio
        L8_2(L9_2)
        L8_2 = AttachEntityToEntity
        L9_2 = secchio
        L10_2 = L0_2
        L11_2 = GetPedBoneIndex
        L12_2 = L0_2
        L13_2 = 28422
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = 0.07
        L13_2 = 0.03
        L14_2 = -0.21
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = 0.0
        L18_2 = true
        L19_2 = true
        L20_2 = false
        L21_2 = true
        L22_2 = 1
        L23_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L8_2 = faiAnim
        L9_2 = "missfbi3_waterboard"
        L10_2 = "waterboard_loop_player"
        L11_2 = -1
        L12_2 = 49
        L8_2(L9_2, L10_2, L11_2, L12_2)
        L8_2 = Wait
        L9_2 = 250
        L8_2(L9_2)
        L8_2 = "sounds/waterbuck"
        L9_2 = L8_2
        L10_2 = ".mp3"
        L9_2 = L9_2 .. L10_2
        L10_2 = exports
        L10_2 = L10_2.xsound
        L11_2 = L10_2
        L10_2 = L10_2.PlayUrlPos
        L12_2 = L8_2
        L13_2 = L9_2
        L14_2 = 0.9
        L15_2 = GetEntityCoords
        L16_2 = L0_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L15_2(L16_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L10_2 = Wait
        L11_2 = 2000
        L10_2(L11_2)
        L10_2 = StopParticleFxLooped
        L11_2 = L7_2
        L12_2 = 0
        L10_2(L11_2, L12_2)
        L10_2 = RemoveParticleFx
        L11_2 = L7_2
        L12_2 = true
        L10_2(L11_2, L12_2)
        L10_2 = FreezeEntityPosition
        L11_2 = L0_2
        L12_2 = false
        L10_2(L11_2, L12_2)
        L10_2 = secchio
        if nil ~= L10_2 then
          L10_2 = DoesEntityExist
          L11_2 = secchio
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = 0
            while true do
              L11_2 = NetworkHasControlOfEntity
              L12_2 = secchio
              L11_2 = L11_2(L12_2)
              if not (not L11_2 and L10_2 < 100) then
                break
              end
              L11_2 = DoesEntityExist
              L12_2 = secchio
              L11_2 = L11_2(L12_2)
              if not L11_2 then
                break
              end
              L11_2 = Wait
              L12_2 = 1
              L11_2(L12_2)
              L11_2 = NetworkRequestControlOfEntity
              L12_2 = secchio
              L11_2(L12_2)
              L10_2 = L10_2 + 1
            end
            L11_2 = SetEntityAsMissionEntity
            L12_2 = secchio
            L11_2(L12_2)
            L11_2 = DeleteEntity
            L12_2 = secchio
            L11_2(L12_2)
          end
        end
        secchio = nil
        L10_2 = TriggerEvent
        L11_2 = "SecchioVuoto"
        L10_2(L11_2)
        return
      end
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "GenTerrenoTerra"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetClosestObject
  L4_2 = {}
  L5_2 = 1016208508
  L6_2 = -1974355966
  L7_2 = 1564663269
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = GetEntityCoords
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1.6
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 > 0 then
    L4_2 = makeEntityFaceEntity
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = GetEntityModel
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if 1 == A0_2 then
      if 1016208508 == L4_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        A1_2 = L5_2
        L5_2 = GetEntityRotation
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = -1974355966
        L7_2 = RequestModelStriano
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = L6_2
        L9_2 = vector3
        L10_2 = A1_2.x
        L11_2 = A1_2.y
        L12_2 = A1_2.z
        L12_2 = L12_2 - 0.1
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      elseif -1974355966 == L4_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        A1_2 = L5_2
        L5_2 = GetEntityRotation
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = 1564663269
        L7_2 = RequestModelStriano
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = L6_2
        L9_2 = vector3
        L10_2 = A1_2.x
        L11_2 = A1_2.y
        L12_2 = A1_2.z
        L12_2 = L12_2 - 0.1
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      else
        L5_2 = GetEntityModel
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        if 1564663269 == L5_2 then
          L5_2 = GetEntityCoords
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          A1_2 = L5_2
          L5_2 = GetEntityRotation
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L3_2
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L3_2
          L6_2(L7_2)
          L6_2 = 571634518
          L7_2 = RequestModelStriano
          L8_2 = L6_2
          L7_2(L8_2)
          L7_2 = CreateObject
          L8_2 = L6_2
          L9_2 = vector3
          L10_2 = A1_2.x
          L11_2 = A1_2.y
          L12_2 = A1_2.z
          L12_2 = L12_2 - 0.1
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L10_2 = true
          L7_2 = L7_2(L8_2, L9_2, L10_2)
          L8_2 = FreezeEntityPosition
          L9_2 = L7_2
          L10_2 = true
          L8_2(L9_2, L10_2)
          L8_2 = SetEntityCollision
          L9_2 = L7_2
          L10_2 = false
          L11_2 = false
          L8_2(L9_2, L10_2, L11_2)
          L8_2 = SetEntityRotation
          L9_2 = L7_2
          L10_2 = L5_2
          L8_2(L9_2, L10_2)
        end
      end
    elseif 2 == A0_2 then
      if 1016208508 == L4_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        A1_2 = L5_2
        L5_2 = GetEntityRotation
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = 1564663269
        L7_2 = RequestModelStriano
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = L6_2
        L9_2 = vector3
        L10_2 = A1_2.x
        L11_2 = A1_2.y
        L12_2 = A1_2.z
        L12_2 = L12_2 - 0.1
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      elseif 1564663269 == L4_2 then
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        A1_2 = L5_2
        L5_2 = GetEntityRotation
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = DeleteEntity
        L7_2 = L3_2
        L6_2(L7_2)
        L6_2 = 571634518
        L7_2 = RequestModelStriano
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreateObject
        L8_2 = L6_2
        L9_2 = vector3
        L10_2 = A1_2.x
        L11_2 = A1_2.y
        L12_2 = A1_2.z
        L12_2 = L12_2 - 0.1
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityCollision
        L9_2 = L7_2
        L10_2 = false
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetEntityRotation
        L9_2 = L7_2
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      end
    end
  else
    L4_2 = 1016208508
    if 2 == A0_2 then
      L4_2 = -1974355966
    elseif 3 == A0_2 then
      L4_2 = 1564663269
    end
    L5_2 = RequestModelStriano
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = CreateObject
    L6_2 = L4_2
    L7_2 = A1_2
    L8_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = PlaceObjectOnGroundProperly
    L7_2 = L5_2
    L6_2(L7_2)
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetEntityCollision
    L7_2 = L5_2
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = 1016208508
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = -1974355966
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = 1564663269
  L4_2(L5_2)
end
L39_1[L40_1] = L41_1
L39_1 = RegisterNetEvent
L40_1 = "SecchioTerra"
L39_1(L40_1)
L39_1 = AddEventHandler
L40_1 = "SecchioTerra"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "striano_bterra_st"
  if 2 == A1_2 then
    L3_2 = "striano_bterra_mt"
  elseif 3 == A1_2 then
    L3_2 = "striano_bterra_lt"
  end
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if nil ~= A0_2 then
    L5_2 = SetEntityAsMissionEntity
    L6_2 = A0_2
    L5_2(L6_2)
    L5_2 = DeleteEntity
    L6_2 = A0_2
    L5_2(L6_2)
  end
  L5_2 = RequestModelStriano
  L6_2 = GetHashKey
  L7_2 = L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2(L7_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L5_2 = CreateObject
  L6_2 = GetHashKey
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2
  L8_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  secchio = L5_2
  L5_2 = AttachEntityToEntity
  L6_2 = secchio
  L7_2 = L2_2
  L8_2 = GetPedBoneIndex
  L9_2 = L2_2
  L10_2 = 28422
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 0.65
  L10_2 = -0.37
  L11_2 = 0.03
  L12_2 = -32.5
  L13_2 = -88.0
  L14_2 = 4.0
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = true
  L19_2 = 1
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  while true do
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 73
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = DoesEntityExist
    L6_2 = secchio
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = GetEntityAttachedTo
    L6_2 = secchio
    L5_2 = L5_2(L6_2)
    if L5_2 ~= L2_2 then
      break
    end
    L5_2 = IsEntityPlayingAnim
    L6_2 = L2_2
    L7_2 = "cover@move@base@rpg"
    L8_2 = "high_idle_l"
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = Citizen
      L5_2 = L5_2.InvokeNative
      L6_2 = -7918206464511161279
      L7_2 = L2_2
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        L5_2 = faiAnim
        L6_2 = "cover@move@base@rpg"
        L7_2 = "high_idle_l"
        L8_2 = -1
        L9_2 = 49
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
    L5_2 = Citizen
    L5_2 = L5_2.InvokeNative
    L6_2 = -7918206464511161279
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = GetEntityBonePosition_2
      L6_2 = L2_2
      L7_2 = GetPedBoneIndex
      L8_2 = L2_2
      L9_2 = 28422
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L7_2(L8_2, L9_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L6_2 = DrawText3D
      L7_2 = L5_2.x
      L8_2 = L5_2.y
      L9_2 = L5_2.z
      L10_2 = "~h~X ~h~~w~Drop~n~~h~E ~h~~w~Pour~n~~h~G ~h~~w~Store"
      L6_2(L7_2, L8_2, L9_2, L10_2)
      L6_2 = IsDisabledControlJustPressed
      L7_2 = 0
      L8_2 = 47
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = TriggerEvent
        L7_2 = "StartEditorFish"
        L8_2 = secchio
        L6_2(L7_2, L8_2)
        return
      end
      L6_2 = IsControlJustPressed
      L7_2 = 0
      L8_2 = 38
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = FreezeEntityPosition
        L7_2 = L2_2
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = faiAnim
        L7_2 = "missfbi3_waterboard"
        L8_2 = "waterboard_loop_player"
        L9_2 = -1
        L10_2 = 49
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = DetachEntity
        L7_2 = secchio
        L6_2(L7_2)
        L6_2 = AttachEntityToEntity
        L7_2 = secchio
        L8_2 = L2_2
        L9_2 = GetPedBoneIndex
        L10_2 = L2_2
        L11_2 = 28422
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = 0.07
        L11_2 = 0.03
        L12_2 = -0.21
        L13_2 = 0.0
        L14_2 = 0.0
        L15_2 = 0.0
        L16_2 = true
        L17_2 = true
        L18_2 = false
        L19_2 = true
        L20_2 = 1
        L21_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L6_2 = GetEntityForwardVector
        L7_2 = L2_2
        L6_2 = L6_2(L7_2)
        L7_2 = table
        L7_2 = L7_2.unpack
        L8_2 = GetEntityCoords
        L9_2 = L2_2
        L8_2 = L8_2(L9_2)
        L9_2 = L6_2 * 0.45
        L8_2 = L8_2 + L9_2
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        L10_2 = Wait
        L11_2 = 250
        L10_2(L11_2)
        L10_2 = PlayEffectTutorial
        L11_2 = "core"
        L12_2 = "ent_amb_stoner_rubble_drop"
        L13_2 = vector3
        L14_2 = L7_2
        L15_2 = L8_2
        L16_2 = L9_2 - 0.2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = 1.2
        L15_2 = vector3
        L16_2 = 180.0
        L17_2 = 0.0
        L18_2 = 0.0
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2, L18_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L11_2 = Wait
        L12_2 = 250
        L11_2(L12_2)
        L11_2 = PlayEffectTutorial
        L12_2 = "core"
        L13_2 = "ent_amb_stoner_rubble_drop"
        L14_2 = vector3
        L15_2 = L7_2
        L16_2 = L8_2
        L17_2 = L9_2 - 0.25
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L15_2 = 1.1
        L16_2 = vector3
        L17_2 = 180.0
        L18_2 = 0.0
        L19_2 = 0.0
        L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2(L17_2, L18_2, L19_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L12_2 = Wait
        L13_2 = 250
        L12_2(L13_2)
        L12_2 = PlayEffectTutorial
        L13_2 = "core"
        L14_2 = "ent_amb_stoner_rubble_drop"
        L15_2 = vector3
        L16_2 = L7_2
        L17_2 = L8_2
        L18_2 = L9_2 - 0.25
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L16_2 = 1.0
        L17_2 = vector3
        L18_2 = 180.0
        L19_2 = 0.0
        L20_2 = 0.0
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L17_2(L18_2, L19_2, L20_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L13_2 = Wait
        L14_2 = 250
        L13_2(L14_2)
        L13_2 = Wait
        L14_2 = 1000
        L13_2(L14_2)
        L13_2 = GetEntityForwardVector
        L14_2 = L2_2
        L13_2 = L13_2(L14_2)
        L14_2 = table
        L14_2 = L14_2.unpack
        L15_2 = GetEntityCoords
        L16_2 = L2_2
        L15_2 = L15_2(L16_2)
        L16_2 = L13_2 * 0.65
        L15_2 = L15_2 + L16_2
        L14_2, L15_2, L16_2 = L14_2(L15_2)
        L17_2 = GenTerrenoTerra
        L18_2 = A1_2
        L19_2 = vector3
        L20_2 = L14_2
        L21_2 = L15_2
        L22_2 = L16_2 - 1.0
        L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2, L21_2, L22_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
        L17_2 = StopParticleFxLooped
        L18_2 = L10_2
        L19_2 = 0
        L17_2(L18_2, L19_2)
        L17_2 = RemoveParticleFx
        L18_2 = L10_2
        L19_2 = true
        L17_2(L18_2, L19_2)
        L17_2 = StopParticleFxLooped
        L18_2 = L11_2
        L19_2 = 0
        L17_2(L18_2, L19_2)
        L17_2 = RemoveParticleFx
        L18_2 = L11_2
        L19_2 = true
        L17_2(L18_2, L19_2)
        L17_2 = StopParticleFxLooped
        L18_2 = L12_2
        L19_2 = 0
        L17_2(L18_2, L19_2)
        L17_2 = RemoveParticleFx
        L18_2 = L12_2
        L19_2 = true
        L17_2(L18_2, L19_2)
        L17_2 = FreezeEntityPosition
        L18_2 = L2_2
        L19_2 = false
        L17_2(L18_2, L19_2)
        L17_2 = secchio
        if nil ~= L17_2 then
          L17_2 = DoesEntityExist
          L18_2 = secchio
          L17_2 = L17_2(L18_2)
          if L17_2 then
            L17_2 = 0
            while true do
              L18_2 = NetworkHasControlOfEntity
              L19_2 = secchio
              L18_2 = L18_2(L19_2)
              if not (not L18_2 and L17_2 < 100) then
                break
              end
              L18_2 = DoesEntityExist
              L19_2 = secchio
              L18_2 = L18_2(L19_2)
              if not L18_2 then
                break
              end
              L18_2 = Wait
              L19_2 = 1
              L18_2(L19_2)
              L18_2 = NetworkRequestControlOfEntity
              L19_2 = secchio
              L18_2(L19_2)
              L17_2 = L17_2 + 1
            end
            L18_2 = SetEntityAsMissionEntity
            L19_2 = secchio
            L18_2(L19_2)
            L18_2 = DeleteEntity
            L19_2 = secchio
            L18_2(L19_2)
          end
        end
        secchio = nil
        L17_2 = TriggerEvent
        L18_2 = "SecchioVuoto"
        L17_2(L18_2)
        return
      end
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = DoesEntityExist
  L6_2 = secchio
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = GetEntityAttachedTo
    L6_2 = secchio
    L5_2 = L5_2(L6_2)
    if L5_2 == L2_2 then
      while true do
        L5_2 = IsControlPressed
        L6_2 = 0
        L7_2 = 73
        L5_2 = L5_2(L6_2, L7_2)
        if not L5_2 then
          break
        end
        L5_2 = Wait
        L6_2 = 0
        L5_2(L6_2)
      end
      L5_2 = FreezeEntityPosition
      L6_2 = secchio
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityCollision
      L6_2 = secchio
      L7_2 = true
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = DetachEntity
      L6_2 = secchio
      L5_2(L6_2)
      secchio = nil
  end
  else
    L5_2 = IsEntityPlayingAnim
    L6_2 = L2_2
    L7_2 = "cover@move@base@rpg"
    L8_2 = "high_idle_l"
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = ClearPedTasks
      L6_2 = L2_2
      L5_2(L6_2)
    end
  end
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = 397817893
  L5_2(L6_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = 188622325
  L5_2(L6_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = 201506098
  L5_2(L6_2)
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "exports"
L39_1 = L39_1[L40_1]
L40_1 = "secchio"
function L41_1()
  local L0_2, L1_2
  L0_2 = secchio
  return L0_2
end
L39_1(L40_1, L41_1)
L39_1 = false
L40_1 = {}
L41_1 = false
L42_1 = false
L43_1 = true
L44_1 = _ENV
L45_1 = "RLabel"
function L46_1(A0_2)
  local L1_2, L2_2
  L1_2 = RecyclerChange
  if L1_2 then
    L1_2 = RecyclerChange
    L1_2 = L1_2[A0_2]
  end
  if L1_2 then
    L2_2 = L1_2.label
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = A0_2
  ::lbl_12::
  return L2_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "GetInsertedAmount"
function L46_1(A0_2)
  local L1_2
  L1_2 = L40_1.inserted
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "GetRecyclerProgress"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = L40_1
  if not L0_2 then
    L0_2 = 0
    return L0_2
  end
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L40_1.inserted
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L40_1.cfg
    L8_2 = L8_2.itemsRequest
    if not L8_2 then
      L8_2 = {}
    end
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = L12_2[1]
      if L13_2 == L5_2 then
        L13_2 = tonumber
        L14_2 = L12_2[2]
        L13_2 = L13_2(L14_2)
        if not L13_2 then
          L13_2 = 0
        end
        L14_2 = L6_2 * L13_2
        L0_2 = L0_2 + L14_2
        break
      end
    end
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L0_2
  L3_2 = L40_1.cfg
  L3_2 = L3_2.completeAt
  if not L3_2 then
    L3_2 = 100
  end
  return L1_2(L2_2, L3_2)
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "IsRecyclerComplete"
function L46_1()
  local L0_2, L1_2
  L0_2 = GetRecyclerProgress
  L0_2 = L0_2()
  L1_2 = L40_1.cfg
  L1_2 = L1_2.completeAt
  if not L1_2 then
    L1_2 = 100
  end
  L0_2 = L0_2 >= L1_2
  return L0_2
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "RefundRecyclerSession"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L41_1
  if L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "anim@amb@business@coc@coc_unpack_cut@"
    L4_2 = "fullcut_cycle_v2_cokecutter"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L1_2 = false
      L41_1 = L1_2
      L1_2 = ClearPedTasks
      L2_2 = L0_2
      L1_2(L2_2)
      return
    end
  end
  L1_2 = L40_1.removedItems
  if L1_2 then
    L1_2 = next
    L2_2 = L40_1.removedItems
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = "recycler:refundItems"
      L3_2 = L40_1.removedItems
      L1_2(L2_2, L3_2)
      L1_2 = testo3d
      L2_2 = "Refund"
      L1_2(L2_2)
      L1_2 = {}
      L40_1 = L1_2
      L1_2 = ClearPedTasks
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = false
      L41_1 = L1_2
  end
  else
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = false
    L41_1 = L1_2
  end
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "OpenRecyclerCraftMenu"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = L40_1.finalItem
  L1_2 = L40_1.cfg
  L2_2 = GetRecyclerProgress
  L2_2 = L2_2()
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = IsEntityPlayingAnim
  L5_2 = L3_2
  L6_2 = "anim@amb@business@coc@coc_unpack_cut@"
  L7_2 = "fullcut_cycle_v2_cokecutter"
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = ExecuteCommand
    L5_2 = "e lavora2"
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      while true do
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.opened
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = IsEntityPlayingAnim
        L1_3 = L3_2
        L2_3 = "anim@amb@business@coc@coc_unpack_cut@"
        L3_3 = "fullcut_cycle_v2_cokecutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.close
      L0_3(L1_3)
      L0_3 = L42_1
      if not L0_3 then
        L0_3 = RefundRecyclerSession
        L0_3()
      end
    end
    L4_2(L5_2)
  end
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "=== "
  L7_2 = RLabel
  L8_2 = L0_2
  L7_2 = L7_2(L8_2)
  L8_2 = " | "
  L9_2 = L2_2
  L10_2 = "/"
  L11_2 = tostring
  L12_2 = L1_2.completeAt
  if not L12_2 then
    L12_2 = 100
  end
  L11_2 = L11_2(L12_2)
  L12_2 = " ==="
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = L1_2.itemsRequest
  if not L5_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tostring
    L11_2 = L9_2[1]
    if not L11_2 then
      L11_2 = ""
    end
    L10_2 = L10_2(L11_2)
    L11_2 = tonumber
    L12_2 = L9_2[2]
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = 0
    end
    L12_2 = GetInsertedAmount
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    L13_2 = L10_2
    L14_2 = " +"
    L15_2 = L11_2
    L16_2 = " progress | inserted: "
    L17_2 = L12_2
    L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
    L14_2 = exports
    L14_2 = L14_2.striano_fastmenu
    L15_2 = L14_2
    L14_2 = L14_2.addMenuItem
    L16_2 = L13_2
    function L17_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = true
      L42_1 = L0_3
      L0_3 = ClearPedTasks
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = IsRecyclerComplete
      L0_3 = L0_3()
      if L0_3 then
        L0_3 = testo3d
        L1_3 = "Recycler Ready"
        L0_3(L1_3)
        L0_3 = PlaySoundFrontend
        L1_3 = -1
        L2_3 = "Nav_Arrow_Right"
        L3_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
        L4_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = SetTimeout
        L1_3 = 100
        function L2_3()
          local L0_4, L1_4
          L0_4 = OpenRecyclerCraftMenu
          L0_4()
        end
        L0_3(L1_3, L2_3)
        return
      end
      L0_3 = TriggerServerEvent
      L1_3 = "recycler:tryInsertItem"
      L2_3 = L0_2
      L3_3 = L10_2
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L14_2(L15_2, L16_2, L17_2)
  end
  L4_2 = IsRecyclerComplete
  L4_2 = L4_2()
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  if L4_2 then
    L7_2 = "RECYCLE: READY!"
    if L7_2 then
      goto lbl_94
    end
  end
  L7_2 = "RECYCLE: Waiting materials"
  ::lbl_94::
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = IsRecyclerComplete
    L0_3 = L0_3()
    if not L0_3 then
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "OPENED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetTimeout
      L1_3 = 100
      function L2_3()
        local L0_4, L1_4
        L0_4 = OpenRecyclerCraftMenu
        L0_4()
      end
      L0_3(L1_3, L2_3)
      return
    end
    L0_3 = false
    L42_1 = L0_3
    L0_3 = true
    L41_1 = L0_3
    L0_3 = TriggerServerEvent
    L1_3 = "recycler:completeCraft"
    L2_3 = L0_2
    L3_3 = L40_1.removedItems
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = ClearPedTasks
    L1_3 = L3_2
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = {}
    L40_1 = L0_3
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.openMenu
  L5_2(L6_2)
  L5_2 = false
  L39_1 = L5_2
end
L44_1[L45_1] = L46_1
L44_1 = RegisterNetEvent
L45_1 = "CraftRecyclerGet"
function L46_1()
  local L0_2, L1_2
  L0_2 = false
  L43_1 = L0_2
  L0_2 = Wait
  L1_2 = 255
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "e posatasca"
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 550
  L0_2(L1_2)
  L0_2 = testo3d
  L1_2 = "~h~~g~Craft Complete"
  L0_2(L1_2)
  L0_2 = true
  L43_1 = L0_2
  L0_2 = OpenRecyclerMenu
  L0_2()
end
L44_1(L45_1, L46_1)
L44_1 = RegisterNetEvent
L45_1 = "recycler:insertResult"
function L46_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if not A0_2 then
    L5_2 = PlaySoundFrontend
    L6_2 = -1
    L7_2 = "Highlight_Error"
    L8_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L9_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = SetTimeout
    L6_2 = 100
    function L7_2()
      local L0_3, L1_3
      L0_3 = ClearPedTasks
      L1_3 = L4_2
      L0_3(L1_3)
      L0_3 = false
      L42_1 = L0_3
      L0_3 = OpenRecyclerCraftMenu
      L0_3()
    end
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = L40_1.finalItem
  if L5_2 ~= A1_2 then
    L5_2 = PlaySoundFrontend
    L6_2 = -1
    L7_2 = "Highlight_Error"
    L8_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L9_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = ClearPedTasks
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = false
    L42_1 = L5_2
    return
  end
  L5_2 = PlaySoundFrontend
  L6_2 = -1
  L7_2 = "Event_Message_Purple"
  L8_2 = "GTAO_FM_Events_Soundset"
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = tonumber
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A3_2 = L5_2 or A3_2
  if not L5_2 then
    A3_2 = 1
  end
  L5_2 = L40_1.inserted
  L6_2 = L40_1.inserted
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L6_2 = 0
  end
  L6_2 = L6_2 + A3_2
  L5_2[A2_2] = L6_2
  L5_2 = L40_1.removedItems
  L6_2 = L40_1.removedItems
  L6_2 = L6_2[A2_2]
  if not L6_2 then
    L6_2 = 0
  end
  L6_2 = L6_2 + A3_2
  L5_2[A2_2] = L6_2
  L5_2 = SetTimeout
  L6_2 = 100
  function L7_2()
    local L0_3, L1_3
    L0_3 = ClearPedTasks
    L1_3 = L4_2
    L0_3(L1_3)
    L0_3 = false
    L42_1 = L0_3
    L0_3 = OpenRecyclerCraftMenu
    L0_3()
  end
  L5_2(L6_2, L7_2)
end
L44_1(L45_1, L46_1)
L44_1 = _ENV
L45_1 = "OpenRecyclerMenu"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L43_1
  if not L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.opened
  L0_2 = L0_2(L1_2)
  if L0_2 then
    return
  end
  L0_2 = false
  L42_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L39_1
  if not L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "e lavora2"
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = Wait
      L1_3 = 225
      L0_3(L1_3)
      while true do
        L0_3 = L39_1
        if L0_3 then
          break
        end
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.opened
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = IsEntityPlayingAnim
        L1_3 = L0_2
        L2_3 = "anim@amb@business@coc@coc_unpack_cut@"
        L3_3 = "fullcut_cycle_v2_cokecutter"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.close
      L0_3(L1_3)
      L0_3 = ClearPedTasks
      L1_3 = L0_2
      L0_3(L1_3)
    end
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = RecyclerChange
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.label
    if not L7_2 then
      L7_2 = L5_2
    end
    L8_2 = " x"
    L9_2 = tostring
    L10_2 = L6_2.amountFinal
    if not L10_2 then
      L10_2 = 1
    end
    L9_2 = L9_2(L10_2)
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = exports
    L8_2 = L8_2.striano_fastmenu
    L9_2 = L8_2
    L8_2 = L8_2.addMenuItem
    L10_2 = L7_2
    function L11_2()
      local L0_3, L1_3, L2_3
      L0_3 = true
      L39_1 = L0_3
      L0_3 = {}
      L1_3 = L5_2
      L0_3.finalItem = L1_3
      L1_3 = L6_2
      L0_3.cfg = L1_3
      L1_3 = {}
      L0_3.inserted = L1_3
      L1_3 = {}
      L0_3.removedItems = L1_3
      L40_1 = L0_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.clearMenu
      L0_3(L1_3)
      L0_3 = ClearPedTasks
      L1_3 = L0_2
      L0_3(L1_3)
      L0_3 = SetTimeout
      L1_3 = 100
      function L2_3()
        local L0_4, L1_4
        L0_4 = OpenRecyclerCraftMenu
        L0_4()
      end
      L0_3(L1_3, L2_3)
    end
    L8_2(L9_2, L10_2, L11_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L44_1[L45_1] = L46_1
L44_1 = RegisterNetEvent
L45_1 = "randomTrade:openMenu"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = canOpenTrade
  if not L1_2 then
    return
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = print
    L2_2 = "Trade menu not valid."
    L1_2(L2_2)
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = "This trade menu is generated automatically every hour."
  L1_2(L2_2, L3_2)
  L1_2 = ExecuteCommand
  L2_2 = "e clipboard"
  L1_2(L2_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    while true do
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.opened
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = ExecuteCommand
    L1_3 = "e c"
    L0_3(L1_3)
    L0_3 = ClearPedTasks
    L1_3 = L1_2
    L0_3(L1_3)
  end
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = "%sx %s  \226\134\146  %sx %s"
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = L7_2.needAmount
    L11_2 = L7_2.needItem
    L12_2 = L7_2.giveAmount
    L13_2 = L7_2.giveItem
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = exports
    L9_2 = L9_2.striano_fastmenu
    L10_2 = L9_2
    L9_2 = L9_2.addMenuItem
    L11_2 = L8_2
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerServerEvent
      L1_3 = "randomTrade:doTrade"
      L2_3 = L7_2.id
      L0_3(L1_3, L2_3)
    end
    L9_2(L10_2, L11_2, L12_2)
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.closeWithX
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
L44_1(L45_1, L46_1)
L44_1 = _ENV
L45_1 = "canOpenTrade"
L46_1 = true
L44_1[L45_1] = L46_1
L44_1 = RegisterNetEvent
L45_1 = "randomTrade:notify"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2
  canOpenTrade = false
  L1_2 = print
  L2_2 = "[TradeMenu]"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = ExecuteCommand
  L3_2 = "e cc"
  L2_2(L3_2)
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "e posatasca"
  L2_2(L3_2)
  L2_2 = testo3d
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 250
  L2_2(L3_2)
  canOpenTrade = true
  L2_2 = ExecuteCommand
  L3_2 = "e c"
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "randomTrade:requestMenu"
  L2_2(L3_2)
end
L44_1(L45_1, L46_1)
L44_1 = {}
L45_1 = _ENV
L46_1 = "ReloadSwordList"
function L47_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.GetItems
  L0_2 = L0_2(L1_2)
  L44_1 = L0_2
end
L45_1[L46_1] = L47_1
L45_1 = false
L46_1 = nil
L47_1 = _ENV
L48_1 = "Notify"
function L49_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L47_1[L48_1] = L49_1
L47_1 = _ENV
L48_1 = "DeletePreviewWeapon"
function L49_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L46_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L46_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L46_1
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = L46_1
      L0_2(L1_2)
    end
  end
  L0_2 = nil
  L46_1 = L0_2
end
L47_1[L48_1] = L49_1
L46_1 = nil
L47_1 = _ENV
L48_1 = "startPrevAttach"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = Sfoggiate
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.fodera2
    L2_2(L3_2)
    CombatActive = false
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = nil
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = A0_2 or L5_2
  if "number" ~= L5_2 or not A0_2 then
    L5_2 = GetHashKey
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
  end
  L6_2 = IsModelInCdimage
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = IsModelValid
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_40
    end
  end
  L6_2 = print
  L7_2 = "Model sword not valid:"
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  do return end
  ::lbl_40::
  L6_2 = RequestModel
  L7_2 = L5_2
  L6_2(L7_2)
  while true do
    L6_2 = HasModelLoaded
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = L46_1
  if nil ~= L6_2 then
    L6_2 = DoesEntityExist
    L7_2 = L46_1
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = GetEntityModel
      L7_2 = L46_1
      L6_2 = L6_2(L7_2)
      if L6_2 ~= L5_2 then
        L6_2 = SetEntityAsMissionEntity
        L7_2 = L46_1
        L8_2 = true
        L9_2 = true
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = DeleteEntity
        L7_2 = L46_1
        L6_2(L7_2)
        L6_2 = nil
        L46_1 = L6_2
        L6_2 = CreateObject
        L7_2 = L5_2
        L8_2 = L4_2.x
        L9_2 = L4_2.y
        L10_2 = L4_2.z
        L11_2 = false
        L12_2 = false
        L13_2 = false
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L3_2 = L6_2
        while true do
          if nil ~= L3_2 then
            L6_2 = DoesEntityExist
            L7_2 = L3_2
            L6_2 = L6_2(L7_2)
            if L6_2 then
              break
            end
          end
          L6_2 = Wait
          L7_2 = 0
          L6_2(L7_2)
        end
        L46_1 = L3_2
      else
        L3_2 = L46_1
      end
  end
  else
    L6_2 = CreateObject
    L7_2 = L5_2
    L8_2 = L4_2.x
    L9_2 = L4_2.y
    L10_2 = L4_2.z
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2 = L6_2
    while true do
      if nil ~= L3_2 then
        L6_2 = DoesEntityExist
        L7_2 = L3_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
    L46_1 = L3_2
  end
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L5_2
  L6_2(L7_2)
  if nil ~= L3_2 then
    L6_2 = DoesEntityExist
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = FreezeEntityPosition
      L7_2 = L3_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityCollision
      L7_2 = L3_2
      L8_2 = false
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = SetEntityAsMissionEntity
      L7_2 = L3_2
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = ClearPedTasks
      L7_2 = L2_2
      L6_2(L7_2)
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.getStyleCombat
      L6_2 = L6_2(L7_2)
      L7_2 = L44_1
      L7_2 = L7_2[A1_2]
      L7_2 = L7_2.att
      L8_2 = AttachEntityToEntity
      L9_2 = L3_2
      L10_2 = L2_2
      L11_2 = GetPedBoneIndex
      L12_2 = L2_2
      L13_2 = 57005
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = L7_2[1]
      L13_2 = L7_2[2]
      L14_2 = L7_2[3]
      L15_2 = L7_2[4]
      L16_2 = L7_2[5]
      L17_2 = L7_2[6]
      L18_2 = false
      L19_2 = false
      L20_2 = false
      L21_2 = true
      L22_2 = 1
      L23_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L8_2 = L6_2.Idle
      if nil == L8_2 then
        L6_2.Idle = 4
      end
      L8_2 = L6_2.Idle
      if nil ~= L8_2 then
        L8_2 = exports
        L8_2 = L8_2.striano_combat
        L9_2 = L8_2
        L8_2 = L8_2.LoadIdleFight
        L10_2 = L6_2.Idle
        L8_2(L9_2, L10_2)
      end
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3
        while true do
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.opened
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 0
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableFirstPersonCamThisFrame
          L0_3()
        end
        L0_3 = L46_1
        if nil ~= L0_3 then
          L0_3 = L46_1
          L1_3 = L3_2
          if L0_3 == L1_3 then
            L0_3 = DoesEntityExist
            L1_3 = L46_1
            L0_3 = L0_3(L1_3)
            if L0_3 then
              L0_3 = SetEntityAsMissionEntity
              L1_3 = L46_1
              L2_3 = true
              L3_3 = true
              L0_3(L1_3, L2_3, L3_3)
              L0_3 = DeleteEntity
              L1_3 = L46_1
              L0_3(L1_3)
              L0_3 = nil
              L46_1 = L0_3
            end
          end
        end
        L0_3 = ClearPedTasks
        L1_3 = L2_2
        L0_3(L1_3)
      end
      L8_2(L9_2)
    end
  end
end
L47_1[L48_1] = L49_1
L47_1 = _ENV
L48_1 = "OpenConfirmWeaponCraft"
function L49_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L44_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = WeaponCraft
  L2_2 = L2_2.BuildRecipe
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = WeaponCraft
  L3_2 = L3_2.RecipeText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.clearMenu
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 75
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItemAdvanced
  L6_2 = {}
  L7_2 = "Craft: "
  L8_2 = L1_2.Name
  L7_2 = L7_2 .. L8_2
  L6_2.label = L7_2
  L6_2.autoClose = true
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L45_1
    if L0_3 then
      return
    end
    L0_3 = true
    L45_1 = L0_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.TriggerServerCallback
    L2_3 = "weaponcraft:craft"
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = false
      L45_1 = L1_4
      L1_4 = Notify
      L2_4 = "You get what you need to craft this weapon in F8."
      L1_4(L2_4)
      L1_4 = ExecuteCommand
      L2_4 = "e shrug5"
      L1_4(L2_4)
      if A0_4 then
        L1_4 = A0_4.ok
        if L1_4 then
          goto lbl_15
        end
      end
      do return end
      ::lbl_15::
      L1_4 = Notify
      L2_4 = "Weapon Crafted: "
      L3_4 = L1_2.Name
      L2_4 = L2_4 .. L3_4
      L1_4(L2_4)
    end
    L4_3 = A0_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L6_2.onClick = L7_2
  L7_2 = {}
  L8_2 = L1_2.Name
  L7_2.title = L8_2
  L8_2 = [[
Needed:

]]
  L9_2 = L3_2
  L8_2 = L8_2 .. L9_2
  L7_2.description = L8_2
  L7_2.footer = "Click to confirm"
  L7_2.icon = "\240\159\148\168"
  L7_2.theme = "white"
  L6_2.hoverInfo = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItemAdvanced
  L6_2 = {}
  L6_2.label = "\226\157\140 Back"
  L6_2.autoClose = false
  function L7_2()
    local L0_3, L1_3
    L0_3 = OpenWeaponCraftMenu
    L0_3()
  end
  L6_2.onClick = L7_2
  L7_2 = {}
  L7_2.title = "Back"
  L7_2.description = "Back to weapons list."
  L7_2.footer = ""
  L7_2.icon = ""
  L7_2.theme = "white"
  L6_2.hoverInfo = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.openMenu
  L4_2(L5_2)
end
L47_1[L48_1] = L49_1
L47_1 = RegisterNetEvent
L48_1 = "printWeapCraft"
L47_1(L48_1)
L47_1 = AddEventHandler
L48_1 = "printWeapCraft"
function L49_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = A0_2
  L1_2(L2_2)
end
L47_1(L48_1, L49_1)
L47_1 = RegisterNetEvent
L48_1 = "weaponCraft"
L47_1(L48_1)
L47_1 = AddEventHandler
L48_1 = "weaponCraft"
function L49_1()
  local L0_2, L1_2
  L0_2 = OpenWeaponCraftMenu
  L0_2()
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "RegisterNUICallback"
L47_1 = L47_1[L48_1]
L48_1 = "specialAction"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = closeInventory2D
  L2_2()
  L2_2 = Wait
  L3_2 = 25
  L2_2(L3_2)
  L2_2 = IsPedInAnyVehicle
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  L3_2 = L2_2
  L2_2 = L2_2.OpenInventory
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "RegisterNUICallback"
L47_1 = L47_1[L48_1]
L48_1 = "inv2d:close"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closeInventory2D
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "RegisterNUICallback"
L47_1 = L47_1[L48_1]
L48_1 = "openKey"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closeInventory2D
  L2_2()
  L2_2 = ExecuteCommand
  L3_2 = "keys"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "exports"
L47_1 = L47_1[L48_1]
L48_1 = "isBagOpen"
function L49_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Inv2D
  L0_2 = L0_2.open
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = tostring
  L1_2 = Inv2D
  L1_2 = L1_2.otherInv
  if not L1_2 then
    L1_2 = ""
  end
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.sub
  L3_2 = 1
  L4_2 = 4
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = "bag_" == L1_2
  return L1_2
end
L47_1(L48_1, L49_1)
L47_1 = _ENV
L48_1 = "RegisterNUICallback"
L47_1 = L47_1[L48_1]
L48_1 = "inventoryButton"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  L3_2 = L2_2
  L2_2 = L2_2.isBagOpen
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
    L2_2 = closeInventory2D
    L2_2()
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
    L2_2 = A0_2.action
    if "inv3d" == L2_2 then
      L2_2 = IsPedInAnyVehicle
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = true
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        return
      end
      L2_2 = exports
      L2_2 = L2_2.striano_inventory
      L3_2 = L2_2
      L2_2 = L2_2.OpenInventory
      L2_2(L3_2)
    else
      L2_2 = A0_2.action
      if "keys" == L2_2 then
        L2_2 = ExecuteCommand
        L3_2 = "keys"
        L2_2(L3_2)
      else
        L2_2 = A0_2.action
        if "slotSwords" == L2_2 then
          L2_2 = ExecuteCommand
          L3_2 = "menuSword"
          L2_2(L3_2)
        else
          L2_2 = A0_2.action
          if "borsone" == L2_2 then
            L2_2 = ExecuteCommand
            L3_2 = "openbag"
            L2_2(L3_2)
          else
            L2_2 = A0_2.action
            if "slot1" == L2_2 then
              L2_2 = openHolsterMenu
              L3_2 = "primary"
              L2_2(L3_2)
            else
              L2_2 = A0_2.action
              if "slot2" == L2_2 then
                L2_2 = openHolsterMenu
                L3_2 = "secondry"
                L2_2(L3_2)
              end
            end
          end
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L47_1(L48_1, L49_1)
L47_1 = {}
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 or not A0_2 then
    A0_2 = L47_1
  end
  L2_2 = tostring
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.setMenuPosition
  L4_2 = "center"
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.setAutoClose
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItemAdvanced
  L4_2 = {}
  if "" ~= A1_2 then
    L5_2 = "\240\159\148\142 Cerca: "
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    if L5_2 then
      goto lbl_44
    end
  end
  L5_2 = "\240\159\148\142 Cerca inventario"
  ::lbl_44::
  L4_2.label = L5_2
  L4_2.hoverInfo = "Cerca per giocatore, license o nome inventario"
  L4_2.autoClose = true
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.OpenInput
    L2_3 = "Cerca inventario"
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = tostring
      L2_4 = A0_4 or L2_4
      if not A0_4 then
        L2_4 = ""
      end
      L1_4 = L1_4(L2_4)
      A0_4 = L1_4
      L1_4 = L48_1
      L2_4 = L47_1
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2.onClick = L5_2
  L2_2(L3_2, L4_2)
  if "" ~= A1_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItemAdvanced
    L4_2 = {}
    L4_2.label = "\226\157\140 Rimuovi filtro"
    L4_2.hoverInfo = "Mostra nuovamente tutti gli inventari"
    L4_2.autoClose = true
    function L5_2()
      local L0_3, L1_3
      L0_3 = L48_1
      L1_3 = L47_1
      L0_3(L1_3)
    end
    L4_2.onClick = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2
    L10_2 = table
    L10_2 = L10_2.concat
    L11_2 = {}
    L12_2 = tostring
    L13_2 = L9_2.ownerName
    if not L13_2 then
      L13_2 = ""
    end
    L12_2 = L12_2(L13_2)
    L13_2 = tostring
    L14_2 = L9_2.ownerKey
    if not L14_2 then
      L14_2 = ""
    end
    L13_2 = L13_2(L14_2)
    L14_2 = tostring
    L15_2 = L9_2.invName
    if not L15_2 then
      L15_2 = ""
    end
    L14_2 = L14_2(L15_2)
    L15_2 = tostring
    L16_2 = L9_2.serverId
    if not L16_2 then
      L16_2 = ""
    end
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L11_2[5] = L16_2
    L11_2[6] = L17_2
    L12_2 = " "
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L10_2
    L10_2 = L10_2.lower
    L10_2 = L10_2(L11_2)
    if "" ~= A1_2 then
      L12_2 = L10_2
      L11_2 = L10_2.find
      L13_2 = A1_2
      L14_2 = 1
      L15_2 = true
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      if not L11_2 then
        goto lbl_159
      end
    end
    L2_2 = L2_2 + 1
    L11_2 = L9_2.online
    if L11_2 then
      L11_2 = "\240\159\159\162"
      if L11_2 then
        goto lbl_120
      end
    end
    L11_2 = "\226\154\171"
    ::lbl_120::
    L12_2 = "%s %s | %s"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L11_2
    L15_2 = L9_2.ownerName
    if not L15_2 then
      L15_2 = L9_2.ownerKey
    end
    L16_2 = L9_2.invName
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L13_2 = "%d oggetti \194\183 %d unit\195\160\n%s"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = tonumber
    L16_2 = L9_2.totalTypes
    L15_2 = L15_2(L16_2)
    if not L15_2 then
      L15_2 = 0
    end
    L16_2 = tonumber
    L17_2 = L9_2.totalUnits
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = 0
    end
    L17_2 = L9_2.ownerKey
    if not L17_2 then
      L17_2 = "Proprietario sconosciuto"
    end
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = exports
    L14_2 = L14_2.striano_fastmenu
    L15_2 = L14_2
    L14_2 = L14_2.addMenuItemAdvanced
    L16_2 = {}
    L16_2.label = L12_2
    L16_2.hoverInfo = L13_2
    L16_2.autoClose = true
    function L17_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = TriggerServerEvent
      L1_3 = "inv3d:adminOpenInventory"
      L2_3 = L9_2.ownerKey
      L3_3 = L9_2.invName
      L0_3(L1_3, L2_3, L3_3)
    end
    L16_2.onClick = L17_2
    L14_2(L15_2, L16_2)
    ::lbl_159::
  end
  if L2_2 <= 0 then
    L3_2 = exports
    L3_2 = L3_2.striano_fastmenu
    L4_2 = L3_2
    L3_2 = L3_2.addMenuItem
    L5_2 = "Nessun inventario trovato"
    function L6_2()
      local L0_3, L1_3
    end
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.open
  L3_2(L4_2)
end
L49_1 = RegisterCommand
L50_1 = "invList"
function L51_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:adminRequestInventoryList"
  L0_2(L1_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "inv3d:adminInventoryList"
function L51_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = {}
  end
  L47_1 = L1_2
  L1_2 = L48_1
  L2_2 = L47_1
  L1_2(L2_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "inv3d:adminOpenInventoryResult"
function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" == A0_2 then
    return
  end
  L2_2 = openInventory2D
  L3_2 = A0_2
  L4_2 = {}
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = "Admin Inv"
  end
  L4_2.title = L5_2
  L2_2(L3_2, L4_2)
end
L49_1(L50_1, L51_1)
L49_1 = RegisterNetEvent
L50_1 = "inv3d:adminInventoryError"
function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "^1[ADMIN INVENTORY]^7 %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = tostring
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L49_1(L50_1, L51_1)
L49_1 = {}
L50_1 = _ENV
L51_1 = "CreateThread"
L50_1 = L50_1[L51_1]
function L51_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Items
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.weapon
    if L6_2 then
      L6_2 = L5_2.model
      if L6_2 then
        L6_2 = type
        L7_2 = L5_2.model
        L6_2 = L6_2(L7_2)
        if "number" == L6_2 then
          L6_2 = L5_2.model
          if L6_2 then
            goto lbl_23
          end
        end
        L6_2 = GetHashKey
        L7_2 = L5_2.model
        L6_2 = L6_2(L7_2)
        ::lbl_23::
        L7_2 = L49_1
        L7_2[L6_2] = L4_2
      end
    end
  end
end
L50_1(L51_1)
L50_1 = _ENV
L51_1 = "exports"
L50_1 = L50_1[L51_1]
L51_1 = "IsWeaponProp"
function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = false
  L2_2 = nil
  do return L1_2, L2_2 end
  ::lbl_13::
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L49_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = true
    L4_2 = L2_2
    return L3_2, L4_2
  end
  L3_2 = false
  L4_2 = nil
  return L3_2, L4_2
end
L50_1(L51_1, L52_1)
L50_1 = _ENV
L51_1 = "exports"
L50_1 = L50_1[L51_1]
L51_1 = "EquipWorldWeapon"
function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = Holders
  L1_2 = L1_2.primary
  if L1_2 then
    L1_2 = Holders
    L1_2 = L1_2.primary
    L1_2 = L1_2.item
    if L1_2 then
      L1_2 = " (Replace)"
      if L1_2 then
        goto lbl_18
      end
    end
  end
  L1_2 = ""
  ::lbl_18::
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Equip [Slot 1]"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = UnequipSlots
    L0_3()
    L0_3 = TriggerServerEvent
    L1_3 = "inv3d:setHolderDirect"
    L2_3 = "primary"
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = ExecuteCommand
    L1_3 = "FinePesca"
    L0_3(L1_3)
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Holders
  L2_2 = L2_2.secondry
  if L2_2 then
    L2_2 = Holders
    L2_2 = L2_2.secondry
    L2_2 = L2_2.item
    if L2_2 then
      L2_2 = " (Replace)"
      if L2_2 then
        goto lbl_40
      end
    end
  end
  L2_2 = ""
  ::lbl_40::
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = "Equip [Slot 2]"
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = UnequipSlots
    L0_3()
    L0_3 = TriggerServerEvent
    L1_3 = "inv3d:setHolderDirect"
    L2_3 = "secondry"
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = ExecuteCommand
    L1_3 = "FinePesca"
    L0_3(L1_3)
  end
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.openMenu
  L3_2(L4_2)
end
L50_1(L51_1, L52_1)
L50_1 = _ENV
L51_1 = "RegisterNUICallback"
L50_1 = L50_1[L51_1]
L51_1 = "inv2d:inventoryFull"
function L52_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "prova Inventory full."
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L50_1(L51_1, L52_1)
