local L0_1, L1_1, L2_1, L3_1, L4_1
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
ButtonMessage = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = N_0xe83a3e3557a56640
  L2_2 = A0_2
  L1_2(L2_2)
end
Button = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2, A13_2, A14_2, A15_2)
  local L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L16_2 = RequestScaleformMovie
  L17_2 = "instructional_buttons"
  L16_2 = L16_2(L17_2)
  while true do
    L17_2 = HasScaleformMovieLoaded
    L18_2 = L16_2
    L17_2 = L17_2(L18_2)
    if L17_2 then
      break
    end
    L17_2 = Wait
    L18_2 = 0
    L17_2(L18_2)
  end
  L17_2 = PushScaleformMovieFunction
  L18_2 = L16_2
  L19_2 = "CLEAR_ALL"
  L17_2(L18_2, L19_2)
  L17_2 = PopScaleformMovieFunctionVoid
  L17_2()
  L17_2 = PushScaleformMovieFunction
  L18_2 = L16_2
  L19_2 = "SET_CLEAR_SPACE"
  L17_2(L18_2, L19_2)
  L17_2 = PushScaleformMovieFunctionParameterInt
  L18_2 = 200
  L17_2(L18_2)
  L17_2 = PopScaleformMovieFunctionVoid
  L17_2()
  if A0_2 and A0_2 > -1 and A1_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 6
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A0_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A1_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A0_2 and -1 == A0_2 and A1_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 6
    L17_2(L18_2)
    L17_2 = ButtonMessage
    L18_2 = A1_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A2_2 and A3_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 5
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A2_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A3_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A4_2 and A5_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 4
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A4_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A5_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A6_2 and A7_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 3
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A6_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A7_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A8_2 and A9_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 2
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A8_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A9_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A10_2 and A11_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 1
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 1
    L20_2 = A10_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A11_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A12_2 and A13_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 0
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A12_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A13_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  if A14_2 and A15_2 then
    L17_2 = PushScaleformMovieFunction
    L18_2 = L16_2
    L19_2 = "SET_DATA_SLOT"
    L17_2(L18_2, L19_2)
    L17_2 = PushScaleformMovieFunctionParameterInt
    L18_2 = 0
    L17_2(L18_2)
    L17_2 = Button
    L18_2 = GetControlInstructionalButton
    L19_2 = 2
    L20_2 = A14_2
    L21_2 = true
    L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2)
    L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2 = ButtonMessage
    L18_2 = A15_2
    L17_2(L18_2)
    L17_2 = PopScaleformMovieFunctionVoid
    L17_2()
  end
  L17_2 = PushScaleformMovieFunction
  L18_2 = L16_2
  L19_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  L17_2(L18_2, L19_2)
  L17_2 = PopScaleformMovieFunctionVoid
  L17_2()
  L17_2 = PushScaleformMovieFunction
  L18_2 = L16_2
  L19_2 = "SET_BACKGROUND_COLOUR"
  L17_2(L18_2, L19_2)
  L17_2 = PushScaleformMovieFunctionParameterInt
  L18_2 = 0
  L17_2(L18_2)
  L17_2 = PushScaleformMovieFunctionParameterInt
  L18_2 = 0
  L17_2(L18_2)
  L17_2 = PushScaleformMovieFunctionParameterInt
  L18_2 = 0
  L17_2(L18_2)
  L17_2 = PushScaleformMovieFunctionParameterInt
  L18_2 = 80
  L17_2(L18_2)
  L17_2 = PopScaleformMovieFunctionVoid
  L17_2()
  L17_2 = DrawScaleformMovieFullscreen
  L18_2 = L16_2
  L17_2(L18_2)
end
drawinfo = L0_1
ClonedPedSit = nil
L0_1 = exports
L1_1 = "cloned"
function L2_1()
  local L0_2, L1_2
  L0_2 = ClonedPedSit
  return L0_2
end
L0_1(L1_1, L2_1)
lastAnimName = nil
L0_1 = exports
L1_1 = "lastAnimName"
function L2_1(A0_2)
  local L1_2
  lastAnimName = A0_2
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ClonedPedSit
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = ClonedPedSit
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = ClonedPedSit
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = ClonedPedSit
      L0_2(L1_2)
    end
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = modelloAttesa
  if nil ~= L2_2 then
    L2_2 = RequestModelStriano
    L3_2 = modelloAttesa
    L2_2(L3_2)
    L2_2 = CreatePed
    L3_2 = 26
    L4_2 = modelloAttesa
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L1_2.z
    L7_2 = L7_2 - 1.0
    L8_2 = 0
    L9_2 = false
    L10_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    ClonedPedSit = L2_2
    while true do
      L2_2 = DoesEntityExist
      L3_2 = ClonedPedSit
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = SetPedDefaultComponentVariation
    L3_2 = ClonedPedSit
    L2_2(L3_2)
    L2_2 = SetEntityCompletelyDisableCollision
    L3_2 = ClonedPedSit
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityVisible
    L3_2 = ClonedPedSit
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = GetEntityHeading
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetEntityHeading
    L4_2 = ClonedPedSit
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = CreatePed
    L3_2 = 26
    L4_2 = GetEntityModel
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L1_2.x
    L6_2 = L1_2.y
    L7_2 = L1_2.z
    L7_2 = L7_2 - 1.0
    L8_2 = 0
    L9_2 = false
    L10_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    ClonedPedSit = L2_2
    while true do
      L2_2 = DoesEntityExist
      L3_2 = ClonedPedSit
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = SetEntityCompletelyDisableCollision
    L3_2 = ClonedPedSit
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityVisible
    L3_2 = ClonedPedSit
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = GetEntityHeading
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L3_2 = SetEntityHeading
    L4_2 = ClonedPedSit
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = ClonePedToTarget
    L4_2 = L0_2
    L5_2 = ClonedPedSit
    L3_2(L4_2, L5_2)
  end
  L2_2 = SetEntityInvincible
  L3_2 = ClonedPedSit
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityLocallyVisible
  L3_2 = ClonedPedSit
  L2_2(L3_2)
  L2_2 = NetworkSetEntityInvisibleToNetwork
  L3_2 = ClonedPedSit
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityCanBeDamaged
  L3_2 = ClonedPedSit
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = ClonedPedSit
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityAlpha
  L3_2 = ClonedPedSit
  L4_2 = 254
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetEntityCollision
  L3_2 = ClonedPedSit
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedCanBeTargetted
  L3_2 = ClonedPedSit
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = FreezeEntityPosition
  L3_2 = ClonedPedSit
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityCollision
  L3_2 = L0_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = lastAnimName
  if nil ~= L2_2 then
    L2_2 = ExecuteCommand
    L3_2 = "e "
    L4_2 = lastAnimName
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = SetEntityAlpha
    L1_3 = L0_2
    L2_3 = 100
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityVisible
    L1_3 = ClonedPedSit
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2)
end
createClone = L0_1
ultimaentity = nil
inEDITOR = false
posLastAtt = nil
L0_1 = 0.0
L1_1 = 0.0
L2_1 = 0.0
L3_1 = 0.0
L4_1 = 0.0
VRY = 0.0
VRX = L4_1
VR = L3_1
VZ = L2_1
VY = L1_1
VX = L0_1
mioRC = nil
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = mioRC
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = mioRC
      L1_2(L2_2)
      L1_2 = DeleteObject
      L2_2 = mioRC
      L1_2(L2_2)
      mioRC = nil
    end
    L1_2 = DoesEntityExist
    L2_2 = EditorZombiePed
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = EditorZombiePed
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeletePed
      L2_2 = EditorZombiePed
      L1_2(L2_2)
    end
    L1_2 = DoesEntityExist
    L2_2 = EditorZombiePed2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = EditorZombiePed2
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = EditorZombiePed2
      L1_2(L2_2)
    end
    L1_2 = DoesEntityExist
    L2_2 = EditorZombiePed3
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = EditorZombiePed3
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = EditorZombiePed3
      L1_2(L2_2)
    end
    L1_2 = DoesEntityExist
    L2_2 = GhostObjSit
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = GhostObjSit
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = GhostObjSit
      L1_2(L2_2)
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 4.0
  L6_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = CastRayPointToPoint
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 10
  L11_2 = L0_2
  L12_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = GetRaycastResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  return L8_2
