local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1
L0_1 = "prop_dock_bouy_1"
L1_1 = false
mioSalvagente = nil
mioSalvagente2 = nil
mioSalvagente3 = nil
CavalcaOnda = false
L2_1 = {}
L2_1[24] = "~INPUT_ATTACK~"
L2_1[25] = "~INPUT_AIM~"
L2_1[45] = "~INPUT_RELOAD~"
L2_1[44] = "~INPUT_COVER~"
L2_1[21] = "~INPUT_SPRINT~"
L2_1[22] = "~INPUT_JUMP~"
L2_1[32] = "~INPUT_MOVE_UP_ONLY~"
L2_1[33] = "~INPUT_MOVE_DOWN_ONLY~"
L2_1[38] = "~INPUT_PICKUP~"
L2_1[34] = "~INPUT_MOVE_LEFT_ONLY~"
L2_1[35] = "~INPUT_MOVE_RIGHT_ONLY~"
L2_1[23] = "~INPUT_ENTER~"
L2_1[73] = "~INPUT_VEH_DUCK~"
L2_1[166] = "~INPUT_SELECT_CHARACTER_MICHAEL~"
L3_1 = 288
L2_1[L3_1] = "~INPUT_REPLAY_START_STOP_RECORDING~"
InputNames = L2_1
L2_1 = nil
L3_1 = 0
function L4_1(A0_2)
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
  L2_2 = L2_1
  if L2_2 == A0_2 then
    L2_2 = L3_1
    L2_2 = L1_2 - L2_2
    L3_2 = 2000
    if not (L2_2 >= L3_2) then
      goto lbl_26
    end
  end
  L2_1 = A0_2
  L3_1 = L1_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Off_High"
  L5_2 = "MP_RADIO_SFX"
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  ::lbl_26::
end
function L5_1(A0_2, A1_2)
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
  L4_2 = L4_1
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
ShowInstructionalButtons = L5_1
InstructionalHintToken = 0
function L5_1(A0_2, A1_2, A2_2)
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
  L6_2 = L4_1
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
ShowInstructionalButtonsTimed = L5_1
function L5_1(A0_2)
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
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2)
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A0_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A2_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A4_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A6_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A8_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 1
    L18_2 = A10_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
    L15_2 = L6_1
    L16_2 = GetControlInstructionalButton
    L17_2 = 2
    L18_2 = A12_2
    L19_2 = true
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2)
    L15_2 = L5_1
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
infoBoat = L7_1
L7_1 = false
L8_1 = false
L9_1 = false
L10_1 = false
L11_1 = false
L12_1 = false
L13_1 = nil
L14_1 = nil
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2
  L2_2 = mioSalvagente
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = mioSalvagente
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = IsEntityAttachedToEntity
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = mioSalvagente2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  if not A0_2 then
    A0_2 = 0.0
  end
  L2_2 = mioSalvagente2
  L3_2 = mioSalvagente3
  if nil ~= L3_2 then
    L2_2 = mioSalvagente3
  end
  L3_2 = GetModelDimensions
  L4_2 = GetEntityModel
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2 = L4_2(L5_2)
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
  L5_2 = BoatModelList
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.scale
  if not L5_2 then
    L5_2 = 1.2
  end
  L6_2 = math
  L6_2 = L6_2.rad
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = {}
  L10_2 = {}
  L11_2 = L3_2.x
  L12_2 = L3_2.y
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L11_2 = {}
  L12_2 = L3_2.x
  L13_2 = L4_2.y
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L12_2 = {}
  L13_2 = L4_2.x
  L14_2 = L3_2.y
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = {}
  L14_2 = L4_2.x
  L15_2 = L4_2.y
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L10_2 = math
  L10_2 = L10_2.huge
  L11_2 = math
  L11_2 = L11_2.huge
  L11_2 = -L11_2
  L12_2 = math
  L12_2 = L12_2.huge
  L13_2 = math
  L13_2 = L13_2.huge
  L13_2 = -L13_2
  L14_2 = 1
  L15_2 = #L9_2
  L16_2 = 1
  for L17_2 = L14_2, L15_2, L16_2 do
    L18_2 = L9_2[L17_2]
    L18_2 = L18_2[1]
    L19_2 = L9_2[L17_2]
    L19_2 = L19_2[2]
    L20_2 = L18_2 * L7_2
    L21_2 = L19_2 * L8_2
    L20_2 = L20_2 + L21_2
    L21_2 = -L18_2
    L21_2 = L21_2 * L8_2
    L22_2 = L19_2 * L7_2
    L21_2 = L21_2 + L22_2
    L22_2 = math
    L22_2 = L22_2.min
    L23_2 = L10_2
    L24_2 = L20_2
    L22_2 = L22_2(L23_2, L24_2)
    L10_2 = L22_2
    L22_2 = math
    L22_2 = L22_2.max
    L23_2 = L11_2
    L24_2 = L20_2
    L22_2 = L22_2(L23_2, L24_2)
    L11_2 = L22_2
    L22_2 = math
    L22_2 = L22_2.min
    L23_2 = L12_2
    L24_2 = L21_2
    L22_2 = L22_2(L23_2, L24_2)
    L12_2 = L22_2
    L22_2 = math
    L22_2 = L22_2.max
    L23_2 = L13_2
    L24_2 = L21_2
    L22_2 = L22_2(L23_2, L24_2)
    L13_2 = L22_2
  end
  L14_2 = L10_2 + L11_2
  L14_2 = L14_2 * 0.5
  L15_2 = L12_2 + L13_2
  L15_2 = L15_2 * 0.5
  L16_2 = {}
  L17_2 = {}
  L18_2 = L10_2 * L5_2
  L17_2.x = L18_2
  L18_2 = L13_2 * L5_2
  L17_2.y = L18_2
  L17_2.type = "frontSX"
  L18_2 = {}
  L18_2.x = L14_2
  L19_2 = L13_2 * L5_2
  L18_2.y = L19_2
  L18_2.type = "frontCentro"
  L19_2 = {}
  L20_2 = L11_2 * L5_2
  L19_2.x = L20_2
  L20_2 = L13_2 * L5_2
  L19_2.y = L20_2
  L19_2.type = "frontDX"
  L20_2 = {}
  L21_2 = L10_2 * L5_2
  L20_2.x = L21_2
  L21_2 = L12_2 * L5_2
  L20_2.y = L21_2
  L20_2.type = "backSX"
  L21_2 = {}
  L21_2.x = L14_2
  L22_2 = L12_2 * L5_2
  L21_2.y = L22_2
  L21_2.type = "backCentro"
  L22_2 = {}
  L23_2 = L11_2 * L5_2
  L22_2.x = L23_2
  L23_2 = L12_2 * L5_2
  L22_2.y = L23_2
  L22_2.type = "backDX"
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L17_2 = L13_2 - L12_2
  L18_2 = L11_2 - L10_2
  L19_2 = math
  L19_2 = L19_2.max
  L20_2 = 0.5
  L21_2 = math
  L21_2 = L21_2.min
  L22_2 = L17_2 * 0.2
  L23_2 = 3.0
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2 = L21_2(L22_2, L23_2)
  L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
  L20_2 = math
  L20_2 = L20_2.max
  L21_2 = 0.4
  L22_2 = math
  L22_2 = L22_2.min
  L23_2 = L18_2 * 0.3
  L24_2 = 1.5
  L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2 = L22_2(L23_2, L24_2)
  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
  L21_2 = 0.3
  L22_2 = GetEntityCoords
  L23_2 = mioSalvagente
  L22_2 = L22_2(L23_2)
  L23_2 = math
  L23_2 = L23_2.rad
  L24_2 = GetEntityHeading
  L25_2 = mioSalvagente
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2 = L24_2(L25_2)
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
  L24_2 = math
  L24_2 = L24_2.sin
  L25_2 = L23_2
  L24_2 = L24_2(L25_2)
  L25_2 = math
  L25_2 = L25_2.cos
  L26_2 = L23_2
  L25_2 = L25_2(L26_2)
  function L26_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = vector3
    L4_3 = L22_2.x
    L5_3 = L25_2
    L5_3 = A0_3 * L5_3
    L4_3 = L4_3 + L5_3
    L5_3 = L24_2
    L5_3 = A1_3 * L5_3
    L4_3 = L4_3 - L5_3
    L5_3 = L22_2.y
    L6_3 = L24_2
    L6_3 = A0_3 * L6_3
    L5_3 = L5_3 + L6_3
    L6_3 = L25_2
    L6_3 = A1_3 * L6_3
    L5_3 = L5_3 + L6_3
    L6_3 = L22_2.z
    L6_3 = L6_3 + A2_3
    return L3_3(L4_3, L5_3, L6_3)
  end
  L27_2 = false
  L7_1 = L27_2
  L27_2 = false
  L8_1 = L27_2
  L27_2 = false
  L9_1 = L27_2
  L27_2 = false
  L10_1 = L27_2
  L27_2 = false
  L11_1 = L27_2
  L27_2 = false
  L12_1 = L27_2
  L27_2 = nil
  L28_2 = nil
  L29_2 = nil
  L30_2 = nil
  L31_2 = 1
  L32_2 = #L16_2
  L33_2 = 1
  for L34_2 = L31_2, L32_2, L33_2 do
    L35_2 = L16_2[L34_2]
    L36_2 = L35_2.type
    L37_2 = L36_2
    L36_2 = L36_2.find
    L38_2 = "front"
    L36_2 = L36_2(L37_2, L38_2)
    L36_2 = nil ~= L36_2
    if L36_2 then
      L37_2 = 1.0
      if L37_2 then
        goto lbl_264
      end
    end
    L37_2 = -1.0
    ::lbl_264::
    L38_2 = L26_2
    L39_2 = L35_2.x
    L40_2 = L35_2.y
    L41_2 = L21_2
    L38_2 = L38_2(L39_2, L40_2, L41_2)
    L39_2 = L26_2
    L40_2 = L35_2.x
    L41_2 = L35_2.y
    L42_2 = L19_2 * L37_2
    L41_2 = L41_2 + L42_2
    L42_2 = L21_2
    L39_2 = L39_2(L40_2, L41_2, L42_2)
    L40_2 = StartShapeTestCapsule
    L41_2 = L38_2.x
    L42_2 = L38_2.y
    L43_2 = L38_2.z
    L44_2 = L39_2.x
    L45_2 = L39_2.y
    L46_2 = L39_2.z
    L47_2 = 0.22
    L48_2 = 511
    L49_2 = mioSalvagente
    L50_2 = 7
    L40_2 = L40_2(L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
    L41_2 = GetShapeTestResult
    L42_2 = L40_2
    L41_2, L42_2, L43_2, L44_2, L45_2 = L41_2(L42_2)
    if 1 == L42_2 and 0 ~= L45_2 then
      L46_2 = IsEntityAPed
      L47_2 = L45_2
      L46_2 = L46_2(L47_2)
      if L46_2 then
        L42_2 = 0
      end
    end
    L46_2 = L1_1
    if L46_2 then
      L46_2 = DrawLine
      L47_2 = L38_2.x
      L48_2 = L38_2.y
      L49_2 = L38_2.z
      L50_2 = L39_2.x
      L51_2 = L39_2.y
      L52_2 = L39_2.z
      if 1 == L42_2 then
        L53_2 = 255
        if L53_2 then
          goto lbl_319
        end
      end
      L53_2 = 0
      ::lbl_319::
      if 1 == L42_2 then
        L54_2 = 0
        if L54_2 then
          goto lbl_325
        end
      end
      L54_2 = 255
      ::lbl_325::
      L55_2 = 0
      L56_2 = 255
      L46_2(L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2)
      L46_2 = DrawMarker
      L47_2 = 28
      L48_2 = L38_2.x
      L49_2 = L38_2.y
      L50_2 = L38_2.z
      L51_2 = 0.0
      L52_2 = 0.0
      L53_2 = 0.0
      L54_2 = 0.0
      L55_2 = 0.0
      L56_2 = 0.0
      L57_2 = 0.1
      L58_2 = 0.1
      L59_2 = 0.1
      L60_2 = 255
      L61_2 = 255
      L62_2 = 255
      L63_2 = 255
      L64_2 = false
      L65_2 = false
      L66_2 = 2
      L67_2 = false
      L68_2 = nil
      L69_2 = nil
      L70_2 = false
      L46_2(L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2)
    end
    if 1 == L42_2 then
      L46_2 = L1_1
      if L46_2 then
        L46_2 = DrawMarker
        L47_2 = 28
        L48_2 = L43_2.x
        L49_2 = L43_2.y
        L50_2 = L43_2.z
        L51_2 = 0.0
        L52_2 = 0.0
        L53_2 = 0.0
        L54_2 = 0.0
        L55_2 = 0.0
        L56_2 = 0.0
        L57_2 = 0.18
        L58_2 = 0.18
        L59_2 = 0.18
        L60_2 = 255
        L61_2 = 0
        L62_2 = 0
        L63_2 = 255
        L64_2 = false
        L65_2 = false
        L66_2 = 2
        L67_2 = false
        L68_2 = nil
        L69_2 = nil
        L70_2 = false
        L46_2(L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2)
      end
      L46_2 = L35_2.type
      if "frontSX" == L46_2 then
        L46_2 = true
        L7_1 = L46_2
      else
        L46_2 = L35_2.type
        if "frontCentro" == L46_2 then
          L46_2 = true
          L8_1 = L46_2
        else
          L46_2 = L35_2.type
          if "frontDX" == L46_2 then
            L46_2 = true
            L9_1 = L46_2
          else
            L46_2 = L35_2.type
            if "backSX" == L46_2 then
              L46_2 = true
              L10_1 = L46_2
            else
              L46_2 = L35_2.type
              if "backCentro" == L46_2 then
                L46_2 = true
                L11_1 = L46_2
              else
                L46_2 = L35_2.type
                if "backDX" == L46_2 then
                  L46_2 = true
                  L12_1 = L46_2
                end
              end
            end
          end
        end
      end
      if L36_2 then
        L46_2 = {}
        L46_2.startPos = L38_2
        L46_2.endPos = L39_2
        L13_1 = L46_2
      else
        L46_2 = {}
        L46_2.startPos = L38_2
        L46_2.endPos = L39_2
        L14_1 = L46_2
      end
      L46_2 = L39_2.x
      L47_2 = L38_2.x
      L46_2 = L46_2 - L47_2
      L47_2 = L39_2.y
      L48_2 = L38_2.y
      L47_2 = L47_2 - L48_2
      L48_2 = math
      L48_2 = L48_2.sqrt
      L49_2 = L46_2 * L46_2
      L50_2 = L47_2 * L47_2
      L49_2 = L49_2 + L50_2
      L48_2 = L48_2(L49_2)
      L49_2 = 0.001
      if L48_2 > L49_2 then
        L49_2 = L46_2 / L48_2
        L49_2 = -L49_2
        L50_2 = L47_2 / L48_2
        L50_2 = -L50_2
        if L36_2 then
          L27_2 = L49_2
          L28_2 = L50_2
        else
          L29_2 = L49_2
          L30_2 = L50_2
        end
      end
    end
  end
  L31_2 = 0.35
  L32_2 = L10_2 * L5_2
  L32_2 = L32_2 - L31_2
  L33_2 = L11_2 * L5_2
  L33_2 = L33_2 + L31_2
  L34_2 = L26_2
  L35_2 = L32_2
  L36_2 = L15_2
  L37_2 = L21_2
  L34_2 = L34_2(L35_2, L36_2, L37_2)
  L35_2 = L26_2
  L36_2 = L32_2 - L20_2
  L37_2 = L15_2
  L38_2 = L21_2
  L35_2 = L35_2(L36_2, L37_2, L38_2)
  L36_2 = L26_2
  L37_2 = L33_2
  L38_2 = L15_2
  L39_2 = L21_2
  L36_2 = L36_2(L37_2, L38_2, L39_2)
  L37_2 = L26_2
  L38_2 = L33_2 + L20_2
  L39_2 = L15_2
  L40_2 = L21_2
  L37_2 = L37_2(L38_2, L39_2, L40_2)
  L38_2 = StartShapeTestCapsule
  L39_2 = L34_2.x
  L40_2 = L34_2.y
  L41_2 = L34_2.z
  L42_2 = L35_2.x
  L43_2 = L35_2.y
  L44_2 = L35_2.z
  L45_2 = 0.22
  L46_2 = 511
  L47_2 = mioSalvagente
  L48_2 = 7
  L38_2 = L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
  L39_2 = GetShapeTestResult
  L40_2 = L38_2
  L39_2, L40_2, L41_2, L42_2, L43_2 = L39_2(L40_2)
  if 1 == L40_2 and 0 ~= L43_2 then
    L44_2 = IsEntityAPed
    L45_2 = L43_2
    L44_2 = L44_2(L45_2)
    if L44_2 then
      L40_2 = 0
    end
  end
  L44_2 = StartShapeTestCapsule
  L45_2 = L36_2.x
  L46_2 = L36_2.y
  L47_2 = L36_2.z
  L48_2 = L37_2.x
  L49_2 = L37_2.y
  L50_2 = L37_2.z
  L51_2 = 0.22
  L52_2 = 511
  L53_2 = mioSalvagente
  L54_2 = 7
  L44_2 = L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2)
  L45_2 = GetShapeTestResult
  L46_2 = L44_2
  L45_2, L46_2, L47_2, L48_2, L49_2 = L45_2(L46_2)
  if 1 == L46_2 and 0 ~= L49_2 then
    L50_2 = IsEntityAPed
    L51_2 = L49_2
    L50_2 = L50_2(L51_2)
    if L50_2 then
      L46_2 = 0
    end
  end
  L50_2 = L1_1
  if L50_2 then
    L50_2 = DrawLine
    L51_2 = L34_2.x
    L52_2 = L34_2.y
    L53_2 = L34_2.z
    L54_2 = L35_2.x
    L55_2 = L35_2.y
    L56_2 = L35_2.z
    if 1 == L40_2 then
      L57_2 = 255
      if L57_2 then
        goto lbl_562
      end
    end
    L57_2 = 0
    ::lbl_562::
    if 1 == L40_2 then
      L58_2 = 0
      if L58_2 then
        goto lbl_568
      end
    end
    L58_2 = 255
    ::lbl_568::
    L59_2 = 255
    L60_2 = 255
    L50_2(L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2)
    L50_2 = DrawLine
    L51_2 = L36_2.x
    L52_2 = L36_2.y
    L53_2 = L36_2.z
    L54_2 = L37_2.x
    L55_2 = L37_2.y
    L56_2 = L37_2.z
    if 1 == L46_2 then
      L57_2 = 255
      if L57_2 then
        goto lbl_584
      end
    end
    L57_2 = 0
    ::lbl_584::
    if 1 == L46_2 then
      L58_2 = 0
      if L58_2 then
        goto lbl_590
      end
    end
    L58_2 = 255
    ::lbl_590::
    L59_2 = 255
    L60_2 = 255
    L50_2(L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2)
    if 1 == L40_2 then
      L50_2 = DrawMarker
      L51_2 = 28
      L52_2 = L41_2.x
      L53_2 = L41_2.y
      L54_2 = L41_2.z
      L55_2 = 0.0
      L56_2 = 0.0
      L57_2 = 0.0
      L58_2 = 0.0
      L59_2 = 0.0
      L60_2 = 0.0
      L61_2 = 0.2
      L62_2 = 0.2
      L63_2 = 0.2
      L64_2 = 255
      L65_2 = 0
      L66_2 = 255
      L67_2 = 255
      L68_2 = false
      L69_2 = false
      L70_2 = 2
      L71_2 = false
      L72_2 = nil
      L73_2 = nil
      L74_2 = false
      L50_2(L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
    end
    if 1 == L46_2 then
      L50_2 = DrawMarker
      L51_2 = 28
      L52_2 = L47_2.x
      L53_2 = L47_2.y
      L54_2 = L47_2.z
      L55_2 = 0.0
      L56_2 = 0.0
      L57_2 = 0.0
      L58_2 = 0.0
      L59_2 = 0.0
      L60_2 = 0.0
      L61_2 = 0.2
      L62_2 = 0.2
      L63_2 = 0.2
      L64_2 = 255
      L65_2 = 0
      L66_2 = 255
      L67_2 = 255
      L68_2 = false
      L69_2 = false
      L70_2 = 2
      L71_2 = false
      L72_2 = nil
      L73_2 = nil
      L74_2 = false
      L50_2(L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2)
    end
  end
  L50_2 = 0.35
  function L51_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = A0_3.x
    L4_3 = A1_3.x
    L3_3 = L3_3 - L4_3
    L4_3 = A0_3.y
    L5_3 = A1_3.y
    L4_3 = L4_3 - L5_3
    L5_3 = math
    L5_3 = L5_3.sqrt
    L6_3 = L3_3 * L3_3
    L7_3 = L4_3 * L4_3
    L6_3 = L6_3 + L7_3
    L5_3 = L5_3(L6_3)
    L6_3 = 0.001
    if L5_3 <= L6_3 then
      return
    end
    L3_3 = L3_3 / L5_3
    L4_3 = L4_3 / L5_3
    L6_3 = L50_2
    L7_3 = A2_3 or L7_3
    if not A2_3 then
      L7_3 = 1.0
    end
    L6_3 = L6_3 * L7_3
    L7_3 = GetEntityRotationVelocity
    L8_3 = mioSalvagente
    L7_3 = L7_3(L8_3)
    L8_3 = SetEntityAngularVelocity
    L9_3 = mioSalvagente
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = L7_3.z
    L8_3(L9_3, L10_3, L11_3, L12_3)
    L8_3 = ApplyForceToEntityCenterOfMass
    L9_3 = mioSalvagente
    L10_3 = 1
    L11_3 = L3_3 * L6_3
    L12_3 = L4_3 * L6_3
    L13_3 = 0.0
    L14_3 = false
    L15_3 = false
    L16_3 = true
    L17_3 = false
    L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
  end
  L52_2 = L7_1
  if not L52_2 then
    L52_2 = L8_1
    if not L52_2 then
      L52_2 = L9_1
    end
  end
  L53_2 = L10_1
  if not L53_2 then
    L53_2 = L11_1
    if not L53_2 then
      L53_2 = L12_1
    end
  end
  if L52_2 and not L53_2 then
    L54_2 = L13_1
    if L54_2 then
      L54_2 = IsControlPressed
      L55_2 = 0
      L56_2 = 32
      L54_2 = L54_2(L55_2, L56_2)
      if L54_2 then
        L54_2 = 2.0
        if L54_2 then
          goto lbl_680
        end
      end
      L54_2 = 1.0
      ::lbl_680::
      L55_2 = L51_2
      L56_2 = L13_1.startPos
      L57_2 = L13_1.endPos
      L58_2 = L54_2
      L55_2(L56_2, L57_2, L58_2)
    end
  end
  if L53_2 and not L52_2 then
    L54_2 = L14_1
    if L54_2 then
      L54_2 = IsControlPressed
      L55_2 = 0
      L56_2 = 33
      L54_2 = L54_2(L55_2, L56_2)
      if L54_2 then
        L54_2 = 2.0
        if L54_2 then
          goto lbl_702
        end
      end
      L54_2 = 1.0
      ::lbl_702::
      L55_2 = L51_2
      L56_2 = L14_1.startPos
      L57_2 = L14_1.endPos
      L58_2 = L54_2
      L55_2(L56_2, L57_2, L58_2)
    end
  end
  if 1 == L40_2 and 1 ~= L46_2 then
    L54_2 = L51_2
    L55_2 = L34_2
    L56_2 = L35_2
    L57_2 = 1.0
    L54_2(L55_2, L56_2, L57_2)
  end
  if 1 == L46_2 and 1 ~= L40_2 then
    L54_2 = L51_2
    L55_2 = L36_2
    L56_2 = L37_2
    L57_2 = 1.0
    L54_2(L55_2, L56_2, L57_2)
  end
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2
  L3_2 = mioSalvagente
  if L3_2 then
    L3_2 = DoesEntityExist
    L4_2 = mioSalvagente
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = IsEntityAttachedToEntity
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = mioSalvagente2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  if not A0_2 then
    A0_2 = 0.0
  end
  L3_2 = mioSalvagente2
  L4_2 = mioSalvagente3
  if nil ~= L4_2 then
    L3_2 = mioSalvagente3
  end
  L4_2 = GetModelDimensions
  L5_2 = GetEntityModel
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2 = L5_2(L6_2)
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = 1.05
  end
  L7_2 = BoatModelList
  L7_2 = L7_2[A2_2]
  L7_2 = L7_2.scale
  if nil ~= L7_2 then
    L7_2 = BoatModelList
    L7_2 = L7_2[A2_2]
    L6_2 = L7_2.scale
  end
  L7_2 = math
  L7_2 = L7_2.rad
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = math
  L9_2 = L9_2.sin
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = {}
  L11_2 = {}
  L12_2 = L4_2.x
  L13_2 = L4_2.y
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L12_2 = {}
  L13_2 = L4_2.x
  L14_2 = L5_2.y
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L13_2 = {}
  L14_2 = L5_2.x
  L15_2 = L4_2.y
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L14_2 = {}
  L15_2 = L5_2.x
  L16_2 = L5_2.y
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L11_2 = math
  L11_2 = L11_2.huge
  L12_2 = math
  L12_2 = L12_2.huge
  L12_2 = -L12_2
  L13_2 = math
  L13_2 = L13_2.huge
  L14_2 = math
  L14_2 = L14_2.huge
  L14_2 = -L14_2
  L15_2 = 1
  L16_2 = #L10_2
  L17_2 = 1
  for L18_2 = L15_2, L16_2, L17_2 do
    L19_2 = L10_2[L18_2]
    L19_2 = L19_2[1]
    L20_2 = L10_2[L18_2]
    L20_2 = L20_2[2]
    L21_2 = L19_2 * L8_2
    L22_2 = L20_2 * L9_2
    L21_2 = L21_2 + L22_2
    L22_2 = -L19_2
    L22_2 = L22_2 * L9_2
    L23_2 = L20_2 * L8_2
    L22_2 = L22_2 + L23_2
    L23_2 = math
    L23_2 = L23_2.min
    L24_2 = L11_2
    L25_2 = L21_2
    L23_2 = L23_2(L24_2, L25_2)
    L11_2 = L23_2
    L23_2 = math
    L23_2 = L23_2.max
    L24_2 = L12_2
    L25_2 = L21_2
    L23_2 = L23_2(L24_2, L25_2)
    L12_2 = L23_2
    L23_2 = math
    L23_2 = L23_2.min
    L24_2 = L13_2
    L25_2 = L22_2
    L23_2 = L23_2(L24_2, L25_2)
    L13_2 = L23_2
    L23_2 = math
    L23_2 = L23_2.max
    L24_2 = L14_2
    L25_2 = L22_2
    L23_2 = L23_2(L24_2, L25_2)
    L14_2 = L23_2
  end
  L15_2 = {}
  L16_2 = {}
  L17_2 = L11_2 * L6_2
  L16_2.x = L17_2
  L17_2 = L14_2 * L6_2
  L16_2.y = L17_2
  L16_2.pushUP = true
  L17_2 = {}
  L18_2 = L12_2 * L6_2
  L17_2.x = L18_2
  L18_2 = L14_2 * L6_2
  L17_2.y = L18_2
  L17_2.pushUP = true
  L18_2 = {}
  L19_2 = L11_2 * L6_2
  L18_2.x = L19_2
  L19_2 = L13_2 * L6_2
  L18_2.y = L19_2
  L18_2.pushUP = true
  L18_2.pushDown = true
  L19_2 = {}
  L20_2 = L12_2 * L6_2
  L19_2.x = L20_2
  L20_2 = L13_2 * L6_2
  L19_2.y = L20_2
  L19_2.pushUP = true
  L19_2.pushDown = true
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L16_2 = 0.9
  L17_2 = 0.03
  L18_2 = L14_2 - L13_2
  L19_2 = L12_2 - L11_2
  L20_2 = math
  L20_2 = L20_2.max
  L21_2 = L18_2
  L22_2 = L19_2
  L20_2 = L20_2(L21_2, L22_2)
  L21_2 = math
  L21_2 = L21_2.max
  L22_2 = 0.0
  L23_2 = math
  L23_2 = L23_2.min
  L24_2 = L20_2 - 4.0
  L24_2 = L24_2 * 0.035
  L25_2 = 0.3
  L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2 = L23_2(L24_2, L25_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
  L22_2 = 0.5 + L21_2
  L23_2 = 0.9 + L21_2
  L24_2 = 0.5 + L21_2
  L25_2 = 1
  L26_2 = #L15_2
  L27_2 = 1
  for L28_2 = L25_2, L26_2, L27_2 do
    L29_2 = L15_2[L28_2]
    L30_2 = GetOffsetFromEntityInWorldCoords
    L31_2 = mioSalvagente
    L32_2 = L29_2.x
    L33_2 = L29_2.y
    L34_2 = L16_2
    L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
    L31_2 = GetWaterHeight
    L32_2 = L30_2.x
    L33_2 = L30_2.y
    L34_2 = L30_2.z
    L34_2 = L34_2 + 5.0
    L31_2, L32_2 = L31_2(L32_2, L33_2, L34_2)
    L33_2 = L1_1
    if L33_2 then
      L33_2 = DrawMarker
      L34_2 = 28
      L35_2 = L30_2.x
      L36_2 = L30_2.y
      L37_2 = L30_2.z
      L38_2 = 0.0
      L39_2 = 0.0
      L40_2 = 0.0
      L41_2 = 0.0
      L42_2 = 0.0
      L43_2 = 0.0
      L44_2 = 0.12
      L45_2 = 0.12
      L46_2 = 0.12
      L47_2 = 255
      L48_2 = 0
      L49_2 = 0
      L50_2 = 255
      L51_2 = false
      L52_2 = false
      L53_2 = 2
      L54_2 = false
      L55_2 = nil
      L56_2 = nil
      L57_2 = false
      L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2)
    end
    if L31_2 then
      L33_2 = L1_1
      if L33_2 then
        L33_2 = DrawMarker
        L34_2 = 28
        L35_2 = L30_2.x
        L36_2 = L30_2.y
        L37_2 = L32_2
        L38_2 = 0.0
        L39_2 = 0.0
        L40_2 = 0.0
        L41_2 = 0.0
        L42_2 = 0.0
        L43_2 = 0.0
        L44_2 = 0.1
        L45_2 = 0.1
        L46_2 = 0.1
        L47_2 = 0
        L48_2 = 255
        L49_2 = 0
        L50_2 = 255
        L51_2 = false
        L52_2 = false
        L53_2 = 2
        L54_2 = false
        L55_2 = nil
        L56_2 = nil
        L57_2 = false
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2)
        L33_2 = DrawLine
        L34_2 = L30_2.x
        L35_2 = L30_2.y
        L36_2 = L30_2.z
        L37_2 = L30_2.x
        L38_2 = L30_2.y
        L39_2 = L32_2
        L40_2 = 255
        L41_2 = 255
        L42_2 = 0
        L43_2 = 255
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
      end
      L33_2 = L30_2.z
      L33_2 = L33_2 - L32_2
      L34_2 = math
      L34_2 = L34_2.abs
      L35_2 = L33_2
      L34_2 = L34_2(L35_2)
      if L22_2 >= L33_2 then
        L35_2 = ApplyForceToEntity
        L36_2 = mioSalvagente
        L37_2 = 1
        L38_2 = 0.0
        L39_2 = 0.0
        L40_2 = L17_2
        L41_2 = L29_2.x
        L42_2 = L29_2.y
        L43_2 = L16_2
        L44_2 = 0
        L45_2 = false
        L46_2 = true
        L47_2 = true
        L48_2 = false
        L49_2 = true
        L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2)
        L35_2 = L1_1
        if L35_2 then
          L35_2 = DrawMarker
          L36_2 = 28
          L37_2 = L30_2.x
          L38_2 = L30_2.y
          L39_2 = L30_2.z
          L40_2 = 0.0
          L41_2 = 0.0
          L42_2 = 0.0
          L43_2 = 0.0
          L44_2 = 0.0
          L45_2 = 0.0
          L46_2 = 0.25
          L47_2 = 0.25
          L48_2 = 0.25
          L49_2 = 255
          L50_2 = 255
          L51_2 = 255
          L52_2 = 255
          L53_2 = false
          L54_2 = false
          L55_2 = 2
          L56_2 = false
          L57_2 = nil
          L58_2 = nil
          L59_2 = false
          L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
        end
      end
      if L23_2 <= L34_2 then
        L35_2 = L29_2.pushUP
        if L35_2 then
          L35_2 = ApplyForceToEntity
          L36_2 = mioSalvagente
          L37_2 = 1
          L38_2 = 0.0
          L39_2 = 0.0
          L40_2 = -L17_2
          L41_2 = L29_2.x
          L42_2 = L29_2.y
          L43_2 = L16_2
          L44_2 = 0
          L45_2 = false
          L46_2 = true
          L47_2 = true
          L48_2 = false
          L49_2 = true
          L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2)
          L35_2 = L1_1
          if L35_2 then
            L35_2 = DrawMarker
            L36_2 = 28
            L37_2 = L30_2.x
            L38_2 = L30_2.y
            L39_2 = L30_2.z
            L40_2 = 0.0
            L41_2 = 0.0
            L42_2 = 0.0
            L43_2 = 0.0
            L44_2 = 0.0
            L45_2 = 0.0
            L46_2 = 0.2
            L47_2 = 0.2
            L48_2 = 0.2
            L49_2 = 0
            L50_2 = 0
            L51_2 = 255
            L52_2 = 150
            L53_2 = false
            L54_2 = false
            L55_2 = 2
            L56_2 = false
            L57_2 = nil
            L58_2 = nil
            L59_2 = false
            L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
          end
        end
      end
      if L24_2 >= L34_2 then
        L35_2 = L29_2.pushDown
        if L35_2 then
          L35_2 = ApplyForceToEntity
          L36_2 = mioSalvagente
          L37_2 = 1
          L38_2 = 0.0
          L39_2 = 0.0
          L40_2 = L17_2 / 2
          L41_2 = L29_2.x
          L42_2 = L29_2.y
          L43_2 = L16_2
          L44_2 = 0
          L45_2 = false
          L46_2 = true
          L47_2 = true
          L48_2 = false
          L49_2 = true
          L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2)
          L35_2 = L1_1
          if L35_2 then
            L35_2 = DrawMarker
            L36_2 = 28
            L37_2 = L30_2.x
            L38_2 = L30_2.y
            L39_2 = L30_2.z
            L40_2 = 0.0
            L41_2 = 0.0
            L42_2 = 0.0
            L43_2 = 0.0
            L44_2 = 0.0
            L45_2 = 0.0
            L46_2 = 0.3
            L47_2 = 0.3
            L48_2 = 0.3
            L49_2 = 0
            L50_2 = 255
            L51_2 = 255
            L52_2 = 255
            L53_2 = false
            L54_2 = false
            L55_2 = 2
            L56_2 = false
            L57_2 = nil
            L58_2 = nil
            L59_2 = false
            L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
          end
        end
      end
    end
  end
