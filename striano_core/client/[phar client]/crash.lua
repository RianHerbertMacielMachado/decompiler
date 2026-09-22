local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1
velenoattivo = true
L0_1 = RegisterCommand
L1_1 = "veleno"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = velenoattivo
  L0_2 = not L0_2
  velenoattivo = L0_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "1st_Person_Transition"
  L3_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = velenoattivo
  if L0_2 then
    L0_2 = print
    L1_2 = "Sistema veleno attivo."
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "Sistema veleno disattivo."
    L0_2(L1_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = {}
ServerCallbacks = L0_1
CurrentRequestId = 0
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CurrentRequestId
  L2_2 = L2_2 + 1
  CurrentRequestId = L2_2
  L2_2 = CurrentRequestId
  L3_2 = 65535
  if L2_2 > L3_2 then
    CurrentRequestId = 0
  end
  L2_2 = ServerCallbacks
  L3_2 = CurrentRequestId
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = "standalone_callback:trigger"
  L4_2 = A0_2
  L5_2 = CurrentRequestId
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
TriggerServerCallback = L0_1
L0_1 = exports
L1_1 = "TriggerServerCallback"
L2_1 = TriggerServerCallback
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "standalone_callback:return"
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = ServerCallbacks
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = ServerCallbacks
    L2_2[A0_2] = nil
    L2_2 = L1_2
    L3_2 = ...
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = 0.35
  if A4_2 then
    L5_2 = A4_2
  end
  L6_2 = ""
  L7_2 = A3_2
  L8_2 = ""
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = SetTextScale
  L8_2 = L5_2
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = SetTextFont
  L8_2 = IDFONT
  L7_2(L8_2)
  L7_2 = SetTextOutline
  L7_2()
  L7_2 = SetTextProportional
  L8_2 = 1
  L7_2(L8_2)
  L7_2 = SetTextColour
  L8_2 = 255
  L9_2 = 255
  L10_2 = 255
  L11_2 = 215
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetTextEntry
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = SetTextCentre
  L8_2 = true
  L7_2(L8_2)
  L7_2 = AddTextComponentString
  L8_2 = L6_2
  L7_2(L8_2)
  L7_2 = SetDrawOrigin
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = DrawText
  L8_2 = 0.0
  L9_2 = 0.0
  L7_2(L8_2, L9_2)
  L7_2 = ClearDrawOrigin
  L7_2()
end
DrawText3D = L0_1
function L0_1(A0_2)
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
RequestModelStriano = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = HasAnimDictLoaded
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestAnimDict
    L6_2 = A0_2
    L5_2(L6_2)
    while true do
      L5_2 = HasAnimDictLoaded
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 10
      L5_2(L6_2)
    end
  end
  L5_2 = IsEntityPlayingAnim
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = PlayerPedId
    L6_2 = L6_2()
  end
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if not L5_2 then
    L5_2 = TaskPlayAnim
    L6_2 = A4_2 or L6_2
    if not A4_2 then
      L6_2 = PlayerPedId
      L6_2 = L6_2()
    end
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
      L12_2 = 1
    end
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
faiAnim = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = A1_2 * A1_2
  L4_2 = FindFirstVehicle
  L4_2, L5_2 = L4_2()
  L6_2 = nil
  repeat
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = GetEntityCoords
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2.x
      L9_2 = A0_2.x
      L8_2 = L8_2 - L9_2
      L9_2 = L7_2.y
      L10_2 = A0_2.y
      L9_2 = L9_2 - L10_2
      L10_2 = L7_2.z
      L11_2 = A0_2.z
      L10_2 = L10_2 - L11_2
      L11_2 = L8_2 * L8_2
      L12_2 = L9_2 * L9_2
      L11_2 = L11_2 + L12_2
      L12_2 = L10_2 * L10_2
      L11_2 = L11_2 + L12_2
      if L3_2 >= L11_2 then
        L11_2 = #L2_2
        L11_2 = L11_2 + 1
        L2_2[L11_2] = L5_2
      end
    end
    L7_2 = FindNextVehicle
    L8_2 = L4_2
    L7_2, L8_2 = L7_2(L8_2)
    L5_2 = L8_2
    L6_2 = L7_2
  until not L6_2
  L7_2 = EndFindVehicle
  L8_2 = L4_2
  L7_2(L8_2)
  return L2_2
end
GetVehiclesInAreaStriano = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = StartShapeTestRay
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = 10
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetShapeTestResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  if 1 == L4_2 and 0 ~= L7_2 then
    L8_2 = IsEntityAVehicle
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      return L7_2
    end
  end
  L8_2 = fallbackDistance
  if L8_2 then
    L8_2 = nil
    L9_2 = fallbackDistance
    L10_2 = fallbackDistance
    L9_2 = L9_2 * L10_2
    L10_2 = ipairs
    L11_2 = GetGamePool
    L12_2 = "CVehicle"
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
      L16_2 = GetEntityCoords
      L17_2 = L15_2
      L16_2 = L16_2(L17_2)
      L17_2 = L16_2.x
      L18_2 = A0_2.x
      L17_2 = L17_2 - L18_2
      L18_2 = L16_2.y
      L19_2 = A0_2.y
      L18_2 = L18_2 - L19_2
      L19_2 = L16_2.z
      L20_2 = A0_2.z
      L19_2 = L19_2 - L20_2
      L20_2 = L17_2 * L17_2
      L21_2 = L18_2 * L18_2
      L20_2 = L20_2 + L21_2
      L21_2 = L19_2 * L19_2
      L20_2 = L20_2 + L21_2
      if L9_2 > L20_2 then
        L9_2 = L20_2
        L8_2 = L15_2
      end
    end
    return L8_2
  end
  L8_2 = nil
  return L8_2
end
GetVehicleInDirectionStriano = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "number" ~= L1_2 or not A0_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
  end
  L2_2 = IsModelValid
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = IsModelAPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = IsModelAVehicle
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = IsModelInCdimage
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = type
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if "string" == L0_3 then
      L0_3 = joaat
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        goto lbl_12
      end
    end
    L0_3 = A0_2
    ::lbl_12::
    L1_3 = IsModelInCdimage
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L0_1
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_33
      end
    end
    L1_3 = print
    L2_3 = "[SpawnObjectStandalone] modello non valido:"
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
    L1_3 = A2_2
    if L1_3 then
      L1_3 = A2_2
      L2_3 = nil
      L1_3(L2_3)
    end
    do return end
    ::lbl_33::
    L1_3 = RequestModel
    L2_3 = L0_3
    L1_3(L2_3)
    while true do
      L1_3 = HasModelLoaded
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = nil
    L2_3 = nil
    L3_3 = nil
    L4_3 = type
    L5_3 = A1_2
    L4_3 = L4_3(L5_3)
    if "vector3" == L4_3 then
      L4_3 = A1_2.x
      L5_3 = A1_2.y
      L3_3 = A1_2.z
      L2_3 = L5_3
      L1_3 = L4_3
    else
      L4_3 = A1_2.x
      L5_3 = A1_2.y
      L3_3 = A1_2.z
      L2_3 = L5_3
      L1_3 = L4_3
    end
    L4_3 = CreateObject
    L5_3 = L0_3
    L6_3 = L1_3
    L7_3 = L2_3
    L8_3 = L3_3
    L9_3 = true
    L10_3 = true
    L11_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L5_3 = SetModelAsNoLongerNeeded
    L6_3 = L0_3
    L5_3(L6_3)
    L5_3 = DoesEntityExist
    L6_3 = L4_3
    L5_3 = L5_3(L6_3)
    if L5_3 then
      L5_3 = SetEntityAsMissionEntity
      L6_3 = L4_3
      L7_3 = true
      L8_3 = true
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = A2_2
      if L5_3 then
        L5_3 = A2_2
        L6_3 = L4_3
        L5_3(L6_3)
      end
    else
      L5_3 = A2_2
      if L5_3 then
        L5_3 = A2_2
        L6_3 = nil
        L5_3(L6_3)
      end
    end
  end
  L3_2(L4_2)
end
SpawnObjectStriano = L1_1
L1_1 = RegisterNetEvent
L2_1 = "esx:spawnObject"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx:spawnObject"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
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
  L7_2 = SpawnObjectStriano
  L8_2 = A0_2
  L9_2 = {}
  L9_2.x = L4_2
  L9_2.y = L5_2
  L9_2.z = L6_2
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = SetEntityHeading
    L2_3 = A0_3
    L3_3 = GetEntityHeading
    L4_3 = L1_2
    L3_3, L4_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = PlaceObjectOnGroundProperly
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L7_2(L8_2, L9_2, L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "esx:spawnObject2"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "esx:spawnObject2"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetEntityForwardVector
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = L6_2 * 1.0
  L8_2 = L5_2 + L8_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L10_2 = SpawnObjectStriano
  L11_2 = A0_2
  L12_2 = {}
  L12_2.x = L7_2
  L12_2.y = L8_2
  L13_2 = L9_2 - 1.0
  L12_2.z = L13_2
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = Wait
    L2_3 = 100
    L1_3(L2_3)
    L1_3 = SetEntityRotation
    L2_3 = A0_3
    L3_3 = vector3
    L4_3 = A1_2
    L5_3 = A2_2
    L6_3 = A3_2
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3, L5_3, L6_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L10_2(L11_2, L12_2, L13_2)
end
L1_1(L2_1, L3_1)
function L1_1()
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
Giocatori = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = 0.0
  if nil == A0_2 then
    L1_2 = 3.0
  else
    L1_2 = A0_2
  end
  L2_2 = Giocatori
  L2_2 = L2_2()
  L3_2 = -1
  L4_2 = -1
  L5_2 = nil
  L6_2 = false
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = PlayerId
  L8_2 = L8_2()
  if nil == L5_2 then
    L6_2 = true
    L9_2 = GetEntityCoords
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L5_2 = L9_2
  end
  L9_2 = 1
  L10_2 = #L2_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = GetPlayerPed
    L14_2 = L2_2[L12_2]
    L13_2 = L13_2(L14_2)
    if L6_2 then
      if not L6_2 then
        goto lbl_57
      end
      L14_2 = L2_2[L12_2]
      if L14_2 == L8_2 then
        goto lbl_57
      end
    end
    L14_2 = GetEntityCoords
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L15_2 = vector3
    L16_2 = L5_2.x
    L17_2 = L5_2.y
    L18_2 = L5_2.z
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L15_2 = L14_2 - L15_2
    L15_2 = #L15_2
    if -1 == L3_2 or L3_2 > L15_2 and L1_2 > L15_2 then
      L4_2 = L2_2[L12_2]
      L3_2 = L15_2
    end
    ::lbl_57::
  end
  L9_2 = L4_2
  L10_2 = L3_2
  return L9_2, L10_2
end
PlayerVicino = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = nil
  if A2_2 then
    L4_2 = A2_2 * A2_2
    if L4_2 then
      goto lbl_10
    end
  end
  L4_2 = math
  L4_2 = L4_2.huge
  ::lbl_10::
  L5_2 = FindFirstPed
  L5_2, L6_2 = L5_2()
  L7_2 = nil
  repeat
    L8_2 = DoesEntityExist
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    if L8_2 and (not A1_2 or L6_2 ~= A1_2) then
      L8_2 = GetEntityCoords
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2.x
      L10_2 = A0_2.x
      L9_2 = L9_2 - L10_2
      L10_2 = L8_2.y
      L11_2 = A0_2.y
      L10_2 = L10_2 - L11_2
      L11_2 = L8_2.z
      L12_2 = A0_2.z
      L11_2 = L11_2 - L12_2
      L12_2 = L9_2 * L9_2
      L13_2 = L10_2 * L10_2
      L12_2 = L12_2 + L13_2
      L13_2 = L11_2 * L11_2
      L12_2 = L12_2 + L13_2
      if L4_2 > L12_2 then
        L4_2 = L12_2
        L3_2 = L6_2
      end
    end
    L8_2 = FindNextPed
    L9_2 = L5_2
    L8_2, L9_2 = L8_2(L9_2)
    L6_2 = L9_2
    L7_2 = L8_2
  until not L7_2
  L8_2 = EndFindPed
  L9_2 = L5_2
  L8_2(L9_2)
  if L3_2 then
    L8_2 = L3_2
    L9_2 = math
    L9_2 = L9_2.sqrt
    L10_2 = L4_2
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
    return L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  end
  L8_2 = nil
  L9_2 = nil
  return L8_2, L9_2
end
GetClosestPedStriano = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetPedCanPlayAmbientAnims
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = NetworkSetLocalPlayerSyncLookAt
  L1_2 = true
  L0_2(L1_2)
end
L1_1(L2_1)
L1_1 = vector3
L2_1 = 0.0
L3_1 = 0.0
L4_1 = 0.0
L1_1 = L1_1(L2_1, L3_1, L4_1)
L2_1 = 3500.0
L3_1 = vector3
L4_1 = 3823.576
L5_1 = 7261.78
L6_1 = 38.897
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = 0
function L5_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = L4_1
    if 0 == L1_2 then
      L1_2 = 5
      L4_1 = L1_2
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = L4_1
          if not (L0_3 > 0) then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = ClampGameplayCamPitch
          L1_3 = -9.0
          L2_3 = 90.0
          L0_3(L1_3, L2_3)
          L0_3 = ClampGameplayCamYaw
          L1_3 = -1.0
          L2_3 = 1.0
          L0_3(L1_3, L2_3)
          L0_3 = L4_1
          L0_3 = L0_3 - 1
          L4_1 = L0_3
        end
      end
      L1_2(L2_2)
    end
  else
    L1_2 = L4_1
    if L1_2 > 0 then
      L1_2 = 0
      L4_1 = L1_2
    end
  end
end
L6_1 = nil
L7_1 = false
L8_1 = false
L9_1 = RegisterNetEvent
L10_1 = "startSerpWater"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "startSerpWater"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = "sounds/worm"
  L1_2 = L0_2
  L2_2 = ".mp3"
  L1_2 = L1_2 .. L2_2
  L2_2 = exports
  L2_2 = L2_2.xsound
  L3_2 = L2_2
  L2_2 = L2_2.PlayUrl
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = 0.3
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "sounds/dragonroar"
  L5_2 = L4_2
  L6_2 = ".mp3"
  L5_2 = L5_2 .. L6_2
  L6_2 = exports
  L6_2 = L6_2.xsound
  L7_2 = L6_2
  L6_2 = L6_2.PlayUrlPos
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = 0.3
  L11_2 = GetEntityCoords
  L12_2 = L2_2
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = Wait
  L7_2 = 350
  L6_2(L7_2)
  L6_2 = ShakeGameplayCam
  L7_2 = "SMALL_EXPLOSION_SHAKE"
  L8_2 = 1.1
  L6_2(L7_2, L8_2)
  L6_2 = SetPedToRagdoll
  L7_2 = L2_2
  L8_2 = 9000
  L9_2 = 9000
  L10_2 = 0
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = PlayEffectTutorial
  L7_2 = "core"
  L8_2 = "exp_extinguisher"
  L9_2 = vector3
  L10_2 = L3_2.x
  L11_2 = L3_2.y
  L12_2 = L3_2.z
  L12_2 = L12_2 - 2.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = 1.5
  L11_2 = vector3
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 2500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L6_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L6_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2)
  L7_2 = PlayEffectTutorial
  L8_2 = "des_pro_tree_crash"
  L9_2 = "ent_ray_pro_tree_crash_snow"
  L10_2 = vector3
  L11_2 = L3_2.x
  L12_2 = L3_2.y
  L13_2 = L3_2.z
  L13_2 = L13_2 - 3.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = 1.5
  L12_2 = vector3
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2, L15_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 5500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L7_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L7_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 2500
  L8_2(L9_2)
  L8_2 = DoScreenFadeOut
  L9_2 = 1500
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 2000
  L8_2(L9_2)
  L8_2 = SetEntityCoords
  L9_2 = L2_2
  L10_2 = 3041.718
  L11_2 = 7511.073
  L12_2 = 10.637
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = Wait
  L9_2 = 500
  L8_2(L9_2)
  L8_2 = ExecuteCommand
  L9_2 = "vaiRagdoll"
  L8_2(L9_2)
  L8_2 = DoScreenFadeIn
  L9_2 = 2250
  L8_2(L9_2)
  while true do
    L8_2 = IsPedRagdoll
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  L8_2 = ExecuteCommand
  L9_2 = "e malditesta"
  L8_2(L9_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterCommand
L10_1 = "checkpioggia"
function L11_1()
  local L0_2, L1_2
  L0_2 = L7_1
  if L0_2 then
    L0_2 = print
    L1_2 = "Si, piove!"
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "Non piove."
    L0_2(L1_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "Piove"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Piove"
function L11_1(A0_2)
  local L1_2
  L7_1 = A0_2
end
L9_1(L10_1, L11_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
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
  L1_2 = DisableIdleCamera
  L2_2 = true
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 5000
  L1_2(L2_2)
  L1_2 = SetPedCanSwitchWeapon
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = true
  L8_1 = L1_2
  L1_2 = InitCrash
  L1_2()
end
L9_1(L10_1)
function L9_1()
  local L0_2, L1_2
  L0_2 = DisableWorldhorizonRendering
  L1_2 = true
  L0_2(L1_2)
end
InitCrash = L9_1
L9_1 = 50.0
L10_1 = {}
L11_1 = {}
L11_1.m = "a_m_m_farmer_01"
L12_1 = vector3
L13_1 = -1074.028
L14_1 = 4921.018
L15_1 = 212.349
L12_1 = L12_1(L13_1, L14_1, L15_1)
L11_1.p = L12_1
L11_1.h = 122.0
L12_1 = {}
L12_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L12_1.b = "clubvip_base_laz"
L12_1.tim = -1
L12_1.flag = 63
L11_1.an = L12_1
L12_1 = {}
L13_1 = vector3
L14_1 = -1075.324
L15_1 = 4813.806
L16_1 = 233.9
L13_1 = L13_1(L14_1, L15_1, L16_1)
L12_1.pos = L13_1
L12_1.h = 130.0
L13_1 = {}
L13_1.a = "bowdown@kneeling"
L13_1.b = "base"
L13_1.tim = -1
L13_1.flag = 2
L12_1.an = L13_1
L11_1.mattino = L12_1
L12_1 = {}
L13_1 = vector3
L14_1 = -1080.914
L15_1 = 4938.227
L16_1 = 232.322
L13_1 = L13_1(L14_1, L15_1, L16_1)
L12_1.pos = L13_1
L12_1.h = 0.0
L13_1 = {}
L13_1.a = "mp_cop_miss"
L13_1.b = "dazed"
L13_1.tim = -1
L13_1.flag = 1
L12_1.an = L13_1
L11_1.notte = L12_1
L12_1 = {}
L12_1.m = "a_m_o_ktown_01"
L13_1 = vector3
L14_1 = -1125.3
L15_1 = 4893.33
L16_1 = 217.472
L13_1 = L13_1(L14_1, L15_1, L16_1)
L12_1.p = L13_1
L12_1.h = 325.0
L13_1 = {}
L13_1.a = "amb@world_human_leaning@male@wall@back@foot_up@idle_a"
L13_1.b = "idle_a"
L13_1.tim = -1
L13_1.flag = 1
L12_1.an = L13_1
L13_1 = {}
L14_1 = vector3
L15_1 = -1129.849
L16_1 = 4895.662
L17_1 = 217.966
L14_1 = L14_1(L15_1, L16_1, L17_1)
L13_1.pos = L14_1
L13_1.h = 47.0
L14_1 = {}
L14_1.a = "amb@world_human_leaning@female@wall@back@hand_up@idle_a"
L14_1.b = "idle_a"
L14_1.tim = -1
L14_1.flag = 1
L13_1.an = L14_1
L12_1.mattino = L13_1
L13_1 = {}
L14_1 = vector3
L15_1 = -1119.685
L16_1 = 4889.945
L17_1 = 216.219
L14_1 = L14_1(L15_1, L16_1, L17_1)
L13_1.pos = L14_1
L13_1.h = 240.0
L14_1 = {}
L14_1.a = "switch@trevor@annoys_sunbathers"
L14_1.b = "trev_annoys_sunbathers_loop_girl"
L14_1.tim = -1
L14_1.flag = 1
L13_1.an = L14_1
L12_1.notte = L13_1
L13_1 = {}
L13_1.m = "a_m_y_beach_01"
L14_1 = vector3
L15_1 = -1104.231
L16_1 = 4891.882
L17_1 = 215.488
L14_1 = L14_1(L15_1, L16_1, L17_1)
L13_1.p = L14_1
L13_1.h = 75.0
L14_1 = {}
L14_1.a = "timetable@ron@ig_5_p3"
L14_1.b = "ig_5_p3_base"
L14_1.tim = -1
L14_1.flag = 1
L13_1.an = L14_1
L14_1 = {}
L15_1 = vector3
L16_1 = -1097.506
L17_1 = 4875.056
L18_1 = 217.509
L15_1 = L15_1(L16_1, L17_1, L18_1)
L14_1.pos = L15_1
L14_1.h = 157.0
L15_1 = {}
L15_1.a = "timetable@ron@ig_5_p3"
L15_1.b = "ig_5_p3_base"
L15_1.tim = -1
L15_1.flag = 1
L14_1.an = L15_1
L13_1.mattino = L14_1
L14_1 = {}
L15_1 = vector3
L16_1 = -1096.174
L17_1 = 4892.501
L18_1 = 215.528
L15_1 = L15_1(L16_1, L17_1, L18_1)
L14_1.pos = L15_1
L14_1.h = 64.0
L15_1 = {}
L15_1.a = "switch@trevor@annoys_sunbathers"
L15_1.b = "trev_annoys_sunbathers_loop_girl"
L15_1.tim = -1
L15_1.flag = 1
L14_1.an = L15_1
L13_1.notte = L14_1
L14_1 = {}
L14_1.m = "a_f_o_salton_01"
L15_1 = vector3
L16_1 = -1126.026
L17_1 = 4904.956
L18_1 = 217.535
L15_1 = L15_1(L16_1, L17_1, L18_1)
L14_1.p = L15_1
L14_1.h = 50.0
L15_1 = {}
L15_1.a = "anim@amb@business@coc@coc_unpack_cut@"
L15_1.b = "fullcut_cycle_v2_cokecutter"
L15_1.tim = -1
L15_1.flag = 1
L14_1.an = L15_1
L15_1 = {}
L16_1 = vector3
L17_1 = -1156.901
L18_1 = 4928.659
L19_1 = 221.642
L16_1 = L16_1(L17_1, L18_1, L19_1)
L15_1.pos = L16_1
L15_1.h = 93.0
L16_1 = {}
L16_1.a = "bowdown@kneeling"
L16_1.b = "base"
L16_1.tim = -1
L16_1.flag = 1
L15_1.an = L16_1
L14_1.mattino = L15_1
L15_1 = {}
L16_1 = vector3
L17_1 = -1131.515
L18_1 = 4954.249
L19_1 = 221.674
L16_1 = L16_1(L17_1, L18_1, L19_1)
L15_1.pos = L16_1
L15_1.h = 250.0
L16_1 = {}
L16_1.a = "switch@trevor@annoys_sunbathers"
L16_1.b = "trev_annoys_sunbathers_loop_girl"
L16_1.tim = -1
L16_1.flag = 1
L15_1.an = L16_1
L14_1.notte = L15_1
L15_1 = {}
L15_1.m = "a_f_m_eastsa_02"
L16_1 = vector3
L17_1 = -1064.244
L18_1 = 4930.611
L19_1 = 210.871
L16_1 = L16_1(L17_1, L18_1, L19_1)
L15_1.p = L16_1
L15_1.h = 332.0
L16_1 = {}
L16_1.a = "anim@amb@business@cfm@cfm_cut_sheets@"
L16_1.b = "load_and_tune_guilotine_v1_billcutter"
L16_1.tim = -1
L16_1.flag = 1
L15_1.an = L16_1
L16_1 = {}
L17_1 = vector3
L18_1 = -1061.42
L19_1 = 4929.724
L20_1 = 210.888
L17_1 = L17_1(L18_1, L19_1, L20_1)
L16_1.pos = L17_1
L16_1.h = 314.0
L17_1 = {}
L17_1.a = "anim@amb@business@cfm@cfm_cut_sheets@"
L17_1.b = "load_and_tune_guilotine_v1_billcutter"
L17_1.tim = -1
L17_1.flag = 1
L16_1.an = L17_1
L15_1.mattino = L16_1
L16_1 = {}
L17_1 = vector3
L18_1 = -1064.7
L19_1 = 4930.323
L20_1 = 210.871
L17_1 = L17_1(L18_1, L19_1, L20_1)
L16_1.pos = L17_1
L16_1.h = 155.0
L17_1 = {}
L17_1.a = "anim@amb@business@cfm@cfm_cut_sheets@"
L17_1.b = "load_and_tune_guilotine_v1_billcutter"
L17_1.tim = -1
L17_1.flag = 1
L16_1.an = L17_1
L15_1.notte = L16_1
L16_1 = {}
L16_1.m = "a_c_deer"
L17_1 = vector3
L18_1 = -1073.055
L19_1 = 4923.459
L20_1 = 212.206
L17_1 = L17_1(L18_1, L19_1, L20_1)
L16_1.p = L17_1
L16_1.h = 85.0
L17_1 = {}
L17_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L17_1.b = "idle_b"
L17_1.tim = -1
L17_1.flag = 1
L16_1.an = L17_1
L17_1 = {}
L17_1.m = "a_m_m_farmer_01"
L18_1 = vector3
L19_1 = -1004.152
L20_1 = 5047.701
L21_1 = 174.93
L18_1 = L18_1(L19_1, L20_1, L21_1)
L17_1.p = L18_1
L17_1.h = 274.0
L18_1 = {}
L18_1.a = "timetable@ron@ig_3_couch"
L18_1.b = "base"
L18_1.tim = -1
L18_1.flag = 1
L17_1.an = L18_1
L18_1 = {}
L18_1.m = "donkey"
L19_1 = vector3
L20_1 = -1002.37
L21_1 = 5050.177
L22_1 = 174.552
L19_1 = L19_1(L20_1, L21_1, L22_1)
L18_1.p = L19_1
L18_1.h = 285.0
L19_1 = {}
L19_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L19_1.b = "idle_b"
L19_1.tim = -1
L19_1.flag = 1
L18_1.an = L19_1
L19_1 = {}
L19_1.m = "a_f_o_indian_01"
L20_1 = vector3
L21_1 = 487.202
L22_1 = 5546.342
L23_1 = 784.536
L20_1 = L20_1(L21_1, L22_1, L23_1)
L19_1.p = L20_1
L19_1.h = 50.0
L20_1 = {}
L20_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L20_1.b = "clubvip_base_laz"
L20_1.tim = -1
L20_1.flag = 63
L19_1.an = L20_1
L20_1 = {}
L21_1 = vector3
L22_1 = 474.387
L23_1 = 5602.67
L24_1 = 787.729
L21_1 = L21_1(L22_1, L23_1, L24_1)
L20_1.pos = L21_1
L20_1.h = 88.0
L21_1 = {}
L21_1.a = "bowdown@kneeling"
L21_1.b = "base"
L21_1.tim = -1
L21_1.flag = 2
L20_1.an = L21_1
L19_1.mattino = L20_1
L20_1 = {}
L21_1 = vector3
L22_1 = 480.227
L23_1 = 5637.244
L24_1 = 781.953
L21_1 = L21_1(L22_1, L23_1, L24_1)
L20_1.pos = L21_1
L20_1.h = 254.0
L21_1 = {}
L21_1.a = "mp_cop_miss"
L21_1.b = "dazed"
L21_1.tim = -1
L21_1.flag = 1
L20_1.an = L21_1
L19_1.notte = L20_1
L20_1 = {}
L20_1.m = "a_m_o_acult_02"
L21_1 = vector3
L22_1 = 484.312
L23_1 = 5551.686
L24_1 = 784.616
L21_1 = L21_1(L22_1, L23_1, L24_1)
L20_1.p = L21_1
L20_1.h = 240.0
L21_1 = {}
L21_1.a = "timetable@maid@couch@"
L21_1.b = "base"
L21_1.tim = -1
L21_1.flag = 1
L20_1.an = L21_1
L21_1 = {}
L22_1 = vector3
L23_1 = 507.719
L24_1 = 5579.969
L25_1 = 788.531
L22_1 = L22_1(L23_1, L24_1, L25_1)
L21_1.pos = L22_1
L21_1.h = 230.0
L22_1 = {}
L22_1.a = "anim@amb@business@bgen@bgen_no_work@"
L22_1.b = "sit_phone_phoneputdown_sleeping-noworkfemale"
L22_1.tim = -1
L22_1.flag = 1
L21_1.an = L22_1
L20_1.notte = L21_1
L21_1 = {}
L22_1 = vector3
L23_1 = 453.021
L24_1 = 5588.167
L25_1 = 780.249
L22_1 = L22_1(L23_1, L24_1, L25_1)
L21_1.pos = L22_1
L21_1.h = 180.0
L22_1 = {}
L22_1.a = "safe@franklin@ig_13"
L22_1.b = "base"
L22_1.tim = -1
L22_1.flag = 1
L21_1.an = L22_1
L20_1.mattino = L21_1
L21_1 = {}
L21_1.m = "a_m_o_beach_01"
L22_1 = vector3
L23_1 = 482.034
L24_1 = 5543.936
L25_1 = 784.786
L22_1 = L22_1(L23_1, L24_1, L25_1)
L21_1.p = L22_1
L21_1.h = 353.0
L22_1 = {}
L22_1.a = "timetable@ron@ron_ig_2_alt1"
L22_1.b = "ig_2_alt1_base"
L22_1.tim = -1
L22_1.flag = 1
L21_1.an = L22_1
L22_1 = {}
L23_1 = vector3
L24_1 = 500.898
L25_1 = 5630.87
L26_1 = 792.198
L23_1 = L23_1(L24_1, L25_1, L26_1)
L22_1.pos = L23_1
L22_1.h = 17.0
L23_1 = {}
L23_1.a = "timetable@amanda@ig_12"
L23_1.b = "amanda_base"
L23_1.tim = -1
L23_1.flag = 1
L22_1.an = L23_1
L21_1.mattino = L22_1
L22_1 = {}
L23_1 = vector3
L24_1 = 488.24
L25_1 = 5639.591
L26_1 = 789.912
L23_1 = L23_1(L24_1, L25_1, L26_1)
L22_1.pos = L23_1
L22_1.h = 94.0
L23_1 = {}
L23_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L23_1.b = "clubvip_base_laz"
L23_1.tim = -1
L23_1.flag = 1
L22_1.an = L23_1
L21_1.notte = L22_1
L22_1 = {}
L22_1.m = "a_m_m_farmer_01"
L23_1 = vector3
L24_1 = 477.436
L25_1 = 5545.066
L26_1 = 784.681
L23_1 = L23_1(L24_1, L25_1, L26_1)
L22_1.p = L23_1
L22_1.h = 187.0
L23_1 = {}
L23_1.a = "timetable@amanda@ig_12"
L23_1.b = "amanda_base"
L23_1.tim = -1
L23_1.flag = 1
L22_1.an = L23_1
L23_1 = {}
L24_1 = vector3
L25_1 = 488.238
L26_1 = 5640.174
L27_1 = 789.912
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.pos = L24_1
L23_1.h = 94.0
L24_1 = {}
L24_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L24_1.b = "clubvip_base_laz"
L24_1.tim = -1
L24_1.flag = 1
L23_1.an = L24_1
L22_1.mattino = L23_1
L23_1 = {}
L24_1 = vector3
L25_1 = 488.238
L26_1 = 5640.174
L27_1 = 789.912
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.pos = L24_1
L23_1.h = 94.0
L24_1 = {}
L24_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L24_1.b = "clubvip_base_laz"
L24_1.tim = -1
L24_1.flag = 1
L23_1.an = L24_1
L22_1.notte = L23_1
L23_1 = {}
L24_1 = vector3
L25_1 = 448.679
L26_1 = 5569.017
L27_1 = 780.189
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.pos = L24_1
L23_1.h = 270.0
L24_1 = {}
L24_1.a = "random@shop_tattoo"
L24_1.b = "_idle_a"
L24_1.tim = -1
L24_1.flag = 1
L23_1.an = L24_1
L22_1.pioggia = L23_1
L23_1 = {}
L23_1.m = "g_m_m_korboss_01"
L24_1 = vector3
L25_1 = 478.771
L26_1 = 5538.859
L27_1 = 783.886
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.p = L24_1
L24_1 = vector3
L25_1 = 32.0
L26_1 = 0.0
L27_1 = 68.875
L24_1 = L24_1(L25_1, L26_1, L27_1)
L23_1.rot = L24_1
L24_1 = {}
L24_1.a = "anim@amb@office@seating@male@var_d@base@"
L24_1.b = "base"
L24_1.tim = -1
L24_1.flag = 1
L23_1.an = L24_1
L24_1 = {}
L25_1 = vector3
L26_1 = 497.971
L27_1 = 5519.159
L28_1 = 776.536
L25_1 = L25_1(L26_1, L27_1, L28_1)
L24_1.pos = L25_1
L24_1.h = 170.0
L25_1 = {}
L25_1.a = "martial_art_combos_p1@anim"
L25_1.b = "jihon_1"
L25_1.tim = -1
L25_1.flag = 1
L24_1.an = L25_1
L23_1.mattino = L24_1
L24_1 = {}
L25_1 = vector3
L26_1 = 488.322
L27_1 = 5641.031
L28_1 = 789.912
L25_1 = L25_1(L26_1, L27_1, L28_1)
L24_1.pos = L25_1
L24_1.h = 94.0
L25_1 = {}
L25_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L25_1.b = "clubvip_base_laz"
L25_1.tim = -1
L25_1.flag = 1
L24_1.an = L25_1
L23_1.notte = L24_1
L24_1 = {}
L25_1 = vector3
L26_1 = 449.897
L27_1 = 5569.145
L28_1 = 780.189
L25_1 = L25_1(L26_1, L27_1, L28_1)
L24_1.pos = L25_1
L24_1.h = 100.0
L25_1 = {}
L25_1.a = "misscarsteal4@actor"
L25_1.b = "actor_berating_loop"
L25_1.tim = -1
L25_1.flag = 1
L24_1.an = L25_1
L23_1.pioggia = L24_1
L24_1 = {}
L24_1.m = "a_c_deer"
L25_1 = vector3
L26_1 = 510.921
L27_1 = 5563.691
L28_1 = 781.654
L25_1 = L25_1(L26_1, L27_1, L28_1)
L24_1.p = L25_1
L24_1.h = 130.0
L25_1 = {}
L25_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L25_1.b = "idle_b"
L25_1.tim = -1
L25_1.flag = 1
L24_1.an = L25_1
L25_1 = {}
L25_1.m = "Donkey"
L26_1 = vector3
L27_1 = 475.102
L28_1 = 5544.854
L29_1 = 784.521
L26_1 = L26_1(L27_1, L28_1, L29_1)
L25_1.p = L26_1
L25_1.h = 260.0
L26_1 = {}
L26_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L26_1.b = "idle_b"
L26_1.tim = -1
L26_1.flag = 1
L25_1.an = L26_1
L26_1 = {}
L26_1.m = "a_c_cow"
L27_1 = vector3
L28_1 = 484.309
L29_1 = 5551.059
L30_1 = 784.501
L27_1 = L27_1(L28_1, L29_1, L30_1)
L26_1.p = L27_1
L26_1.h = 315.0
L27_1 = {}
L27_1.m = "hc_driver"
L28_1 = vector3
L29_1 = 415.785
L30_1 = 5575.903
L31_1 = 776.063
L28_1 = L28_1(L29_1, L30_1, L31_1)
L27_1.p = L28_1
L27_1.h = 332.0
L28_1 = {}
L28_1.a = "mini@repair"
L28_1.b = "fixing_a_ped"
L28_1.tim = -1
L28_1.flag = 63
L27_1.an = L28_1
L28_1 = {}
L29_1 = vector3
L30_1 = 480.399
L31_1 = 5623.928
L32_1 = 788.69
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.pos = L29_1
L28_1.h = 92.0
L29_1 = {}
L29_1.a = "amb@prop_human_bum_shopping_cart@male@idle_a"
L29_1.b = "idle_c"
L29_1.tim = -1
L29_1.flag = 1
L28_1.an = L29_1
L27_1.mattino = L28_1
L28_1 = {}
L29_1 = vector3
L30_1 = 441.079
L31_1 = 5580.594
L32_1 = 791.45
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.pos = L29_1
L29_1 = vector3
L30_1 = -22.0
L31_1 = 0.0
L32_1 = 87.791
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.rot = L29_1
L29_1 = {}
L29_1.a = "anim@amb@office@seating@male@var_d@base@"
L29_1.b = "base"
L29_1.tim = -1
L29_1.flag = 1
L28_1.an = L29_1
L27_1.notte = L28_1
L28_1 = {}
L29_1 = vector3
L30_1 = 448.252
L31_1 = 5575.393
L32_1 = 780.189
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.pos = L29_1
L29_1 = 175.0
L28_1.h = L29_1
L29_1 = {}
L30_1 = "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a"
L29_1.a = L30_1
L29_1.b = "idle_a"
L29_1.tim = -1
L29_1.flag = 1
L28_1.an = L29_1
L27_1.pioggia = L28_1
L28_1 = {}
L28_1.m = "hc_driver"
L29_1 = vector3
L30_1 = 404.116
L31_1 = 5576.047
L32_1 = 748.284
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.p = L29_1
L29_1 = vector3
L30_1 = 21.0
L31_1 = 0.0
L32_1 = 89.836
L29_1 = L29_1(L30_1, L31_1, L32_1)
L28_1.rot = L29_1
L29_1 = {}
L30_1 = "rcmnigel1bnmt_1b"
L29_1.a = L30_1
L30_1 = "base_girl"
L29_1.b = L30_1
L29_1.tim = -1
L29_1.flag = 1
L28_1.an = L29_1
L29_1 = {}
L30_1 = vector3
L31_1 = 420.143
L32_1 = 5545.977
L33_1 = 756.181
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.pos = L30_1
L30_1 = 177.0
L29_1.h = L30_1
L30_1 = {}
L31_1 = "timetable@floyd@clean_kitchen@base"
L30_1.a = L31_1
L30_1.b = "base"
L30_1.tim = -1
L30_1.flag = 1
L29_1.an = L30_1
L28_1.mattino = L29_1
L29_1 = {}
L30_1 = vector3
L31_1 = 448.726
L32_1 = 5566.005
L33_1 = 795.122
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.pos = L30_1
L30_1 = vector3
L31_1 = 4.0
L32_1 = -20.0
L33_1 = -1.981
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.rot = L30_1
L30_1 = {}
L31_1 = "amb@lo_res_idles@"
L30_1.a = L31_1
L31_1 = "world_human_bum_slumped_right_lo_res_base"
L30_1.b = L31_1
L30_1.tim = -1
L30_1.flag = 1
L29_1.an = L30_1
L28_1.notte = L29_1
L29_1 = {}
L30_1 = vector3
L31_1 = 403.367
L32_1 = 5555.634
L33_1 = 748.452
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.pos = L30_1
L29_1.h = 94.0
L30_1 = {}
L31_1 = "bowdown@upwards"
L30_1.a = L31_1
L30_1.b = "base"
L30_1.tim = -1
L30_1.flag = 1
L29_1.an = L30_1
L28_1.pioggia = L29_1
L29_1 = {}
L30_1 = "mp_m_securoguard_01"
L29_1.m = L30_1
L30_1 = "bunker"
L29_1[L30_1] = true
L30_1 = vector3
L31_1 = 5097.045
L32_1 = -5523.041
L33_1 = 41.707
L30_1 = L30_1(L31_1, L32_1, L33_1)
L29_1.p = L30_1
L30_1 = 202.0
L29_1.h = L30_1
L30_1 = {}
L31_1 = "timetable@amanda@ig_2"
L30_1.a = L31_1
L31_1 = "ig_2_base_amanda"
L30_1.b = L31_1
L30_1.tim = -1
L30_1.flag = 63
L29_1.an = L30_1
L30_1 = {}
L31_1 = vector3
L32_1 = 5097.313
L33_1 = -5530.111
L34_1 = 41.707
L31_1 = L31_1(L32_1, L33_1, L34_1)
L30_1.pos = L31_1
L31_1 = 20.0
L30_1.h = L31_1
L31_1 = {}
L32_1 = "timetable@amanda@ig_2"
L31_1.a = L32_1
L32_1 = "ig_2_base_amanda"
L31_1.b = L32_1
L31_1.tim = -1
L31_1.flag = 2
L30_1.an = L31_1
L29_1.mattino = L30_1
L30_1 = {}
L31_1 = vector3
L32_1 = 5077.951
L33_1 = -5543.115
L34_1 = 41.718
L31_1 = L31_1(L32_1, L33_1, L34_1)
L30_1.pos = L31_1
L31_1 = 280.0
L30_1.h = L31_1
L31_1 = {}
L31_1.a = "timetable@ron@ig_3_couch"
L31_1.b = "base"
L31_1.tim = -1
L31_1.flag = 1
L30_1.an = L31_1
L29_1.notte = L30_1
L30_1 = {}
L31_1 = "a_f_m_trampbeac_01"
L30_1.m = L31_1
L31_1 = "bunker"
L30_1[L31_1] = true
L31_1 = vector3
L32_1 = 5088.302
L33_1 = -5521.051
L34_1 = 41.707
L31_1 = L31_1(L32_1, L33_1, L34_1)
L30_1.p = L31_1
L31_1 = 289.0
L30_1.h = L31_1
L31_1 = {}
L32_1 = "timetable@floyd@clean_kitchen@base"
L31_1.a = L32_1
L31_1.b = "base"
L31_1.tim = -1
L31_1.flag = 63
L30_1.an = L31_1
L31_1 = {}
L32_1 = vector3
L33_1 = 5082.844
L34_1 = -5543.838
L35_1 = 41.707
L32_1 = L32_1(L33_1, L34_1, L35_1)
L31_1.pos = L32_1
L32_1 = 191.0
L31_1.h = L32_1
L32_1 = {}
L33_1 = "amb@world_human_maid_clean@"
L32_1.a = L33_1
L32_1.b = "base"
L32_1.tim = -1
L32_1.flag = 2
L31_1.an = L32_1
L30_1.mattino = L31_1
L31_1 = {}
L32_1 = vector3
L33_1 = 5077.944
L34_1 = -5546.205
L35_1 = 42.162
L32_1 = L32_1(L33_1, L34_1, L35_1)
L31_1.pos = L32_1
L32_1 = 340.0
L31_1.h = L32_1
L32_1 = {}
L33_1 = "amb@lo_res_idles@"
L32_1.a = L33_1
L33_1 = "world_human_bum_slumped_right_lo_res_base"
L32_1.b = L33_1
L32_1.tim = -1
L32_1.flag = 1
L31_1.an = L32_1
L30_1.notte = L31_1
L31_1 = {}
L32_1 = "a_f_m_ktown_01"
L31_1.m = L32_1
L32_1 = "bunker"
L31_1[L32_1] = true
L32_1 = vector3
L33_1 = 5088.916
L34_1 = -5539.892
L35_1 = 41.797
L32_1 = L32_1(L33_1, L34_1, L35_1)
L31_1.p = L32_1
L32_1 = 10.0
L31_1.h = L32_1
L32_1 = {}
L32_1.a = "anim@amb@nightclub@lazlow@ig1_vip@"
L32_1.b = "clubvip_base_laz"
L32_1.tim = -1
L32_1.flag = 63
L31_1.an = L32_1
L32_1 = {}
L33_1 = vector3
L34_1 = 5091.655
L35_1 = -5540.592
L36_1 = 41.707
L33_1 = L33_1(L34_1, L35_1, L36_1)
L32_1.pos = L33_1
L33_1 = 204.0
L32_1.h = L33_1
L33_1 = {}
L34_1 = "amb@world_human_maid_clean@"
L33_1.a = L34_1
L33_1.b = "base"
L33_1.tim = -1
L33_1.flag = 1
L32_1.an = L33_1
L31_1.mattino = L32_1
L32_1 = {}
L33_1 = vector3
L34_1 = 5092.235
L35_1 = -5538.798
L36_1 = 41.707
L33_1 = L33_1(L34_1, L35_1, L36_1)
L32_1.pos = L33_1
L33_1 = 150.0
L32_1.h = L33_1
L33_1 = {}
L34_1 = "rcm_barry3"
L33_1.a = L34_1
L34_1 = "barry_3_sit_loop"
L33_1.b = L34_1
L33_1.tim = -1
L33_1.flag = 1
L32_1.an = L33_1
L31_1.notte = L32_1
L32_1 = {}
L33_1 = "cs_old_man2"
L32_1.m = L33_1
L33_1 = vector3
L34_1 = 5092.457
L35_1 = -4683.129
L36_1 = 1.408
L33_1 = L33_1(L34_1, L35_1, L36_1)
L32_1.p = L33_1
L33_1 = 256.0
L32_1.h = L33_1
L33_1 = {}
L33_1.a = "anim@amb@business@cfm@cfm_cut_sheets@"
L33_1.b = "load_and_tune_guilotine_v1_billcutter"
L33_1.tim = -1
L33_1.flag = 1
L32_1.an = L33_1
L33_1 = {}
L34_1 = vector3
L35_1 = 5095.49
L36_1 = -4655.802
L37_1 = 0.737
L34_1 = L34_1(L35_1, L36_1, L37_1)
L33_1.pos = L34_1
L33_1.h = 250.0
L34_1 = {}
L35_1 = "anim@heists@fleeca_bank@ig_7_jetski_owner"
L34_1.a = L35_1
L35_1 = "owner_idle"
L34_1.b = L35_1
L34_1.tim = -1
L34_1.flag = 1
L33_1.an = L34_1
L32_1.mattino = L33_1
L33_1 = {}
L34_1 = vector3
L35_1 = 5134.089
L36_1 = -4704.644
L37_1 = 1.509
L34_1 = L34_1(L35_1, L36_1, L37_1)
L33_1.pos = L34_1
L34_1 = 45.0
L33_1.h = L34_1
L34_1 = {}
L35_1 = "amb@lo_res_idles@"
L34_1.a = L35_1
L35_1 = "world_human_bum_slumped_right_lo_res_base"
L34_1.b = L35_1
L34_1.tim = -1
L34_1.flag = 1
L33_1.an = L34_1
L32_1.notte = L33_1
L33_1 = {}
L33_1.m = "a_m_m_farmer_01"
L34_1 = vector3
L35_1 = 5195.533
L36_1 = -5136.236
L37_1 = 2.349
L34_1 = L34_1(L35_1, L36_1, L37_1)
L33_1.p = L34_1
L33_1.h = 260.0
L34_1 = {}
L34_1.a = "anim@amb@business@coc@coc_unpack_cut@"
L34_1.b = "fullcut_cycle_v2_cokecutter"
L34_1.tim = -1
L34_1.flag = 63
L33_1.an = L34_1
L34_1 = {}
L35_1 = vector3
L36_1 = 5196.156
L37_1 = -5133.588
L38_1 = 2.36
L35_1 = L35_1(L36_1, L37_1, L38_1)
L34_1.pos = L35_1
L35_1 = 263.0
L34_1.h = L35_1
L35_1 = {}
L36_1 = "amb@world_human_maid_clean@"
L35_1.a = L36_1
L35_1.b = "base"
L35_1.tim = -1
L35_1.flag = 2
L34_1.an = L35_1
L33_1.mattino = L34_1
L34_1 = {}
L35_1 = vector3
L36_1 = 5194.446
L37_1 = -5132.415
L38_1 = 2.361
L35_1 = L35_1(L36_1, L37_1, L38_1)
L34_1.pos = L35_1
L35_1 = 167.0
L34_1.h = L35_1
L35_1 = {}
L36_1 = "amb@lo_res_idles@"
L35_1.a = L36_1
L36_1 = "world_human_bum_slumped_right_lo_res_base"
L35_1.b = L36_1
L35_1.tim = -1
L35_1.flag = 1
L34_1.an = L35_1
L33_1.notte = L34_1
L34_1 = {}
L34_1.m = "Donkey"
L35_1 = vector3
L36_1 = 5183.536
L37_1 = -5134.668
L38_1 = 2.332
L35_1 = L35_1(L36_1, L37_1, L38_1)
L34_1.p = L35_1
L35_1 = 161.0
L34_1.h = L35_1
L35_1 = {}
L35_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L35_1.b = "idle_b"
L35_1.tim = -1
L35_1.flag = 1
L34_1.an = L35_1
L35_1 = {}
L35_1.m = "a_c_deer"
L36_1 = vector3
L37_1 = 5185.673
L38_1 = -5134.931
L39_1 = 2.338
L36_1 = L36_1(L37_1, L38_1, L39_1)
L35_1.p = L36_1
L36_1 = 164.0
L35_1.h = L36_1
L36_1 = {}
L36_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L36_1.b = "idle_b"
L36_1.tim = -1
L36_1.flag = 1
L35_1.an = L36_1
L36_1 = {}
L37_1 = "blackhorse"
L36_1.m = L37_1
L37_1 = vector3
L38_1 = 5187.153
L39_1 = -5135.583
L40_1 = 2.34
L37_1 = L37_1(L38_1, L39_1, L40_1)
L36_1.p = L37_1
L37_1 = 158.0
L36_1.h = L37_1
L37_1 = {}
L37_1.a = "creatures@cow@amb@world_cow_grazing@idle_a"
L37_1.b = "idle_b"
L37_1.tim = -1
L37_1.flag = 1
L36_1.an = L37_1
L10_1[1] = L11_1
L10_1[2] = L12_1
L10_1[3] = L13_1
L10_1[4] = L14_1
L10_1[5] = L15_1
L10_1[6] = L16_1
L10_1[7] = L17_1
L10_1[8] = L18_1
L10_1[9] = L19_1
L10_1[10] = L20_1
L10_1[11] = L21_1
L10_1[12] = L22_1
L10_1[13] = L23_1
L10_1[14] = L24_1
L10_1[15] = L25_1
L10_1[16] = L26_1
L10_1[17] = L27_1
L10_1[18] = L28_1
L10_1[19] = L29_1
L10_1[20] = L30_1
L10_1[21] = L31_1
L10_1[22] = L32_1
L10_1[23] = L33_1
L10_1[24] = L34_1
L10_1[25] = L35_1
L10_1[26] = L36_1
L11_1 = _ENV
L12_1 = "onParlaBot"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = RequestAnimDict
  L3_2 = "mic_chatter"
  L2_2(L3_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = PlayFacialAnim
    L1_3 = A0_2
    L2_3 = "mic_chatter"
    L3_3 = "mp_facial"
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = Wait
    L1_3 = A1_2
    L0_3(L1_3)
    L0_3 = PlayFacialAnim
    L1_3 = A0_2
    L2_3 = "mood_normal_1"
    L3_3 = "facials@gen_male@variations@normal"
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "exports"
L11_1 = L11_1[L12_1]
L12_1 = "parlaBot"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = onParlaBot
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = _ENV
L12_1 = "GestisciNPC"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = tutorialFatto
  if L0_2 then
    L0_2 = pairs
    L1_2 = L10_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.PedID
      if nil == L6_2 then
        L6_2 = GetEntityCoords
        L7_2 = PlayerPedId
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L7_2 = L5_2.p
        L6_2 = L6_2 - L7_2
        L6_2 = #L6_2
        L7_2 = L9_1
        if L6_2 < L7_2 then
          L6_2 = L5_2.m
          L7_2 = RequestModelStriano
          L8_2 = L6_2
          L7_2(L8_2)
          L7_2 = 0
          L8_2 = L5_2.h
          if nil ~= L8_2 then
            L7_2 = L5_2.h
          end
          L8_2 = L5_2.rot
          if nil ~= L8_2 then
            L8_2 = L5_2.rot
            rot = L8_2
            L8_2 = L5_2.rot
            L7_2 = L8_2.z
          end
          L8_2 = nil
          L9_2 = L5_2.m
          if "mp_m_freemode_01" == L9_2 then
            L9_2 = exports
            L9_2 = L9_2.striano_editor
            L10_2 = L9_2
            L9_2 = L9_2.spawnPedVestiti
            L11_2 = vector3
            L12_2 = L5_2.p
            L12_2 = L12_2.x
            L13_2 = L5_2.p
            L13_2 = L13_2.y
            L14_2 = L5_2.p
            L14_2 = L14_2.z
            L11_2 = L11_2(L12_2, L13_2, L14_2)
            L12_2 = L7_2
            L13_2 = L5_2.nomeStile
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
            L8_2 = L9_2
          else
            L9_2 = CreatePed
            L10_2 = 1
            L11_2 = L6_2
            L12_2 = L5_2.p
            L12_2 = L12_2.x
            L13_2 = L5_2.p
            L13_2 = L13_2.y
            L14_2 = L5_2.p
            L14_2 = L14_2.z
            L15_2 = L7_2
            L16_2 = false
            L17_2 = false
            L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L8_2 = L9_2
          end
          L5_2.PedID = L8_2
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
          L9_2 = SetPedCanRagdollFromPlayerImpact
          L10_2 = L8_2
          L11_2 = false
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
          L11_2 = 254
          L9_2(L10_2, L11_2)
          L9_2 = Wait
          L10_2 = 25
          L9_2(L10_2)
          L9_2 = SetEntityCoords
          L10_2 = L8_2
          L11_2 = L5_2.p
          L11_2 = L11_2.x
          L12_2 = L5_2.p
          L12_2 = L12_2.y
          L13_2 = L5_2.p
          L13_2 = L13_2.z
          L9_2(L10_2, L11_2, L12_2, L13_2)
          L9_2 = L5_2.h
          if nil ~= L9_2 then
            L9_2 = SetEntityHeading
            L10_2 = L8_2
            L11_2 = L5_2.h
            L9_2(L10_2, L11_2)
          end
          L9_2 = SetModelAsNoLongerNeeded
          L10_2 = L6_2
          L9_2(L10_2)
          L9_2 = L5_2.m
          if "a_c_deer" == L9_2 then
            L9_2 = math
            L9_2 = L9_2.random
            L10_2 = 0
            L11_2 = 15
            L9_2 = L9_2(L10_2, L11_2)
            L10_2 = SetPedPreloadVariationData
            L11_2 = L8_2
            L12_2 = 0
            L13_2 = 0
            L14_2 = L9_2
            L10_2(L11_2, L12_2, L13_2, L14_2)
            L10_2 = IsPedComponentVariationValid
            L11_2 = L8_2
            L12_2 = 0
            L13_2 = 0
            L14_2 = L9_2
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
            if L10_2 then
              L10_2 = SetPedComponentVariation
              L11_2 = L8_2
              L12_2 = 0
              L13_2 = 0
              L14_2 = L9_2
              L15_2 = 0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
            end
            L10_2 = math
            L10_2 = L10_2.random
            L11_2 = 0
            L12_2 = 2
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = 3
            L12_2 = L10_2
            L13_2 = 0
            L14_2 = GetPedDrawableVariation
            L15_2 = L8_2
            L16_2 = L11_2
            L14_2 = L14_2(L15_2, L16_2)
            L15_2 = SetPedPreloadVariationData
            L16_2 = L8_2
            L17_2 = L11_2
            L18_2 = L14_2
            L19_2 = L12_2
            L15_2(L16_2, L17_2, L18_2, L19_2)
            L15_2 = IsPedComponentVariationValid
            L16_2 = L8_2
            L17_2 = L11_2
            L18_2 = L14_2
            L19_2 = L12_2
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            if L15_2 then
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
            L15_2 = SetPedPreloadVariationData
            L16_2 = L8_2
            L17_2 = L11_2
            L18_2 = L14_2
            L19_2 = L12_2
            L15_2(L16_2, L17_2, L18_2, L19_2)
            L15_2 = IsPedComponentVariationValid
            L16_2 = L8_2
            L17_2 = L11_2
            L18_2 = L14_2
            L19_2 = L12_2
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            if L15_2 then
              L15_2 = SetPedComponentVariation
              L16_2 = L8_2
              L17_2 = L11_2
              L18_2 = L14_2
              L19_2 = L12_2
              L20_2 = L13_2
              L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
            end
          end
          L9_2 = PedAnimGiorno
          L10_2 = L5_2
          L9_2(L10_2)
          L9_2 = CheckPedNotte
          L9_2()
        end
      else
        L6_2 = DoesEntityExist
        L7_2 = L5_2.PedID
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = GetEntityCoords
          L7_2 = PlayerPedId
          L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L7_2 = L5_2.p
          L6_2 = L6_2 - L7_2
          L6_2 = #L6_2
          L7_2 = L9_1
          if L6_2 >= L7_2 then
            L6_2 = SetEntityAsMissionEntity
            L7_2 = L5_2.PedID
            L6_2(L7_2)
            L6_2 = DeleteEntity
            L7_2 = L5_2.PedID
            L6_2(L7_2)
            L5_2.PedID = nil
          end
        end
      end
    end
  else
    L0_2 = pairs
    L1_2 = L10_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.PedID
      if L6_2 then
        L6_2 = DoesEntityExist
        L7_2 = L5_2.PedID
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = SetEntityAsMissionEntity
          L7_2 = L5_2.PedID
          L6_2(L7_2)
          L6_2 = DeleteEntity
          L7_2 = L5_2.PedID
          L6_2(L7_2)
        end
      end
    end
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "PedAnimGiorno"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.PedID
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if nil ~= L1_2 then
    L3_2 = DoesEntityExist
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetEntityCoords
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      L4_2 = L9_1
      if L3_2 < L4_2 then
        L3_2 = GetEntityCoords
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2.p
        L3_2 = L3_2 - L4_2
        L3_2 = #L3_2
        if L3_2 > 1.0 then
          L3_2 = SetEntityCoords
          L4_2 = L1_2
          L5_2 = A0_2.p
          L3_2(L4_2, L5_2)
          L3_2 = SetEntityHeading
          L4_2 = L1_2
          L5_2 = A0_2.h
          L3_2(L4_2, L5_2)
        end
        L3_2 = A0_2.rot
        if nil ~= L3_2 then
          L3_2 = SetEntityRotation
          L4_2 = L1_2
          L5_2 = A0_2.rot
          L3_2(L4_2, L5_2)
        end
        L3_2 = SetEntityVisible
        L4_2 = L1_2
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.m
        if "a_c_cow" == L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = "creatures@cow@move"
          L6_2 = "idle_sit"
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if not L3_2 then
            L3_2 = "creatures@cow@move"
            L4_2 = "idle_sit"
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
            L6_2 = L1_2
            L7_2 = L3_2
            L8_2 = L4_2
            L9_2 = 8.0
            L10_2 = 8.0
            L11_2 = -1
            L12_2 = 1
            L13_2 = 0
            L14_2 = false
            L15_2 = false
            L16_2 = false
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          end
        end
        L3_2 = A0_2.an
        if nil ~= L3_2 then
          L3_2 = IsEntityPlayingAnim
          L4_2 = L1_2
          L5_2 = A0_2.an
          L5_2 = L5_2.a
          L6_2 = A0_2.an
          L6_2 = L6_2.b
          L7_2 = 3
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          if not L3_2 then
            L3_2 = ClearPedTasks
            L4_2 = L1_2
            L3_2(L4_2)
            L3_2 = A0_2.an
            L3_2 = L3_2.a
            L4_2 = A0_2.an
            L4_2 = L4_2.b
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
            L6_2 = L1_2
            L7_2 = L3_2
            L8_2 = L4_2
            L9_2 = 8.0
            L10_2 = 8.0
            L11_2 = A0_2.an
            L11_2 = L11_2.tim
            L12_2 = A0_2.an
            L12_2 = L12_2.flag
            L13_2 = 0
            L14_2 = false
            L15_2 = false
            L16_2 = false
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          end
        end
      end
    end
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "PedAnimMattino"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.PedID
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if nil ~= L1_2 then
    L3_2 = DoesEntityExist
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetEntityCoords
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 - L4_2
      L3_2 = #L3_2
      L4_2 = L9_1
      if L3_2 < L4_2 then
        L3_2 = A0_2.mattino
        if nil == L3_2 then
          L3_2 = IsPedHuman
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = SetEntityVisible
            L4_2 = L1_2
            L5_2 = false
            L3_2(L4_2, L5_2)
        end
        else
          L3_2 = IsPedHuman
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = GetEntityCoords
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            L4_2 = A0_2.mattino
            L4_2 = L4_2.pos
            L3_2 = L3_2 - L4_2
            L3_2 = #L3_2
            if L3_2 > 1.0 then
              L3_2 = SetEntityCoords
              L4_2 = L1_2
              L5_2 = A0_2.mattino
              L5_2 = L5_2.pos
              L3_2(L4_2, L5_2)
              L3_2 = SetEntityHeading
              L4_2 = L1_2
              L5_2 = A0_2.mattino
              L5_2 = L5_2.h
              L3_2(L4_2, L5_2)
            end
            L3_2 = SetEntityRotation
            L4_2 = L1_2
            L5_2 = 0
            L6_2 = 0
            L7_2 = A0_2.mattino
            L7_2 = L7_2.h
            L3_2(L4_2, L5_2, L6_2, L7_2)
            L3_2 = A0_2.mattino
            L3_2 = L3_2.rot
            if nil ~= L3_2 then
              L3_2 = SetEntityRotation
              L4_2 = L1_2
              L5_2 = A0_2.mattino
              L5_2 = L5_2.rot
              L3_2(L4_2, L5_2)
            end
            L3_2 = SetEntityVisible
            L4_2 = L1_2
            L5_2 = true
            L3_2(L4_2, L5_2)
            L3_2 = A0_2.mattino
            L3_2 = L3_2.an
            if nil ~= L3_2 then
              L3_2 = IsEntityPlayingAnim
              L4_2 = L1_2
              L5_2 = A0_2.mattino
              L5_2 = L5_2.an
              L5_2 = L5_2.a
              L6_2 = A0_2.mattino
              L6_2 = L6_2.an
              L6_2 = L6_2.b
              L7_2 = 3
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
              if not L3_2 then
                L3_2 = ClearPedTasks
                L4_2 = L1_2
                L3_2(L4_2)
                L3_2 = A0_2.mattino
                L3_2 = L3_2.an
                L3_2 = L3_2.a
                L4_2 = A0_2.mattino
                L4_2 = L4_2.an
                L4_2 = L4_2.b
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
                L6_2 = L1_2
                L7_2 = L3_2
                L8_2 = L4_2
                L9_2 = 8.0
                L10_2 = 8.0
                L11_2 = A0_2.mattino
                L11_2 = L11_2.an
                L11_2 = L11_2.tim
                L12_2 = A0_2.mattino
                L12_2 = L12_2.an
                L12_2 = L12_2.flag
                L13_2 = 0
                L14_2 = false
                L15_2 = false
                L16_2 = false
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              end
            end
          end
        end
      end
    end
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "CheckPedNotte"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = tutorialFatto
  if L1_2 then
    L1_2 = L7_1
    if L1_2 then
      L1_2 = pairs
      L2_2 = L10_1
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.PedID
        L8_2 = L6_2.pioggia
        if nil == L8_2 then
          if nil ~= L7_2 then
            L8_2 = DoesEntityExist
            L9_2 = L7_2
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = GetEntityCoords
              L9_2 = L0_2
              L8_2 = L8_2(L9_2)
              L9_2 = GetEntityCoords
              L10_2 = L7_2
              L9_2 = L9_2(L10_2)
              L8_2 = L8_2 - L9_2
              L8_2 = #L8_2
              L9_2 = L9_1
              if L8_2 < L9_2 then
                L8_2 = L6_2.bunker
                if nil == L8_2 then
                  L8_2 = SetEntityVisible
                  L9_2 = L7_2
                  L10_2 = false
                  L8_2(L9_2, L10_2)
                end
              end
            end
          end
        else
          L8_2 = IsPedHuman
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = GetEntityCoords
            L9_2 = L7_2
            L8_2 = L8_2(L9_2)
            L9_2 = L6_2.pioggia
            L9_2 = L9_2.pos
            L8_2 = L8_2 - L9_2
            L8_2 = #L8_2
            if L8_2 > 1.0 then
              L8_2 = SetEntityCoords
              L9_2 = L7_2
              L10_2 = L6_2.pioggia
              L10_2 = L10_2.pos
              L8_2(L9_2, L10_2)
              L8_2 = SetEntityHeading
              L9_2 = L7_2
              L10_2 = L6_2.pioggia
              L10_2 = L10_2.h
              L8_2(L9_2, L10_2)
            end
            L8_2 = SetEntityRotation
            L9_2 = L7_2
            L10_2 = 0
            L11_2 = 0
            L12_2 = L6_2.pioggia
            L12_2 = L12_2.h
            L8_2(L9_2, L10_2, L11_2, L12_2)
            L8_2 = L6_2.pioggia
            L8_2 = L8_2.rot
            if nil ~= L8_2 then
              L8_2 = SetEntityRotation
              L9_2 = L7_2
              L10_2 = L6_2.pioggia
              L10_2 = L10_2.rot
              L8_2(L9_2, L10_2)
            end
            L8_2 = SetEntityVisible
            L9_2 = L7_2
            L10_2 = true
            L8_2(L9_2, L10_2)
            L8_2 = L6_2.pioggia
            L8_2 = L8_2.an
            if nil ~= L8_2 then
              L8_2 = IsEntityPlayingAnim
              L9_2 = L7_2
              L10_2 = L6_2.pioggia
              L10_2 = L10_2.an
              L10_2 = L10_2.a
              L11_2 = L6_2.pioggia
              L11_2 = L11_2.an
              L11_2 = L11_2.b
              L12_2 = 3
              L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
              if not L8_2 then
                L8_2 = ClearPedTasks
                L9_2 = L7_2
                L8_2(L9_2)
                L8_2 = L6_2.pioggia
                L8_2 = L8_2.an
                L8_2 = L8_2.a
                L9_2 = L6_2.pioggia
                L9_2 = L9_2.an
                L9_2 = L9_2.b
                L10_2 = HasAnimDictLoaded
                L11_2 = L8_2
                L10_2 = L10_2(L11_2)
                if not L10_2 then
                  L10_2 = RequestAnimDict
                  L11_2 = L8_2
                  L10_2(L11_2)
                  while true do
                    L10_2 = HasAnimDictLoaded
                    L11_2 = L8_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      break
                    end
                    L10_2 = Wait
                    L11_2 = 10
                    L10_2(L11_2)
                  end
                end
                L10_2 = TaskPlayAnim
                L11_2 = L7_2
                L12_2 = L8_2
                L13_2 = L9_2
                L14_2 = 8.0
                L15_2 = 8.0
                L16_2 = L6_2.pioggia
                L16_2 = L16_2.an
                L16_2 = L16_2.tim
                L17_2 = L6_2.pioggia
                L17_2 = L17_2.an
                L17_2 = L17_2.flag
                L18_2 = 0
                L19_2 = false
                L20_2 = false
                L21_2 = false
                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
              end
            end
          end
        end
      end
    else
      L1_2 = GetClockHours
      L1_2 = L1_2()
      L2_2 = GetClockMinutes
      L2_2 = L2_2()
      if L1_2 >= 22 and L1_2 <= 23 or 0 == L1_2 or L1_2 > 0 and L1_2 < 8 then
        L3_2 = pairs
        L4_2 = L10_1
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.PedID
          if nil ~= L9_2 then
            L10_2 = DoesEntityExist
            L11_2 = L9_2
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L10_2 = GetEntityCoords
              L11_2 = L0_2
              L10_2 = L10_2(L11_2)
              L11_2 = GetEntityCoords
              L12_2 = L9_2
              L11_2 = L11_2(L12_2)
              L10_2 = L10_2 - L11_2
              L10_2 = #L10_2
              L11_2 = L9_1
              if L10_2 < L11_2 then
                L10_2 = L8_2.m
                if "Donkey" ~= L10_2 then
                  L10_2 = L8_2.m
                  if "a_c_deer" ~= L10_2 then
                    goto lbl_237
                  end
                end
                L10_2 = IsEntityPlayingAnim
                L11_2 = L9_2
                L12_2 = "creatures@cow@move"
                L13_2 = "idle_sit"
                L14_2 = 3
                L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                if not L10_2 then
                  L10_2 = "creatures@cow@move"
                  L11_2 = "idle_sit"
                  L12_2 = HasAnimDictLoaded
                  L13_2 = L10_2
                  L12_2 = L12_2(L13_2)
                  if not L12_2 then
                    L12_2 = RequestAnimDict
                    L13_2 = L10_2
                    L12_2(L13_2)
                    while true do
                      L12_2 = HasAnimDictLoaded
                      L13_2 = L10_2
                      L12_2 = L12_2(L13_2)
                      if L12_2 then
                        break
                      end
                      L12_2 = Wait
                      L13_2 = 10
                      L12_2(L13_2)
                    end
                  end
                  L12_2 = TaskPlayAnim
                  L13_2 = L9_2
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L16_2 = 8.0
                  L17_2 = 8.0
                  L18_2 = -1
                  L19_2 = 1
                  L20_2 = 0
                  L21_2 = false
                  L22_2 = false
                  L23_2 = false
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                  goto lbl_354
                  ::lbl_237::
                  L10_2 = L8_2.notte
                  if nil == L10_2 then
                    L10_2 = IsPedHuman
                    L11_2 = L9_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      L10_2 = SetEntityVisible
                      L11_2 = L9_2
                      L12_2 = false
                      L10_2(L11_2, L12_2)
                  end
                  else
                    L10_2 = IsPedHuman
                    L11_2 = L9_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      L10_2 = GetEntityCoords
                      L11_2 = L9_2
                      L10_2 = L10_2(L11_2)
                      L11_2 = L8_2.notte
                      L11_2 = L11_2.pos
                      L10_2 = L10_2 - L11_2
                      L10_2 = #L10_2
                      if L10_2 > 1.0 then
                        L10_2 = SetEntityCoords
                        L11_2 = L9_2
                        L12_2 = L8_2.notte
                        L12_2 = L12_2.pos
                        L10_2(L11_2, L12_2)
                        L10_2 = SetEntityHeading
                        L11_2 = L9_2
                        L12_2 = L8_2.notte
                        L12_2 = L12_2.h
                        L10_2(L11_2, L12_2)
                      end
                      L10_2 = SetEntityRotation
                      L11_2 = L9_2
                      L12_2 = 0
                      L13_2 = 0
                      L14_2 = L8_2.notte
                      L14_2 = L14_2.h
                      L10_2(L11_2, L12_2, L13_2, L14_2)
                      L10_2 = L8_2.notte
                      L10_2 = L10_2.rot
                      if nil ~= L10_2 then
                        L10_2 = SetEntityRotation
                        L11_2 = L9_2
                        L12_2 = L8_2.notte
                        L12_2 = L12_2.rot
                        L10_2(L11_2, L12_2)
                      end
                      L10_2 = SetEntityVisible
                      L11_2 = L9_2
                      L12_2 = true
                      L10_2(L11_2, L12_2)
                      L10_2 = L8_2.notte
                      L10_2 = L10_2.an
                      if nil ~= L10_2 then
                        L10_2 = IsEntityPlayingAnim
                        L11_2 = L9_2
                        L12_2 = L8_2.notte
                        L12_2 = L12_2.an
                        L12_2 = L12_2.a
                        L13_2 = L8_2.notte
                        L13_2 = L13_2.an
                        L13_2 = L13_2.b
                        L14_2 = 3
                        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                        if not L10_2 then
                          L10_2 = ClearPedTasks
                          L11_2 = L9_2
                          L10_2(L11_2)
                          L10_2 = L8_2.notte
                          L10_2 = L10_2.an
                          L10_2 = L10_2.a
                          L11_2 = L8_2.notte
                          L11_2 = L11_2.an
                          L11_2 = L11_2.b
                          L12_2 = HasAnimDictLoaded
                          L13_2 = L10_2
                          L12_2 = L12_2(L13_2)
                          if not L12_2 then
                            L12_2 = RequestAnimDict
                            L13_2 = L10_2
                            L12_2(L13_2)
                            while true do
                              L12_2 = HasAnimDictLoaded
                              L13_2 = L10_2
                              L12_2 = L12_2(L13_2)
                              if L12_2 then
                                break
                              end
                              L12_2 = Wait
                              L13_2 = 10
                              L12_2(L13_2)
                            end
                          end
                          L12_2 = TaskPlayAnim
                          L13_2 = L9_2
                          L14_2 = L10_2
                          L15_2 = L11_2
                          L16_2 = 8.0
                          L17_2 = 8.0
                          L18_2 = L8_2.notte
                          L18_2 = L18_2.an
                          L18_2 = L18_2.tim
                          L19_2 = L8_2.notte
                          L19_2 = L19_2.an
                          L19_2 = L19_2.flag
                          L20_2 = 0
                          L21_2 = false
                          L22_2 = false
                          L23_2 = false
                          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          ::lbl_354::
        end
      elseif 8 == L1_2 or 9 == L1_2 then
        L3_2 = pairs
        L4_2 = L10_1
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = PedAnimMattino
          L10_2 = L8_2
          L9_2(L10_2)
        end
      else
        L3_2 = pairs
        L4_2 = L10_1
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = PedAnimGiorno
          L10_2 = L8_2
          L9_2(L10_2)
        end
      end
    end
  else
    L1_2 = pairs
    L2_2 = L10_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.PedID
      if L7_2 then
        L7_2 = DoesEntityExist
        L8_2 = L6_2.PedID
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = SetEntityAsMissionEntity
          L8_2 = L6_2.PedID
          L7_2(L8_2)
          L7_2 = DeleteEntity
          L8_2 = L6_2.PedID
          L7_2(L8_2)
        end
      end
    end
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "AnimaleVicino"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = getAnimaleVicino
  L0_2 = L0_2()
  if nil == L0_2 or false == L0_2 then
    return
  end
  L1_2 = L10_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.PedID
  L2_2 = IsPedHuman
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestAnimDict
    L3_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
    L2_2(L3_2)
    while true do
      L2_2 = HasAnimDictLoaded
      L3_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = TaskPlayAnim
    L3_2 = L1_2
    L4_2 = "creatures@cow@amb@world_cow_grazing@idle_a"
    L5_2 = "idle_b"
    L6_2 = 8.0
    L7_2 = 8.0
    L8_2 = -1
    L9_2 = 1
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L2_2 = Wait
    L3_2 = 240000
    L2_2(L3_2)
    L2_2 = "creatures@cow@move"
    L3_2 = "idle_sit"
    L4_2 = RequestAnimDict
    L5_2 = L2_2
    L4_2(L5_2)
    L4_2 = HasAnimDictLoaded
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = RequestAnimDict
      L5_2 = L2_2
      L4_2(L5_2)
      while true do
        L4_2 = HasAnimDictLoaded
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          break
        end
        L4_2 = Wait
        L5_2 = 10
        L4_2(L5_2)
      end
    end
    L4_2 = TaskPlayAnim
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = 8.0
    L9_2 = 8.0
    L10_2 = -1
    L11_2 = 1
    L12_2 = 0
    L13_2 = false
    L14_2 = false
    L15_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "PedVicino"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = getAnimaleVicino
  L0_2 = L0_2()
  if nil == L0_2 or false == L0_2 then
    return
  end
  L1_2 = L10_1
  L1_2 = L1_2[L0_2]
  L1_2 = L1_2.PedID
  L2_2 = IsPedHuman
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = nil
    L3_2 = nil
    L4_2 = nil
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 1
    L7_2 = 2
    L5_2 = L5_2(L6_2, L7_2)
    if 1 == L5_2 then
      L2_2 = "ah_3b_ext-2"
      L3_2 = "player_one_dual-2"
      L4_2 = 2500
    else
      L2_2 = "oddjobs@assassinate@hotel@"
      L3_2 = "argue_b"
      L4_2 = 3500
    end
    L6_2 = HasAnimDictLoaded
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = RequestAnimDict
      L7_2 = L2_2
      L6_2(L7_2)
      while true do
        L6_2 = HasAnimDictLoaded
        L7_2 = L2_2
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
    L7_2 = L1_2
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = 8.0
    L11_2 = 8.0
    L12_2 = L4_2
    L13_2 = 49
    L14_2 = 0
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L6_2 = Wait
    L7_2 = L4_2
    L6_2(L7_2)
    L6_2 = CheckPedNotte
    L6_2()
  end
end
L11_1[L12_1] = L13_1
L11_1 = RegisterCommand
L12_1 = "pedVicino"
function L13_1()
  local L0_2, L1_2
  L0_2 = PedVicino
  L0_2()
end
L11_1(L12_1, L13_1)
L11_1 = RegisterCommand
L12_1 = "animaleVicino"
function L13_1()
  local L0_2, L1_2
  L0_2 = AnimaleVicino
  L0_2()
end
L11_1(L12_1, L13_1)
L11_1 = _ENV
L12_1 = "getAnimaleVicino"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = 10.0
  L2_2 = nil
  L3_2 = 1
  L4_2 = L10_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L10_1
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.PedID
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = GetEntityCoords
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetEntityCoords
      L10_2 = L0_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 - L8_2
      L9_2 = #L9_2
      L10_2 = 6.5
      if L9_2 <= L10_2 then
        L9_2 = GetEntityCoords
        L10_2 = L0_2
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2 - L8_2
        L9_2 = #L9_2
        if L1_2 > L9_2 then
          L2_2 = L6_2
          L9_2 = GetEntityCoords
          L10_2 = L0_2
          L9_2 = L9_2(L10_2)
          L9_2 = L9_2 - L8_2
          L1_2 = #L9_2
        end
      end
    end
  end
  if nil ~= L2_2 then
    return L2_2
  else
    L3_2 = false
    return L3_2
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "getNPCIDVicino"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = 10.0
  L2_2 = nil
  L3_2 = 1
  L4_2 = L10_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = DoesEntityExist
    L8_2 = L10_1
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.PedID
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = GetEntityCoords
      L8_2 = L10_1
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.PedID
      L7_2 = L7_2(L8_2)
      L8_2 = GetEntityCoords
      L9_2 = L0_2
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2 - L7_2
      L8_2 = #L8_2
      L9_2 = 6.5
      if L8_2 <= L9_2 then
        L8_2 = GetEntityCoords
        L9_2 = L0_2
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2 - L7_2
        L8_2 = #L8_2
        if L1_2 > L8_2 then
          L8_2 = GetEntityCoords
          L9_2 = L0_2
          L8_2 = L8_2(L9_2)
          L8_2 = L8_2 - L7_2
          L1_2 = #L8_2
          L8_2 = L10_1
          L8_2 = L8_2[L6_2]
          L2_2 = L8_2.PedID
        end
      end
    end
  end
  if nil ~= L2_2 then
    return L2_2
  else
    L3_2 = false
    return L3_2
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "exports"
L11_1 = L11_1[L12_1]
L12_1 = "getPedVicino"
function L13_1()
  local L0_2, L1_2
  L0_2 = getNPCIDVicino
  return L0_2()
end
L11_1(L12_1, L13_1)
L11_1 = _ENV
L12_1 = "mysplit"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil == A1_2 then
    A1_2 = "%s"
  end
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.gmatch
  L4_2 = A0_2
  L5_2 = "([^"
  L6_2 = A1_2
  L7_2 = "]+)"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "LoadAnim"
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasAnimDictLoaded
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Wait
      L2_2 = 10
      L1_2(L2_2)
    end
  end
end
L11_1[L12_1] = L13_1
L11_1 = _ENV
L12_1 = "OpenInput"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.OpenInput
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = {}
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
L11_1[L12_1] = L13_1
L11_1 = RegisterNetEvent
L12_1 = "SuonoAzione"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "SuonoAzione"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "GOLF_HUD_SCORECARD_MASTER"
  L3_2 = "0"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "SuonoErrore"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "SuonoErrore"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "HACKING_CLICK_BAD"
  L3_2 = "0"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = {}
L12_1 = {}
L13_1 = 487013001
L14_1 = 2210333304
L15_1 = 100416529
L16_1 = 453432689
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L12_1[4] = L16_1
L13_1 = false
L14_1 = {}
L15_1 = 15.0
L16_1 = {}
L17_1 = RegisterCommand
L18_1 = "fixc"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "cfix"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "capellifix"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "fixhair"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "hairfix"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "fixcapelli"
function L19_1()
  local L0_2, L1_2
  L0_2 = CapelliFix
  L0_2()
end
L17_1(L18_1, L19_1)
L17_1 = _ENV
L18_1 = "CapelliFix"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:getSkin"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = L16_1
    L1_3 = #L1_3
    if 0 == L1_3 then
      L1_3 = L16_1
      L2_3 = A0_3.hair_1
      L1_3[1] = L2_3
      L1_3 = L16_1
      L2_3 = A0_3.hair_2
      L1_3[2] = L2_3
      L1_3 = L16_1
      L2_3 = A0_3.hair_color_1
      L1_3[3] = L2_3
      L1_3 = L16_1
      L2_3 = A0_3.hair_color_2
      L1_3[4] = L2_3
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submex
      L3_3 = "Hair removed, to get back use again the command."
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e mask"
      L1_3(L2_3)
      L1_3 = IsPedComponentVariationValid
      L2_3 = L0_2
      L3_3 = 2
      L4_3 = 0
      L5_3 = 0
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if L1_3 then
        L1_3 = SetPedComponentVariation
        L2_3 = L0_2
        L3_3 = 2
        L4_3 = 0
        L5_3 = 0
        L6_3 = 2
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    else
      L1_3 = ResettaCapelliFix
      L1_3()
    end
  end
  L1_2(L2_2, L3_2)
end
L17_1[L18_1] = L19_1
L17_1 = _ENV
L18_1 = "ResettaCapelliFix"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedPropIndex
  L2_2 = L0_2
  L3_2 = 0
  L4_2 = L16_1
  L4_2 = L4_2[1]
  L5_2 = L16_1
  L5_2 = L5_2[2]
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:change"
  L3_2 = "hair_1"
  L4_2 = L16_1
  L4_2 = L4_2[1]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:change"
  L3_2 = "hair_2"
  L4_2 = L16_1
  L4_2 = L4_2[2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:change"
  L3_2 = "hair_color_1"
  L4_2 = L16_1
  L4_2 = L4_2[3]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:change"
  L3_2 = "hair_color_2"
  L4_2 = L16_1
  L4_2 = L4_2[4]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  L16_1 = L1_2
end
L17_1[L18_1] = L19_1
L17_1 = _ENV
L18_1 = "exports"
L17_1 = L17_1[L18_1]
L18_1 = "resetLastCapelli"
function L19_1()
  local L0_2, L1_2
  L0_2 = L16_1
  L0_2 = #L0_2
  if 0 == L0_2 then
  else
    L0_2 = ResettaCapelliFix
    L0_2()
  end
end
L17_1(L18_1, L19_1)
L17_1 = _ENV
L18_1 = "msglegacy"
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L10_2 = 0.5
  L11_2 = 0.8
  L12_2 = SetTextFont
  L13_2 = A8_2
  L12_2(L13_2)
  L12_2 = SetTextProportional
  L13_2 = 0
  L12_2(L13_2)
  L12_2 = SetTextScale
  L13_2 = A2_2
  L14_2 = A2_2
  L12_2(L13_2, L14_2)
  L12_2 = N_0x4e096588b13ffeca
  L13_2 = A9_2
  L12_2(L13_2)
  L12_2 = SetTextColour
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L16_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = SetTextDropShadow
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = SetTextEdge
  L13_2 = 1
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = SetTextDropShadow
  L12_2()
  L12_2 = SetTextOutline
  L12_2()
  L12_2 = SetTextCentre
  L13_2 = 1
  L12_2(L13_2)
  L12_2 = SetTextEntry
  L13_2 = "STRING"
  L12_2(L13_2)
  L12_2 = AddTextComponentString
  L13_2 = A3_2
  L12_2(L13_2)
  L12_2 = DrawText
  L13_2 = L10_2
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
end
L17_1[L18_1] = L19_1
L17_1 = _ENV
L18_1 = "IsValidPedScared"
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsPedAPlayer
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedHuman
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsPedDeadOrDying
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsEntityAMissionEntity
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedArmed
            L2_2 = A0_2
            L3_2 = 4
            L1_2 = L1_2(L2_2, L3_2)
            if not L1_2 then
              L1_2 = true
              return L1_2
          end
        end
      end
    end
  end
  else
    L1_2 = false
    return L1_2
  end
end
L17_1[L18_1] = L19_1
L17_1 = RegisterCommand
L18_1 = "wtint"
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = GetSelectedPedWeapon
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = SetPedWeaponTintIndex
    L6_2 = L2_2
    L7_2 = L4_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L17_1(L18_1, L19_1)
L17_1 = nil
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L17_1
  if nil ~= L1_2 then
    L1_2 = DoesBlipExist
    L2_2 = L17_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetBlipRoute
      L2_2 = L17_1
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = RemoveBlip
      L2_2 = L17_1
      L1_2(L2_2)
      L1_2 = nil
      L17_1 = L1_2
      L1_2 = Wait
      L2_2 = 1
      L1_2(L2_2)
    end
  end
  L1_2 = AddBlipForCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = SetBlipColour
  L3_2 = L1_2
  L4_2 = 46
  L2_2(L3_2, L4_2)
  L2_2 = AddTextEntry
  L3_2 = "MYBLIP"
  L4_2 = "Percorso Strada"
  L2_2(L3_2, L4_2)
  L2_2 = BeginTextCommandSetBlipName
  L3_2 = "MYBLIP"
  L2_2(L3_2)
  L2_2 = EndTextCommandSetBlipName
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = SetBlipScale
  L3_2 = L1_2
  L4_2 = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipAsShortRange
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipRoute
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipRouteColour
  L3_2 = L1_2
  L4_2 = 46
  L2_2(L3_2, L4_2)
  L2_2 = exports
  L2_2 = L2_2.striano_inventory
  L3_2 = L2_2
  L2_2 = L2_2.create
  L4_2 = {}
  L4_2.coords = A0_2
  L4_2.type = "checkpoint"
  L4_2.color = "#ff6600"
  L4_2.label = "CHECKPOINT"
  L4_2.size = 1.0
  L4_2.drawDistance = 999.0
  L4_2.displayDistance = true
  L4_2.deleteWhenNear = true
  L2_2 = L2_2(L3_2, L4_2)
  L17_1 = L1_2
  return L1_2
end
L19_1 = _ENV
L20_1 = "delStradaBlip"
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = L17_1
  if nil ~= L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L17_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetBlipRoute
      L1_2 = L17_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = RemoveBlip
      L1_2 = L17_1
      L0_2(L1_2)
      L0_2 = nil
      L17_1 = L0_2
    end
  end
end
L19_1[L20_1] = L21_1
L19_1 = RegisterCommand
L20_1 = "strada"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = y
    if nil ~= L2_2 then
      L2_2 = z
      if nil ~= L2_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A1_2[3]
  L4_2 = L4_2(L5_2)
  if nil ~= L2_2 and nil ~= L3_2 and nil ~= L4_2 then
    L5_2 = TriggerEvent
    L6_2 = "esx:faistrada"
    L7_2 = {}
    L7_2.x = L2_2
    L7_2.y = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submexInfo
    L7_2 = "GPS set."
    L5_2(L6_2, L7_2)
    L5_2 = L18_1
    L6_2 = vector3
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L4_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = delStradaBlip
    L5_2()
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submexError
    L7_2 = "Insert coords [x] [y] [z]"
    L5_2(L6_2, L7_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = _ENV
L20_1 = "exports"
L19_1 = L19_1[L20_1]
L20_1 = "strada"
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterCommand
L20_1 = "playanim"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Animfunc
  L3_2 = A1_2[1]
  L4_2 = A1_2[2]
  L5_2 = A1_2[3]
  L2_2(L3_2, L4_2, L5_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterCommand
L20_1 = "pa"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Animfunc
  L3_2 = A1_2[1]
  L4_2 = A1_2[2]
  L5_2 = A1_2[3]
  L2_2(L3_2, L4_2, L5_2)
end
L19_1(L20_1, L21_1)
L19_1 = ""
L20_1 = RegisterCommand
L21_1 = "pa2"
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = ""
    L19_1 = L2_2
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "Dic reset."
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L19_1
  if "" == L2_2 then
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "Zoom_Left"
    L5_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "Dic setted."
    L2_2(L3_2, L4_2)
    L2_2 = A1_2[1]
    L19_1 = L2_2
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterCommand
L21_1 = "pa3"
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "Turn"
    L5_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = L19_1
  if "" ~= L2_2 then
    L2_2 = Animfunc
    L3_2 = L19_1
    L4_2 = A1_2[1]
    L5_2 = A1_2[2]
    L2_2(L3_2, L4_2, L5_2)
  end
end
L20_1(L21_1, L22_1)
L20_1 = _ENV
L21_1 = "Animfunc"
function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if nil == A0_2 or nil == A1_2 then
    return
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = A0_2
    L2_3 = A1_2
    L3_3 = 0
    L4_3 = A2_2
    if nil ~= L4_3 then
      L4_3 = tonumber
      L5_3 = A2_2
      L4_3 = L4_3(L5_3)
      if nil == L4_3 or L4_3 < 0 then
        L4_3 = 0
      end
      if L4_3 < 0 or L4_3 > 50 then
        L4_3 = 0
      end
      L3_3 = L4_3
      L5_3 = print
      L6_3 = "Flag applicato: "
      L7_3 = L3_3
      L6_3 = L6_3 .. L7_3
      L5_3(L6_3)
    end
    if nil ~= L2_3 and nil ~= L1_3 then
      L4_3 = HasAnimDictLoaded
      L5_3 = L1_3
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        L4_3 = RequestAnimDict
        L5_3 = L1_3
        L4_3(L5_3)
        while true do
          L4_3 = HasAnimDictLoaded
          L5_3 = L1_3
          L4_3 = L4_3(L5_3)
          if L4_3 then
            break
          end
          L4_3 = Wait
          L5_3 = 10
          L4_3(L5_3)
        end
      end
      L4_3 = TaskPlayAnim
      L5_3 = L0_3
      L6_3 = L1_3
      L7_3 = L2_3
      L8_3 = 2.0
      L9_3 = 2.0
      L10_3 = -1
      L11_3 = L3_3
      L12_3 = 0
      L13_3 = false
      L14_3 = false
      L15_3 = false
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L4_3 = Wait
      L5_3 = 25
      L4_3(L5_3)
      L4_3 = L1_3
      L5_3 = L2_3
      L6_3 = IsEntityPlayingAnim
      L7_3 = L0_3
      L8_3 = L4_3
      L9_3 = L5_3
      L10_3 = 3
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      if L6_3 then
        L6_3 = false
        L7_3 = CreateThread
        function L8_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          while true do
            L0_4 = IsEntityPlayingAnim
            L1_4 = L0_3
            L2_4 = L4_3
            L3_4 = L5_3
            L4_4 = 3
            L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
            if not L0_4 then
              break
            end
            L0_4 = Wait
            L1_4 = 0
            L0_4(L1_4)
            L0_4 = L6_3
            if not L0_4 then
              L0_4 = IsEntityPlayingAnim
              L1_4 = L0_3
              L2_4 = L4_3
              L3_4 = L5_3
              L4_4 = 3
              L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
              if L0_4 then
                L0_4 = IsControlJustPressed
                L1_4 = 0
                L2_4 = 38
                L0_4 = L0_4(L1_4, L2_4)
                if L0_4 then
                  L0_4 = SetEntityAnimSpeed
                  L1_4 = L0_3
                  L2_4 = L4_3
                  L3_4 = L5_3
                  L4_4 = 0.0
                  L0_4(L1_4, L2_4, L3_4, L4_4)
                  L0_4 = GetEntityAnimCurrentTime
                  L1_4 = L0_3
                  L2_4 = L4_3
                  L3_4 = L5_3
                  L0_4 = L0_4(L1_4, L2_4, L3_4)
                  L1_4 = print
                  L2_4 = "Current frame: "
                  L3_4 = L0_4
                  L2_4 = L2_4 .. L3_4
                  L1_4(L2_4)
                  L1_4 = true
                  L6_3 = L1_4
                end
              end
            else
              L0_4 = IsControlJustPressed
              L1_4 = 0
              L2_4 = 38
              L0_4 = L0_4(L1_4, L2_4)
              if L0_4 then
                L0_4 = SetEntityAnimSpeed
                L1_4 = L0_3
                L2_4 = L4_3
                L3_4 = L5_3
                L4_4 = 1.0
                L0_4(L1_4, L2_4, L3_4, L4_4)
                L0_4 = false
                L6_3 = L0_4
              end
            end
          end
        end
        L7_3(L8_3)
      else
        L6_3 = print
        L7_3 = "Animazione inesistente."
        L6_3(L7_3)
      end
    else
      L4_3 = exports
      L4_3 = L4_3.striano_combat
      L5_3 = L4_3
      L4_3 = L4_3.notify
      L6_3 = "Anim not valid."
      L4_3(L5_3, L6_3)
    end
  end
  L3_2(L4_2)
end
L20_1[L21_1] = L22_1
L20_1 = _ENV
L21_1 = "loopMessaggioLegacy"
function L22_1()
  local L0_2, L1_2
  L0_2 = msglegacyUltimo
  if "" ~= L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = msglegacyUltimo
      if "" ~= L0_3 then
        L0_3 = msglegacy
        L1_3 = 0.005
        L2_3 = 0.0028
        L3_3 = 0.6
        L4_3 = msglegacyUltimo
        L5_3 = 255
        L6_3 = 255
        L7_3 = 255
        L8_3 = 255
        L9_3 = 6
        L10_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
L20_1[L21_1] = L22_1
L20_1 = _ENV
L21_1 = "timerMex"
L22_1 = 0
L20_1[L21_1] = L22_1
L20_1 = _ENV
L21_1 = "timerMsgLegacyPhar"
function L22_1()
  local L0_2, L1_2
  L0_2 = msglegacyUltimo
  if "" ~= L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = Wait
      L1_3 = 900
      L0_3(L1_3)
      L0_3 = timerMex
      if L0_3 > 0 then
        L0_3 = msglegacyUltimo
        if "" ~= L0_3 then
          L0_3 = timerMex
          L0_3 = L0_3 - 1
          timerMex = L0_3
          L0_3 = timerMex
          if 0 == L0_3 then
            msglegacyUltimo = ""
            return
          end
      end
      else
        msglegacyUltimo = ""
        return
      end
    end
  end
  L0_2(L1_2)
end
L20_1[L21_1] = L22_1
L20_1 = ""
L21_1 = _ENV
L22_1 = "msglegacypiazza"
function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2)
  local L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L10_2 = 0.5
  L11_2 = 0.96
  L12_2 = SetTextFont
  L13_2 = A8_2
  L12_2(L13_2)
  L12_2 = SetTextProportional
  L13_2 = 0
  L12_2(L13_2)
  L12_2 = SetTextScale
  L13_2 = A2_2
  L14_2 = A2_2
  L12_2(L13_2, L14_2)
  L12_2 = N_0x4e096588b13ffeca
  L13_2 = A9_2
  L12_2(L13_2)
  L12_2 = SetTextColour
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L16_2 = A7_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = SetTextDropShadow
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = SetTextEdge
  L13_2 = 1
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L17_2 = 255
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = SetTextDropShadow
  L12_2()
  L12_2 = SetTextOutline
  L12_2()
  L12_2 = SetTextCentre
  L13_2 = 1
  L12_2(L13_2)
  L12_2 = SetTextEntry
  L13_2 = "STRING"
  L12_2(L13_2)
  L12_2 = AddTextComponentString
  L13_2 = A3_2
  L12_2(L13_2)
  L12_2 = DrawText
  L13_2 = L10_2
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
end
L21_1[L22_1] = L23_1
L21_1 = RegisterCommand
L22_1 = "msgpiazza"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = mostraMsgPiazza
  L3_2()
  L20_1 = L2_2
end
L21_1(L22_1, L23_1)
L21_1 = RegisterCommand
L22_1 = "delmsgpiazza"
function L23_1(A0_2, A1_2)
  local L2_2
  L2_2 = ""
  L20_1 = L2_2
end
L21_1(L22_1, L23_1)
L21_1 = _ENV
L22_1 = "mostraMsgPiazza"
function L23_1()
  local L0_2, L1_2
  L0_2 = L20_1
  if "" ~= L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L20_1
      if "" ~= L0_3 then
        L0_3 = msglegacypiazza
        L1_3 = 0.005
        L2_3 = 0.0028
        L3_3 = 0.4
        L4_3 = L20_1
        L5_3 = 255
        L6_3 = 255
        L7_3 = 255
        L8_3 = 150
        L9_3 = 6
        L10_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
L21_1[L22_1] = L23_1
L21_1 = RegisterCommand
L22_1 = "setvestito"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A1_2[3]
  L4_2 = L4_2(L5_2)
  if nil == L3_2 or L3_2 < -1 then
    return
  end
  if nil == L4_2 or L4_2 < -1 then
    return
  end
  if nil == L2_2 or L2_2 < -1 then
    return
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsPedComponentVariationValid
  L7_2 = L5_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 then
    L6_2 = SetPedComponentVariation
    L7_2 = L5_2
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterCommand
L22_1 = "setprop"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A1_2[2]
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A1_2[3]
  L4_2 = L4_2(L5_2)
  if nil == L3_2 or L3_2 < -1 then
    return
  end
  if nil == L4_2 or L4_2 < -1 then
    return
  end
  if nil == L2_2 or L2_2 < -1 then
    return
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = SetPedPropIndex
  L7_2 = L5_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L21_1(L22_1, L23_1)
L21_1 = _ENV
L22_1 = "round"
function L23_1(A0_2)
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
L21_1[L22_1] = L23_1
L21_1 = false
L22_1 = nil
L23_1 = nil
L24_1 = RegisterCommand
L25_1 = "tempeditor"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    return
  end
  L2_2 = A1_2[1]
  L23_1 = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L22_1
  if nil ~= L4_2 then
    L4_2 = DeleteEntity
    L5_2 = L22_1
    L4_2(L5_2)
    L4_2 = nil
    L22_1 = L4_2
    tempOffsetZ = 0
  end
  L4_2 = CreateObject
  L5_2 = GetHashKey
  L6_2 = A1_2[1]
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = 0
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L22_1 = L4_2
  L4_2 = SetEntityCollision
  L5_2 = L22_1
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityHeading
  L5_2 = L22_1
  L6_2 = 0.0
  L4_2(L5_2, L6_2)
  L4_2 = PiazzaBottiglia
  L4_2()
  L4_2 = true
  L21_1 = L4_2
end
L24_1(L25_1, L26_1)
L24_1 = 0
L25_1 = 0
L26_1 = RegisterCommand
L27_1 = "bottiglia"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = "ng_proc_brkbottle_02a"
  L23_1 = L2_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L22_1
  if nil ~= L4_2 then
    L4_2 = DeleteEntity
    L5_2 = L22_1
    L4_2(L5_2)
    L4_2 = nil
    L22_1 = L4_2
    L4_2 = 0
    L24_1 = L4_2
  end
  L4_2 = CreateObject
  L5_2 = -1318793273
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = 0
  L10_2 = true
  L11_2 = true
  L12_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L22_1 = L4_2
  L4_2 = SetEntityCollision
  L5_2 = L22_1
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityHeading
  L5_2 = L22_1
  L6_2 = 0.0
  L4_2(L5_2, L6_2)
  L4_2 = PiazzaBottiglia
  L4_2()
  L4_2 = true
  L21_1 = L4_2
end
L26_1(L27_1, L28_1)
L26_1 = _ENV
L27_1 = "SceneTarget"
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetGameplayCamCoord
  L0_2 = L0_2()
  L1_2 = nil
  L2_2 = _ENV
  L3_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L2_2 = L2_2[L3_2]
  L3_2 = L0_2
  L4_2 = GetCoordsFromCam
  L5_2 = 10.0
  L6_2 = L0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = -1
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = 4
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L2_2
  L2_2 = GetShapeTestResult
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  return L4_2
end
L26_1[L27_1] = L28_1
L26_1 = _ENV
L27_1 = "GetCoordsFromCam"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetGameplayCamRot
  L2_2 = L2_2()
  L3_2 = vector3
  L4_2 = math
  L4_2 = L4_2.pi
  L4_2 = L4_2 / 180
  L5_2 = L2_2.x
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.pi
  L5_2 = L5_2 / 180
  L6_2 = L2_2.y
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.pi
  L6_2 = L6_2 / 180
  L7_2 = L2_2.z
  L6_2 = L6_2 * L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L3_2[3]
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.abs
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2[1]
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L3_2[3]
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.abs
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L3_2[1]
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L3_2[1]
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = vector3
  L6_2 = A1_2[1]
  L7_2 = L4_2[1]
  L7_2 = L7_2 * A0_2
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2[2]
  L8_2 = L4_2[2]
  L8_2 = L8_2 * A0_2
  L7_2 = L7_2 + L8_2
  L8_2 = A1_2[3]
  L9_2 = L4_2[3]
  L9_2 = L9_2 * A0_2
  L8_2 = L8_2 + L9_2
  return L5_2(L6_2, L7_2, L8_2)
end
L26_1[L27_1] = L28_1
L26_1 = _ENV
L27_1 = "PiazzaBottiglia"
function L28_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    while true do
      L0_3 = L21_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsPedSwimmingUnderWater
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsPedSwimming
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          goto lbl_20
        end
      end
      do return end
      ::lbl_20::
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 202
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 73
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 38
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 27
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 173
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 174
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 2
      L3_3 = 175
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = table
      L1_3 = L1_3.unpack
      L2_3 = SceneTarget
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3 = L2_3()
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
      z = L3_3
      y = L2_3
      x = L1_3
      L1_3 = DrawMarker
      L2_3 = 1
      L3_3 = x
      L4_3 = y
      L5_3 = z
      L6_3 = 0
      L7_3 = 0
      L8_3 = 0
      L9_3 = 0
      L10_3 = 0
      L11_3 = 0
      L12_3 = 0.01
      L13_3 = 0.01
      L14_3 = 0.5
      L15_3 = 255
      L16_3 = 255
      L17_3 = 0
      L18_3 = 100
      L19_3 = false
      L20_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
      L1_3 = SetEntityCoords
      L2_3 = L22_1
      L3_3 = x
      L4_3 = y
      L5_3 = z
      L6_3 = L24_1
      L5_3 = L5_3 + L6_3
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = SetEntityHeading
      L2_3 = L22_1
      L3_3 = L25_1
      L1_3(L2_3, L3_3)
      L1_3 = IsDisabledControlJustReleased
      L2_3 = 2
      L3_3 = 38
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = GetEntityHeading
        L2_3 = L22_1
        L1_3 = L1_3(L2_3)
        L2_3 = GetEntityCoords
        L3_3 = L22_1
        L2_3 = L2_3(L3_3)
        L3_3 = exports
        L3_3 = L3_3.striano_combat
        L4_3 = L3_3
        L3_3 = L3_3.submexError
        L5_3 = "Bottiglia Piazzata."
        L3_3(L4_3, L5_3)
        L3_3 = false
        L21_1 = L3_3
        L3_3 = L22_1
        if nil ~= L3_3 then
          L3_3 = DeleteEntity
          L4_3 = L22_1
          L3_3(L4_3)
          L3_3 = nil
          L22_1 = L3_3
          L3_3 = 0
          L24_1 = L3_3
        end
        L3_3 = exports
        L3_3 = L3_3.striano_combat
        L4_3 = L3_3
        L3_3 = L3_3.submexError
        L5_3 = "Hai finito le bottiglie vuote in inventario."
        L3_3(L4_3, L5_3)
        L3_3 = Wait
        L4_3 = 2000
        L3_3(L4_3)
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 2
      L3_3 = 174
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L25_1
        L2_3 = 360.0
        if L1_3 >= L2_3 then
          L1_3 = 360
          L25_1 = L1_3
        end
        L1_3 = L25_1
        L1_3 = L1_3 + 5.0
        L25_1 = L1_3
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 2
      L3_3 = 175
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L25_1
        if L1_3 <= 0.0 then
          L1_3 = 0
          L25_1 = L1_3
        end
        L1_3 = L25_1
        L1_3 = L1_3 - 5.0
        L25_1 = L1_3
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 2
      L3_3 = 27
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L24_1
        L1_3 = L1_3 + 0.02
        L24_1 = L1_3
      end
      L1_3 = IsDisabledControlPressed
      L2_3 = 2
      L3_3 = 173
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = L24_1
        L1_3 = L1_3 - 0.02
        L24_1 = L1_3
      end
      L1_3 = IsDisabledControlJustReleased
      L2_3 = 2
      L3_3 = 202
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlJustReleased
        L2_3 = 2
        L3_3 = 73
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_209
        end
      end
      L1_3 = false
      L21_1 = L1_3
      L1_3 = L22_1
      if nil ~= L1_3 then
        L1_3 = DeleteEntity
        L2_3 = L22_1
        L1_3(L2_3)
        L1_3 = nil
        L22_1 = L1_3
        L1_3 = 0
        L24_1 = L1_3
      end
      ::lbl_209::
    end
    L0_3 = L21_1
    if not L0_3 then
      L0_3 = print
      L1_3 = "Editor bottiglia chiuso per not tempeditor"
      L0_3(L1_3)
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.submex
      L2_3 = ""
      L0_3(L1_3, L2_3)
      L0_3 = L22_1
      if nil ~= L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L22_1
        L0_3(L1_3)
        L0_3 = nil
        L22_1 = L0_3
        L0_3 = 0
        L24_1 = L0_3
      end
      return
    end
  end
  L0_2(L1_2)
end
L26_1[L27_1] = L28_1
L26_1 = false
L27_1 = {}
L28_1 = {}
L29_1 = RegisterCommand
L30_1 = "ferpis"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = "nm@recover@injured@pistol"
  L3_2 = "centre_narrow"
  L4_2 = HasAnimDictLoaded
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RequestAnimDict
    L5_2 = L2_2
    L4_2(L5_2)
    while true do
      L4_2 = HasAnimDictLoaded
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  end
  L4_2 = TaskPlayAnim
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 8.0
  L9_2 = 0
  L10_2 = -1
  L11_2 = 48
  L12_2 = 0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterCommand
L30_1 = "copriti"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = "move_duck_for_cover"
  L3_2 = "loop"
  L4_2 = HasAnimDictLoaded
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RequestAnimDict
    L5_2 = L2_2
    L4_2(L5_2)
    while true do
      L4_2 = HasAnimDictLoaded
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 10
      L4_2(L5_2)
    end
  end
  L4_2 = TaskPlayAnim
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 2.0
  L9_2 = 2.0
  L10_2 = -1
  L11_2 = 1
  L12_2 = 0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterCommand
L30_1 = "feritopistolaterra"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = IsPedInAnyVehicle
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = "nm@writhe@pistol@"
    L3_2 = "front"
    L4_2 = L2_2
    L5_2 = HasAnimDictLoaded
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = RequestAnimDict
      L6_2 = L4_2
      L5_2(L6_2)
      while true do
        L5_2 = HasAnimDictLoaded
        L6_2 = L4_2
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
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = 8.0
    L10_2 = 0
    L11_2 = -1
    L12_2 = 32
    L13_2 = 0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
end
L29_1(L30_1, L31_1)
L29_1 = false
L30_1 = nil
L31_1 = _ENV
L32_1 = "CreateThread"
L31_1 = L31_1[L32_1]
function L32_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedArmed
    L2_2 = L0_2
    L3_2 = 4
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = IsPedRagdoll
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_94
      end
      L1_2 = IsPedDeadOrDying
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_94
      end
      L1_2 = IsPedInCover
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedAimingFromCover
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedGoingIntoCover
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedInHighCover
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              goto lbl_53
            end
          end
        end
      end
      L1_2 = GetCurrentPedWeapon
      L2_2 = L0_2
      L3_2 = true
      L1_2, L2_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L3_2 = L30_1
        if nil == L3_2 then
          L30_1 = L2_2
          goto lbl_94
          ::lbl_53::
          L1_2 = L30_1
          if nil ~= L1_2 then
            L1_2 = nil
            L30_1 = L1_2
          end
        end
      end
    else
      L1_2 = IsPedInCover
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsPedAimingFromCover
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedGoingIntoCover
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedInHighCover
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              goto lbl_91
            end
          end
        end
      end
      L1_2 = L30_1
      if nil ~= L1_2 then
        L1_2 = GiveWeaponToPed
        L2_2 = L0_2
        L3_2 = L30_1
        L4_2 = 0
        L5_2 = false
        L6_2 = true
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L1_2 = nil
        L30_1 = L1_2
      end
      ::lbl_91::
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
    ::lbl_94::
  end
end
L31_1(L32_1)
L31_1 = false
L32_1 = _ENV
L33_1 = "exports"
L32_1 = L32_1[L33_1]
L33_1 = "disableLadder"
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = L31_1
    if not L1_2 then
      L31_1 = A0_2
      L1_2 = SetPedConfigFlag
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = 146
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  else
    L1_2 = L31_1
    if L1_2 then
      L31_1 = A0_2
      L1_2 = SetPedConfigFlag
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = 146
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L32_1(L33_1, L34_1)
L32_1 = RegisterCommand
L33_1 = "type"
function L34_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "e sit13"
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 150
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "e type3"
  L0_2(L1_2)
end
L32_1(L33_1, L34_1)
L32_1 = RegisterCommand
L33_1 = "fixAlpha"
function L34_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = IsPedInAnyVehicle
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = GetVehiclePedIsIn
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L1_2 = SetEntityAlpha
    L2_2 = L0_2
    L3_2 = 255
    L1_2(L2_2, L3_2)
  end
end
L32_1(L33_1, L34_1)
L32_1 = RegisterCommand
L33_1 = "timecycle"
function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2[1]
  if nil ~= L3_2 then
    L3_2 = A1_2[1]
    if "" ~= L3_2 then
      goto lbl_10
    end
  end
  L3_2 = ClearTimecycleModifier
  L3_2()
  goto lbl_13
  ::lbl_10::
  L3_2 = SetTimecycleModifier
  L4_2 = A1_2[1]
  L3_2(L4_2)
  ::lbl_13::
end
L32_1(L33_1, L34_1)
L32_1 = false
L33_1 = _ENV
L34_1 = "fBloccaMostra"
function L35_1()
  local L0_2, L1_2
  L0_2 = true
  L32_1 = L0_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = false
  L32_1 = L0_2
end
L33_1[L34_1] = L35_1
L33_1 = RegisterCommand
L34_1 = "mystress"
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L32_1
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Operazione disponibile ogni 3 secondi."
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getStatusClient
  L2_2 = "stress"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e me"
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "me stress: "
  L3_2 = round
  L4_2 = L0_2 / 10000
  L3_2 = L3_2(L4_2)
  L4_2 = "~c~%"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = fBloccaMostra
  L1_2()
end
L33_1(L34_1, L35_1)
L33_1 = RegisterCommand
L34_1 = "myigiene"
function L35_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L32_1
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Operazione disponibile ogni 3 secondi."
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getStatusClient
  L2_2 = "igiene"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e me"
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "me igiene: "
  L3_2 = round
  L4_2 = L0_2 / 10000
  L3_2 = L3_2(L4_2)
  L4_2 = "~c~%"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = fBloccaMostra
  L1_2()
end
L33_1(L34_1, L35_1)
L33_1 = RegisterNetEvent
L34_1 = "PlayerKilled:Notification"
function L35_1()
  local L0_2, L1_2
end
L33_1(L34_1, L35_1)
L33_1 = AddEventHandler
L34_1 = "esx:onPlayerDeath"
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetPedKiller
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPedType
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L26_1
  if L4_2 then
    L4_2 = DetachEntity
    L5_2 = L1_2
    L6_2 = true
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetEntityVisible
    L5_2 = L1_2
    L6_2 = true
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = ClearPedTasks
    L5_2 = L1_2
    L4_2(L5_2)
    L4_2 = SetEntityCoords
    L5_2 = L1_2
    L6_2 = GetOffsetFromEntityInWorldCoords
    L7_2 = L1_2
    L8_2 = 0.0
    L9_2 = -0.5
    L10_2 = -0.75
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = false
    L26_1 = L4_2
  end
  L4_2 = IsHandcuffed
  if L4_2 then
    IsHandcuffed = false
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = ExecuteCommand
    L6_2 = "e c"
    L5_2(L6_2)
    L5_2 = ClearPedSecondaryTask
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = SetEnableHandcuffs
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = SetPedCanPlayGestureAnims
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L4_2 = TriggerServerEvent
  L5_2 = "vSync:getSync"
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = myGhost
  if L4_2 then
    L4_2 = SetEntityAsMissionEntity
    L5_2 = myGhost
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = DeleteEntity
    L5_2 = myGhost
    L4_2(L5_2)
    myGhost = nil
  end
  L4_2 = SetFollowPedCamViewMode
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = SetFollowVehicleCamViewMode
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = SetSeethrough
  L5_2 = false
  L4_2(L5_2)
  L4_2 = SetNightvision
  L5_2 = false
  L4_2(L5_2)
  L4_2 = ExecuteCommand
  L5_2 = "prova3 "
  L4_2(L5_2)
end
L33_1(L34_1, L35_1)
L33_1 = {}
L34_1 = 811169045
L35_1 = 666561306
L36_1 = 1511880420
L37_1 = -206690185
L38_1 = 666561306
L39_1 = 218085040
L40_1 = -58485588
L41_1 = 682791951
L42_1 = -206690185
L33_1[1] = L34_1
L33_1[2] = L35_1
L33_1[3] = L36_1
L33_1[4] = L37_1
L33_1[5] = L38_1
L33_1[6] = L39_1
L33_1[7] = L40_1
L33_1[8] = L41_1
L33_1[9] = L42_1
L34_1 = true
L35_1 = nil
L36_1 = RegisterCommand
L37_1 = "nascondimi"
function L38_1()
  local L0_2, L1_2
  L0_2 = NascondimiBidone
  L0_2()
end
L36_1(L37_1, L38_1)
L36_1 = RegisterCommand
L37_1 = "nsm"
function L38_1()
  local L0_2, L1_2
  L0_2 = NascondimiBidone
  L0_2()
end
L36_1(L37_1, L38_1)
L36_1 = _ENV
L37_1 = "NascondimiBidone"
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = L35_1
  if nil == L3_2 then
    L3_2 = L34_1
    if L3_2 then
      L3_2 = 1
      L4_2 = L33_1
      L4_2 = #L4_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = GetClosestObjectOfType
        L8_2 = L1_2
        L9_2 = 1.8
        L10_2 = L33_1
        L10_2 = L10_2[L6_2]
        L11_2 = 0
        L12_2 = 0
        L13_2 = 0
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L2_2 = L7_2
        if 0 ~= L2_2 then
          break
        end
      end
      if 0 ~= L2_2 then
        L3_2 = false
        L34_1 = L3_2
        L3_2 = GetEntityCoords
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = GetEntityHeading
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = SetCurrentPedWeapon
        L6_2 = L0_2
        L7_2 = -1569615261
        L8_2 = true
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = TaskTurnPedToFaceEntity
        L6_2 = L0_2
        L7_2 = L2_2
        L8_2 = 1000
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = Wait
        L6_2 = 1000
        L5_2(L6_2)
        L5_2 = ExecuteCommand
        L6_2 = "e mechanic4"
        L5_2(L6_2)
        L5_2 = FreezeEntityPosition
        L6_2 = L0_2
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = Wait
        L6_2 = 2000
        L5_2(L6_2)
        L5_2 = ExecuteCommand
        L6_2 = "e c"
        L5_2(L6_2)
        L5_2 = LoopCestino
        L5_2()
        L35_1 = L2_2
        L5_2 = SetEntityCoords
        L6_2 = L0_2
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
        L5_2 = SetEntityHeading
        L6_2 = L0_2
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = ExecuteCommand
        L6_2 = "e sit5"
        L5_2(L6_2)
        L5_2 = exports
        L5_2 = L5_2.striano_core
        L6_2 = L5_2
        L5_2 = L5_2.draw
        L7_2 = 73
        L8_2 = "Esci."
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = TriggerServerEvent
        L6_2 = "status:add"
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L8_2 = "stress"
        L9_2 = 5000
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = TriggerServerEvent
        L6_2 = "status:remove"
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L8_2 = "igiene"
        L9_2 = 300000
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = Wait
        L6_2 = 3000
        L5_2(L6_2)
        L5_2 = true
        L34_1 = L5_2
      else
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.submexError
        L5_2 = "Non sei vicino un oggetto dove poterti nascondere."
        L3_2(L4_2, L5_2)
        L3_2 = true
        L34_1 = L3_2
      end
  end
  else
    L3_2 = L35_1
    if nil ~= L3_2 then
      L3_2 = GetOffsetFromEntityInWorldCoords
      L4_2 = L35_1
      L5_2 = 0.0
      L6_2 = -1.0
      L7_2 = -0.5
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = GetEntityHeading
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L0_2
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityHeading
      L6_2 = L0_2
      L7_2 = L4_2 - 180
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityCoords
      L6_2 = L0_2
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
      L5_2 = ExecuteCommand
      L6_2 = "e c"
      L5_2(L6_2)
      L5_2 = Wait
      L6_2 = 500
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "shakeoff"
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "me si pulisce dai rifiuti"
      L5_2(L6_2)
      L5_2 = nil
      L35_1 = L5_2
      L5_2 = Wait
      L6_2 = 3000
      L5_2(L6_2)
      L5_2 = true
      L34_1 = L5_2
    else
      L3_2 = true
      L34_1 = L3_2
    end
  end
end
L36_1[L37_1] = L38_1
L36_1 = _ENV
L37_1 = "LoopCestino"
function L38_1()
  local L0_2, L1_2
  L0_2 = L35_1
  if nil ~= L0_2 then
  else
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = L35_1
        if nil ~= L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 73
            L0_3 = L0_3(L1_3, L2_3)
          end
          if L0_3 then
            L0_3 = ExecuteCommand
            L1_3 = "nascondimi"
            L0_3(L1_3)
            return
          end
        else
          return
        end
      end
    end
    L0_2(L1_2)
  end
end
L36_1[L37_1] = L38_1
L36_1 = false
L37_1 = true
L38_1 = RegisterCommand
L39_1 = "nascondibaule"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetClosestVehicle
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = 5.0
  L5_2 = 0
  L6_2 = 70
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if 0 == L2_2 or nil == L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Nessun veicolo nelle vicinanze per nasconderti nel baule."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = GetVehicleDoorAngleRatio
  L4_2 = L2_2
  L5_2 = 5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0.1
  if L3_2 <= L4_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Il baule \195\168 chiuso, premi U per aprirlo."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L26_1
  if not L3_2 then
    L3_2 = L37_1
    if not L3_2 then
      return
    end
    L3_2 = false
    L37_1 = L3_2
    L3_2 = PlayerVicino
    L3_2 = L3_2()
    L4_2 = GetPlayerPed
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = IsEntityAttached
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = GetEntityCoords
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L6_2 = GetEntityCoords
        L7_2 = L1_2
        L6_2 = L6_2(L7_2)
        L5_2 = L5_2 - L6_2
        L5_2 = #L5_2
        if not (L5_2 >= 5.0) then
          goto lbl_141
        end
      end
      L5_2 = SetCarBootOpen
      L6_2 = L2_2
      L5_2(L6_2)
      L5_2 = Wait
      L6_2 = 350
      L5_2(L6_2)
      L5_2 = AttachEntityToEntity
      L6_2 = L1_2
      L7_2 = L2_2
      L8_2 = -1
      L9_2 = 0.0
      L10_2 = -2.2
      L11_2 = 0.5
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = false
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L19_2 = 20
      L20_2 = true
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L5_2 = loadDict
      L6_2 = "timetable@floyd@cryingonbed@base"
      L5_2(L6_2)
      L5_2 = TaskPlayAnim
      L6_2 = L1_2
      L7_2 = "timetable@floyd@cryingonbed@base"
      L8_2 = "base"
      L9_2 = 8.0
      L10_2 = -8.0
      L11_2 = -1
      L12_2 = 1
      L13_2 = 0
      L14_2 = false
      L15_2 = false
      L16_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L5_2 = Wait
      L6_2 = 50
      L5_2(L6_2)
      L5_2 = true
      L26_1 = L5_2
      L5_2 = Wait
      L6_2 = 1500
      L5_2(L6_2)
      L5_2 = SetVehicleDoorShut
      L6_2 = L2_2
      L7_2 = 5
      L5_2(L6_2, L7_2)
      L5_2 = SetEntityVisible
      L6_2 = L1_2
      L7_2 = false
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetEntityCollision
      L6_2 = L1_2
      L7_2 = false
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L36_1
      if not L5_2 then
        L5_2 = true
        L36_1 = L5_2
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.submexError
        L7_2 = "Per uscire usa /escibaule"
        L5_2(L6_2, L7_2)
        goto lbl_146
        ::lbl_141::
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.submexError
        L7_2 = "Sembra esserci gi\195\160 qualcuno nel baule."
        L5_2(L6_2, L7_2)
      end
    end
    ::lbl_146::
    L5_2 = Wait
    L6_2 = 500
    L5_2(L6_2)
    L5_2 = true
    L37_1 = L5_2
  end
end
L38_1(L39_1, L40_1)
L38_1 = _ENV
L39_1 = "loadDict"
function L40_1(A0_2)
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
L38_1[L39_1] = L40_1
L38_1 = RegisterCommand
L39_1 = "escibaule"
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L37_1
  if not L1_2 then
    return
  end
  L1_2 = false
  L37_1 = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityAttachedTo
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L26_1
  if L3_2 then
    L3_2 = GetEntitySpeed
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = 0.05
    if L3_2 < L4_2 then
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = DoesEntityExist
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = IsPedDeadOrDying
        L5_2 = L1_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = IsPedFatallyInjured
          L5_2 = L1_2
          L4_2 = L4_2(L5_2)
          if L4_2 then
            goto lbl_95
          end
        end
      end
      L4_2 = SetCarBootOpen
      L5_2 = L2_2
      L4_2(L5_2)
      L4_2 = SetEntityCollision
      L5_2 = L1_2
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = SetEntityVisible
      L5_2 = L1_2
      L6_2 = true
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = Wait
      L5_2 = 1750
      L4_2(L5_2)
      L4_2 = false
      L26_1 = L4_2
      L4_2 = DetachEntity
      L5_2 = L1_2
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = ClearPedTasks
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = SetEntityCoords
      L5_2 = L1_2
      L6_2 = GetOffsetFromEntityInWorldCoords
      L7_2 = L1_2
      L8_2 = 0.0
      L9_2 = -0.5
      L10_2 = -0.75
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L4_2 = Wait
      L5_2 = 250
      L4_2(L5_2)
      L4_2 = SetVehicleDoorShut
      L5_2 = L2_2
      L6_2 = 5
      L4_2(L5_2, L6_2)
      L4_2 = Wait
      L5_2 = 500
      L4_2(L5_2)
      L4_2 = RequestCollisionAtCoord
      L5_2 = L3_2.x
      L6_2 = L3_2.y
      L7_2 = L3_2.z
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = Wait
      L5_2 = 2000
      L4_2(L5_2)
      L4_2 = true
      L37_1 = L4_2
      goto lbl_132
      ::lbl_95::
      L4_2 = SetEntityCollision
      L5_2 = L1_2
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = DetachEntity
      L5_2 = L1_2
      L6_2 = true
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = SetEntityVisible
      L5_2 = L1_2
      L6_2 = true
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = ClearPedTasks
      L5_2 = L1_2
      L4_2(L5_2)
      L4_2 = SetEntityCoords
      L5_2 = L1_2
      L6_2 = GetOffsetFromEntityInWorldCoords
      L7_2 = L1_2
      L8_2 = 0.0
      L9_2 = -0.5
      L10_2 = -0.75
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L4_2 = false
      L26_1 = L4_2
      L4_2 = true
      L37_1 = L4_2
  end
  else
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submexError
    L5_2 = "Non sei in un baule o stai andando troppo veloce per questa operazione."
    L3_2(L4_2, L5_2)
  end
  ::lbl_132::
end
L38_1(L39_1, L40_1)
L38_1 = RegisterCommand
L39_1 = "bj"
function L40_1(A0_2)
  local L1_2, L2_2
  L1_2 = ExecuteCommand
  L2_2 = "e cpr"
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e drink2"
  L1_2(L2_2)
end
L38_1(L39_1, L40_1)
L38_1 = RegisterNetEvent
L39_1 = "core:faiprint"
L38_1(L39_1)
L38_1 = AddEventHandler
L39_1 = "core:faiprint"
function L40_1(A0_2)
  local L1_2, L2_2
  L1_2 = print
  L2_2 = A0_2
  L1_2(L2_2)
end
L38_1(L39_1, L40_1)
L38_1 = AddEventHandler
L39_1 = "onResourceStart"
function L40_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = true
    L8_1 = L1_2
    tutorialFatto = true
    L1_2 = InitCrash
    L1_2()
  end
end
L38_1(L39_1, L40_1)
L38_1 = false
L39_1 = RegisterCommand
L40_1 = "unamano"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L38_1
  if L0_2 then
    L0_2 = SetPedConfigFlag
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 424
    L3_2 = false
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = false
    L38_1 = L0_2
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Una mano in veicolo ~c~disattiva~w~."
    L0_2(L1_2, L2_2)
  else
    L0_2 = SetPedConfigFlag
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 424
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = LoopVeicoloUnaMano
    L0_2()
    L0_2 = true
    L38_1 = L0_2
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Una mano in veicolo ~c~attiva~w~."
    L0_2(L1_2, L2_2)
  end
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "LoopVeicoloUnaMano"
function L41_1()
  local L0_2, L1_2
  L0_2 = L38_1
  if L0_2 then
  else
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
        L0_3 = L38_1
        if L0_3 then
          L0_3 = SetPedConfigFlag
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = 424
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
        else
          return
        end
      end
    end
    L0_2(L1_2)
  end
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "AddPropToPlayer"
function L41_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = GetEntityCoords
  L10_2 = PlayerPedId
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L10_2()
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L11_2 = RequestModelStriano
  L12_2 = A0_2
  L11_2(L12_2)
  L11_2 = CreateObject
  L12_2 = A0_2
  L13_2 = L8_2
  L14_2 = L9_2
  L15_2 = L10_2 - 1.5
  L16_2 = true
  L17_2 = true
  L18_2 = true
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = SetEntityCollision
  L13_2 = L11_2
  L14_2 = false
  L15_2 = true
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = SetEntityCompletelyDisableCollision
  L13_2 = L11_2
  L14_2 = true
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = AttachEntityToEntity
  L13_2 = L11_2
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = GetPedBoneIndex
  L16_2 = PlayerPedId
  L16_2 = L16_2()
  L17_2 = A1_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A2_2
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = true
  L23_2 = true
  L24_2 = false
  L25_2 = true
  L26_2 = 1
  L27_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = SetModelAsNoLongerNeeded
  L13_2 = A0_2
  L12_2(L13_2)
  return L11_2
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "AddPropToPlayerPed"
function L41_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L9_2 = A0_2
  L10_2 = table
  L10_2 = L10_2.unpack
  L11_2 = GetEntityCoords
  L12_2 = L9_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L11_2(L12_2)
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  L13_2 = GetClosestObjectOfType
  L14_2 = vector3
  L15_2 = L10_2
  L16_2 = L11_2
  L17_2 = L12_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = 2.0
  L16_2 = A1_2
  L17_2 = 0
  L18_2 = 0
  L19_2 = 0
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  if 0 ~= L13_2 then
    return
  end
  L14_2 = RequestModelStriano
  L15_2 = A1_2
  L14_2(L15_2)
  L14_2 = CreateObject
  L15_2 = A1_2
  L16_2 = L10_2
  L17_2 = L11_2
  L18_2 = L12_2 - 1.5
  L19_2 = true
  L20_2 = true
  L21_2 = true
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L15_2 = SetEntityCollision
  L16_2 = L14_2
  L17_2 = false
  L18_2 = true
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = SetEntityCompletelyDisableCollision
  L16_2 = L14_2
  L17_2 = true
  L18_2 = false
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = AttachEntityToEntity
  L16_2 = L14_2
  L17_2 = L9_2
  L18_2 = GetPedBoneIndex
  L19_2 = L9_2
  L20_2 = A2_2
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = A3_2
  L20_2 = A4_2
  L21_2 = A5_2
  L22_2 = A6_2
  L23_2 = A7_2
  L24_2 = A8_2
  L25_2 = true
  L26_2 = true
  L27_2 = false
  L28_2 = true
  L29_2 = 1
  L30_2 = true
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  L15_2 = SetModelAsNoLongerNeeded
  L16_2 = A1_2
  L15_2(L16_2)
  return L14_2
end
L39_1[L40_1] = L41_1
L39_1 = RegisterCommand
L40_1 = "asce"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = StartAudioScene
  L3_2 = A1_2[1]
  L2_2(L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "BloccaF2F3"
function L41_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 289
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 170
      L0_3(L1_3, L2_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = "missexile3"
      L3_3 = "ex03_dingy_search_case_a_michael"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        return
      end
    end
  end
  L0_2(L1_2)
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "Draw3DText"
function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = World3dToScreen2d
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L7_2 = SetTextScale
    L8_2 = 0.35
    L9_2 = 0.35
    L7_2(L8_2, L9_2)
    L7_2 = SetTextFont
    L8_2 = 4
    L7_2(L8_2)
    L7_2 = SetTextProportional
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = SetTextColour
    L8_2 = 255
    L9_2 = 255
    L10_2 = 255
    L11_2 = 255
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = SetTextEntry
    L8_2 = "STRING"
    L7_2(L8_2)
    L7_2 = SetTextCentre
    L8_2 = 1
    L7_2(L8_2)
    L7_2 = AddTextComponentString
    L8_2 = A3_2
    L7_2(L8_2)
    L7_2 = DrawText
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = string
    L7_2 = L7_2.len
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 / 370
    L8_2 = DrawRect
    L9_2 = L5_2
    L10_2 = L6_2 + 0.0125
    L11_2 = 0.015 + L7_2
    L12_2 = 0.03
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 159
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "CreateThread"
L39_1 = L39_1[L40_1]
function L40_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_01_STAGE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "se_dlc_aw_arena_crowd_exterior_lobby"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "se_dlc_aw_arena_crowd_background_main"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "se_dlc_aw_arena_crowd_interior_lobby"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "se_dlc_aw_arena_construction_01"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetAmbientZoneListStatePersistent
  L1_2 = "AZL_DLC_HEI4_Arena_Ambience_Zones"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = StartAudioScene
  L1_2 = "DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE"
  L0_2(L1_2)
  L0_2 = SetAudioFlag
  L1_2 = "PoliceScannerDisabled"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = DistantCopCarSirens
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_01_STAGE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetStaticEmitterEnabled
  L1_2 = "LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetAmbientZoneListStatePersistent
  L1_2 = "AZL_DLC_Hei4_Island_Disabled_Zones"
  L2_2 = false
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetAmbientZoneListStatePersistent
  L1_2 = "AZL_DLC_Hei4_Island_Zones"
  L2_2 = true
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_STREETRACE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_SALTON_DIRT_BIKE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_SALTON"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_POLICE_CAR"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_POLICE_BIKE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_MILITARY_PLANES_SMALL"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_MILITARY_PLANES_BIG"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_MECHANIC"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_EMPTY"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_BUSINESSMEN"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetScenarioTypeEnabled
  L1_2 = "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = StartAudioScene
  L1_2 = "FBI_HEIST_H5_MUTE_AMBIENCE_SCENE"
  L0_2(L1_2)
  L0_2 = SetAudioFlag
  L1_2 = "PoliceScannerDisabled"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetAudioFlag
  L1_2 = "DisableFlightMusic"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetRandomEventFlag
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SetDeepOceanScaler
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = SetWind
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = SetWindSpeed
  L1_2 = 0.0
  L0_2(L1_2)
  L0_2 = SetWindDirection
  L1_2 = 0.0
  L0_2(L1_2)
end
L39_1(L40_1)
L39_1 = RegisterCommand
L40_1 = "stopaudio"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = StopCurrentPlayingSpeech
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2(L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "setwind"
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetWind
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = SetWindSpeed
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L39_1(L40_1, L41_1)
L39_1 = _ENV
L40_1 = "ApplicaVestitiOspedale"
function L41_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "skinchanger:getSkin"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if nil ~= A0_3 then
      L6_1 = A0_3
      L1_3 = Wait
      L2_3 = 25
      L1_3(L2_3)
      L1_3 = {}
      L2_3 = GetEntityModel
      L3_3 = PlayerPedId
      L3_3, L4_3, L5_3 = L3_3()
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      if 1885233650 == L2_3 then
        L2_3 = {}
        L2_3.mask_1 = 0
        L2_3.mask_2 = 0
        L2_3.tshirt_1 = 15
        L2_3.tshirt_2 = 0
        L2_3.torso_1 = 144
        L2_3.torso_2 = 0
        L2_3.arms = 6
        L2_3.bags_1 = 0
        L2_3.bags_2 = 0
        L2_3.pants_1 = 65
        L2_3.pants_2 = 0
        L2_3.shoes_1 = 16
        L2_3.shoes_2 = 0
        L2_3.chain_1 = 0
        L2_3.chain_2 = 0
        L2_3.bproof_1 = 0
        L2_3.bproof_2 = 0
        L2_3.decals_1 = 0
        L2_3.decals_2 = 0
        L2_3.helmet_1 = -1
        L2_3.helmet_2 = 0
        L2_3.glasses_1 = 0
        L2_3.glasses_2 = 0
        L1_3 = L2_3
      else
        L2_3 = {}
        L2_3.mask_1 = 0
        L2_3.mask_2 = 0
        L2_3.tshirt_1 = 14
        L2_3.tshirt_2 = 15
        L2_3.torso_1 = 142
        L2_3.torso_2 = 0
        L2_3.arms = 14
        L2_3.pants_1 = 67
        L2_3.pants_2 = 0
        L2_3.shoes_1 = 111
        L2_3.shoes_2 = 6
        L2_3.chain_1 = 0
        L2_3.chain_2 = 0
        L2_3.bproof_1 = 0
        L2_3.bproof_2 = 0
        L2_3.decals_1 = 0
        L2_3.decals_2 = 0
        L2_3.helmet_1 = -1
        L2_3.helmet_2 = 0
        L2_3.glasses_1 = 5
        L2_3.glasses_2 = 0
        L1_3 = L2_3
      end
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadClothes"
      L4_3 = A0_3
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "Errore nel caricamento skin causato da connessione. (Togli Giubotto)"
      L1_3(L2_3, L3_3)
    end
  end
  L0_2(L1_2, L2_2)
end
L39_1[L40_1] = L41_1
L39_1 = _ENV
L40_1 = "exports"
L39_1 = L39_1[L40_1]
L40_1 = "vestitiospedale"
function L41_1()
  local L0_2, L1_2
  L0_2 = ApplicaVestitiOspedale
  L0_2()
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "getnomezona"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = GetNameOfZone
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "getzona"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = GetNameOfZone
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "getzone"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = GetNameOfZone
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = nil
L40_1 = _ENV
L41_1 = "PlayEffect"
function L42_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = 3.0
  if A3_2 then
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
  L6_2 = L39_1
  if nil ~= L6_2 then
    L6_2 = StopParticleFxLooped
    L7_2 = L39_1
    L6_2(L7_2)
    L6_2 = RemoveParticleFx
    L7_2 = L39_1
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = nil
    L39_1 = L6_2
    L6_2 = Wait
    L7_2 = 25
    L6_2(L7_2)
  end
  L6_2 = SetPtfxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = UseParticleFxAssetNextCall
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = StartParticleFxLoopedAtCoord
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = L5_2
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L39_1 = L6_2
  if nil == A4_2 then
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = L39_1
        if nil == L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          L1_3 = A2_2
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if not (L0_3 > 15.0) then
            goto lbl_39
          end
        end
        L0_3 = StopParticleFxLooped
        L1_3 = L39_1
        L0_3(L1_3)
        L0_3 = RemoveParticleFx
        L1_3 = L39_1
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = nil
        L39_1 = L0_3
        L0_3 = PlaySoundFrontend
        L1_3 = -1
        L2_3 = "MP_IDLE_KICK"
        L3_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L4_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3)
        do return end
        ::lbl_39::
      end
    end
    L6_2(L7_2)
  else
    L6_2 = L39_1
    return L6_2
  end
end
L40_1[L41_1] = L42_1
L40_1 = _ENV
L41_1 = "PlayEffectLoop"
function L42_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = 3.0
  if A3_2 then
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
  L6_2 = L39_1
  if nil ~= L6_2 then
    L6_2 = StopParticleFxLooped
    L7_2 = L39_1
    L6_2(L7_2)
    L6_2 = RemoveParticleFx
    L7_2 = L39_1
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = nil
    L39_1 = L6_2
    L6_2 = Wait
    L7_2 = 25
    L6_2(L7_2)
  end
  L6_2 = 25
  if nil ~= A4_2 then
    L6_2 = A4_2
  end
  L7_2 = UseParticleFxAssetNextCall
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = StartParticleFxNonLoopedAtCoord
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = L5_2
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L39_1 = L7_2
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L39_1
      if nil == L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = UseParticleFxAssetNextCall
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = StartParticleFxNonLoopedAtCoord
      L1_3 = A1_2
      L2_3 = A2_2
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L6_3 = L5_2
      L7_3 = false
      L8_3 = false
      L9_3 = false
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L39_1 = L0_3
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = StopParticleFxLooped
        L1_3 = L39_1
        L0_3(L1_3)
        L0_3 = RemoveParticleFx
        L1_3 = L39_1
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = nil
        L39_1 = L0_3
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.notify
        L2_3 = "Fx Loop Stopped."
        L3_3 = 7
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = PlaySoundFrontend
        L1_3 = -1
        L2_3 = "MP_IDLE_KICK"
        L3_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L4_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3)
        return
      end
    end
  end
  L7_2(L8_2)
end
L40_1[L41_1] = L42_1
L40_1 = RegisterCommand
L41_1 = "fx"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = "core"
    L3_2 = A1_2[2]
    if nil ~= L3_2 then
      L2_2 = A1_2[1]
    end
    L3_2 = A1_2[2]
    if nil == L3_2 then
      L3_2 = A1_2[1]
      A1_2[2] = L3_2
    end
    L3_2 = print
    L4_2 = "Debug "
    L5_2 = L2_2
    L6_2 = " "
    L7_2 = A1_2[2]
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    L3_2 = PlayEffect
    L4_2 = L2_2
    L5_2 = A1_2[2]
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "fxl"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = "core"
    L3_2 = A1_2[2]
    if nil ~= L3_2 then
      L2_2 = A1_2[1]
    end
    L3_2 = A1_2[2]
    if nil == L3_2 then
      L3_2 = A1_2[1]
      A1_2[2] = L3_2
    end
    L3_2 = print
    L4_2 = "Debug "
    L5_2 = L2_2
    L6_2 = " "
    L7_2 = A1_2[2]
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    L3_2 = PlayEffectLoop
    L4_2 = L2_2
    L5_2 = A1_2[2]
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "fxall"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2[1]
  if nil ~= L2_2 then
    L2_2 = TriggerEvent
    L3_2 = "ffxall"
    L4_2 = A1_2[1]
    L2_2(L3_2, L4_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "ffxall"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "ffxall"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerServerEvent
  L2_2 = "fxAll"
  L3_2 = A0_2
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "ffxallpos"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "ffxallpos"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "fxAll"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "ffxallpossize"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "ffxallpossize"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerServerEvent
  L4_2 = "fxAllsize"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "ffxallposcore"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "ffxallposcore"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerServerEvent
  L4_2 = "fxAllcore"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "fxAll:client"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "fxAll:client"
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 - A1_2
  L2_2 = #L2_2
  L3_2 = 300.0
  if L2_2 <= L3_2 then
    L2_2 = PlayEffect
    L3_2 = "core"
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "fxAllsize:client"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "fxAllsize:client"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_2 - A1_2
  L3_2 = #L3_2
  L4_2 = 300.0
  if L3_2 <= L4_2 then
    L3_2 = PlayEffect
    L4_2 = "core"
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = RegisterNetEvent
L41_1 = "fxAllcore:client"
L40_1(L41_1)
L40_1 = AddEventHandler
L41_1 = "fxAllcore:client"
function L42_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = L3_2 - A2_2
  L3_2 = #L3_2
  L4_2 = 300.0
  if L3_2 <= L4_2 then
    L3_2 = PlayEffect
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L40_1(L41_1, L42_1)
L40_1 = _ENV
L41_1 = "CreateThread"
L40_1 = L40_1[L41_1]
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = -1
  L1_2 = 0
  L2_2 = 0
  while true do
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = GestisciNPC
    L3_2()
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedInAnyVehicle
    L5_2 = L3_2
    L6_2 = true
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = GetPedPropIndex
      L5_2 = L3_2
      L6_2 = 0
      L4_2 = L4_2(L5_2, L6_2)
      L0_2 = L4_2
      L4_2 = GetPedPropTextureIndex
      L5_2 = L3_2
      L6_2 = 0
      L4_2 = L4_2(L5_2, L6_2)
      L1_2 = L4_2
    else
      L4_2 = GetGameTimer
      L4_2 = L4_2()
      L2_2 = L4_2
      while true do
        L4_2 = IsPedInAnyVehicle
        L5_2 = L3_2
        L6_2 = false
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L4_2 = L2_2 + 2000
          L5_2 = GetGameTimer
          L5_2 = L5_2()
          if not (L4_2 < L5_2) then
            break
          end
        end
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
      end
      L4_2 = IsPedInAnyVehicle
      L5_2 = L3_2
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L4_2 = SetPedPropIndex
        L5_2 = L3_2
        L6_2 = 0
        L7_2 = L0_2
        L8_2 = L1_2
        L9_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        while true do
          L4_2 = IsPedInAnyVehicle
          L5_2 = L3_2
          L6_2 = false
          L4_2 = L4_2(L5_2, L6_2)
          if not L4_2 then
            break
          end
          L4_2 = Wait
          L5_2 = 1000
          L4_2(L5_2)
        end
      end
    end
  end
end
L40_1(L41_1)
L40_1 = {}
L41_1 = "label"
L42_1 = "H"
L40_1[L41_1] = L42_1
L41_1 = "input"
L42_1 = 74
L40_1[L41_1] = L42_1
L41_1 = "holdDuration"
L42_1 = 1000
L40_1[L41_1] = L42_1
L41_1 = _ENV
L42_1 = "CreateThread"
L41_1 = L41_1[L42_1]
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L40_1.input
  L1_2 = nil
  while true do
    L2_2 = 3000
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedInAnyVehicle
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = GetVehiclePedIsIn
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = GetPedInVehicleSeat
      L6_2 = L4_2
      L7_2 = -1
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 == L3_2 then
        L2_2 = 50
        L5_2 = IsControlPressed
        L6_2 = 0
        L7_2 = L0_2
        L5_2 = L5_2(L6_2, L7_2)
        if not L5_2 then
          L5_2 = IsDisabledControlPressed
          L6_2 = 0
          L7_2 = L0_2
          L5_2 = L5_2(L6_2, L7_2)
          if not L5_2 then
            goto lbl_75
          end
        end
        if nil == L1_2 then
          L5_2 = GetGameTimer
          L5_2 = L5_2()
          L1_2 = L5_2
        else
          L5_2 = L1_2 + 100
          L6_2 = GetGameTimer
          L6_2 = L6_2()
          if L5_2 < L6_2 then
            L2_2 = 1
            L5_2 = DisableControlAction
            L6_2 = 0
            L7_2 = L0_2
            L5_2(L6_2, L7_2)
          end
        end
        L5_2 = L40_1.holdDuration
        L5_2 = L1_2 + L5_2
        L6_2 = GetGameTimer
        L6_2 = L6_2()
        if L5_2 < L6_2 then
          L5_2 = CreateThread
          function L6_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = GetGameTimer
            L0_3 = L0_3()
            L0_3 = L0_3 + 1200
            while true do
              L1_3 = GetGameTimer
              L1_3 = L1_3()
              if not (L0_3 > L1_3) then
                break
              end
              L1_3 = Wait
              L2_3 = 1
              L1_3(L2_3)
              L1_3 = DisableControlAction
              L2_3 = 0
              L3_3 = L0_2
              L1_3(L2_3, L3_3)
            end
          end
          L5_2(L6_2)
          L5_2 = ExecuteCommand
          L6_2 = "e point"
          L5_2(L6_2)
          L5_2 = Wait
          L6_2 = 500
          L5_2(L6_2)
          L5_2 = SetVehicleInteriorlight
          L6_2 = L4_2
          L7_2 = IsVehicleInteriorLightOn
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L7_2 = not L7_2
          L5_2(L6_2, L7_2)
          L1_2 = nil
          goto lbl_76
          ::lbl_75::
          L1_2 = nil
        end
      end
    end
    ::lbl_76::
    L4_2 = Wait
    L5_2 = L2_2
    L4_2(L5_2)
  end
end
L41_1(L42_1)
L41_1 = _ENV
L42_1 = "makeEntityFaceEntity"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = IsPedInAnyVehicle
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
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
L41_1[L42_1] = L43_1
L41_1 = _ENV
L42_1 = "makeEntityFaceEntityRev"
function L43_1(A0_2, A1_2)
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
      L9_2 = L6_2 + 180.0
      L7_2(L8_2, L9_2)
  end
  else
    L2_2 = print
    L3_2 = "Una delle 2 entity non esiste per girarla (makeEntityFaceEntity)."
    L2_2(L3_2)
  end
end
L41_1[L42_1] = L43_1
L41_1 = _ENV
L42_1 = "CreateThread"
L41_1 = L41_1[L42_1]
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = {}
  L1_2 = "STAMINA"
  L2_2 = "STRENGTH"
  L3_2 = "LUNG_CAPACITY"
  L4_2 = "WHEELIE_ABILITY"
  L5_2 = "FLYING_ABILITY"
  L6_2 = "SHOOTING_ABILITY"
  L7_2 = "STEALTH_ABILITY"
  L8_2 = "DRIVING_ABILITY"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L1_2 = 120
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = ipairs
    L7_2 = L0_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = StatSetInt
      L13_2 = GetHashKey
      L14_2 = "MP"
      L15_2 = L5_2
      L16_2 = "_"
      L17_2 = L11_2
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      L13_2 = L13_2(L14_2)
      L14_2 = L1_2
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = StatSetInt
      L13_2 = GetHashKey
      L14_2 = "SP"
      L15_2 = L5_2
      L16_2 = "_"
      L17_2 = L11_2
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      L13_2 = L13_2(L14_2)
      L14_2 = L1_2
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = StatSetInt
      L13_2 = "MP"
      L14_2 = L5_2
      L15_2 = "_"
      L16_2 = L11_2
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      L14_2 = L1_2
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
      L12_2 = StatSetInt
      L13_2 = "SP"
      L14_2 = L5_2
      L15_2 = "_"
      L16_2 = L11_2
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      L14_2 = L1_2
      L15_2 = true
      L12_2(L13_2, L14_2, L15_2)
    end
  end
end
L41_1(L42_1)
L41_1 = _ENV
L42_1 = "soffoco"
L43_1 = false
L41_1[L42_1] = L43_1
L41_1 = _ENV
L42_1 = "exports"
L41_1 = L41_1[L42_1]
L42_1 = "soffoco"
function L43_1()
  local L0_2, L1_2
  L0_2 = soffoco
  return L0_2
end
L41_1(L42_1, L43_1)
L41_1 = nil
L42_1 = _ENV
L43_1 = "StartGradualDamage"
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L1_2 = {}
    A0_2 = L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2.rate
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 5
  end
  L2_2 = tonumber
  L3_2 = A0_2.duration
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 30
  end
  L3_2 = A0_2.canKill
  if not L3_2 then
    L3_2 = false
  end
  L4_2 = tonumber
  L5_2 = A0_2.minHealth
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 101
  end
  L5_2 = tonumber
  L6_2 = A0_2.tickMs
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 200
  end
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = L41_1
  if L7_2 then
    L41_1.cancel = true
  end
  L7_2 = {}
  L7_2.cancel = false
  L41_1 = L7_2
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L41_1
    L1_3 = 0
    L2_3 = 0.0
    while true do
      L3_3 = L0_3.cancel
      if L3_3 then
        break
      end
      L3_3 = velenoattivo
      if not L3_3 then
        break
      end
      L3_3 = DoesEntityExist
      L4_3 = L6_2
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        break
      end
      L3_3 = IsEntityDead
      L4_3 = L6_2
      L3_3 = L3_3(L4_3)
      if L3_3 then
        break
      end
      L3_3 = GetEntityHealth
      L4_3 = L6_2
      L3_3 = L3_3(L4_3)
      L4_3 = L3_2
      if L4_3 then
        L4_3 = 0
        if L4_3 then
          goto lbl_30
        end
      end
      L4_3 = L4_2
      ::lbl_30::
      if L3_3 <= L4_3 then
        break
      end
      L5_3 = L1_2
      L6_3 = L5_2
      L6_3 = L6_3 / 1000.0
      L5_3 = L5_3 * L6_3
      L5_3 = L5_3 + L2_3
      L6_3 = math
      L6_3 = L6_3.floor
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      L2_3 = L5_3 - L6_3
      if L6_3 <= 0 then
        L6_3 = 1
        L2_3 = 0.0
      end
      L7_3 = exports
      L7_3 = L7_3.striano_combat
      L8_3 = L7_3
      L7_3 = L7_3.testo3d
      L9_3 = "-"
      L10_3 = L6_3
      L11_3 = "hp"
      L9_3 = L9_3 .. L10_3 .. L11_3
      L7_3(L8_3, L9_3)
      L7_3 = L3_3 - L6_3
      if L4_3 > L7_3 then
        L7_3 = L4_3
      end
      L8_3 = SetEntityHealth
      L9_3 = L6_2
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
      L8_3 = Wait
      L9_3 = 3000
      L8_3(L9_3)
      L8_3 = L5_2
      L1_3 = L1_3 + L8_3
      L8_3 = L2_2
      if L8_3 > 0 then
        L8_3 = L2_2
        L8_3 = L8_3 * 1000
        if L1_3 >= L8_3 then
          break
        end
      end
    end
  end
  L7_2(L8_2)
end
L42_1[L43_1] = L44_1
L42_1 = _ENV
L43_1 = "StopGradualDamage"
function L44_1()
  local L0_2, L1_2
  L0_2 = L41_1
  if L0_2 then
    L41_1.cancel = true
    L0_2 = nil
    L41_1 = L0_2
  end
end
L42_1[L43_1] = L44_1
L42_1 = _ENV
L43_1 = "ResyncForzato"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedToRagdoll
  L2_2 = L0_2
  L3_2 = 0
  L4_2 = 0
  L5_2 = 4
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = ClearRagdollBlockingFlags
  L2_2 = L0_2
  L3_2 = 26
  L1_2(L2_2, L3_2)
  L1_2 = ResetPedRagdollTimer
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = ResetPedRagdollTimer
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ClearRagdollBlockingFlags
  L2_2 = L0_2
  L3_2 = 26
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 250
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "e stretch5"
  L1_2(L2_2)
end
L42_1[L43_1] = L44_1
L42_1 = _ENV
L43_1 = "MascheraAntigas"
function L44_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetPedDrawableVariation
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1
  L0_2 = L0_2(L1_2, L2_2)
  if 36 == L0_2 or 38 == L0_2 or 46 == L0_2 or 129 == L0_2 or 130 == L0_2 or 166 == L0_2 or 177 == L0_2 or 192 == L0_2 or 166 == L0_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
L42_1[L43_1] = L44_1
L42_1 = _ENV
L43_1 = "SoffocoFunc"
function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = soffoco
  if not L0_2 then
    L0_2 = velenoattivo
    if L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      soffoco = true
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "re@construction"
      L4_2 = "out_of_breath"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = ExecuteCommand
        L2_2 = "e cc"
        L1_2(L2_2)
      end
      while true do
        L1_2 = IsPedOpeningADoor
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          break
        end
        L1_2 = Wait
        L2_2 = 25
        L1_2(L2_2)
      end
      L1_2 = exports
      L1_2 = L1_2.text_guide
      L2_2 = L1_2
      L1_2 = L1_2.ClearGuideText
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.text_guide
      L2_2 = L1_2
      L1_2 = L1_2.GuidaNascondi
      L1_2(L2_2)
      L1_2 = ExecuteCommand
      L2_2 = "hudoff2"
      L1_2(L2_2)
      L1_2 = SetTimecycleModifier
      L2_2 = "WATER_lab"
      L1_2(L2_2)
      L1_2 = SetTimecycleModifierStrength
      L2_2 = 1.0
      L1_2(L2_2)
      L1_2 = ExecuteCommand
      L2_2 = "w drunk5"
      L1_2(L2_2)
      L1_2 = ExecuteCommand
      L2_2 = "e respiro"
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 1
      L5_2 = 2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = PlayEffect
      L3_2 = "scr_agencyheistb"
      L4_2 = "scr_agency3b_blding_smoke"
      L5_2 = vector3
      L6_2 = L1_2.x
      L7_2 = L1_2.y
      L8_2 = L1_2.z
      L8_2 = L8_2 - 5.0
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = 4.0
      L7_2 = 9999
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L3_2 = SetParticleFxLoopedColour
      L4_2 = L2_2
      L5_2 = 3.1
      L6_2 = 10.0
      L7_2 = 0.9
      L8_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = SetParticleFxLoopedAlpha
      L4_2 = L2_2
      L5_2 = 0.2
      L3_2(L4_2, L5_2)
      L3_2 = CreateThread
      function L4_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = soffoco
          if not L0_3 then
            break
          end
          L0_3 = velenoattivo
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = StopParticleFxLooped
        L1_3 = L2_2
        L0_3(L1_3)
        L0_3 = RemoveParticleFx
        L1_3 = L2_2
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      L3_2(L4_2)
      L3_2 = 1
      L4_2 = 10
      L5_2 = StartGradualDamage
      L6_2 = {}
      L6_2.rate = L3_2
      L6_2.duration = L4_2
      L6_2.canKill = true
      L5_2(L6_2)
      L5_2 = SetFollowPedCamViewMode
      L6_2 = 4
      L5_2(L6_2)
      L5_2 = SetFollowPedCamViewMode
      L6_2 = 2
      L5_2(L6_2)
      L5_2 = SetCamViewModeForContext
      L6_2 = GetCamActiveViewModeContext
      L6_2 = L6_2()
      L7_2 = 2
      L5_2(L6_2, L7_2)
      L5_2 = DisableControlAction
      L6_2 = 0
      L7_2 = 0
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = DisableFirstPersonCamThisFrame
      L5_2()
      L5_2 = StartShiftLimiter
      L5_2()
      L5_2 = ExecuteCommand
      L6_2 = "prova You are suffocating, you must leave the Polluted Area."
      L5_2(L6_2)
      L5_2 = ExecuteCommand
      L6_2 = "e respiro"
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 1
      L9_2 = 2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2 .. L7_2
      L5_2(L6_2)
      L5_2 = "sounds/respirosurv.mp3"
      L6_2 = exports
      L6_2 = L6_2.xsound
      L7_2 = L6_2
      L6_2 = L6_2.PlayUrl
      L8_2 = "respirosurv"
      L9_2 = L5_2
      L10_2 = 0.1
      L11_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = Wait
      L7_2 = 1500
      L6_2(L7_2)
      L6_2 = ExecuteCommand
      L7_2 = "e malditesta5"
      L6_2(L7_2)
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        while true do
          L0_3 = soffoco
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = DisableFirstPersonCamThisFrame
          L0_3()
          L0_3 = PlayerPedId
          L0_3 = L0_3()
          L1_3 = IsPedFatallyInjured
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = GetEntityCoords
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            L2_3 = L1_1
            L1_3 = L1_3 - L2_3
            L1_3 = #L1_3
            L2_3 = L2_1
            L2_3 = L2_3 - 5.0
            L1_3 = L1_3 > L2_3
            varCheck = L1_3
          end
          L1_3 = varCheck
          if not L1_3 then
            L1_3 = MascheraAntigas
            L1_3 = L1_3()
            if not L1_3 then
              L1_3 = IsPedFatallyInjured
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = velenoattivo
                if L1_3 then
                  goto lbl_134
                end
              end
            end
          end
          while true do
            L1_3 = IsPedOpeningADoor
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              break
            end
            L1_3 = Wait
            L2_3 = 0
            L1_3(L2_3)
          end
          L1_3 = ExecuteCommand
          L2_3 = "prova "
          L1_3(L2_3)
          soffoco = false
          L1_3 = exports
          L1_3 = L1_3.xsound
          L2_3 = L1_3
          L1_3 = L1_3.fadeOut
          L3_3 = "respirosurv"
          L4_3 = 1500
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = ExecuteCommand
          L2_3 = "hudon2"
          L1_3(L2_3)
          L1_3 = StopGradualDamage
          L1_3()
          L1_3 = StopShiftLimiter
          L1_3()
          while true do
            L1_3 = IsPedFalling
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = IsPedClimbing
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsPedFatallyInjured
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsPedRagdoll
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = IsPedJumping
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if not L1_3 then
                      break
                    end
                  end
                end
              end
            end
            L1_3 = Wait
            L2_3 = 0
            L1_3(L2_3)
          end
          L1_3 = Wait
          L2_3 = 1500
          L1_3(L2_3)
          L1_3 = IsEntityAttached
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = IsPedInAnyVehicle
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = ExecuteCommand
              L2_3 = "e outofbreath2"
              L1_3(L2_3)
              L1_3 = ResyncForzato
              L1_3()
            end
          end
          L1_3 = TriggerEvent
          L2_3 = "CaricamiCamminata"
          L1_3(L2_3)
          L1_3 = ExecuteCommand
          L2_3 = "atmosfera"
          L1_3(L2_3)
          L1_3 = settamiMeteo
          L2_3 = "SNOWLIGHT"
          L1_3(L2_3)
          L1_3 = PlaySoundFrontend
          L2_3 = -1
          L3_3 = "LEADERBOARD"
          L4_3 = "HUD_MINI_GAME_SOUNDSET"
          L5_3 = 1
          L1_3(L2_3, L3_3, L4_3, L5_3)
          ::lbl_134::
        end
      end
      L6_2(L7_2)
    end
  end
end
L42_1[L43_1] = L44_1
L42_1 = _ENV
L43_1 = "ThrowObjectSmart"
function L44_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L4_2 = DoesEntityExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = {}
    L4_2.ok = false
    L4_2.err = "object does not exist"
    return L4_2
  end
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  L4_2 = A3_2.gravity
  if not L4_2 then
    L4_2 = 9.81
  end
  L5_2 = A3_2.horiz_speed_target
  if not L5_2 then
    L5_2 = 18.0
  end
  L6_2 = A3_2.min_time
  if not L6_2 then
    L6_2 = 0.45
  end
  L7_2 = A3_2.max_time
  if not L7_2 then
    L7_2 = 1.25
  end
  L8_2 = A3_2.min_speed
  if not L8_2 then
    L8_2 = 6.0
  end
  L9_2 = A3_2.max_speed
  if not L9_2 then
    L9_2 = 35.0
  end
  L10_2 = A3_2.up_bias
  if not L10_2 then
    L10_2 = 0.0
  end
  L11_2 = A3_2.spin
  if nil == L11_2 then
    L11_2 = 5.0
    if L11_2 then
      goto lbl_51
    end
  end
  L11_2 = A3_2.spin
  ::lbl_51::
  L12_2 = A3_2.debug
  L12_2 = true == L12_2
  L13_2 = A2_2.x
  L14_2 = A1_2.x
  L13_2 = L13_2 - L14_2
  L14_2 = A2_2.y
  L15_2 = A1_2.y
  L14_2 = L14_2 - L15_2
  L15_2 = A2_2.z
  L16_2 = A1_2.z
  L15_2 = L15_2 - L16_2
  L16_2 = math
  L16_2 = L16_2.sqrt
  L17_2 = L13_2 * L13_2
  L18_2 = L14_2 * L14_2
  L17_2 = L17_2 + L18_2
  L16_2 = L16_2(L17_2)
  L17_2 = 0.001
  if L16_2 < L17_2 then
    L16_2 = 0.001
  end
  L17_2 = L16_2 / L5_2
  if L6_2 > L17_2 then
    L17_2 = L6_2
  end
  if L7_2 < L17_2 then
    L17_2 = L7_2
  end
  L18_2 = L13_2 / L17_2
  L19_2 = L14_2 / L17_2
  L20_2 = 0.5 * L4_2
  L20_2 = L20_2 * L17_2
  L20_2 = L20_2 * L17_2
  L20_2 = L15_2 + L20_2
  L20_2 = L20_2 / L17_2
  L20_2 = L20_2 + L10_2
  L21_2 = math
  L21_2 = L21_2.sqrt
  L22_2 = L18_2 * L18_2
  L23_2 = L19_2 * L19_2
  L22_2 = L22_2 + L23_2
  L23_2 = L20_2 * L20_2
  L22_2 = L22_2 + L23_2
  L21_2 = L21_2(L22_2)
  L22_2 = "time"
  L23_2 = true
  function L24_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = A0_3 * A0_3
    L3_3 = L2_3 * L2_3
    L4_3 = L4_2
    L5_3 = L4_2
    L6_3 = L16_2
    L5_3 = L5_3 * L6_3
    L6_3 = L16_2
    L5_3 = L5_3 * L6_3
    L6_3 = L15_2
    L6_3 = 2 * L6_3
    L6_3 = L6_3 * L2_3
    L5_3 = L5_3 + L6_3
    L4_3 = L4_3 * L5_3
    L3_3 = L3_3 - L4_3
    if L3_3 < 0 then
      L4_3 = false
      return L4_3
    end
    L4_3 = math
    L4_3 = L4_3.sqrt
    L5_3 = L3_3
    L4_3 = L4_3(L5_3)
    L5_3 = nil
    if A1_3 then
      L6_3 = L2_3 + L4_3
      L7_3 = L4_2
      L8_3 = L16_2
      L7_3 = L7_3 * L8_3
      L5_3 = L6_3 / L7_3
    else
      L6_3 = L2_3 - L4_3
      L7_3 = L4_2
      L8_3 = L16_2
      L7_3 = L7_3 * L8_3
      L5_3 = L6_3 / L7_3
    end
    L6_3 = math
    L6_3 = L6_3.sqrt
    L7_3 = L5_3 * L5_3
    L7_3 = 1 + L7_3
    L6_3 = L6_3(L7_3)
    L7_3 = 1.0
    L6_3 = L7_3 / L6_3
    L7_3 = L5_3 * L6_3
    L8_3 = L13_2
    L9_3 = L16_2
    L8_3 = L8_3 / L9_3
    L9_3 = L14_2
    L10_3 = L16_2
    L9_3 = L9_3 / L10_3
    L10_3 = L6_3 * L8_3
    L10_3 = A0_3 * L10_3
    L18_2 = L10_3
    L10_3 = L6_3 * L9_3
    L10_3 = A0_3 * L10_3
    L19_2 = L10_3
    L10_3 = A0_3 * L7_3
    L11_3 = L10_2
    L10_3 = L10_3 + L11_3
    L20_2 = L10_3
    L21_2 = A0_3
    L10_3 = "speed"
    L22_2 = L10_3
    L10_3 = true
    return L10_3
  end
  if L9_2 < L21_2 then
    L25_2 = L24_2
    L26_2 = L9_2
    L27_2 = false
    L25_2 = L25_2(L26_2, L27_2)
    if not L25_2 then
      L25_2 = L24_2
      L26_2 = L9_2
      L27_2 = true
      L25_2 = L25_2(L26_2, L27_2)
      if not L25_2 then
        L17_2 = L7_2
        L18_2 = L13_2 / L17_2
        L19_2 = L14_2 / L17_2
        L25_2 = 0.5 * L4_2
        L25_2 = L25_2 * L17_2
        L25_2 = L25_2 * L17_2
        L25_2 = L15_2 + L25_2
        L25_2 = L25_2 / L17_2
        L20_2 = L25_2 + L10_2
        L25_2 = math
        L25_2 = L25_2.sqrt
        L26_2 = L18_2 * L18_2
        L27_2 = L19_2 * L19_2
        L26_2 = L26_2 + L27_2
        L27_2 = L20_2 * L20_2
        L26_2 = L26_2 + L27_2
        L25_2 = L25_2(L26_2)
        if L9_2 < L25_2 then
          L26_2 = L9_2 / L25_2
          L27_2 = L18_2 * L26_2
          L28_2 = L19_2 * L26_2
          L20_2 = L20_2 * L26_2
          L19_2 = L28_2
          L18_2 = L27_2
          L21_2 = L9_2
          L23_2 = false
        else
          L21_2 = L25_2
        end
        L22_2 = "time"
      end
    end
  elseif L8_2 > L21_2 then
    L25_2 = L8_2 / L21_2
    L26_2 = L18_2 * L25_2
    L27_2 = L19_2 * L25_2
    L20_2 = L20_2 * L25_2
    L19_2 = L27_2
    L18_2 = L26_2
    L21_2 = L8_2
  end
  if L12_2 then
    L25_2 = print
    L26_2 = "ThrowObjectSmart: dxy=%.2f dz=%.2f | mode=%s t=%.2f speed=%.2f"
    L27_2 = L26_2
    L26_2 = L26_2.format
    L28_2 = L16_2
    L29_2 = L15_2
    L30_2 = L22_2
    L31_2 = L17_2
    L32_2 = L21_2
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  end
  L25_2 = RequestCollisionAtCoord
  L26_2 = A1_2.x
  L27_2 = A1_2.y
  L28_2 = A1_2.z
  L25_2(L26_2, L27_2, L28_2)
  L25_2 = SetEntityCoords
  L26_2 = A0_2
  L27_2 = A1_2.x
  L28_2 = A1_2.y
  L29_2 = A1_2.z
  L30_2 = false
  L31_2 = false
  L32_2 = false
  L33_2 = false
  L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L25_2 = IsEntityAttached
  L26_2 = A0_2
  L25_2 = L25_2(L26_2)
  if L25_2 then
    L25_2 = DetachEntity
    L26_2 = A0_2
    L27_2 = true
    L28_2 = true
    L25_2(L26_2, L27_2, L28_2)
  end
  L25_2 = FreezeEntityPosition
  L26_2 = A0_2
  L27_2 = false
  L25_2(L26_2, L27_2)
  L25_2 = SetEntityHasGravity
  L26_2 = A0_2
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = SetEntityDynamic
  L26_2 = A0_2
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = SetEntityRecordsCollisions
  L26_2 = A0_2
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = _ENV
  L26_2 = "SetActivateObjectPhysicsAsSoonAsItIsUnfrozen"
  L25_2 = L25_2[L26_2]
  L26_2 = A0_2
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = ActivatePhysics
  L26_2 = A0_2
  L25_2(L26_2)
  L25_2 = SetEntityVelocity
  L26_2 = A0_2
  L27_2 = L18_2
  L28_2 = L19_2
  L29_2 = L20_2
  L25_2(L26_2, L27_2, L28_2, L29_2)
  if L11_2 and 0 ~= L11_2 then
    L11_2 = L11_2 + 0.0
    L25_2 = ApplyForceToEntity
    L26_2 = A0_2
    L27_2 = 3
    L28_2 = 0.0
    L29_2 = 0.0
    L30_2 = 0.0
    L31_2 = L11_2
    L32_2 = L11_2
    L33_2 = L11_2
    L34_2 = 0
    L35_2 = false
    L36_2 = true
    L37_2 = true
    L38_2 = false
    L39_2 = true
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    L25_2 = SetEntityAngularVelocity
    L26_2 = A0_2
    L27_2 = L11_2
    L28_2 = L11_2
    L29_2 = L11_2
    L25_2(L26_2, L27_2, L28_2, L29_2)
  end
  L25_2 = {}
  L25_2.ok = L23_2
  L25_2.mode = L22_2
  L25_2.time = L17_2
  L25_2.speed = L21_2
  L26_2 = vector3
  L27_2 = L18_2
  L28_2 = L19_2
  L29_2 = L20_2
  L26_2 = L26_2(L27_2, L28_2, L29_2)
  L25_2.vel = L26_2
  return L25_2
end
L42_1[L43_1] = L44_1
L42_1 = {}
L43_1 = _ENV
L44_1 = "vector3"
L43_1 = L43_1[L44_1]
L44_1 = 3825.73
L45_1 = 7246.999
L46_1 = 46.187
L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1 = L43_1(L44_1, L45_1, L46_1)
L42_1[1] = L43_1
L42_1[2] = L44_1
L42_1[3] = L45_1
L42_1[4] = L46_1
L42_1[5] = L47_1
L42_1[6] = L48_1
L42_1[7] = L49_1
L42_1[8] = L50_1
L42_1[9] = L51_1
L42_1[10] = L52_1
L42_1[11] = L53_1
L42_1[12] = L54_1
L42_1[13] = L55_1
L42_1[14] = L56_1
L42_1[15] = L57_1
L42_1[16] = L58_1
L42_1[17] = L59_1
L42_1[18] = L60_1
L42_1[19] = L61_1
L42_1[20] = L62_1
L42_1[21] = L63_1
L42_1[22] = L64_1
L42_1[23] = L65_1
L42_1[24] = L66_1
L42_1[25] = L67_1
L42_1[26] = L68_1
L42_1[27] = L69_1
L42_1[28] = L70_1
L42_1[29] = L71_1
L42_1[30] = L72_1
L42_1[31] = L73_1
L42_1[32] = L74_1
L42_1[33] = L75_1
L42_1[34] = L76_1
L42_1[35] = L77_1
L42_1[36] = L78_1
L43_1 = {}
L44_1 = -127739306
L45_1 = -1233342136
L46_1 = 1822567898
L47_1 = -517243780
L48_1 = 543880131
L49_1 = 1815646479
L50_1 = 713133406
L51_1 = 1839621839
L52_1 = 985886684
L43_1[1] = L44_1
L43_1[2] = L45_1
L43_1[3] = L46_1
L43_1[4] = L47_1
L43_1[5] = L48_1
L43_1[6] = L49_1
L43_1[7] = L50_1
L43_1[8] = L51_1
L43_1[9] = L52_1
L44_1 = _ENV
L45_1 = "CheckOggettoFermo"
function L46_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = Wait
    L1_3 = 3000
    L0_3(L1_3)
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = GetEntityCoords
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L1_3 = L1_2
    L1_3 = L0_3 - L1_3
    L1_3 = #L1_3
    L2_3 = 0.05
    if L1_3 > L2_3 then
      return
    end
    L1_3 = GetEntityModel
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = ipairs
    L3_3 = L43_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      if L1_3 == L7_3 then
        L8_3 = print
        L9_3 = "^2[OGGETTO FERMO]^7 ID:"
        L10_3 = L6_3
        L11_3 = "HASH:"
        L12_3 = L1_3
        L8_3(L9_3, L10_3, L11_3, L12_3)
        return L6_3
      end
    end
    L2_3 = print
    L3_3 = "^1[OGGETTO FERMO]^7 Hash non presente nella lista:"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L2_2(L3_2)
end
L44_1[L45_1] = L46_1
L44_1 = RegisterCommand
L45_1 = "clearLancio"
function L46_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = L43_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = TriggerEvent
    L7_2 = "FindAttachedClampByEntity"
    L8_2 = L5_2
    L9_2 = 50.0
    L6_2(L7_2, L8_2, L9_2)
  end
end
L44_1(L45_1, L46_1)
L44_1 = _ENV
L45_1 = "FadeAndDeleteObject"
function L46_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = DoesEntityExist
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = Wait
    L1_3 = A2_2
    L0_3(L1_3)
    L0_3 = 20
    L1_3 = A1_2
    L1_3 = L1_3 / L0_3
    L2_3 = 0
    L3_3 = L0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = math
      L6_3 = L6_3.floor
      L7_3 = L5_3 / L0_3
      L7_3 = L7_3 * 255
      L8_3 = 255
      L7_3 = L8_3 - L7_3
      L6_3 = L6_3(L7_3)
      L7_3 = SetEntityAlpha
      L8_3 = A0_2
      L9_3 = L6_3
      L10_3 = false
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = Wait
      L8_3 = L1_3
      L7_3(L8_3)
    end
    L2_3 = SetEntityAsMissionEntity
    L3_3 = A0_2
    L2_3(L3_3)
    L2_3 = DeleteEntity
    L3_3 = A0_2
    L2_3(L3_3)
  end
  L3_2(L4_2)
end
L44_1[L45_1] = L46_1
L44_1 = _ENV
L45_1 = "CreateThread"
L44_1 = L44_1[L45_1]
function L45_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = Wait
    L1_2 = 180000
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L3_1
    L1_2 = L1_2 - L2_2
    L1_2 = #L1_2
    if L1_2 < 35.0 then
      L1_2 = lancioFansOggetti
      L2_2 = L0_2
      L1_2(L2_2)
    end
  end
end
L44_1(L45_1)
L44_1 = 0
L45_1 = _ENV
L46_1 = "GetNextOggettoLancio"
function L47_1()
  local L0_2, L1_2
  L0_2 = L44_1
  L0_2 = L0_2 + 1
  L44_1 = L0_2
  L0_2 = L44_1
  L1_2 = L43_1
  L1_2 = #L1_2
  if L0_2 > L1_2 then
    L0_2 = 1
    L44_1 = L0_2
  end
  L1_2 = L44_1
  L0_2 = L43_1
  L0_2 = L0_2[L1_2]
  return L0_2
end
L45_1[L46_1] = L47_1
L45_1 = _ENV
L46_1 = "lancioFansOggetti"
function L47_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = GetNextOggettoLancio
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = L42_1
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L42_1
  L2_2 = L3_2[L2_2]
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = RequestModelStriano
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = vector3
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 + 1.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2 = L4_2
  L4_2 = CreateObjectNoOffset
  L5_2 = L1_2
  L6_2 = L2_2.x
  L7_2 = L2_2.y
  L8_2 = L2_2.z
  L9_2 = true
  L10_2 = true
  L11_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = FadeAndDeleteObject
  L6_2 = L4_2
  L7_2 = 2000
  L8_2 = 15000
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = ThrowObjectSmart
  L6_2 = L4_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = {}
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 10
  L12_2 = 20
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 + 0.0
  L9_2.gravity = L10_2
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 10
  L12_2 = 30
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 + 0.0
  L9_2.horiz_speed_target = L10_2
  L9_2.min_time = 0.45
  L9_2.max_time = 1.25
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 30
  L12_2 = 55
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 + 0.0
  L9_2.max_speed = L10_2
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 2
  L12_2 = 7
  L10_2 = L10_2(L11_2, L12_2)
  L10_2 = L10_2 + 0.0
  L9_2.up_bias = L10_2
  L9_2.spin = 45.0
  L9_2.debug = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = CheckOggettoFermo
  L7_2 = L4_2
  L6_2(L7_2)
end
L45_1[L46_1] = L47_1
L45_1 = RegisterCommand
L46_1 = "lancioPomodoro"
function L47_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = -2043453131
  if nil ~= L0_2 then
    L1_2 = ipairs
    L2_2 = L43_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      if L6_2 == L0_2 then
        L7_2 = print
        L8_2 = "TROVATO! ID:"
        L9_2 = L5_2
        L10_2 = "HASH:"
        L11_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2)
        break
      end
    end
  end
  L1_2 = lancioFansOggetti
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L45_1(L46_1, L47_1)
L45_1 = false
L46_1 = false
L47_1 = "sounds/arenasound"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0.05
  if nil ~= A0_2 then
    L1_2 = A0_2
  end
  L2_2 = L47_1
  L3_2 = ".mp3"
  L2_2 = L2_2 .. L3_2
  L3_2 = exports
  L3_2 = L3_2.xsound
  L4_2 = L3_2
  L3_2 = L3_2.PlayUrl
  L5_2 = L47_1
  L6_2 = L2_2
  L7_2 = L1_2
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = true
  L45_1 = L3_2
  L3_2 = false
  L46_1 = L3_2
end
function L49_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.xsound
  L1_2 = L0_2
  L0_2 = L0_2.fadeOut
  L2_2 = L47_1
  L3_2 = 1000
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = false
  L45_1 = L0_2
  L0_2 = true
  L46_1 = L0_2
end
L50_1 = RegisterCommand
L51_1 = "stopArenaSound"
function L52_1()
  local L0_2, L1_2
  L0_2 = L49_1
  L0_2()
end
L50_1(L51_1, L52_1)
L50_1 = RegisterCommand
L51_1 = "ArenaSoundVol"
function L52_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = print
    L3_2 = "Vol not inserted. Example: /ArenaSoundVol 0.5"
    L2_2(L3_2)
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  L3_2 = L49_1
  L3_2()
  L3_2 = L48_1
  L4_2 = L2_2
  L3_2(L4_2)
end
L50_1(L51_1, L52_1)
L50_1 = RegisterCommand
L51_1 = "stopArenaSoundAll"
function L52_1()
  local L0_2, L1_2, L2_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "stopSoundArena"
  L1_2(L2_2)
end
L50_1(L51_1, L52_1)
L50_1 = RegisterCommand
L51_1 = "startArenaSoundAll"
function L52_1()
  local L0_2, L1_2, L2_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "startSoundArena"
  L1_2(L2_2)
end
L50_1(L51_1, L52_1)
L50_1 = RegisterNetEvent
L51_1 = "startSoundArena"
L50_1(L51_1)
L50_1 = AddEventHandler
L51_1 = "startSoundArena"
function L52_1()
  local L0_2, L1_2
  L0_2 = L48_1
  L0_2()
end
L50_1(L51_1, L52_1)
L50_1 = RegisterNetEvent
L51_1 = "stopSoundArena"
L50_1(L51_1)
L50_1 = AddEventHandler
L51_1 = "stopSoundArena"
function L52_1()
  local L0_2, L1_2
  L0_2 = L49_1
  L0_2()
end
L50_1(L51_1, L52_1)
L50_1 = RegisterCommand
L51_1 = "startArenaSound"
function L52_1()
  local L0_2, L1_2
  L0_2 = L48_1
  L0_2()
end
L50_1(L51_1, L52_1)
L50_1 = {}
L51_1 = {}
L52_1 = "coords"
L53_1 = _ENV
L54_1 = "vector3"
L53_1 = L53_1[L54_1]
L54_1 = 4971.363
L55_1 = -5123.131
L56_1 = 1.741
L53_1 = L53_1(L54_1, L55_1, L56_1)
L51_1[L52_1] = L53_1
L52_1 = "nome"
L53_1 = 307771752
L51_1[L52_1] = L53_1
L52_1 = {}
L53_1 = "coords"
L54_1 = _ENV
L55_1 = "vector3"
L54_1 = L54_1[L55_1]
L55_1 = 4971.363
L56_1 = -5123.131
L57_1 = 1.741
L54_1 = L54_1(L55_1, L56_1, L57_1)
L52_1[L53_1] = L54_1
L53_1 = "nome"
L54_1 = 1959590417
L52_1[L53_1] = L54_1
L50_1[1] = L51_1
L50_1[2] = L52_1
L51_1 = 0
L52_1 = _ENV
L53_1 = "CreateThread"
L52_1 = L52_1[L53_1]
function L53_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = velenoattivo
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L1_1
      L1_2 = L1_2 - L2_2
      L1_2 = #L1_2
      L2_2 = L2_1
      if L1_2 < L2_2 then
        L1_2 = IsEntityPositionFrozen
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedFatallyInjured
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsEntityVisible
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if L1_2 then
              L1_2 = MascheraAntigas
              L1_2 = L1_2()
              if not L1_2 then
                L1_2 = IsEntityAttached
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = tutorialFatto
                  if L1_2 then
                    L1_2 = IsPedFalling
                    L2_2 = L0_2
                    L1_2 = L1_2(L2_2)
                    if not L1_2 then
                      L1_2 = IsPedHuman
                      L2_2 = L0_2
                      L1_2 = L1_2(L2_2)
                      if L1_2 then
                        L1_2 = exports
                        L1_2 = L1_2.striano_editor
                        L2_2 = L1_2
                        L1_2 = L1_2.induskfalls
                        L1_2 = L1_2(L2_2)
                        if not L1_2 then
                          L1_2 = exports
                          L1_2 = L1_2.striano_core
                          L2_2 = L1_2
                          L1_2 = L1_2.inNoClip
                          L1_2 = L1_2(L2_2)
                          if not L1_2 then
                            L1_2 = GetEntityCoords
                            L2_2 = L0_2
                            L1_2 = L1_2(L2_2)
                            L2_2 = vector3
                            L3_2 = 0.0
                            L4_2 = 0.0
                            L5_2 = 0.0
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L2_2 = L1_2 - L2_2
                            L2_2 = #L2_2
                            if L2_2 < 100.0 then
                              return
                            end
                            L2_2 = vector3
                            L3_2 = 3836.253
                            L4_2 = 6438.734
                            L5_2 = 0.613
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L3_2 = L1_2 - L2_2
                            L3_2 = #L3_2
                            if L3_2 > 25.0 then
                              L4_2 = SoffocoFunc
                              L4_2()
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
    L1_2 = SetEntityProofs
    L2_2 = L0_2
    L3_2 = false
    L4_2 = true
    L5_2 = false
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = IsPedInAnyPoliceVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = L13_1
      if not L1_2 then
        L1_2 = true
        L13_1 = L1_2
      end
    else
      L1_2 = L13_1
      if L1_2 then
        L1_2 = pairs
        L2_2 = L12_1
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = L14_1
          L7_2 = L7_2[L5_2]
          if not L7_2 then
            L7_2 = TriggerServerEvent
            L8_2 = "PoliceVehicleWeaponDeleter:askDropWeapon"
            L9_2 = L6_2
            L7_2(L8_2, L9_2)
          end
        end
        L1_2 = false
        L13_1 = L1_2
      end
    end
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 1
      L2_2 = L12_1
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = HasPedGotWeapon
        L6_2 = L0_2
        L7_2 = L12_1
        L7_2 = L7_2[L4_2]
        L8_2 = false
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        if 1 == L5_2 then
          L5_2 = L14_1
          L5_2[L4_2] = true
        else
          L5_2 = L14_1
          L5_2[L4_2] = false
        end
      end
    end
    L1_2 = IsPedUsingActionMode
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_editor
      L2_2 = L1_2
      L1_2 = L1_2.stealth
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = GetPedConfigFlag
        L2_2 = L0_2
        L3_2 = 78
        L4_2 = 1
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if not L1_2 then
          L1_2 = SetPedUsingActionMode
          L2_2 = L0_2
          L3_2 = false
          L4_2 = -1
          L5_2 = "DEFAULT_ACTION"
          L1_2(L2_2, L3_2, L4_2, L5_2)
        end
      end
    end
    L1_2 = SetPedCanPlayGestureAnims
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetPedCanPlayAmbientBaseAnims
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L46_1
    if not L1_2 then
      L1_2 = L45_1
      if not L1_2 then
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = L3_1
        L1_2 = L1_2 - L2_2
        L1_2 = #L1_2
        if L1_2 < 45.0 then
          L1_2 = L48_1
          L1_2()
        end
      else
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = L3_1
        L1_2 = L1_2 - L2_2
        L1_2 = #L1_2
        if L1_2 >= 45.0 then
          L1_2 = L49_1
          L1_2()
        end
      end
    end
    L1_2 = GlobalState
    L1_2 = L1_2.SafeModeActive
    if L1_2 then
      L1_2 = tutorialFatto
      if L1_2 then
        L1_2 = IsEntityInWater
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = IsEntityAttached
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
            end
            if L1_2 then
              L2_2 = L51_1
              L2_2 = L2_2 + 1
              L51_1 = L2_2
              L2_2 = L51_1
              if 3 == L2_2 then
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "In the Night it's very danger stay in water!"
                L2_2(L3_2, L4_2)
                L2_2 = PlaySoundFrontend
                L3_2 = -1
                L4_2 = "CHECKPOINT_BEHIND"
                L5_2 = "HUD_MINI_GAME_SOUNDSET"
                L6_2 = 0
                L2_2(L3_2, L4_2, L5_2, L6_2)
              end
              L2_2 = L51_1
              if 20 == L2_2 then
                L2_2 = exports
                L2_2 = L2_2.striano_combat
                L3_2 = L2_2
                L2_2 = L2_2.submex
                L4_2 = "Exit from water, fast!"
                L2_2(L3_2, L4_2)
                L2_2 = PlaySoundFrontend
                L3_2 = -1
                L4_2 = "CHECKPOINT_BEHIND"
                L5_2 = "HUD_MINI_GAME_SOUNDSET"
                L6_2 = 0
                L2_2(L3_2, L4_2, L5_2, L6_2)
                L2_2 = GetEntityCoords
                L3_2 = L0_2
                L2_2 = L2_2(L3_2)
                L3_2 = PlayEffectTutorial
                L4_2 = "core"
                L5_2 = "trail_splash_petrol"
                L6_2 = vector3
                L7_2 = L2_2.x
                L8_2 = L2_2.y
                L9_2 = L2_2.z
                L9_2 = L9_2 - 2.0
                L6_2 = L6_2(L7_2, L8_2, L9_2)
                L7_2 = 20.5
                L8_2 = vector3
                L9_2 = 0.0
                L10_2 = 0.0
                L11_2 = 0.0
                L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
                L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
                L4_2 = CreateThread
                function L5_2()
                  local L0_3, L1_3, L2_3
                  L0_3 = Wait
                  L1_3 = 5500
                  L0_3(L1_3)
                  L0_3 = StopParticleFxLooped
                  L1_3 = L3_2
                  L2_3 = 0
                  L0_3(L1_3, L2_3)
                  L0_3 = RemoveParticleFx
                  L1_3 = L3_2
                  L2_3 = true
                  L0_3(L1_3, L2_3)
                end
                L4_2(L5_2)
                L4_2 = 0
                L51_1 = L4_2
              end
              L2_2 = L51_1
              if L2_2 >= 30 then
                L2_2 = TriggerEvent
                L3_2 = "startSerpWater"
                L2_2(L3_2)
                L2_2 = Wait
                L3_2 = 15000
                L2_2(L3_2)
              end
            end
        end
        else
          L1_2 = L51_1
          if L1_2 > 0 then
            L1_2 = 0
            L51_1 = L1_2
          end
        end
      end
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L52_1(L53_1)
L52_1 = RegisterNetEvent
L53_1 = "PoliceVehicleWeaponDeleter:drop"
L52_1(L53_1)
L52_1 = AddEventHandler
L53_1 = "PoliceVehicleWeaponDeleter:drop"
function L54_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RemoveWeaponFromPed
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
end
L52_1(L53_1, L54_1)
L52_1 = true
L53_1 = _ENV
L54_1 = "CreateThread"
L53_1 = L53_1[L54_1]
function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SetPedCanLosePropsOnDamage
    L2_2 = L0_2
    L3_2 = false
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisablePlayerVehicleRewards
    L2_2 = PlayerId
    L2_2, L3_2, L4_2 = L2_2()
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 45
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 1
    L3_2 = 45
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 2
    L3_2 = 45
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 80
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 1
    L3_2 = 80
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 2
    L3_2 = 80
    L1_2(L2_2, L3_2)
    L1_2 = SetPlayerHealthRechargeMultiplier
    L2_2 = PlayerId
    L2_2 = L2_2()
    L3_2 = 0.0
    L1_2(L2_2, L3_2)
    L1_2 = DisableControlAction
    L2_2 = 1
    L3_2 = 140
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 1
    L3_2 = 141
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 140
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 141
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 26
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 36
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 36
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 80
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DisableControlAction
    L2_2 = 0
    L3_2 = 45
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 1
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 2
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 3
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 4
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 6
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 7
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 8
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 9
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 13
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 15
    L1_2(L2_2)
    L1_2 = HideHudComponentThisFrame
    L2_2 = 18
    L1_2(L2_2)
    L1_2 = IsDisabledControlPressed
    L2_2 = 0
    L3_2 = 37
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = DisableControlAction
      L2_2 = 0
      L3_2 = 16
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DisableControlAction
      L2_2 = 0
      L3_2 = 17
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    end
    L1_2 = SetAudioFlag
    L2_2 = "DisableWaterAmbience"
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
L53_1(L54_1)
L53_1 = _ENV
L54_1 = "CreateThread"
L53_1 = L53_1[L54_1]
function L54_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = GetPedParachuteState
    L1_2 = ped
    L0_2 = L0_2(L1_2)
    if L0_2 > -1 then
      L0_2 = varCanRag
      if not L0_2 then
        varCanRag = true
        L0_2 = SetPedCanRagdoll
        L1_2 = ped
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = SetPlayerFallDistance
        L1_2 = PlayerId
        L1_2 = L1_2()
        L2_2 = 8.0
        L0_2(L1_2, L2_2)
        L0_2 = SetPedConfigFlag
        L1_2 = ped
        L2_2 = 164
        L3_2 = false
        L0_2(L1_2, L2_2, L3_2)
      end
      L0_2 = IsPedRagdoll
      L1_2 = ped
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = IsPedFalling
        L1_2 = ped
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.inNoClip
          L0_2 = L0_2(L1_2)
          if not L0_2 then
            L0_2 = IsPedInParachuteFreeFall
            L1_2 = ped
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = exports
              L0_2 = L0_2.striano_core
              L1_2 = L0_2
              L0_2 = L0_2.draw
              L2_2 = 24
              L3_2 = "Open parachute"
              L0_2(L1_2, L2_2, L3_2)
              L0_2 = IsDisabledControlPressed
              L1_2 = 0
              L2_2 = 24
              L0_2 = L0_2(L1_2, L2_2)
              if L0_2 then
                L0_2 = IsDisabledControlPressed
                L1_2 = 0
                L2_2 = 25
                L0_2 = L0_2(L1_2, L2_2)
                if not L0_2 then
                  L0_2 = IsControlPressed
                  L1_2 = 0
                  L2_2 = 25
                  L0_2 = L0_2(L1_2, L2_2)
                  if not L0_2 then
                    L0_2 = SetControlNormal
                    L1_2 = 0
                    L2_2 = 24
                    L3_2 = 1.0
                    L0_2(L1_2, L2_2, L3_2)
                  end
                end
              end
            else
              L0_2 = IsDisabledControlPressed
              L1_2 = 0
              L2_2 = 24
              L0_2 = L0_2(L1_2, L2_2)
              if not L0_2 then
                L0_2 = IsDisabledControlPressed
                L1_2 = 0
                L2_2 = 25
                L0_2 = L0_2(L1_2, L2_2)
                if not L0_2 then
                  L0_2 = IsControlPressed
                  L1_2 = 0
                  L2_2 = 25
                  L0_2 = L0_2(L1_2, L2_2)
                  if not L0_2 then
                    L0_2 = L52_1
                    if L0_2 then
                      L0_2 = exports
                      L0_2 = L0_2.striano_core
                      L1_2 = L0_2
                      L0_2 = L0_2.draw
                      L2_2 = 49
                      L3_2 = "Detach parachute"
                      L4_2 = 21
                      L5_2 = "Slow"
                      L6_2 = 32
                      L7_2 = "Go on"
                      L8_2 = 33
                      L9_2 = "Hold"
                      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
                    end
                    L0_2 = IsControlJustPressed
                    L1_2 = 0
                    L2_2 = 49
                    L0_2 = L0_2(L1_2, L2_2)
                    if L0_2 then
                      L0_2 = ExecuteCommand
                      L1_2 = "detachme"
                      L0_2(L1_2)
                      L0_2 = GiveWeaponToPed
                      L1_2 = ped
                      L2_2 = -72657034
                      L3_2 = 1
                      L4_2 = false
                      L5_2 = false
                      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
                      L0_2 = SetPedCanRagdoll
                      L1_2 = ped
                      L2_2 = true
                      L0_2(L1_2, L2_2)
                      L0_2 = SetPlayerFallDistance
                      L1_2 = PlayerId
                      L1_2 = L1_2()
                      L2_2 = 8.0
                      L0_2(L1_2, L2_2)
                      L0_2 = SetPedConfigFlag
                      L1_2 = ped
                      L2_2 = 164
                      L3_2 = false
                      L0_2(L1_2, L2_2, L3_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    else
      L0_2 = varCanRag
      if L0_2 then
        varCanRag = false
      end
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L53_1(L54_1)
L53_1 = _ENV
L54_1 = "CreateThread"
L53_1 = L53_1[L54_1]
function L54_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = IsPedArmed
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 6
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = DisableControlAction
      L1_2 = 1
      L2_2 = 140
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 1
      L2_2 = 141
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 1
      L2_2 = 142
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L53_1(L54_1)
L53_1 = RegisterCommand
L54_1 = "parainfo"
function L55_1()
  local L0_2, L1_2
  L0_2 = L52_1
  L0_2 = not L0_2
  L52_1 = L0_2
end
L53_1(L54_1, L55_1)
L53_1 = false
L54_1 = RegisterCommand
L55_1 = "porcmode"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L53_1
  L1_2 = not L1_2
  L53_1 = L1_2
  L1_2 = LocalPlayer
  L1_2 = L1_2.state
  L1_2 = L1_2.adminLevel
  if not L1_2 then
    L1_2 = 0
  end
  if 0 == L1_2 then
    return
  end
  L2_2 = L53_1
  if L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Porc mode attiva."
    L2_2(L3_2, L4_2)
    L2_2 = funcGodModeAdm
    L2_2()
    L2_2 = funcGodModeAdmTesto
    L2_2()
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Porc mode disattiva."
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityInvincible
    L3_2 = L0_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdoll
    L3_2 = L0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = ClearPedLastWeaponDamage
    L3_2 = L0_2
    L2_2(L3_2)
    L2_2 = SetEntityProofs
    L3_2 = L0_2
    L4_2 = false
    L5_2 = true
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = SetEntityCanBeDamaged
    L3_2 = L0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L54_1(L55_1, L56_1)
L54_1 = _ENV
L55_1 = "funcGodModeAdm"
function L56_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L53_1
      if L0_3 then
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = SetEntityInvincible
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = ResetPedVisibleDamage
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = ClearPedLastWeaponDamage
        L2_3 = L0_3
        L1_3(L2_3)
        L1_3 = SetEntityProofs
        L2_3 = L0_3
        L3_3 = true
        L4_3 = true
        L5_3 = true
        L6_3 = true
        L7_3 = true
        L8_3 = true
        L9_3 = true
        L10_3 = true
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L1_3 = SetEntityCanBeDamaged
        L2_3 = L0_3
        L3_3 = false
        L1_3(L2_3, L3_3)
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
L54_1[L55_1] = L56_1
L54_1 = _ENV
L55_1 = "funcGodModeAdmTesto"
function L56_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = L53_1
      if L0_3 then
      else
        return
      end
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
L54_1[L55_1] = L56_1
L54_1 = AddEventHandler
L55_1 = "gameEventTriggered"
function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if "CEventNetworkEntityDamage" == A0_2 then
    L2_2 = tonumber
    L3_2 = A1_2[1]
    L2_2 = L2_2(L3_2)
    victim = L2_2
    L2_2 = tonumber
    L3_2 = A1_2[2]
    L2_2 = L2_2(L3_2)
    attacker = L2_2
    L2_2 = tonumber
    L3_2 = A1_2[6]
    L2_2 = L2_2(L3_2)
    if 1 == L2_2 then
      L2_2 = true
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = false
    ::lbl_20::
    victimDied = L2_2
    L2_2 = tonumber
    L3_2 = A1_2[7]
    L2_2 = L2_2(L3_2)
    weaponHash = L2_2
    L2_2 = tonumber
    L3_2 = A1_2[10]
    L2_2 = L2_2(L3_2)
    if 0 ~= L2_2 then
      L2_2 = true
      if L2_2 then
        goto lbl_34
      end
    end
    L2_2 = false
    ::lbl_34::
    isMeleeDamage = L2_2
    L2_2 = tonumber
    L3_2 = A1_2[11]
    L2_2 = L2_2(L3_2)
    vehicleDamageTypeFlag = L2_2
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = IsPedAPlayer
    L4_2 = attacker
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = GetPlayerServerId
      L5_2 = NetworkGetPlayerIndexFromPed
      L6_2 = attacker
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 then
        goto lbl_62
      end
    end
    L4_2 = tostring
    L5_2 = attacker
    if -1 == L5_2 then
      L5_2 = " "
      if L5_2 then
        goto lbl_61
      end
    end
    L5_2 = attacker
    ::lbl_61::
    L4_2 = L4_2(L5_2)
    ::lbl_62::
    L5_2 = victim
    L6_2 = attacker
    if L5_2 ~= L6_2 then
      L5_2 = victim
      if L5_2 == L2_2 then
        L5_2 = IsPedAPlayer
        L6_2 = victim
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = IsPedAPlayer
          L6_2 = attacker
          L5_2 = L5_2(L6_2)
          if L5_2 then
            goto lbl_80
          end
        end
      end
    end
    do return end
    ::lbl_80::
    L5_2 = victim
    if L5_2 == L2_2 then
      L5_2 = victimDied
      if L5_2 then
        L5_2 = IsEntityAPed
        L6_2 = attacker
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = print
          L6_2 = "Killed by ID "
          L7_2 = GetPlayerServerId
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L6_2 = L6_2 .. L7_2
          L5_2(L6_2)
        end
      end
    end
  end
end
L54_1(L55_1, L56_1)
L54_1 = RegisterNetEvent
L55_1 = "mexImportante"
L54_1(L55_1)
L54_1 = AddEventHandler
L55_1 = "mexImportante"
function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexImportant
  L3_2 = A0_2
  L4_2 = 30
  L1_2(L2_2, L3_2, L4_2)
end
L54_1(L55_1, L56_1)
L54_1 = RegisterCommand
L55_1 = "v"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = GetResourceState
  L1_2 = "striano_fastmenu"
  L0_2 = L0_2(L1_2)
  if "started" ~= L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = {}
  L1_2.label = "\240\159\142\173 MASK"
  L1_2.cmd = "mask"
  L2_2 = {}
  L2_2.label = "\240\159\166\186 TORSO"
  L2_2.cmd = "torso"
  L3_2 = {}
  L3_2.label = "\240\159\145\150 PANTS"
  L3_2.cmd = "pant"
  L4_2 = {}
  L4_2.label = "\240\159\145\159 SHOES"
  L4_2.cmd = "scarpe"
  L5_2 = {}
  L5_2.label = "\240\159\146\141 ACCS NECK"
  L5_2.cmd = "coll"
  L6_2 = {}
  L6_2.label = "\240\159\145\144 ARMS"
  L6_2.cmd = "braccia"
  L7_2 = {}
  L7_2.label = "\240\159\167\164 GLOVES"
  L7_2.cmd = "guanti"
  L8_2 = {}
  L8_2.label = "\240\159\145\147 GLASSES"
  L8_2.cmd = "glass"
  L9_2 = {}
  L9_2.label = "\240\159\166\186 SECONDARY (YES)"
  L9_2.cmd = "secondariosi"
  L10_2 = {}
  L10_2.label = "\240\159\166\186 SECONDARY (NO)"
  L10_2.cmd = "secondariono"
  L11_2 = {}
  L11_2.label = "\226\155\145\239\184\143 HELMET"
  L11_2.cmd = "casco"
  L12_2 = {}
  L12_2.label = "\240\159\170\130 PARACHUTE"
  L12_2.cmd = "para"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L0_2[10] = L10_2
  L0_2[11] = L11_2
  L0_2[12] = L12_2
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = L6_2.label
    function L10_2()
      local L0_3, L1_3
      L0_3 = ExecuteCommand
      L1_3 = L6_2.cmd
      L0_3(L1_3)
    end
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L54_1(L55_1, L56_1)
L54_1 = RegisterCommand
L55_1 = "mv"
function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = "YOUR VEHICLES"
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = L0_2
  function L4_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "garage"
    L0_3(L1_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = "SPAWNED VEHICLES"
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = L1_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "mieiveicoli"
    L0_3(L1_3)
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = "EDIT VEHICLE"
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.addMenuItem
  L5_2 = L2_2
  function L6_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "modv"
    L0_3(L1_3)
  end
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = "TAKE OUT WATER"
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = L3_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "tirafuori"
    L0_3(L1_3)
  end
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.openMenu
  L4_2(L5_2)
end
L54_1(L55_1, L56_1)
L54_1 = false
L55_1 = RegisterCommand
L56_1 = "guidaBase"
function L57_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = IsPedHuman
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L0_2 then
    L0_2 = tutorialFatto
    if L0_2 then
      L0_2 = L54_1
      if not L0_2 then
        L0_2 = true
        L54_1 = L0_2
        while true do
          L0_2 = IsPauseMenuActive
          L0_2 = L0_2()
          if not L0_2 then
            break
          end
          L0_2 = Wait
          L1_2 = 0
          L0_2(L1_2)
        end
        L0_2 = "INTERACT"
        L1_2 = "INV"
        L2_2 = "VOICE RANGE"
        L3_2 = "QUEST MENU"
        L4_2 = "SPELLS"
        L5_2 = "CLEAR ANIM"
        L6_2 = "MAP"
        L7_2 = "STEALTH"
        L8_2 = "RAPID"
        L9_2 = "ETERIS"
        L10_2 = "STRIP"
        L11_2 = "MAIN MENU"
        L12_2 = "GUIDE"
        L13_2 = exports
        L13_2 = L13_2.text_guide
        L14_2 = L13_2
        L13_2 = L13_2.ClearGuideText
        L13_2(L14_2)
        L13_2 = Wait
        L14_2 = 225
        L13_2(L14_2)
        L13_2 = {}
        L14_2 = {}
        L15_2 = "ALT"
        L14_2[1] = L15_2
        L13_2[L0_2] = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = 470729322
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L1_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = 1674276229
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L2_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = 1379088272
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L3_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "G"
        L15_2[1] = L16_2
        L14_2[L4_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = -790369489
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L5_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "P"
        L15_2[1] = L16_2
        L14_2[L6_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = 659662656
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L7_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "MMB"
        L15_2[1] = L16_2
        L14_2[L8_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "F1"
        L15_2[1] = L16_2
        L14_2[L9_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "CTRL-DX"
        L15_2[1] = L16_2
        L14_2[L10_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = "ESC"
        L15_2[1] = L16_2
        L14_2[L11_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Wait
        L15_2 = 1
        L14_2(L15_2)
        L14_2 = {}
        L15_2 = {}
        L16_2 = exports
        L16_2 = L16_2.striano_core
        L17_2 = L16_2
        L16_2 = L16_2.getInfoKey
        L18_2 = -1259717162
        L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
        L15_2[1] = L16_2
        L15_2[2] = L17_2
        L15_2[3] = L18_2
        L14_2[L12_2] = L15_2
        L13_2 = L14_2
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.AddGuideText
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = exports
        L14_2 = L14_2.text_guide
        L15_2 = L14_2
        L14_2 = L14_2.GuidaVisibileNV
        L14_2(L15_2)
        L14_2 = Wait
        L15_2 = 1000
        L14_2(L15_2)
        L14_2 = false
        L54_1 = L14_2
      end
    end
  end
end
L55_1(L56_1, L57_1)
L55_1 = RegisterCommand
L56_1 = "guidaarmi"
function L57_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = IsPedHuman
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  if L0_2 then
    L0_2 = tutorialFatto
    if L0_2 then
      L0_2 = L54_1
      if not L0_2 then
        L0_2 = true
        L54_1 = L0_2
        while true do
          L0_2 = IsPauseMenuActive
          L0_2 = L0_2()
          if not L0_2 then
            break
          end
          L0_2 = Wait
          L1_2 = 0
          L0_2(L1_2)
        end
        L0_2 = exports
        L0_2 = L0_2.text_guide
        L1_2 = L0_2
        L0_2 = L0_2.ClearGuideText
        L0_2(L1_2)
        L0_2 = Wait
        L1_2 = 225
        L0_2(L1_2)
        L0_2 = {}
        L1_2 = {}
        L2_2 = exports
        L2_2 = L2_2.striano_core
        L3_2 = L2_2
        L2_2 = L2_2.getInfoKey
        L4_2 = 659662656
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
        L1_2[1] = L2_2
        L1_2[2] = L3_2
        L1_2[3] = L4_2
        L1_2[4] = L5_2
        L0_2.STEALTH = L1_2
        L1_2 = exports
        L1_2 = L1_2.text_guide
        L2_2 = L1_2
        L1_2 = L1_2.AddGuideText
        L3_2 = L0_2
        L1_2(L2_2, L3_2)
        L1_2 = Wait
        L2_2 = 1
        L1_2(L2_2)
        L1_2 = {}
        L2_2 = {}
        L3_2 = "R"
        L2_2[1] = L3_2
        L1_2.RELOAD = L2_2
        L0_2 = L1_2
        L1_2 = exports
        L1_2 = L1_2.text_guide
        L2_2 = L1_2
        L1_2 = L1_2.AddGuideText
        L3_2 = L0_2
        L1_2(L2_2, L3_2)
        L1_2 = Wait
        L2_2 = 1
        L1_2(L2_2)
        L1_2 = {}
        L2_2 = {}
        L3_2 = exports
        L3_2 = L3_2.striano_core
        L4_2 = L3_2
        L3_2 = L3_2.getInfoKey
        L5_2 = -1259717162
        L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L2_2[3] = L5_2
        L1_2.GUIDE = L2_2
        L0_2 = L1_2
        L1_2 = exports
        L1_2 = L1_2.text_guide
        L2_2 = L1_2
        L1_2 = L1_2.AddGuideText
        L3_2 = L0_2
        L1_2(L2_2, L3_2)
        L1_2 = exports
        L1_2 = L1_2.text_guide
        L2_2 = L1_2
        L1_2 = L1_2.GuidaVisibileNV
        L1_2(L2_2)
        L1_2 = false
        L54_1 = L1_2
      end
    end
  end
end
L55_1(L56_1, L57_1)
L55_1 = {}
L56_1 = "b_100"
L57_1 = "LMB"
L55_1[L56_1] = L57_1
L56_1 = "b_101"
L57_1 = "RMB"
L55_1[L56_1] = L57_1
L56_1 = "b_102"
L57_1 = "MMB"
L55_1[L56_1] = L57_1
L56_1 = "b_103"
L57_1 = "Mouse Extra 1"
L55_1[L56_1] = L57_1
L56_1 = "b_104"
L57_1 = "Mouse Extra 2"
L55_1[L56_1] = L57_1
L56_1 = "b_105"
L57_1 = "Mouse Extra 3"
L55_1[L56_1] = L57_1
L56_1 = "b_106"
L57_1 = "Mouse Extra 4"
L55_1[L56_1] = L57_1
L56_1 = "b_107"
L57_1 = "Mouse Extra 5"
L55_1[L56_1] = L57_1
L56_1 = "b_108"
L57_1 = "Mouse Extra 6"
L55_1[L56_1] = L57_1
L56_1 = "b_109"
L57_1 = "Mouse Extra 7"
L55_1[L56_1] = L57_1
L56_1 = "b_110"
L57_1 = "Mouse Extra 8"
L55_1[L56_1] = L57_1
L56_1 = "b_115"
L57_1 = "Mouse Rotellina Su"
L55_1[L56_1] = L57_1
L56_1 = "b_116"
L57_1 = "Mous Rotellina Giu"
L55_1[L56_1] = L57_1
L56_1 = "b_130"
L57_1 = "Num -"
L55_1[L56_1] = L57_1
L56_1 = "b_131"
L57_1 = "Num +"
L55_1[L56_1] = L57_1
L56_1 = "b_134"
L57_1 = "Num *"
L55_1[L56_1] = L57_1
L56_1 = "b_135"
L57_1 = "Num Invio"
L55_1[L56_1] = L57_1
L56_1 = "b_137"
L57_1 = "Num 1"
L55_1[L56_1] = L57_1
L56_1 = "b_138"
L57_1 = "Num 2"
L55_1[L56_1] = L57_1
L56_1 = "b_139"
L57_1 = "Num 3"
L55_1[L56_1] = L57_1
L56_1 = "b_140"
L57_1 = "Num 4"
L55_1[L56_1] = L57_1
L56_1 = "b_141"
L57_1 = "Num 5"
L55_1[L56_1] = L57_1
L56_1 = "b_142"
L57_1 = "Num 6"
L55_1[L56_1] = L57_1
L56_1 = "b_143"
L57_1 = "Num 7"
L55_1[L56_1] = L57_1
L56_1 = "b_144"
L57_1 = "Num 8"
L55_1[L56_1] = L57_1
L56_1 = "b_145"
L57_1 = "Num 9"
L55_1[L56_1] = L57_1
L56_1 = "b_170"
L57_1 = "F1"
L55_1[L56_1] = L57_1
L56_1 = "b_171"
L57_1 = "F2"
L55_1[L56_1] = L57_1
L56_1 = "b_172"
L57_1 = "F3"
L55_1[L56_1] = L57_1
L56_1 = "b_173"
L57_1 = "F4"
L55_1[L56_1] = L57_1
L56_1 = "b_174"
L57_1 = "F5"
L55_1[L56_1] = L57_1
L56_1 = "b_175"
L57_1 = "F6"
L55_1[L56_1] = L57_1
L56_1 = "b_176"
L57_1 = "F7"
L55_1[L56_1] = L57_1
L56_1 = "b_177"
L57_1 = "F8"
L55_1[L56_1] = L57_1
L56_1 = "b_178"
L57_1 = "F9"
L55_1[L56_1] = L57_1
L56_1 = "b_179"
L57_1 = "F10"
L55_1[L56_1] = L57_1
L56_1 = "b_180"
L57_1 = "F11"
L55_1[L56_1] = L57_1
L56_1 = "b_181"
L57_1 = "F12"
L55_1[L56_1] = L57_1
L56_1 = "b_182"
L57_1 = "F13"
L55_1[L56_1] = L57_1
L56_1 = "b_183"
L57_1 = "F14"
L55_1[L56_1] = L57_1
L56_1 = "b_184"
L57_1 = "F15"
L55_1[L56_1] = L57_1
L56_1 = "b_185"
L57_1 = "F16"
L55_1[L56_1] = L57_1
L56_1 = "b_186"
L57_1 = "F17"
L55_1[L56_1] = L57_1
L56_1 = "b_187"
L57_1 = "F18"
L55_1[L56_1] = L57_1
L56_1 = "b_188"
L57_1 = "F19"
L55_1[L56_1] = L57_1
L56_1 = "b_189"
L57_1 = "F20"
L55_1[L56_1] = L57_1
L56_1 = "b_190"
L57_1 = "F21"
L55_1[L56_1] = L57_1
L56_1 = "b_191"
L57_1 = "F22"
L55_1[L56_1] = L57_1
L56_1 = "b_192"
L57_1 = "F23"
L55_1[L56_1] = L57_1
L56_1 = "b_193"
L57_1 = "F24"
L55_1[L56_1] = L57_1
L56_1 = "b_194"
L57_1 = "Freccia Su"
L55_1[L56_1] = L57_1
L56_1 = "b_195"
L57_1 = "Freccia Giu"
L55_1[L56_1] = L57_1
L56_1 = "b_196"
L57_1 = "Freccia SX"
L55_1[L56_1] = L57_1
L56_1 = "b_197"
L57_1 = "Freccia DX"
L55_1[L56_1] = L57_1
L56_1 = "b_198"
L57_1 = "Del"
L55_1[L56_1] = L57_1
L56_1 = "b_199"
L57_1 = "Esc"
L55_1[L56_1] = L57_1
L56_1 = "b_200"
L57_1 = "Insert"
L55_1[L56_1] = L57_1
L56_1 = "b_201"
L57_1 = "End"
L55_1[L56_1] = L57_1
L56_1 = "b_210"
L57_1 = "Del"
L55_1[L56_1] = L57_1
L56_1 = "b_211"
L57_1 = "Insert"
L55_1[L56_1] = L57_1
L56_1 = "b_212"
L57_1 = "End"
L55_1[L56_1] = L57_1
L56_1 = "b_1000"
L57_1 = "Shift"
L55_1[L56_1] = L57_1
L56_1 = "b_1002"
L57_1 = "Tab"
L55_1[L56_1] = L57_1
L56_1 = "b_1003"
L57_1 = "Enter"
L55_1[L56_1] = L57_1
L56_1 = "b_1004"
L57_1 = "Backspace"
L55_1[L56_1] = L57_1
L56_1 = "b_1009"
L57_1 = "Pag Su"
L55_1[L56_1] = L57_1
L56_1 = "b_1008"
L57_1 = "Home"
L55_1[L56_1] = L57_1
L56_1 = "b_1010"
L57_1 = "Pag Giu"
L55_1[L56_1] = L57_1
L56_1 = "b_1012"
L57_1 = "CapsLock"
L55_1[L56_1] = L57_1
L56_1 = "b_1013"
L57_1 = "Control"
L55_1[L56_1] = L57_1
L56_1 = "b_1014"
L57_1 = "Control Dx"
L55_1[L56_1] = L57_1
L56_1 = "b_1015"
L57_1 = "Alt"
L55_1[L56_1] = L57_1
L56_1 = "b_1055"
L57_1 = "Home"
L55_1[L56_1] = L57_1
L56_1 = "b_1056"
L57_1 = "Pag Su"
L55_1[L56_1] = L57_1
L56_1 = "b_2000"
L57_1 = "Spazio"
L55_1[L56_1] = L57_1
L56_1 = _ENV
L57_1 = "GetKeyLabel"
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetControlInstructionalButton
  L2_2 = 0
  L3_2 = A0_2 | 2147483648
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = L1_2
  L4_2 = "t_"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L3_2 = L1_2
    L4_2 = "t_"
    L5_2 = ""
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
    if "\195\185" == L2_2 then
      L2_2 = "MMB"
    end
    return L2_2
  else
    L2_2 = L55_1
    L2_2 = L2_2[L1_2]
    if not L2_2 then
      L2_2 = "Non identificato"
    end
    return L2_2
  end
end
L56_1[L57_1] = L58_1
L56_1 = _ENV
L57_1 = "exports"
L56_1 = L56_1[L57_1]
L57_1 = "getInfoKey"
function L58_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetKeyLabel
  L2_2 = A0_2
  return L1_2(L2_2)
end
L56_1(L57_1, L58_1)
L56_1 = RegisterCommand
L57_1 = "testGetInvKey"
function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = print
  L4_2 = "Tasto per aprire inventario ottenuto: "
  L5_2 = exports
  L5_2 = L5_2.striano_core
  L6_2 = L5_2
  L5_2 = L5_2.getInfoKey
  L7_2 = 470729322
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L56_1(L57_1, L58_1)
L56_1 = AddEventHandler
L57_1 = "onResourceStop"
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = pairs
    L2_2 = L10_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = SetEntityAsMissionEntity
      L8_2 = L6_2.PedID
      L7_2(L8_2)
      L7_2 = DeleteEntity
      L8_2 = L6_2.PedID
      L7_2(L8_2)
    end
    L1_2 = SetEntityInvincible
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L56_1(L57_1, L58_1)
L56_1 = {}
L57_1 = {}
L58_1 = {}
L59_1 = RegisterNetEvent
L60_1 = "relisoft_tag:set_admins"
L59_1(L60_1)
L59_1 = AddEventHandler
L60_1 = "relisoft_tag:set_admins"
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L56_1 = A0_2
  L1_2 = pairs
  L2_2 = L57_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = A0_2[L5_2]
    if nil == L7_2 then
      L7_2 = L57_1
      L7_2[L5_2] = nil
    end
  end
end
L59_1(L60_1, L61_1)
L59_1 = TriggerServerCallback
L60_1 = "getAdminsPlayers"
function L61_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L56_1 = L1_2
end
L59_1(L60_1, L61_1)
function L59_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = A2_2.color
  if not L3_2 then
    L3_2 = {}
    L3_2.r = 255
    L3_2.g = 255
    L3_2.b = 255
    L3_2.a = 255
  end
  L4_2 = A2_2.size
  if not L4_2 then
    L4_2 = 0.4
  end
  L5_2 = GetGameplayCamCoords
  L5_2 = L5_2()
  L6_2 = L5_2 - A0_2
  L6_2 = #L6_2
  L7_2 = L4_2 / L6_2
  L7_2 = L7_2 * 2
  L8_2 = GetGameplayCamFov
  L8_2 = L8_2()
  L9_2 = 1
  L8_2 = L9_2 / L8_2
  L8_2 = L8_2 * 100
  L9_2 = L7_2 * L8_2
  L10_2 = SetDrawOrigin
  L11_2 = A0_2.x
  L12_2 = A0_2.y
  L13_2 = A0_2.z
  L14_2 = 0
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = SetTextProportional
  L11_2 = 0
  L10_2(L11_2)
  L10_2 = SetTextScale
  L11_2 = 0.0 * L9_2
  L12_2 = 0.55 * L9_2
  L10_2(L11_2, L12_2)
  L10_2 = SetTextColour
  L11_2 = L3_2.r
  L12_2 = L3_2.g
  L13_2 = L3_2.b
  L14_2 = L3_2.a
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = SetTextDropshadow
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 255
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = SetTextFont
  L11_2 = 4
  L10_2(L11_2)
  L10_2 = SetTextEdge
  L11_2 = 2
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 150
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = SetTextDropShadow
  L10_2()
  L10_2 = SetTextOutline
  L10_2()
  L10_2 = SetTextEntry
  L11_2 = "STRING"
  L10_2(L11_2)
  L10_2 = SetTextCentre
  L11_2 = 1
  L10_2(L11_2)
  L10_2 = AddTextComponentString
  L11_2 = A1_2
  L10_2(L11_2)
  L10_2 = DrawText
  L11_2 = 0.0
  L12_2 = 0.0
  L10_2(L11_2, L12_2)
  L10_2 = ClearDrawOrigin
  L10_2()
end
L60_1 = _ENV
L61_1 = "CreateThread"
L60_1 = L60_1[L61_1]
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = GetEntityCoords
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L1_2 = pairs
    L2_2 = L56_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = GetPlayerFromServerId
      L8_2 = L6_2.source
      L7_2 = L7_2(L8_2)
      if -1 ~= L7_2 then
        L8_2 = GetPlayerPed
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = GetEntityCoords
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2 - L0_2
        L10_2 = #L10_2
        if L10_2 < 15.0 then
          L12_2 = L6_2.source
          L11_2 = L57_1
          L11_2[L12_2] = L6_2
        else
          L12_2 = L6_2.source
          L11_2 = L57_1
          L11_2[L12_2] = nil
        end
      end
    end
  end
end
L60_1(L61_1)
L60_1 = _ENV
L61_1 = "CreateThread"
L60_1 = L60_1[L61_1]
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = {}
    L58_1 = L0_2
    L0_2 = pairs
    L1_2 = L57_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = GetPlayerFromServerId
      L7_2 = L5_2.source
      L6_2 = L6_2(L7_2)
      if -1 ~= L6_2 then
        L7_2 = GetPlayerPed
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        L8_2 = L5_2.stato
        if L8_2 then
          L9_2 = L58_1
          L10_2 = {}
          L10_2.ped = L7_2
          L10_2.label = L8_2
          L11_2 = L5_2.source
          L10_2.source = L11_2
          L11_2 = L5_2.source
          L12_2 = GetPlayerServerId
          L13_2 = PlayerId
          L13_2 = L13_2()
          L12_2 = L12_2(L13_2)
          L11_2 = L11_2 == L12_2
          L10_2.self = L11_2
          L9_2[L6_2] = L10_2
        end
      end
    end
  end
end
L60_1(L61_1)
L60_1 = _ENV
L61_1 = "CreateThread"
L60_1 = L60_1[L61_1]
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = next
    L1_2 = L58_1
    L0_2 = L0_2(L1_2)
    if nil ~= L0_2 then
      L0_2 = pairs
      L1_2 = L58_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_2.label
        if L6_2 then
          L6_2 = L5_2.self
          if L6_2 then
            L6_2 = L59_1
            L7_2 = GetEntityCoords
            L8_2 = L5_2.ped
            L7_2 = L7_2(L8_2)
            L8_2 = vector3
            L9_2 = 0
            L10_2 = 0
            L11_2 = 1.2
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L7_2 = L7_2 + L8_2
            L8_2 = L5_2.label
            L9_2 = {}
            L9_2.size = 0.35
            L6_2(L7_2, L8_2, L9_2)
          else
            L6_2 = L59_1
            L7_2 = GetEntityCoords
            L8_2 = L5_2.ped
            L7_2 = L7_2(L8_2)
            L8_2 = vector3
            L9_2 = 0
            L10_2 = 0
            L11_2 = 1.2
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L7_2 = L7_2 + L8_2
            L8_2 = L5_2.label
            L9_2 = {}
            L9_2.size = 0.45
            L6_2(L7_2, L8_2, L9_2)
          end
        end
      end
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L60_1(L61_1)
L60_1 = RegisterNetEvent
L61_1 = "esx:spawnPed2"
L60_1(L61_1)
L60_1 = AddEventHandler
L61_1 = "esx:spawnPed2"
function L62_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = RequestModelStriano
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = GetEntityCoords
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L1_3 = GetEntityForwardVector
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L2_3()
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L2_3 = table
    L2_3 = L2_3.unpack
    L3_3 = L1_3 * 2.0
    L3_3 = L0_3 + L3_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    L5_3 = CreatePed
    L6_3 = 26
    L7_3 = A0_2
    L8_3 = L2_3
    L9_3 = L3_3
    L10_3 = L4_3 - 0.5
    L11_3 = GetEntityHeading
    L12_3 = PlayerPedId
    L12_3, L13_3 = L12_3()
    L11_3 = L11_3(L12_3, L13_3)
    L12_3 = true
    L13_3 = false
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L6_3 = SetPedDefaultComponentVariation
    L7_3 = L5_3
    L6_3(L7_3)
    L6_3 = SetModelAsNoLongerNeeded
    L7_3 = A0_2
    L6_3(L7_3)
    L6_3 = SetPedCanRagdollFromPlayerImpact
    L7_3 = L5_3
    L8_3 = false
    L6_3(L7_3, L8_3)
  end
  L1_2(L2_2)
end
L60_1(L61_1, L62_1)
function L60_1(A0_2)
  local L1_2
  L1_2 = A0_2 * 0.017453292519943295
  return L1_2
end
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = vector3
  L4_2 = A0_2 + 0.0
  L5_2 = A1_2 + 0.0
  L6_2 = A2_2 + 0.0
  return L3_2(L4_2, L5_2, L6_2)
end
function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L61_1
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
function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L61_1
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
function L64_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L61_1
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L65_1(A0_2, A1_2)
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
function L66_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.sqrt
  L2_2 = L65_1
  L3_2 = A0_2
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
function L67_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L66_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0E-6
  if L1_2 < L2_2 then
    L2_2 = L61_1
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L64_1
  L3_2 = A0_2
  L4_2 = 1.0
  L4_2 = L4_2 / L1_2
  return L2_2(L3_2, L4_2)
end
function L68_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L60_1
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = L60_1
  L3_2 = A0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L61_1
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
L69_1 = _ENV
L70_1 = "DrawAimRay"
function L71_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetGameplayCamCoord
      L0_3 = L0_3()
      L1_3 = GetGameplayCamRot
      L2_3 = 2
      L1_3 = L1_3(L2_3)
      L2_3 = L68_1
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = table
      L3_3 = L3_3.unpack
      L4_3 = GetPedBoneCoords
      L5_3 = L1_2
      L6_3 = 31086
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3 = L4_3(L5_3, L6_3)
      L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3)
      L6_3 = vector3
      L7_3 = L3_3
      L8_3 = L4_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L7_3 = 900.0
      L8_3 = vector3
      L9_3 = L6_3.x
      L10_3 = L2_3.x
      L10_3 = L10_3 * L7_3
      L9_3 = L9_3 + L10_3
      L10_3 = L6_3.y
      L11_3 = L2_3.y
      L11_3 = L11_3 * L7_3
      L10_3 = L10_3 + L11_3
      L11_3 = L6_3.z
      L12_3 = L2_3.z
      L12_3 = L12_3 * L7_3
      L11_3 = L11_3 + L12_3
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L9_3 = 511
      L10_3 = StartShapeTestRay
      L11_3 = L6_3.x
      L12_3 = L6_3.y
      L13_3 = L6_3.z
      L14_3 = L8_3.x
      L15_3 = L8_3.y
      L16_3 = L8_3.z
      L17_3 = L9_3
      L18_3 = L1_2
      L19_3 = 7
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      L11_3 = GetShapeTestResult
      L12_3 = L10_3
      L11_3, L12_3, L13_3, L14_3, L15_3 = L11_3(L12_3)
      L16_3 = L13_3 or L16_3
      if 1 ~= L12_3 or not L13_3 then
        L16_3 = L8_3
      end
      L17_3 = DrawLine
      L18_3 = L6_3.x
      L19_3 = L6_3.y
      L20_3 = L6_3.z
      L21_3 = L16_3.x
      L22_3 = L16_3.y
      L23_3 = L16_3.z
      L24_3 = 255
      L25_3 = 255
      L26_3 = 255
      L27_3 = 255
      L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3)
      L17_3 = {}
      L18_3 = 255
      L19_3 = 255
      L20_3 = 255
      L17_3[1] = L18_3
      L17_3[2] = L19_3
      L17_3[3] = L20_3
      L18_3 = 0.12
      L19_3 = 28
      L20_3 = 200
      L21_3 = DrawMarker
      L22_3 = L19_3
      L23_3 = L16_3.x
      L24_3 = L16_3.y
      L25_3 = L16_3.z
      L26_3 = 0.0
      L27_3 = 0.0
      L28_3 = 0.0
      L29_3 = 0.0
      L30_3 = 0.0
      L31_3 = 0.0
      L32_3 = L18_3
      L33_3 = L18_3
      L34_3 = L18_3
      L35_3 = L17_3[1]
      L36_3 = L17_3[2]
      L37_3 = L17_3[3]
      L38_3 = L20_3
      L39_3 = false
      L40_3 = true
      L41_3 = 2
      L42_3 = nil
      L43_3 = nil
      L44_3 = false
      L21_3(L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3, L43_3, L44_3)
      L21_3 = IsDisabledControlPressed
      L22_3 = 0
      L23_3 = 24
      L21_3 = L21_3(L22_3, L23_3)
      if not L21_3 then
        L21_3 = IsControlPressed
        L22_3 = 0
        L23_3 = 24
        L21_3 = L21_3(L22_3, L23_3)
        if not L21_3 then
          goto lbl_139
        end
      end
      if L12_3 and nil ~= L16_3 then
        L21_3 = A0_2
        L22_3 = L16_3
        L21_3(L22_3)
        return
      else
        L21_3 = exports
        L21_3 = L21_3.striano_combat
        L22_3 = L21_3
        L21_3 = L21_3.submexError
        L23_3 = "Coordinata non rilevata!"
        L21_3(L22_3, L23_3)
        L21_3 = Wait
        L22_3 = 500
        L21_3(L22_3)
      end
      ::lbl_139::
    end
  end
  L2_2(L3_2)
end
L69_1[L70_1] = L71_1
L69_1 = RegisterCommand
L70_1 = "am"
function L71_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[\240\159\148\138] 3,2,1 Fight!"
  function L3_2()
    local L0_3, L1_3
    L0_3 = DrawAimRay
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      L1_4 = print
      L2_4 = "3,2,1, FIGHT! "
      L3_4 = A0_4
      L2_4 = L2_4 .. L3_4
      L1_4(L2_4)
      L1_4 = "sounds/striano_combat/misc/audio_3.mp3"
      L2_4 = TriggerServerEvent
      L3_4 = "striano_djset:playSoundPos"
      L4_4 = "Three"
      L5_4 = L1_4
      L6_4 = A0_4
      L7_4 = 0.2
      L8_4 = 75.0
      L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
      L2_4 = Wait
      L3_4 = 1000
      L2_4(L3_4)
      L2_4 = "sounds/striano_combat/misc/audio_2.mp3"
      L3_4 = TriggerServerEvent
      L4_4 = "striano_djset:playSoundPos"
      L5_4 = "Two"
      L6_4 = L2_4
      L7_4 = A0_4
      L8_4 = 0.2
      L9_4 = 75.0
      L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
      L3_4 = Wait
      L4_4 = 1000
      L3_4(L4_4)
      L3_4 = "sounds/striano_combat/misc/audio_1.mp3"
      L4_4 = TriggerServerEvent
      L5_4 = "striano_djset:playSoundPos"
      L6_4 = "One"
      L7_4 = L3_4
      L8_4 = A0_4
      L9_4 = 0.2
      L10_4 = 75.0
      L4_4(L5_4, L6_4, L7_4, L8_4, L9_4, L10_4)
      L4_4 = Wait
      L5_4 = 1000
      L4_4(L5_4)
      L4_4 = "sounds/striano_combat/misc/audio_4.mp3"
      L5_4 = TriggerServerEvent
      L6_4 = "striano_djset:playSoundPos"
      L7_4 = "Fight"
      L8_4 = L4_4
      L9_4 = A0_4
      L10_4 = 0.2
      L11_4 = 75.0
      L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[\240\159\148\138] Bell"
  function L3_2()
    local L0_3, L1_3
    L0_3 = DrawAimRay
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L1_4 = "sounds/striano_combat/misc/Bell.mp3"
      L2_4 = TriggerServerEvent
      L3_4 = "striano_djset:playSoundPos"
      L4_4 = "Bell"
      L5_4 = L1_4
      L6_4 = A0_4
      L7_4 = 0.3
      L8_4 = 75.0
      L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[\240\159\148\138] Horn"
  function L3_2()
    local L0_3, L1_3
    L0_3 = DrawAimRay
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L1_4 = "sounds/striano_combat/misc/Horn.mp3"
      L2_4 = TriggerServerEvent
      L3_4 = "striano_djset:playSoundPos"
      L4_4 = "Horn"
      L5_4 = L1_4
      L6_4 = A0_4
      L7_4 = 0.3
      L8_4 = 75.0
      L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
    end
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[\240\159\148\138] Arena Bell"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerServerEvent
    L1_3 = "campanaserver"
    L2_3 = GetPlayerServerId
    L3_3 = PlayerId
    L3_3 = L3_3()
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
L69_1(L70_1, L71_1)
L69_1 = RegisterNetEvent
L70_1 = "esx:deleteVehicle"
L69_1(L70_1)
L69_1 = AddEventHandler
L70_1 = "esx:deleteVehicle"
function L71_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if A0_2 then
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsPedInAnyVehicle
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = tonumber
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        A0_2 = L2_2 + 0.01
        if A0_2 > 100.0 then
          A0_2 = 100.0
        end
        L2_2 = GetVehiclesInAreaStriano
        L3_2 = GetEntityCoords
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = ipairs
        L4_2 = L2_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = 0
          while true do
            L10_2 = NetworkHasControlOfEntity
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if not (not L10_2 and L9_2 < 100) then
              break
            end
            L10_2 = DoesEntityExist
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if not L10_2 then
              break
            end
            L10_2 = Wait
            L11_2 = 100
            L10_2(L11_2)
            L10_2 = NetworkRequestControlOfEntity
            L11_2 = L8_2
            L10_2(L11_2)
            L9_2 = L9_2 + 1
          end
          L10_2 = DoesEntityExist
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            L10_2 = NetworkHasControlOfEntity
            L11_2 = L8_2
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L10_2 = DeleteVehicleStriano
              L11_2 = L8_2
              L10_2(L11_2)
            end
          end
        end
    end
  end
  else
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
    L7_2 = GetVehicleInDirectionStriano
    L8_2 = L2_2
    L9_2 = vector3
    L10_2 = L4_2
    L11_2 = L5_2
    L12_2 = L6_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = 0
    L9_2 = IsPedInAnyVehicle
    L10_2 = L1_2
    L11_2 = true
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = GetVehiclePedIsIn
      L10_2 = L1_2
      L11_2 = false
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
    end
    while true do
      L9_2 = NetworkHasControlOfEntity
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if not (not L9_2 and L8_2 < 100) then
        break
      end
      L9_2 = DoesEntityExist
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        break
      end
      L9_2 = Wait
      L10_2 = 100
      L9_2(L10_2)
      L9_2 = NetworkRequestControlOfEntity
      L10_2 = L7_2
      L9_2(L10_2)
      L8_2 = L8_2 + 1
    end
    L9_2 = DoesEntityExist
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = NetworkHasControlOfEntity
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = DeleteVehicleStriano
        L10_2 = L7_2
        L9_2(L10_2)
      end
    end
  end
end
L69_1(L70_1, L71_1)
L69_1 = RegisterNetEvent
L70_1 = "esx:showNotification"
L69_1(L70_1)
L69_1 = AddEventHandler
L70_1 = "esx:showNotification"
function L71_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L69_1(L70_1, L71_1)
L69_1 = _ENV
L70_1 = "exports"
L69_1 = L69_1[L70_1]
L70_1 = "gifview"
function L71_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "gifViewer"
  L3_2.name = A0_2
  L3_2.show = true
  L3_2.text = A1_2
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 9000
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.show = false
  L2_2(L3_2)
end
L69_1(L70_1, L71_1)
L69_1 = _ENV
L70_1 = "exports"
L69_1 = L69_1[L70_1]
L70_1 = "gifviewClose"
function L71_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "gifViewer"
  L3_2.show = false
  L2_2(L3_2)
end
L69_1(L70_1, L71_1)
L69_1 = RegisterCommand
L70_1 = "pools"
function L71_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = print
  L1_2 = "^3[POOL DEBUG]^7 Objects:"
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "^3[POOL DEBUG]^7 Peds:"
  L2_2 = GetGamePool
  L3_2 = "CPed"
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "^3[POOL DEBUG]^7 Vehicles:"
  L2_2 = GetGamePool
  L3_2 = "CVehicle"
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "^3[POOL DEBUG]^7 Pickups:"
  L2_2 = GetGamePool
  L3_2 = "CPickup"
  L2_2 = L2_2(L3_2)
  L2_2 = #L2_2
  L0_2(L1_2, L2_2)
end
L69_1(L70_1, L71_1)
L69_1 = {}
L70_1 = false
function L71_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SetTextFont
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = SetTextScale
  L4_2 = 0.0
  L5_2 = 0.3
  L3_2(L4_2, L5_2)
  L3_2 = SetTextColour
  L4_2 = 255
  L5_2 = 255
  L6_2 = 255
  L7_2 = 235
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetTextOutline
  L3_2()
  L3_2 = BeginTextCommandDisplayText
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = AddTextComponentSubstringPlayerName
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = EndTextCommandDisplayText
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
function L72_1()
  local L0_2, L1_2
  L0_2 = L70_1
  if L0_2 then
    return
  end
  L0_2 = true
  L70_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = next
      L1_3 = L69_1
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = {}
      L2_3 = pairs
      L3_3 = L69_1
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.expires
        if 0 ~= L8_3 then
          L8_3 = L7_3.expires
          if L0_3 >= L8_3 then
            L8_3 = L69_1
            L8_3[L6_3] = nil
        end
        else
          L8_3 = #L1_3
          L8_3 = L8_3 + 1
          L1_3[L8_3] = L6_3
        end
      end
      L2_3 = table
      L2_3 = L2_3.sort
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = ipairs
      L3_3 = L1_3
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L69_1
        L8_3 = L8_3[L7_3]
        L9_3 = L71_1
        L10_3 = "%s: ~y~%s"
        L11_3 = L10_3
        L10_3 = L10_3.format
        L12_3 = L7_3
        L13_3 = tostring
        L14_3 = L8_3.value
        L13_3, L14_3 = L13_3(L14_3)
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
        L11_3 = 0.015
        L12_3 = L6_3 - 1
        L12_3 = L12_3 * 0.022
        L12_3 = 0.68 + L12_3
        L9_3(L10_3, L11_3, L12_3)
      end
    end
    L0_3 = false
    L70_1 = L0_3
  end
  L0_2(L1_2)
end
function L73_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if nil == A2_2 then
    L3_2 = 500
    if L3_2 then
      goto lbl_16
      A2_2 = L3_2 or A2_2
    end
  end
  L3_2 = tonumber
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2 or A2_2
  if not L3_2 then
    A2_2 = 500
  end
  ::lbl_16::
  L3_2 = L69_1
  L4_2 = {}
  L4_2.value = A1_2
  if 0 == A2_2 then
    L5_2 = 0
    if L5_2 then
      goto lbl_29
    end
  end
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + A2_2
  ::lbl_29::
  L4_2.expires = L5_2
  L3_2[A0_2] = L4_2
  L3_2 = L72_1
  L3_2()
end
function L74_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L69_1
  L2_2[L1_2] = nil
end
function L75_1()
  local L0_2, L1_2
  L0_2 = {}
  L69_1 = L0_2
end
L76_1 = _ENV
L77_1 = "exports"
L76_1 = L76_1[L77_1]
L77_1 = "Debug"
L78_1 = L73_1
L76_1(L77_1, L78_1)
L76_1 = _ENV
L77_1 = "exports"
L76_1 = L76_1[L77_1]
L77_1 = "RemoveDebug"
L78_1 = L74_1
L76_1(L77_1, L78_1)
L76_1 = _ENV
L77_1 = "exports"
L76_1 = L76_1[L77_1]
L77_1 = "ClearDebug"
L78_1 = L75_1
L76_1(L77_1, L78_1)