end
VehicleInFrontSitDynamic = L0_1
fattoSIT = false
L0_1 = RegisterCommand
L1_1 = CommandName2
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = posLastAtt
  if nil ~= L3_2 then
    L3_2 = ExecuteCommand
    L4_2 = CommandName3
    L3_2(L4_2)
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetClosestVehicle
  L5_2 = L3_2.x
  L6_2 = L3_2.y
  L7_2 = L3_2.z
  L8_2 = 5.0
  L9_2 = 0
  L10_2 = 70
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = Wait
  L6_2 = 1
  L5_2(L6_2)
  L5_2 = mioRC
  if nil ~= L5_2 then
    L4_2 = mioRC
  else
    L5_2 = IsPedInAnyVehicle
    L6_2 = L2_2
    L7_2 = true
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = GetVehiclePedIsIn
      L6_2 = L2_2
      L7_2 = false
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
      L5_2 = TaskLeaveVehicle
      L6_2 = L2_2
      L7_2 = L4_2
      L8_2 = 16
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = Wait
      L6_2 = 100
      L5_2(L6_2)
    end
    if nil == L4_2 or 0 == L4_2 then
      L5_2 = GetClosestVehicle
      L6_2 = L3_2.x
      L7_2 = L3_2.y
      L8_2 = L3_2.z
      L9_2 = 9.5
      L10_2 = 0
      L11_2 = 12294
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_2 = L5_2
    end
    if nil == L4_2 or 0 == L4_2 then
      L5_2 = VehicleInFrontSitDynamic
      L5_2 = L5_2()
      L4_2 = L5_2
    end
    if nil == L4_2 or 0 == L4_2 then
      L5_2 = GetEntityCoords
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      L6_2 = GetOffsetFromEntityInWorldCoords
      L7_2 = L2_2
      L8_2 = 0.0
      L9_2 = 5.0
      L10_2 = 0.0
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = CastRayPointToPoint
      L8_2 = L5_2.x
      L9_2 = L5_2.y
      L10_2 = L5_2.z
      L11_2 = L6_2.x
      L12_2 = L6_2.y
      L13_2 = L6_2.z
      L14_2 = 30
      L15_2 = L2_2
      L16_2 = 0
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L8_2 = GetRaycastResult
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
      L4_2 = L12_2
    end
  end
  L5_2 = IsEntityAPed
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = IsPedAPlayer
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = GetEntitySpeed
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 > 1.0 then
          return
        end
        L5_2 = UpdateAttaccatoVeicolo
        L6_2 = L4_2
        L5_2(L6_2)
    end
  end
  else
    L5_2 = fattoSIT
    if not L5_2 then
      L5_2 = notify
      L6_2 = NoVehNear
      L5_2(L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = CommandName4
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = posLastAtt
  if nil ~= L3_2 then
    L3_2 = ExecuteCommand
    L4_2 = CommandName3
    L3_2(L4_2)
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = PlayerVicino
  L5_2, L6_2 = L5_2()
  if -1 ~= L5_2 then
    L7_2 = 1.1
    if L6_2 <= L7_2 then
      L7_2 = GetPlayerPed
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L4_2 = L7_2
    end
  end
  L7_2 = IsEntityAPed
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = DoesEntityExist
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    if L7_2 and nil ~= L4_2 and 0 ~= L4_2 then
      L7_2 = IsPedAPlayer
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = GetEntitySpeed
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L8_2 = 1.7
        if L7_2 > L8_2 then
          L7_2 = notify
          L8_2 = DeveFermo
          L7_2(L8_2)
          return
        end
        L7_2 = UpdateAttaccatoVeicolo
        L8_2 = L4_2
        L7_2(L8_2)
    end
  end
  else
    L7_2 = fattoSIT
    if not L7_2 then
      L7_2 = notify
      L8_2 = NoPlNear
      L7_2(L8_2)
    end
  end
end
L0_1(L1_1, L2_1)
objeditoratt = nil
L0_1 = RegisterCommand
L1_1 = "eobj"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = RequestModelStriano
  L1_2 = "prop_crate_05a"
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetOffsetFromEntityInWorldCoords
  L2_2 = L0_2
  L3_2 = 0.0
  L4_2 = 0.7
  L5_2 = -1.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = objeditoratt
  if nil == L2_2 then
    L2_2 = RequestModelStriano
    L3_2 = -1322592273
    L2_2(L3_2)
    L2_2 = CreateObjectNoOffset
    L3_2 = -1322592273
    L4_2 = L1_2
    L5_2 = false
    L6_2 = false
    L7_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    objeditoratt = L2_2
    L2_2 = PlaceObjectOnGroundProperly
    L3_2 = objeditoratt
    L2_2(L3_2)
    L2_2 = UpdateAttaccatoVeicolo
    L3_2 = objeditoratt
    L4_2 = GetPedBoneIndex
    L5_2 = pedSpawn
    L6_2 = -1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    inEDITOR = false
    L2_2 = SetEntityAsMissionEntity
    L3_2 = objeditoratt
    L2_2(L3_2)
    L2_2 = DeleteEntity
    L3_2 = objeditoratt
    L2_2(L3_2)
    objeditoratt = nil
  end
end
L0_1(L1_1, L2_1)
EditorZombiePed = nil
EditorZombiePed2 = nil
EditorZombiePed3 = nil
L0_1 = RegisterCommand
L1_1 = "enpc"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = posLastAtt
  if nil ~= L3_2 then
    L3_2 = ExecuteCommand
    L4_2 = CommandName3
    L3_2(L4_2)
    return
  end
  L3_2 = "s_m_m_trucker_01"
  L4_2 = A1_2[1]
  if nil ~= L4_2 then
    L4_2 = A1_2[1]
    if "nil" ~= L4_2 then
      L4_2 = tostring
      L5_2 = A1_2[1]
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  end
  L4_2 = RequestModelStriano
  L5_2 = GetHashKey
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L5_2(L6_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
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
  L6_2 = GetPedBoneIndex
  L7_2 = L5_2
  L8_2 = 57005
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A1_2[2]
  if nil ~= L7_2 then
    L7_2 = GetPedBoneIndex
    L8_2 = L5_2
    L9_2 = tonumber
    L10_2 = A1_2[2]
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L6_2 = L7_2
  end
  L7_2 = AttachEntityToEntity
  L8_2 = L2_2
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = VX
  L12_2 = VY
  L13_2 = VZ
  L14_2 = VRX
  L15_2 = VRY
  L16_2 = VR
  L17_2 = false
  L18_2 = true
  L19_2 = false
  L20_2 = true
  L21_2 = 2
  L22_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2 = notify
  L8_2 = "Editor start - boneID "
  L9_2 = L6_2
  L8_2 = L8_2 .. L9_2
  L7_2(L8_2)
  EditorZombiePed = L5_2
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = faiAnim
  L8_2 = "bzzz@horse@stand"
  L9_2 = "bz_horse_stand"
  L10_2 = -1
  L11_2 = 1
  L12_2 = L2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = UpdateAttaccatoVeicolo
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "enpca"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = A1_2[2]
    if nil ~= L2_2 then
      goto lbl_11
    end
  end
  L2_2 = notify
  L3_2 = "/enpca [dic] [anim]"
  L2_2(L3_2)
  goto lbl_30
  ::lbl_11::
  L2_2 = EditorZombiePed
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = faiAnim
      L3_2 = A1_2[1]
      L4_2 = A1_2[2]
      L5_2 = -1
      L6_2 = 1
      L7_2 = EditorZombiePed
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  else
    L2_2 = notify
    L3_2 = "Spawn first an NPC with /enpc."
    L2_2(L3_2)
  end
  ::lbl_30::
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "tnpc"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = DoesEntityExist
  L3_2 = EditorZombiePed
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DeletePed
    L3_2 = EditorZombiePed
    L2_2(L3_2)
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = EditorZombiePed
      L2_2(L3_2)
      EditorZombiePed = nil
    end
    return
  end
  L2_2 = "u_m_y_zombie_01"
  L3_2 = RequestModelStriano
  L4_2 = GetHashKey
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = CreatePed
  L5_2 = 26
  L6_2 = GetHashKey
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = 0.0
  L11_2 = true
  L12_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  EditorZombiePed = L4_2
  L4_2 = SetPedFleeAttributes
  L5_2 = EditorZombiePed
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedDropsWeaponsWhenDead
  L5_2 = EditorZombiePed
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetPedDiesWhenInjured
  L5_2 = EditorZombiePed
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityInvincible
  L5_2 = EditorZombiePed
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = EditorZombiePed
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetBlockingOfNonTemporaryEvents
  L5_2 = EditorZombiePed
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdollFromPlayerImpact
  L5_2 = EditorZombiePed
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityCollision
  L5_2 = EditorZombiePed
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = EditorZombiePed
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanBeTargetted
  L5_2 = EditorZombiePed
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = AttachEntityToEntity
  L5_2 = EditorZombiePed
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = -1
  L8_2 = 0.08
  L9_2 = 0.26
  L10_2 = 0.36
  L11_2 = -24.0
  L12_2 = 18.0
  L13_2 = 8.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = faiAnim
  L5_2 = "timetable@ron@ig_3_couch"
  L6_2 = "base"
  L7_2 = -1
  L8_2 = 1
  L9_2 = EditorZombiePed
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = faiAnim
  L5_2 = "amb@code_human_wander_eating_donut_fat@male@idle_a"
  L6_2 = "idle_c"
  L7_2 = -1
  L8_2 = 51
  L9_2 = EditorZombiePed
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "tnpc2"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = DoesEntityExist
  L3_2 = EditorZombiePed2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DeletePed
    L3_2 = EditorZombiePed2
    L2_2(L3_2)
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = EditorZombiePed2
      L2_2(L3_2)
      EditorZombiePed2 = nil
    end
    return
  end
  L2_2 = "u_m_y_zombie_01"
  L3_2 = RequestModelStriano
  L4_2 = GetHashKey
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = CreatePed
  L5_2 = 26
  L6_2 = GetHashKey
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = 0.0
  L11_2 = true
  L12_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  EditorZombiePed2 = L4_2
  L4_2 = SetPedFleeAttributes
  L5_2 = EditorZombiePed2
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedDropsWeaponsWhenDead
  L5_2 = EditorZombiePed2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetPedDiesWhenInjured
  L5_2 = EditorZombiePed2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityInvincible
  L5_2 = EditorZombiePed2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = EditorZombiePed2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetBlockingOfNonTemporaryEvents
  L5_2 = EditorZombiePed2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdollFromPlayerImpact
  L5_2 = EditorZombiePed2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityCollision
  L5_2 = EditorZombiePed2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = EditorZombiePed2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanBeTargetted
  L5_2 = EditorZombiePed2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = AttachEntityToEntity
  L5_2 = EditorZombiePed2
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = -1
  L8_2 = -0.4
  L9_2 = -0.06
  L10_2 = -0.040000000000001
  L11_2 = 13.0
  L12_2 = 0.0
  L13_2 = 278.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = faiAnim
  L5_2 = "anim@veh@armordillo@turret@idle_duck"
  L6_2 = "sit_aim_down"
  L7_2 = -1
  L8_2 = 1
  L9_2 = EditorZombiePed2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "tnpc3"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = DoesEntityExist
  L3_2 = EditorZombiePed3
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DeletePed
    L3_2 = EditorZombiePed3
    L2_2(L3_2)
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed3
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = EditorZombiePed3
      L2_2(L3_2)
      EditorZombiePed3 = nil
    end
    return
  end
  L2_2 = "u_m_y_zombie_01"
  L3_2 = RequestModelStriano
  L4_2 = GetHashKey
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = CreatePed
  L5_2 = 26
  L6_2 = GetHashKey
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2.x
  L8_2 = L3_2.y
  L9_2 = L3_2.z
  L10_2 = 0.0
  L11_2 = true
  L12_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  EditorZombiePed3 = L4_2
  L4_2 = SetPedFleeAttributes
  L5_2 = EditorZombiePed3
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetPedDropsWeaponsWhenDead
  L5_2 = EditorZombiePed3
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetPedDiesWhenInjured
  L5_2 = EditorZombiePed3
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityInvincible
  L5_2 = EditorZombiePed3
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = EditorZombiePed3
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetBlockingOfNonTemporaryEvents
  L5_2 = EditorZombiePed3
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanRagdollFromPlayerImpact
  L5_2 = EditorZombiePed3
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityCollision
  L5_2 = EditorZombiePed3
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = EditorZombiePed3
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetPedCanBeTargetted
  L5_2 = EditorZombiePed3
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = AttachEntityToEntity
  L5_2 = EditorZombiePed3
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = -1
  L8_2 = 0.03
  L9_2 = 0.72
  L10_2 = 0.31
  L11_2 = 78.0
  L12_2 = 12.0
  L13_2 = 178.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = faiAnim
  L5_2 = "missexile3"
  L6_2 = "ex03_train_roof_idle"
  L7_2 = -1
  L8_2 = 1
  L9_2 = EditorZombiePed3
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = faiAnim
  L5_2 = "impexp_int-0"
  L6_2 = "mp_m_waremech_01_dual-0"
  L7_2 = -1
  L8_2 = 51
  L9_2 = EditorZombiePed3
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = CommandReset
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 0.0
  L1_2 = 0.0
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  VRY = 0.0
  VRX = L4_2
  VR = L3_2
  VZ = L2_2
  VY = L1_2
  VX = L0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = CommandName3
function L2_1()
  local L0_2, L1_2
  L0_2 = AnnullaSit
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  modelloAttesa = nil
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetEntityCollision
  L2_2 = L0_2
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = RequestCollisionAtCoord
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = LoadScene
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L5_2 = L1_2.z
  L2_2(L3_2, L4_2, L5_2)
  while true do
    L2_2 = HasCollisionLoadedAroundEntity
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = FreezeEntityPosition
  L3_2 = L0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  inEDITOR = false
  mostrainfosit = true
  L2_2 = EndOrbitCam
  L2_2()
  L2_2 = DoesEntityExist
  L3_2 = GhostObjSit
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = SetEntityAsMissionEntity
    L3_2 = GhostObjSit
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = DeleteEntity
    L3_2 = GhostObjSit
    L2_2(L3_2)
  end
  L2_2 = notify
  L3_2 = ""
  L2_2(L3_2)
  L2_2 = EditorZombiePed
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = EditorZombiePed
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = DeletePed
      L3_2 = EditorZombiePed
      L2_2(L3_2)
      EditorZombiePed = nil
    end
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = EditorZombiePed2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = DeleteEntity
      L3_2 = EditorZombiePed2
      L2_2(L3_2)
      EditorZombiePed2 = nil
    end
    L2_2 = DoesEntityExist
    L3_2 = EditorZombiePed3
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = EditorZombiePed3
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = DeleteEntity
      L3_2 = EditorZombiePed3
      L2_2(L3_2)
      EditorZombiePed3 = nil
    end
  end
  L2_2 = SetEntityAlpha
  L3_2 = L0_2
  L4_2 = 255
  L2_2(L3_2, L4_2)
  L2_2 = DoesEntityExist
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = posLastAtt
    if nil ~= L2_2 then
      L2_2 = DetachEntity
      L3_2 = L0_2
      L4_2 = true
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = mioRC
      if nil ~= L2_2 then
        L2_2 = DoesEntityExist
        L3_2 = mioRC
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = SetEntityAsMissionEntity
          L3_2 = mioRC
          L2_2(L3_2)
          L2_2 = DeleteObject
          L3_2 = mioRC
          L2_2(L3_2)
          mioRC = nil
        end
      end
      L2_2 = fattoSIT
      if L2_2 then
        L2_2 = 0.0
        L3_2 = 0.0
        L4_2 = 0.0
        L5_2 = 0.0
        L6_2 = 0.0
        VRY = 0.0
        VRX = L6_2
        VR = L5_2
        VZ = L4_2
        VY = L3_2
        VX = L2_2
        L2_2 = SetEntityCoords
        L3_2 = L0_2
        L4_2 = posLastAtt
        L4_2 = L4_2.x
        L5_2 = posLastAtt
        L5_2 = L5_2.y
        L6_2 = posLastAtt
        L6_2 = L6_2.z
        L6_2 = L6_2 - 0.9
        L2_2(L3_2, L4_2, L5_2, L6_2)
        fattoSIT = false
      end
      L2_2 = ultimaentity
      if nil ~= L2_2 then
        L2_2 = DoesEntityExist
        L3_2 = ultimaentity
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = GetEntityCoords
          L3_2 = PlayerPedId
          L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          L3_2 = posLastAtt
          L2_2 = L2_2 - L3_2
          L2_2 = #L2_2
          L3_2 = 1.5
          if L2_2 > L3_2 then
            L2_2 = GetEntityCoords
            L3_2 = ultimaentity
            L2_2 = L2_2(L3_2)
            L3_2 = SetEntityCoords
            L4_2 = L0_2
            L5_2 = L2_2.x
            L6_2 = L2_2.y
            L7_2 = L2_2.z
            L7_2 = L7_2 - 0.5
            L3_2(L4_2, L5_2, L6_2, L7_2)
            ultimaentity = nil
          end
        end
      end
      posLastAtt = nil
      L2_2 = FreezeEntityPosition
      L3_2 = L0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetPedToRagdoll
      L3_2 = L0_2
      L4_2 = 0
      L5_2 = 0
      L6_2 = 4
      L7_2 = 0
      L8_2 = 0
      L9_2 = 0
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = ClearRagdollBlockingFlags
      L3_2 = L0_2
      L4_2 = 26
      L2_2(L3_2, L4_2)
      L2_2 = ResetPedRagdollTimer
      L3_2 = L0_2
      L2_2(L3_2)
      possoFareRag = false
      L2_2 = Wait
      L3_2 = 25
      L2_2(L3_2)
      possoFareRag = true
      L2_2 = ResetPedRagdollTimer
      L3_2 = L0_2
      L2_2(L3_2)
      L2_2 = ClearRagdollBlockingFlags
      L3_2 = L0_2
      L4_2 = 26
      L2_2(L3_2, L4_2)
      L2_2 = FreezeEntityPosition
      L3_2 = L0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = onSitStopped
      L2_2()
      L2_2 = ClonedPedSit
      if L2_2 then
        L2_2 = DoesEntityExist
        L3_2 = ClonedPedSit
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = SetEntityAsMissionEntity
          L3_2 = ClonedPedSit
          L2_2(L3_2)
          L2_2 = DeleteEntity
          L3_2 = ClonedPedSit
          L2_2(L3_2)
          ClonedPedSit = nil
        end
      end
    end
  end
end
AnnullaSit = L0_1
premutoUnaVolta = false
mostrainfosit = true
GhostObjSit = nil
lastAnimApplied = nil
lastPropsApplied = nil
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = inEDITOR
  if L2_2 then
    return
  end
  inEDITOR = true
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L0_3 = createClone
    L0_3()
    L0_3 = FreezeEntityPosition
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = ClonedPedSit
    L1_3 = IsEntityAVehicle
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = IsEntityAPed
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        goto lbl_42
      end
    end
    L1_3 = AttachEntityToEntity
    L2_3 = L0_3
    L3_3 = A0_2
    L4_3 = -1
    L5_3 = VX
    L6_3 = VY
    L7_3 = VZ
    L8_3 = VRX
    L9_3 = VRY
    L10_3 = VR
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L14_3 = true
    L15_3 = false
    L16_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L1_3 = GetEntityCoords
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L2_3()
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    posLastAtt = L1_3
    goto lbl_46
    ::lbl_42::
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    posLastAtt = L1_3
    ::lbl_46::
    L1_3 = -1
    L2_3 = A1_2
    if nil == L2_3 then
      L1_3 = -1
    else
      L1_3 = A1_2
    end
    L2_3 = StartOrbitCam
    L3_3 = vector3
    L4_3 = 0.0
    L5_3 = 0.0
    L6_3 = 0.0
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = L0_3
    L5_3 = 2
    L2_3(L3_3, L4_3, L5_3)
    while true do
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
      L3_3 = mostrainfosit
      if L3_3 then
        L3_3 = DrawInfo
        L3_3()
      end
      L3_3 = IsDisabledControlJustPressed
      L4_3 = 0
      L5_3 = 74
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = mostrainfosit
        if L3_3 then
          mostrainfosit = false
        else
          mostrainfosit = true
        end
      end
      L3_3 = A0_2
      ultimaentity = L3_3
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 30
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 31
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 32
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 33
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 34
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 35
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 21
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 22
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 23
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = DisableControlAction
      L4_3 = 0
      L5_3 = 75
      L6_3 = true
      L3_3(L4_3, L5_3, L6_3)
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
          L3_3()
          return
        end
      end
      L3_3 = posLastAtt
      if nil ~= L3_3 then
        L3_3 = posLastAtt
        L4_3 = GetEntityCoords
        L5_3 = L0_3
        L4_3 = L4_3(L5_3)
        L3_3 = L3_3 - L4_3
        L3_3 = #L3_3
        if L3_3 > 5 then
          L3_3 = fattoSIT
          if L3_3 then
            L3_3 = AnnullaSit
            L3_3()
            L3_3 = TooFarMex
            L3_3()
            return
          end
        end
      end
      L3_3 = TipoEditor
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 23
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = GhostObjSit
          if nil == L3_3 then
            L3_3 = "prop_cs_leaf"
            L4_3 = RequestModelStriano
            L5_3 = L3_3
            L4_3(L5_3)
            L4_3 = type
            L5_3 = L3_3
            L4_3 = L4_3(L5_3)
            L4_3 = L3_3 or L4_3
            if "number" ~= L4_3 or not L3_3 then
              L4_3 = GetHashKey
              L5_3 = L3_3
              L4_3 = L4_3(L5_3)
            end
            L5_3 = CreateObject
            L6_3 = GetHashKey
            L7_3 = L3_3
            L6_3 = L6_3(L7_3)
            L7_3 = GetEntityCoords
            L8_3 = L0_3
            L7_3 = L7_3(L8_3)
            L8_3 = true
            L5_3 = L5_3(L6_3, L7_3, L8_3)
            GhostObjSit = L5_3
            L5_3 = SetEntityVisible
            L6_3 = GhostObjSit
            L7_3 = false
            L5_3(L6_3, L7_3)
            L5_3 = FreezeEntityPosition
            L6_3 = GhostObjSit
            L7_3 = true
            L5_3(L6_3, L7_3)
            L5_3 = SetEntityNoCollisionEntity
            L6_3 = PlayerPedId
            L6_3 = L6_3()
            L7_3 = GhostObjSit
            L8_3 = true
            L5_3(L6_3, L7_3, L8_3)
            L5_3 = SetEntityCollision
            L6_3 = GhostObjSit
            L7_3 = false
            L8_3 = false
            L5_3(L6_3, L7_3, L8_3)
            while true do
              L5_3 = DoesEntityExist
              L6_3 = GhostObjSit
              L5_3 = L5_3(L6_3)
              if L5_3 then
                break
              end
              L5_3 = Wait
              L6_3 = 0
              L5_3(L6_3)
            end
            L5_3 = SetTrackedEntity
            L6_3 = GhostObjSit
            L5_3(L6_3)
            L5_3 = onCamLock
            L5_3()
          else
            L3_3 = DoesEntityExist
            L4_3 = GhostObjSit
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L3_3 = SetTrackedEntity
              L4_3 = L0_3
              L3_3(L4_3)
              L3_3 = StartOrbitCam
              L4_3 = vector3
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.5
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              L5_3 = L0_3
              L3_3(L4_3, L5_3)
              L3_3 = SetEntityAsMissionEntity
              L4_3 = GhostObjSit
              L3_3(L4_3)
              L3_3 = DeleteEntity
              L4_3 = GhostObjSit
              L3_3(L4_3)
              GhostObjSit = nil
              L3_3 = onCamUnlock
              L3_3()
            end
          end
        end
      end
      L3_3 = IsControlJustPressed
      L4_3 = 0
      L5_3 = 45
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustPressed
        L4_3 = 0
        L5_3 = 45
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          goto lbl_380
        end
      end
      L3_3 = GetResourceState
      L4_3 = "striano_editor"
      L3_3 = L3_3(L4_3)
      if "started" == L3_3 then
        L3_3 = ClonedPedSit
        if L3_3 then
          L3_3 = DoesEntityExist
          L4_3 = ClonedPedSit
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = canPlacePeds
            L3_3 = L3_3()
            if L3_3 then
              L3_3 = GetEntityCoords
              L4_3 = ClonedPedSit
              L3_3 = L3_3(L4_3)
              L4_3 = GetEntityRotation
              L5_3 = ClonedPedSit
              L4_3 = L4_3(L5_3)
              L5_3 = IsEntityPlayingAnim
              L6_3 = ClonedPedSit
              L7_3 = lastAnimApplied
              L7_3 = L7_3.dict
              L8_3 = lastAnimApplied
              L8_3 = L8_3.name
              L9_3 = 3
              L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
              if not L5_3 then
                lastAnimApplied = nil
                lastAnimName = nil
                L5_3 = print
                L6_3 = "Not playing correct anim."
                L5_3(L6_3)
              end
              L5_3 = TriggerServerEvent
              L6_3 = "placer:addpool"
              L7_3 = modelloAttesa
              L8_3 = L3_3.x
              L9_3 = L3_3.y
              L10_3 = L3_3.z
              L11_3 = L4_3.x
              L12_3 = L4_3.y
              L13_3 = L4_3.z
              L14_3 = true
              L15_3 = 0
              L16_3 = -1
              L17_3 = true
              L18_3 = lastAnimApplied
              L19_3 = lastPropsApplied
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
              L5_3 = exports
              L5_3 = L5_3.striano_ridehorse
              L6_3 = L5_3
              L5_3 = L5_3.ShowInstructionalButtonsTimed
              L7_3 = "Ped added on striano_editor."
              L5_3(L6_3, L7_3)
              L5_3 = PlaySoundFrontend
              L6_3 = -1
              L7_3 = "MP_RANK_UP"
              L8_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              L9_3 = 0
              L5_3(L6_3, L7_3, L8_3, L9_3)
            end
          end
        end
      else
        L3_3 = exports
        L3_3 = L3_3.striano_ridehorse
        L4_3 = L3_3
        L3_3 = L3_3.ShowInstructionalButtonsTimed
        L5_3 = "Error: striano_editor not started to save a ped."
        L3_3(L4_3, L5_3)
      end
      ::lbl_380::
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
          goto lbl_476
        end
      end
      L3_3 = DoesEntityExist
      L4_3 = GhostObjSit
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = SetTrackedEntity
        L4_3 = L0_3
        L3_3(L4_3)
        L3_3 = StartOrbitCam
        L4_3 = vector3
        L5_3 = 0.0
        L6_3 = 0.0
        L7_3 = 0.5
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        L5_3 = L0_3
        L3_3(L4_3, L5_3)
        L3_3 = SetEntityAsMissionEntity
        L4_3 = GhostObjSit
        L3_3(L4_3)
        L3_3 = DeleteEntity
        L4_3 = GhostObjSit
        L3_3(L4_3)
        GhostObjSit = nil
        L3_3 = onCamUnlock
        L3_3()
      end
      L3_3 = AttachEntityToEntity
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = A0_2
      L6_3 = L1_3
      L7_3 = VX
      L8_3 = VY
      L9_3 = VZ
      L10_3 = VRX
      L11_3 = VRY
      L12_3 = VR
      L13_3 = false
      L14_3 = true
      L15_3 = false
      L16_3 = true
      L17_3 = 2
      L18_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L3_3 = ClonedPedSit
      if L3_3 then
        L3_3 = DoesEntityExist
        L4_3 = ClonedPedSit
        L3_3 = L3_3(L4_3)
        if L3_3 then
          L3_3 = SetEntityAsMissionEntity
          L4_3 = ClonedPedSit
          L3_3(L4_3)
          L3_3 = DeleteEntity
          L4_3 = ClonedPedSit
          L3_3(L4_3)
          ClonedPedSit = nil
        end
      end
      L3_3 = StartOrbitCam
      L4_3 = vector3
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 0.0
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = PlayerPedId
      L5_3 = L5_3()
      L6_3 = 2
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = SetEntityAlpha
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = 255
      L3_3(L4_3, L5_3)
      L3_3 = lastAnimName
      if nil ~= L3_3 then
        L3_3 = ExecuteCommand
        L4_3 = "e "
        L5_3 = lastAnimName
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
      end
      L3_3 = LoopSitSospeso
      L3_3()
      do return end
      ::lbl_476::
      L3_3 = IsControlJustReleased
      L4_3 = 0
      L5_3 = 73
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlJustReleased
        L4_3 = 0
        L5_3 = 73
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          goto lbl_502
        end
      end
      L3_3 = GetEntitySpeed
      L4_3 = A0_2
      L3_3 = L3_3(L4_3)
      if L3_3 < 5.0 then
        L3_3 = premutoUnaVolta
        if L3_3 then
          L3_3 = AnnullaSit
          L3_3()
          return
        end
      end
      L3_3 = CreateThread
      function L4_3()
        local L0_4, L1_4
        L0_4 = premutoUnaVolta
        if not L0_4 then
          premutoUnaVolta = true
        end
        L0_4 = Wait
        L1_4 = 1000
        L0_4(L1_4)
        premutoUnaVolta = false
      end
      L3_3(L4_3)
      ::lbl_502::
      L3_3 = IsDisabledControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if L3_3 then
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 32
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = VZ
          L3_3 = L3_3 + 0.005
          VZ = L3_3
          L3_3 = DetachEntity
          L4_3 = L0_3
          L5_3 = true
          L6_3 = true
          L3_3(L4_3, L5_3, L6_3)
          L3_3 = AttachEntityToEntity
          L4_3 = L0_3
          L5_3 = A0_2
          L6_3 = L1_3
          L7_3 = VX
          L8_3 = VY
          L9_3 = VZ
          L10_3 = VRX
          L11_3 = VRY
          L12_3 = VR
          L13_3 = false
          L14_3 = true
          L15_3 = false
          L16_3 = true
          L17_3 = 2
          L18_3 = true
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        end
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 33
        L3_3 = L3_3(L4_3, L5_3)
        if L3_3 then
          L3_3 = VZ
          L3_3 = L3_3 - 0.005
          VZ = L3_3
          L3_3 = DetachEntity
          L4_3 = L0_3
          L5_3 = true
          L6_3 = true
          L3_3(L4_3, L5_3, L6_3)
          L3_3 = AttachEntityToEntity
          L4_3 = L0_3
          L5_3 = A0_2
          L6_3 = L1_3
          L7_3 = VX
          L8_3 = VY
          L9_3 = VZ
          L10_3 = VRX
          L11_3 = VRY
          L12_3 = VR
          L13_3 = false
          L14_3 = true
          L15_3 = false
          L16_3 = true
          L17_3 = 2
          L18_3 = true
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
        end
        L3_3 = 1.0
        L4_3 = IsDisabledControlPressed
        L5_3 = 0
        L6_3 = 34
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L4_3 = VR
          L4_3 = L4_3 + L3_3
          VR = L4_3
          L4_3 = VR
          L5_3 = 360.0
          if L4_3 > L5_3 then
            VR = 0.0
          end
          L4_3 = DetachEntity
          L5_3 = L0_3
          L6_3 = true
          L7_3 = true
          L4_3(L5_3, L6_3, L7_3)
          L4_3 = AttachEntityToEntity
          L5_3 = L0_3
          L6_3 = A0_2
          L7_3 = L1_3
          L8_3 = VX
          L9_3 = VY
          L10_3 = VZ
          L11_3 = VRX
          L12_3 = VRY
          L13_3 = VR
          L14_3 = false
          L15_3 = true
          L16_3 = false
          L17_3 = true
          L18_3 = 2
          L19_3 = true
          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        else
          L4_3 = IsDisabledControlPressed
          L5_3 = 0
          L6_3 = 35
          L4_3 = L4_3(L5_3, L6_3)
          if L4_3 then
            L4_3 = VR
            L4_3 = L4_3 - L3_3
            VR = L4_3
            L4_3 = VR
            if L4_3 < 0.0 then
              VR = 360.0
            end
            L4_3 = DetachEntity
            L5_3 = L0_3
            L6_3 = true
            L7_3 = true
            L4_3(L5_3, L6_3, L7_3)
            L4_3 = AttachEntityToEntity
            L5_3 = L0_3
            L6_3 = A0_2
            L7_3 = L1_3
            L8_3 = VX
            L9_3 = VY
            L10_3 = VZ
            L11_3 = VRX
            L12_3 = VRY
            L13_3 = VR
            L14_3 = false
            L15_3 = true
            L16_3 = false
            L17_3 = true
            L18_3 = 2
            L19_3 = true
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
          end
        end
      end
      L3_3 = IsDisabledControlPressed
      L4_3 = 0
      L5_3 = 155
      L3_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 34
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VX
            L3_3 = L3_3 - 0.01
            VX = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 35
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VX
            L3_3 = L3_3 + 0.01
            VX = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
        else
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 34
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VRX
            L3_3 = L3_3 - 0.1
            VRX = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 35
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VRX
            L3_3 = L3_3 + 0.1
            VRX = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
        end
        L3_3 = IsDisabledControlPressed
        L4_3 = 0
        L5_3 = 22
        L3_3 = L3_3(L4_3, L5_3)
        if not L3_3 then
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 32
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VY
            L3_3 = L3_3 + 0.01
            VY = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 33
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VY
            L3_3 = L3_3 - 0.01
            VY = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
        else
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 32
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VRY
            L3_3 = L3_3 + 0.25
            VRY = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
          L3_3 = IsDisabledControlPressed
          L4_3 = 0
          L5_3 = 33
          L3_3 = L3_3(L4_3, L5_3)
          if L3_3 then
            L3_3 = VRY
            L3_3 = L3_3 - 0.25
            VRY = L3_3
            L3_3 = DetachEntity
            L4_3 = L0_3
            L5_3 = true
            L6_3 = true
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = AttachEntityToEntity
            L4_3 = L0_3
            L5_3 = A0_2
            L6_3 = L1_3
            L7_3 = VX
            L8_3 = VY
            L9_3 = VZ
            L10_3 = VRX
            L11_3 = VRY
            L12_3 = VR
            L13_3 = false
            L14_3 = true
            L15_3 = false
            L16_3 = true
            L17_3 = 2
            L18_3 = true
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
          end
        end
        L3_3 = onCopyLoop
        L3_3()
      end
    end
  end
  L2_2(L3_2)
end
UpdateAttaccatoVeicolo = L0_1
possofaresit = true
modelloAttesa = nil
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = possofaresit
  if not L3_2 then
    L3_2 = print
    L4_2 = "Sit blocked for antiflood."
    L3_2(L4_2)
    return
  end
  if nil ~= A2_2 then
    L3_2 = IsModelInCdimage
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = IsModelValid
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = GetHashKey
        L4_2 = A2_2
        L3_2 = L3_2(L4_2)
        modelloAttesa = L3_2
    end
  end
  else
    modelloAttesa = nil
  end
  possofaresit = false
  L3_2 = RequestCollisionAtCoord
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = RequestModelStriano
  L4_2 = -1296774200
  L3_2(L4_2)
  L3_2 = CreateObjectNoOffset
  L4_2 = -1296774200
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L7_2 = L7_2 - 1.005
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  while true do
    L4_2 = HasCollisionLoadedAroundEntity
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = RequestCollisionAtCoord
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L7_2 = A0_2.z
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = SetEntityVisible
  L5_2 = L3_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityAlpha
  L5_2 = L3_2
  L6_2 = 0
  L4_2(L5_2, L6_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityCollision
  L5_2 = L3_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = L3_2
  L6_2 = true
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityCoords
  L5_2 = L3_2
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetEntityHeading
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  mioRC = L3_2
  L4_2 = RequestCollisionAtCoord
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Wait
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = ExecuteCommand
  L5_2 = CommandName2
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = -1296774200
  L4_2(L5_2)
  possofaresit = true
end
creaVeicolo = L0_1
L0_1 = RegisterCommand
L1_1 = CommandName
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = canGoOn
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = mioRC
    if nil ~= L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = mioRC
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = SetEntityAsMissionEntity
        L3_2 = mioRC
        L2_2(L3_2)
        L2_2 = DeleteObject
        L3_2 = mioRC
        L2_2(L3_2)
        mioRC = nil
      end
    end
    fattoSIT = true
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = creaVeicolo
    L4_2 = GetEntityCoords
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetEntityHeading
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = A1_2[1]
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
CheckClimb = false
checkCaduta = false
L0_1 = ParkourMode
if L0_1 then
  L0_1 = CreateThread
  function L1_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
    while true do
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = IsPedInAnyVehicle
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = GetEntitySpeed
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = 0.1
        if L1_2 > L2_2 then
          L1_2 = canParkour
          L1_2 = L1_2()
          if L1_2 then
            L1_2 = CheckClimb
            if not L1_2 then
              L1_2 = IsControlPressed
              L2_2 = 0
              L3_2 = 22
              L1_2 = L1_2(L2_2, L3_2)
              if L1_2 then
                L1_2 = canParkur
                L1_2 = L1_2()
                if L1_2 then
                  L1_2 = checkCaduta
                  if not L1_2 then
                    L1_2 = IsPedJumping
                    L2_2 = L0_2
                    L1_2 = L1_2(L2_2)
                    if L1_2 then
                      checkCaduta = true
                      L1_2 = SetPlayerFallDistance
                      L2_2 = PlayerId
                      L2_2 = L2_2()
                      L3_2 = 1000.0
                      L1_2(L2_2, L3_2)
                    end
                  end
                  L1_2 = IsPedFalling
                  L2_2 = L0_2
                  L1_2 = L1_2(L2_2)
                  if L1_2 then
                    L1_2 = IsPedClimbing
                    L2_2 = L0_2
                    L1_2 = L1_2(L2_2)
                    if not L1_2 then
                      L1_2 = IsPedJumping
                      L2_2 = L0_2
                      L1_2 = L1_2(L2_2)
                      if L1_2 then
                        L1_2 = IsPedRagdoll
                        L2_2 = L0_2
                        L1_2 = L1_2(L2_2)
                        if not L1_2 then
                          L1_2 = canParkur
                          L1_2 = L1_2()
                          if L1_2 then
                            L1_2 = TaskClimb
                            L2_2 = L0_2
                            L3_2 = 0
                            L1_2(L2_2, L3_2)
                            CheckClimb = true
                          end
                        end
                      end
                    end
                  end
                end
              else
                L1_2 = IsPedClimbing
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = checkCaduta
                  if L1_2 then
                    L1_2 = canParkur
                    L1_2 = L1_2()
                    if L1_2 then
                      L1_2 = SetPlayerFallDistance
                      L2_2 = PlayerId
                      L2_2 = L2_2()
                      L3_2 = 8.0
                      L1_2(L2_2, L3_2)
                      checkCaduta = false
                  end
                end
                else
                  L1_2 = Wait
                  L2_2 = 1000
                  L1_2(L2_2)
                end
              end
            else
              L1_2 = IsEntityPlayingAnim
              L2_2 = L0_2
              L3_2 = "random@peyote@bird"
              L4_2 = "wakeup"
              L5_2 = 3
              L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
              if L1_2 then
                goto lbl_158
              end
              L1_2 = canParkur
              L1_2 = L1_2()
              if not L1_2 then
                goto lbl_158
              end
              while true do
                L1_2 = IsPedFalling
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = IsPedClimbing
                  L2_2 = L0_2
                  L1_2 = L1_2(L2_2)
                  if not L1_2 then
                    L1_2 = IsPedRagdoll
                    L2_2 = L0_2
                    L1_2 = L1_2(L2_2)
                    if not L1_2 then
                      break
                    end
                  end
                end
                L1_2 = Wait
                L2_2 = 0
                L1_2(L2_2)
              end
              L1_2 = IsEntityInWater
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = IsPedSwimming
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = IsPedSwimmingUnderWater
                  L2_2 = L0_2
                  L1_2 = L1_2(L2_2)
                  if not L1_2 then
                    CheckClimb = false
                    L1_2 = SetPlayerFallDistance
                    L2_2 = PlayerId
                    L2_2 = L2_2()
                    L3_2 = 8.0
                    L1_2(L2_2, L3_2)
                    checkCaduta = false
                  end
                end
              end
            end
        end
      end
      else
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
      ::lbl_158::
    end
  end
  L0_1(L1_1)
end