end
StabilizeBoat = L16_1
L16_1 = false
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = L16_1
  if L4_2 then
    return
  end
  L4_2 = true
  L16_1 = L4_2
  L4_2 = vector3
  L5_2 = A2_2[1]
  L6_2 = A2_2[2]
  L7_2 = A2_2[3]
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = vector3
  if A3_2 then
    L6_2 = A3_2[1]
    if L6_2 then
      goto lbl_19
    end
  end
  L6_2 = 0.0
  ::lbl_19::
  if A3_2 then
    L7_2 = A3_2[2]
    if L7_2 then
      goto lbl_25
    end
  end
  L7_2 = 0.0
  ::lbl_25::
  if A3_2 then
    L8_2 = A3_2[3]
    if L8_2 then
      goto lbl_31
    end
  end
  L8_2 = 0.0
  ::lbl_31::
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = SetEntityCollision
  L7_2 = A0_2
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetEntityDynamic
  L7_2 = A0_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityNoCollisionEntity
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = mioSalvagente
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = mioSalvagente3
  if nil ~= L6_2 then
    L6_2 = SetEntityNoCollisionEntity
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = mioSalvagente2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = 1.75
  L7_2 = 45.0
  L8_2 = 75.0
  L9_2 = 20.0
  L10_2 = 1.5
  L11_2 = 15.0
  L12_2 = GetModelDimensions
  L13_2 = GetEntityModel
  L14_2 = mioSalvagente2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2)
  L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = L13_2.y
  L15_2 = L12_2.y
  L14_2 = L14_2 - L15_2
  L15_2 = L13_2.x
  L16_2 = L12_2.x
  L15_2 = L15_2 - L16_2
  L16_2 = math
  L16_2 = L16_2.max
  L17_2 = L14_2
  L18_2 = L15_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = 4.0
  L18_2 = math
  L18_2 = L18_2.max
  L19_2 = 0.25
  L20_2 = math
  L20_2 = L20_2.min
  L21_2 = 1.0
  L22_2 = L17_2 / L16_2
  L20_2, L21_2, L22_2 = L20_2(L21_2, L22_2)
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
  L19_2 = CreateThread
  function L20_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3
    while true do
      L0_3 = L16_1
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = A1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = SetEntityNoCollisionEntity
      L1_3 = mioSalvagente2
      L2_3 = mioSalvagente
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = SetEntityNoCollisionEntity
      L1_3 = mioSalvagente
      L2_3 = mioSalvagente2
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = SetEntityNoCollisionEntity
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = mioSalvagente
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = SetEntityNoCollisionEntity
      L1_3 = mioSalvagente
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = mioSalvagente3
      if nil ~= L0_3 then
        L0_3 = SetEntityNoCollisionEntity
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = mioSalvagente2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetEntityCollision
        L1_3 = mioSalvagente2
        L2_3 = false
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = GetFrameTime
      L0_3 = L0_3()
      L1_3 = 0.05
      if L0_3 > L1_3 then
        L0_3 = 0.05
      end
      L1_3 = IsEntityAttachedToEntity
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = mioSalvagente2
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = 0.15
      L3_3 = 0.03
      if L1_3 then
        L4_3 = L7_2
        if L4_3 then
          goto lbl_74
        end
      end
      L4_3 = L7_2
      L4_3 = L4_3 * L2_3
      ::lbl_74::
      L5_3 = L18_2
      L4_3 = L4_3 * L5_3
      if L1_3 then
        L5_3 = L7_2
        if L5_3 then
          goto lbl_85
        end
      end
      L5_3 = L7_2
      L5_3 = L5_3 * L3_3
      ::lbl_85::
      L6_3 = L18_2
      L5_3 = L5_3 * L6_3
      L6_3 = GetOffsetFromEntityInWorldCoords
      L7_3 = A1_2
      L8_3 = L4_2.x
      L9_3 = L4_2.y
      L10_3 = L4_2.z
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L7_3 = GetEntityCoords
      L8_3 = A0_2
      L7_3 = L7_3(L8_3)
      L8_3 = math
      L8_3 = L8_3.min
      L9_3 = L4_3 * L0_3
      L10_3 = 1.0
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = math
      L9_3 = L9_3.min
      L10_3 = L5_3 * L0_3
      L11_3 = 1.0
      L9_3 = L9_3(L10_3, L11_3)
      L10_3 = L7_3.x
      L11_3 = L6_3.x
      L12_3 = L7_3.x
      L11_3 = L11_3 - L12_3
      L11_3 = L11_3 * L8_3
      L10_3 = L10_3 + L11_3
      L11_3 = L7_3.y
      L12_3 = L6_3.y
      L13_3 = L7_3.y
      L12_3 = L12_3 - L13_3
      L12_3 = L12_3 * L8_3
      L11_3 = L11_3 + L12_3
      L12_3 = L7_3.z
      if L1_3 then
        L13_3 = L7_3.z
        L14_3 = L6_3.z
        L15_3 = L7_3.z
        L14_3 = L14_3 - L15_3
        L14_3 = L14_3 * L9_3
        L12_3 = L13_3 + L14_3
      else
        L13_3 = math
        L13_3 = L13_3.min
        L14_3 = L9_2
        L14_3 = L14_3 * L0_3
        L15_3 = 1.0
        L13_3 = L13_3(L14_3, L15_3)
        L14_3 = L7_3.z
        L15_3 = L6_3.z
        L16_3 = L7_3.z
        L15_3 = L15_3 - L16_3
        L15_3 = L15_3 * L13_3
        L12_3 = L14_3 + L15_3
        L14_3 = L1_1
        if L14_3 then
          L14_3 = DrawMarker
          L15_3 = 28
          L16_3 = L6_3.x
          L17_3 = L6_3.y
          L18_3 = L6_3.z
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 0.0
          L22_3 = 0.0
          L23_3 = 0.0
          L24_3 = 0.0
          L25_3 = 0.4
          L26_3 = 0.4
          L27_3 = 0.4
          L28_3 = 0
          L29_3 = 0
          L30_3 = 255
          L31_3 = 255
          L32_3 = false
          L33_3 = false
          L34_3 = 2
          L35_3 = false
          L36_3 = nil
          L37_3 = nil
          L38_3 = false
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3)
        end
      end
      L13_3 = GetEntityRotation
      L14_3 = A1_2
      L15_3 = 2
      L13_3 = L13_3(L14_3, L15_3)
      L14_3 = GetEntityRotation
      L15_3 = A0_2
      L16_3 = 2
      L14_3 = L14_3(L15_3, L16_3)
      L15_3 = nil
      L16_3 = nil
      L17_3 = L13_3.z
      L18_3 = L5_2.z
      L17_3 = L17_3 + L18_3
      L18_3 = nil
      if L1_3 then
        L19_3 = L13_3.x
        L20_3 = L5_2.x
        L15_3 = L19_3 + L20_3
        L19_3 = L13_3.y
        L20_3 = L6_2
        L19_3 = L19_3 * L20_3
        L20_3 = L5_2.y
        L16_3 = L19_3 + L20_3
        L19_3 = math
        L19_3 = L19_3.min
        L20_3 = L8_2
        L21_3 = L18_2
        L20_3 = L20_3 * L21_3
        L20_3 = L20_3 * L0_3
        L21_3 = 1.0
        L19_3 = L19_3(L20_3, L21_3)
        L18_3 = L19_3
      else
        L19_3 = L13_3.x
        L20_3 = L10_2
        L19_3 = L19_3 * L20_3
        L20_3 = L5_2.x
        L15_3 = L19_3 + L20_3
        L19_3 = L13_3.y
        L20_3 = L10_2
        L19_3 = L19_3 * L20_3
        L20_3 = L5_2.y
        L16_3 = L19_3 + L20_3
        L19_3 = math
        L19_3 = L19_3.min
        L20_3 = L11_2
        L21_3 = L18_2
        L20_3 = L20_3 * L21_3
        L20_3 = L20_3 * L0_3
        L21_3 = 1.0
        L19_3 = L19_3(L20_3, L21_3)
        L18_3 = L19_3
      end
      L19_3 = L14_3.x
      L19_3 = L15_3 - L19_3
      L19_3 = L19_3 + 180.0
      L19_3 = L19_3 % 360.0
      L19_3 = L19_3 - 180.0
      L20_3 = L14_3.y
      L20_3 = L16_3 - L20_3
      L20_3 = L20_3 + 180.0
      L20_3 = L20_3 % 360.0
      L20_3 = L20_3 - 180.0
      L21_3 = L14_3.z
      L21_3 = L17_3 - L21_3
      L21_3 = L21_3 + 180.0
      L21_3 = L21_3 % 360.0
      L21_3 = L21_3 - 180.0
      L22_3 = L14_3.x
      L23_3 = L19_3 * L18_3
      L22_3 = L22_3 + L23_3
      L23_3 = L14_3.y
      L24_3 = L20_3 * L18_3
      L23_3 = L23_3 + L24_3
      L24_3 = L14_3.z
      L25_3 = L21_3 * L18_3
      L24_3 = L24_3 + L25_3
      L25_3 = SetEntityNoCollisionEntity
      L26_3 = A0_2
      L27_3 = A1_2
      L28_3 = true
      L25_3(L26_3, L27_3, L28_3)
      L25_3 = SetEntityNoCollisionEntity
      L26_3 = A1_2
      L27_3 = A0_2
      L28_3 = true
      L25_3(L26_3, L27_3, L28_3)
      L25_3 = SetEntityCoordsNoOffset
      L26_3 = A0_2
      L27_3 = L10_3
      L28_3 = L11_3
      L29_3 = L12_3
      L30_3 = false
      L31_3 = false
      L32_3 = false
      L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3)
      L25_3 = SetEntityRotation
      L26_3 = A0_2
      L27_3 = L22_3
      L28_3 = L23_3
      L29_3 = L24_3
      L30_3 = 2
      L31_3 = true
      L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
      L25_3 = SetEntityVelocity
      L26_3 = A0_2
      L27_3 = 0.0
      L28_3 = 0.0
      L29_3 = 0.0
      L25_3(L26_3, L27_3, L28_3, L29_3)
      L25_3 = SetEntityAngularVelocity
      L26_3 = A0_2
      L27_3 = 0.0
      L28_3 = 0.0
      L29_3 = 0.0
      L25_3(L26_3, L27_3, L28_3, L29_3)
      L25_3 = SetEntityAlpha
      L26_3 = A0_2
      L27_3 = 250
      L25_3(L26_3, L27_3)
    end
    L0_3 = false
    L16_1 = L0_3
  end
  L19_2(L20_2)
end
function L18_1(A0_2)
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
L19_1 = 2.0
L20_1 = 20.0
L21_1 = 1.0
L22_1 = 1000
L23_1 = 8.0
L24_1 = 1.5
L25_1 = math
L25_1 = L25_1.cos
L26_1 = math
L26_1 = L26_1.sin
L27_1 = math
L27_1 = L27_1.min
L28_1 = math
L28_1 = L28_1.max
L29_1 = table
L29_1 = L29_1.insert
L30_1 = math
L30_1 = L30_1.pi
L30_1 = L30_1 / 180.0
cam = nil
L31_1 = nil
L32_1 = vector3
L33_1 = 0
L34_1 = 0
L35_1 = 0
L32_1 = L32_1(L33_1, L34_1, L35_1)
L33_1 = nil
L34_1 = L19_1
L35_1 = L20_1
L36_1 = L34_1 + L35_1
L36_1 = L36_1 * 0.5
L37_1 = 0.0
L38_1 = 0.0
L39_1 = {}
L40_1 = 14
L41_1 = 15
L42_1 = 16
L43_1 = 17
L44_1 = 81
L45_1 = 82
L46_1 = 99
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L39_1[7] = L46_1
function L40_1(A0_2, A1_2, A2_2)
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
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsInputDisabled
  L1_2 = 0
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = L23_1
    if L0_2 then
      goto lbl_10
    end
  end
  L0_2 = L24_1
  ::lbl_10::
  L1_2 = L38_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 - L2_2
  L38_1 = L1_2
  L1_2 = L37_1
  L2_2 = GetDisabledControlUnboundNormal
  L3_2 = 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 * L0_2
  L1_2 = L1_2 + L2_2
  L37_1 = L1_2
  L1_2 = L28_1
  L2_2 = L27_1
  L3_2 = L37_1
  L4_2 = 89.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = -89.0
  L1_2 = L1_2(L2_2, L3_2)
  L37_1 = L1_2
  L1_2 = L36_1
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 16
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 17
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  L3_2 = L21_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L36_1 = L1_2
  L1_2 = L28_1
  L2_2 = L27_1
  L3_2 = L36_1
  L4_2 = L35_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L18_1
  L4_2 = L34_1
  L4_2 = L4_2 / 2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L36_1 = L1_2
  L1_2 = L31_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L31_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L31_1
      L1_2 = L1_2(L2_2)
      L2_2 = L33_1
      L1_2 = L1_2 + L2_2
      L32_1 = L1_2
    end
  end
  L1_2 = L25_1
  L2_2 = L37_1
  L3_2 = L30_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L25_1
  L4_2 = L38_1
  L5_2 = L30_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L1_2
  L4_2 = L26_1
  L5_2 = L38_1
  L6_2 = L30_1
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L1_2
  L5_2 = L26_1
  L6_2 = L37_1
  L7_2 = L30_1
  L6_2 = L6_2 * L7_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = L36_1
  L2_2 = L2_2 * L3_2
  L3_2 = L32_1
  L3_2 = L3_2 + L2_2
  L4_2 = L31_1
  if not L4_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
  end
  L5_2 = GetCamMatrix
  L6_2 = cam
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = L5_2 * 0.125
  L9_2 = L7_2 * 0.07
  L10_2 = {}
  L11_2 = {}
  L12_2 = L40_1
  L13_2 = L32_1
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
  L12_2 = L40_1
  L13_2 = L32_1
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
  L12_2 = L40_1
  L13_2 = L32_1
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
  L12_2 = L40_1
  L13_2 = L32_1
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
  L11_2 = L36_1
  L12_2 = 1
  L13_2 = #L10_2
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = L10_2[L15_2]
    L16_2 = L16_2[1]
    if L16_2 then
      L16_2 = L32_1
      L17_2 = L10_2[L15_2]
      L17_2 = L17_2[2]
      L16_2 = L16_2 - L17_2
      L16_2 = #L16_2
      if L11_2 > L16_2 then
        L11_2 = L16_2
      end
    end
  end
  L12_2 = L36_1
  L12_2 = L11_2 / L12_2
  L2_2 = L2_2 * L12_2
  L12_2 = L32_1
  L12_2 = L12_2 + L2_2
  return L12_2
end
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = ipairs
  L1_2 = L39_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L0_2 = L41_1
  L0_2 = L0_2()
  L1_2 = GetWaterHeight
  L2_2 = L0_2.x
  L3_2 = L0_2.y
  L4_2 = L0_2.z
  L4_2 = L4_2 + 5.0
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L3_2 = L2_2 + 0.15
    L4_2 = L0_2.z
    if L3_2 > L4_2 then
      L4_2 = vector3
      L5_2 = L0_2.x
      L6_2 = L0_2.y
      L7_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L0_2 = L4_2
    end
  end
  L3_2 = SetCamCoord
  L4_2 = cam
  L5_2 = L0_2.x
  L6_2 = L0_2.y
  L7_2 = L0_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = PointCamAtCoord
  L4_2 = cam
  L5_2 = L32_1.x
  L6_2 = L32_1.y
  L7_2 = L32_1.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetFocusPosAndVel
  L4_2 = L32_1.x
  L5_2 = L32_1.y
  L6_2 = L32_1.z
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L43_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = cam
  if L5_2 then
    return
  end
  L5_2 = ClearFocus
  L5_2()
  if A1_2 then
    L31_1 = A1_2
    L33_1 = A0_2
    L5_2 = GetEntityCoords
    L6_2 = L31_1
    L5_2 = L5_2(L6_2)
    L6_2 = L33_1
    L5_2 = L5_2 + L6_2
    L32_1 = L5_2
  else
    L32_1 = A0_2
  end
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = L19_1
  end
  L34_1 = L5_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = L20_1
  end
  L35_1 = L5_2
  L5_2 = L34_1
  L6_2 = L35_1
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 * 0.5
  L36_1 = L5_2
  L5_2 = GetGameplayCamRot
  L6_2 = 2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.x
  L6_2 = -L6_2
  L37_1 = L6_2
  L6_2 = L5_2.z
  L6_2 = L6_2 - 90
  L38_1 = L6_2
  L6_2 = CreateCamWithParams
  L7_2 = "DEFAULT_SCRIPTED_CAMERA"
  L8_2 = L32_1.x
  L9_2 = L32_1.y
  L10_2 = L32_1.z
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = GetGameplayCamFov
  L14_2 = L14_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  cam = L6_2
  L6_2 = SetCamActive
  L7_2 = cam
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = RenderScriptCams
  L7_2 = true
  L8_2 = true
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = L22_1
  end
  L10_2 = true
  L11_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = SetCamNearClip
  L7_2 = cam
  L8_2 = 0.05
  L6_2(L7_2, L8_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3
    while true do
      L0_3 = cam
      if nil == L0_3 then
        break
      end
      L0_3 = L42_1
      L0_3()
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L6_2(L7_2)
end
StartOrbitCam = L43_1
L43_1 = exports
L44_1 = "StartOrbitCam"
L45_1 = StartOrbitCam
L43_1(L44_1, L45_1)
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = cam
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
    L4_2 = L22_1
  end
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = cam
  L3_2 = false
  L1_2(L2_2, L3_2)
  cam = nil
  L1_2 = nil
  L31_1 = L1_2
end
EndOrbitCam = L43_1
L43_1 = exports
L44_1 = "EndOrbitCam"
L45_1 = EndOrbitCam
L43_1(L44_1, L45_1)
function L43_1()
  local L0_2, L1_2
  L0_2 = cam
  L0_2 = nil ~= L0_2
  return L0_2
end
IsOrbitCamActive = L43_1
L43_1 = exports
L44_1 = "IsOrbitCamActive"
L45_1 = IsOrbitCamActive
L43_1(L44_1, L45_1)
function L43_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L31_1
  end
  L1_2 = A0_2 == L1_2
  return L1_2
end
IsEntityBeingTracked = L43_1
L43_1 = exports
L44_1 = "IsEntityBeingTracked"
L45_1 = IsEntityBeingTracked
L43_1(L44_1, L45_1)
function L43_1()
  local L0_2, L1_2
  L0_2 = L31_1
  return L0_2
end
GetTrackedEntity = L43_1
L43_1 = exports
L44_1 = "GetTrackedEntity"
L45_1 = GetTrackedEntity
L43_1(L44_1, L45_1)
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = A0_2
  L6_2 = "|"
  L7_2 = "~"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2 = L4_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = A1_2
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L2_3 = 5000
    L3_3 = 0.0
    L4_3 = 0.003
    if nil == L0_3 then
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L0_3 = L5_3
      L5_3 = Wait
      L6_3 = 25
      L5_3(L6_3)
    end
    while true do
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
      L5_3 = DoesEntityExist
      L6_3 = L0_3
      L5_3 = L5_3(L6_3)
      if L5_3 then
        L5_3 = IsPedFatallyInjured
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        if not L5_3 then
          goto lbl_29
        end
      end
      do return end
      ::lbl_29::
      L5_3 = GetGameTimer
      L5_3 = L5_3()
      L6_3 = L5_3 - L1_3
      if L2_3 <= L6_3 then
        break
      end
      L7_3 = L6_3 / L2_3
      L3_3 = L7_3 * 0.6
      L8_3 = GetEntityCoords
      L9_3 = L0_3
      L8_3 = L8_3(L9_3)
      L9_3 = A2_2
      if nil ~= L9_3 then
        L8_3 = A2_2
      end
      L9_3 = DrawText3DBoat
      L10_3 = L8_3.x
      L11_3 = L8_3.y
      L12_3 = L8_3.z
      L12_3 = L12_3 + L3_3
      L13_3 = A0_2
      L14_3 = A3_2
      if not L14_3 then
        L14_3 = 0.33
      end
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
    end
  end
  L4_2(L5_2)
end
testo3d = L43_1
L43_1 = {}
remiObj = L43_1
spawnOAR = true
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = spawnOAR
  if not L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = remiObj
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = SetEntityAsMissionEntity
      L8_2 = L6_2
      L9_2 = true
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L1_2 = {}
  remiObj = L1_2
  L1_2 = BoatModelList
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.oars
    if L2_2 then
      L2_2 = L1_2.oars
      L2_2 = #L2_2
      if 0 ~= L2_2 then
        goto lbl_40
      end
    end
  end
  do return end
  ::lbl_40::
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L1_2.oars
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2[8]
    if not L10_2 then
      L10_2 = "remo"
    end
    L11_2 = GetHashKey
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = RequestModel
    L13_2 = L11_2
    L12_2(L13_2)
    while true do
      L12_2 = HasModelLoaded
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        break
      end
      L12_2 = Wait
      L13_2 = 0
      L12_2(L13_2)
    end
    L12_2 = CreateObject
    L13_2 = L11_2
    L14_2 = L3_2.x
    L15_2 = L3_2.y
    L16_2 = L3_2.z
    L17_2 = true
    L18_2 = true
    L19_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L13_2 = AttachEntityToEntity
    L14_2 = L12_2
    L15_2 = L2_2
    L16_2 = GetPedBoneIndex
    L17_2 = L2_2
    L18_2 = L9_2[7]
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = L9_2[1]
    L18_2 = L9_2[2]
    L19_2 = L9_2[3]
    L20_2 = L9_2[4]
    L21_2 = L9_2[5]
    L22_2 = L9_2[6]
    L23_2 = true
    L24_2 = true
    L25_2 = false
    L26_2 = true
    L27_2 = 1
    L28_2 = true
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L13_2 = remiObj
    L14_2 = remiObj
    L14_2 = #L14_2
    L14_2 = L14_2 + 1
    L13_2[L14_2] = L12_2
    L13_2 = SetModelAsNoLongerNeeded
    L14_2 = L11_2
    L13_2(L14_2)
  end
  L4_2 = TraceRemi
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = remiObj
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2(L6_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
end
setupRemi = L43_1
function L43_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
    L10_2 = A2_2 or L10_2
    if not A2_2 then
      L10_2 = -1
    end
    L11_2 = A3_2 or L11_2
    if not A3_2 then
      L11_2 = 1
    end
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = A1_2
  L5_2 = GetGamePool
  L6_2 = "CObject"
  L5_2 = L5_2(L6_2)
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetEntityModel
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = GetHashKey
    L14_2 = L0_1
    L13_2 = L13_2(L14_2)
    if L12_2 == L13_2 then
      L12_2 = GetEntityCoords
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L12_2 = L12_2 - L2_2
      L12_2 = #L12_2
      if L4_2 > L12_2 then
        L3_2 = L11_2
        L4_2 = L12_2
      end
    end
  end
  return L3_2
end
GetClosestSalvagente = L44_1
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = mioSalvagente
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = mioSalvagente
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = ApplyForceToEntityCenterOfMass
      L1_2 = mioSalvagente
      L2_2 = 1
      L3_2 = 0.0
      L4_2 = 0.0
      L5_2 = -0.15
      L6_2 = true
      L7_2 = true
      L8_2 = false
      L9_2 = true
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L0_2 = GetEntityVelocity
      L1_2 = mioSalvagente
      L0_2 = L0_2(L1_2)
      L1_2 = SetEntityVelocity
      L2_2 = mioSalvagente
      L3_2 = L0_2.x
      L4_2 = L0_2.y
      L5_2 = L0_2.z
      L5_2 = L5_2 - 0.15
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
SpingiSalvagente = L44_1
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetEntityAlpha
  L2_2 = mioSalvagente
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityVisible
  L2_2 = mioSalvagente
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityVelocity
  L2_2 = mioSalvagente
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityAngularVelocity
  L2_2 = mioSalvagente
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetCanClimbOnEntity
  L2_2 = mioSalvagente
  L3_2 = false
  L1_2(L2_2, L3_2)
end
startComposeBoat = L44_1
function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = CreateObject
  L4_2 = -2006939605
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L8_2 = true
  L9_2 = true
  L10_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  mioSalvagente2 = L3_2
  L3_2 = 0
  while true do
    L4_2 = DoesEntityExist
    L5_2 = mioSalvagente2
    L4_2 = L4_2(L5_2)
    if not (not L4_2 and L3_2 < 100) then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L3_2 = L3_2 + 1
  end
  if L3_2 >= 100 then
    L4_2 = ClearInternalBoat
    L4_2()
    L4_2 = print
    L5_2 = "Custom boat not exist A!"
    L4_2(L5_2)
    return
  end
  L4_2 = SetEntityAlpha
  L5_2 = mioSalvagente2
  L6_2 = 0
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityVisible
  L5_2 = mioSalvagente2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = RequestModelStriano
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = CreateObject
  L5_2 = A2_2
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = true
  L10_2 = true
  L11_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  mioSalvagente3 = L4_2
  L4_2 = 0
  while true do
    L5_2 = DoesEntityExist
    L6_2 = mioSalvagente3
    L5_2 = L5_2(L6_2)
    if not (not L5_2 and L4_2 < 100) then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L4_2 = L4_2 + 1
  end
  if L4_2 >= 100 then
    L5_2 = print
    L6_2 = "MODEL BOAT [code 3] NOT EXIST!"
    L5_2(L6_2)
    return
  end
  L5_2 = BoatModelList
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.offset_boat
  if not L5_2 then
    L5_2 = {}
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.0
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
  end
  L6_2 = BoatModelList
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.offset_boat_rot
  if not L6_2 then
    L6_2 = {}
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.0
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
  end
  L7_2 = AttachEntityToEntity
  L8_2 = mioSalvagente3
  L9_2 = mioSalvagente2
  L10_2 = 0
  L11_2 = L5_2[1]
  L12_2 = L5_2[2]
  L13_2 = L5_2[3]
  L14_2 = L6_2[1]
  L15_2 = L6_2[2]
  L16_2 = L6_2[3]
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L20_2 = true
  L21_2 = 2
  L22_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = SetEntityCollision
  L8_2 = mioSalvagente3
  L9_2 = true
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
end
SpawnCustomBoat = L44_1
L44_1 = exports
L45_1 = "spawnBoat"
function L46_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityAttachedTo
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    return
  end
  if nil == A1_2 then
    L4_2 = canBoatSpawn
    L4_2 = L4_2()
    if not L4_2 then
      return
    end
  end
  L4_2 = mioSalvagente
  if nil ~= L4_2 then
    L4_2 = DoesEntityExist
    L5_2 = mioSalvagente
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DropFromBoat
      L4_2()
      L4_2 = exports
      L4_2 = L4_2.striano_boat
      L5_2 = L4_2
      L4_2 = L4_2.delBoat
      L4_2(L5_2)
      L4_2 = testo3d
      L5_2 = "Boat deleted."
      L4_2(L5_2)
      return
    end
  end
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = L2_2
  L6_2 = 0.0
  L7_2 = 3.0
  L8_2 = -0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if nil ~= A1_2 then
    L5_2 = GetEntityCoords
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = RequestModelStriano
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = CreateObject
  L6_2 = GetHashKey
  L7_2 = L0_1
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L4_2.z
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  mioSalvagente = L5_2
  L5_2 = 0
  while true do
    L6_2 = DoesEntityExist
    L7_2 = mioSalvagente
    L6_2 = L6_2(L7_2)
    if not (not L6_2 and L5_2 < 100) then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
    L5_2 = L5_2 + 1
  end
  L6_2 = startComposeBoat
  L7_2 = mioSalvagente
  L6_2(L7_2)
  if nil == A1_2 then
    L6_2 = SetEntityHeading
    L7_2 = mioSalvagente
    L8_2 = GetEntityHeading
    L9_2 = L2_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L6_2 = A0_2
  L7_2 = BoatModelList
  L7_2 = L7_2[L6_2]
  L7_2 = L7_2.model
  if nil == L7_2 then
    L8_2 = print
    L9_2 = "Boat ID model you insert not exist: "
    L10_2 = A0_2
    L8_2(L9_2, L10_2)
    L6_2 = 1
  end
  if L5_2 < 100 then
    if nil ~= A1_2 then
      L8_2 = SetEntityHeading
      L9_2 = mioSalvagente
      L10_2 = GetEntityHeading
      L11_2 = A1_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    if nil == A1_2 then
      L8_2 = GetEntityCoords
      L9_2 = mioSalvagente
      L8_2 = L8_2(L9_2)
      L4_2 = L8_2
      L8_2 = RequestModelStriano
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = GetHashKey
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if -2006939605 ~= L8_2 then
        L8_2 = SpawnCustomBoat
        L9_2 = A0_2
        L10_2 = L4_2
        L11_2 = L7_2
        L8_2(L9_2, L10_2, L11_2)
      else
        L8_2 = CreateObject
        L9_2 = GetHashKey
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L10_2 = L4_2.x
        L11_2 = L4_2.y
        L12_2 = L4_2.z
        L13_2 = true
        L14_2 = true
        L15_2 = true
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        mioSalvagente2 = L8_2
        L8_2 = 0
        while true do
          L9_2 = DoesEntityExist
          L10_2 = mioSalvagente2
          L9_2 = L9_2(L10_2)
          if not (not L9_2 and L8_2 < 100) then
            break
          end
          L9_2 = Wait
          L10_2 = 0
          L9_2(L10_2)
          L8_2 = L8_2 + 1
        end
        if L8_2 >= 100 then
          L9_2 = ClearInternalBoat
          L9_2()
          L9_2 = print
          L10_2 = "Custom boat not exist A!"
          L9_2(L10_2)
          return
        end
      end
    else
      L8_2 = GetEntityModel
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      if -2006939605 == L8_2 then
        mioSalvagente2 = A1_2
      else
        L8_2 = SpawnCustomBoat
        L9_2 = A0_2
        L10_2 = L4_2
        L11_2 = L7_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
    L8_2 = mioSalvagente3
    if nil ~= L8_2 then
      L8_2 = SetEntityLodDist
      L9_2 = mioSalvagente3
      L10_2 = 65535
      L8_2(L9_2, L10_2)
      L8_2 = SetEntityAsMissionEntity
      L9_2 = mioSalvagente3
      L8_2(L9_2)
    end
    L8_2 = SetEntityLodDist
    L9_2 = mioSalvagente2
    L10_2 = 65535
    L8_2(L9_2, L10_2)
    L8_2 = SetEntityAsMissionEntity
    L9_2 = mioSalvagente2
    L8_2(L9_2)
    L8_2 = SetEntityVelocity
    L9_2 = mioSalvagente
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 0.0
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = SetEntityAngularVelocity
    L9_2 = mioSalvagente
    L10_2 = 0.0
    L11_2 = 0.0
    L12_2 = 0.0
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L8_2 = SetEntityAsMissionEntity
    L9_2 = mioSalvagente
    L8_2(L9_2)
    L8_2 = DeleteEntity
    L9_2 = mioSalvagente
    L8_2(L9_2)
    mioSalvagente = nil
    L8_2 = print
    L9_2 = "Custom boat not exist B!"
    L8_2(L9_2)
    return
  end
  L8_2 = SetEntityNoCollisionEntity
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = mioSalvagente
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityNoCollisionEntity
  L9_2 = mioSalvagente
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = SetEntityCollision
  L9_2 = mioSalvagente
  L10_2 = false
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  lastBoatF = L8_2
  L8_2 = SetEntityAsMissionEntity
  L9_2 = mioSalvagente
  L8_2(L9_2)
  L8_2 = SitSalvagente
  L9_2 = L6_2
  L8_2(L9_2)
  L8_2 = loopBoat
  L9_2 = L6_2
  L8_2(L9_2)
end
L44_1(L45_1, L46_1)
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = BoatModelList
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.offset_boat_rot
  L2_2 = 0.0
  if nil ~= L1_2 then
    L2_2 = L1_2[3]
  end
  L3_2 = L15_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = StabilizeBoat
  L4_2 = L2_2
  L5_2 = BoatModelList
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.scaler
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityNoCollisionEntity
  L4_2 = ped
  L5_2 = mioSalvagente
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityNoCollisionEntity
  L4_2 = mioSalvagente
  L5_2 = ped
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityCollision
  L4_2 = mioSalvagente
  L5_2 = false
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
LoopBaseBoat = L44_1
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = BoatModelList
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L3_2 = IsControlPressed
  L4_2 = 0
  L5_2 = 32
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = automaticForward
  end
  L4_2 = IsControlPressed
  L5_2 = 0
  L6_2 = 33
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2 or L5_2
  L5_2 = L4_2 or L5_2
  if not L3_2 and not L4_2 then
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 34
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      L5_2 = IsControlPressed
      L6_2 = 0
      L7_2 = 35
      L5_2 = L5_2(L6_2, L7_2)
    end
  end
  L6_2 = GetEntitySpeed
  L7_2 = mioSalvagente
  L6_2 = L6_2(L7_2)
  L7_2 = 0.9
  if L6_2 > L7_2 and L5_2 then
    L6_2 = L2_2.boatAnim
    if L6_2 then
      L7_2 = L6_2.a
      if L7_2 then
        L7_2 = L6_2.b
        if L7_2 then
          goto lbl_51
        end
      end
    end
    do return end
    ::lbl_51::
    L7_2 = HasAnimDictLoaded
    L8_2 = L6_2.a
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = RequestAnimDict
      L8_2 = L6_2.a
      L7_2(L8_2)
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2.a
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = Wait
        L8_2 = 10
        L7_2(L8_2)
      end
    end
    L7_2 = IsEntityPlayingAnim
    L8_2 = L1_2
    L9_2 = L6_2.a
    L10_2 = L6_2.b
    L11_2 = 3
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = TaskPlayAnim
      L8_2 = L1_2
      L9_2 = L6_2.a
      L10_2 = L6_2.b
      L11_2 = 8.0
      L12_2 = -8.0
      L13_2 = -1
      L14_2 = 1
      L15_2 = 1.0
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = Wait
      L8_2 = 0
      L7_2(L8_2)
    end
    if L3_2 then
      L7_2 = SetEntityAnimSpeed
      L8_2 = L1_2
      L9_2 = L6_2.a
      L10_2 = L6_2.b
      L11_2 = -1.5
      L7_2(L8_2, L9_2, L10_2, L11_2)
    elseif L4_2 then
      L7_2 = SetEntityAnimSpeed
      L8_2 = L1_2
      L9_2 = L6_2.a
      L10_2 = L6_2.b
      L11_2 = 1.5
      L7_2(L8_2, L9_2, L10_2, L11_2)
    else
      L7_2 = SetEntityAnimSpeed
      L8_2 = L1_2
      L9_2 = L6_2.a
      L10_2 = L6_2.b
      L11_2 = 1.0
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  else
    L6_2 = L2_2.boatAnimIdle
    if L6_2 then
      L7_2 = L6_2.a
      if L7_2 then
        L7_2 = L6_2.b
        if L7_2 then
          goto lbl_127
        end
      end
    end
    do return end
    ::lbl_127::
    L7_2 = L43_1
    L8_2 = L6_2.a
    L9_2 = L6_2.b
    L10_2 = -1
    L11_2 = 1
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L6_2.a
      L3_3 = L6_2.b
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if L0_3 then
        L0_3 = SetEntityAnimSpeed
        L1_3 = L1_2
        L2_3 = L6_2.a
        L3_3 = L6_2.b
        L4_3 = L6_2.speed
        if not L4_3 then
          L4_3 = 1.0
        end
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
    end
    L7_2(L8_2)
  end
end
animBarca = L44_1
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetEntityMatrix
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L6_2 = vector3
  L7_2 = L5_2.x
  L8_2 = L2_2.x
  L8_2 = L8_2 * A1_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.y
  L9_2 = L2_2.y
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2.z
  L10_2 = L2_2.z
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 + L10_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L2_2.x
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 - L9_2
  L9_2 = L5_2.y
  L10_2 = L2_2.y
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 - L10_2
  L10_2 = L5_2.z
  L11_2 = L2_2.z
  L11_2 = L11_2 * A1_2
  L10_2 = L10_2 - L11_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L9_2 = L7_2
  return L8_2, L9_2
end
GetForwardPositions = L44_1
function L44_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetEntityMatrix
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  L6_2 = vector3
  L7_2 = L5_2.x
  L8_2 = L3_2.x
  L8_2 = L8_2 * A1_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.y
  L9_2 = L3_2.y
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 + L9_2
  L9_2 = L5_2.z
  L10_2 = L3_2.z
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 + L10_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L3_2.x
  L9_2 = L9_2 * A1_2
  L8_2 = L8_2 - L9_2
  L9_2 = L5_2.y
  L10_2 = L3_2.y
  L10_2 = L10_2 * A1_2
  L9_2 = L9_2 - L10_2
  L10_2 = L5_2.z
  L11_2 = L3_2.z
  L11_2 = L11_2 * A1_2
  L10_2 = L10_2 - L11_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L9_2 = L7_2
  return L8_2, L9_2
end
GetSidePositions = L44_1
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = canDropFromBoat
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = DetachEntity
    L2_2 = L0_2
    L3_2 = false
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    automaticForward = false
    cameraGuida = false
    CavalcaOnda = false
    L1_2 = SetEntityRotation
    L2_2 = mioSalvagente2
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = GetEntityHeading
    L6_2 = mioSalvagente2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = SetEntityAngularVelocity
    L2_2 = mioSalvagente2
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityVelocity
    L2_2 = mioSalvagente2
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityAngularVelocity
    L2_2 = mioSalvagente
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityVelocity
    L2_2 = mioSalvagente
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = mioSalvagente2
    if nil ~= L1_2 then
      L1_2 = SetEntityNoCollisionEntity
      L2_2 = L0_2
      L3_2 = mioSalvagente
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
    L1_2 = ipairs
    L2_2 = remiObj
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
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
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    lastBoatF = L1_2
    L1_2 = {}
    remiObj = L1_2
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
    L1_2 = EndOrbitCam
    L1_2()
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ClearPedSecondaryTask
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
DropFromBoat = L44_1
L44_1 = 0
L45_1 = {}
function L46_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 + 180.0
  L3_2 = L3_2 % 360.0
  L3_2 = L3_2 - 180.0
  L4_2 = L3_2 * A2_2
  L4_2 = A0_2 + L4_2
  return L4_2
end
L47_1 = RegisterNetEvent
L48_1 = "striano_obj_sync:update"
function L49_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if A0_2 == L4_2 then
    return
  end
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L5_2 = L45_1
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L6_2 = vector3
    L7_2 = A2_2.x
    L8_2 = A2_2.y
    L9_2 = A2_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.coords = L6_2
    L6_2 = vector3
    L7_2 = A3_2.x
    L8_2 = A3_2.y
    L9_2 = A3_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.rot = L6_2
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L5_2.lastUpdate = L6_2
    return
  end
  L6_2 = FreezeEntityPosition
  L7_2 = L4_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = L45_1
  L7_2 = {}
  L8_2 = vector3
  L9_2 = A2_2.x
  L10_2 = A2_2.y
  L11_2 = A2_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.coords = L8_2
  L8_2 = vector3
  L9_2 = A3_2.x
  L10_2 = A3_2.y
  L11_2 = A3_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.rot = L8_2
  L8_2 = GetGameTimer
  L8_2 = L8_2()
  L7_2.lastUpdate = L8_2
  L6_2[A1_2] = L7_2
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    while true do
      L1_3 = A1_2
      L0_3 = L45_1
      L0_3 = L0_3[L1_3]
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L4_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L1_3 = A1_2
      L0_3 = L45_1
      L0_3 = L0_3[L1_3]
      L1_3 = GetEntityCoords
      L2_3 = L4_2
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityRotation
      L3_3 = L4_2
      L4_3 = 2
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L0_3.coords
      L4_3 = L0_3.rot
      L5_3 = GetFrameTime
      L5_3 = L5_3()
      L6_3 = math
      L6_3 = L6_3.exp
      L7_3 = -18.0 * L5_3
      L6_3 = L6_3(L7_3)
      L7_3 = 1.0
      L6_3 = L7_3 - L6_3
      L7_3 = math
      L7_3 = L7_3.exp
      L8_3 = -22.0 * L5_3
      L7_3 = L7_3(L8_3)
      L8_3 = 1.0
      L7_3 = L8_3 - L7_3
      L8_3 = vector3
      L9_3 = L1_3.x
      L10_3 = L3_3.x
      L11_3 = L1_3.x
      L10_3 = L10_3 - L11_3
      L10_3 = L10_3 * L6_3
      L9_3 = L9_3 + L10_3
      L10_3 = L1_3.y
      L11_3 = L3_3.y
      L12_3 = L1_3.y
      L11_3 = L11_3 - L12_3
      L11_3 = L11_3 * L6_3
      L10_3 = L10_3 + L11_3
      L11_3 = L1_3.z
      L12_3 = L3_3.z
      L13_3 = L1_3.z
      L12_3 = L12_3 - L13_3
      L12_3 = L12_3 * L6_3
      L11_3 = L11_3 + L12_3
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L9_3 = L46_1
      L10_3 = L2_3.x
      L11_3 = L4_3.x
      L12_3 = L7_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      L10_3 = L46_1
      L11_3 = L2_3.y
      L12_3 = L4_3.y
      L13_3 = L7_3
      L10_3 = L10_3(L11_3, L12_3, L13_3)
      L11_3 = L46_1
      L12_3 = L2_3.z
      L13_3 = L4_3.z
      L14_3 = L7_3
      L11_3 = L11_3(L12_3, L13_3, L14_3)
      L12_3 = SetEntityCoordsNoOffset
      L13_3 = L4_2
      L14_3 = L8_3.x
      L15_3 = L8_3.y
      L16_3 = L8_3.z
      L17_3 = false
      L18_3 = false
      L19_3 = false
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      L12_3 = SetEntityRotation
      L13_3 = L4_2
      L14_3 = L9_3
      L15_3 = L10_3
      L16_3 = L11_3
      L17_3 = 2
      L18_3 = true
      L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L12_3 = GetGameTimer
      L12_3 = L12_3()
      L13_3 = L0_3.lastUpdate
      L12_3 = L12_3 - L13_3
      L13_3 = 300
      if L12_3 > L13_3 then
        L12_3 = SetEntityCoordsNoOffset
        L13_3 = L4_2
        L14_3 = L3_3.x
        L15_3 = L3_3.y
        L16_3 = L3_3.z
        L17_3 = false
        L18_3 = false
        L19_3 = false
        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L12_3 = SetEntityRotation
        L13_3 = L4_2
        L14_3 = L4_3.x
        L15_3 = L4_3.y
        L16_3 = L4_3.z
        L17_3 = 2
        L18_3 = true
        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        L13_3 = A1_2
        L12_3 = L45_1
        L12_3[L13_3] = nil
        break
      end
    end
    L1_3 = A1_2
    L0_3 = L45_1
    L0_3[L1_3] = nil
  end
  L6_2(L7_2)
end
L47_1(L48_1, L49_1)
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2
  L1_2 = IsEntityAttachedToEntity
  L2_2 = ped
  L3_2 = mioSalvagente2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = BoatModelList
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.turnForce
  if not L2_2 then
    L2_2 = 0.03
  end
  L3_2 = NetworkGetEntityIsNetworked
  L4_2 = mioSalvagente
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = mioSalvagente
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    L3_2 = L3_2 + 500
    while true do
      L4_2 = NetworkHasControlOfEntity
      L5_2 = mioSalvagente
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
  L3_2 = BoatModelList
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.offset_player
  L4_2 = AttachEntityToEntity
  L5_2 = L1_2
  L6_2 = mioSalvagente2
  L7_2 = 0
  L8_2 = L3_2[1]
  L9_2 = L3_2[2]
  L10_2 = L3_2[3]
  L11_2 = L3_2[4]
  L12_2 = L3_2[5]
  L13_2 = L3_2[6]
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L18_2 = 2
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = 0
  while true do
    L5_2 = IsEntityAttachedToEntity
    L6_2 = L1_2
    L7_2 = mioSalvagente2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L4_2 = L4_2 + 1
  end
  if L4_2 >= 100 then
    L5_2 = print
    L6_2 = "HAY! PED NOT ATTACHED ON BOAT, ERROR?"
    L5_2(L6_2)
    return
  end
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  lastBoatF = L5_2
  L5_2 = L17_1
  L6_2 = mioSalvagente2
  L7_2 = mioSalvagente
  L8_2 = BoatModelList
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2.offset_boat
  L9_2 = BoatModelList
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.offset_boat_rot
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = onPedEnterBoat
  L5_2()
  L5_2 = mioSalvagente3
  if nil ~= L5_2 then
    L5_2 = StartOrbitCam
    L6_2 = vector3
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.9
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = mioSalvagente3
    L5_2(L6_2, L7_2)
  else
    L5_2 = StartOrbitCam
    L6_2 = vector3
    L7_2 = 0.0
    L8_2 = 0.0
    L9_2 = 0.9
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = mioSalvagente2
    L5_2(L6_2, L7_2)
  end
  L5_2 = setupRemi
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = animBarca
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + 1000
  while true do
    L6_2 = IsEntityAttachedToEntity
    L7_2 = L1_2
    L8_2 = mioSalvagente2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = IsPedDeadOrDying
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = IsPedFatallyInjured
      L7_2 = L1_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        goto lbl_147
      end
    end
    L6_2 = DropFromBoat
    L6_2()
    do return end
    ::lbl_147::
    L6_2 = LoopBaseBoat
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = 21
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = 22
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = 24
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = 25
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = 37
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = animBarca
    L7_2 = A0_2
    L6_2(L7_2)
    L6_2 = GetModelDimensions
    L7_2 = GetEntityModel
    L8_2 = mioSalvagente2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2 = L7_2(L8_2)
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2)
    L8_2 = L7_2.y
    L9_2 = L6_2.y
    L8_2 = L8_2 - L9_2
    L9_2 = 4.0
    L10_2 = math
    L10_2 = L10_2.min
    L11_2 = 1.0
    L12_2 = L9_2 / L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = GetEntityCoords
    L12_2 = mioSalvagente
    L11_2 = L11_2(L12_2)
    L12_2 = BoatModelList
    L12_2 = L12_2[A0_2]
    L13_2 = L12_2.boatSpeed
    if not L13_2 then
      L13_2 = 0.15
    end
    L14_2 = BoatBaseSpeedMultiplier
    if not L14_2 then
      L14_2 = 1.0
    end
    L15_2 = L13_2 * L14_2
    L16_2 = GetEntityRotation
    L17_2 = mioSalvagente
    L18_2 = 2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = L16_2.x
    L18_2 = 180.0
    if L17_2 > L18_2 then
      L17_2 = L17_2 - 360.0
    end
    L18_2 = 3.0
    L19_2 = 7.0
    L20_2 = 0.2
    L21_2 = 2.0
    L22_2 = 5.0
    L23_2 = 1.15
    L24_2 = -L17_2
    L25_2 = 0.0
    if L22_2 <= L24_2 then
      L26_2 = IsControlPressed
      L27_2 = 0
      L28_2 = 33
      L26_2 = L26_2(L27_2, L28_2)
      if not L26_2 then
        L26_2 = L24_2 - L18_2
        L27_2 = L19_2 - L18_2
        L26_2 = L26_2 / L27_2
        L27_2 = math
        L27_2 = L27_2.max
        L28_2 = 0.0
        L29_2 = math
        L29_2 = L29_2.min
        L30_2 = L26_2
        L31_2 = 1.0
        L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2 = L29_2(L30_2, L31_2)
        L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2)
        L26_2 = L27_2
        L26_2 = L26_2 ^ L21_2
        L25_2 = L26_2 * L20_2
        L27_2 = IsControlPressed
        L28_2 = 0
        L29_2 = 32
        L27_2 = L27_2(L28_2, L29_2)
        if L27_2 then
          L25_2 = L25_2 * L23_2
        end
      end
    end
    L26_2 = 1.0 + L25_2
    L15_2 = L15_2 * L26_2
    L26_2 = L1_1
    if L26_2 then
      L26_2 = DrawText3DBoat
      L27_2 = L11_2.x
      L28_2 = L11_2.y
      L29_2 = L11_2.z
      L29_2 = L29_2 + 3.2
      L30_2 = L24_2
      L26_2(L27_2, L28_2, L29_2, L30_2)
    end
    L26_2 = L15_2
    L27_2 = L15_2 * 20.0
    L28_2 = GetEntityForwardVector
    L29_2 = mioSalvagente
    L28_2 = L28_2(L29_2)
    L29_2 = GetEntityVelocity
    L30_2 = mioSalvagente
    L29_2 = L29_2(L30_2)
    L30_2 = L29_2.x
    L31_2 = L28_2.x
    L30_2 = L30_2 * L31_2
    L31_2 = L29_2.y
    L32_2 = L28_2.y
    L31_2 = L31_2 * L32_2
    L30_2 = L30_2 + L31_2
    L31_2 = 0.0
    L32_2 = -1.3
    L33_2 = L1_1
    if L33_2 then
      if L25_2 > 0.0 then
        L33_2 = DrawMarker
        L34_2 = 28
        L35_2 = L11_2.x
        L36_2 = L11_2.y
        L37_2 = L11_2.z
        L37_2 = L37_2 + 2.5
        L38_2 = 0.0
        L39_2 = 0.0
        L40_2 = 0.0
        L41_2 = 0.0
        L42_2 = 0.0
        L43_2 = 0.0
        L44_2 = 0.8
        L45_2 = 0.8
        L46_2 = 0.8
        L47_2 = 0
        L48_2 = 255
        L49_2 = 0
        L50_2 = 255
        L51_2 = false
        L52_2 = false
        L53_2 = 2
        L54_2 = false
        L55_2 = nil
        L56_2 = nil
        L57_2 = false
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2)
        L33_2 = DrawText3DBoat
        L34_2 = L11_2.x
        L35_2 = L11_2.y
        L36_2 = L11_2.z
        L36_2 = L36_2 + 3.2
        L37_2 = "SURF %.1f%% | PITCH %.1f"
        L38_2 = L37_2
        L37_2 = L37_2.format
        L39_2 = L25_2 * 100.0
        L40_2 = L17_2
        L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2 = L37_2(L38_2, L39_2, L40_2)
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2)
      else
        L33_2 = DrawMarker
        L34_2 = 28
        L35_2 = L11_2.x
        L36_2 = L11_2.y
        L37_2 = L11_2.z
        L37_2 = L37_2 + 2.5
        L38_2 = 0.0
        L39_2 = 0.0
        L40_2 = 0.0
        L41_2 = 0.0
        L42_2 = 0.0
        L43_2 = 0.0
        L44_2 = 0.4
        L45_2 = 0.4
        L46_2 = 0.4
        L47_2 = 255
        L48_2 = 0
        L49_2 = 0
        L50_2 = 255
        L51_2 = false
        L52_2 = false
        L53_2 = 2
        L54_2 = false
        L55_2 = nil
        L56_2 = nil
        L57_2 = false
        L33_2(L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2)
      end
    end
    L33_2 = BoatModelList
    L33_2 = L33_2[A0_2]
    L33_2 = L33_2.downhill
    if nil ~= L33_2 then
      L33_2 = BoatModelList
      L33_2 = L33_2[A0_2]
      L33_2 = L33_2.downhill
      if false == L33_2 then
    end
    elseif L25_2 > 0.0 then
      CavalcaOnda = true
      L33_2 = TraceEntity
      L34_2 = L1_2
      L33_2(L34_2)
    else
      CavalcaOnda = false
    end
    L33_2 = L7_1
    if not L33_2 then
      L33_2 = L8_1
      if not L33_2 then
        L33_2 = L9_1
      end
    end
    L34_2 = L10_1
    if not L34_2 then
      L34_2 = L11_1
      if not L34_2 then
        L34_2 = L12_1
      end
    end
    if L33_2 and L30_2 > 0.0 then
      L35_2 = vector3
      L36_2 = L29_2.x
      L37_2 = L28_2.x
      L37_2 = L37_2 * L30_2
      L36_2 = L36_2 - L37_2
      L37_2 = L29_2.y
      L38_2 = L28_2.y
      L38_2 = L38_2 * L30_2
      L37_2 = L37_2 - L38_2
      L38_2 = L29_2.z
      L35_2 = L35_2(L36_2, L37_2, L38_2)
      L29_2 = L35_2
      L35_2 = SetEntityVelocity
      L36_2 = mioSalvagente
      L37_2 = L29_2.x
      L38_2 = L29_2.y
      L39_2 = L29_2.z
      L35_2(L36_2, L37_2, L38_2, L39_2)
      L30_2 = 0.0
      L35_2 = automaticForward
      if L35_2 then
        automaticForward = false
      end
    elseif L34_2 and L30_2 < 0.0 then
      L35_2 = vector3
      L36_2 = L29_2.x
      L37_2 = L28_2.x
      L37_2 = L37_2 * L30_2
      L36_2 = L36_2 - L37_2
      L37_2 = L29_2.y
      L38_2 = L28_2.y
      L38_2 = L38_2 * L30_2
      L37_2 = L37_2 - L38_2
      L38_2 = L29_2.z
      L35_2 = L35_2(L36_2, L37_2, L38_2)
      L29_2 = L35_2
      L35_2 = SetEntityVelocity
      L36_2 = mioSalvagente
      L37_2 = L29_2.x
      L38_2 = L29_2.y
      L39_2 = L29_2.z
      L35_2(L36_2, L37_2, L38_2, L39_2)
      L30_2 = 0.0
    end
    L35_2 = IsControlPressed
    L36_2 = 0
    L37_2 = 32
    L35_2 = L35_2(L36_2, L37_2)
    if not L35_2 then
      L35_2 = automaticForward
      if not L35_2 then
        L35_2 = CavalcaOnda
      end
    end
    if L35_2 and not L33_2 then
      L35_2 = IsControlPressed
      L36_2 = 0
      L37_2 = 33
      L35_2 = L35_2(L36_2, L37_2)
      if not L35_2 then
        if L27_2 > L30_2 then
          L35_2 = ApplyForceToEntity
          L36_2 = mioSalvagente
          L37_2 = 1
          L38_2 = 0.0
          L39_2 = L26_2
          L40_2 = 0.0
          L41_2 = 0.0
          L42_2 = L31_2
          L43_2 = L32_2
          L44_2 = 0
          L45_2 = true
          L46_2 = true
          L47_2 = true
          L48_2 = false
          L49_2 = true
          L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2)
        end
    end
    else
      L35_2 = IsControlPressed
      L36_2 = 0
      L37_2 = 33
      L35_2 = L35_2(L36_2, L37_2)
      if L35_2 and not L34_2 then
        L35_2 = -L27_2
        L35_2 = L35_2 / 2
        if L30_2 > L35_2 then
          L35_2 = ApplyForceToEntity
          L36_2 = mioSalvagente
          L37_2 = 1
          L38_2 = 0.0
          L39_2 = -L26_2
          L39_2 = L39_2 * 0.5
          L40_2 = 0.0
          L41_2 = 0.0
          L42_2 = L31_2
          L43_2 = L32_2
          L44_2 = 0
          L45_2 = true
          L46_2 = true
          L47_2 = true
          L48_2 = false
          L49_2 = true
          L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2)
        end
      end
    end
    L35_2 = IsControlJustPressed
    L36_2 = 0
    L37_2 = 45
    L35_2 = L35_2(L36_2, L37_2)
    if not L35_2 then
      L35_2 = IsDisabledControlJustPressed
      L36_2 = 0
      L37_2 = 45
      L35_2 = L35_2(L36_2, L37_2)
      if not L35_2 then
        goto lbl_551
      end
    end
    L35_2 = editorAtt
    if nil == L35_2 then
      L35_2 = giveItemFunc
      L35_2()
    end
    ::lbl_551::
    L35_2 = GetGameTimer
    L35_2 = L35_2()
    L36_2 = L44_1
    if L35_2 >= L36_2 then
      L36_2 = L35_2 + 75
      L44_1 = L36_2
      L36_2 = {}
      L37_2 = mioSalvagente
      L38_2 = mioSalvagente2
      L39_2 = mioSalvagente3
      L36_2[1] = L37_2
      L36_2[2] = L38_2
      L36_2[3] = L39_2
      L37_2 = ipairs
      L38_2 = L36_2
      L37_2, L38_2, L39_2, L40_2 = L37_2(L38_2)
      for L41_2, L42_2 in L37_2, L38_2, L39_2, L40_2 do
        if L42_2 then
          L43_2 = DoesEntityExist
          L44_2 = L42_2
          L43_2 = L43_2(L44_2)
          if L43_2 then
            L43_2 = NetworkGetEntityIsNetworked
            L44_2 = L42_2
            L43_2 = L43_2(L44_2)
            if L43_2 then
              L43_2 = ObjToNet
              L44_2 = L42_2
              L43_2 = L43_2(L44_2)
              L44_2 = GetEntityCoords
              L45_2 = L42_2
              L44_2 = L44_2(L45_2)
              L45_2 = GetEntityRotation
              L46_2 = L42_2
              L47_2 = 2
              L45_2 = L45_2(L46_2, L47_2)
              L46_2 = TriggerServerEvent
              L47_2 = "striano_obj_sync:update"
              L48_2 = L43_2
              L49_2 = {}
              L50_2 = L44_2.x
              L49_2.x = L50_2
              L50_2 = L44_2.y
              L49_2.y = L50_2
              L50_2 = L44_2.z
              L49_2.z = L50_2
              L50_2 = {}
              L51_2 = L45_2.x
              L50_2.x = L51_2
              L51_2 = L45_2.y
              L50_2.y = L51_2
              L51_2 = L45_2.z
              L50_2.z = L51_2
              L46_2(L47_2, L48_2, L49_2, L50_2)
            end
          end
        end
      end
    end
    L36_2 = IsControlPressed
    L37_2 = 0
    L38_2 = 32
    L36_2 = L36_2(L37_2, L38_2)
    if not L36_2 then
      L36_2 = IsControlPressed
      L37_2 = 0
      L38_2 = 33
      L36_2 = L36_2(L37_2, L38_2)
      if not L36_2 then
        L36_2 = automaticForward
        if not L36_2 then
          L36_2 = CavalcaOnda
          if not L36_2 then
            goto lbl_886
          end
        end
      end
    end
    L36_2 = L7_1
    if not L36_2 then
      L36_2 = L8_1
      if not L36_2 then
        L36_2 = L9_1
      end
    end
    if not L36_2 then
      L37_2 = IsControlPressed
      L38_2 = 0
      L39_2 = 33
      L37_2 = L37_2(L38_2, L39_2)
      if L37_2 then
        L37_2 = automaticForward
        if L37_2 then
          automaticForward = false
        end
      end
      L37_2 = cameraGuida
      if L37_2 then
        L37_2 = GetCamRot
        L38_2 = cam
        L39_2 = 2
        L37_2 = L37_2(L38_2, L39_2)
        L38_2 = L37_2.z
        L39_2 = GetEntityHeading
        L40_2 = mioSalvagente
        L39_2 = L39_2(L40_2)
        L40_2 = L38_2 - L39_2
        L40_2 = L40_2 + 540.0
        L40_2 = L40_2 % 360.0
        L40_2 = L40_2 - 180.0
        L41_2 = math
        L41_2 = L41_2.min
        L42_2 = math
        L42_2 = L42_2.abs
        L43_2 = L40_2
        L42_2 = L42_2(L43_2)
        L42_2 = L42_2 / 20.0
        L43_2 = 1.0
        L41_2 = L41_2(L42_2, L43_2)
        L42_2 = L2_2 * L41_2
        L42_2 = L42_2 * L10_2
        L43_2 = math
        L43_2 = L43_2.abs
        L44_2 = L40_2
        L43_2 = L43_2(L44_2)
        if L43_2 > 1.0 then
          if L40_2 > 0 then
            L43_2 = -1.0
            if L43_2 then
              goto lbl_696
            end
          end
          L43_2 = 1.0
          ::lbl_696::
          L44_2 = L7_1
          L44_2 = L12_1
          L44_2 = not L44_2 and L44_2
          L45_2 = L9_1
          L45_2 = L10_1
          L45_2 = not L45_2 and L45_2
          L46_2 = L44_2 or L46_2
          L46_2 = L43_2 > 0.0 and L44_2 or L43_2 < 0.0 and L46_2
          if L46_2 then
            L42_2 = L42_2 * L43_2
            L47_2 = ApplyForceToEntity
            L48_2 = mioSalvagente
            L49_2 = 1
            L50_2 = L42_2
            L51_2 = 0.0
            L52_2 = 0.0
            L53_2 = 0.0
            L54_2 = 1.2
            L55_2 = 0.0
            L56_2 = 0
            L57_2 = true
            L58_2 = true
            L59_2 = true
            L60_2 = false
            L61_2 = true
            L47_2(L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2)
            L47_2 = ApplyForceToEntity
            L48_2 = mioSalvagente
            L49_2 = 1
            L50_2 = -L42_2
            L51_2 = 0.0
            L52_2 = 0.0
            L53_2 = 0.0
            L54_2 = -1.2
            L55_2 = 0.0
            L56_2 = 0
            L57_2 = true
            L58_2 = true
            L59_2 = true
            L60_2 = false
            L61_2 = true
            L47_2(L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2)
          end
        end
      end
    end
    L37_2 = NetworkGetEntityIsNetworked
    L38_2 = mioSalvagente
    L37_2 = L37_2(L38_2)
    if L37_2 then
      if L5_2 <= L35_2 then
        L5_2 = L35_2 + 3000
        L37_2 = TriggerServerEvent
        L38_2 = "PlayEffectEnt"
        L39_2 = {}
        L39_2.a = "core"
        L39_2.b = "ent_dst_gen_water_spray"
        L40_2 = ObjToNet
        L41_2 = mioSalvagente
        L40_2 = L40_2(L41_2)
        L39_2.ent = L40_2
        L39_2.s = 0.3
        L37_2(L38_2, L39_2)
        L37_2 = TriggerServerEvent
        L38_2 = "PlayEffectEnt"
        L39_2 = {}
        L39_2.a = "scr_familyscenem"
        L39_2.b = "scr_pts_gardner_watering"
        L40_2 = ObjToNet
        L41_2 = mioSalvagente
        L40_2 = L40_2(L41_2)
        L39_2.ent = L40_2
        L39_2.s = 0.1
        L37_2(L38_2, L39_2)
        L37_2 = GetSidePositions
        L38_2 = mioSalvagente
        L39_2 = 2.0
        L37_2, L38_2 = L37_2(L38_2, L39_2)
        L39_2 = TriggerServerEvent
        L40_2 = "PlayEffectServer"
        L41_2 = {}
        L41_2.a = "veh_avenger"
        L41_2.b = "veh_xm_avenger_downwash_water"
        L41_2.pos = L38_2
        L41_2.s = 0.1
        L41_2.o = 1.0
        L39_2(L40_2, L41_2)
        L39_2 = TriggerServerEvent
        L40_2 = "PlayEffectServer"
        L41_2 = {}
        L41_2.a = "veh_avenger"
        L41_2.b = "veh_xm_avenger_downwash_water"
        L41_2.pos = L37_2
        L41_2.s = 0.1
        L41_2.o = 1.0
        L39_2(L40_2, L41_2)
        L39_2 = GetForwardPositions
        L40_2 = mioSalvagente
        L41_2 = 2.7
        L39_2, L40_2 = L39_2(L40_2, L41_2)
        L41_2 = TriggerServerEvent
        L42_2 = "PlayEffectServer"
        L43_2 = {}
        L43_2.a = "core"
        L43_2.b = "ent_dst_gen_water_spray"
        L43_2.pos = L39_2
        L43_2.s = 2.1
        L43_2.o = 0.5
        L41_2(L42_2, L43_2)
        L41_2 = TriggerServerEvent
        L42_2 = "PlayEffectServer"
        L43_2 = {}
        L43_2.a = "core"
        L43_2.b = "ent_dst_gen_water_spray"
        L43_2.pos = L40_2
        L43_2.s = 2.1
        L43_2.o = 0.5
        L41_2(L42_2, L43_2)
      end
    elseif L35_2 >= L5_2 then
      L5_2 = L35_2 + 1000
      L37_2 = "core"
      L38_2 = "ent_dst_gen_water_spray"
      L39_2 = HasNamedPtfxAssetLoaded
      L40_2 = L37_2
      L39_2 = L39_2(L40_2)
      if not L39_2 then
        L39_2 = RequestNamedPtfxAsset
        L40_2 = L37_2
        L39_2(L40_2)
      end
      while true do
        L39_2 = HasNamedPtfxAssetLoaded
        L40_2 = L37_2
        L39_2 = L39_2(L40_2)
        if L39_2 then
          break
        end
        L39_2 = Wait
        L40_2 = 0
        L39_2(L40_2)
      end
      L39_2 = UseParticleFxAssetNextCall
      L40_2 = L37_2
      L39_2(L40_2)
      L39_2 = StartParticleFxLoopedOnEntityBone
      L40_2 = L38_2
      L41_2 = mioSalvagente
      L42_2 = 0.0
      L43_2 = 0.0
      L44_2 = 0.0
      L45_2 = 0.0
      L46_2 = 0.0
      L47_2 = 0.0
      L48_2 = GetPedBoneIndex
      L49_2 = mioSalvagente
      L50_2 = 24818
      L48_2 = L48_2(L49_2, L50_2)
      L49_2 = 2.5
      L50_2 = false
      L39_2 = L39_2(L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
      L40_2 = CreateThread
      function L41_2()
        local L0_3, L1_3, L2_3
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = StopParticleFxLooped
        L1_3 = L39_2
        L0_3(L1_3)
        L0_3 = RemoveParticleFx
        L1_3 = L39_2
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      L40_2(L41_2)
    end
    ::lbl_886::
    L36_2 = LoopWhileSit
    L37_2 = A0_2
    L36_2(L37_2)
    L36_2 = cameraGuida
    if not L36_2 then
      L36_2 = 0.0
      L37_2 = L7_1
      L37_2 = L12_1
      L37_2 = not L37_2 and L37_2
      L38_2 = L9_1
      L38_2 = L10_1
      L38_2 = not L38_2 and L38_2
      L39_2 = IsControlPressed
      L40_2 = 0
      L41_2 = 34
      L39_2 = L39_2(L40_2, L41_2)
      if L39_2 and L37_2 then
        L36_2 = 1.0
      else
        L39_2 = IsControlPressed
        L40_2 = 0
        L41_2 = 35
        L39_2 = L39_2(L40_2, L41_2)
        if L39_2 and L38_2 then
          L36_2 = -1.0
        end
      end
      if 0.0 ~= L36_2 then
        L39_2 = IsControlPressed
        L40_2 = 0
        L41_2 = 32
        L39_2 = L39_2(L40_2, L41_2)
        if L39_2 then
          L39_2 = 1.0
          if L39_2 then
            goto lbl_940
          end
        end
        L39_2 = 0.3
        ::lbl_940::
        L40_2 = -L36_2
        L40_2 = L40_2 * L2_2
        L40_2 = L40_2 * L10_2
        L40_2 = L40_2 * L39_2
        L41_2 = ApplyForceToEntity
        L42_2 = mioSalvagente
        L43_2 = 1
        L44_2 = L40_2
        L45_2 = 0.0
        L46_2 = 0.0
        L47_2 = 0.0
        L48_2 = 1.2
        L49_2 = 0.0
        L50_2 = 0
        L51_2 = true
        L52_2 = true
        L53_2 = true
        L54_2 = false
        L55_2 = true
        L41_2(L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
        L41_2 = ApplyForceToEntity
        L42_2 = mioSalvagente
        L43_2 = 1
        L44_2 = -L40_2
        L45_2 = 0.0
        L46_2 = 0.0
        L47_2 = 0.0
        L48_2 = -1.2
        L49_2 = 0.0
        L50_2 = 0
        L51_2 = true
        L52_2 = true
        L53_2 = true
        L54_2 = false
        L55_2 = true
        L41_2(L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
      end
    end
    L36_2 = IsControlJustPressed
    L37_2 = 0
    L38_2 = 73
    L36_2 = L36_2(L37_2, L38_2)
    if not L36_2 then
      L36_2 = IsControlJustPressed
      L37_2 = 0
      L38_2 = 23
      L36_2 = L36_2(L37_2, L38_2)
      if not L36_2 then
        goto lbl_997
      end
    end
    L36_2 = editorAtt
    if nil == L36_2 then
      L36_2 = canDropFromBoat
      if L36_2 then
        break
      end
    end
    ::lbl_997::
  end
  L6_2 = DropFromBoat
  L6_2()
end
SitSalvagente = L47_1
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L43_1
  L2_2 = "boat_set_push_to_sea"
  L3_2 = "boat_set_push_to_sea_clip"
  L4_2 = 1750
  L5_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 555
  L1_2(L2_2)
  L1_2 = GetEntityForwardVector
  L2_2 = mioSalvagente
  L1_2 = L1_2(L2_2)
  L2_2 = 5.0
  L3_2 = SetEntityVelocity
  L4_2 = mioSalvagente
  L5_2 = L1_2.x
  L5_2 = L5_2 * L2_2
  L6_2 = L1_2.y
  L6_2 = L6_2 * L2_2
  L7_2 = 0.0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = GetEntityHeading
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ApplyForceToEntityCenterOfMass
  L5_2 = mioSalvagente
  L6_2 = 1
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = -0.1
  L10_2 = true
  L11_2 = true
  L12_2 = false
  L13_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = 0
  while true do
    L5_2 = GetEntitySpeed
    L6_2 = mioSalvagente
    L5_2 = L5_2(L6_2)
    L6_2 = 0.9
    if not (L5_2 > L6_2) then
      break
    end
    L5_2 = 1000
    if not (L4_2 < L5_2) then
      break
    end
    L4_2 = L4_2 + 1
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = L3_2
    L6_2 = GetEntityHeading
    L7_2 = mioSalvagente
    L6_2 = L6_2(L7_2)
    L7_2 = L5_2 - L6_2
    L7_2 = L7_2 + 540.0
    L7_2 = L7_2 % 360.0
    L7_2 = L7_2 - 180.0
    L8_2 = smoothFactor
    L8_2 = L7_2 * L8_2
    L8_2 = L6_2 + L8_2
    L9_2 = 0.03
    L10_2 = GetEntityRotation
    L11_2 = mioSalvagente
    L12_2 = 2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = L10_2.x
    L14_2 = L10_2.x
    L14_2 = L11_2 - L14_2
    L14_2 = L14_2 * L9_2
    L13_2 = L13_2 + L14_2
    L14_2 = L10_2.y
    L15_2 = L10_2.y
    L15_2 = L12_2 - L15_2
    L15_2 = L15_2 * L9_2
    L14_2 = L14_2 + L15_2
    L15_2 = SetEntityRotation
    L16_2 = mioSalvagente
    L17_2 = L13_2
    L18_2 = L14_2
    L19_2 = L8_2
    L20_2 = 2
    L21_2 = true
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L15_2 = SetEntityAngularVelocity
    L16_2 = mioSalvagente
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L15_2(L16_2, L17_2, L18_2, L19_2)
  end
  L5_2 = ApplyForceToEntityCenterOfMass
  L6_2 = mioSalvagente
  L7_2 = 1
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = -0.1
  L11_2 = true
  L12_2 = true
  L13_2 = false
  L14_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = 0
  while true do
    L6_2 = GetEntitySpeed
    L7_2 = mioSalvagente
    L6_2 = L6_2(L7_2)
    L7_2 = 0.9
    if not (L6_2 > L7_2) then
      break
    end
    L6_2 = 1000
    if not (L5_2 < L6_2) then
      break
    end
    L5_2 = L5_2 + 1
    L6_2 = Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = Wait
  L7_2 = 75
  L6_2(L7_2)
end
pushBoat = L47_1
L47_1 = exports
L48_1 = "deleteAndSpawnBoat"
function L49_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_boat
  L3_2 = L2_2
  L2_2 = L2_2.spawnBoat
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = 1
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L47_1(L48_1, L49_1)
L47_1 = {}
L48_1 = {}
L47_1.entities = L48_1
L48_1 = {}
L47_1.cache = L48_1
L48_1 = 250
L49_1 = 50
function L50_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L47_1.cache
  L2_2 = L2_2[L1_2]
  if not L2_2 then
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
    L14_2 = nil
    L15_2 = nil
    if "x" == L8_2 then
      L16_2 = vector3
      L17_2 = L3_2.x
      L17_2 = L17_2 + L10_2
      L18_2 = L12_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L4_2.x
      L17_2 = L17_2 - L10_2
      L18_2 = L12_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    elseif "y" == L8_2 then
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L3_2.y
      L18_2 = L18_2 + L10_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L4_2.y
      L18_2 = L18_2 - L10_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    else
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L12_2
      L19_2 = L3_2.z
      L19_2 = L19_2 + L10_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L12_2
      L19_2 = L4_2.z
      L19_2 = L19_2 - L10_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    end
    L16_2 = {}
    L16_2.base = L14_2
    L16_2.tip = L15_2
    L2_2 = L16_2
    L16_2 = L47_1.cache
    L16_2[L1_2] = L2_2
  end
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = A0_2
  L5_2 = L2_2.base
  L5_2 = L5_2.x
  L6_2 = L2_2.base
  L6_2 = L6_2.y
  L7_2 = L2_2.base
  L7_2 = L7_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = A0_2
  L6_2 = L2_2.tip
  L6_2 = L6_2.x
  L7_2 = L2_2.tip
  L7_2 = L7_2.y
  L8_2 = L2_2.tip
  L8_2 = L8_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
function L51_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = DrawTexturedPoly
  if L4_2 then
    L4_2 = DrawTexturedPoly
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L7_2 = A0_2.z
    L8_2 = A1_2.x
    L9_2 = A1_2.y
    L10_2 = A1_2.z
    L11_2 = A2_2.x
    L12_2 = A2_2.y
    L13_2 = A2_2.z
    L14_2 = 255
    L15_2 = 255
    L16_2 = 255
    L17_2 = A3_2
    L18_2 = 0.0
    L19_2 = 1.0
    L20_2 = 0.0
    L21_2 = 0.0
    L22_2 = 1.0
    L23_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  else
    L4_2 = Citizen
    L4_2 = L4_2.InvokeNative
    L5_2 = 2965620363887581480
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A1_2.z
    L12_2 = A2_2.x
    L13_2 = A2_2.y
    L14_2 = A2_2.z
    L15_2 = 255
    L16_2 = 255
    L17_2 = 255
    L18_2 = A3_2
    L19_2 = 0.0
    L20_2 = 1.0
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 1.0
    L24_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  end
end
function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = A0_2.segments
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.segments
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.expire
    if L1_2 >= L7_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2.segments
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = math
      L7_2 = L7_2.floor
      L8_2 = L6_2.expire
      L8_2 = L8_2 - L1_2
      L9_2 = L48_1
      L8_2 = L8_2 / L9_2
      L9_2 = L49_1
      L8_2 = L8_2 * L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = math
      L8_2 = L8_2.max
      L9_2 = 0
      L10_2 = math
      L10_2 = L10_2.min
      L11_2 = 10
      L12_2 = L7_2
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
      L8_2 = L51_1
      L9_2 = L6_2.b1
      L10_2 = L6_2.t1
      L11_2 = L6_2.t2
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L51_1
      L9_2 = L6_2.b1
      L10_2 = L6_2.t2
      L11_2 = L6_2.b2
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L51_1
      L9_2 = L6_2.t2
      L10_2 = L6_2.t1
      L11_2 = L6_2.b1
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L51_1
      L9_2 = L6_2.b2
      L10_2 = L6_2.t2
      L11_2 = L6_2.b1
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
function L53_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 and 0 ~= L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = L47_1.entities
        L7_2 = L7_2[L6_2]
        if not L7_2 then
          L7_2 = L47_1.entities
          L8_2 = {}
          L8_2.lastBase = nil
          L8_2.lastTip = nil
          L9_2 = {}
          L8_2.segments = L9_2
          L7_2[L6_2] = L8_2
        end
      end
    end
  end
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = false
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = pairs
      L3_3 = L47_1.entities
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = DoesEntityExist
        L9_3 = L6_3
        L8_3 = L8_3(L9_3)
        if L8_3 then
          L0_3 = true
          L8_3 = L50_1
          L9_3 = L6_3
          L8_3, L9_3 = L8_3(L9_3)
          L10_3 = L7_3.lastBase
          if L10_3 then
            L10_3 = L7_3.lastTip
            if L10_3 then
              L10_3 = L7_3.segments
              L11_3 = L7_3.segments
              L11_3 = #L11_3
              L11_3 = L11_3 + 1
              L12_3 = {}
              L13_3 = L7_3.lastBase
              L12_3.b1 = L13_3
              L13_3 = L7_3.lastTip
              L12_3.t1 = L13_3
              L12_3.b2 = L8_3
              L12_3.t2 = L9_3
              L13_3 = L48_1
              L13_3 = L1_3 + L13_3
              L12_3.expire = L13_3
              L10_3[L11_3] = L12_3
            end
          end
          L7_3.lastBase = L8_3
          L7_3.lastTip = L9_3
        else
          L7_3.lastBase = nil
          L7_3.lastTip = nil
        end
        L8_3 = L52_1
        L9_3 = L7_3
        L8_3(L9_3)
        L8_3 = DoesEntityExist
        L9_3 = L6_3
        L8_3 = L8_3(L9_3)
        if not L8_3 then
          L8_3 = L7_3.segments
          L8_3 = #L8_3
          if 0 == L8_3 then
            L8_3 = L47_1.entities
            L8_3[L6_3] = nil
          end
        end
      end
      if not L0_3 then
        L2_3 = false
        L3_3 = pairs
        L4_3 = L47_1.entities
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = L8_3.segments
          L9_3 = #L9_3
          if L9_3 > 0 then
            L2_3 = true
            break
          end
        end
        if not L2_3 then
          break
        end
      end
    end
  end
  L1_2(L2_2)
end
TraceRemi = L53_1
L53_1 = {}
L54_1 = {}
L53_1.entities = L54_1
L54_1 = {}
L53_1.cache = L54_1
L53_1.running = false
L54_1 = 250
L55_1 = 50
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = IsEntityAPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = GetPedBoneIndex
    L2_2 = A0_2
    L3_2 = 18905
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = GetPedBoneIndex
    L3_2 = A0_2
    L4_2 = 57005
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetWorldPositionOfEntityBone
    L4_2 = A0_2
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetWorldPositionOfEntityBone
    L5_2 = A0_2
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L53_1.cache
  L2_2 = L2_2[L1_2]
  if not L2_2 then
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
    L14_2 = nil
    L15_2 = nil
    if "x" == L8_2 then
      L16_2 = vector3
      L17_2 = L3_2.x
      L17_2 = L17_2 + L10_2
      L18_2 = L12_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L4_2.x
      L17_2 = L17_2 - L10_2
      L18_2 = L12_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    elseif "y" == L8_2 then
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L3_2.y
      L18_2 = L18_2 + L10_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L4_2.y
      L18_2 = L18_2 - L10_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    else
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L12_2
      L19_2 = L3_2.z
      L19_2 = L19_2 + L10_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L14_2 = L16_2
      L16_2 = vector3
      L17_2 = L11_2
      L18_2 = L12_2
      L19_2 = L4_2.z
      L19_2 = L19_2 - L10_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2 = L16_2
    end
    L16_2 = {}
    L16_2.base = L14_2
    L16_2.tip = L15_2
    L2_2 = L16_2
    L16_2 = L53_1.cache
    L16_2[L1_2] = L2_2
  end
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = A0_2
  L5_2 = L2_2.base
  L5_2 = L5_2.x
  L6_2 = L2_2.base
  L6_2 = L6_2.y
  L7_2 = L2_2.base
  L7_2 = L7_2.z
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = A0_2
  L6_2 = L2_2.tip
  L6_2 = L6_2.x
  L7_2 = L2_2.tip
  L7_2 = L7_2.y
  L8_2 = L2_2.tip
  L8_2 = L8_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
function L57_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = DrawTexturedPoly
  if L4_2 then
    L4_2 = DrawTexturedPoly
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L7_2 = A0_2.z
    L8_2 = A1_2.x
    L9_2 = A1_2.y
    L10_2 = A1_2.z
    L11_2 = A2_2.x
    L12_2 = A2_2.y
    L13_2 = A2_2.z
    L14_2 = 255
    L15_2 = 255
    L16_2 = 255
    L17_2 = A3_2
    L18_2 = 0.0
    L19_2 = 1.0
    L20_2 = 0.0
    L21_2 = 0.0
    L22_2 = 1.0
    L23_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  else
    L4_2 = Citizen
    L4_2 = L4_2.InvokeNative
    L5_2 = 2965620363887581480
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = A1_2.x
    L10_2 = A1_2.y
    L11_2 = A1_2.z
    L12_2 = A2_2.x
    L13_2 = A2_2.y
    L14_2 = A2_2.z
    L15_2 = 255
    L16_2 = 255
    L17_2 = 255
    L18_2 = A3_2
    L19_2 = 0.0
    L20_2 = 1.0
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 1.0
    L24_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  end
end
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = A0_2.segments
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.segments
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.expire
    if L1_2 >= L7_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2.segments
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = math
      L7_2 = L7_2.floor
      L8_2 = L6_2.expire
      L8_2 = L8_2 - L1_2
      L9_2 = L54_1
      L8_2 = L8_2 / L9_2
      L9_2 = L55_1
      L8_2 = L8_2 * L9_2
      L7_2 = L7_2(L8_2)
      L8_2 = math
      L8_2 = L8_2.max
      L9_2 = 0
      L10_2 = math
      L10_2 = L10_2.min
      L11_2 = L55_1
      L12_2 = L7_2
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
      L8_2 = L57_1
      EntityTrailPoly = L8_2
      L8_2 = EntityTrailPoly
      L9_2 = L6_2.b1
      L10_2 = L6_2.t1
      L11_2 = L6_2.t2
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = EntityTrailPoly
      L9_2 = L6_2.b1
      L10_2 = L6_2.t2
      L11_2 = L6_2.b2
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = EntityTrailPoly
      L9_2 = L6_2.t2
      L10_2 = L6_2.t1
      L11_2 = L6_2.b1
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = EntityTrailPoly
      L9_2 = L6_2.b2
      L10_2 = L6_2.t2
      L11_2 = L6_2.b1
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
function L59_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L53_1.entities
  L1_2 = L1_2[A0_2]
  if L1_2 then
    return
  end
  L1_2 = IsEntityAPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L53_1.entities
  L3_2 = {}
  L3_2.lastBase = nil
  L3_2.lastTip = nil
  L4_2 = {}
  L3_2.segments = L4_2
  if L1_2 then
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 + 500
    if L4_2 then
      goto lbl_36
    end
  end
  L4_2 = nil
  ::lbl_36::
  L3_2.stopAt = L4_2
  L2_2[A0_2] = L3_2
  L2_2 = L53_1.running
  if L2_2 then
    return
  end
  L53_1.running = true
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = false
      L2_3 = pairs
      L3_3 = L53_1.entities
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = DoesEntityExist
        L9_3 = L6_3
        L8_3 = L8_3(L9_3)
        if L8_3 then
          L8_3 = L7_3.stopAt
          L8_3 = not L8_3
        end
        if L8_3 then
          L1_3 = true
          L9_3 = L56_1
          L10_3 = L6_3
          L9_3, L10_3 = L9_3(L10_3)
          L11_3 = L7_3.lastBase
          if L11_3 then
            L11_3 = L7_3.lastTip
            if L11_3 then
              L11_3 = L7_3.segments
              L12_3 = L7_3.segments
              L12_3 = #L12_3
              L12_3 = L12_3 + 1
              L13_3 = {}
              L14_3 = L7_3.lastBase
              L13_3.b1 = L14_3
              L14_3 = L7_3.lastTip
              L13_3.t1 = L14_3
              L13_3.b2 = L9_3
              L13_3.t2 = L10_3
              L14_3 = L54_1
              L14_3 = L0_3 + L14_3
              L13_3.expire = L14_3
              L11_3[L12_3] = L13_3
            end
          end
          L7_3.lastBase = L9_3
          L7_3.lastTip = L10_3
        else
          L7_3.lastBase = nil
          L7_3.lastTip = nil
        end
        L9_3 = L58_1
        L10_3 = L7_3
        L9_3(L10_3)
        L9_3 = L7_3.segments
        L9_3 = #L9_3
        if L9_3 > 0 then
          L1_3 = true
        end
        L9_3 = DoesEntityExist
        L10_3 = L6_3
        L9_3 = L9_3(L10_3)
        if not L9_3 then
          L9_3 = L7_3.segments
          L9_3 = #L9_3
          if 0 == L9_3 then
            L9_3 = L53_1.entities
            L9_3[L6_3] = nil
          end
        end
      end
      if not L1_3 then
        break
      end
    end
    L53_1.running = false
  end
  L2_2(L3_2)
end
TraceEntity = L59_1
editorAtt = nil
editorProp = nil
L59_1 = 0.0
L60_1 = 0.0
L61_1 = 0.0
L62_1 = 0.0
L63_1 = 0.0
L64_1 = 0.0
L65_1 = {}
L66_1 = vector3
L67_1 = 0.0
L68_1 = 0.0
L69_1 = 0.0
L66_1 = L66_1(L67_1, L68_1, L69_1)
L65_1.pos = L66_1
lastEditorPos = L65_1
L65_1 = {}
L66_1 = vector3
L67_1 = 0.0
L68_1 = 0.0
L69_1 = 0.0
L66_1 = L66_1(L67_1, L68_1, L69_1)
L65_1.pos = L66_1
lastEditorRot = L65_1
estetico = nil
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = BoatModelList
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if "number" == L7_2 then
      L7_2 = GetHashKey
      L8_2 = L6_2.model
      L7_2 = L7_2(L8_2)
      if L7_2 == A0_2 then
        return L5_2
      end
    else
      L7_2 = L6_2.model
      L8_2 = L7_2
      L7_2 = L7_2.lower
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2
      L8_2 = L8_2.lower
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        return L5_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
GetBoatIdFromModel = L65_1
function L65_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L7_2 = A0_2
  if nil == A0_2 then
    L7_2 = -2006939605
  else
    L7_2 = A0_2
  end
  L8_2 = editorAtt
  if nil ~= L8_2 then
    L8_2 = SetEntityAsMissionEntity
    L9_2 = editorAtt
    L8_2(L9_2)
    L8_2 = DeleteEntity
    L9_2 = editorAtt
    L8_2(L9_2)
    editorAtt = nil
    L8_2 = Wait
    L9_2 = 25
    L8_2(L9_2)
  end
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L12_2 = RequestModelStriano
  L13_2 = L7_2
  L12_2(L13_2)
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = L7_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 1.0
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  editorProp = L12_2
  L12_2 = 0
  while true do
    L13_2 = DoesEntityExist
    L14_2 = editorProp
    L13_2 = L13_2(L14_2)
    if not (not L13_2 and L12_2 < 100) then
      break
    end
    L13_2 = Wait
    L14_2 = 0
    L13_2(L14_2)
    L12_2 = L12_2 + 1
  end
  if L12_2 >= 100 then
    L13_2 = print
    L14_2 = "MODEL BOAT PROP NOT EXIST!"
    L13_2(L14_2)
    editorProp = nil
    return
  end
  L13_2 = -2006939605
  L14_2 = RequestModelStriano
  L15_2 = L13_2
  L14_2(L15_2)
  L14_2 = CreateObject
  L15_2 = L13_2
  L16_2 = L9_2
  L17_2 = L10_2
  L18_2 = L11_2
  L19_2 = false
  L20_2 = false
  L21_2 = false
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  estetico = L14_2
  L14_2 = 0
  while true do
    L15_2 = DoesEntityExist
    L16_2 = estetico
    L15_2 = L15_2(L16_2)
    if not (not L15_2 and L14_2 < 100) then
      break
    end
    L15_2 = Wait
    L16_2 = 0
    L15_2(L16_2)
    L14_2 = L14_2 + 1
  end
  if L14_2 >= 100 then
    L15_2 = print
    L16_2 = "MODEL BOAT [code 3] NOT EXIST!"
    L15_2(L16_2)
    return
  end
  L15_2 = SetEntityVisible
  L16_2 = estetico
  L17_2 = false
  L15_2(L16_2, L17_2)
  L15_2 = SetEntityAlpha
  L16_2 = estetico
  L17_2 = 0
  L15_2(L16_2, L17_2)
  L15_2 = GetBoatIdFromModel
  L16_2 = L7_2
  L15_2 = L15_2(L16_2)
  if nil == L15_2 then
    L16_2 = editorAtt
    if nil ~= L16_2 then
      L16_2 = SetEntityAsMissionEntity
      L17_2 = editorAtt
      L16_2(L17_2)
      L16_2 = DeleteEntity
      L17_2 = editorAtt
      L16_2(L17_2)
      editorAtt = nil
    end
    L16_2 = estetico
    if nil ~= L16_2 then
      L16_2 = SetEntityAsMissionEntity
      L17_2 = estetico
      L16_2(L17_2)
      L16_2 = DeleteEntity
      L17_2 = estetico
      L16_2(L17_2)
      estetico = nil
    end
    L16_2 = editorProp
    if nil ~= L16_2 then
      L16_2 = SetEntityAsMissionEntity
      L17_2 = editorProp
      L16_2(L17_2)
      L16_2 = DeleteEntity
      L17_2 = editorProp
      L16_2(L17_2)
      editorProp = nil
    end
    L16_2 = print
    L17_2 = "This boat is not yet configured!"
    L16_2(L17_2)
    return
  end
  L16_2 = FreezeEntityPosition
  L17_2 = L8_2
  L18_2 = true
  L16_2(L17_2, L18_2)
  L16_2 = BoatModelList
  L16_2 = L16_2[L15_2]
  L16_2 = L16_2.offset_boat
  if not L16_2 then
    L16_2 = {}
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = 0.0
    L16_2[1] = L17_2
    L16_2[2] = L18_2
    L16_2[3] = L19_2
  end
  L17_2 = BoatModelList
  L17_2 = L17_2[L15_2]
  L17_2 = L17_2.offset_boat_rot
  if not L17_2 then
    L17_2 = {}
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L17_2[1] = L18_2
    L17_2[2] = L19_2
    L17_2[3] = L20_2
  end
  L18_2 = AttachEntityToEntity
  L19_2 = editorProp
  L20_2 = estetico
  L21_2 = 0
  L22_2 = L16_2[1]
  L23_2 = L16_2[2]
  L24_2 = L16_2[3]
  L25_2 = L17_2[1]
  L26_2 = L17_2[2]
  L27_2 = L17_2[3]
  L28_2 = false
  L29_2 = false
  L30_2 = false
  L31_2 = true
  L32_2 = 2
  L33_2 = true
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L18_2 = L16_2[1]
  L19_2 = L16_2[2]
  L20_2 = L16_2[3]
  L61_1 = L20_2
  L60_1 = L19_2
  L59_1 = L18_2
  L18_2 = L17_2[1]
  L19_2 = L17_2[2]
  L20_2 = L17_2[3]
  L64_1 = L20_2
  L63_1 = L19_2
  L62_1 = L18_2
  if L14_2 < 100 then
    L18_2 = estetico
    editorAtt = L18_2
    L18_2 = SetModelAsNoLongerNeeded
    L19_2 = L7_2
    L18_2(L19_2)
    L18_2 = Wait
    L19_2 = 25
    L18_2(L19_2)
    L18_2 = testo3d
    L19_2 = "use arrow keys~n~~y~Q ~w~to get offset"
    L18_2(L19_2)
    L18_2 = UpdateEditorAttBoat
    L18_2()
    L18_2 = L43_1
    L19_2 = "boat_set_double_paddle_idle"
    L20_2 = "boat_set_double_paddle_idle_clip"
    L21_2 = -1
    L22_2 = 1
    L18_2(L19_2, L20_2, L21_2, L22_2)
  else
    L18_2 = testo3d
    L19_2 = "model not exist"
    L18_2(L19_2)
  end
end
AddPlayerToBoat = L65_1
function L65_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    while true do
      L0_3 = editorAtt
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = editorAtt
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = editorAtt
      L1_3 = 0.009
      L2_3 = 0.3
      L3_3 = DisableCamCollisionForEntity
      L4_3 = L0_3
      L3_3(L4_3)
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_52
              end
            end
            L3_3 = L61_1
            L3_3 = L3_3 + L1_3
            L61_1 = L3_3
            ::lbl_52::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_68
              end
            end
            L3_3 = L61_1
            L3_3 = L3_3 - L1_3
            L61_1 = L3_3
            ::lbl_68::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_84
              end
            end
            L3_3 = L64_1
            L3_3 = L3_3 + L2_3
            L64_1 = L3_3
            ::lbl_84::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_100
              end
            end
            L3_3 = L64_1
            L3_3 = L3_3 - L2_3
            L64_1 = L3_3
          end
        end
      end
      ::lbl_100::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_134
              end
            end
            L3_3 = L59_1
            L3_3 = L3_3 + L1_3
            L59_1 = L3_3
            ::lbl_134::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_150
              end
            end
            L3_3 = L59_1
            L3_3 = L3_3 - L1_3
            L59_1 = L3_3
            ::lbl_150::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_166
              end
            end
            L3_3 = L60_1
            L3_3 = L3_3 + L1_3
            L60_1 = L3_3
            ::lbl_166::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_182
              end
            end
            L3_3 = L60_1
            L3_3 = L3_3 - L1_3
            L60_1 = L3_3
          end
        end
      end
      ::lbl_182::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_264
          end
        end
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 174
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 174
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_216
          end
        end
        L3_3 = L62_1
        L3_3 = L3_3 + L2_3
        L62_1 = L3_3
        ::lbl_216::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 175
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 175
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_232
          end
        end
        L3_3 = L62_1
        L3_3 = L3_3 - L2_3
        L62_1 = L3_3
        ::lbl_232::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 172
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 172
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_248
          end
        end
        L3_3 = L63_1
        L3_3 = L3_3 + L2_3
        L63_1 = L3_3
        ::lbl_248::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 173
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 173
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_264
          end
        end
        L3_3 = L63_1
        L3_3 = L3_3 - L2_3
        L63_1 = L3_3
      end
      ::lbl_264::
      L3_3 = AttachEntityToEntity
      L4_3 = L0_2
      L5_3 = editorAtt
      L6_3 = 0
      L7_3 = L59_1
      L8_3 = L60_1
      L9_3 = L61_1
      L10_3 = L62_1
      L11_3 = L63_1
      L12_3 = L64_1
      L13_3 = false
      L14_3 = false
      L15_3 = false
      L16_3 = true
      L17_3 = 2
      L18_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 44
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 44
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          goto lbl_337
        end
      end
      L3_3 = PlaySoundFrontend
      L4_3 = -1
      L5_3 = "5_Second_Timer"
      L6_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
      L7_3 = 0
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = print
      L4_3 = "OFFSET TO COPY: "
      L5_3 = L59_1
      L6_3 = ","
      L7_3 = L60_1
      L8_3 = ","
      L9_3 = L61_1
      L10_3 = ","
      L11_3 = L62_1
      L12_3 = ","
      L13_3 = L63_1
      L14_3 = ","
      L15_3 = L64_1
      L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
      L3_3(L4_3)
      L3_3 = testo3d
      L4_3 = "offset get in f8"
      L3_3(L4_3)
      L3_3 = GetResourceState
      L4_3 = "striano_core"
      L3_3 = L3_3(L4_3)
      if "started" == L3_3 then
        L3_3 = ExecuteCommand
        L4_3 = "copia "
        L5_3 = L59_1
        L6_3 = ","
        L7_3 = L60_1
        L8_3 = ","
        L9_3 = L61_1
        L10_3 = ","
        L11_3 = L62_1
        L12_3 = ","
        L13_3 = L63_1
        L14_3 = ","
        L15_3 = L64_1
        L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3
        L3_3(L4_3)
      end
      ::lbl_337::
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 177
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 177
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsControlJustPressed
          L4_3 = 0
          L5_3 = 200
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsDisabledControlJustPressed
            L4_3 = 0
            L5_3 = 200
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsControlJustPressed
              L4_3 = 0
              L5_3 = 199
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                L3_3 = IsDisabledControlJustPressed
                L4_3 = 0
                L5_3 = 199
                L3_3 = L3_3(L4_3, L5_3)
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
                    if not L3_3 then
                      goto lbl_413
                    end
                  end
                end
              end
            end
          end
        end
      end
      L3_3 = DetachEntity
      L4_3 = L0_2
      L3_3(L4_3)
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L61_1 = L5_3
      L60_1 = L4_3
      L59_1 = L3_3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L64_1 = L5_3
      L63_1 = L4_3
      L62_1 = L3_3
      L3_3 = PlaySoundFrontend
      L4_3 = -1
      L5_3 = "Zoom_Right"
      L6_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L7_3 = 1
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = testo3d
      L4_3 = "boat editor closed"
      L3_3(L4_3)
      L3_3 = ClearPedTasks
      L4_3 = L0_2
      L3_3(L4_3)
      do break end
      ::lbl_413::
    end
    L0_3 = editorProp
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = editorProp
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DetachEntity
        L1_3 = editorProp
        L2_3 = true
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetEntityAsMissionEntity
        L1_3 = editorProp
        L2_3 = true
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DeleteEntity
        L1_3 = editorProp
        L0_3(L1_3)
      end
    end
    L0_3 = estetico
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = estetico
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityAsMissionEntity
        L1_3 = estetico
        L2_3 = true
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DeleteEntity
        L1_3 = estetico
        L0_3(L1_3)
      end
    end
    editorProp = nil
    estetico = nil
    editorAtt = nil
    L0_3 = FreezeEntityPosition
    L1_3 = L0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
UpdateEditorAttBoat = L65_1
function L65_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L7_2 = A0_2
  if nil == A0_2 then
    L7_2 = -2006939605
  else
    L7_2 = A0_2
  end
  if -2006939605 ~= L7_2 then
    L8_2 = GetHashKey
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if -2006939605 ~= L8_2 then
      goto lbl_18
    end
  end
  L8_2 = testo3d
  L9_2 = "invalid boat."
  L8_2(L9_2)
  do return end
  ::lbl_18::
  L8_2 = editorAtt
  if nil ~= L8_2 then
    L8_2 = SetEntityAsMissionEntity
    L9_2 = editorAtt
    L8_2(L9_2)
    L8_2 = DeleteEntity
    L9_2 = editorAtt
    L8_2(L9_2)
    editorAtt = nil
    L8_2 = Wait
    L9_2 = 25
    L8_2(L9_2)
  end
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L12_2 = RequestModelStriano
  L13_2 = L7_2
  L12_2(L13_2)
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = L7_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 1.0
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  editorProp = L12_2
  L12_2 = editorProp
  L13_2 = 0
  while true do
    L14_2 = DoesEntityExist
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      break
    end
    L14_2 = Wait
    L15_2 = 0
    L14_2(L15_2)
    L13_2 = L13_2 + 1
  end
  if L13_2 < 100 then
    L14_2 = -2006939605
    L15_2 = RequestModelStriano
    L16_2 = L14_2
    L15_2(L16_2)
    L15_2 = CreateObject
    L16_2 = L14_2
    L17_2 = L9_2
    L18_2 = L10_2
    L19_2 = L11_2
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    estetico = L15_2
    L15_2 = SetEntityCollision
    L16_2 = estetico
    L17_2 = false
    L18_2 = false
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = SetEntityCollision
    L16_2 = L12_2
    L17_2 = false
    L18_2 = false
    L15_2(L16_2, L17_2, L18_2)
    L15_2 = 0
    while true do
      L16_2 = DoesEntityExist
      L17_2 = estetico
      L16_2 = L16_2(L17_2)
      if not (not L16_2 and L15_2 < 100) then
        break
      end
      L16_2 = Wait
      L17_2 = 0
      L16_2(L17_2)
      L15_2 = L15_2 + 1
    end
    if L15_2 >= 100 then
      L16_2 = print
      L17_2 = "MODEL BOAT [code 3] NOT EXIST!"
      L16_2(L17_2)
      L16_2 = SetEntityAsMissionEntity
      L17_2 = L12_2
      L16_2(L17_2)
      L16_2 = DeleteEntity
      L17_2 = L12_2
      L16_2(L17_2)
      return
    end
    editorAtt = L12_2
    L16_2 = SetModelAsNoLongerNeeded
    L17_2 = L7_2
    L16_2(L17_2)
    L16_2 = SetEntityAlpha
    L17_2 = estetico
    L18_2 = 150
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 25
    L16_2(L17_2)
    L16_2 = testo3d
    L17_2 = "use arrow keys~n~~y~Q ~w~to get offset"
    L16_2(L17_2)
    L16_2 = UpdateEditorBoatToBoat
    L16_2()
    L16_2 = SetEntityVisible
    L17_2 = L8_2
    L18_2 = false
    L16_2(L17_2, L18_2)
  else
    L14_2 = testo3d
    L15_2 = "model not exist"
    L14_2(L15_2)
  end
end
AddBoatToBoat = L65_1
function L65_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    while true do
      L0_3 = editorAtt
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = editorAtt
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = editorAtt
      L1_3 = 0.009
      L2_3 = 0.3
      L3_3 = DisableCamCollisionForEntity
      L4_3 = L0_3
      L3_3(L4_3)
      L3_3 = SetEntityNoCollisionEntity
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = estetico
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = SetEntityNoCollisionEntity
      L4_3 = estetico
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = SetEntityNoCollisionEntity
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = editorAtt
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = SetEntityNoCollisionEntity
      L4_3 = editorAtt
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_76
              end
            end
            L3_3 = L61_1
            L3_3 = L3_3 + L1_3
            L61_1 = L3_3
            ::lbl_76::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_92
              end
            end
            L3_3 = L61_1
            L3_3 = L3_3 - L1_3
            L61_1 = L3_3
            ::lbl_92::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_108
              end
            end
            L3_3 = L64_1
            L3_3 = L3_3 + L2_3
            L64_1 = L3_3
            ::lbl_108::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_124
              end
            end
            L3_3 = L64_1
            L3_3 = L3_3 - L2_3
            L64_1 = L3_3
          end
        end
      end
      ::lbl_124::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 174
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 174
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_158
              end
            end
            L3_3 = L59_1
            L3_3 = L3_3 + L1_3
            L59_1 = L3_3
            ::lbl_158::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 175
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 175
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_174
              end
            end
            L3_3 = L59_1
            L3_3 = L3_3 - L1_3
            L59_1 = L3_3
            ::lbl_174::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 172
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 172
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_190
              end
            end
            L3_3 = L60_1
            L3_3 = L3_3 + L1_3
            L60_1 = L3_3
            ::lbl_190::
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = 173
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsDisabledControlPressed
              L4_3 = 0
              L5_3 = 173
              L3_3 = L3_3(L4_3, L5_3)
              if not L3_3 then
                goto lbl_206
              end
            end
            L3_3 = L60_1
            L3_3 = L3_3 - L1_3
            L60_1 = L3_3
          end
        end
      end
      ::lbl_206::
      L3_3 = IsControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 22
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_288
          end
        end
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 174
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 174
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_240
          end
        end
        L3_3 = L62_1
        L3_3 = L3_3 + L2_3
        L62_1 = L3_3
        ::lbl_240::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 175
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 175
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_256
          end
        end
        L3_3 = L62_1
        L3_3 = L3_3 - L2_3
        L62_1 = L3_3
        ::lbl_256::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 172
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 172
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_272
          end
        end
        L3_3 = L63_1
        L3_3 = L3_3 + L2_3
        L63_1 = L3_3
        ::lbl_272::
        L3_3 = IsControlPressed
        L4_3 = 0
        L5_3 = 173
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 173
          L3_3 = L3_3(L4_3, L5_3)
          if not L3_3 then
            goto lbl_288
          end
        end
        L3_3 = L63_1
        L3_3 = L3_3 - L2_3
        L63_1 = L3_3
      end
      ::lbl_288::
      L3_3 = AttachEntityToEntity
      L4_3 = editorAtt
      L5_3 = estetico
      L6_3 = 0
      L7_3 = L59_1
      L8_3 = L60_1
      L9_3 = L61_1
      L10_3 = L62_1
      L11_3 = L63_1
      L12_3 = L64_1
      L13_3 = false
      L14_3 = false
      L15_3 = false
      L16_3 = true
      L17_3 = 2
      L18_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L3_3 = GetEntityCoords
      L4_3 = estetico
      L3_3 = L3_3(L4_3)
      L4_3 = DrawMarker
      L5_3 = 28
      L6_3 = L3_3.x
      L7_3 = L3_3.y
      L8_3 = L3_3.z
      L9_3 = 0.0
      L10_3 = 0.0
      L11_3 = 0.0
      L12_3 = 0.0
      L13_3 = 0.0
      L14_3 = 0.0
      L15_3 = 0.1
      L16_3 = 0.1
      L17_3 = 0.1
      L18_3 = 255
      L19_3 = 255
      L20_3 = 255
      L21_3 = 255
      L22_3 = false
      L23_3 = false
      L24_3 = 2
      L25_3 = false
      L26_3 = nil
      L27_3 = nil
      L28_3 = false
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
      L4_3 = IsControlJustPressed
      L5_3 = 0
      L6_3 = 44
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
        L4_3 = IsDisabledControlJustPressed
        L5_3 = 0
        L6_3 = 44
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          goto lbl_470
        end
      end
      L4_3 = PlaySoundFrontend
      L5_3 = -1
      L6_3 = "5_Second_Timer"
      L7_3 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
      L8_3 = 0
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = print
      L5_3 = "OFFSET TO COPY: "
      L6_3 = L59_1
      L7_3 = ","
      L8_3 = L60_1
      L9_3 = ","
      L10_3 = L61_1
      L11_3 = ","
      L12_3 = L62_1
      L13_3 = ","
      L14_3 = L63_1
      L15_3 = ","
      L16_3 = L64_1
      L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3
      L4_3(L5_3)
      L4_3 = testo3d
      L5_3 = "offset get in f8"
      L4_3(L5_3)
      L4_3 = GetResourceState
      L5_3 = "striano_core"
      L4_3 = L4_3(L5_3)
      if "started" == L4_3 then
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L59_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_385
          end
        end
        L4_3 = L59_1
        ::lbl_385::
        L59_1 = L4_3
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L60_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_397
          end
        end
        L4_3 = L60_1
        ::lbl_397::
        L60_1 = L4_3
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L61_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_409
          end
        end
        L4_3 = L61_1
        ::lbl_409::
        L61_1 = L4_3
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L62_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_421
          end
        end
        L4_3 = L62_1
        ::lbl_421::
        L62_1 = L4_3
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L63_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_433
          end
        end
        L4_3 = L63_1
        ::lbl_433::
        L63_1 = L4_3
        L4_3 = math
        L4_3 = L4_3.abs
        L5_3 = L64_1
        L4_3 = L4_3(L5_3)
        L5_3 = 0.001
        if L4_3 < L5_3 then
          L4_3 = 0.0
          if L4_3 then
            goto lbl_445
          end
        end
        L4_3 = L64_1
        ::lbl_445::
        L64_1 = L4_3
        L4_3 = GetEntityModel
        L5_3 = estetico
        L4_3 = L4_3(L5_3)
        if -2006939605 == L4_3 then
          L4_3 = L61_1
          L4_3 = L4_3 + 0.2
          L61_1 = L4_3
        end
        L4_3 = ExecuteCommand
        L5_3 = "copia "
        L6_3 = L59_1
        L7_3 = ","
        L8_3 = L60_1
        L9_3 = ","
        L10_3 = L61_1
        L11_3 = ","
        L12_3 = L62_1
        L13_3 = ","
        L14_3 = L63_1
        L15_3 = ","
        L16_3 = L64_1
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3
        L4_3(L5_3)
      end
      ::lbl_470::
      L4_3 = IsControlJustPressed
      L5_3 = 0
      L6_3 = 177
      L4_3 = L4_3(L5_3, L6_3)
      if not L4_3 then
        L4_3 = IsDisabledControlJustPressed
        L5_3 = 0
        L6_3 = 177
        L4_3 = L4_3(L5_3, L6_3)
        if not L4_3 then
          L4_3 = IsControlJustPressed
          L5_3 = 0
          L6_3 = 200
          L4_3 = L4_3(L5_3, L6_3)
          if not L4_3 then
            L4_3 = IsDisabledControlJustPressed
            L5_3 = 0
            L6_3 = 200
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsControlJustPressed
              L5_3 = 0
              L6_3 = 199
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsDisabledControlJustPressed
                L5_3 = 0
                L6_3 = 199
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsControlJustPressed
                  L5_3 = 0
                  L6_3 = 73
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsDisabledControlJustPressed
                    L5_3 = 0
                    L6_3 = 73
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      goto lbl_564
                    end
                  end
                end
              end
            end
          end
        end
      end
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = 0.0
      L61_1 = L6_3
      L60_1 = L5_3
      L59_1 = L4_3
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = 0.0
      L64_1 = L6_3
      L63_1 = L5_3
      L62_1 = L4_3
      L4_3 = PlaySoundFrontend
      L5_3 = -1
      L6_3 = "Zoom_Right"
      L7_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
      L8_3 = 1
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = testo3d
      L5_3 = "boat editor closed"
      L4_3(L5_3)
      L4_3 = ClearPedTasks
      L5_3 = L0_2
      L4_3(L5_3)
      L4_3 = mioSalvagente2
      if nil ~= L4_3 then
        L4_3 = DoesEntityExist
        L5_3 = mioSalvagente2
        L4_3 = L4_3(L5_3)
        if L4_3 then
          L4_3 = ResetEntityAlpha
          L5_3 = mioSalvagente2
          L4_3(L5_3)
        end
      end
      L4_3 = SetEntityAsMissionEntity
      L5_3 = estetico
      L4_3(L5_3)
      L4_3 = DeleteEntity
      L5_3 = estetico
      L4_3(L5_3)
      L4_3 = SetEntityVisible
      L5_3 = L0_2
      L6_3 = true
      L4_3(L5_3, L6_3)
      do break end
      ::lbl_564::
    end
    L0_3 = editorAtt
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = editorAtt
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = editorAtt
      L0_3(L1_3)
      editorAtt = nil
    end
    L0_3 = estetico
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = estetico
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = estetico
      L0_3(L1_3)
      estetico = nil
    end
  end
  L1_2(L2_2)
end
UpdateEditorBoatToBoat = L65_1
function L65_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mioSalvagente
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = mioSalvagente
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = mioSalvagente
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = mioSalvagente
      L0_2(L1_2)
      mioSalvagente = nil
    end
  end
  L0_2 = mioSalvagente2
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = mioSalvagente2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = mioSalvagente2
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = mioSalvagente2
      L0_2(L1_2)
      mioSalvagente2 = nil
    end
  end
  L0_2 = mioSalvagente3
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = mioSalvagente3
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = mioSalvagente3
      L2_2 = true
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = mioSalvagente3
      L0_2(L1_2)
      mioSalvagente3 = nil
    end
  end
end
ClearInternalBoat = L65_1
L65_1 = false
L66_1 = nil
L67_1 = exports
L68_1 = "getMyBoat"
function L69_1()
  local L0_2, L1_2
  L0_2 = mioSalvagente3
  if nil ~= L0_2 then
    L0_2 = mioSalvagente3
    return L0_2
  else
    L0_2 = mioSalvagente2
    if nil ~= L0_2 then
      L0_2 = mioSalvagente2
      return L0_2
    else
      L0_2 = nil
      return L0_2
    end
  end
end
L67_1(L68_1, L69_1)
L67_1 = RegisterNetEvent
L68_1 = "striano_boat:receiveInvite"
function L69_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = L65_1
  if L4_2 then
    return
  end
  L4_2 = true
  L65_1 = L4_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L0_3 = L0_3 + 15000
    while true do
      L1_3 = L65_1
      if not L1_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = math
      L1_3 = L1_3.ceil
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L0_3 - L2_3
      L2_3 = L2_3 / 1000
      L1_3 = L1_3(L2_3)
      L2_3 = ShowInstructionalButtons
      L3_3 = "Accept boat invite. (~h~"
      L4_3 = L1_3
      L5_3 = "~h~)"
      L3_3 = L3_3 .. L4_3 .. L5_3
      L4_3 = {}
      L5_3 = 38
      L4_3[1] = L5_3
      L2_3(L3_3, L4_3)
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = 38
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = false
        L65_1 = L2_3
        L2_3 = TriggerServerEvent
        L3_3 = "striano_boat:acceptInvite"
        L4_3 = A2_2
        L5_3 = A3_2
        L2_3(L3_3, L4_3, L5_3)
        break
      end
    end
    L1_3 = L65_1
    if L1_3 then
      L1_3 = false
      L65_1 = L1_3
      L1_3 = TriggerServerEvent
      L2_3 = "striano_boat:declineInvite"
      L1_3(L2_3)
      L1_3 = testo3d
      L2_3 = "boat invite expired."
      L1_3(L2_3)
      L1_3 = ShowInstructionalButtonsTimed
      L2_3 = "Accept boat invite. (~h~expired~h~)"
      L3_3 = {}
      L4_3 = 38
      L3_3[1] = L4_3
      L4_3 = 1000
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L4_2(L5_2)
end
L67_1(L68_1, L69_1)
L67_1 = RegisterNetEvent
L68_1 = "striano_boat:seatAssigned"
function L69_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = 0
  L4_2 = 1
  L5_2 = 20
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = NetworkDoesNetworkIdExist
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = NetworkGetEntityFromNetworkId
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L3_2 = L8_2
      if 0 ~= L3_2 then
        L8_2 = DoesEntityExist
        L9_2 = L3_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          break
        end
      end
    end
    L8_2 = Wait
    L9_2 = 100
    L8_2(L9_2)
  end
  if 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_37
    end
  end
  L4_2 = TriggerServerEvent
  L5_2 = "striano_boat:releaseSeat"
  L4_2(L5_2)
  do return end
  ::lbl_37::
  L4_2 = GetBoatIdFromModel
  L5_2 = GetEntityModel
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  if not L4_2 then
    L5_2 = TriggerServerEvent
    L6_2 = "striano_boat:releaseSeat"
    L5_2(L6_2)
    return
  end
  L5_2 = BoatModelList
  L5_2 = L5_2[L4_2]
  L6_2 = L5_2.seats
  if L6_2 then
    L6_2 = L5_2.seats
    L6_2 = L6_2[A1_2]
  end
  if not L6_2 then
    L7_2 = TriggerServerEvent
    L8_2 = "striano_boat:releaseSeat"
    L7_2(L8_2)
    return
  end
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = L3_2
  L11_2 = 0
  L12_2 = L6_2[1]
  L13_2 = L6_2[2]
  L14_2 = L6_2[3]
  L15_2 = L6_2[4]
  L16_2 = L6_2[5]
  L17_2 = L6_2[6]
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L21_2 = true
  L22_2 = 2
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = 1
  L66_1 = L8_2
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = L66_1
      if nil == L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DoesEntityExist
      L1_3 = L3_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = IsEntityAttachedToEntity
        L1_3 = L7_2
        L2_3 = L3_2
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = L7_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            goto lbl_29
          end
        end
      end
      L0_3 = nil
      L66_1 = L0_3
      L0_3 = TriggerServerEvent
      L1_3 = "striano_boat:releaseSeat"
      L0_3(L1_3)
      do break end
      ::lbl_29::
      L0_3 = ShowInstructionalButtons
      L1_3 = "Leave boat."
      L2_3 = {}
      L3_3 = 23
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 23
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = BoatModelList
      L1_3 = A2_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.seatAnim
      L1_3 = L43_1
      L2_3 = L0_3.a
      L3_3 = L0_3.b
      L4_3 = -1
      L5_3 = 1
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 23
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = nil
        L66_1 = L1_3
        L1_3 = DetachEntity
        L2_3 = L7_2
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = TriggerServerEvent
        L2_3 = "striano_boat:releaseSeat"
        L1_3(L2_3)
        break
      end
    end
    L0_3 = GetEntityCoords
    L1_3 = L7_2
    L0_3 = L0_3(L1_3)
    while true do
      L1_3 = HasCollisionLoadedAroundEntity
      L2_3 = PlayerPedId
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L2_3()
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      if L1_3 then
        break
      end
      L1_3 = RequestCollisionAtCoord
      L2_3 = L0_3.x
      L3_3 = L0_3.y
      L4_3 = L0_3.z
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = SetFocusPosAndVel
      L2_3 = L0_3.x
      L3_3 = L0_3.y
      L4_3 = L0_3.z
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 0.0
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = FreezeEntityPosition
    L2_3 = L7_2
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetEntityCoordsNoOffset
    L2_3 = L7_2
    L3_3 = L0_3.x
    L4_3 = L0_3.y
    L5_3 = L0_3.z
    L5_3 = L5_3 + 1.5
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = L43_1
    L2_3 = "get_up@directional@movement@from_knees@standard"
    L3_3 = "getup_l_0"
    L4_3 = 550
    L5_3 = 1
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = Wait
    L2_3 = 225
    L1_3(L2_3)
    L1_3 = FreezeEntityPosition
    L2_3 = L7_2
    L3_3 = false
    L1_3(L2_3, L3_3)
  end
  L8_2(L9_2)
end
L67_1(L68_1, L69_1)
L67_1 = RegisterNetEvent
L68_1 = "striano_boat:noFreeSeats"
function L69_1()
  local L0_2, L1_2
  L0_2 = testo3d
  L1_2 = "no free seat"
  L0_2(L1_2)
end
L67_1(L68_1, L69_1)
