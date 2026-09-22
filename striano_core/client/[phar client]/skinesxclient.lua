local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1, L93_1, L94_1, L95_1, L96_1, L97_1, L98_1, L99_1, L100_1, L101_1, L102_1, L103_1, L104_1, L105_1, L106_1, L107_1, L108_1, L109_1, L110_1, L111_1, L112_1, L113_1, L114_1, L115_1, L116_1, L117_1, L118_1, L119_1, L120_1, L121_1, L122_1, L123_1, L124_1, L125_1, L126_1, L127_1, L128_1, L129_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    A0_2 = 10000
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  while true do
    L3_2 = GetEntityCoords
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = SetFocusArea
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = L3_2.z
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = RequestCollisionAtCoord
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L7_2 = L3_2.z
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = HasCollisionLoadedAroundEntity
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = Wait
      L5_2 = 250
      L4_2(L5_2)
      L4_2 = ClearFocus
      L4_2()
      L4_2 = true
      return L4_2
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    if A0_2 <= L4_2 then
      L4_2 = ClearFocus
      L4_2()
      L4_2 = print
      L5_2 = "[COLLISION] Timeout loading map"
      L4_2(L5_2)
      L4_2 = false
      return L4_2
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
end
WaitForPlayerCollision = L0_1
L0_1 = 2
L1_1 = false
L2_1 = RegisterCommand
L3_1 = "testCinematica"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = TriggerEvent
  L4_2 = "StartCinematica"
  L5_2 = vec3
  L6_2 = 3781.481
  L7_2 = 7264.816
  L8_2 = 13.991
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vec3
  L7_2 = 3786.261
  L8_2 = 7264.307
  L9_2 = 34.339
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = vec3
  L8_2 = 3790.912
  L9_2 = 7263.75
  L10_2 = 68.949
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = vec3
  L9_2 = 3830.412
  L10_2 = 7258.971
  L11_2 = 43.412
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = 10000
  L10_2 = "Kh\240\159\156\129rura Arena"
  L11_2 = ""
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "StartCinematica"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "StartCinematica"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = {}
  L8_2 = {}
  L8_2.startPos = A0_2
  L8_2.startLookAt = A1_2
  L8_2.endPos = A2_2
  L8_2.endLookAt = A3_2
  L8_2.duration = A4_2
  L7_2[1] = L8_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = true
  L1_1 = L9_2
  L9_2 = CreateThread
  function L10_2()
    local L0_3, L1_3
    while true do
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L9_2(L10_2)
  L9_2 = exports
  L9_2 = L9_2.striano_core
  L10_2 = L9_2
  L9_2 = L9_2.setwatermark
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = ExecuteCommand
  L10_2 = "hudoff2"
  L9_2(L10_2)
  L9_2 = exports
  L9_2 = L9_2.striano_combat
  L10_2 = L9_2
  L9_2 = L9_2.submex
  L11_2 = ""
  L9_2(L10_2, L11_2)
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.ClearGuideText
  L9_2(L10_2)
  L9_2 = Wait
  L10_2 = 50
  L9_2(L10_2)
  L9_2 = exports
  L9_2 = L9_2.text_guide
  L10_2 = L9_2
  L9_2 = L9_2.GuidaVisibileNV
  L9_2(L10_2)
  L9_2 = CreateCam
  L10_2 = "DEFAULT_SCRIPTED_CAMERA"
  L11_2 = true
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = CreateCam
  L11_2 = "DEFAULT_SCRIPTED_CAMERA"
  L12_2 = true
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Wait
    L1_3 = 2500
    L0_3(L1_3)
    L0_3 = A6_2
    L0_3 = #L0_3
    if L0_3 > 0 then
      L0_3 = exports
      L0_3 = L0_3.striano_combat
      L1_3 = L0_3
      L0_3 = L0_3.showZone
      L2_3 = A5_2
      L3_3 = A6_2
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L11_2(L12_2)
  L11_2 = 1
  L12_2 = #L7_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = SetCamCoord
    L16_2 = L9_2
    L17_2 = L7_2[L14_2]
    L17_2 = L17_2.endPos
    L15_2(L16_2, L17_2)
    L15_2 = PointCamAtCoord
    L16_2 = L9_2
    L17_2 = L7_2[L14_2]
    L17_2 = L17_2.endLookAt
    L15_2(L16_2, L17_2)
    L15_2 = SetCamCoord
    L16_2 = L10_2
    L17_2 = L7_2[L14_2]
    L17_2 = L17_2.startPos
    L15_2(L16_2, L17_2)
    L15_2 = PointCamAtCoord
    L16_2 = L10_2
    L17_2 = L7_2[L14_2]
    L17_2 = L17_2.startLookAt
    L15_2(L16_2, L17_2)
    L15_2 = RenderScriptCams
    L16_2 = true
    L17_2 = false
    L18_2 = 0
    L19_2 = true
    L20_2 = true
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    L15_2 = exports
    L15_2 = L15_2.striano_combat
    L16_2 = L15_2
    L15_2 = L15_2.submexType
    L17_2 = L7_2[L14_2]
    L17_2 = L17_2.textEng
    L15_2(L16_2, L17_2)
    L15_2 = SetCamActiveWithInterp
    L16_2 = L9_2
    L17_2 = L10_2
    L18_2 = L7_2[L14_2]
    L18_2 = L18_2.duration
    L19_2 = 1
    L20_2 = 1
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    L15_2 = Wait
    L16_2 = L7_2[L14_2]
    L16_2 = L16_2.duration
    L16_2 = L16_2 - 900
    L15_2(L16_2)
  end
  L11_2 = exports
  L11_2 = L11_2.striano_combat
  L12_2 = L11_2
  L11_2 = L11_2.submex
  L13_2 = ""
  L11_2(L12_2, L13_2)
  L11_2 = Wait
  L12_2 = 2500
  L11_2(L12_2)
  L11_2 = RenderScriptCams
  L12_2 = false
  L13_2 = false
  L14_2 = 0
  L15_2 = true
  L16_2 = true
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = DestroyCam
  L12_2 = L10_2
  L13_2 = false
  L11_2(L12_2, L13_2)
  L11_2 = DestroyCam
  L12_2 = L9_2
  L13_2 = false
  L11_2(L12_2, L13_2)
  L11_2 = Wait
  L12_2 = 500
  L11_2(L12_2)
  L11_2 = false
  L1_1 = L11_2
  L11_2 = tutorialFatto
  if L11_2 then
    L11_2 = exports
    L11_2 = L11_2.striano_core
    L12_2 = L11_2
    L11_2 = L11_2.setwatermark
    L13_2 = true
    L11_2(L12_2, L13_2)
    L11_2 = ExecuteCommand
    L12_2 = "hudon2"
    L11_2(L12_2)
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = tonumber
    L1_3 = A1_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L0_3 = 1000
    end
    L1_3 = tostring
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = false
    L3_3 = pcall
    function L4_3()
      local L0_4, L1_4, L2_4
      L0_4 = exports
      L0_4 = L0_4.xsound
      L1_4 = L0_4
      L0_4 = L0_4.soundExists
      L2_4 = L1_3
      L0_4 = L0_4(L1_4, L2_4)
      L2_3 = L0_4
    end
    L3_3(L4_3)
    if not L2_3 then
      L3_3 = print
      L4_3 = "^3[xsound] No sounds:^7"
      L5_3 = L1_3
      L3_3(L4_3, L5_3)
      return
    end
    L3_3 = nil
    L4_3 = pcall
    function L5_3()
      local L0_4, L1_4, L2_4
      L0_4 = exports
      L0_4 = L0_4.xsound
      L1_4 = L0_4
      L0_4 = L0_4.getVolume
      L2_4 = L1_3
      L0_4 = L0_4(L1_4, L2_4)
      L3_3 = L0_4
    end
    L4_3(L5_3)
    if nil ~= L3_3 then
      L4_3 = pcall
      function L5_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = exports
        L0_4 = L0_4.xsound
        L1_4 = L0_4
        L0_4 = L0_4.fadeOut
        L2_4 = L1_3
        L3_4 = L0_3
        L0_4(L1_4, L2_4, L3_4)
      end
      L4_3(L5_3)
      L4_3 = Wait
      L5_3 = L0_3 + 100
      L4_3(L5_3)
    else
      L4_3 = print
      L5_3 = "^3[xsound] Volume nil, skip fade:^7"
      L6_3 = L1_3
      L4_3(L5_3, L6_3)
    end
    L4_3 = pcall
    function L5_3()
      local L0_4, L1_4, L2_4
      L0_4 = exports
      L0_4 = L0_4.xsound
      L1_4 = L0_4
      L0_4 = L0_4.Destroy
      L2_4 = L1_3
      L0_4(L1_4, L2_4)
    end
    L4_3(L5_3)
  end
  L2_2(L3_2)
end
stopMusic = L2_1
L2_1 = RegisterNetEvent
L3_1 = "striano_SpawnVehicle"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "striano_SpawnVehicle"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  if nil == A1_2 then
    L4_2 = GetEntityCoords
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A1_2 = L4_2
  end
  if nil == A2_2 then
    L4_2 = GetEntityHeading
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A2_2 = L4_2
  end
  L4_2 = striano_SpawnVehicle
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_3
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = A0_2
    L2_3(L3_3)
    L2_3 = SetEntityAsMissionEntity
    L3_3 = L1_3
    L4_3 = true
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = SetVehicleDoorsLocked
    L3_3 = L1_3
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleLivery
    L3_3 = L1_3
    L4_3 = -1
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityHeading
    L3_3 = L1_3
    L4_3 = A2_2
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleDoorsLocked
    L3_3 = L1_3
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = Wait
    L3_3 = 25
    L2_3(L3_3)
    L2_3 = SetEntityHeading
    L3_3 = L1_3
    L4_3 = A2_2
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleFuelLevel
    L3_3 = L1_3
    L4_3 = 100.0
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleEngineOn
    L3_3 = L1_3
    L4_3 = true
    L5_3 = true
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetVehicleJetEngineOn
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = exports
    L2_3 = L2_3.striano_core
    L3_3 = L2_3
    L2_3 = L2_3.getsubmisID
    L2_3 = L2_3(L3_3)
    if 0 == L2_3 then
      L2_3 = TaskWarpPedIntoVehicle
      L3_3 = L3_2
      L4_3 = L1_3
      L5_3 = -1
      L2_3(L3_3, L4_3, L5_3)
    end
    L2_3 = SetVehicleNeedsToBeHotwired
    L3_3 = L1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleHasBeenOwnedByPlayer
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleIsStolen
    L3_3 = L1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleIsWanted
    L3_3 = L1_3
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = SetVehRadioStation
    L3_3 = L1_3
    L4_3 = "OFF"
    L2_3(L3_3, L4_3)
    L2_3 = Wait
    L3_3 = 25
    L2_3(L3_3)
    L2_3 = SetEntityVisible
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = trimfunc
    L3_3 = GetVehicleNumberPlateText
    L4_3 = L1_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L3_3 = TriggerServerEvent
    L4_3 = "striano_keys:sv:adminGiveTempKey"
    L5_3 = GetPlayerServerId
    L6_3 = PlayerId
    L6_3 = L6_3()
    L5_3 = L5_3(L6_3)
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = type
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = A0_2 or L5_2
  if "number" ~= L5_2 or not A0_2 then
    L5_2 = GetHashKey
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
  end
  L6_2 = type
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L6_2 = A1_2 or L6_2
  if "vector3" ~= L6_2 or not A1_2 then
    L6_2 = vec
    L7_2 = A1_2.x
    L8_2 = A1_2.y
    L9_2 = A1_2.z
    L6_2 = L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = false ~= A4_2
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = RequestModelStriano
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = CreateVehicle
    L1_3 = L5_2
    L2_3 = L6_2.xyz
    L3_3 = A2_2
    if not L3_3 then
      L3_3 = 0.0
    end
    L4_3 = L7_2
    L5_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    while true do
      L1_3 = DoesEntityExist
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = L7_2
    if L1_3 then
      L1_3 = 0
      while true do
        L2_3 = NetworkGetEntityIsNetworked
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        if not (not L2_3 and L1_3 < 50) then
          break
        end
        L2_3 = NetworkRegisterEntityAsNetworked
        L3_3 = L0_3
        L2_3(L3_3)
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
        L1_3 = L1_3 + 1
      end
      L2_3 = VehToNet
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if 0 ~= L2_3 then
        L3_3 = SetEntityAsMissionEntity
        L4_3 = L0_3
        L5_3 = true
        L6_3 = false
        L3_3(L4_3, L5_3, L6_3)
      else
      end
    end
    L1_3 = SetEntityVisible
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleHasBeenOwnedByPlayer
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = SetVehicleNeedsToBeHotwired
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = SetModelAsNoLongerNeeded
    L2_3 = L5_2
    L1_3(L2_3)
    L1_3 = SetVehRadioStation
    L2_3 = L0_3
    L3_3 = "OFF"
    L1_3(L2_3, L3_3)
    L1_3 = RequestCollisionAtCoord
    L2_3 = L6_2.xyz
    L1_3(L2_3)
    while true do
      L1_3 = HasCollisionLoadedAroundEntity
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = A3_2
    if L1_3 then
      L1_3 = A3_2
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L8_2(L9_2)
end
striano_SpawnVehicle = L2_1
barcaTut = nil
troncoTut = nil
PedTutorial = nil
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = DoesEntityExist
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = print
    L1_2 = "Loading Mesh Player..."
    L0_2(L1_2)
  end
  L0_2 = false
  while true do
    L1_2 = GetEntityCoords
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 0.0
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L1_2 - L2_2
    L1_2 = #L1_2
    if not (L1_2 < 15.0) then
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      L2_2 = vector3
      L3_2 = 3836.253
      L4_2 = 6438.734
      L5_2 = 0.613
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L1_2 - L2_2
      L1_2 = #L1_2
      if not (L1_2 < 15.0) then
        L1_2 = IsEntityPlayingAnim
        L2_2 = PlayerPedId
        L2_2 = L2_2()
        L3_2 = "missfam1_yachtbattleonyacht02_"
        L4_2 = "onboom_hangloop_j"
        L5_2 = 1
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          break
        end
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    if not L0_2 then
      L0_2 = true
    end
  end
  if L0_2 then
    L1_2 = Wait
    L2_2 = 7000
    L1_2(L2_2)
  else
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.updateMaxHealth
  L3_2 = 500
  L1_2(L2_2, L3_2)
  L1_2 = SetPedMaxHealth
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 500
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 250
  L1_2(L2_2)
  BloccatoPG = false
  L1_2 = SetPlayerHealthRechargeLimit
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = 0.0
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 250
  L1_2(L2_2)
  PlayerCaricato = true
  L1_2 = ExecuteCommand
  L2_2 = "clearwaypoints"
  L1_2(L2_2)
  L1_2 = TriggerServerCallback
  L2_2 = "esx_Pharmacy:getVarDB"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 then
      L1_3 = tonumber
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      MissioneSurv = L1_3
      L1_3 = print
      L2_3 = "mytutorial, detected ID: "
      L3_3 = MissioneSurv
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L4_2 = "mytutorial"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CaricaVita
  L1_2()
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = SegnaleIniziale
  L2_2 = vector3
  L3_2 = 715.446
  L4_2 = 8355.085
  L5_2 = 277.337
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1(L3_1)
L2_1 = exports
L3_1 = "loadlife"
function L4_1()
  local L0_2, L1_2
  L0_2 = CaricaVita
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.getStatusClient
  L2_2 = "vitapl"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.updateMaxHealth
  L3_2 = 500
  L1_2(L2_2, L3_2)
  L1_2 = SetPedMaxHealth
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 500
  L1_2(L2_2, L3_2)
  if nil ~= L0_2 then
    L1_2 = L0_2 - 100
    if L1_2 > 0 then
      L1_2 = print
      L2_2 = "Player Life loaded: "
      L3_2 = L0_2 - 100
      L2_2 = L2_2 .. L3_2
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L2_2 = L1_2
      L1_2 = L1_2.liferank
      L3_2 = L0_2
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.getStatusClient
  L3_2 = "armorpl"
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 and L1_2 > 0 then
    L2_2 = print
    L3_2 = "Armor loaded: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = SetPedArmour
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
CaricaVita = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
trimfunc = L2_1
function L2_1(A0_2, A1_2)
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
function L3_1(A0_2, A1_2)
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
function L4_1(A0_2, A1_2)
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
function L5_1(A0_2)
  local L1_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = A0_2 * L1_2
  L1_2 = L1_2 / 180.0
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L5_1
  L2_2 = A0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = L5_1
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
function L7_1(A0_2)
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
function L8_1(A0_2, A1_2)
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
processCoordinates = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L3_2 = GetGameplayCamRot
  L4_2 = 0
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_1
  L6_2 = L3_2
  L7_2 = {}
  L7_2.x = 10
  L7_2.y = 0
  L7_2.z = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_1
  L7_2 = L3_2
  L8_2 = {}
  L8_2.x = -10
  L8_2.y = 0
  L8_2.z = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L3_1
  L8_2 = L3_2
  L9_2 = {}
  L9_2.x = 0
  L9_2.y = 0
  L9_2.z = -10
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L3_1
  L9_2 = L3_2
  L10_2 = {}
  L10_2.x = 0
  L10_2.y = 0
  L10_2.z = 10
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L4_1
  L10_2 = L6_1
  L11_2 = L8_2
  L10_2 = L10_2(L11_2)
  L11_2 = L6_1
  L12_2 = L7_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L10_2 = L4_1
  L11_2 = L6_1
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L12_2 = L6_1
  L13_2 = L6_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L12_2(L13_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L11_2 = L5_1
  L12_2 = L3_2.y
  L11_2 = L11_2(L12_2)
  L11_2 = -L11_2
  L12_2 = L4_1
  L13_2 = L2_1
  L14_2 = L9_2
  L15_2 = math
  L15_2 = L15_2.cos
  L16_2 = L11_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = L2_1
  L15_2 = L10_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = L3_1
  L14_2 = L2_1
  L15_2 = L9_2
  L16_2 = math
  L16_2 = L16_2.sin
  L17_2 = L11_2
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L16_2(L17_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L15_2 = L2_1
  L16_2 = L10_2
  L17_2 = math
  L17_2 = L17_2.cos
  L18_2 = L11_2
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L17_2(L18_2)
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L14_2 = L3_1
  L15_2 = L3_1
  L16_2 = L3_1
  L17_2 = A0_2
  L18_2 = L2_1
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = L12_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = L7_1
  L16_2 = L14_2
  L15_2 = L15_2(L16_2)
  L16_2 = undefined
  if L15_2 == L16_2 then
    L16_2 = L3_1
    L17_2 = A0_2
    L18_2 = L2_1
    L19_2 = L4_2
    L20_2 = 10.0
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
    return L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
  L16_2 = L3_1
  L17_2 = A0_2
  L18_2 = L2_1
  L19_2 = L4_2
  L20_2 = 10.0
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L18_2(L19_2, L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L17_2 = L7_1
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  if nil == L17_2 then
    L18_2 = L3_1
    L19_2 = A0_2
    L20_2 = L2_1
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
  L19_2 = L3_1
  L20_2 = A0_2
  L21_2 = L2_1
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
  L21_2 = L3_1
  L22_2 = L3_1
  L23_2 = L3_1
  L24_2 = A0_2
  L25_2 = L2_1
  L26_2 = L4_2
  L27_2 = 10.0
  L25_2, L26_2, L27_2 = L25_2(L26_2, L27_2)
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
  L24_2 = L2_1
  L25_2 = L12_2
  L26_2 = L19_2
  L24_2, L25_2, L26_2, L27_2 = L24_2(L25_2, L26_2)
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
  L23_2 = L2_1
  L24_2 = L13_2
  L25_2 = L20_2
  L23_2, L24_2, L25_2, L26_2, L27_2 = L23_2(L24_2, L25_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  return L21_2
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2
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
  L8_2 = L8_1
  L9_2 = L6_2
  L10_2 = L7_2.x
  L11_2 = L7_2.y
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_1
  L10_2 = L8_2
  L11_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L3_1
  L11_2 = L6_2
  L12_2 = L2_1
  L13_2 = L9_2
  L14_2 = 0.05
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2 = L12_2(L13_2, L14_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
  L11_2 = L3_1
  L12_2 = L6_2
  L13_2 = L2_1
  L14_2 = L9_2
  L15_2 = 300
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2 = L13_2(L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
  L12_2 = nil
  L13_2 = _ENV
  L14_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L13_2 = L13_2[L14_2]
  L14_2 = L6_2
  L15_2 = vector3
  L16_2 = L11_2.x
  L17_2 = L11_2.y
  L18_2 = L11_2.z
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = -1
  L17_2 = A1_2
  L18_2 = 4
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = L13_2
  L13_2 = GetShapeTestResult
  L14_2 = L12_2
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
  if L14_2 then
    L18_2 = PlayerPedId
    L18_2 = L18_2()
    L19_2 = cassavicino
    if nil == L19_2 then
      L19_2 = IsPedSwimming
      L20_2 = L18_2
      L19_2 = L19_2(L20_2)
      if not L19_2 then
        L19_2 = IsPedSwimmingUnderWater
        L20_2 = L18_2
        L19_2 = L19_2(L20_2)
        if not L19_2 then
          L19_2 = L15_2.z
          if not (L19_2 < 0.0) then
            L19_2 = IsEntityInWater
            L20_2 = L18_2
            L19_2 = L19_2(L20_2)
            if not L19_2 then
              goto lbl_117
            end
          end
        end
      end
      L19_2 = vector3
      L20_2 = 255
      L21_2 = 255
      L22_2 = 255
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      L20_2 = cassaLostFocus
      if L20_2 then
        L20_2 = stoPosizionandoCassa
        if L20_2 then
          L20_2 = vector3
          L21_2 = 255
          L22_2 = 0
          L23_2 = 0
          L20_2 = L20_2(L21_2, L22_2, L23_2)
          L19_2 = L20_2
        end
      end
      L20_2 = DrawMarker
      L21_2 = 1
      L22_2 = L15_2.x
      L23_2 = L15_2.y
      L24_2 = L15_2.z
      L25_2 = 0.0
      L26_2 = 0.0
      L27_2 = 0.0
      L28_2 = 0.0
      L29_2 = 0.0
      L30_2 = 0.0
      L31_2 = 0.05
      L32_2 = 0.05
      L33_2 = 10.05
      L34_2 = L19_2
      L35_2 = 200
      L36_2 = false
      L37_2 = true
      L38_2 = 2
      L39_2 = nil
      L40_2 = nil
      L41_2 = false
      L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
      goto lbl_224
      ::lbl_117::
      L19_2 = cassaLostFocus
      if L19_2 then
        L19_2 = stoPosizionandoCassa
        if L19_2 then
          L19_2 = DrawMarker
          L20_2 = 28
          L21_2 = L15_2.x
          L22_2 = L15_2.y
          L23_2 = L15_2.z
          L24_2 = 0.0
          L25_2 = 0.0
          L26_2 = 0.0
          L27_2 = 0.0
          L28_2 = 0.0
          L29_2 = 0.0
          L30_2 = 0.05
          L31_2 = 0.05
          L32_2 = 0.05
          L33_2 = 255
          L34_2 = 0
          L35_2 = 0
          L36_2 = 200
          L37_2 = false
          L38_2 = true
          L39_2 = 2
          L40_2 = nil
          L41_2 = nil
          L42_2 = false
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
      end
      else
        L19_2 = DrawMarker
        L20_2 = 28
        L21_2 = L15_2.x
        L22_2 = L15_2.y
        L23_2 = L15_2.z
        L24_2 = 0.0
        L25_2 = 0.0
        L26_2 = 0.0
        L27_2 = 0.0
        L28_2 = 0.0
        L29_2 = 0.0
        L30_2 = 0.05
        L31_2 = 0.05
        L32_2 = 0.05
        L33_2 = 255
        L34_2 = 255
        L35_2 = 255
        L36_2 = 200
        L37_2 = false
        L38_2 = true
        L39_2 = 2
        L40_2 = nil
        L41_2 = nil
        L42_2 = false
        L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
      end
    else
      L19_2 = fishEntity
      if nil ~= L19_2 then
        L19_2 = DoesEntityExist
        L20_2 = fishEntity
        L19_2 = L19_2(L20_2)
        if L19_2 then
          L19_2 = GetEntityCoords
          L20_2 = fishEntity
          L19_2 = L19_2(L20_2)
          L20_2 = DrawMarker
          L21_2 = 28
          L22_2 = L19_2.x
          L23_2 = L19_2.y
          L24_2 = GetEntityCoords
          L25_2 = CasseRosse
          L26_2 = cassavicino
          L25_2 = L25_2[L26_2]
          L24_2 = L24_2(L25_2)
          L24_2 = L24_2.z
          L25_2 = 0.0
          L26_2 = 0.0
          L27_2 = 0.0
          L28_2 = 0.0
          L29_2 = 0.0
          L30_2 = 0.0
          L31_2 = 0.05
          L32_2 = 0.05
          L33_2 = 0.05
          L34_2 = 255
          L35_2 = 255
          L36_2 = 255
          L37_2 = 200
          L38_2 = false
          L39_2 = true
          L40_2 = 2
          L41_2 = nil
          L42_2 = nil
          L43_2 = false
          L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2)
        end
      end
      L19_2 = vector3
      L20_2 = L15_2.x
      L21_2 = L15_2.y
      L22_2 = GetEntityCoords
      L23_2 = CasseRosse
      L24_2 = cassavicino
      L23_2 = L23_2[L24_2]
      L22_2 = L22_2(L23_2)
      L22_2 = L22_2.z
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      L15_2 = L19_2
    end
    ::lbl_224::
    return L15_2
  else
    L18_2 = nil
    return L18_2
  end
end
tutorialFatto = false
PlayerCaricato = false
L10_1 = false
L11_1 = nil
L12_1 = false
L13_1 = false
L14_1 = false
L15_1 = false
L16_1 = nil
L17_1 = false
L18_1 = false
L19_1 = false
L20_1 = nil
MissioneSurv = 0
L21_1 = 0
L22_1 = 0
L23_1 = true
L24_1 = 0
L25_1 = {}
L26_1 = nil
L27_1 = nil
L28_1 = nil
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 0.45
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  L6_2 = World3dToScreen2d
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L9_2 = SetTextCentre
    L10_2 = true
    L9_2(L10_2)
    L9_2 = SetTextScale
    L10_2 = L5_2
    L11_2 = L5_2
    L9_2(L10_2, L11_2)
    L9_2 = SetTextFont
    L10_2 = 4
    L9_2(L10_2)
    L9_2 = SetTextProportional
    L10_2 = 1
    L9_2(L10_2)
    L9_2 = SetTextColour
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L13_2 = 200
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = SetTextEntry
    L10_2 = "STRING"
    L9_2(L10_2)
    L9_2 = SetTextOutline
    L9_2()
    L9_2 = AddTextComponentString
    L10_2 = A3_2
    L9_2(L10_2)
    L9_2 = DrawText
    L10_2 = L7_2
    L11_2 = L8_2 - 0.015
    L9_2(L10_2, L11_2)
  end
end
function L30_1(A0_2, A1_2, A2_2, A3_2)
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
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = A1_2
    L1_3 = 3000
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
      L10_3 = A2_2
      if nil ~= L10_3 then
        L9_3 = A2_2
      end
      L10_3 = L29_1
      L11_3 = L9_3.x
      L12_3 = L9_3.y
      L13_3 = L9_3.z
      L13_3 = L13_3 + L4_3
      L14_3 = A0_2
      L15_3 = A3_2
      if not L15_3 then
        L15_3 = 0.33
      end
      L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
    end
  end
  L4_2(L5_2)
end
testo3d = L30_1
function L30_1(A0_2, A1_2)
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
makeEntityFacePos = L30_1
L30_1 = {}
function L31_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L7_2 = A2_2.x
  L8_2 = A2_2.y
  L7_2 = L7_2 + L8_2
  L8_2 = A2_2.z
  L8_2 = L8_2 / 100
  L7_2 = L7_2 + L8_2
  L8_2 = tostring
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = L7_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = false
  L10_2 = 1
  L11_2 = L30_1
  L11_2 = #L11_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L30_1
    L14_2 = L14_2[L13_2]
    L15_2 = tostring
    L16_2 = L14_2.name
    L15_2 = L15_2(L16_2)
    L16_2 = tostring
    L17_2 = L8_2
    L16_2 = L16_2(L17_2)
    if L15_2 == L16_2 then
      L9_2 = true
      break
    end
  end
  if not L9_2 then
    L10_2 = print
    L11_2 = "Creo blip base "
    L12_2 = L8_2
    L11_2 = L11_2 .. L12_2
    L10_2(L11_2)
    L10_2 = A0_2
    L11_2 = RequestNamedPtfxAsset
    L12_2 = L10_2
    L11_2(L12_2)
    while true do
      L11_2 = HasNamedPtfxAssetLoaded
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        break
      end
      L11_2 = Wait
      L12_2 = 0
      L11_2(L12_2)
    end
    L11_2 = UseParticleFxAssetNextCall
    L12_2 = L10_2
    L11_2(L12_2)
    L11_2 = StartParticleFxLoopedAtCoord
    L12_2 = A1_2
    L13_2 = A2_2.x
    L14_2 = A2_2.y
    L15_2 = A2_2.z
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 0.0
    L19_2 = A4_2
    L20_2 = false
    L21_2 = false
    L22_2 = false
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    if nil ~= A3_2 then
      L12_2 = SetParticleFxLoopedColour
      L13_2 = L11_2
      L14_2 = A3_2.x
      L15_2 = A3_2.y
      L16_2 = A3_2.z
      L17_2 = 0
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L12_2 = {}
    L12_2.fx = L11_2
    L12_2.name = L8_2
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L30_1
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = L30_1
    L14_2 = #L13_2
    L13_2 = L30_1
    L13_2 = L13_2[L14_2]
    L14_2 = L30_1
    L14_2 = #L14_2
    if A5_2 then
      L15_2 = CreateThread
      function L16_2()
        local L0_3, L1_3, L2_3
        while true do
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3)
          L1_3 = A2_2
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          L1_3 = A6_2
          if L0_3 > L1_3 then
            L0_3 = L13_2
            if nil ~= L0_3 then
              L0_3 = print
              L1_3 = "Blip fx fermato per distanza. "
              L2_3 = L13_2.name
              L1_3 = L1_3 .. L2_3
              L0_3(L1_3)
              L0_3 = StopParticleFxLooped
              L1_3 = L13_2.fx
              L2_3 = 0
              L0_3(L1_3, L2_3)
              L0_3 = RemoveParticleFx
              L1_3 = L13_2.fx
              L2_3 = true
              L0_3(L1_3, L2_3)
              L0_3 = table
              L0_3 = L0_3.remove
              L1_3 = L30_1
              L2_3 = L14_2
              L0_3(L1_3, L2_3)
              return
            end
          end
        end
      end
      L15_2(L16_2)
    end
  end
end
CreaBlipBase = L31_1
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L30_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L30_1
    L5_2 = L5_2[L4_2]
    L6_2 = tostring
    L7_2 = L5_2.name
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L6_2 = StopParticleFxLooped
      L7_2 = L5_2.fx
      L8_2 = 0
      L6_2(L7_2, L8_2)
      L6_2 = RemoveParticleFx
      L7_2 = L5_2.fx
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = L30_1
      L8_2 = k
      L6_2(L7_2, L8_2)
      break
    end
  end
end
DelBlipBase = L31_1
L31_1 = 69
L32_1 = nil
function L33_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L32_1
  if nil ~= L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_inventory
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L3_2 = L32_1
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L32_1 = L1_2
  end
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.create
  L3_2 = {}
  L3_2.coords = A0_2
  L3_2.type = "checkpoint"
  L3_2.color = "#fff"
  L3_2.label = "\t"
  L3_2.size = 1.0
  L3_2.displayDistance = true
  L3_2.deleteWhenNear = true
  L1_2 = L1_2(L2_2, L3_2)
  L32_1 = L1_2
  return L1_2
end
CreateMissionBlip = L33_1
function L33_1()
  local L0_2, L1_2, L2_2
  L0_2 = L32_1
  if nil ~= L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_inventory
    L1_2 = L0_2
    L0_2 = L0_2.remove
    L2_2 = L32_1
    L0_2(L1_2, L2_2)
    L0_2 = nil
    L32_1 = L0_2
  end
end
DelMissionBlip = L33_1
L33_1 = nil
function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DelMissionBlipCustom
  L1_2()
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = AddBlipForCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = SetBlipColour
  L3_2 = L1_2
  L4_2 = L31_1
  L2_2(L3_2, L4_2)
  L2_2 = AddTextEntry
  L3_2 = "MYBLIP"
  L4_2 = "Interesse"
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
  L4_2 = L31_1
  L2_2(L3_2, L4_2)
  L33_1 = L1_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L33_1
      if nil ~= L0_3 then
        L0_3 = DoesBlipExist
        L1_3 = L33_1
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = GetEntityCoords
          L1_3 = PlayerPedId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          L1_3 = A0_2
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          if not (L0_3 < 30) then
            goto lbl_26
          end
        end
      end
      L0_3 = DelMissionBlipCustom
      L0_3()
      do return end
      goto lbl_85
      ::lbl_26::
      L0_3 = vector3
      L1_3 = 2.5
      L2_3 = 2.5
      L3_3 = 900.0
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = vector3
      L2_3 = 0
      L3_3 = 0
      L4_3 = 255
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L2_3 = 100
      L3_3 = GetEntityCoords
      L4_3 = PlayerPedId
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L4_3()
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
      L4_3 = A0_2
      L3_3 = L3_3 - L4_3
      L3_3 = #L3_3
      L4_3 = 1000.0
      if L3_3 > L4_3 then
        L3_3 = vector3
        L4_3 = 20.0
        L5_3 = 20.0
        L6_3 = 9000.0
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L0_3 = L3_3
      else
        L3_3 = vector3
        L4_3 = 2.5
        L5_3 = 2.5
        L6_3 = 900.0
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        L0_3 = L3_3
      end
      L3_3 = DrawMarker
      L4_3 = 1
      L5_3 = A0_2.x
      L6_3 = A0_2.y
      L7_3 = A0_2.z
      L7_3 = L7_3 - 1.0
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = 0.0
      L11_3 = 0
      L12_3 = 0.0
      L13_3 = 0.0
      L14_3 = L0_3
      L15_3 = L1_3
      L16_3 = L2_3
      L17_3 = false
      L18_3 = true
      L19_3 = 2
      L20_3 = false
      L21_3 = false
      L22_3 = false
      L23_3 = false
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
      ::lbl_85::
    end
  end
  L2_2(L3_2)
  return L1_2
end
CreateMissionBlipCustom = L34_1
L34_1 = exports
L35_1 = "percorso"
function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateMissionBlipCustom
  L2_2 = A0_2
  return L1_2(L2_2)
end
L34_1(L35_1, L36_1)
function L34_1()
  local L0_2, L1_2, L2_2
  L0_2 = L33_1
  if nil ~= L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L33_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetBlipRoute
      L1_2 = L33_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = RemoveBlip
      L1_2 = L33_1
      L0_2(L1_2)
      L0_2 = nil
      L33_1 = L0_2
    end
  end
end
DelMissionBlipCustom = L34_1
L34_1 = exports
L35_1 = "delpercorso"
function L36_1()
  local L0_2, L1_2
  L0_2 = DelMissionBlipCustom
  L0_2()
end
L34_1(L35_1, L36_1)
sonoUnUccello = false
L34_1 = exports
L35_1 = "sonoUnUccello"
function L36_1()
  local L0_2, L1_2
  L0_2 = sonoUnUccello
  return L0_2
end
L34_1(L35_1, L36_1)
L34_1 = 3
L35_1 = nil
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L35_1
  if nil ~= L1_2 then
    L1_2 = DoesBlipExist
    L2_2 = L35_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetBlipRoute
      L2_2 = L35_1
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = RemoveBlip
      L2_2 = L35_1
      L1_2(L2_2)
      L1_2 = nil
      L35_1 = L1_2
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
  L4_2 = L34_1
  L2_2(L3_2, L4_2)
  L2_2 = AddTextEntry
  L3_2 = "MYBLIP"
  L4_2 = "Obiettivo: Percorso"
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
  L4_2 = L34_1
  L2_2(L3_2, L4_2)
  return L1_2
end
CreateMissionBlip2 = L36_1
function L36_1()
  local L0_2, L1_2, L2_2
  L0_2 = L35_1
  if nil ~= L0_2 then
    L0_2 = DoesBlipExist
    L1_2 = L35_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetBlipRoute
      L1_2 = L35_1
      L2_2 = false
      L0_2(L1_2, L2_2)
      L0_2 = RemoveBlip
      L1_2 = L35_1
      L0_2(L1_2)
      L0_2 = nil
      L35_1 = L0_2
    end
  end
end
DelMissionBlip2 = L36_1
L36_1 = {}
L36_1.ESC = 322
L36_1.F1 = 288
L36_1.F2 = 289
L36_1.F3 = 170
L36_1.F5 = 166
L36_1.F6 = 167
L36_1.F7 = 168
L36_1.F8 = 169
L36_1.F9 = 56
L36_1.F10 = 57
L36_1["~"] = 243
L36_1["1"] = 157
L36_1["2"] = 158
L36_1["3"] = 160
L36_1["4"] = 164
L36_1["5"] = 165
L36_1["6"] = 159
L36_1["7"] = 161
L36_1["8"] = 162
L36_1["9"] = 163
L36_1["-"] = 84
L36_1["="] = 83
L36_1.BACKSPACE = 177
L36_1.TAB = 37
L36_1.Q = 44
L36_1.W = 32
L36_1.E = 38
L36_1.R = 45
L36_1.T = 245
L36_1.Y = 246
L36_1.U = 303
L36_1.P = 199
L36_1["["] = 39
L36_1["]"] = 40
L36_1.ENTER = 18
L36_1.CAPS = 137
L36_1.A = 34
L36_1.S = 8
L36_1.D = 9
L36_1.F = 23
L36_1.G = 47
L36_1.H = 74
L36_1.K = 311
L36_1.L = 182
L36_1.LEFTSHIFT = 21
L36_1.Z = 20
L36_1.X = 73
L36_1.C = 26
L36_1.V = 0
L36_1.B = 29
L36_1.N = 249
L36_1.M = 244
L36_1[","] = 82
L36_1["."] = 81
L36_1.LEFTCTRL = 36
L36_1.LEFTALT = 19
L36_1.SPACE = 22
L36_1.RIGHTCTRL = 70
L36_1.HOME = 213
L36_1.PAGEUP = 10
L36_1.PAGEDOWN = 11
L36_1.DELETE = 178
L36_1.LEFT = 174
L36_1.RIGHT = 175
L36_1.TOP = 27
L36_1.DOWN = 173
L36_1.NENTER = 201
L36_1.N4 = 108
L36_1.N5 = 60
L36_1.N6 = 107
L36_1["N+"] = 96
L36_1["N-"] = 97
L36_1.N7 = 117
L36_1.N8 = 61
L36_1.N9 = 118
Keys = L36_1
mioSessoSkinESX = "NI"
L36_1 = CreateThread
function L37_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = tutorialFatto
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = TriggerServerCallback
  L1_2 = "esx_Pharmacy:getVarDB"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3 or nil
    if not A0_3 then
      L1_3 = "M"
    end
    L2_3 = print
    L3_3 = "Sesso PG: "
    L4_3 = L1_3
    L3_3 = L3_3 .. L4_3
    L2_3(L3_3)
    mioSessoSkinESX = L1_3
    if "M" == L1_3 then
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = true
      L2_3(L3_3, L4_3)
    else
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = false
      L2_3(L3_3, L4_3)
    end
  end
  L3_2 = "sex"
  L0_2(L1_2, L2_2, L3_2)
end
L36_1(L37_1)
L36_1 = 0
L37_1 = exports
L38_1 = "StatoMissioneTut"
function L39_1()
  local L0_2, L1_2
  L0_2 = L36_1
  return L0_2
end
L37_1(L38_1, L39_1)
L37_1 = {}
function L38_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
PlayEffectTutorial = L38_1
L38_1 = false
function L39_1()
  local L0_2, L1_2
  L0_2 = L38_1
  if not L0_2 then
    L0_2 = true
    L38_1 = L0_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      while true do
        L1_3 = L38_1
        if not L1_3 then
          break
        end
        L1_3 = IsPedHuman
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          break
        end
        L1_3 = IsPedFatallyInjured
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = 1
          L2_3 = 5
          L3_3 = 1
          for L4_3 = L1_3, L2_3, L3_3 do
            L5_3 = GetEntityCoords
            L6_3 = L0_3
            L5_3 = L5_3(L6_3)
            L6_3 = math
            L6_3 = L6_3.random
            L6_3 = L6_3()
            L6_3 = L6_3 - 0.1
            L7_3 = math
            L7_3 = L7_3.random
            L7_3 = L7_3()
            L7_3 = L7_3 - 0.1
            L8_3 = math
            L8_3 = L8_3.random
            L8_3 = L8_3()
            L8_3 = L8_3 * 0.9
            L9_3 = TriggerServerEvent
            L10_3 = "PlayEffectServer"
            L11_3 = {}
            L11_3.a = "core"
            L11_3.b = "blood_stab"
            L12_3 = vector3
            L13_3 = L5_3.x
            L13_3 = L13_3 + L6_3
            L14_3 = L5_3.y
            L14_3 = L14_3 + L7_3
            L15_3 = L5_3.z
            L15_3 = L15_3 - L8_3
            L12_3 = L12_3(L13_3, L14_3, L15_3)
            L11_3.pos = L12_3
            L9_3(L10_3, L11_3)
            L9_3 = TriggerServerEvent
            L10_3 = "PlayEffectServer"
            L11_3 = {}
            L11_3.a = "core"
            L11_3.b = "blood_entry_sniper"
            L12_3 = vector3
            L13_3 = L5_3.x
            L13_3 = L13_3 + L6_3
            L14_3 = L5_3.y
            L14_3 = L14_3 + L7_3
            L15_3 = L5_3.z
            L15_3 = L15_3 - L8_3
            L12_3 = L12_3(L13_3, L14_3, L15_3)
            L11_3.pos = L12_3
            L9_3(L10_3, L11_3)
          end
          L1_3 = IsControlPressed
          L2_3 = 0
          L3_3 = 25
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L1_3 = L36_1
            if L1_3 < 1 then
              L1_3 = math
              L1_3 = L1_3.random
              L2_3 = 1
              L3_3 = 2
              L1_3 = L1_3(L2_3, L3_3)
              if 1 == L1_3 then
                L2_3 = ExecuteCommand
                L3_3 = "e respiro"
                L4_3 = math
                L4_3 = L4_3.random
                L5_3 = 1
                L6_3 = 2
                L4_3 = L4_3(L5_3, L6_3)
                L3_3 = L3_3 .. L4_3
                L2_3(L3_3)
              else
                L2_3 = ExecuteCommand
                L3_3 = "e injured"
                L2_3(L3_3)
              end
            end
          end
          L1_3 = Wait
          L2_3 = 5000
          L1_3(L2_3)
        end
        L1_3 = Wait
        L2_3 = 5000
        L1_3(L2_3)
      end
      L1_3 = print
      L2_3 = "Loop inciampare chiuso."
      L1_3(L2_3)
    end
    L0_2(L1_2)
  end
end
LoopInciampo = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L22_1
  if 0 == L1_2 then
    L1_2 = true
    L23_1 = L1_2
    L22_1 = A0_2
    L1_2 = ExecuteCommand
    L2_2 = "prova3 "
    L3_2 = L22_1
    L4_2 = " sec."
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L2_2 = A0_2 * 1000
    L1_2 = L1_2 + L2_2
    L2_2 = A0_2
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      while true do
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = L22_1
        if L0_3 <= 0 then
          L0_3 = ExecuteCommand
          L1_3 = "prova3"
          L0_3(L1_3)
          L0_3 = L23_1
          if L0_3 then
            L0_3 = ExecuteCommand
            L1_3 = "guidaBase"
            L0_3(L1_3)
            L0_3 = print
            L1_3 = "Timer mission ended."
            L0_3(L1_3)
            L0_3 = PlaySoundFrontend
            L1_3 = -1
            L2_3 = "CAR_BIKE_WHOOSH"
            L3_3 = "MP_LOBBY_SOUNDS"
            L4_3 = 1
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = AnnullaIncaricoSub
            L0_3()
            L0_3 = 0
            L22_1 = L0_3
            L0_3 = 0
            L24_1 = L0_3
          else
            L0_3 = true
            L23_1 = L0_3
          end
          return
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L1_2
        L1_3 = L1_3 - L0_3
        if L1_3 <= 0 then
          L2_3 = 0
          L22_1 = L2_3
        else
          L2_3 = math
          L2_3 = L2_3.ceil
          L3_3 = L1_3 / 1000
          L2_3 = L2_3(L3_3)
          L3_3 = L2_2
          if L2_3 < L3_3 then
            L22_1 = L2_3
            L3_3 = L22_1
            if L3_3 > 0 then
              L3_3 = ExecuteCommand
              L4_3 = "prova3 "
              L5_3 = L22_1
              L6_3 = " sec."
              L4_3 = L4_3 .. L5_3 .. L6_3
              L3_3(L4_3)
            else
              L3_3 = ExecuteCommand
              L4_3 = "prova3"
              L3_3(L4_3)
            end
            L3_3 = L22_1
            if 3 ~= L3_3 then
              L3_3 = L22_1
              if 2 ~= L3_3 then
                L3_3 = L22_1
                if 1 ~= L3_3 then
                  goto lbl_82
                end
              end
            end
            L3_3 = PlaySoundFrontend
            L4_3 = -1
            L5_3 = "Enter_Area"
            L6_3 = "DLC_Lowrider_Relay_Race_Sounds"
            L7_3 = 0
            L3_3(L4_3, L5_3, L6_3, L7_3)
            ::lbl_82::
            L2_2 = L2_3
          end
        end
      end
    end
    L3_2(L4_2)
  end
end
ImpostaTimerMissione = L39_1
L39_1 = RegisterCommand
L40_1 = "VestitoGonnaIniziale"
function L41_1()
  local L0_2, L1_2
  L0_2 = VestitoGonnaIniziale
  L0_2()
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "getmyhorse"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_ridehorse
  L1_2 = L0_2
  L0_2 = L0_2.myhorse
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L1_2 = DoesEntityExist
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2 = L2_2()
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      L2_2 = vector3
      L3_2 = L1_2.x
      L3_2 = L3_2 + 1
      L4_2 = L1_2.y
      L5_2 = L1_2.z
      L5_2 = L5_2 - 1.0
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = SetEntityCoords
      L4_2 = L0_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "finetempomis"
function L41_1()
  local L0_2, L1_2
  L0_2 = 10
  L22_1 = L0_2
end
L39_1(L40_1, L41_1)
L39_1 = CreateThread
function L40_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2
  L0_2 = vector3
  L1_2 = 2.5
  L2_2 = 2.5
  L3_2 = 999.0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = vector3
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = 200
  L3_2 = "y"
  L4_2 = Wait
  L5_2 = 1500
  L4_2(L5_2)
  while true do
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = MissioneSurv
    L6_2 = 10000.0
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
    L8_2 = IsPedFatallyInjured
    L9_2 = PlayerPedId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
    if not L8_2 then
      L8_2 = L18_1
      if not L8_2 then
        L8_2 = GlobalState
        L8_2 = L8_2.SafeModeActive
        if not L8_2 then
          if -51 == L5_2 then
            L8_2 = vector3
            L9_2 = -1003.186
            L10_2 = -6934.379
            L11_2 = 6.499
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 10.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = 5.0
              L22_2 = 5.0
              L23_2 = 900.0
              L24_2 = 255
              L25_2 = 190
              L26_2 = 40
              L27_2 = 100
              L28_2 = false
              L29_2 = true
              L30_2 = 2
              L31_2 = false
              L32_2 = false
              L33_2 = false
              L34_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
            else
              L10_2 = TriggerServerEvent
              L11_2 = "tornaUmano"
              L12_2 = nil
              L13_2 = GetPlayerServerId
              L14_2 = PlayerId
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L10_2 = FreezeEntityPosition
              L11_2 = PlayerPedId
              L11_2 = L11_2()
              L12_2 = true
              L10_2(L11_2, L12_2)
              L10_2 = SetEntityVelocity
              L11_2 = PlayerPedId
              L11_2 = L11_2()
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = GetEntityCoords
              L11_2 = PlayerPedId
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2()
              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L11_2 = RequestCollisionAtCoord
              L12_2 = L10_2.x
              L13_2 = L10_2.y
              L14_2 = L10_2.z
              L11_2(L12_2, L13_2, L14_2)
              while true do
                L11_2 = HasCollisionLoadedAroundEntity
                L12_2 = PlayerPedId
                L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L12_2()
                L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                if L11_2 then
                  break
                end
                L11_2 = RequestCollisionAtCoord
                L12_2 = L10_2.x
                L13_2 = L10_2.y
                L14_2 = L10_2.z
                L11_2(L12_2, L13_2, L14_2)
                L11_2 = Wait
                L12_2 = 0
                L11_2(L12_2)
              end
              L11_2 = SetEntityCoords
              L12_2 = PlayerPedId
              L12_2 = L12_2()
              L13_2 = -1004.19
              L14_2 = -6932.016
              L15_2 = 2.5
              L11_2(L12_2, L13_2, L14_2, L15_2)
              L11_2 = SetEntityHeading
              L12_2 = PlayerPedId
              L12_2 = L12_2()
              L13_2 = 28.0
              L11_2(L12_2, L13_2)
              L11_2 = math
              L11_2 = L11_2.random
              L12_2 = 2
              L13_2 = 7
              L11_2 = L11_2(L12_2, L13_2)
              L12_2 = GetEntityModel
              L13_2 = PlayerPedId
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              if -1667301416 == L12_2 then
                L11_2 = 8
              end
              L12_2 = VestitoGonnaIniziale
              L12_2()
              sonoUnUccello = false
              L12_2 = ExecuteCommand
              L13_2 = "w casual"
              L14_2 = L11_2
              L13_2 = L13_2 .. L14_2
              L12_2(L13_2)
              L12_2 = exports
              L12_2 = L12_2.striano_editor
              L13_2 = L12_2
              L12_2 = L12_2.setcamminata
              L14_2 = "casual"
              L15_2 = L11_2
              L14_2 = L14_2 .. L15_2
              L12_2(L13_2, L14_2)
              L12_2 = TriggerEvent
              L13_2 = "SaveMySkin"
              L12_2(L13_2)
              L12_2 = TriggerServerEvent
              L13_2 = "updateNomeCognome"
              L12_2(L13_2)
              L12_2 = TriggerServerEvent
              L13_2 = "setBucketLegacy"
              L14_2 = GetPlayerServerId
              L15_2 = PlayerId
              L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L15_2()
              L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L15_2 = 0
              L12_2(L13_2, L14_2, L15_2)
              L12_2 = exports
              L12_2 = L12_2.striano_ridehorse
              L13_2 = L12_2
              L12_2 = L12_2.possoScendere
              L14_2 = true
              L12_2(L13_2, L14_2)
              L12_2 = ExecuteCommand
              L13_2 = "stopmusic"
              L12_2(L13_2)
              L12_2 = exports
              L12_2 = L12_2.striano_combat
              L13_2 = L12_2
              L12_2 = L12_2.giveAllSpellsAndEnable
              L12_2(L13_2)
              L12_2 = Wait
              L13_2 = 1000
              L12_2(L13_2)
              L12_2 = stopMusic
              L13_2 = "intro2"
              L14_2 = 5000
              L12_2(L13_2, L14_2)
              L12_2 = DelMissionBlip
              L12_2()
              L12_2 = exports
              L12_2 = L12_2.striano_combat
              L13_2 = L12_2
              L12_2 = L12_2.submex
              L14_2 = ""
              L12_2(L13_2, L14_2)
              L12_2 = exports
              L12_2 = L12_2.striano_combat
              L13_2 = L12_2
              L12_2 = L12_2.e_shareSound
              L14_2 = "sounds/striano_combat/magic/soulsteal"
              L15_2 = 0.1
              L16_2 = PlayerPedId
              L16_2 = L16_2()
              L17_2 = 3.0
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
              L12_2 = Wait
              L13_2 = 1000
              L12_2(L13_2)
              L12_2 = exports
              L12_2 = L12_2.striano_combat
              L13_2 = L12_2
              L12_2 = L12_2.EndOrbitCam_flyanimal
              L12_2(L13_2)
              L12_2 = Wait
              L13_2 = 5500
              L12_2(L13_2)
              L12_2 = GetClosestObjectOfType
              L13_2 = GetEntityCoords
              L14_2 = PlayerPedId
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L14_2 = 50.0
              L15_2 = -167376511
              L16_2 = 0
              L17_2 = 0
              L18_2 = 0
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
              if 0 ~= L12_2 then
                L13_2 = TriggerEvent
                L14_2 = "bracierePos"
                L15_2 = GetEntityCoords
                L16_2 = L12_2
                L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L15_2(L16_2)
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              end
              L13_2 = MissioneSurv
              L13_2 = L13_2 + 1
              MissioneSurv = L13_2
              L13_2 = TriggerServerEvent
              L14_2 = "esx_Pharmacy:setVarDB"
              L15_2 = "mytutorial"
              L16_2 = MissioneSurv
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = GetEntityCoords
              L14_2 = PlayerPedId
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2 = L13_2 - L8_2
              L13_2 = #L13_2
              L14_2 = 350.0
              if L13_2 < L14_2 then
                L13_2 = DoScreenFadeIn
                L14_2 = 1000
                L13_2(L14_2)
                L13_2 = ExecuteCommand
                L14_2 = "guidaBase"
                L13_2(L14_2)
                L13_2 = ExecuteCommand
                L14_2 = "prova4 The Colonial Island"
                L13_2(L14_2)
              end
              L13_2 = ExecuteCommand
              L14_2 = "e falo"
              L13_2(L14_2)
              L13_2 = Wait
              L14_2 = 5500
              L13_2(L14_2)
              L13_2 = TriggerServerEvent
              L14_2 = "inv3d:giveItem"
              L15_2 = GetPlayerServerId
              L16_2 = PlayerId
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2()
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L16_2 = "player"
              L17_2 = "survtorch"
              L18_2 = 1000
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L13_2 = Wait
              L14_2 = 1500
              L13_2(L14_2)
              L13_2 = TriggerServerEvent
              L14_2 = "inv3d:giveItem"
              L15_2 = GetPlayerServerId
              L16_2 = PlayerId
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2()
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L16_2 = "player"
              L17_2 = "eteris"
              L18_2 = 5
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L13_2 = Wait
              L14_2 = 1500
              L13_2(L14_2)
              L13_2 = TriggerServerEvent
              L14_2 = "inv3d:giveItem"
              L15_2 = GetPlayerServerId
              L16_2 = PlayerId
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2()
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L16_2 = "player"
              L17_2 = "binoculars"
              L18_2 = 1
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L13_2 = Wait
              L14_2 = 1500
              L13_2(L14_2)
              L13_2 = TriggerServerEvent
              L14_2 = "inv3d:giveItem"
              L15_2 = GetPlayerServerId
              L16_2 = PlayerId
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2()
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L16_2 = "player"
              L17_2 = "map"
              L18_2 = 1
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L13_2 = Wait
              L14_2 = 1500
              L13_2(L14_2)
              L13_2 = TriggerServerEvent
              L14_2 = "inv3d:giveItem"
              L15_2 = GetPlayerServerId
              L16_2 = PlayerId
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2()
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L16_2 = "player"
              L17_2 = "empty_bag"
              L18_2 = 1
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
              L13_2 = Wait
              L14_2 = 3000
              L13_2(L14_2)
              L13_2 = exports
              L13_2 = L13_2.striano_core
              L14_2 = L13_2
              L13_2 = L13_2.setwatermark
              L15_2 = true
              L13_2(L14_2, L15_2)
              L13_2 = ExecuteCommand
              L14_2 = "shakeoff"
              L13_2(L14_2)
              L13_2 = ExecuteCommand
              L14_2 = "hudon2"
              L13_2(L14_2)
              L13_2 = Wait
              L14_2 = 5500
              L13_2(L14_2)
              L13_2 = ExecuteCommand
              L14_2 = "ob"
              L13_2(L14_2)
            end
          elseif -50 == L5_2 then
            L8_2 = vector3
            L9_2 = 2861.878
            L10_2 = 7492.535
            L11_2 = 16.169
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 3.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.e_shareSound
              L12_2 = "sounds/striano_combat/magic/soulsteal"
              L13_2 = 0.1
              L14_2 = PlayerPedId
              L14_2 = L14_2()
              L15_2 = 3.0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = TriggerServerEvent
              L11_2 = "inv3d:giveItem"
              L12_2 = GetPlayerServerId
              L13_2 = PlayerId
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2 = "player"
              L14_2 = "moneta"
              L15_2 = 55
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = Wait
              L11_2 = 1500
              L10_2(L11_2)
              L10_2 = TriggerServerEvent
              L11_2 = "inv3d:giveItem"
              L12_2 = GetPlayerServerId
              L13_2 = PlayerId
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2 = "player"
              L14_2 = "wood"
              L15_2 = 5
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = Wait
              L11_2 = 1500
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "guidaBase"
              L10_2(L11_2)
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Falling_Crates"
              L13_2 = "EXILE_1"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = MissioneSurv
              L10_2 = L10_2 + 1
              MissioneSurv = L10_2
              L10_2 = TriggerServerEvent
              L11_2 = "esx_Pharmacy:setVarDB"
              L12_2 = "mytutorial"
              L13_2 = MissioneSurv
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = Wait
              L11_2 = 1500
              L10_2(L11_2)
              L10_2 = "sounds/striano_combat/magic/risata2.mp3"
              L11_2 = exports
              L11_2 = L11_2.xsound
              L12_2 = L11_2
              L11_2 = L11_2.PlayUrl
              L13_2 = "risata2"
              L14_2 = L10_2
              L15_2 = exports
              L15_2 = L15_2.striano_combat
              L16_2 = L15_2
              L15_2 = L15_2.GetSFXVolume
              L17_2 = 0.3
              L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L15_2(L16_2, L17_2)
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L11_2 = Wait
              L12_2 = 3500
              L11_2(L12_2)
              L11_2 = ExecuteCommand
              L12_2 = "ob"
              L11_2(L12_2)
            end
          elseif -49 == L5_2 then
            L8_2 = vector3
            L9_2 = 2878.691
            L10_2 = 7500.095
            L11_2 = 19.402
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 5.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.e_shareSound
              L12_2 = "sounds/striano_combat/magic/soulsteal"
              L13_2 = 0.1
              L14_2 = PlayerPedId
              L14_2 = L14_2()
              L15_2 = 3.0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = exports
              L10_2 = L10_2.text_guide
              L11_2 = L10_2
              L10_2 = L10_2.GuidaVisibileNV
              L10_2(L11_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submexInfo
              L12_2 = "Here you can manage your Outfits."
              L10_2(L11_2, L12_2)
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Falling_Crates"
              L13_2 = "EXILE_1"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = MissioneSurv
              L10_2 = L10_2 + 1
              MissioneSurv = L10_2
              L10_2 = TriggerServerEvent
              L11_2 = "esx_Pharmacy:setVarDB"
              L12_2 = "mytutorial"
              L13_2 = MissioneSurv
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = Wait
              L11_2 = 2500
              L10_2(L11_2)
              L10_2 = TriggerServerEvent
              L11_2 = "inv3d:giveItem"
              L12_2 = GetPlayerServerId
              L13_2 = PlayerId
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2 = "player"
              L14_2 = "steel"
              L15_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = Wait
              L11_2 = 5500
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "ob"
              L10_2(L11_2)
            end
          elseif -48 == L5_2 then
            L8_2 = vector3
            L9_2 = 3353.115
            L10_2 = 7373.699
            L11_2 = 6.804
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 5.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.e_shareSound
              L12_2 = "sounds/striano_combat/magic/soulsteal"
              L13_2 = 0.1
              L14_2 = PlayerPedId
              L14_2 = L14_2()
              L15_2 = 3.0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = exports
              L10_2 = L10_2.text_guide
              L11_2 = L10_2
              L10_2 = L10_2.GuidaVisibileNV
              L10_2(L11_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submexInfo
              L12_2 = "Welcome to the Colonial House, here you can rest, trade objects and meet new survivors for expeditions."
              L10_2(L11_2, L12_2)
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Falling_Crates"
              L13_2 = "EXILE_1"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = MissioneSurv
              L10_2 = L10_2 + 1
              MissioneSurv = L10_2
              L10_2 = TriggerServerEvent
              L11_2 = "esx_Pharmacy:setVarDB"
              L12_2 = "mytutorial"
              L13_2 = MissioneSurv
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = Wait
              L11_2 = 5500
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "ob"
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "prova3 Use the command ~y~/ob ~w~to know next mission coords."
              L10_2(L11_2)
            end
          elseif -47 == L5_2 then
            L8_2 = vector3
            L9_2 = 3084.219
            L10_2 = 7485.972
            L11_2 = 18.897
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 5.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.e_shareSound
              L12_2 = "sounds/striano_combat/magic/soulsteal"
              L13_2 = 0.1
              L14_2 = PlayerPedId
              L14_2 = L14_2()
              L15_2 = 3.0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = exports
              L10_2 = L10_2.text_guide
              L11_2 = L10_2
              L10_2 = L10_2.GuidaVisibileNV
              L10_2(L11_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submexInfo
              L12_2 = "Around world you can find Craft Spot to create new objects."
              L10_2(L11_2, L12_2)
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Falling_Crates"
              L13_2 = "EXILE_1"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = MissioneSurv
              L10_2 = L10_2 + 1
              MissioneSurv = L10_2
              L10_2 = TriggerServerEvent
              L11_2 = "esx_Pharmacy:setVarDB"
              L12_2 = "mytutorial"
              L13_2 = MissioneSurv
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = Wait
              L11_2 = 5500
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "ob"
              L10_2(L11_2)
            end
          elseif -46 == L5_2 then
            L8_2 = vector3
            L9_2 = 3550.316
            L10_2 = 7157.035
            L11_2 = 10.744
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 3.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.e_shareSound
              L12_2 = "sounds/striano_combat/magic/soulsteal"
              L13_2 = 0.1
              L14_2 = PlayerPedId
              L14_2 = L14_2()
              L15_2 = 3.0
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
              L10_2 = exports
              L10_2 = L10_2.text_guide
              L11_2 = L10_2
              L10_2 = L10_2.GuidaVisibileNV
              L10_2(L11_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submexInfo
              L12_2 = "Here it's like an Import, store your objects or trade."
              L10_2(L11_2, L12_2)
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Falling_Crates"
              L13_2 = "EXILE_1"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = MissioneSurv
              L10_2 = L10_2 + 1
              MissioneSurv = L10_2
              L10_2 = TriggerServerEvent
              L11_2 = "esx_Pharmacy:setVarDB"
              L12_2 = "mytutorial"
              L13_2 = MissioneSurv
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = Wait
              L11_2 = 5500
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "ob"
              L10_2(L11_2)
            end
          elseif -45 == L5_2 then
            L8_2 = vector3
            L9_2 = 3166.3
            L10_2 = 7496.395
            L11_2 = 20.402
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = 1.5
            L10_2 = L7_2 - L8_2
            L10_2 = #L10_2
            if L9_2 <= L10_2 then
              L10_2 = DrawMarker
              L11_2 = 1
              L12_2 = L8_2.x
              L13_2 = L8_2.y
              L14_2 = L8_2.z
              L14_2 = L14_2 - 1.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = vector3
              L22_2 = L9_2
              L23_2 = L9_2
              L24_2 = 900.0
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L22_2 = L1_2
              L23_2 = L2_2
              L24_2 = false
              L25_2 = true
              L26_2 = 2
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L30_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
            else
              L10_2 = exports
              L10_2 = L10_2.striano_inventory
              L11_2 = L10_2
              L10_2 = L10_2.HasItem
              L12_2 = "bush"
              L13_2 = 10
              L14_2 = "player"
              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
              if L10_2 then
                L10_2 = DrawText3D
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L14_2 = "~y~~h~E ~h~~w~Delivery x10 Bush"
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = IsControlJustPressed
                L11_2 = 0
                L12_2 = 38
                L10_2 = L10_2(L11_2, L12_2)
                if not L10_2 then
                  L10_2 = IsDisabledControlJustPressed
                  L11_2 = 0
                  L12_2 = 38
                  L10_2 = L10_2(L11_2, L12_2)
                end
                if L10_2 then
                  L10_2 = ExecuteCommand
                  L11_2 = "e dai"
                  L10_2(L11_2)
                  L10_2 = Wait
                  L11_2 = 1500
                  L10_2(L11_2)
                  L10_2 = DelMissionBlip
                  L10_2()
                  L10_2 = exports
                  L10_2 = L10_2.striano_combat
                  L11_2 = L10_2
                  L10_2 = L10_2.submex
                  L12_2 = ""
                  L10_2(L11_2, L12_2)
                  L10_2 = exports
                  L10_2 = L10_2.striano_combat
                  L11_2 = L10_2
                  L10_2 = L10_2.e_shareSound
                  L12_2 = "sounds/striano_combat/magic/soulsteal"
                  L13_2 = 0.1
                  L14_2 = PlayerPedId
                  L14_2 = L14_2()
                  L15_2 = 3.0
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                  L10_2 = exports
                  L10_2 = L10_2.text_guide
                  L11_2 = L10_2
                  L10_2 = L10_2.GuidaVisibileNV
                  L10_2(L11_2)
                  L10_2 = PlaySoundFrontend
                  L11_2 = -1
                  L12_2 = "Falling_Crates"
                  L13_2 = "EXILE_1"
                  L14_2 = 1
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                  L10_2 = MissioneSurv
                  L10_2 = L10_2 + 1
                  MissioneSurv = L10_2
                  L10_2 = TriggerServerEvent
                  L11_2 = "esx_Pharmacy:setVarDB"
                  L12_2 = "mytutorial"
                  L13_2 = MissioneSurv
                  L10_2(L11_2, L12_2, L13_2)
                  L10_2 = Wait
                  L11_2 = 1500
                  L10_2(L11_2)
                  L10_2 = TriggerServerEvent
                  L11_2 = "inv3d:giveItem"
                  L12_2 = GetPlayerServerId
                  L13_2 = PlayerId
                  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                  L13_2 = "player"
                  L14_2 = "melee_weapon"
                  L15_2 = 61
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                  L10_2 = Wait
                  L11_2 = 5500
                  L10_2(L11_2)
                  L10_2 = ExecuteCommand
                  L11_2 = "ob"
                  L10_2(L11_2)
                end
              else
                L10_2 = DrawText3D
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L14_2 = "I need 10 pieces of bush..."
                L10_2(L11_2, L12_2, L13_2, L14_2)
              end
            end
          elseif -44 == L5_2 then
            L8_2 = vector3
            L9_2 = 3773.221
            L10_2 = 7266.24
            L11_2 = 6.977
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 >= L10_2 then
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L8_2.x
              L12_2 = L8_2.y
              L13_2 = L8_2.z
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = vector3
              L21_2 = L0_2.x
              L21_2 = L21_2 / 2
              L22_2 = L0_2.y
              L22_2 = L22_2 / 2
              L23_2 = L0_2.z
              L20_2 = L20_2(L21_2, L22_2, L23_2)
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = false
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            end
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 < L10_2 then
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.5
              if L9_2 < L10_2 then
                L10_2 = MissioneSurv
                L10_2 = L10_2 + 1
                MissioneSurv = L10_2
                L10_2 = TriggerServerEvent
                L11_2 = "esx_Pharmacy:setVarDB"
                L12_2 = "mytutorial"
                L13_2 = MissioneSurv
                L10_2(L11_2, L12_2, L13_2)
                L10_2 = TriggerEvent
                L11_2 = "StartCinematica"
                L12_2 = vec3
                L13_2 = 3781.481
                L14_2 = 7264.816
                L15_2 = 13.991
                L12_2 = L12_2(L13_2, L14_2, L15_2)
                L13_2 = vec3
                L14_2 = 3786.261
                L15_2 = 7264.307
                L16_2 = 34.339
                L13_2 = L13_2(L14_2, L15_2, L16_2)
                L14_2 = vec3
                L15_2 = 3790.912
                L16_2 = 7263.75
                L17_2 = 68.949
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                L15_2 = vec3
                L16_2 = 3830.412
                L17_2 = 7258.971
                L18_2 = 43.412
                L15_2 = L15_2(L16_2, L17_2, L18_2)
                L16_2 = 10000
                L17_2 = "Kh\240\159\156\129rura Arena"
                L18_2 = ""
                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                L10_2 = PlaySoundFrontend
                L11_2 = -1
                L12_2 = "Falling_Crates"
                L13_2 = "EXILE_1"
                L14_2 = 1
                L10_2(L11_2, L12_2, L13_2, L14_2)
              end
            end
          elseif -43 == L5_2 then
            L8_2 = vector3
            L9_2 = 3106.68
            L10_2 = 7249.831
            L11_2 = 14.621
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 >= L10_2 then
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L8_2.x
              L12_2 = L8_2.y
              L13_2 = L8_2.z
              L13_2 = L13_2 - 1.0
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = vector3
              L21_2 = L0_2.x
              L21_2 = L21_2 / 2
              L22_2 = L0_2.y
              L22_2 = L22_2 / 2
              L23_2 = L0_2.z
              L20_2 = L20_2(L21_2, L22_2, L23_2)
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = false
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            end
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 < L10_2 then
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.5
              if L9_2 < L10_2 then
                L10_2 = DelMissionBlip
                L10_2()
                L10_2 = exports
                L10_2 = L10_2.text_guide
                L11_2 = L10_2
                L10_2 = L10_2.GuidaNascondi
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submexType
                L12_2 = "Dojo are sacred place to learn new moves and fight."
                L10_2(L11_2, L12_2)
                L10_2 = Wait
                L11_2 = 5000
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submex
                L12_2 = ""
                L10_2(L11_2, L12_2)
                L10_2 = PlaySoundFrontend
                L11_2 = -1
                L12_2 = "Falling_Crates"
                L13_2 = "EXILE_1"
                L14_2 = 1
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = MissioneSurv
                L10_2 = L10_2 + 1
                MissioneSurv = L10_2
                L10_2 = TriggerServerEvent
                L11_2 = "esx_Pharmacy:setVarDB"
                L12_2 = "mytutorial"
                L13_2 = MissioneSurv
                L10_2(L11_2, L12_2, L13_2)
                L10_2 = Wait
                L11_2 = 5500
                L10_2(L11_2)
                L10_2 = ExecuteCommand
                L11_2 = "ob"
                L10_2(L11_2)
              end
            end
          elseif -42 == L5_2 then
            L8_2 = vector3
            L9_2 = 3066.804
            L10_2 = 7472.539
            L11_2 = 19.524
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            if L9_2 >= 2.0 then
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L8_2.x
              L12_2 = L8_2.y
              L13_2 = L8_2.z
              L13_2 = L13_2 - 1.0
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = L0_2
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = false
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            end
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            if L9_2 < 2.0 then
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.5
              if L9_2 < L10_2 then
                L10_2 = FreezeEntityPosition
                L11_2 = L4_2
                L12_2 = true
                L10_2(L11_2, L12_2)
                L10_2 = DelMissionBlip
                L10_2()
                L10_2 = ExecuteCommand
                L11_2 = "guidaBase"
                L10_2(L11_2)
                L10_2 = ExecuteCommand
                L11_2 = "e injured"
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submexInfo
                L12_2 = "Here you can heal your hematomes, if you need clear blood you need Wash yourself."
                L10_2(L11_2, L12_2)
                L10_2 = Wait
                L11_2 = 5000
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submex
                L12_2 = ""
                L10_2(L11_2, L12_2)
                L10_2 = exports
                L10_2 = L10_2.striano_editor
                L11_2 = L10_2
                L10_2 = L10_2.ResettaFerite
                L10_2(L11_2)
                L10_2 = ExecuteCommand
                L11_2 = "shakeoff"
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submexInfo
                L12_2 = ""
                L10_2(L11_2, L12_2)
                L10_2 = PlaySoundFrontend
                L11_2 = -1
                L12_2 = "Falling_Crates"
                L13_2 = "EXILE_1"
                L14_2 = 1
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = TriggerEvent
                L11_2 = "CaricamiCamminata"
                L10_2(L11_2)
                L10_2 = Wait
                L11_2 = 3000
                L10_2(L11_2)
                L10_2 = FreezeEntityPosition
                L11_2 = L4_2
                L12_2 = false
                L10_2(L11_2, L12_2)
                L10_2 = MissioneSurv
                L10_2 = L10_2 + 1
                MissioneSurv = L10_2
                L10_2 = TriggerServerEvent
                L11_2 = "esx_Pharmacy:setVarDB"
                L12_2 = "mytutorial"
                L13_2 = MissioneSurv
                L10_2(L11_2, L12_2, L13_2)
                L10_2 = Wait
                L11_2 = 5500
                L10_2(L11_2)
                L10_2 = ExecuteCommand
                L11_2 = "ob"
                L10_2(L11_2)
              end
            end
          elseif -41 == L5_2 then
            L8_2 = vector3
            L9_2 = 3155.623
            L10_2 = 7497.62
            L11_2 = 20.402
            L8_2 = L8_2(L9_2, L10_2, L11_2)
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 >= L10_2 then
              L9_2 = DrawMarker
              L10_2 = 1
              L11_2 = L8_2.x
              L12_2 = L8_2.y
              L13_2 = L8_2.z
              L13_2 = L13_2 - 1.0
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 0.0
              L17_2 = 0
              L18_2 = 0.0
              L19_2 = 0.0
              L20_2 = L0_2
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = false
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
            end
            L9_2 = L7_2 - L8_2
            L9_2 = #L9_2
            L10_2 = 1.5
            if L9_2 < L10_2 then
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.5
              if L9_2 < L10_2 then
                L10_2 = exports
                L10_2 = L10_2.text_guide
                L11_2 = L10_2
                L10_2 = L10_2.GuidaNascondi
                L10_2(L11_2)
                L10_2 = exports
                L10_2 = L10_2.striano_combat
                L11_2 = L10_2
                L10_2 = L10_2.submexInfo
                L12_2 = "You can rent a rideable animal to move around isles."
                L10_2(L11_2, L12_2)
                L10_2 = TriggerServerEvent
                L11_2 = "inv3d:giveItem"
                L12_2 = GetPlayerServerId
                L13_2 = PlayerId
                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L13_2 = "player"
                L14_2 = "moneta"
                L15_2 = 55
                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                L10_2 = DelMissionBlip
                L10_2()
                L10_2 = PlaySoundFrontend
                L11_2 = -1
                L12_2 = "Falling_Crates"
                L13_2 = "EXILE_1"
                L14_2 = 1
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = Wait
                L11_2 = 2000
                L10_2(L11_2)
                L10_2 = MissioneSurv
                L10_2 = L10_2 + 1
                MissioneSurv = L10_2
                L10_2 = TriggerServerEvent
                L11_2 = "esx_Pharmacy:setVarDB"
                L12_2 = "mytutorial"
                L13_2 = MissioneSurv
                L10_2(L11_2, L12_2, L13_2)
              end
            end
          elseif -40 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = vector3
              L9_2 = 3365.827
              L10_2 = 7361.697
              L11_2 = 8.18
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = DrawMarker
                L10_2 = 1
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L13_2 = L13_2 - 1.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = L0_2
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = false
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.5
                if L9_2 < L10_2 then
                  L10_2 = exports
                  L10_2 = L10_2.text_guide
                  L11_2 = L10_2
                  L10_2 = L10_2.ClearGuideText
                  L10_2(L11_2)
                  L10_2 = exports
                  L10_2 = L10_2.text_guide
                  L11_2 = L10_2
                  L10_2 = L10_2.GuidaNascondi
                  L10_2(L11_2)
                  L10_2 = exports
                  L10_2 = L10_2.striano_combat
                  L11_2 = L10_2
                  L10_2 = L10_2.submexType
                  L12_2 = "You are lucky, your first mission is to take a check of a zone."
                  L10_2(L11_2, L12_2)
                  L10_2 = exports
                  L10_2 = L10_2.striano_ridehorse
                  L11_2 = L10_2
                  L10_2 = L10_2.ShowInstructionalButtonsTimed
                  L12_2 = "~h~Equip melee weapon for you security."
                  L13_2 = {}
                  L14_2 = 25
                  L15_2 = 45
                  L13_2[1] = L14_2
                  L13_2[2] = L15_2
                  L10_2(L11_2, L12_2, L13_2)
                  L10_2 = CreateMissionBlip
                  L11_2 = vector3
                  L12_2 = 3407.073
                  L13_2 = 7303.967
                  L14_2 = 0.662
                  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                  L32_1 = L10_2
                  L10_2 = L24_1
                  L10_2 = L10_2 + 1
                  L24_1 = L10_2
                  L10_2 = PlaySoundFrontend
                  L11_2 = -1
                  L12_2 = "Pre_Screen_Stinger"
                  L13_2 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                  L14_2 = 0
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                  L10_2 = Wait
                  L11_2 = 7500
                  L10_2(L11_2)
                  L10_2 = exports
                  L10_2 = L10_2.striano_ridehorse
                  L11_2 = L10_2
                  L10_2 = L10_2.ShowInstructionalButtonsTimed
                  L12_2 = "~h~To defence from attacks."
                  L13_2 = {}
                  L14_2 = 25
                  L13_2[1] = L14_2
                  L10_2(L11_2, L12_2, L13_2)
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = vector3
                L9_2 = 3407.073
                L10_2 = 7303.967
                L11_2 = 1.662
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 2.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 < 2.0 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 1.5
                  if L9_2 < L10_2 then
                    L10_2 = exports
                    L10_2 = L10_2.striano_combat
                    L11_2 = L10_2
                    L10_2 = L10_2.submexType
                    L12_2 = "The movements comes from bushes. Go on for a check of area."
                    L10_2(L11_2, L12_2)
                    L10_2 = CreateMissionBlip
                    L11_2 = vector3
                    L12_2 = 3418.084
                    L13_2 = 7291.344
                    L14_2 = 1.003
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L32_1 = L10_2
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Pre_Screen_Stinger"
                    L13_2 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                    L14_2 = 0
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                  end
                end
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = vector3
                  L9_2 = 3418.084
                  L10_2 = 7291.344
                  L11_2 = 2.003
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 2.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 < 2.0 then
                    L9_2 = exports
                    L9_2 = L9_2.text_guide
                    L10_2 = L9_2
                    L9_2 = L9_2.GuidaNascondi
                    L9_2(L10_2)
                    L9_2 = exports
                    L9_2 = L9_2.striano_combat
                    L10_2 = L9_2
                    L9_2 = L9_2.submex
                    L11_2 = "Strange sounds comes from bush?"
                    L9_2(L10_2, L11_2)
                    L9_2 = PlaySoundFrontend
                    L10_2 = -1
                    L11_2 = "Pre_Screen_Stinger"
                    L12_2 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                    L13_2 = 0
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                    L9_2 = L24_1
                    L9_2 = L9_2 + 1
                    L24_1 = L9_2
                    L9_2 = exports
                    L9_2 = L9_2.striano_combat
                    L10_2 = L9_2
                    L9_2 = L9_2.scav2
                    L11_2 = vector3
                    L12_2 = 3402.351
                    L13_2 = 7287.415
                    L14_2 = 0.856
                    L11_2 = L11_2(L12_2, L13_2, L14_2)
                    L12_2 = false
                    L13_2 = "a_m_m_rurmeth_01"
                    L14_2 = 120
                    L15_2 = 1
                    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                    L10_2 = table
                    L10_2 = L10_2.insert
                    L11_2 = L25_1
                    L12_2 = L9_2
                    L10_2(L11_2, L12_2)
                    L10_2 = Wait
                    L11_2 = 500
                    L10_2(L11_2)
                    L10_2 = exports
                    L10_2 = L10_2.striano_combat
                    L11_2 = L10_2
                    L10_2 = L10_2.scav2
                    L12_2 = vector3
                    L13_2 = 3402.351
                    L14_2 = 7287.415
                    L15_2 = 0.856
                    L12_2 = L12_2(L13_2, L14_2, L15_2)
                    L13_2 = false
                    L14_2 = "a_m_m_rurmeth_01"
                    L15_2 = 130
                    L16_2 = 2
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                    L11_2 = table
                    L11_2 = L11_2.insert
                    L12_2 = L25_1
                    L13_2 = L10_2
                    L11_2(L12_2, L13_2)
                    L11_2 = Wait
                    L12_2 = 500
                    L11_2(L12_2)
                  end
                else
                  L8_2 = L24_1
                  if 3 == L8_2 then
                    L8_2 = true
                    L9_2 = 1
                    L10_2 = L25_1
                    L10_2 = #L10_2
                    L11_2 = 1
                    for L12_2 = L9_2, L10_2, L11_2 do
                      L13_2 = DoesEntityExist
                      L14_2 = L25_1
                      L14_2 = L14_2[L12_2]
                      L13_2 = L13_2(L14_2)
                      if L13_2 then
                        L8_2 = false
                      end
                    end
                    L9_2 = Wait
                    L10_2 = 1000
                    L9_2(L10_2)
                    if L8_2 then
                      L9_2 = {}
                      L25_1 = L9_2
                      L9_2 = L24_1
                      L9_2 = L9_2 + 1
                      L24_1 = L9_2
                    end
                    L9_2 = Wait
                    L10_2 = 1000
                    L9_2(L10_2)
                  else
                    L8_2 = L24_1
                    if 4 == L8_2 then
                      L8_2 = AnnullaIncaricoSub
                      L8_2()
                      L8_2 = PlaySoundFrontend
                      L9_2 = -1
                      L10_2 = "Falling_Crates"
                      L11_2 = "EXILE_1"
                      L12_2 = 1
                      L8_2(L9_2, L10_2, L11_2, L12_2)
                      L8_2 = MissioneSurv
                      L8_2 = L8_2 + 1
                      MissioneSurv = L8_2
                      L8_2 = TriggerServerEvent
                      L9_2 = "esx_Pharmacy:setVarDB"
                      L10_2 = "mytutorial"
                      L11_2 = MissioneSurv
                      L8_2(L9_2, L10_2, L11_2)
                      L8_2 = exports
                      L8_2 = L8_2.striano_combat
                      L9_2 = L8_2
                      L8_2 = L8_2.submexType
                      L10_2 = "Great job, you kill the enemys."
                      L8_2(L9_2, L10_2)
                      L8_2 = ExecuteCommand
                      L9_2 = "guidaBase"
                      L8_2(L9_2)
                      L8_2 = ExecuteCommand
                      L9_2 = "shakeoff"
                      L8_2(L9_2)
                      L8_2 = DelMissionBlip
                      L8_2()
                      L8_2 = Wait
                      L9_2 = 2000
                      L8_2(L9_2)
                      L8_2 = TriggerServerEvent
                      L9_2 = "inv3d:giveItem"
                      L10_2 = GetPlayerServerId
                      L11_2 = PlayerId
                      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2()
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L11_2 = "player"
                      L12_2 = "moneta"
                      L13_2 = 250
                      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                      L8_2 = Wait
                      L9_2 = 1000
                      L8_2(L9_2)
                      L8_2 = TriggerServerEvent
                      L9_2 = "inv3d:giveItem"
                      L10_2 = GetPlayerServerId
                      L11_2 = PlayerId
                      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2()
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L11_2 = "player"
                      L12_2 = "fert"
                      L13_2 = 1
                      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                      L8_2 = Wait
                      L9_2 = 5000
                      L8_2(L9_2)
                      L8_2 = ExecuteCommand
                      L9_2 = "ob"
                      L8_2(L9_2)
                    end
                  end
                end
              end
            end
          elseif -39 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = IsPedHuman
              L9_2 = L4_2
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L8_2 = vector3
                L9_2 = 3083.188
                L10_2 = 7552.769
                L11_2 = 3.787
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 1.2
                  if L9_2 < L10_2 then
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Zone_Neutral"
                    L13_2 = "DLC_Apartments_Drop_Zone_Sounds"
                    L14_2 = 0
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = exports
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = exports
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaVisibileNV
                    L10_2(L11_2)
                    L10_2 = exports
                    L10_2 = L10_2.striano_combat
                    L11_2 = L10_2
                    L10_2 = L10_2.submexType
                    L12_2 = "My son Erik hasn't come home for 2 days, please go check."
                    L10_2(L11_2, L12_2)
                    L10_2 = CreateMissionBlip
                    L11_2 = vector3
                    L12_2 = 3081.634
                    L13_2 = 7569.907
                    L14_2 = -1.269
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L32_1 = L10_2
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "1st_Person_Transition"
                    L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                    L14_2 = 1
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = Wait
                    L11_2 = 25
                    L10_2(L11_2)
                    L10_2 = ExecuteCommand
                    L11_2 = "pointingstop"
                    L10_2(L11_2)
                    L10_2 = Wait
                    L11_2 = 25
                    L10_2(L11_2)
                    L10_2 = ExecuteCommand
                    L11_2 = "e think5"
                    L10_2(L11_2)
                  end
                end
            end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = vector3
                L9_2 = 3081.634
                L10_2 = 7569.907
                L11_2 = -0.2689999999999999
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 3.5
                if L9_2 >= L10_2 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 3.5
                if L9_2 < L10_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 3.5
                  if L9_2 < L10_2 then
                    L10_2 = IsPedHuman
                    L11_2 = L4_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      L10_2 = L24_1
                      L10_2 = L10_2 + 1
                      L24_1 = L10_2
                      L10_2 = TriggerServerCallback
                      L11_2 = "garage:fetchPlayerVehicles"
                      function L12_2(A0_3)
                        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
                        L1_3 = {}
                        L2_3 = false
                        if A0_3 then
                          L3_3 = #A0_3
                          if L3_3 > 0 then
                            L3_3 = ipairs
                            L4_3 = A0_3
                            L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
                            for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
                              L9_3 = L8_3.props
                              if L9_3 then
                                L10_3 = tonumber
                                L11_3 = L9_3.model
                                L10_3 = L10_3(L11_3)
                                L11_3 = GetHashKey
                                L12_3 = "seashark"
                                L11_3 = L11_3(L12_3)
                                if L10_3 == L11_3 then
                                  L1_3 = L9_3
                                  L2_3 = true
                                  break
                                end
                              end
                            end
                          end
                        end
                        if not L2_3 then
                          L3_3 = TriggerServerEvent
                          L4_3 = "sod:giveVeh"
                          L5_3 = GetPlayerServerId
                          L6_3 = PlayerId
                          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
                          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                          L6_3 = "seashark"
                          L3_3(L4_3, L5_3, L6_3)
                          L3_3 = exports
                          L3_3 = L3_3.striano_combat
                          L4_3 = L3_3
                          L3_3 = L3_3.testo3d
                          L5_3 = "Veh list: ~h~/garage"
                          L3_3(L4_3, L5_3)
                        else
                          L3_3 = L1_3.plate
                          L4_3 = TriggerEvent
                          L5_3 = "sod:spawnVeh"
                          L6_3 = L1_3
                          L7_3 = L1_3.fuelLevel
                          L8_3 = GetEntityCoords
                          L9_3 = L4_2
                          L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                        end
                      end
                      L10_2(L11_2, L12_2)
                      L10_2 = exports
                      L10_2 = L10_2.striano_combat
                      L11_2 = L10_2
                      L10_2 = L10_2.submexType
                      L12_2 = "Go to the checkpoint where was the meet of Erik. Community gift you a vehicle."
                      L10_2(L11_2, L12_2)
                      L10_2 = CreateMissionBlip
                      L11_2 = vector3
                      L12_2 = 2731.795
                      L13_2 = 7849.252
                      L14_2 = 1.823
                      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L32_1 = L10_2
                      L10_2 = PlaySoundFrontend
                      L11_2 = -1
                      L12_2 = "1st_Person_Transition"
                      L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                      L14_2 = 1
                      L10_2(L11_2, L12_2, L13_2, L14_2)
                    end
                  end
                end
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = vector3
                  L9_2 = 2731.795
                  L10_2 = 7849.252
                  L11_2 = 2.823
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 3.5
                  if L9_2 >= L10_2 then
                    L9_2 = L25_1
                    L9_2 = #L9_2
                    if 0 == L9_2 then
                      L9_2 = DrawMarker
                      L10_2 = 1
                      L11_2 = L8_2.x
                      L12_2 = L8_2.y
                      L13_2 = L8_2.z
                      L13_2 = L13_2 - 1.0
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = 0.0
                      L17_2 = 0
                      L18_2 = 0.0
                      L19_2 = 0.0
                      L20_2 = L0_2
                      L21_2 = L1_2
                      L22_2 = L2_2
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = false
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    end
                  end
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 3.5
                  if L9_2 < L10_2 then
                    L9_2 = L25_1
                    L9_2 = #L9_2
                    if 0 == L9_2 then
                      L9_2 = ExecuteCommand
                      L10_2 = "e inciampa"
                      L9_2(L10_2)
                      L9_2 = exports
                      L9_2 = L9_2.text_guide
                      L10_2 = L9_2
                      L9_2 = L9_2.ClearGuideText
                      L9_2(L10_2)
                      L9_2 = exports
                      L9_2 = L9_2.text_guide
                      L10_2 = L9_2
                      L9_2 = L9_2.GuidaVisibileNV
                      L9_2(L10_2)
                      L9_2 = exports
                      L9_2 = L9_2.striano_combat
                      L10_2 = L9_2
                      L9_2 = L9_2.scav2
                      L11_2 = vector3
                      L12_2 = 2740.159
                      L13_2 = 7851.572
                      L14_2 = 2.682
                      L11_2 = L11_2(L12_2, L13_2, L14_2)
                      L12_2 = false
                      L13_2 = "a_m_m_rurmeth_01"
                      L14_2 = 120
                      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                      L10_2 = table
                      L10_2 = L10_2.insert
                      L11_2 = L25_1
                      L12_2 = L9_2
                      L10_2(L11_2, L12_2)
                      L10_2 = Wait
                      L11_2 = 500
                      L10_2(L11_2)
                      L10_2 = exports
                      L10_2 = L10_2.striano_combat
                      L11_2 = L10_2
                      L10_2 = L10_2.scav2
                      L12_2 = vector3
                      L13_2 = 2740.159
                      L14_2 = 7851.572
                      L15_2 = 2.682
                      L12_2 = L12_2(L13_2, L14_2, L15_2)
                      L13_2 = false
                      L14_2 = "a_m_m_rurmeth_01"
                      L15_2 = 130
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                      L11_2 = table
                      L11_2 = L11_2.insert
                      L12_2 = L25_1
                      L13_2 = L10_2
                      L11_2(L12_2, L13_2)
                      L11_2 = Wait
                      L12_2 = 500
                      L11_2(L12_2)
                      L11_2 = exports
                      L11_2 = L11_2.striano_combat
                      L12_2 = L11_2
                      L11_2 = L11_2.scav2
                      L13_2 = vector3
                      L14_2 = 2740.159
                      L15_2 = 7851.572
                      L16_2 = 2.682
                      L13_2 = L13_2(L14_2, L15_2, L16_2)
                      L14_2 = false
                      L15_2 = "a_m_m_rurmeth_01"
                      L16_2 = 120
                      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                      L12_2 = table
                      L12_2 = L12_2.insert
                      L13_2 = L25_1
                      L14_2 = L11_2
                      L12_2(L13_2, L14_2)
                      L12_2 = Wait
                      L13_2 = 500
                      L12_2(L13_2)
                      L12_2 = exports
                      L12_2 = L12_2.striano_combat
                      L13_2 = L12_2
                      L12_2 = L12_2.scav2
                      L14_2 = vector3
                      L15_2 = 2740.159
                      L16_2 = 7851.572
                      L17_2 = 2.682
                      L14_2 = L14_2(L15_2, L16_2, L17_2)
                      L15_2 = false
                      L16_2 = "a_m_m_rurmeth_01"
                      L17_2 = 130
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                      L13_2 = table
                      L13_2 = L13_2.insert
                      L14_2 = L25_1
                      L15_2 = L12_2
                      L13_2(L14_2, L15_2)
                      L13_2 = Wait
                      L14_2 = 500
                      L13_2(L14_2)
                      L13_2 = exports
                      L13_2 = L13_2.striano_combat
                      L14_2 = L13_2
                      L13_2 = L13_2.scav2
                      L15_2 = vector3
                      L16_2 = 2740.159
                      L17_2 = 7851.572
                      L18_2 = 2.682
                      L15_2 = L15_2(L16_2, L17_2, L18_2)
                      L16_2 = false
                      L17_2 = "a_m_m_rurmeth_01"
                      L18_2 = 150
                      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
                      L14_2 = table
                      L14_2 = L14_2.insert
                      L15_2 = L25_1
                      L16_2 = L13_2
                      L14_2(L15_2, L16_2)
                      L14_2 = Wait
                      L15_2 = 500
                      L14_2(L15_2)
                      L14_2 = Wait
                      L15_2 = 7000
                      L14_2(L15_2)
                    end
                  end
                  L9_2 = L25_1
                  L9_2 = #L9_2
                  if L9_2 > 0 then
                    L9_2 = true
                    L10_2 = 1
                    L11_2 = L25_1
                    L11_2 = #L11_2
                    L12_2 = 1
                    for L13_2 = L10_2, L11_2, L12_2 do
                      L14_2 = DoesEntityExist
                      L15_2 = L25_1
                      L15_2 = L15_2[L13_2]
                      L14_2 = L14_2(L15_2)
                      if L14_2 then
                        L14_2 = IsPedFatallyInjured
                        L15_2 = L25_1
                        L15_2 = L15_2[L13_2]
                        L14_2 = L14_2(L15_2)
                        if not L14_2 then
                          L9_2 = false
                        end
                      end
                    end
                    L10_2 = Wait
                    L11_2 = 1000
                    L10_2(L11_2)
                    if L9_2 then
                      L10_2 = CreateMissionBlip
                      L11_2 = vector3
                      L12_2 = -537.918
                      L13_2 = 5684.794
                      L14_2 = 33.382
                      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L32_1 = L10_2
                      L10_2 = PlaySoundFrontend
                      L11_2 = -1
                      L12_2 = "1st_Person_Transition"
                      L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                      L14_2 = 1
                      L10_2(L11_2, L12_2, L13_2, L14_2)
                      L10_2 = exports
                      L10_2 = L10_2.striano_combat
                      L11_2 = L10_2
                      L10_2 = L10_2.submexType
                      L12_2 = "You kill all the enemis, but Erik is not here."
                      L10_2(L11_2, L12_2)
                      L10_2 = MissioneSurv
                      L10_2 = L10_2 + 1
                      MissioneSurv = L10_2
                      L10_2 = TriggerServerEvent
                      L11_2 = "esx_Pharmacy:setVarDB"
                      L12_2 = "mytutorial"
                      L13_2 = MissioneSurv
                      L10_2(L11_2, L12_2, L13_2)
                      L10_2 = Wait
                      L11_2 = 2000
                      L10_2(L11_2)
                      L10_2 = ExecuteCommand
                      L11_2 = "e prendi6"
                      L10_2(L11_2)
                      L10_2 = TriggerServerEvent
                      L11_2 = "inv3d:giveItem"
                      L12_2 = GetPlayerServerId
                      L13_2 = PlayerId
                      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L13_2 = "player"
                      L14_2 = "moneta"
                      L15_2 = 55
                      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                      L10_2 = Wait
                      L11_2 = 2000
                      L10_2(L11_2)
                      L10_2 = ExecuteCommand
                      L11_2 = "e prendi6"
                      L10_2(L11_2)
                      L10_2 = TriggerServerEvent
                      L11_2 = "inv3d:giveItem"
                      L12_2 = GetPlayerServerId
                      L13_2 = PlayerId
                      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L13_2 = "player"
                      L14_2 = "radio"
                      L15_2 = 1
                      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                      L10_2 = Wait
                      L11_2 = 2000
                      L10_2(L11_2)
                      L10_2 = ExecuteCommand
                      L11_2 = "e prendi6"
                      L10_2(L11_2)
                      L10_2 = TriggerServerEvent
                      L11_2 = "inv3d:giveItem"
                      L12_2 = GetPlayerServerId
                      L13_2 = PlayerId
                      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L13_2 = "player"
                      L14_2 = "weapon_pistol"
                      L15_2 = 1
                      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                      L10_2 = Wait
                      L11_2 = 2000
                      L10_2(L11_2)
                      L10_2 = ExecuteCommand
                      L11_2 = "e prendi6"
                      L10_2(L11_2)
                      L10_2 = TriggerServerEvent
                      L11_2 = "inv3d:giveItem"
                      L12_2 = GetPlayerServerId
                      L13_2 = PlayerId
                      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L13_2 = "player"
                      L14_2 = "mweapon_pistol"
                      L15_2 = 20
                      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                      L10_2 = Wait
                      L11_2 = 2000
                      L10_2(L11_2)
                      L10_2 = ExecuteCommand
                      L11_2 = "guidaBase"
                      L10_2(L11_2)
                      L10_2 = Wait
                      L11_2 = 15000
                      L10_2(L11_2)
                      L10_2 = DelMissionBlip
                      L10_2()
                      L10_2 = SetPedAsNoLongerNeeded
                      L11_2 = L26_1
                      L10_2(L11_2)
                      L10_2 = AnnullaIncaricoSub
                      L10_2()
                      L10_2 = 1
                      L11_2 = L25_1
                      L11_2 = #L11_2
                      L12_2 = 1
                      for L13_2 = L10_2, L11_2, L12_2 do
                        L14_2 = DoesEntityExist
                        L15_2 = L25_1
                        L15_2 = L15_2[L13_2]
                        L14_2 = L14_2(L15_2)
                        if L14_2 then
                          L14_2 = SetPedAsNoLongerNeeded
                          L15_2 = L25_1
                          L15_2 = L15_2[L13_2]
                          L14_2(L15_2)
                        end
                      end
                      L10_2 = {}
                      L25_1 = L10_2
                      L10_2 = L24_1
                      L10_2 = L10_2 + 1
                      L24_1 = L10_2
                      L10_2 = ExecuteCommand
                      L11_2 = "clearwaypoints"
                      L10_2(L11_2)
                    end
                    L10_2 = Wait
                    L11_2 = 1000
                    L10_2(L11_2)
                  end
                end
              end
            end
          elseif -38 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = vector3
              L9_2 = 2933.77
              L10_2 = 7518.164
              L11_2 = 18.447
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 5.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if not (L6_2 > L9_2) then
                goto lbl_8782
              end
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.2
              if not (L9_2 < L10_2) then
                goto lbl_8782
              end
              L10_2 = L24_1
              L10_2 = L10_2 + 1
              L24_1 = L10_2
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Zone_Neutral"
              L13_2 = "DLC_Apartments_Drop_Zone_Sounds"
              L14_2 = 0
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submexType
              L12_2 = "Deliver this animal to the point on map."
              L10_2(L11_2, L12_2)
              L10_2 = CreateMissionBlip
              L11_2 = vector3
              L12_2 = 3336.717
              L13_2 = 7352.751
              L14_2 = 6.606
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L32_1 = L10_2
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "1st_Person_Transition"
              L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
              L14_2 = 1
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = exports
              L10_2 = L10_2.striano_combat
              L11_2 = L10_2
              L10_2 = L10_2.submex
              L12_2 = ""
              L10_2(L11_2, L12_2)
              L10_2 = Wait
              L11_2 = 25
              L10_2(L11_2)
              L10_2 = ExecuteCommand
              L11_2 = "pointingstop"
              L10_2(L11_2)
              L10_2 = GetEntityCoords
              L11_2 = L4_2
              L10_2 = L10_2(L11_2)
              L11_2 = vector3
              L12_2 = L10_2.x
              L13_2 = L10_2.y
              L14_2 = L10_2.z
              L14_2 = L14_2 - 0.9
              L11_2 = L11_2(L12_2, L13_2, L14_2)
              L10_2 = L11_2
              L11_2 = TriggerEvent
              L12_2 = "horse:spawnPed"
              L13_2 = "donkey"
              L14_2 = 254
              L15_2 = L10_2
              L16_2 = GetEntityHeading
              L17_2 = L4_2
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2(L17_2)
              L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L11_2 = Wait
              L12_2 = 1000
              L11_2(L12_2)
              L11_2 = exports
              L11_2 = L11_2.striano_ridehorse
              L13_2 = "lasthorse"
              L12_2 = L11_2
              L11_2 = L11_2[L13_2]
              L11_2 = L11_2(L12_2)
              L27_1 = L11_2
              L11_2 = L27_1
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
              L12_2 = 0
              while true do
                L13_2 = _ENV
                L14_2 = "PedToNet"
                L13_2 = L13_2[L14_2]
                L14_2 = L11_2
                L13_2 = L13_2(L14_2)
                if 0 ~= L13_2 then
                  L13_2 = _ENV
                  L14_2 = "PedToNet"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L11_2
                  L13_2 = L13_2(L14_2)
                  L14_2 = nil
                  if not (L13_2 == L14_2 and L12_2 < 100) then
                    break
                  end
                end
                L12_2 = L12_2 + 1
                L13_2 = Wait
                L14_2 = 25
                L13_2(L14_2)
              end
              L13_2 = TriggerServerEvent
              L14_2 = "AddPedSync"
              L15_2 = _ENV
              L16_2 = "PedToNet"
              L15_2 = L15_2[L16_2]
              L16_2 = L11_2
              L15_2 = L15_2(L16_2)
              L16_2 = GetPlayerServerId
              L17_2 = PlayerId
              L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L17_2()
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
              L13_2 = Wait
              L14_2 = 250
              L13_2(L14_2)
              L13_2 = exports
              L13_2 = L13_2.striano_ridehorse
              L15_2 = "saliCavalcatura"
              L14_2 = L13_2
              L13_2 = L13_2[L15_2]
              L13_2(L14_2)
              L13_2 = Wait
              L14_2 = 1000
              L13_2(L14_2)
              L13_2 = exports
              L13_2 = L13_2.striano_ridehorse
              L14_2 = L13_2
              L13_2 = L13_2.ShowInstructionalButtonsTimed
              L15_2 = "~h~Run / Sprint"
              L16_2 = {}
              L17_2 = 22
              L18_2 = 21
              L16_2[1] = L17_2
              L16_2[2] = L18_2
              L13_2(L14_2, L15_2, L16_2)
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = vector3
                L9_2 = 3336.717
                L10_2 = 7352.751
                L11_2 = 7.606
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 3.5
                if L9_2 >= L10_2 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 3.5
                if L9_2 < L10_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = exports
                  L9_2 = L9_2.striano_ridehorse
                  L11_2 = "myhorse"
                  L10_2 = L9_2
                  L9_2 = L9_2[L11_2]
                  L9_2 = L9_2(L10_2)
                  L10_2 = nil
                  if L9_2 ~= L10_2 then
                    L10_2 = DoesEntityExist
                    L11_2 = L9_2
                    L10_2 = L10_2(L11_2)
                    if L10_2 then
                      L10_2 = GetEntityModel
                      L11_2 = L9_2
                      L10_2 = L10_2(L11_2)
                      L11_2 = _ENV
                      L12_2 = "GetHashKey"
                      L11_2 = L11_2[L12_2]
                      L12_2 = "Donkey"
                      L11_2 = L11_2(L12_2)
                      if L10_2 == L11_2 then
                        L10_2 = L27_1
                        if L9_2 == L10_2 then
                          L10_2 = GetEntityCoords
                          L11_2 = L4_2
                          L10_2 = L10_2(L11_2)
                          L11_2 = GetEntityCoords
                          L12_2 = L27_1
                          L11_2 = L11_2(L12_2)
                          L10_2 = L10_2 - L11_2
                          L10_2 = #L10_2
                          if L10_2 < 10.0 then
                            L10_2 = MissioneSurv
                            L10_2 = L10_2 + 1
                            MissioneSurv = L10_2
                            L10_2 = TriggerServerEvent
                            L11_2 = "esx_Pharmacy:setVarDB"
                            L12_2 = "mytutorial"
                            L13_2 = MissioneSurv
                            L10_2(L11_2, L12_2, L13_2)
                            L10_2 = exports
                            L10_2 = L10_2.striano_combat
                            L11_2 = L10_2
                            L10_2 = L10_2.submexType
                            L12_2 = "Delivery complete, you did a great work!"
                            L10_2(L11_2, L12_2)
                            L10_2 = TriggerServerEvent
                            L11_2 = "inv3d:giveItem"
                            L12_2 = GetPlayerServerId
                            L13_2 = PlayerId
                            L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                            L13_2 = "player"
                            L14_2 = "moneta"
                            L15_2 = 150
                            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                            L10_2 = TriggerEvent
                            L11_2 = "dropHorse"
                            L10_2(L11_2)
                            L10_2 = AnnullaIncaricoSub
                            L10_2()
                            L10_2 = Wait
                            L11_2 = 1000
                            L10_2(L11_2)
                            L10_2 = ExecuteCommand
                            L11_2 = "e posatasca"
                            L10_2(L11_2)
                            L10_2 = TriggerServerEvent
                            L11_2 = "cavallo:toglisella"
                            L12_2 = "scubagear"
                            L13_2 = 1
                            L10_2(L11_2, L12_2, L13_2)
                            L10_2 = Wait
                            L11_2 = 9000
                            L10_2(L11_2)
                            L10_2 = ExecuteCommand
                            L11_2 = "ob"
                            L10_2(L11_2)
                        end
                        else
                          L10_2 = exports
                          L10_2 = L10_2.striano_combat
                          L11_2 = L10_2
                          L10_2 = L10_2.submexType
                          L12_2 = "You not delivery the requested animal, mission failed!"
                          L10_2(L11_2, L12_2)
                          L10_2 = AnnullaIncaricoSub
                          L10_2()
                          L10_2 = Wait
                          L11_2 = 9000
                          L10_2(L11_2)
                        end
                    end
                  end
                  else
                    L10_2 = exports
                    L10_2 = L10_2.striano_combat
                    L11_2 = L10_2
                    L10_2 = L10_2.submexType
                    L12_2 = "Where is the animal? Mission failed."
                    L10_2(L11_2, L12_2)
                    L10_2 = AnnullaIncaricoSub
                    L10_2()
                    L10_2 = Wait
                    L11_2 = 9000
                    L10_2(L11_2)
                  end
                end
              end
            end
          elseif -37 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = vector3
              L9_2 = 3441.743
              L10_2 = 7568.271
              L11_2 = 7.332
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 5.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = _ENV
                L10_2 = "IsEntityAttached"
                L9_2 = L9_2[L10_2]
                L10_2 = L4_2
                L9_2 = L9_2(L10_2)
                if not L9_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 3.5
                  if L9_2 < L10_2 then
                    L10_2 = exports
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = exports
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = ExecuteCommand
                    L11_2 = "e oddio6"
                    L10_2(L11_2)
                    L10_2 = exports
                    L10_2 = L10_2.striano_combat
                    L11_2 = L10_2
                    L10_2 = L10_2.submex
                    L12_2 = "Please, save my syster."
                    L10_2(L11_2, L12_2)
                    L10_2 = Wait
                    L11_2 = 3000
                    L10_2(L11_2)
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                  end
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = vector3
                L9_2 = 3441.743
                L10_2 = 7568.271
                L11_2 = 6.332
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if not (L6_2 > L9_2) then
                  goto lbl_8782
                end
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 2.5
                if not (L9_2 < L10_2) then
                  goto lbl_8782
                end
                L10_2 = L24_1
                L10_2 = L10_2 + 1
                L24_1 = L10_2
                L10_2 = vector3
                L11_2 = 3456.558
                L12_2 = 7585.693
                L13_2 = 14.691
                L10_2 = L10_2(L11_2, L12_2, L13_2)
                L11_2 = CreateMissionBlip
                L12_2 = L10_2
                L11_2 = L11_2(L12_2)
                L32_1 = L11_2
                L11_2 = PlaySoundFrontend
                L12_2 = -1
                L13_2 = "1st_Person_Transition"
                L14_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                L15_2 = 1
                L11_2(L12_2, L13_2, L14_2, L15_2)
                L11_2 = "a_f_y_indian_01"
                L12_2 = _ENV
                L13_2 = "RequestModelStriano"
                L12_2 = L12_2[L13_2]
                L13_2 = L11_2
                L12_2(L13_2)
                L12_2 = _ENV
                L13_2 = "CreatePed"
                L12_2 = L12_2[L13_2]
                L13_2 = 1
                L14_2 = L11_2
                L15_2 = L10_2.x
                L16_2 = L10_2.y
                L17_2 = L10_2.z
                L18_2 = _ENV
                L19_2 = "h"
                L18_2 = L18_2[L19_2]
                L19_2 = true
                L20_2 = false
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L26_1 = L12_2
                while true do
                  L12_2 = DoesEntityExist
                  L13_2 = L26_1
                  L12_2 = L12_2(L13_2)
                  if L12_2 then
                    break
                  end
                  L12_2 = Wait
                  L13_2 = 0
                  L12_2(L13_2)
                end
                L12_2 = L26_1
                L13_2 = _ENV
                L14_2 = "SetPedFleeAttributes"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = 0
                L16_2 = 0
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = _ENV
                L14_2 = "SetPedDropsWeaponsWhenDead"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetPedDiesWhenInjured"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetEntityInvincible"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = true
                L13_2(L14_2, L15_2)
                L13_2 = FreezeEntityPosition
                L14_2 = L12_2
                L15_2 = true
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetBlockingOfNonTemporaryEvents"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = true
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetPedCanRagdollFromPlayerImpact"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetEntityCollision"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = false
                L16_2 = false
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = _ENV
                L14_2 = "SetEntityAsMissionEntity"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = true
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetPedCanBeTargetted"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = false
                L13_2(L14_2, L15_2)
                L13_2 = _ENV
                L14_2 = "SetEntityAlpha"
                L13_2 = L13_2[L14_2]
                L14_2 = L12_2
                L15_2 = 254
                L13_2(L14_2, L15_2)
                L13_2 = Wait
                L14_2 = 500
                L13_2(L14_2)
                L13_2 = SetEntityCoords
                L14_2 = L12_2
                L15_2 = L10_2.x
                L16_2 = L10_2.y
                L17_2 = L10_2.z
                L13_2(L14_2, L15_2, L16_2, L17_2)
                L13_2 = "combat@damage@rb_writhe"
                L14_2 = "rb_writhe_loop"
                L15_2 = _ENV
                L16_2 = "IsEntityPlayingAnim"
                L15_2 = L15_2[L16_2]
                L16_2 = L26_1
                L17_2 = L13_2
                L18_2 = L14_2
                L19_2 = 1
                L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                if not L15_2 then
                  L15_2 = _ENV
                  L16_2 = "HasAnimDictLoaded"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L13_2
                  L15_2 = L15_2(L16_2)
                  if not L15_2 then
                    L15_2 = _ENV
                    L16_2 = "RequestAnimDict"
                    L15_2 = L15_2[L16_2]
                    L16_2 = L13_2
                    L15_2(L16_2)
                    while true do
                      L15_2 = _ENV
                      L16_2 = "HasAnimDictLoaded"
                      L15_2 = L15_2[L16_2]
                      L16_2 = L13_2
                      L15_2 = L15_2(L16_2)
                      if L15_2 then
                        break
                      end
                      L15_2 = Wait
                      L16_2 = 10
                      L15_2(L16_2)
                    end
                  end
                  L15_2 = _ENV
                  L16_2 = "TaskPlayAnim"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L26_1
                  L17_2 = L13_2
                  L18_2 = L14_2
                  L19_2 = 3.0
                  L20_2 = 1.0
                  L21_2 = -1
                  L22_2 = 1
                  L23_2 = 0
                  L24_2 = 0
                  L25_2 = 0
                  L26_2 = 0
                  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                end
                L15_2 = Wait
                L16_2 = 3000
                L15_2(L16_2)
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = vector3
                  L9_2 = 3456.558
                  L10_2 = 7585.693
                  L11_2 = 15.691
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 2.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                  L9_2 = "combat@damage@rb_writhe"
                  L10_2 = "rb_writhe_loop"
                  L11_2 = _ENV
                  L12_2 = "IsEntityPlayingAnim"
                  L11_2 = L11_2[L12_2]
                  L12_2 = L26_1
                  L13_2 = L9_2
                  L14_2 = L10_2
                  L15_2 = 1
                  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
                  if not L11_2 then
                    L11_2 = _ENV
                    L12_2 = "IsEntityAttached"
                    L11_2 = L11_2[L12_2]
                    L12_2 = L26_1
                    L11_2 = L11_2(L12_2)
                    if not L11_2 then
                      L11_2 = _ENV
                      L12_2 = "HasAnimDictLoaded"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L9_2
                      L11_2 = L11_2(L12_2)
                      if not L11_2 then
                        L11_2 = _ENV
                        L12_2 = "RequestAnimDict"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L9_2
                        L11_2(L12_2)
                        while true do
                          L11_2 = _ENV
                          L12_2 = "HasAnimDictLoaded"
                          L11_2 = L11_2[L12_2]
                          L12_2 = L9_2
                          L11_2 = L11_2(L12_2)
                          if L11_2 then
                            break
                          end
                          L11_2 = Wait
                          L12_2 = 10
                          L11_2(L12_2)
                        end
                      end
                      L11_2 = _ENV
                      L12_2 = "TaskPlayAnim"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L26_1
                      L13_2 = L9_2
                      L14_2 = L10_2
                      L15_2 = 3.0
                      L16_2 = 1.0
                      L17_2 = -1
                      L18_2 = 1
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                  end
                  L11_2 = L7_2 - L8_2
                  L11_2 = #L11_2
                  if L11_2 < 2.0 then
                    L11_2 = DrawMarker
                    L12_2 = 0
                    L13_2 = L8_2
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = 0.2
                    L21_2 = 0.2
                    L22_2 = 0.3
                    L23_2 = L1_2
                    L24_2 = L2_2
                    L25_2 = true
                    L26_2 = true
                    L27_2 = 2
                    L28_2 = false
                    L29_2 = false
                    L30_2 = false
                    L31_2 = false
                    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                    L11_2 = L7_2 - L8_2
                    L11_2 = #L11_2
                    L12_2 = 1.5
                    if L11_2 < L12_2 then
                      L12_2 = exports
                      L12_2 = L12_2.text_guide
                      L13_2 = L12_2
                      L12_2 = L12_2.ClearGuideText
                      L12_2(L13_2)
                      L12_2 = exports
                      L12_2 = L12_2.text_guide
                      L13_2 = L12_2
                      L12_2 = L12_2.GuidaNascondi
                      L12_2(L13_2)
                      L12_2 = ExecuteCommand
                      L13_2 = "e oddio6"
                      L12_2(L13_2)
                      L12_2 = CreateMissionBlip
                      L13_2 = vector3
                      L14_2 = 3071.24
                      L15_2 = 7475.95
                      L16_2 = 19.494
                      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2(L14_2, L15_2, L16_2)
                      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L32_1 = L12_2
                      L12_2 = L24_1
                      L12_2 = L12_2 + 1
                      L24_1 = L12_2
                    end
                  end
                else
                  L8_2 = L24_1
                  if 3 ~= L8_2 then
                    goto lbl_8782
                  end
                  L8_2 = vector3
                  L9_2 = 3071.24
                  L10_2 = 7475.95
                  L11_2 = 20.494
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                  L9_2 = _ENV
                  L10_2 = "IsEntityAttached"
                  L9_2 = L9_2[L10_2]
                  L10_2 = L26_1
                  L9_2 = L9_2(L10_2)
                  if not L9_2 then
                    L9_2 = "combat@damage@rb_writhe"
                    L10_2 = "rb_writhe_loop"
                    L11_2 = _ENV
                    L12_2 = "IsEntityPlayingAnim"
                    L11_2 = L11_2[L12_2]
                    L12_2 = L26_1
                    L13_2 = L9_2
                    L14_2 = L10_2
                    L15_2 = 1
                    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
                    if not L11_2 then
                      L11_2 = _ENV
                      L12_2 = "IsEntityAttached"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L26_1
                      L11_2 = L11_2(L12_2)
                      if not L11_2 then
                        L11_2 = _ENV
                        L12_2 = "HasAnimDictLoaded"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L9_2
                        L11_2 = L11_2(L12_2)
                        if not L11_2 then
                          L11_2 = _ENV
                          L12_2 = "RequestAnimDict"
                          L11_2 = L11_2[L12_2]
                          L12_2 = L9_2
                          L11_2(L12_2)
                          while true do
                            L11_2 = _ENV
                            L12_2 = "HasAnimDictLoaded"
                            L11_2 = L11_2[L12_2]
                            L12_2 = L9_2
                            L11_2 = L11_2(L12_2)
                            if L11_2 then
                              break
                            end
                            L11_2 = Wait
                            L12_2 = 10
                            L11_2(L12_2)
                          end
                        end
                        L11_2 = _ENV
                        L12_2 = "TaskPlayAnim"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L26_1
                        L13_2 = L9_2
                        L14_2 = L10_2
                        L15_2 = 3.0
                        L16_2 = 1.0
                        L17_2 = -1
                        L18_2 = 1
                        L19_2 = 0
                        L20_2 = 0
                        L21_2 = 0
                        L22_2 = 0
                        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                      end
                    end
                    L11_2 = L7_2 - L8_2
                    L11_2 = #L11_2
                    if L11_2 >= 5.0 then
                      L12_2 = IsPedHuman
                      L13_2 = L4_2
                      L12_2 = L12_2(L13_2)
                      if L12_2 then
                        L12_2 = exports
                        L12_2 = L12_2.striano_ridehorse
                        L14_2 = "myhorse"
                        L13_2 = L12_2
                        L12_2 = L12_2[L14_2]
                        L12_2 = L12_2(L13_2)
                        L13_2 = GetEntityCoords
                        L14_2 = L4_2
                        L13_2 = L13_2(L14_2)
                        L14_2 = GetEntityCoords
                        L15_2 = L26_1
                        L14_2 = L14_2(L15_2)
                        L13_2 = L13_2 - L14_2
                        L13_2 = #L13_2
                        if L13_2 < 2.0 then
                          L13_2 = _ENV
                          L14_2 = "Citizen"
                          L13_2 = L13_2[L14_2]
                          L14_2 = "InvokeNative"
                          L13_2 = L13_2[L14_2]
                          L14_2 = -7918206464511161279
                          L15_2 = L4_2
                          L13_2 = L13_2(L14_2, L15_2)
                          if not L13_2 then
                            L13_2 = exports
                            L13_2 = L13_2.striano_core
                            L15_2 = "draw"
                            L14_2 = L13_2
                            L13_2 = L13_2[L15_2]
                            L15_2 = 29
                            L16_2 = "Manage body"
                            L13_2(L14_2, L15_2, L16_2)
                          else
                            L13_2 = nil
                            if L12_2 ~= L13_2 then
                              L13_2 = DoesEntityExist
                              L14_2 = L12_2
                              L13_2 = L13_2(L14_2)
                              if L13_2 then
                                L13_2 = GetEntityCoords
                                L14_2 = L12_2
                                L13_2 = L13_2(L14_2)
                                L14_2 = GetEntityCoords
                                L15_2 = L26_1
                                L14_2 = L14_2(L15_2)
                                L13_2 = L13_2 - L14_2
                                L13_2 = #L13_2
                                if L13_2 < 3.0 then
                                  L13_2 = exports
                                  L13_2 = L13_2.striano_core
                                  L15_2 = "draw"
                                  L14_2 = L13_2
                                  L13_2 = L13_2[L15_2]
                                  L15_2 = 74
                                  L16_2 = "Put on horse"
                                  L13_2(L14_2, L15_2, L16_2)
                                  L13_2 = _ENV
                                  L14_2 = "IsControlPressed"
                                  L13_2 = L13_2[L14_2]
                                  L14_2 = 0
                                  L15_2 = 74
                                  L13_2 = L13_2(L14_2, L15_2)
                                  if not L13_2 then
                                    L13_2 = _ENV
                                    L14_2 = "IsDisabledControlPressed"
                                    L13_2 = L13_2[L14_2]
                                    L14_2 = 0
                                    L15_2 = 74
                                    L13_2 = L13_2(L14_2, L15_2)
                                  end
                                  if L13_2 then
                                    L13_2 = exports
                                    L13_2 = L13_2.striano_ridehorse
                                    L15_2 = "possoCavalcare"
                                    L14_2 = L13_2
                                    L13_2 = L13_2[L15_2]
                                    L15_2 = false
                                    L13_2(L14_2, L15_2)
                                    L13_2 = exports
                                    L13_2 = L13_2.striano_core
                                    L15_2 = "disableLadder"
                                    L14_2 = L13_2
                                    L13_2 = L13_2[L15_2]
                                    L15_2 = false
                                    L13_2(L14_2, L15_2)
                                    L13_2 = ExecuteCommand
                                    L14_2 = "e prendi5"
                                    L13_2(L14_2)
                                    L13_2 = Wait
                                    L14_2 = 750
                                    L13_2(L14_2)
                                    L13_2 = _ENV
                                    L14_2 = "AttachEntityToEntity"
                                    L13_2 = L13_2[L14_2]
                                    L14_2 = L26_1
                                    L15_2 = L12_2
                                    L16_2 = 0
                                    L17_2 = 0.5
                                    L18_2 = 0.15
                                    L19_2 = -0.13
                                    L20_2 = -174.0
                                    L21_2 = 87.0
                                    L22_2 = 269.0
                                    L23_2 = false
                                    L24_2 = false
                                    L25_2 = false
                                    L26_2 = true
                                    L27_2 = false
                                    L28_2 = true
                                    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                                    L13_2 = ExecuteCommand
                                    L14_2 = "e dai"
                                    L13_2(L14_2)
                                  end
                                else
                                  L13_2 = exports
                                  L13_2 = L13_2.striano_core
                                  L15_2 = "draw"
                                  L14_2 = L13_2
                                  L13_2 = L13_2[L15_2]
                                  L15_2 = 74
                                  L16_2 = "Take the body"
                                  L13_2(L14_2, L15_2, L16_2)
                                  L13_2 = _ENV
                                  L14_2 = "IsControlPressed"
                                  L13_2 = L13_2[L14_2]
                                  L14_2 = 0
                                  L15_2 = 74
                                  L13_2 = L13_2(L14_2, L15_2)
                                  if not L13_2 then
                                    L13_2 = _ENV
                                    L14_2 = "IsDisabledControlPressed"
                                    L13_2 = L13_2[L14_2]
                                    L14_2 = 0
                                    L15_2 = 74
                                    L13_2 = L13_2(L14_2, L15_2)
                                  end
                                  if L13_2 then
                                    L13_2 = exports
                                    L13_2 = L13_2.striano_core
                                    L15_2 = "disableLadder"
                                    L14_2 = L13_2
                                    L13_2 = L13_2[L15_2]
                                    L15_2 = true
                                    L13_2(L14_2, L15_2)
                                    L13_2 = exports
                                    L13_2 = L13_2.striano_ridehorse
                                    L15_2 = "possoCavalcare"
                                    L14_2 = L13_2
                                    L13_2 = L13_2[L15_2]
                                    L15_2 = false
                                    L13_2(L14_2, L15_2)
                                    L13_2 = ExecuteCommand
                                    L14_2 = "e prendi6"
                                    L13_2(L14_2)
                                    L13_2 = Wait
                                    L14_2 = 950
                                    L13_2(L14_2)
                                    L13_2 = _ENV
                                    L14_2 = "AttachEntityToEntity"
                                    L13_2 = L13_2[L14_2]
                                    L14_2 = L26_1
                                    L15_2 = L4_2
                                    L16_2 = 0
                                    L17_2 = -0.01
                                    L18_2 = -0.31
                                    L19_2 = 0.5
                                    L20_2 = 13.0
                                    L21_2 = 0.0
                                    L22_2 = 4.0
                                    L23_2 = false
                                    L24_2 = false
                                    L25_2 = false
                                    L26_2 = true
                                    L27_2 = false
                                    L28_2 = true
                                    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                                    L13_2 = ExecuteCommand
                                    L14_2 = "e indossa2"
                                    L13_2(L14_2)
                                    L13_2 = true
                                    L14_1 = L13_2
                                    L13_2 = _ENV
                                    L14_2 = "CreateThread"
                                    L13_2 = L13_2[L14_2]
                                    function L14_2()
                                      local L0_3, L1_3
                                      L0_3 = Wait
                                      L1_3 = 1000
                                      L0_3(L1_3)
                                      L0_3 = ExecuteCommand
                                      L1_3 = "e hiking"
                                      L0_3(L1_3)
                                    end
                                    L13_2(L14_2)
                                  end
                                end
                            end
                            else
                              L13_2 = exports
                              L13_2 = L13_2.striano_core
                              L15_2 = "draw"
                              L14_2 = L13_2
                              L13_2 = L13_2[L15_2]
                              L15_2 = 74
                              L16_2 = "Take the body"
                              L13_2(L14_2, L15_2, L16_2)
                              L13_2 = _ENV
                              L14_2 = "IsControlPressed"
                              L13_2 = L13_2[L14_2]
                              L14_2 = 0
                              L15_2 = 74
                              L13_2 = L13_2(L14_2, L15_2)
                              if not L13_2 then
                                L13_2 = _ENV
                                L14_2 = "IsDisabledControlPressed"
                                L13_2 = L13_2[L14_2]
                                L14_2 = 0
                                L15_2 = 74
                                L13_2 = L13_2(L14_2, L15_2)
                              end
                              if L13_2 then
                                L13_2 = exports
                                L13_2 = L13_2.striano_core
                                L15_2 = "disableLadder"
                                L14_2 = L13_2
                                L13_2 = L13_2[L15_2]
                                L15_2 = true
                                L13_2(L14_2, L15_2)
                                L13_2 = exports
                                L13_2 = L13_2.striano_ridehorse
                                L15_2 = "possoCavalcare"
                                L14_2 = L13_2
                                L13_2 = L13_2[L15_2]
                                L15_2 = false
                                L13_2(L14_2, L15_2)
                                L13_2 = _ENV
                                L14_2 = "ExecuteCommand"
                                L13_2 = L13_2[L14_2]
                                L14_2 = "e prendi6"
                                L13_2(L14_2)
                                L13_2 = _ENV
                                L14_2 = "Wait"
                                L13_2 = L13_2[L14_2]
                                L14_2 = 950
                                L13_2(L14_2)
                                L13_2 = _ENV
                                L14_2 = "AttachEntityToEntity"
                                L13_2 = L13_2[L14_2]
                                L14_2 = L26_1
                                L15_2 = L4_2
                                L16_2 = 0
                                L17_2 = -0.01
                                L18_2 = -0.31
                                L19_2 = 0.5
                                L20_2 = 13.0
                                L21_2 = 0.0
                                L22_2 = 4.0
                                L23_2 = false
                                L24_2 = false
                                L25_2 = false
                                L26_2 = true
                                L27_2 = false
                                L28_2 = true
                                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                                L13_2 = _ENV
                                L14_2 = "ExecuteCommand"
                                L13_2 = L13_2[L14_2]
                                L14_2 = "e indossa2"
                                L13_2(L14_2)
                                L13_2 = true
                                L14_1 = L13_2
                                L13_2 = _ENV
                                L14_2 = "CreateThread"
                                L13_2 = L13_2[L14_2]
                                function L14_2()
                                  local L0_3, L1_3
                                  L0_3 = Wait
                                  L1_3 = 1000
                                  L0_3(L1_3)
                                  L0_3 = ExecuteCommand
                                  L1_3 = "e hiking"
                                  L0_3(L1_3)
                                end
                                L13_2(L14_2)
                              end
                            end
                          end
                        else
                          L13_2 = GetEntityCoords
                          L14_2 = L26_1
                          L13_2 = L13_2(L14_2)
                          L14_2 = DrawMarker
                          L15_2 = 1
                          L16_2 = L13_2.x
                          L17_2 = L13_2.y
                          L18_2 = L13_2.z
                          L18_2 = L18_2 - 1.0
                          L19_2 = 0.0
                          L20_2 = 0.0
                          L21_2 = 0.0
                          L22_2 = 0
                          L23_2 = 0.0
                          L24_2 = 0.0
                          L25_2 = 0.3
                          L26_2 = 0.3
                          L27_2 = 1.0
                          L28_2 = 255
                          L29_2 = 255
                          L30_2 = 255
                          L31_2 = 100
                          L32_2 = false
                          L33_2 = true
                          L34_2 = 2
                          L35_2 = false
                          L36_2 = false
                          L37_2 = false
                          L38_2 = false
                          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
                        end
                    end
                    else
                      L12_2 = GetEntityCoords
                      L13_2 = L4_2
                      L12_2 = L12_2(L13_2)
                      L13_2 = GetEntityCoords
                      L14_2 = L26_1
                      L13_2 = L13_2(L14_2)
                      L12_2 = L12_2 - L13_2
                      L12_2 = #L12_2
                      if L12_2 < 25.0 then
                        L12_2 = MissioneSurv
                        L12_2 = L12_2 + 1
                        MissioneSurv = L12_2
                        L12_2 = TriggerServerEvent
                        L13_2 = "esx_Pharmacy:setVarDB"
                        L14_2 = "mytutorial"
                        L15_2 = MissioneSurv
                        L12_2(L13_2, L14_2, L15_2)
                        L12_2 = _ENV
                        L13_2 = "DetachEntity"
                        L12_2 = L12_2[L13_2]
                        L13_2 = L26_1
                        L12_2(L13_2)
                        L12_2 = _ENV
                        L13_2 = "Wait"
                        L12_2 = L12_2[L13_2]
                        L13_2 = 1000
                        L12_2(L13_2)
                        L12_2 = TriggerServerEvent
                        L13_2 = "inv3d:giveItem"
                        L14_2 = GetPlayerServerId
                        L15_2 = PlayerId
                        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L15_2()
                        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                        L15_2 = "player"
                        L16_2 = "moneta"
                        L17_2 = 355
                        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                        L12_2 = AnnullaIncaricoSub
                        L12_2()
                      else
                        L12_2 = exports
                        L12_2 = L12_2.striano_combat
                        L13_2 = L12_2
                        L12_2 = L12_2.submexType
                        L14_2 = "Where is the girl? Mission failed."
                        L12_2(L13_2, L14_2)
                        L12_2 = AnnullaIncaricoSub
                        L12_2()
                        L12_2 = _ENV
                        L13_2 = "Wait"
                        L12_2 = L12_2[L13_2]
                        L13_2 = 9000
                        L12_2(L13_2)
                      end
                    end
                  else
                    L9_2 = "timetable@reunited@ig_9"
                    L10_2 = "eating_disorder_jimmy"
                    L11_2 = _ENV
                    L12_2 = "IsEntityPlayingAnim"
                    L11_2 = L11_2[L12_2]
                    L12_2 = L26_1
                    L13_2 = L9_2
                    L14_2 = L10_2
                    L15_2 = 1
                    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
                    if not L11_2 then
                      L11_2 = _ENV
                      L12_2 = "HasAnimDictLoaded"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L9_2
                      L11_2 = L11_2(L12_2)
                      if not L11_2 then
                        L11_2 = _ENV
                        L12_2 = "RequestAnimDict"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L9_2
                        L11_2(L12_2)
                        while true do
                          L11_2 = _ENV
                          L12_2 = "HasAnimDictLoaded"
                          L11_2 = L11_2[L12_2]
                          L12_2 = L9_2
                          L11_2 = L11_2(L12_2)
                          if L11_2 then
                            break
                          end
                          L11_2 = _ENV
                          L12_2 = "Wait"
                          L11_2 = L11_2[L12_2]
                          L12_2 = 10
                          L11_2(L12_2)
                        end
                      end
                      L11_2 = _ENV
                      L12_2 = "TaskPlayAnim"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L26_1
                      L13_2 = L9_2
                      L14_2 = L10_2
                      L15_2 = 3.0
                      L16_2 = 1.0
                      L17_2 = -1
                      L18_2 = 1
                      L19_2 = 0
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    end
                    L11_2 = GetEntityCoords
                    L12_2 = L4_2
                    L11_2 = L11_2(L12_2)
                    L12_2 = GetEntityCoords
                    L13_2 = L26_1
                    L12_2 = L12_2(L13_2)
                    L11_2 = L11_2 - L12_2
                    L11_2 = #L11_2
                    if L11_2 < 3.0 then
                      L11_2 = _ENV
                      L12_2 = "IsEntityAttached"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L4_2
                      L11_2 = L11_2(L12_2)
                      if not L11_2 then
                        L11_2 = _ENV
                        L12_2 = "SetEntityCollision"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L26_1
                        L13_2 = false
                        L14_2 = true
                        L11_2(L12_2, L13_2, L14_2)
                        L11_2 = _ENV
                        L12_2 = "SetEntityNoCollisionEntity"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L4_2
                        L13_2 = L26_1
                        L14_2 = true
                        L11_2(L12_2, L13_2, L14_2)
                        L11_2 = _ENV
                        L12_2 = "SetEntityCompletelyDisableCollision"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L26_1
                        L13_2 = true
                        L14_2 = false
                        L11_2(L12_2, L13_2, L14_2)
                        L11_2 = exports
                        L11_2 = L11_2.striano_core
                        L13_2 = "draw"
                        L12_2 = L11_2
                        L11_2 = L11_2[L13_2]
                        L13_2 = 74
                        L14_2 = "Drop the body"
                        L11_2(L12_2, L13_2, L14_2)
                        L11_2 = _ENV
                        L12_2 = "IsEntityInWater"
                        L11_2 = L11_2[L12_2]
                        L12_2 = L4_2
                        L11_2 = L11_2(L12_2)
                        if not L11_2 then
                          L11_2 = _ENV
                          L12_2 = "IsPedSwimming"
                          L11_2 = L11_2[L12_2]
                          L12_2 = L4_2
                          L11_2 = L11_2(L12_2)
                          if not L11_2 then
                            L11_2 = _ENV
                            L12_2 = "IsPedSwimmingUnderWater"
                            L11_2 = L11_2[L12_2]
                            L12_2 = L4_2
                            L11_2 = L11_2(L12_2)
                            if not L11_2 then
                              L11_2 = _ENV
                              L12_2 = "DisableControlAction"
                              L11_2 = L11_2[L12_2]
                              L12_2 = 0
                              L13_2 = 21
                              L11_2(L12_2, L13_2)
                            end
                          end
                        end
                        L11_2 = _ENV
                        L12_2 = "IsControlPressed"
                        L11_2 = L11_2[L12_2]
                        L12_2 = 0
                        L13_2 = 74
                        L11_2 = L11_2(L12_2, L13_2)
                        if L11_2 then
                          L11_2 = exports
                          L11_2 = L11_2.striano_ridehorse
                          L13_2 = "possoCavalcare"
                          L12_2 = L11_2
                          L11_2 = L11_2[L13_2]
                          L13_2 = true
                          L11_2(L12_2, L13_2)
                          L11_2 = _ENV
                          L12_2 = "ExecuteCommand"
                          L11_2 = L11_2[L12_2]
                          L12_2 = "e prendi6"
                          L11_2(L12_2)
                          L11_2 = _ENV
                          L12_2 = "DetachEntity"
                          L11_2 = L11_2[L12_2]
                          L12_2 = L26_1
                          L11_2(L12_2)
                          L11_2 = exports
                          L11_2 = L11_2.striano_core
                          L13_2 = "disableLadder"
                          L12_2 = L11_2
                          L11_2 = L11_2[L13_2]
                          L13_2 = false
                          L11_2(L12_2, L13_2)
                          L11_2 = GetEntityCoords
                          L12_2 = L4_2
                          L11_2 = L11_2(L12_2)
                          L12_2 = vector3
                          L13_2 = L11_2.x
                          L14_2 = L11_2.y
                          L15_2 = L11_2.z
                          L15_2 = L15_2 - 1.0
                          L12_2 = L12_2(L13_2, L14_2, L15_2)
                          L13_2 = _ENV
                          L14_2 = "SetEntityCompletelyDisableCollision"
                          L13_2 = L13_2[L14_2]
                          L14_2 = L26_1
                          L15_2 = true
                          L16_2 = true
                          L13_2(L14_2, L15_2, L16_2)
                          L13_2 = _ENV
                          L14_2 = "SetEntityCollision"
                          L13_2 = L13_2[L14_2]
                          L14_2 = L26_1
                          L15_2 = true
                          L16_2 = true
                          L13_2(L14_2, L15_2, L16_2)
                          L13_2 = SetEntityCoords
                          L14_2 = L26_1
                          L15_2 = L12_2
                          L13_2(L14_2, L15_2)
                          L13_2 = _ENV
                          L14_2 = "SetEntityRotation"
                          L13_2 = L13_2[L14_2]
                          L14_2 = L26_1
                          L15_2 = vector3
                          L16_2 = 0
                          L17_2 = 0
                          L18_2 = 0
                          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L15_2(L16_2, L17_2, L18_2)
                          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                          L13_2 = false
                          L14_1 = L13_2
                        end
                      end
                    end
                  end
                end
              end
            end
          elseif -36 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = vector3
              L9_2 = 2724.9
              L10_2 = 7849.239
              L11_2 = 18.749
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = GetEntityCoords
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 5.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2 / 2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = GetEntityCoords
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = L0_2
                L19_2 = L1_2
                L20_2 = L2_2
                L21_2 = true
                L22_2 = true
                L23_2 = 2
                L24_2 = false
                L25_2 = false
                L26_2 = false
                L27_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.5
                if L9_2 < L10_2 then
                  L10_2 = L24_1
                  L10_2 = L10_2 + 1
                  L24_1 = L10_2
                  L10_2 = CreateMissionBlip
                  L11_2 = vector3
                  L12_2 = 2768.009
                  L13_2 = 4238.594
                  L14_2 = 47.48
                  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                  L32_1 = L10_2
                  L10_2 = PlaySoundFrontend
                  L11_2 = -1
                  L12_2 = "1st_Person_Transition"
                  L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                  L14_2 = 1
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = vector3
                L9_2 = 2724.9
                L10_2 = 7849.239
                L11_2 = 18.749
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if not (L6_2 > L9_2) then
                  goto lbl_8782
                end
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = L0_2
                L19_2 = L1_2
                L20_2 = L2_2
                L21_2 = true
                L22_2 = true
                L23_2 = 2
                L24_2 = false
                L25_2 = false
                L26_2 = false
                L27_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.2
                if not (L9_2 < L10_2) then
                  goto lbl_8782
                end
                L10_2 = L24_1
                L10_2 = L10_2 + 1
                L24_1 = L10_2
                L10_2 = L28_1
                if L10_2 then
                  L10_2 = _ENV
                  L11_2 = "makeEntityFaceEntity"
                  L10_2 = L10_2[L11_2]
                  L11_2 = L4_2
                  L12_2 = L28_1
                  L10_2(L11_2, L12_2)
                  L10_2 = _ENV
                  L11_2 = "onParlaBot"
                  L10_2 = L10_2[L11_2]
                  L11_2 = L28_1
                  L12_2 = 9000
                  L10_2(L11_2, L12_2)
                end
                L10_2 = "timetable@amanda@ig_3"
                L11_2 = "ig_3_base_tracy"
                L12_2 = _ENV
                L13_2 = "HasAnimDictLoaded"
                L12_2 = L12_2[L13_2]
                L13_2 = L10_2
                L12_2 = L12_2(L13_2)
                if not L12_2 then
                  L12_2 = _ENV
                  L13_2 = "RequestAnimDict"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L10_2
                  L12_2(L13_2)
                  while true do
                    L12_2 = _ENV
                    L13_2 = "HasAnimDictLoaded"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L10_2
                    L12_2 = L12_2(L13_2)
                    if L12_2 then
                      break
                    end
                    L12_2 = _ENV
                    L13_2 = "Wait"
                    L12_2 = L12_2[L13_2]
                    L13_2 = 10
                    L12_2(L13_2)
                  end
                end
                L12_2 = _ENV
                L13_2 = "TaskPlayAnim"
                L12_2 = L12_2[L13_2]
                L13_2 = L28_1
                L14_2 = L10_2
                L15_2 = L11_2
                L16_2 = 3.0
                L17_2 = 1.0
                L18_2 = -1
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                L12_2 = PlaySoundFrontend
                L13_2 = -1
                L14_2 = "Zone_Neutral"
                L15_2 = "DLC_Apartments_Drop_Zone_Sounds"
                L16_2 = 0
                L12_2(L13_2, L14_2, L15_2, L16_2)
                L12_2 = exports
                L12_2 = L12_2.striano_combat
                L13_2 = L12_2
                L12_2 = L12_2.submexType
                L14_2 = "Recover the stolen vehicle."
                L12_2(L13_2, L14_2)
                L12_2 = CreateMissionBlip
                L13_2 = vector3
                L14_2 = 1601.567
                L15_2 = 8900.77
                L16_2 = 8.058
                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2(L14_2, L15_2, L16_2)
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                L32_1 = L12_2
                L12_2 = PlaySoundFrontend
                L13_2 = -1
                L14_2 = "1st_Person_Transition"
                L15_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                L16_2 = 1
                L12_2(L13_2, L14_2, L15_2, L16_2)
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = vector3
                  L9_2 = 1601.567
                  L10_2 = 8900.77
                  L11_2 = 9.058
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2 / 2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 < 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 0
                    L11_2 = L8_2
                    L12_2 = 0.0
                    L13_2 = 0.0
                    L14_2 = 0.0
                    L15_2 = 0
                    L16_2 = 0.0
                    L17_2 = 0.0
                    L18_2 = 0.2
                    L19_2 = 0.2
                    L20_2 = 0.3
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = true
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    L10_2 = 14.5
                    if L9_2 < L10_2 then
                      L10_2 = L24_1
                      L10_2 = L10_2 + 1
                      L24_1 = L10_2
                      L10_2 = _ENV
                      L11_2 = "ExecuteCommand"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "e think5"
                      L10_2(L11_2)
                      L10_2 = _ENV
                      L11_2 = "CreateThread"
                      L10_2 = L10_2[L11_2]
                      function L11_2()
                        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
                        L0_3 = exports
                        L0_3 = L0_3.striano_combat
                        L1_3 = L0_3
                        L0_3 = L0_3.scav2
                        L2_3 = vector3
                        L3_3 = 1600.219
                        L4_3 = 8906.973
                        L5_3 = 8.027
                        L2_3 = L2_3(L3_3, L4_3, L5_3)
                        L3_3 = false
                        L4_3 = "a_m_m_rurmeth_01"
                        L5_3 = 120
                        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
                        L1_3 = table
                        L1_3 = L1_3.insert
                        L2_3 = L25_1
                        L3_3 = L0_3
                        L1_3(L2_3, L3_3)
                        L1_3 = Wait
                        L2_3 = 500
                        L1_3(L2_3)
                        L1_3 = exports
                        L1_3 = L1_3.striano_combat
                        L2_3 = L1_3
                        L1_3 = L1_3.scav2
                        L3_3 = vector3
                        L4_3 = 1600.219
                        L5_3 = 8906.973
                        L6_3 = 8.027
                        L3_3 = L3_3(L4_3, L5_3, L6_3)
                        L4_3 = false
                        L5_3 = "a_m_m_rurmeth_01"
                        L6_3 = 130
                        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
                        L2_3 = table
                        L2_3 = L2_3.insert
                        L3_3 = L25_1
                        L4_3 = L1_3
                        L2_3(L3_3, L4_3)
                        L2_3 = Wait
                        L3_3 = 500
                        L2_3(L3_3)
                        L2_3 = exports
                        L2_3 = L2_3.striano_combat
                        L3_3 = L2_3
                        L2_3 = L2_3.scav2
                        L4_3 = vector3
                        L5_3 = 1600.219
                        L6_3 = 8906.973
                        L7_3 = 8.027
                        L4_3 = L4_3(L5_3, L6_3, L7_3)
                        L5_3 = false
                        L6_3 = "a_m_m_rurmeth_01"
                        L7_3 = 120
                        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
                        L3_3 = table
                        L3_3 = L3_3.insert
                        L4_3 = L25_1
                        L5_3 = L2_3
                        L3_3(L4_3, L5_3)
                        L3_3 = Wait
                        L4_3 = 500
                        L3_3(L4_3)
                        L3_3 = exports
                        L3_3 = L3_3.striano_combat
                        L4_3 = L3_3
                        L3_3 = L3_3.scav2
                        L5_3 = vector3
                        L6_3 = 1591.668
                        L7_3 = 8904.25
                        L8_3 = 8.296
                        L5_3 = L5_3(L6_3, L7_3, L8_3)
                        L6_3 = false
                        L7_3 = "a_m_m_rurmeth_01"
                        L8_3 = 130
                        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
                        L4_3 = table
                        L4_3 = L4_3.insert
                        L5_3 = L25_1
                        L6_3 = L3_3
                        L4_3(L5_3, L6_3)
                        L4_3 = Wait
                        L5_3 = 500
                        L4_3(L5_3)
                        L4_3 = exports
                        L4_3 = L4_3.striano_combat
                        L5_3 = L4_3
                        L4_3 = L4_3.scav2
                        L6_3 = vector3
                        L7_3 = 1591.668
                        L8_3 = 8904.25
                        L9_3 = 8.296
                        L6_3 = L6_3(L7_3, L8_3, L9_3)
                        L7_3 = false
                        L8_3 = "a_m_m_rurmeth_01"
                        L9_3 = 120
                        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
                        L5_3 = table
                        L5_3 = L5_3.insert
                        L6_3 = L25_1
                        L7_3 = L4_3
                        L5_3(L6_3, L7_3)
                        L5_3 = Wait
                        L6_3 = 500
                        L5_3(L6_3)
                        L5_3 = exports
                        L5_3 = L5_3.striano_combat
                        L6_3 = L5_3
                        L5_3 = L5_3.scav2
                        L7_3 = vector3
                        L8_3 = 1591.668
                        L9_3 = 8904.25
                        L10_3 = 8.296
                        L7_3 = L7_3(L8_3, L9_3, L10_3)
                        L8_3 = false
                        L9_3 = "a_m_m_rurmeth_01"
                        L10_3 = 130
                        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
                        L6_3 = table
                        L6_3 = L6_3.insert
                        L7_3 = L25_1
                        L8_3 = L5_3
                        L6_3(L7_3, L8_3)
                        L6_3 = Wait
                        L7_3 = 500
                        L6_3(L7_3)
                      end
                      L10_2(L11_2)
                      L10_2 = _ENV
                      L11_2 = "GetHashKey"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "kalahari"
                      L10_2 = L10_2(L11_2)
                      L11_2 = _ENV
                      L12_2 = "vector3"
                      L11_2 = L11_2[L12_2]
                      L12_2 = 1589.255
                      L13_2 = 8889.017
                      L14_2 = 8.538
                      L11_2 = L11_2(L12_2, L13_2, L14_2)
                      L12_2 = 240.0
                      L13_2 = _ENV
                      L14_2 = "striano_SpawnVehicle"
                      L13_2 = L13_2[L14_2]
                      L14_2 = L10_2
                      L15_2 = L11_2
                      L16_2 = L12_2
                      function L17_2(A0_3)
                        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
                        L1_3 = A0_3
                        L2_3 = SetModelAsNoLongerNeeded
                        L3_3 = L10_2
                        L2_3(L3_3)
                        L2_3 = SetEntityAsMissionEntity
                        L3_3 = L1_3
                        L4_3 = true
                        L5_3 = true
                        L2_3(L3_3, L4_3, L5_3)
                        L2_3 = SetVehicleLivery
                        L3_3 = L1_3
                        L4_3 = -1
                        L2_3(L3_3, L4_3)
                        L2_3 = SetEntityHeading
                        L3_3 = L1_3
                        L4_3 = rotazioneSpawn
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleDoorsLocked
                        L3_3 = L1_3
                        L4_3 = 2
                        L2_3(L3_3, L4_3)
                        L26_1 = A0_3
                        L2_3 = Wait
                        L3_3 = 25
                        L2_3(L3_3)
                        L2_3 = SetEntityHeading
                        L3_3 = L1_3
                        L4_3 = L12_2
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleFuelLevel
                        L3_3 = L1_3
                        L4_3 = 100.0
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleEngineOn
                        L3_3 = L1_3
                        L4_3 = true
                        L5_3 = true
                        L6_3 = true
                        L2_3(L3_3, L4_3, L5_3, L6_3)
                        L2_3 = SetVehicleJetEngineOn
                        L3_3 = L1_3
                        L4_3 = true
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleNeedsToBeHotwired
                        L3_3 = L1_3
                        L4_3 = false
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleHasBeenOwnedByPlayer
                        L3_3 = L1_3
                        L4_3 = true
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleIsStolen
                        L3_3 = L1_3
                        L4_3 = false
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehicleIsWanted
                        L3_3 = L1_3
                        L4_3 = false
                        L2_3(L3_3, L4_3)
                        L2_3 = SetVehRadioStation
                        L3_3 = L1_3
                        L4_3 = "OFF"
                        L2_3(L3_3, L4_3)
                        L2_3 = ImpostaTimerMissione
                        L3_3 = 600
                        L2_3(L3_3)
                      end
                      L13_2(L14_2, L15_2, L16_2, L17_2)
                      L13_2 = _ENV
                      L14_2 = "Wait"
                      L13_2 = L13_2[L14_2]
                      L14_2 = 5000
                      L13_2(L14_2)
                    end
                  end
                else
                  L8_2 = L24_1
                  if 3 == L8_2 then
                    L8_2 = L25_1
                    L8_2 = #L8_2
                    if L8_2 > 0 then
                      L8_2 = true
                      L9_2 = 1
                      L10_2 = L25_1
                      L10_2 = #L10_2
                      L11_2 = 1
                      for L12_2 = L9_2, L10_2, L11_2 do
                        L13_2 = DoesEntityExist
                        L14_2 = L25_1
                        L14_2 = L14_2[L12_2]
                        L13_2 = L13_2(L14_2)
                        if L13_2 then
                          L13_2 = _ENV
                          L14_2 = "GetEntityHealth"
                          L13_2 = L13_2[L14_2]
                          L14_2 = L25_1
                          L14_2 = L14_2[L12_2]
                          L13_2 = L13_2(L14_2)
                          if L13_2 > 0 then
                            L8_2 = false
                          end
                        end
                      end
                      L9_2 = _ENV
                      L10_2 = "Wait"
                      L9_2 = L9_2[L10_2]
                      L10_2 = 1000
                      L9_2(L10_2)
                      if L8_2 then
                        L9_2 = 1
                        L10_2 = L25_1
                        L10_2 = #L10_2
                        L11_2 = 1
                        for L12_2 = L9_2, L10_2, L11_2 do
                          L13_2 = DoesEntityExist
                          L14_2 = L25_1
                          L14_2 = L14_2[L12_2]
                          L13_2 = L13_2(L14_2)
                          if L13_2 then
                            L13_2 = SetPedAsNoLongerNeeded
                            L14_2 = L25_1
                            L14_2 = L14_2[L12_2]
                            L13_2(L14_2)
                          end
                        end
                        L9_2 = {}
                        L25_1 = L9_2
                        L9_2 = L24_1
                        L9_2 = L9_2 + 1
                        L24_1 = L9_2
                        L9_2 = _ENV
                        L10_2 = "ExecuteCommand"
                        L9_2 = L9_2[L10_2]
                        L10_2 = "e prendi6"
                        L9_2(L10_2)
                        L9_2 = _ENV
                        L10_2 = "exports"
                        L9_2 = L9_2[L10_2]
                        L10_2 = "striano_combat"
                        L9_2 = L9_2[L10_2]
                        L10_2 = L9_2
                        L9_2 = L9_2.submexType
                        L11_2 = "You found the keys, take the vehicle back on marker."
                        L9_2(L10_2, L11_2)
                        L9_2 = _ENV
                        L10_2 = "SetVehicleDoorsLocked"
                        L9_2 = L9_2[L10_2]
                        L10_2 = L26_1
                        L11_2 = 1
                        L9_2(L10_2, L11_2)
                        L9_2 = CreateMissionBlip
                        L10_2 = _ENV
                        L11_2 = "vector3"
                        L10_2 = L10_2[L11_2]
                        L11_2 = 2570.611
                        L12_2 = 7881.368
                        L13_2 = 6.808
                        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L10_2(L11_2, L12_2, L13_2)
                        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                        L32_1 = L9_2
                        L9_2 = PlaySoundFrontend
                        L10_2 = -1
                        L11_2 = "1st_Person_Transition"
                        L12_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                        L13_2 = 1
                        L9_2(L10_2, L11_2, L12_2, L13_2)
                      end
                      L9_2 = _ENV
                      L10_2 = "Wait"
                      L9_2 = L9_2[L10_2]
                      L10_2 = 1000
                      L9_2(L10_2)
                    end
                  else
                    L8_2 = L24_1
                    if 4 == L8_2 then
                      L8_2 = _ENV
                      L9_2 = "vector3"
                      L8_2 = L8_2[L9_2]
                      L9_2 = 2570.611
                      L10_2 = 7881.368
                      L11_2 = 7.808
                      L8_2 = L8_2(L9_2, L10_2, L11_2)
                      L9_2 = GetEntityCoords
                      L10_2 = player
                      L9_2 = L9_2(L10_2)
                      L9_2 = L9_2 - L8_2
                      L9_2 = #L9_2
                      if L9_2 >= 3.0 then
                        L9_2 = DrawMarker
                        L10_2 = 1
                        L11_2 = L8_2.x
                        L12_2 = L8_2.y
                        L13_2 = L8_2.z
                        L13_2 = L13_2 - 1.0
                        L14_2 = 0.0
                        L15_2 = 0.0
                        L16_2 = 0.0
                        L17_2 = 0
                        L18_2 = 0.0
                        L19_2 = 0.0
                        L20_2 = L0_2 / 2
                        L21_2 = L1_2
                        L22_2 = L2_2
                        L23_2 = false
                        L24_2 = true
                        L25_2 = 2
                        L26_2 = false
                        L27_2 = false
                        L28_2 = false
                        L29_2 = false
                        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                      end
                      L9_2 = GetEntityCoords
                      L10_2 = player
                      L9_2 = L9_2(L10_2)
                      L9_2 = L9_2 - L8_2
                      L9_2 = #L9_2
                      if L9_2 < 3.0 then
                        L9_2 = IsPedHuman
                        L10_2 = L4_2
                        L9_2 = L9_2(L10_2)
                        if L9_2 then
                          L9_2 = DrawMarker
                          L10_2 = 0
                          L11_2 = L8_2
                          L12_2 = 0.0
                          L13_2 = 0.0
                          L14_2 = 0.0
                          L15_2 = 0
                          L16_2 = 0.0
                          L17_2 = 0.0
                          L18_2 = 0.2
                          L19_2 = 0.2
                          L20_2 = 0.3
                          L21_2 = L1_2
                          L22_2 = L2_2
                          L23_2 = true
                          L24_2 = true
                          L25_2 = 2
                          L26_2 = false
                          L27_2 = false
                          L28_2 = false
                          L29_2 = false
                          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                          L9_2 = GetEntityCoords
                          L10_2 = player
                          L9_2 = L9_2(L10_2)
                          L9_2 = L9_2 - L8_2
                          L9_2 = #L9_2
                          L10_2 = 2.5
                          if L9_2 < L10_2 then
                            L10_2 = _ENV
                            L11_2 = "IsPedInAnyVehicle"
                            L10_2 = L10_2[L11_2]
                            L11_2 = L4_2
                            L10_2 = L10_2(L11_2)
                            if L10_2 then
                              L10_2 = _ENV
                              L11_2 = "GetVehiclePedIsIn"
                              L10_2 = L10_2[L11_2]
                              L11_2 = L4_2
                              L12_2 = false
                              L10_2 = L10_2(L11_2, L12_2)
                              L11_2 = L26_1
                              if L10_2 == L11_2 then
                                L11_2 = _ENV
                                L12_2 = "GetVehicleEngineHealth"
                                L11_2 = L11_2[L12_2]
                                L12_2 = L10_2
                                L11_2 = L11_2(L12_2)
                                L12_2 = 800.0
                                if L11_2 >= L12_2 then
                                  L11_2 = _ENV
                                  L12_2 = "exports"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = "striano_combat"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = L11_2
                                  L11_2 = L11_2.submex
                                  L13_2 = ""
                                  L11_2(L12_2, L13_2)
                                  L11_2 = MissioneSurv
                                  L11_2 = L11_2 + 1
                                  MissioneSurv = L11_2
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "esx_Pharmacy:setVarDB"
                                  L13_2 = "mytutorial"
                                  L14_2 = MissioneSurv
                                  L11_2(L12_2, L13_2, L14_2)
                                  L11_2 = DelMissionBlip
                                  L11_2()
                                  L11_2 = AnnullaIncaricoSub
                                  L11_2()
                                  L11_2 = false
                                  L23_1 = L11_2
                                  L11_2 = 0
                                  L22_1 = L11_2
                                  L11_2 = _ENV
                                  L12_2 = "ExecuteCommand"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = "shakeoff"
                                  L11_2(L12_2)
                                  L11_2 = L28_1
                                  if L11_2 then
                                    L11_2 = DoesEntityExist
                                    L12_2 = L28_1
                                    L11_2 = L11_2(L12_2)
                                    if L11_2 then
                                      L11_2 = _ENV
                                      L12_2 = "SetEntityAsMissionEntity"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L28_1
                                      L13_2 = true
                                      L11_2(L12_2, L13_2)
                                      L11_2 = _ENV
                                      L12_2 = "DeleteEntity"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L28_1
                                      L11_2(L12_2)
                                      L11_2 = nil
                                      L28_1 = L11_2
                                    end
                                  end
                                  L11_2 = L26_1
                                  if L11_2 then
                                    L11_2 = DoesEntityExist
                                    L12_2 = L26_1
                                    L11_2 = L11_2(L12_2)
                                    if L11_2 then
                                      L11_2 = _ENV
                                      L12_2 = "SetEntityAsMissionEntity"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L26_1
                                      L13_2 = true
                                      L11_2(L12_2, L13_2)
                                      L11_2 = _ENV
                                      L12_2 = "DeleteEntity"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L26_1
                                      L11_2(L12_2)
                                      L11_2 = nil
                                      L26_1 = L11_2
                                    end
                                  end
                                  L11_2 = L27_1
                                  if L11_2 then
                                    L11_2 = _ENV
                                    L12_2 = "DoesBlipExist"
                                    L11_2 = L11_2[L12_2]
                                    L12_2 = L27_1
                                    L11_2 = L11_2(L12_2)
                                    if L11_2 then
                                      L11_2 = _ENV
                                      L12_2 = "SetBlipRoute"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L27_1
                                      L13_2 = false
                                      L11_2(L12_2, L13_2)
                                      L11_2 = _ENV
                                      L12_2 = "RemoveBlip"
                                      L11_2 = L11_2[L12_2]
                                      L12_2 = L27_1
                                      L11_2(L12_2)
                                      L11_2 = nil
                                      L27_1 = L11_2
                                    end
                                  end
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "moneta"
                                  L16_2 = 155
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "steel"
                                  L16_2 = 1
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "wood"
                                  L16_2 = 5
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "tomato_seed"
                                  L16_2 = 3
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "fert"
                                  L16_2 = 3
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                  L11_2 = _ENV
                                  L12_2 = "Wait"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = 1000
                                  L11_2(L12_2)
                                  L11_2 = TriggerServerEvent
                                  L12_2 = "inv3d:giveItem"
                                  L13_2 = GetPlayerServerId
                                  L14_2 = PlayerId
                                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L14_2()
                                  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                  L14_2 = "player"
                                  L15_2 = "plastic"
                                  L16_2 = 3
                                  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
                                else
                                  L11_2 = _ENV
                                  L12_2 = "exports"
                                  L11_2 = L11_2[L12_2]
                                  L12_2 = "striano_combat"
                                  L11_2 = L11_2[L12_2]
                                  L13_2 = "submexError"
                                  L12_2 = L11_2
                                  L11_2 = L11_2[L13_2]
                                  L13_2 = "Vehicle too much damaged, quest failed."
                                  L11_2(L12_2, L13_2)
                                  L11_2 = AnnullaIncaricoSub
                                  L11_2()
                                end
                              else
                                L11_2 = _ENV
                                L12_2 = "exports"
                                L11_2 = L11_2[L12_2]
                                L12_2 = "striano_combat"
                                L11_2 = L11_2[L12_2]
                                L13_2 = "submexError"
                                L12_2 = L11_2
                                L11_2 = L11_2[L13_2]
                                L13_2 = "Not the correct vehicle, quest failed."
                                L11_2(L12_2, L13_2)
                                L11_2 = AnnullaIncaricoSub
                                L11_2()
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
          elseif -35 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 1468.684
              L10_2 = 7299.648
              L11_2 = 13.999
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = GetEntityCoords
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 5.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2 / 2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = GetEntityCoords
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = L0_2
                L19_2 = L1_2
                L20_2 = L2_2
                L21_2 = true
                L22_2 = true
                L23_2 = 2
                L24_2 = false
                L25_2 = false
                L26_2 = false
                L27_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.2
                if L9_2 < L10_2 then
                  L10_2 = IsPedHuman
                  L11_2 = L4_2
                  L10_2 = L10_2(L11_2)
                  if L10_2 then
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L11_2 = L10_2
                    L10_2 = L10_2.submexType
                    L12_2 = "Find the bush for Eteris."
                    L10_2(L11_2, L12_2)
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "1st_Person_Transition"
                    L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                    L14_2 = 1
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                  end
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = _ENV
                L9_2 = "vector3"
                L8_2 = L8_2[L9_2]
                L9_2 = 1224.514
                L10_2 = 7440.327
                L11_2 = 7.974
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 5.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
                L9_2 = GetEntityCoords
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L6_2 > L9_2 then
                  L9_2 = IsPedHuman
                  L10_2 = L4_2
                  L9_2 = L9_2(L10_2)
                  if L9_2 then
                    L9_2 = DrawMarker
                    L10_2 = 0
                    L11_2 = L8_2
                    L12_2 = 0.0
                    L13_2 = 0.0
                    L14_2 = 0.0
                    L15_2 = 0
                    L16_2 = 0.0
                    L17_2 = 0.0
                    L18_2 = L0_2
                    L19_2 = L1_2
                    L20_2 = L2_2
                    L21_2 = true
                    L22_2 = true
                    L23_2 = 2
                    L24_2 = false
                    L25_2 = false
                    L26_2 = false
                    L27_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    L10_2 = 1.2
                    if L9_2 < L10_2 then
                      L10_2 = L24_1
                      L10_2 = L10_2 + 1
                      L24_1 = L10_2
                      L10_2 = _ENV
                      L11_2 = "exports"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "striano_combat"
                      L10_2 = L10_2[L11_2]
                      L11_2 = L10_2
                      L10_2 = L10_2.submexType
                      L12_2 = "Go on, this is the right zone."
                      L10_2(L11_2, L12_2)
                      L10_2 = PlaySoundFrontend
                      L11_2 = -1
                      L12_2 = "1st_Person_Transition"
                      L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                      L14_2 = 1
                      L10_2(L11_2, L12_2, L13_2, L14_2)
                    end
                  end
                end
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = _ENV
                  L9_2 = "vector3"
                  L8_2 = L8_2[L9_2]
                  L9_2 = 1190.748
                  L10_2 = 7459.699
                  L11_2 = 10.552
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if L6_2 > L9_2 then
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    if L9_2 >= 5.0 then
                      L9_2 = DrawMarker
                      L10_2 = 1
                      L11_2 = L8_2.x
                      L12_2 = L8_2.y
                      L13_2 = L8_2.z
                      L13_2 = L13_2 - 1.0
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = 0.0
                      L17_2 = 0
                      L18_2 = 0.0
                      L19_2 = 0.0
                      L20_2 = L0_2
                      L21_2 = L1_2
                      L22_2 = L2_2
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = false
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    end
                  end
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  if not (L6_2 > L9_2) then
                    goto lbl_8782
                  end
                  L9_2 = IsPedHuman
                  L10_2 = L4_2
                  L9_2 = L9_2(L10_2)
                  if not L9_2 then
                    goto lbl_8782
                  end
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = L0_2
                  L19_2 = L1_2
                  L20_2 = L2_2
                  L21_2 = true
                  L22_2 = true
                  L23_2 = 2
                  L24_2 = false
                  L25_2 = false
                  L26_2 = false
                  L27_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                  L9_2 = GetEntityCoords
                  L10_2 = player
                  L9_2 = L9_2(L10_2)
                  L9_2 = L9_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 1.5
                  if not (L9_2 < L10_2) then
                    goto lbl_8782
                  end
                  L10_2 = L24_1
                  L10_2 = L10_2 + 1
                  L24_1 = L10_2
                  L10_2 = PlaySoundFrontend
                  L11_2 = -1
                  L12_2 = "1st_Person_Transition"
                  L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                  L14_2 = 1
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                  L10_2 = _ENV
                  L11_2 = "vector3"
                  L10_2 = L10_2[L11_2]
                  L11_2 = 1152.583
                  L12_2 = 7463.802
                  L13_2 = 10.981
                  L10_2 = L10_2(L11_2, L12_2, L13_2)
                  L11_2 = "ig_orleans"
                  L12_2 = _ENV
                  L13_2 = "RequestModelStriano"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L11_2
                  L12_2(L13_2)
                  L12_2 = _ENV
                  L13_2 = "CreatePed"
                  L12_2 = L12_2[L13_2]
                  L13_2 = 1
                  L14_2 = _ENV
                  L15_2 = "GetHashKey"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L11_2
                  L14_2 = L14_2(L15_2)
                  L15_2 = L10_2.x
                  L16_2 = L10_2.y
                  L17_2 = L10_2.z
                  L18_2 = 30.0
                  L19_2 = true
                  L20_2 = false
                  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                  L26_1 = L12_2
                  L12_2 = _ENV
                  L13_2 = "SetEntityVisible"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L14_2 = false
                  L12_2(L13_2, L14_2)
                  L12_2 = L26_1
                  while true do
                    L13_2 = DoesEntityExist
                    L14_2 = L12_2
                    L13_2 = L13_2(L14_2)
                    if L13_2 then
                      break
                    end
                    L13_2 = _ENV
                    L14_2 = "Wait"
                    L13_2 = L13_2[L14_2]
                    L14_2 = 0
                    L13_2(L14_2)
                  end
                  L13_2 = _ENV
                  L14_2 = "SetPedMute"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L13_2(L14_2)
                  L13_2 = _ENV
                  L14_2 = "CanPedSpeak"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L16_2 = 0
                  L13_2(L14_2, L15_2, L16_2)
                  L13_2 = _ENV
                  L14_2 = "StopPedSpeaking"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "DisablePedPainAudio"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = true
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetPedFleeAttributes"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = 0
                  L16_2 = 0
                  L13_2(L14_2, L15_2, L16_2)
                  L13_2 = _ENV
                  L14_2 = "SetPedDropsWeaponsWhenDead"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetPedDiesWhenInjured"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetEntityInvincible"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = true
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetBlockingOfNonTemporaryEvents"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = true
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetPedCanRagdollFromPlayerImpact"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetEntityAsMissionEntity"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = true
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetPedCanBeTargetted"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "SetEntityAlpha"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = 254
                  L13_2(L14_2, L15_2)
                  L13_2 = _ENV
                  L14_2 = "Wait"
                  L13_2 = L13_2[L14_2]
                  L14_2 = 25
                  L13_2(L14_2)
                  L13_2 = SetEntityCoords
                  L14_2 = L12_2
                  L15_2 = L10_2.x
                  L16_2 = L10_2.y
                  L17_2 = L10_2.z
                  L13_2(L14_2, L15_2, L16_2, L17_2)
                  L13_2 = _ENV
                  L14_2 = "SetEntityHeading"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2
                  L15_2 = 80.0
                  L13_2(L14_2, L15_2)
                  L13_2 = "missexile3"
                  L14_2 = "ex03_train_roof_idle"
                  L15_2 = _ENV
                  L16_2 = "IsEntityPlayingAnim"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L26_1
                  L17_2 = L13_2
                  L18_2 = L14_2
                  L19_2 = 1
                  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                  if not L15_2 then
                    L15_2 = _ENV
                    L16_2 = "HasAnimDictLoaded"
                    L15_2 = L15_2[L16_2]
                    L16_2 = L13_2
                    L15_2 = L15_2(L16_2)
                    if not L15_2 then
                      L15_2 = _ENV
                      L16_2 = "RequestAnimDict"
                      L15_2 = L15_2[L16_2]
                      L16_2 = L13_2
                      L15_2(L16_2)
                      while true do
                        L15_2 = _ENV
                        L16_2 = "HasAnimDictLoaded"
                        L15_2 = L15_2[L16_2]
                        L16_2 = L13_2
                        L15_2 = L15_2(L16_2)
                        if L15_2 then
                          break
                        end
                        L15_2 = _ENV
                        L16_2 = "Wait"
                        L15_2 = L15_2[L16_2]
                        L16_2 = 10
                        L15_2(L16_2)
                      end
                    end
                    L15_2 = _ENV
                    L16_2 = "TaskPlayAnim"
                    L15_2 = L15_2[L16_2]
                    L16_2 = L26_1
                    L17_2 = L13_2
                    L18_2 = L14_2
                    L19_2 = 3.0
                    L20_2 = 3.0
                    L21_2 = -1
                    L22_2 = 1
                    L23_2 = 0
                    L24_2 = 0
                    L25_2 = 0
                    L26_2 = 0
                    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
                  end
                  L15_2 = _ENV
                  L16_2 = "Wait"
                  L15_2 = L15_2[L16_2]
                  L16_2 = 250
                  L15_2(L16_2)
                  L15_2 = _ENV
                  L16_2 = "SetEntityVisible"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L26_1
                  L17_2 = true
                  L15_2(L16_2, L17_2)
                else
                  L8_2 = L24_1
                  if 3 == L8_2 then
                    L8_2 = _ENV
                    L9_2 = "vector3"
                    L8_2 = L8_2[L9_2]
                    L9_2 = 1164.497
                    L10_2 = 7462.638
                    L11_2 = 11.932
                    L8_2 = L8_2(L9_2, L10_2, L11_2)
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    if L9_2 >= 4.0 then
                      L9_2 = DrawMarker
                      L10_2 = 1
                      L11_2 = L8_2.x
                      L12_2 = L8_2.y
                      L13_2 = L8_2.z
                      L13_2 = L13_2 - 1.0
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = 0.0
                      L17_2 = 0
                      L18_2 = 0.0
                      L19_2 = 0.0
                      L20_2 = L0_2
                      L21_2 = L1_2
                      L22_2 = L2_2
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = false
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    end
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    if not (L9_2 < 4.0) then
                      goto lbl_8782
                    end
                    L9_2 = IsPedHuman
                    L10_2 = L4_2
                    L9_2 = L9_2(L10_2)
                    if not L9_2 then
                      goto lbl_8782
                    end
                    L9_2 = DrawMarker
                    L10_2 = 0
                    L11_2 = L8_2
                    L12_2 = 0.0
                    L13_2 = 0.0
                    L14_2 = 0.0
                    L15_2 = 0
                    L16_2 = 0.0
                    L17_2 = 0.0
                    L18_2 = 0.2
                    L19_2 = 0.2
                    L20_2 = 0.3
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = true
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    L9_2 = GetEntityCoords
                    L10_2 = player
                    L9_2 = L9_2(L10_2)
                    L9_2 = L9_2 - L8_2
                    L9_2 = #L9_2
                    L10_2 = 3.5
                    if not (L9_2 < L10_2) then
                      goto lbl_8782
                    end
                    L10_2 = IsPedHuman
                    L11_2 = L4_2
                    L10_2 = L10_2(L11_2)
                    if not L10_2 then
                      goto lbl_8782
                    end
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "e oddio3"
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 3000
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ClearPedTasks"
                    L10_2 = L10_2[L11_2]
                    L11_2 = L26_1
                    L10_2(L11_2)
                    L10_2 = "anim@mp_fm_event@intro"
                    L11_2 = "beast_transform"
                    L12_2 = _ENV
                    L13_2 = "IsEntityPlayingAnim"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L26_1
                    L14_2 = L10_2
                    L15_2 = L11_2
                    L16_2 = 1
                    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
                    if not L12_2 then
                      L12_2 = _ENV
                      L13_2 = "HasAnimDictLoaded"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L10_2
                      L12_2 = L12_2(L13_2)
                      if not L12_2 then
                        L12_2 = _ENV
                        L13_2 = "RequestAnimDict"
                        L12_2 = L12_2[L13_2]
                        L13_2 = L10_2
                        L12_2(L13_2)
                        while true do
                          L12_2 = _ENV
                          L13_2 = "HasAnimDictLoaded"
                          L12_2 = L12_2[L13_2]
                          L13_2 = L10_2
                          L12_2 = L12_2(L13_2)
                          if L12_2 then
                            break
                          end
                          L12_2 = _ENV
                          L13_2 = "Wait"
                          L12_2 = L12_2[L13_2]
                          L13_2 = 10
                          L12_2(L13_2)
                        end
                      end
                      L12_2 = _ENV
                      L13_2 = "TaskPlayAnim"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L26_1
                      L14_2 = L10_2
                      L15_2 = L11_2
                      L16_2 = 3.0
                      L17_2 = 3.0
                      L18_2 = 4900
                      L19_2 = 1
                      L20_2 = 0
                      L21_2 = 0
                      L22_2 = 0
                      L23_2 = 0
                      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                    end
                    L12_2 = _ENV
                    L13_2 = "Wait"
                    L12_2 = L12_2[L13_2]
                    L13_2 = 900
                    L12_2(L13_2)
                    L12_2 = _ENV
                    L13_2 = "exports"
                    L12_2 = L12_2[L13_2]
                    L13_2 = "striano_combat"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L12_2
                    L12_2 = L12_2.submexType
                    L14_2 = "Something is wrong here..."
                    L12_2(L13_2, L14_2)
                    L12_2 = _ENV
                    L13_2 = "Wait"
                    L12_2 = L12_2[L13_2]
                    L13_2 = 2500
                    L12_2(L13_2)
                    L12_2 = _ENV
                    L13_2 = "ClearPedTasks"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L26_1
                    L12_2(L13_2)
                    L12_2 = "melee@wfire@beast_werewolf_animset"
                    L13_2 = "wfire_wmg_werewolf_beast_forward_sprint_anim"
                    L14_2 = _ENV
                    L15_2 = "HasAnimDictLoaded"
                    L14_2 = L14_2[L15_2]
                    L15_2 = L12_2
                    L14_2 = L14_2(L15_2)
                    if not L14_2 then
                      L14_2 = _ENV
                      L15_2 = "RequestAnimDict"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L12_2
                      L14_2(L15_2)
                      while true do
                        L14_2 = _ENV
                        L15_2 = "HasAnimDictLoaded"
                        L14_2 = L14_2[L15_2]
                        L15_2 = L12_2
                        L14_2 = L14_2(L15_2)
                        if L14_2 then
                          break
                        end
                        L14_2 = _ENV
                        L15_2 = "Wait"
                        L14_2 = L14_2[L15_2]
                        L15_2 = 10
                        L14_2(L15_2)
                      end
                    end
                    L14_2 = _ENV
                    L15_2 = "TaskPlayAnim"
                    L14_2 = L14_2[L15_2]
                    L15_2 = L26_1
                    L16_2 = L12_2
                    L17_2 = L13_2
                    L18_2 = 3.0
                    L19_2 = 3.0
                    L20_2 = -1
                    L21_2 = 1
                    L22_2 = 0
                    L23_2 = 0
                    L24_2 = 0
                    L25_2 = 0
                    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
                    L14_2 = false
                    L15_2 = _ENV
                    L16_2 = "CreateThread"
                    L15_2 = L15_2[L16_2]
                    function L16_2()
                      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
                      while true do
                        L0_3 = DoesEntityExist
                        L1_3 = L26_1
                        L0_3 = L0_3(L1_3)
                        if not L0_3 then
                          break
                        end
                        L0_3 = makeEntityFaceEntity
                        L1_3 = L26_1
                        L2_3 = L4_2
                        L0_3(L1_3, L2_3)
                        L0_3 = GetEntityCoords
                        L1_3 = L4_2
                        L0_3 = L0_3(L1_3)
                        L1_3 = GetEntityCoords
                        L2_3 = L26_1
                        L1_3 = L1_3(L2_3)
                        L0_3 = L0_3 - L1_3
                        L0_3 = #L0_3
                        L1_3 = 1.5
                        if L0_3 < L1_3 then
                          L0_3 = IsPedFatallyInjured
                          L1_3 = L4_2
                          L0_3 = L0_3(L1_3)
                          if not L0_3 then
                            L0_3 = SetPedToRagdollWithFall
                            L1_3 = L26_1
                            L2_3 = 1650
                            L3_3 = 1650
                            L4_3 = 1
                            L5_3 = GetEntityForwardVector
                            L6_3 = L26_1
                            L5_3 = L5_3(L6_3)
                            L6_3 = 2.0
                            L7_3 = 0.0
                            L8_3 = 0.0
                            L9_3 = 0.0
                            L10_3 = 0.0
                            L11_3 = 0.0
                            L12_3 = 0.0
                            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L0_3 = SetPedToRagdollWithFall
                            L1_3 = L4_2
                            L2_3 = 1650
                            L3_3 = 1650
                            L4_3 = 1
                            L5_3 = GetEntityForwardVector
                            L6_3 = L4_2
                            L5_3 = L5_3(L6_3)
                            L6_3 = 2.0
                            L7_3 = 0.0
                            L8_3 = 0.0
                            L9_3 = 0.0
                            L10_3 = 0.0
                            L11_3 = 0.0
                            L12_3 = 0.0
                            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L0_3 = exports
                            L0_3 = L0_3.striano_combat
                            L1_3 = L0_3
                            L0_3 = L0_3.submexType
                            L2_3 = "Quest failed!"
                            L0_3(L1_3, L2_3)
                            L0_3 = true
                            L14_2 = L0_3
                            L0_3 = AnnullaIncaricoSub
                            L0_3()
                            L0_3 = Wait
                            L1_3 = 9000
                            L0_3(L1_3)
                            return
                          end
                        end
                        L0_3 = Wait
                        L1_3 = 75
                        L0_3(L1_3)
                      end
                    end
                    L15_2(L16_2)
                    if not L14_2 then
                      L15_2 = _ENV
                      L16_2 = "exports"
                      L15_2 = L15_2[L16_2]
                      L16_2 = "striano_combat"
                      L15_2 = L15_2[L16_2]
                      L17_2 = "submexType"
                      L16_2 = L15_2
                      L15_2 = L15_2[L17_2]
                      L17_2 = "Run away!"
                      L15_2(L16_2, L17_2)
                      L15_2 = _ENV
                      L16_2 = "Wait"
                      L15_2 = L15_2[L16_2]
                      L16_2 = 2000
                      L15_2(L16_2)
                      L15_2 = L24_1
                      L15_2 = L15_2 + 1
                      L24_1 = L15_2
                    end
                  else
                    L8_2 = L24_1
                    if 4 == L8_2 then
                      L8_2 = _ENV
                      L9_2 = "vector3"
                      L8_2 = L8_2[L9_2]
                      L9_2 = 1206.481
                      L10_2 = 7468.678
                      L11_2 = 10.066
                      L8_2 = L8_2(L9_2, L10_2, L11_2)
                      L9_2 = _ENV
                      L10_2 = "GetEntityCoords"
                      L9_2 = L9_2[L10_2]
                      L10_2 = player
                      L9_2 = L9_2(L10_2)
                      L9_2 = L9_2 - L8_2
                      L9_2 = #L9_2
                      if L6_2 > L9_2 then
                        L9_2 = _ENV
                        L10_2 = "GetEntityCoords"
                        L9_2 = L9_2[L10_2]
                        L10_2 = player
                        L9_2 = L9_2(L10_2)
                        L9_2 = L9_2 - L8_2
                        L9_2 = #L9_2
                        if L9_2 >= 5.0 then
                          L9_2 = DrawMarker
                          L10_2 = 1
                          L11_2 = L8_2.x
                          L12_2 = L8_2.y
                          L13_2 = L8_2.z
                          L13_2 = L13_2 - 1.0
                          L14_2 = 0.0
                          L15_2 = 0.0
                          L16_2 = 0.0
                          L17_2 = 0
                          L18_2 = 0.0
                          L19_2 = 0.0
                          L20_2 = L0_2
                          L21_2 = L1_2
                          L22_2 = L2_2
                          L23_2 = false
                          L24_2 = true
                          L25_2 = 2
                          L26_2 = false
                          L27_2 = false
                          L28_2 = false
                          L29_2 = false
                          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                        end
                      end
                      L9_2 = _ENV
                      L10_2 = "GetEntityCoords"
                      L9_2 = L9_2[L10_2]
                      L10_2 = player
                      L9_2 = L9_2(L10_2)
                      L9_2 = L9_2 - L8_2
                      L9_2 = #L9_2
                      if L6_2 > L9_2 then
                        L9_2 = IsPedHuman
                        L10_2 = L4_2
                        L9_2 = L9_2(L10_2)
                        if L9_2 then
                          L9_2 = DrawMarker
                          L10_2 = 0
                          L11_2 = L8_2
                          L12_2 = 0.0
                          L13_2 = 0.0
                          L14_2 = 0.0
                          L15_2 = 0
                          L16_2 = 0.0
                          L17_2 = 0.0
                          L18_2 = L0_2
                          L19_2 = L1_2
                          L20_2 = L2_2
                          L21_2 = true
                          L22_2 = true
                          L23_2 = 2
                          L24_2 = false
                          L25_2 = false
                          L26_2 = false
                          L27_2 = false
                          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                          L9_2 = _ENV
                          L10_2 = "GetEntityCoords"
                          L9_2 = L9_2[L10_2]
                          L10_2 = player
                          L9_2 = L9_2(L10_2)
                          L9_2 = L9_2 - L8_2
                          L9_2 = #L9_2
                          L10_2 = 3.5
                          if L9_2 < L10_2 then
                            L10_2 = L24_1
                            L10_2 = L10_2 + 1
                            L24_1 = L10_2
                            L10_2 = PlaySoundFrontend
                            L11_2 = -1
                            L12_2 = "1st_Person_Transition"
                            L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                            L14_2 = 1
                            L10_2(L11_2, L12_2, L13_2, L14_2)
                          end
                        end
                      end
                    else
                      L8_2 = L24_1
                      if 5 == L8_2 then
                        L8_2 = _ENV
                        L9_2 = "vector3"
                        L8_2 = L8_2[L9_2]
                        L9_2 = 1225.365
                        L10_2 = 7470.579
                        L11_2 = 13.292
                        L8_2 = L8_2(L9_2, L10_2, L11_2)
                        L9_2 = _ENV
                        L10_2 = "GetEntityCoords"
                        L9_2 = L9_2[L10_2]
                        L10_2 = player
                        L9_2 = L9_2(L10_2)
                        L9_2 = L9_2 - L8_2
                        L9_2 = #L9_2
                        if L6_2 > L9_2 then
                          L9_2 = _ENV
                          L10_2 = "GetEntityCoords"
                          L9_2 = L9_2[L10_2]
                          L10_2 = player
                          L9_2 = L9_2(L10_2)
                          L9_2 = L9_2 - L8_2
                          L9_2 = #L9_2
                          if L9_2 >= 5.0 then
                            L9_2 = DrawMarker
                            L10_2 = 1
                            L11_2 = L8_2.x
                            L12_2 = L8_2.y
                            L13_2 = L8_2.z
                            L13_2 = L13_2 - 1.0
                            L14_2 = 0.0
                            L15_2 = 0.0
                            L16_2 = 0.0
                            L17_2 = 0
                            L18_2 = 0.0
                            L19_2 = 0.0
                            L20_2 = L0_2
                            L21_2 = L1_2
                            L22_2 = L2_2
                            L23_2 = false
                            L24_2 = true
                            L25_2 = 2
                            L26_2 = false
                            L27_2 = false
                            L28_2 = false
                            L29_2 = false
                            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                          end
                        end
                        L9_2 = _ENV
                        L10_2 = "GetEntityCoords"
                        L9_2 = L9_2[L10_2]
                        L10_2 = player
                        L9_2 = L9_2(L10_2)
                        L9_2 = L9_2 - L8_2
                        L9_2 = #L9_2
                        if L6_2 > L9_2 then
                          L9_2 = IsPedHuman
                          L10_2 = L4_2
                          L9_2 = L9_2(L10_2)
                          if L9_2 then
                            L9_2 = DrawMarker
                            L10_2 = 0
                            L11_2 = L8_2
                            L12_2 = 0.0
                            L13_2 = 0.0
                            L14_2 = 0.0
                            L15_2 = 0
                            L16_2 = 0.0
                            L17_2 = 0.0
                            L18_2 = L0_2
                            L19_2 = L1_2
                            L20_2 = L2_2
                            L21_2 = true
                            L22_2 = true
                            L23_2 = 2
                            L24_2 = false
                            L25_2 = false
                            L26_2 = false
                            L27_2 = false
                            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                            L9_2 = _ENV
                            L10_2 = "GetEntityCoords"
                            L9_2 = L9_2[L10_2]
                            L10_2 = player
                            L9_2 = L9_2(L10_2)
                            L9_2 = L9_2 - L8_2
                            L9_2 = #L9_2
                            L10_2 = 3.5
                            if L9_2 < L10_2 then
                              L10_2 = L24_1
                              L10_2 = L10_2 + 1
                              L24_1 = L10_2
                              L10_2 = _ENV
                              L11_2 = "exports"
                              L10_2 = L10_2[L11_2]
                              L11_2 = "striano_combat"
                              L10_2 = L10_2[L11_2]
                              L12_2 = "submexType"
                              L11_2 = L10_2
                              L10_2 = L10_2[L12_2]
                              L12_2 = "Jump in water, is better!"
                              L10_2(L11_2, L12_2)
                              L10_2 = PlaySoundFrontend
                              L11_2 = -1
                              L12_2 = "1st_Person_Transition"
                              L13_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
                              L14_2 = 1
                              L10_2(L11_2, L12_2, L13_2, L14_2)
                              L10_2 = false
                              L23_1 = L10_2
                              L10_2 = 0
                              L22_1 = L10_2
                            end
                          end
                        end
                      else
                        L8_2 = L24_1
                        if 6 == L8_2 then
                          L8_2 = _ENV
                          L9_2 = "vector3"
                          L8_2 = L8_2[L9_2]
                          L9_2 = 1261.012
                          L10_2 = 7481.889
                          L11_2 = -0.262
                          L8_2 = L8_2(L9_2, L10_2, L11_2)
                          L9_2 = _ENV
                          L10_2 = "GetEntityCoords"
                          L9_2 = L9_2[L10_2]
                          L10_2 = player
                          L9_2 = L9_2(L10_2)
                          L9_2 = L9_2 - L8_2
                          L9_2 = #L9_2
                          if L6_2 > L9_2 then
                            L9_2 = _ENV
                            L10_2 = "GetEntityCoords"
                            L9_2 = L9_2[L10_2]
                            L10_2 = player
                            L9_2 = L9_2(L10_2)
                            L9_2 = L9_2 - L8_2
                            L9_2 = #L9_2
                            if L9_2 >= 10.0 then
                              L9_2 = DrawMarker
                              L10_2 = 1
                              L11_2 = L8_2.x
                              L12_2 = L8_2.y
                              L13_2 = L8_2.z
                              L13_2 = L13_2 - 1.0
                              L14_2 = 0.0
                              L15_2 = 0.0
                              L16_2 = 0.0
                              L17_2 = 0
                              L18_2 = 0.0
                              L19_2 = 0.0
                              L20_2 = L0_2
                              L21_2 = L1_2
                              L22_2 = L2_2
                              L23_2 = false
                              L24_2 = true
                              L25_2 = 2
                              L26_2 = false
                              L27_2 = false
                              L28_2 = false
                              L29_2 = false
                              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                            end
                          end
                          L9_2 = _ENV
                          L10_2 = "GetEntityCoords"
                          L9_2 = L9_2[L10_2]
                          L10_2 = player
                          L9_2 = L9_2(L10_2)
                          L9_2 = L9_2 - L8_2
                          L9_2 = #L9_2
                          if L9_2 < 10.0 then
                            L9_2 = IsPedHuman
                            L10_2 = L4_2
                            L9_2 = L9_2(L10_2)
                            if L9_2 then
                              L9_2 = DrawMarker
                              L10_2 = 0
                              L11_2 = L8_2
                              L12_2 = 0.0
                              L13_2 = 0.0
                              L14_2 = 0.0
                              L15_2 = 0
                              L16_2 = 0.0
                              L17_2 = 0.0
                              L18_2 = L0_2
                              L19_2 = L1_2
                              L20_2 = L2_2
                              L21_2 = true
                              L22_2 = true
                              L23_2 = 2
                              L24_2 = false
                              L25_2 = false
                              L26_2 = false
                              L27_2 = false
                              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
                              L9_2 = _ENV
                              L10_2 = "GetEntityCoords"
                              L9_2 = L9_2[L10_2]
                              L10_2 = player
                              L9_2 = L9_2(L10_2)
                              L9_2 = L9_2 - L8_2
                              L9_2 = #L9_2
                              L10_2 = 4.5
                              if L9_2 < L10_2 then
                                L10_2 = _ENV
                                L11_2 = "ExecuteCommand"
                                L10_2 = L10_2[L11_2]
                                L11_2 = "clearwaypoints"
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "Wait"
                                L10_2 = L10_2[L11_2]
                                L11_2 = 2500
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "ExecuteCommand"
                                L10_2 = L10_2[L11_2]
                                L11_2 = "e malditesta7"
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "Wait"
                                L10_2 = L10_2[L11_2]
                                L11_2 = 2000
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "ExecuteCommand"
                                L10_2 = L10_2[L11_2]
                                L11_2 = "e c"
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "ExecuteCommand"
                                L10_2 = L10_2[L11_2]
                                L11_2 = "e cc"
                                L10_2(L11_2)
                                L10_2 = _ENV
                                L11_2 = "Wait"
                                L10_2 = L10_2[L11_2]
                                L11_2 = 1500
                                L10_2(L11_2)
                                L10_2 = false
                                L23_1 = L10_2
                                L10_2 = 0
                                L22_1 = L10_2
                                L10_2 = MissioneSurv
                                L10_2 = L10_2 + 1
                                MissioneSurv = L10_2
                                L10_2 = TriggerServerEvent
                                L11_2 = "esx_Pharmacy:setVarDB"
                                L12_2 = "mytutorial"
                                L13_2 = MissioneSurv
                                L10_2(L11_2, L12_2, L13_2)
                                L10_2 = _ENV
                                L11_2 = "Wait"
                                L10_2 = L10_2[L11_2]
                                L11_2 = 1500
                                L10_2(L11_2)
                                L10_2 = TriggerServerEvent
                                L11_2 = "inv3d:giveItem"
                                L12_2 = GetPlayerServerId
                                L13_2 = PlayerId
                                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                L13_2 = "player"
                                L14_2 = "steel"
                                L15_2 = 1
                                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                                L10_2 = _ENV
                                L11_2 = "Wait"
                                L10_2 = L10_2[L11_2]
                                L11_2 = 1000
                                L10_2(L11_2)
                                L10_2 = TriggerServerEvent
                                L11_2 = "inv3d:giveItem"
                                L12_2 = GetPlayerServerId
                                L13_2 = PlayerId
                                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                                L13_2 = "player"
                                L14_2 = "fert"
                                L15_2 = 1
                                L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                                L10_2 = DelMissionBlip
                                L10_2()
                                L10_2 = _ENV
                                L11_2 = "AnnullaIncaricoSub"
                                L10_2 = L10_2[L11_2]
                                L10_2()
                                L10_2 = _ENV
                                L11_2 = "ExecuteCommand"
                                L10_2 = L10_2[L11_2]
                                L11_2 = "e oddio3"
                                L10_2(L11_2)
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
          elseif -34 == L5_2 then
            L8_2 = L24_1
            if 0 ~= L8_2 then
              L8_2 = L24_1
            end
            if 1 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 2912.746
              L10_2 = 7494.929
              L11_2 = 18.023
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = L24_1
                if 0 == L9_2 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = L24_1
                if 0 == L9_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.5
                if not (L9_2 < L10_2) then
                  L10_2 = L24_1
                end
                if 1 == L10_2 then
                  L10_2 = _ENV
                  L11_2 = "exports"
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.striano_inventory
                  L11_2 = L10_2
                  L10_2 = L10_2.HasItem
                  L12_2 = "bush"
                  L13_2 = 10
                  L14_2 = "player"
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                  if not L10_2 then
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = L24_1
                    if 0 == L10_2 then
                      L10_2 = _ENV
                      L11_2 = "exports"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "striano_combat"
                      L10_2 = L10_2[L11_2]
                      L12_2 = "submexType"
                      L11_2 = L10_2
                      L10_2 = L10_2[L12_2]
                      L12_2 = "Take 10 or more bush from this Loot Point, check every 9 seconds."
                      L10_2(L11_2, L12_2)
                      L10_2 = 1
                      L24_1 = L10_2
                      L10_2 = false
                      L23_1 = L10_2
                      L10_2 = 0
                      L22_1 = L10_2
                      L10_2 = _ENV
                      L11_2 = "Wait"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 1500
                      L10_2(L11_2)
                      L10_2 = _ENV
                      L11_2 = "ImpostaTimerMissione"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 120
                      L10_2(L11_2)
                    end
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 9000
                    L10_2(L11_2)
                  else
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "e inciampa"
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "AnnullaIncaricoSub"
                    L10_2 = L10_2[L11_2]
                    L10_2()
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Falling_Crates"
                    L13_2 = "EXILE_1"
                    L14_2 = 1
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = MissioneSurv
                    L10_2 = L10_2 + 1
                    MissioneSurv = L10_2
                    L10_2 = TriggerServerEvent
                    L11_2 = "esx_Pharmacy:setVarDB"
                    L12_2 = "mytutorial"
                    L13_2 = MissioneSurv
                    L10_2(L11_2, L12_2, L13_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Great job, this you will need in next quests. Loot point are automatic, you just need walk in."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "guidaBase"
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "shakeoff"
                    L10_2(L11_2)
                    L10_2 = DelMissionBlip
                    L10_2()
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 2000
                    L10_2(L11_2)
                    L10_2 = TriggerServerEvent
                    L11_2 = "inv3d:giveItem"
                    L12_2 = GetPlayerServerId
                    L13_2 = PlayerId
                    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L13_2 = "player"
                    L14_2 = "moneta"
                    L15_2 = 25
                    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 5000
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "ob"
                    L10_2(L11_2)
                  end
                end
              end
            end
          elseif -33 == L5_2 then
            L8_2 = L24_1
            if 0 ~= L8_2 then
              L8_2 = L24_1
            end
            if 1 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 3074.625
              L10_2 = 7386.431
              L11_2 = 18.88
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = DrawMarker
                L10_2 = 1
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L13_2 = L13_2 - 1.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = L0_2
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = false
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if not (L9_2 < 2.0) then
                  L10_2 = L24_1
                end
                if 1 == L10_2 then
                  L10_2 = _ENV
                  L11_2 = "exports"
                  L10_2 = L10_2[L11_2]
                  L11_2 = "striano_combat"
                  L10_2 = L10_2[L11_2]
                  L12_2 = "getmysword"
                  L11_2 = L10_2
                  L10_2 = L10_2[L12_2]
                  L10_2 = L10_2(L11_2)
                  if 7 == L10_2 then
                    L10_2 = _ENV
                    L11_2 = "AnnullaIncaricoSub"
                    L10_2 = L10_2[L11_2]
                    L10_2()
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Falling_Crates"
                    L13_2 = "EXILE_1"
                    L14_2 = 1
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = MissioneSurv
                    L10_2 = L10_2 + 1
                    MissioneSurv = L10_2
                    L10_2 = TriggerServerEvent
                    L11_2 = "esx_Pharmacy:setVarDB"
                    L12_2 = "mytutorial"
                    L13_2 = MissioneSurv
                    L10_2(L11_2, L12_2, L13_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Great job, this you will need in next quests. Craft point are useful to create new items."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "guidaBase"
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "e posatasca"
                    L10_2(L11_2)
                    L10_2 = DelMissionBlip
                    L10_2()
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 2000
                    L10_2(L11_2)
                    L10_2 = TriggerServerEvent
                    L11_2 = "inv3d:giveItem"
                    L12_2 = GetPlayerServerId
                    L13_2 = PlayerId
                    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L13_2 = "player"
                    L14_2 = "moneta"
                    L15_2 = 25
                    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 3000
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Some items can be merged directly in your Inv 1-1, like: Wood + Bush = Fire Torch."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 9000
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "ob"
                    L10_2(L11_2)
                  else
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = L24_1
                    if 0 == L10_2 then
                      L10_2 = _ENV
                      L11_2 = "exports"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "striano_combat"
                      L10_2 = L10_2[L11_2]
                      L12_2 = "submexType"
                      L11_2 = L10_2
                      L10_2 = L10_2[L12_2]
                      L12_2 = "Craft a Small Axe at this point and Equip as Weapon, check every 9 seconds."
                      L10_2(L11_2, L12_2)
                      L10_2 = 1
                      L24_1 = L10_2
                      L10_2 = false
                      L23_1 = L10_2
                      L10_2 = 0
                      L22_1 = L10_2
                      L10_2 = _ENV
                      L11_2 = "Wait"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 1500
                      L10_2(L11_2)
                      L10_2 = _ENV
                      L11_2 = "ImpostaTimerMissione"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 120
                      L10_2(L11_2)
                    end
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 9000
                    L10_2(L11_2)
                  end
                end
              end
            end
          elseif -32 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 3628.955
              L10_2 = 7398.225
              L11_2 = 9.427
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = DrawMarker
                L10_2 = 1
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L13_2 = L13_2 - 1.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = L0_2
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = false
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.5
                if L9_2 < L10_2 then
                  L10_2 = _ENV
                  L11_2 = "exports"
                  L10_2 = L10_2[L11_2]
                  L11_2 = "striano_combat"
                  L10_2 = L10_2[L11_2]
                  L12_2 = "getmysword"
                  L11_2 = L10_2
                  L10_2 = L10_2[L12_2]
                  L10_2 = L10_2(L11_2)
                  L10_2 = not L10_2
                  if 7 == L10_2 then
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Equip an Axe to start the Lumberjack, check every in 9 seconds."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 9000
                    L10_2(L11_2)
                  else
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Find a Tree and Hit with Axe with combat system."
                    L10_2(L11_2, L12_2)
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                    L10_2 = false
                    L23_1 = L10_2
                    L10_2 = 0
                    L22_1 = L10_2
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 1500
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ImpostaTimerMissione"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 120
                    L10_2(L11_2)
                  end
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = _ENV
                L9_2 = "exports"
                L8_2 = L8_2[L9_2]
                L8_2 = L8_2.striano_editor
                L10_2 = "inWoodTansport"
                L9_2 = L8_2
                L8_2 = L8_2[L10_2]
                L8_2 = L8_2(L9_2)
                if L8_2 then
                  L8_2 = false
                  L23_1 = L8_2
                  L8_2 = 0
                  L22_1 = L8_2
                  L8_2 = _ENV
                  L9_2 = "Wait"
                  L8_2 = L8_2[L9_2]
                  L9_2 = 1500
                  L8_2(L9_2)
                  L8_2 = _ENV
                  L9_2 = "exports"
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.text_guide
                  L9_2 = L8_2
                  L8_2 = L8_2.ClearGuideText
                  L8_2(L9_2)
                  L8_2 = _ENV
                  L9_2 = "exports"
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.text_guide
                  L9_2 = L8_2
                  L8_2 = L8_2.GuidaNascondi
                  L8_2(L9_2)
                  L8_2 = _ENV
                  L9_2 = "exports"
                  L8_2 = L8_2[L9_2]
                  L9_2 = "striano_combat"
                  L8_2 = L8_2[L9_2]
                  L10_2 = "submexType"
                  L9_2 = L8_2
                  L8_2 = L8_2[L10_2]
                  L10_2 = "Cut the wood tree on the Saw to get wood."
                  L8_2(L9_2, L10_2)
                  L8_2 = CreateMissionBlip
                  L9_2 = _ENV
                  L10_2 = "vector3"
                  L9_2 = L9_2[L10_2]
                  L10_2 = 3628.201
                  L11_2 = 7409.876
                  L12_2 = 8.468
                  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L9_2(L10_2, L11_2, L12_2)
                  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                  L32_1 = L8_2
                  L8_2 = L24_1
                  L8_2 = L8_2 + 1
                  L24_1 = L8_2
                else
                  L8_2 = _ENV
                  L9_2 = "Wait"
                  L8_2 = L8_2[L9_2]
                  L9_2 = 9000
                  L8_2(L9_2)
                end
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = _ENV
                  L9_2 = "vector3"
                  L8_2 = L8_2[L9_2]
                  L9_2 = 3628.201
                  L10_2 = 7409.876
                  L11_2 = 9.468
                  L8_2 = L8_2(L9_2, L10_2, L11_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 >= 2.0 then
                    L9_2 = DrawMarker
                    L10_2 = 1
                    L11_2 = L8_2.x
                    L12_2 = L8_2.y
                    L13_2 = L8_2.z
                    L13_2 = L13_2 - 1.0
                    L14_2 = 0.0
                    L15_2 = 0.0
                    L16_2 = 0.0
                    L17_2 = 0
                    L18_2 = 0.0
                    L19_2 = 0.0
                    L20_2 = L0_2
                    L21_2 = L1_2
                    L22_2 = L2_2
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = false
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  if L9_2 < 2.0 then
                    L9_2 = _ENV
                    L10_2 = "exports"
                    L9_2 = L9_2[L10_2]
                    L9_2 = L9_2.text_guide
                    L10_2 = L9_2
                    L9_2 = L9_2.GuidaNascondi
                    L9_2(L10_2)
                    L9_2 = _ENV
                    L10_2 = "AnnullaIncaricoSub"
                    L9_2 = L9_2[L10_2]
                    L9_2()
                    L9_2 = PlaySoundFrontend
                    L10_2 = -1
                    L11_2 = "Falling_Crates"
                    L12_2 = "EXILE_1"
                    L13_2 = 1
                    L9_2(L10_2, L11_2, L12_2, L13_2)
                    L9_2 = MissioneSurv
                    L9_2 = L9_2 + 1
                    MissioneSurv = L9_2
                    L9_2 = TriggerServerEvent
                    L10_2 = "esx_Pharmacy:setVarDB"
                    L11_2 = "mytutorial"
                    L12_2 = MissioneSurv
                    L9_2(L10_2, L11_2, L12_2)
                    L9_2 = _ENV
                    L10_2 = "exports"
                    L9_2 = L9_2[L10_2]
                    L10_2 = "striano_combat"
                    L9_2 = L9_2[L10_2]
                    L11_2 = "submexType"
                    L10_2 = L9_2
                    L9_2 = L9_2[L11_2]
                    L11_2 = "Cut the Tree on the Saw and get the wood in inventory."
                    L9_2(L10_2, L11_2)
                    L9_2 = _ENV
                    L10_2 = "ExecuteCommand"
                    L9_2 = L9_2[L10_2]
                    L10_2 = "guidaBase"
                    L9_2(L10_2)
                    L9_2 = _ENV
                    L10_2 = "ExecuteCommand"
                    L9_2 = L9_2[L10_2]
                    L10_2 = "shakeoff"
                    L9_2(L10_2)
                    L9_2 = DelMissionBlip
                    L9_2()
                    L9_2 = _ENV
                    L10_2 = "Wait"
                    L9_2 = L9_2[L10_2]
                    L10_2 = 2000
                    L9_2(L10_2)
                    L9_2 = TriggerServerEvent
                    L10_2 = "inv3d:giveItem"
                    L11_2 = GetPlayerServerId
                    L12_2 = PlayerId
                    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L12_2()
                    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L12_2 = "player"
                    L13_2 = "moneta"
                    L14_2 = 250
                    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                    L9_2 = _ENV
                    L10_2 = "Wait"
                    L9_2 = L9_2[L10_2]
                    L10_2 = 5000
                    L9_2(L10_2)
                    L9_2 = _ENV
                    L10_2 = "ExecuteCommand"
                    L9_2 = L9_2[L10_2]
                    L10_2 = "ob"
                    L9_2(L10_2)
                  end
                end
              end
            end
          elseif -31 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 3695.513
              L10_2 = 7467.635
              L11_2 = 13.344
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = DrawMarker
                L10_2 = 1
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L13_2 = L13_2 - 1.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = L0_2
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = false
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 1.5
                if L9_2 < L10_2 then
                  L10_2 = _ENV
                  L11_2 = "exports"
                  L10_2 = L10_2[L11_2]
                  L10_2 = L10_2.striano_inventory
                  L11_2 = L10_2
                  L10_2 = L10_2.HasItem
                  L12_2 = "ash"
                  L13_2 = 2
                  L14_2 = "player"
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
                  if not L10_2 then
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.ClearGuideText
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.text_guide
                    L11_2 = L10_2
                    L10_2 = L10_2.GuidaNascondi
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "I need the ashes to create more Eteris... Use the command /ashesa to see it if you need."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.striano_core
                    L12_2 = "gifview"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "https://media.discordapp.net/attachments/1515215321571528755/1515216576146833408/ezgif-6f8a8ea9e53db81f.gif?ex=6a2e32e7&is=6a2ce167&hm=c274c138ae2044f5ede2a6389d52d8f0f3946c434e6ca2b64829ea8ea89f0ca9&=&width=810&height=455"
                    L13_2 = "Tutorial: How to get /ashes."
                    L10_2(L11_2, L12_2, L13_2)
                    L10_2 = CreateMissionBlip
                    L11_2 = _ENV
                    L12_2 = "vector3"
                    L11_2 = L11_2[L12_2]
                    L12_2 = 4457.683
                    L13_2 = 7906.399
                    L14_2 = 2.449
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L32_1 = L10_2
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                  else
                    L10_2 = TriggerServerEvent
                    L11_2 = "inv3d:removeItemByName"
                    L12_2 = "player"
                    L13_2 = "ash"
                    L14_2 = 2
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = _ENV
                    L11_2 = "AnnullaIncaricoSub"
                    L10_2 = L10_2[L11_2]
                    L10_2()
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Falling_Crates"
                    L13_2 = "EXILE_1"
                    L14_2 = 1
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                    L10_2 = MissioneSurv
                    L10_2 = L10_2 + 1
                    MissioneSurv = L10_2
                    L10_2 = TriggerServerEvent
                    L11_2 = "esx_Pharmacy:setVarDB"
                    L12_2 = "mytutorial"
                    L13_2 = MissioneSurv
                    L10_2(L11_2, L12_2, L13_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "Great job, thanks for the ashes."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "guidaBase"
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "shakeoff"
                    L10_2(L11_2)
                    L10_2 = DelMissionBlip
                    L10_2()
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 2000
                    L10_2(L11_2)
                    L10_2 = TriggerServerEvent
                    L11_2 = "inv3d:giveItem"
                    L12_2 = GetPlayerServerId
                    L13_2 = PlayerId
                    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L13_2()
                    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L13_2 = "player"
                    L14_2 = "moneta"
                    L15_2 = 250
                    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                    L10_2 = _ENV
                    L11_2 = "Wait"
                    L10_2 = L10_2[L11_2]
                    L11_2 = 5000
                    L10_2(L11_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "ob"
                    L10_2(L11_2)
                  end
                end
              end
            else
              L8_2 = L24_1
              if 1 == L8_2 then
                L8_2 = _ENV
                L9_2 = "vector3"
                L8_2 = L8_2[L9_2]
                L9_2 = 4457.683
                L10_2 = 7906.399
                L11_2 = 3.449
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 2.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                L10_2 = 2.5
                if L9_2 < L10_2 then
                  L9_2 = DrawMarker
                  L10_2 = 0
                  L11_2 = L8_2
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0
                  L16_2 = 0.0
                  L17_2 = 0.0
                  L18_2 = 0.2
                  L19_2 = 0.2
                  L20_2 = 0.3
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = true
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  L9_2 = L7_2 - L8_2
                  L9_2 = #L9_2
                  L10_2 = 2.5
                  if L9_2 < L10_2 then
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "striano_combat"
                    L10_2 = L10_2[L11_2]
                    L12_2 = "submexType"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "This is an area with bush ashes, found them, burn and get."
                    L10_2(L11_2, L12_2)
                    L10_2 = _ENV
                    L11_2 = "exports"
                    L10_2 = L10_2[L11_2]
                    L10_2 = L10_2.striano_core
                    L12_2 = "gifview"
                    L11_2 = L10_2
                    L10_2 = L10_2[L12_2]
                    L12_2 = "https://media.discordapp.net/attachments/1515215321571528755/1515216576146833408/ezgif-6f8a8ea9e53db81f.gif?ex=6a2e32e7&is=6a2ce167&hm=c274c138ae2044f5ede2a6389d52d8f0f3946c434e6ca2b64829ea8ea89f0ca9&=&width=810&height=455"
                    L13_2 = "Tutorial: How to get /ashes."
                    L10_2(L11_2, L12_2, L13_2)
                    L10_2 = _ENV
                    L11_2 = "ExecuteCommand"
                    L10_2 = L10_2[L11_2]
                    L11_2 = "prova3 Waiting the ashes quest."
                    L10_2(L11_2)
                    L10_2 = CreateMissionBlip
                    L11_2 = _ENV
                    L12_2 = "vector3"
                    L11_2 = L11_2[L12_2]
                    L12_2 = 3418.084
                    L13_2 = 7291.344
                    L14_2 = 1.003
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2(L12_2, L13_2, L14_2)
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L32_1 = L10_2
                    L10_2 = L24_1
                    L10_2 = L10_2 + 1
                    L24_1 = L10_2
                    L10_2 = PlaySoundFrontend
                    L11_2 = -1
                    L12_2 = "Pre_Screen_Stinger"
                    L13_2 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                    L14_2 = 0
                    L10_2(L11_2, L12_2, L13_2, L14_2)
                  end
                end
              else
                L8_2 = L24_1
                if 2 == L8_2 then
                  L8_2 = _ENV
                  L9_2 = "exports"
                  L8_2 = L8_2[L9_2]
                  L8_2 = L8_2.striano_inventory
                  L9_2 = L8_2
                  L8_2 = L8_2.HasItem
                  L10_2 = "ash"
                  L11_2 = 2
                  L12_2 = "player"
                  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
                  if not L8_2 then
                    L8_2 = _ENV
                    L9_2 = "Wait"
                    L8_2 = L8_2[L9_2]
                    L9_2 = 5000
                    L8_2(L9_2)
                  else
                    L8_2 = _ENV
                    L9_2 = "vector3"
                    L8_2 = L8_2[L9_2]
                    L9_2 = 3418.084
                    L10_2 = 7291.344
                    L11_2 = 2.003
                    L8_2 = L8_2(L9_2, L10_2, L11_2)
                    L9_2 = L7_2 - L8_2
                    L9_2 = #L9_2
                    if L9_2 >= 2.0 then
                      L9_2 = DrawMarker
                      L10_2 = 1
                      L11_2 = L8_2.x
                      L12_2 = L8_2.y
                      L13_2 = L8_2.z
                      L13_2 = L13_2 - 1.0
                      L14_2 = 0.0
                      L15_2 = 0.0
                      L16_2 = 0.0
                      L17_2 = 0
                      L18_2 = 0.0
                      L19_2 = 0.0
                      L20_2 = L0_2
                      L21_2 = L1_2
                      L22_2 = L2_2
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = false
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                    end
                    L9_2 = L7_2 - L8_2
                    L9_2 = #L9_2
                    if L9_2 < 2.0 then
                      L9_2 = _ENV
                      L10_2 = "exports"
                      L9_2 = L9_2[L10_2]
                      L9_2 = L9_2.text_guide
                      L10_2 = L9_2
                      L9_2 = L9_2.GuidaNascondi
                      L9_2(L10_2)
                      L9_2 = _ENV
                      L10_2 = "exports"
                      L9_2 = L9_2[L10_2]
                      L10_2 = "striano_combat"
                      L9_2 = L9_2[L10_2]
                      L10_2 = L9_2
                      L9_2 = L9_2.submex
                      L11_2 = "You get the ashes you need, get back to complete the quest."
                      L9_2(L10_2, L11_2)
                      L9_2 = PlaySoundFrontend
                      L10_2 = -1
                      L11_2 = "Pre_Screen_Stinger"
                      L12_2 = "DLC_HEISTS_FINALE_SCREEN_SOUNDS"
                      L13_2 = 0
                      L9_2(L10_2, L11_2, L12_2, L13_2)
                      L9_2 = L24_1
                      L9_2 = L9_2 + 1
                      L24_1 = L9_2
                      L9_2 = _ENV
                      L10_2 = "exports"
                      L9_2 = L9_2[L10_2]
                      L10_2 = "striano_combat"
                      L9_2 = L9_2[L10_2]
                      L11_2 = "scav2"
                      L10_2 = L9_2
                      L9_2 = L9_2[L11_2]
                      L11_2 = _ENV
                      L12_2 = "vector3"
                      L11_2 = L11_2[L12_2]
                      L12_2 = 3402.351
                      L13_2 = 7287.415
                      L14_2 = 0.856
                      L11_2 = L11_2(L12_2, L13_2, L14_2)
                      L12_2 = false
                      L13_2 = "a_m_m_rurmeth_01"
                      L14_2 = 120
                      L15_2 = 1
                      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
                      L10_2 = _ENV
                      L11_2 = "table"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "insert"
                      L10_2 = L10_2[L11_2]
                      L11_2 = L25_1
                      L12_2 = L9_2
                      L10_2(L11_2, L12_2)
                      L10_2 = _ENV
                      L11_2 = "Wait"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 500
                      L10_2(L11_2)
                      L10_2 = _ENV
                      L11_2 = "exports"
                      L10_2 = L10_2[L11_2]
                      L11_2 = "striano_combat"
                      L10_2 = L10_2[L11_2]
                      L12_2 = "scav2"
                      L11_2 = L10_2
                      L10_2 = L10_2[L12_2]
                      L12_2 = _ENV
                      L13_2 = "vector3"
                      L12_2 = L12_2[L13_2]
                      L13_2 = 3402.351
                      L14_2 = 7287.415
                      L15_2 = 0.856
                      L12_2 = L12_2(L13_2, L14_2, L15_2)
                      L13_2 = false
                      L14_2 = "a_m_m_rurmeth_01"
                      L15_2 = 130
                      L16_2 = 2
                      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                      L11_2 = _ENV
                      L12_2 = "table"
                      L11_2 = L11_2[L12_2]
                      L12_2 = "insert"
                      L11_2 = L11_2[L12_2]
                      L12_2 = L25_1
                      L13_2 = L10_2
                      L11_2(L12_2, L13_2)
                      L11_2 = _ENV
                      L12_2 = "Wait"
                      L11_2 = L11_2[L12_2]
                      L12_2 = 500
                      L11_2(L12_2)
                    end
                  end
                else
                  L8_2 = L24_1
                  if 3 == L8_2 then
                    L8_2 = TriggerServerEvent
                    L9_2 = "inv3d:removeItemByName"
                    L10_2 = "player"
                    L11_2 = "ash"
                    L12_2 = 2
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = _ENV
                    L9_2 = "AnnullaIncaricoSub"
                    L8_2 = L8_2[L9_2]
                    L8_2()
                    L8_2 = PlaySoundFrontend
                    L9_2 = -1
                    L10_2 = "Falling_Crates"
                    L11_2 = "EXILE_1"
                    L12_2 = 1
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = MissioneSurv
                    L8_2 = L8_2 + 1
                    MissioneSurv = L8_2
                    L8_2 = TriggerServerEvent
                    L9_2 = "esx_Pharmacy:setVarDB"
                    L10_2 = "mytutorial"
                    L11_2 = MissioneSurv
                    L8_2(L9_2, L10_2, L11_2)
                    L8_2 = _ENV
                    L9_2 = "exports"
                    L8_2 = L8_2[L9_2]
                    L9_2 = "striano_combat"
                    L8_2 = L8_2[L9_2]
                    L10_2 = "submexType"
                    L9_2 = L8_2
                    L8_2 = L8_2[L10_2]
                    L10_2 = "Great job, thanks for the ashes."
                    L8_2(L9_2, L10_2)
                    L8_2 = _ENV
                    L9_2 = "ExecuteCommand"
                    L8_2 = L8_2[L9_2]
                    L9_2 = "guidaBase"
                    L8_2(L9_2)
                    L8_2 = _ENV
                    L9_2 = "ExecuteCommand"
                    L8_2 = L8_2[L9_2]
                    L9_2 = "shakeoff"
                    L8_2(L9_2)
                    L8_2 = DelMissionBlip
                    L8_2()
                    L8_2 = _ENV
                    L9_2 = "Wait"
                    L8_2 = L8_2[L9_2]
                    L9_2 = 2000
                    L8_2(L9_2)
                    L8_2 = TriggerServerEvent
                    L9_2 = "inv3d:giveItem"
                    L10_2 = GetPlayerServerId
                    L11_2 = PlayerId
                    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L11_2()
                    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L11_2 = "player"
                    L12_2 = "moneta"
                    L13_2 = 250
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                    L8_2 = _ENV
                    L9_2 = "Wait"
                    L8_2 = L8_2[L9_2]
                    L9_2 = 5000
                    L8_2(L9_2)
                    L8_2 = _ENV
                    L9_2 = "ExecuteCommand"
                    L8_2 = L8_2[L9_2]
                    L9_2 = "ob"
                    L8_2(L9_2)
                  end
                end
              end
            end
          elseif -30 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = 3074.625
              L10_2 = 7386.431
              L11_2 = 18.88
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 >= 2.0 then
                L9_2 = DrawMarker
                L10_2 = 1
                L11_2 = L8_2.x
                L12_2 = L8_2.y
                L13_2 = L8_2.z
                L13_2 = L13_2 - 1.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 0.0
                L17_2 = 0
                L18_2 = 0.0
                L19_2 = 0.0
                L20_2 = L0_2
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = false
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              end
              L9_2 = L7_2 - L8_2
              L9_2 = #L9_2
              if L9_2 < 2.0 then
                L9_2 = DrawMarker
                L10_2 = 0
                L11_2 = L8_2
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0
                L16_2 = 0.0
                L17_2 = 0.0
                L18_2 = 0.2
                L19_2 = 0.2
                L20_2 = 0.3
                L21_2 = L1_2
                L22_2 = L2_2
                L23_2 = true
                L24_2 = true
                L25_2 = 2
                L26_2 = false
                L27_2 = false
                L28_2 = false
                L29_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                L9_2 = L7_2 - L8_2
                L9_2 = #L9_2
                if L9_2 < 2.0 then
                  L10_2 = _ENV
                  L11_2 = "AnnullaIncaricoSub"
                  L10_2 = L10_2[L11_2]
                  L10_2()
                  L10_2 = PlaySoundFrontend
                  L11_2 = -1
                  L12_2 = "Falling_Crates"
                  L13_2 = "EXILE_1"
                  L14_2 = 1
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                  L10_2 = MissioneSurv
                  L10_2 = L10_2 + 1
                  MissioneSurv = L10_2
                  L10_2 = TriggerServerEvent
                  L11_2 = "esx_Pharmacy:setVarDB"
                  L12_2 = "mytutorial"
                  L13_2 = MissioneSurv
                  L10_2(L11_2, L12_2, L13_2)
                  L10_2 = _ENV
                  L11_2 = "exports"
                  L10_2 = L10_2[L11_2]
                  L11_2 = "striano_combat"
                  L10_2 = L10_2[L11_2]
                  L12_2 = "submexType"
                  L11_2 = L10_2
                  L10_2 = L10_2[L12_2]
                  L12_2 = "This kind of stone can be hitted with a Pickaxe to get materials. Remember to have a redbox to transport."
                  L10_2(L11_2, L12_2)
                  L10_2 = _ENV
                  L11_2 = "ExecuteCommand"
                  L10_2 = L10_2[L11_2]
                  L11_2 = "guidaBase"
                  L10_2(L11_2)
                  L10_2 = DelMissionBlip
                  L10_2()
                  L10_2 = _ENV
                  L11_2 = "Wait"
                  L10_2 = L10_2[L11_2]
                  L11_2 = 9000
                  L10_2(L11_2)
                  L10_2 = _ENV
                  L11_2 = "ExecuteCommand"
                  L10_2 = L10_2[L11_2]
                  L11_2 = "ob"
                  L10_2(L11_2)
                end
              end
            end
          elseif -29 == L5_2 then
            L8_2 = L24_1
            if 0 == L8_2 then
              L8_2 = _ENV
              L9_2 = "vector3"
              L8_2 = L8_2[L9_2]
              L9_2 = -1141.12
              L10_2 = 7486.104
              L11_2 = 12.867
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = _ENV
              L10_2 = "GetEntityCoords"
              L9_2 = L9_2[L10_2]
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if L6_2 > L9_2 then
                L9_2 = _ENV
                L10_2 = "GetEntityCoords"
                L9_2 = L9_2[L10_2]
                L10_2 = player
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 - L8_2
                L9_2 = #L9_2
                if L9_2 >= 5.0 then
                  L9_2 = DrawMarker
                  L10_2 = 1
                  L11_2 = L8_2.x
                  L12_2 = L8_2.y
                  L13_2 = L8_2.z
                  L13_2 = L13_2 - 1.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 0.0
                  L17_2 = 0
                  L18_2 = 0.0
                  L19_2 = 0.0
                  L20_2 = L0_2
                  L21_2 = L1_2
                  L22_2 = L2_2
                  L23_2 = false
                  L24_2 = true
                  L25_2 = 2
                  L26_2 = false
                  L27_2 = false
                  L28_2 = false
                  L29_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              L9_2 = _ENV
              L10_2 = "GetEntityCoords"
              L9_2 = L9_2[L10_2]
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              if not (L6_2 > L9_2) then
                goto lbl_8782
              end
              L9_2 = DrawMarker
              L10_2 = 0
              L11_2 = L8_2
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0
              L16_2 = 0.0
              L17_2 = 0.0
              L18_2 = 0.2
              L19_2 = 0.2
              L20_2 = 0.3
              L21_2 = L1_2
              L22_2 = L2_2
              L23_2 = true
              L24_2 = true
              L25_2 = 2
              L26_2 = false
              L27_2 = false
              L28_2 = false
              L29_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
              L9_2 = _ENV
              L10_2 = "GetEntityCoords"
              L9_2 = L9_2[L10_2]
              L10_2 = player
              L9_2 = L9_2(L10_2)
              L9_2 = L9_2 - L8_2
              L9_2 = #L9_2
              L10_2 = 1.2
              if not (L9_2 < L10_2) then
                goto lbl_8782
              end
              L10_2 = L24_1
              L10_2 = L10_2 + 1
              L24_1 = L10_2
              L10_2 = PlaySoundFrontend
              L11_2 = -1
              L12_2 = "Zone_Neutral"
              L13_2 = "DLC_Apartments_Drop_Zone_Sounds"
              L14_2 = 0
              L10_2(L11_2, L12_2, L13_2, L14_2)
              L10_2 = _ENV
              L11_2 = "exports"
              L10_2 = L10_2[L11_2]
              L11_2 = "striano_combat"
              L10_2 = L10_2[L11_2]
              L12_2 = "submexType"
              L11_2 = L10_2
              L10_2 = L10_2[L12_2]
              L12_2 = "Kevin should be over the Gru, Find & Save him."
              L10_2(L11_2, L12_2)
              L10_2 = DelMissionBlip
              L10_2()
              L10_2 = _ENV
              L11_2 = "vector3"
              L10_2 = L10_2[L11_2]
              L11_2 = -1129.983
              L12_2 = 7396.243
              L13_2 = 30.467
              L10_2 = L10_2(L11_2, L12_2, L13_2)
              L11_2 = "mp_m_forgery_01"
              L12_2 = _ENV
              L13_2 = "RequestModelStriano"
              L12_2 = L12_2[L13_2]
              L13_2 = L11_2
              L12_2(L13_2)
              L12_2 = _ENV
              L13_2 = "CreatePed"
              L12_2 = L12_2[L13_2]
              L13_2 = 1
              L14_2 = L11_2
              L15_2 = L10_2.x
              L16_2 = L10_2.y
              L17_2 = L10_2.z
              L18_2 = _ENV
              L19_2 = "h"
              L18_2 = L18_2[L19_2]
              L19_2 = true
              L20_2 = false
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              L26_1 = L12_2
              while true do
                L12_2 = _ENV
                L13_2 = "DoesEntityExist"
                L12_2 = L12_2[L13_2]
                L13_2 = L26_1
                L12_2 = L12_2(L13_2)
                if L12_2 then
                  break
                end
                L12_2 = _ENV
                L13_2 = "Wait"
                L12_2 = L12_2[L13_2]
                L13_2 = 0
                L12_2(L13_2)
              end
              L12_2 = L26_1
              L13_2 = _ENV
              L14_2 = "SetPedFleeAttributes"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = 0
              L16_2 = 0
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = _ENV
              L14_2 = "SetPedDropsWeaponsWhenDead"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = false
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetPedDiesWhenInjured"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = false
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetEntityInvincible"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = true
              L13_2(L14_2, L15_2)
              L13_2 = FreezeEntityPosition
              L14_2 = L12_2
              L15_2 = true
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetBlockingOfNonTemporaryEvents"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = true
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetPedCanRagdollFromPlayerImpact"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = false
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetEntityCollision"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = false
              L16_2 = false
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = _ENV
              L14_2 = "SetEntityAsMissionEntity"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = true
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetPedCanBeTargetted"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = false
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "SetEntityAlpha"
              L13_2 = L13_2[L14_2]
              L14_2 = L12_2
              L15_2 = 254
              L13_2(L14_2, L15_2)
              L13_2 = _ENV
              L14_2 = "Wait"
              L13_2 = L13_2[L14_2]
              L14_2 = 25
              L13_2(L14_2)
              L13_2 = SetEntityCoords
              L14_2 = L12_2
              L15_2 = L10_2.x
              L16_2 = L10_2.y
              L17_2 = L10_2.z
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = "combat@damage@rb_writhe"
              L14_2 = "rb_writhe_loop"
              L15_2 = _ENV
              L16_2 = "IsEntityPlayingAnim"
              L15_2 = L15_2[L16_2]
              L16_2 = L26_1
              L17_2 = L13_2
              L18_2 = L14_2
              L19_2 = 1
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
              if L15_2 then
                goto lbl_8782
              end
              L15_2 = _ENV
              L16_2 = "HasAnimDictLoaded"
              L15_2 = L15_2[L16_2]
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              if not L15_2 then
                L15_2 = _ENV
                L16_2 = "RequestAnimDict"
                L15_2 = L15_2[L16_2]
                L16_2 = L13_2
                L15_2(L16_2)
                while true do
                  L15_2 = _ENV
                  L16_2 = "HasAnimDictLoaded"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L13_2
                  L15_2 = L15_2(L16_2)
                  if L15_2 then
                    break
                  end
                  L15_2 = _ENV
                  L16_2 = "Wait"
                  L15_2 = L15_2[L16_2]
                  L16_2 = 10
                  L15_2(L16_2)
                end
              end
              L15_2 = _ENV
              L16_2 = "TaskPlayAnim"
              L15_2 = L15_2[L16_2]
              L16_2 = L26_1
              L17_2 = L13_2
              L18_2 = L14_2
              L19_2 = 3.0
              L20_2 = 1.0
              L21_2 = -1
              L22_2 = 1
              L23_2 = 0
              L24_2 = 0
              L25_2 = 0
              L26_2 = 0
              L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
            else
              L8_2 = L24_1
              if 1 ~= L8_2 then
                goto lbl_8782
              end
              L8_2 = "combat@damage@rb_writhe"
              L9_2 = "rb_writhe_loop"
              L10_2 = _ENV
              L11_2 = "IsEntityPlayingAnim"
              L10_2 = L10_2[L11_2]
              L11_2 = L26_1
              L12_2 = L8_2
              L13_2 = L9_2
              L14_2 = 1
              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
              if not L10_2 then
                L10_2 = _ENV
                L11_2 = "IsEntityAttached"
                L10_2 = L10_2[L11_2]
                L11_2 = L26_1
                L10_2 = L10_2(L11_2)
                if not L10_2 then
                  L10_2 = _ENV
                  L11_2 = "HasAnimDictLoaded"
                  L10_2 = L10_2[L11_2]
                  L11_2 = L8_2
                  L10_2 = L10_2(L11_2)
                  if not L10_2 then
                    L10_2 = _ENV
                    L11_2 = "RequestAnimDict"
                    L10_2 = L10_2[L11_2]
                    L11_2 = L8_2
                    L10_2(L11_2)
                    while true do
                      L10_2 = _ENV
                      L11_2 = "HasAnimDictLoaded"
                      L10_2 = L10_2[L11_2]
                      L11_2 = L8_2
                      L10_2 = L10_2(L11_2)
                      if L10_2 then
                        break
                      end
                      L10_2 = _ENV
                      L11_2 = "Wait"
                      L10_2 = L10_2[L11_2]
                      L11_2 = 10
                      L10_2(L11_2)
                    end
                  end
                  L10_2 = _ENV
                  L11_2 = "TaskPlayAnim"
                  L10_2 = L10_2[L11_2]
                  L11_2 = L26_1
                  L12_2 = L8_2
                  L13_2 = L9_2
                  L14_2 = 3.0
                  L15_2 = 1.0
                  L16_2 = -1
                  L17_2 = 1
                  L18_2 = 0
                  L19_2 = 0
                  L20_2 = 0
                  L21_2 = 0
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                end
              end
              L10_2 = _ENV
              L11_2 = "IsEntityAttached"
              L10_2 = L10_2[L11_2]
              L11_2 = L26_1
              L10_2 = L10_2(L11_2)
              if not L10_2 then
                L10_2 = "combat@damage@rb_writhe"
                L11_2 = "rb_writhe_loop"
                L12_2 = _ENV
                L13_2 = "IsEntityPlayingAnim"
                L12_2 = L12_2[L13_2]
                L13_2 = L26_1
                L14_2 = L10_2
                L15_2 = L11_2
                L16_2 = 1
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
                if not L12_2 then
                  L12_2 = _ENV
                  L13_2 = "IsEntityAttached"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L12_2 = L12_2(L13_2)
                  if not L12_2 then
                    L12_2 = _ENV
                    L13_2 = "HasAnimDictLoaded"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L10_2
                    L12_2 = L12_2(L13_2)
                    if not L12_2 then
                      L12_2 = _ENV
                      L13_2 = "RequestAnimDict"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L10_2
                      L12_2(L13_2)
                      while true do
                        L12_2 = _ENV
                        L13_2 = "HasAnimDictLoaded"
                        L12_2 = L12_2[L13_2]
                        L13_2 = L10_2
                        L12_2 = L12_2(L13_2)
                        if L12_2 then
                          break
                        end
                        L12_2 = _ENV
                        L13_2 = "Wait"
                        L12_2 = L12_2[L13_2]
                        L13_2 = 10
                        L12_2(L13_2)
                      end
                    end
                    L12_2 = _ENV
                    L13_2 = "TaskPlayAnim"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L26_1
                    L14_2 = L10_2
                    L15_2 = L11_2
                    L16_2 = 3.0
                    L17_2 = 1.0
                    L18_2 = -1
                    L19_2 = 1
                    L20_2 = 0
                    L21_2 = 0
                    L22_2 = 0
                    L23_2 = 0
                    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                  end
                end
                L12_2 = _ENV
                L13_2 = "vector3"
                L12_2 = L12_2[L13_2]
                L13_2 = 3060.621
                L14_2 = 7477.493
                L15_2 = 19.663
                L12_2 = L12_2(L13_2, L14_2, L15_2)
                L13_2 = L7_2 - L12_2
                L13_2 = #L13_2
                if L13_2 >= 15.0 then
                  L14_2 = IsPedHuman
                  L15_2 = L4_2
                  L14_2 = L14_2(L15_2)
                  if L14_2 then
                    L14_2 = _ENV
                    L15_2 = "IsPedInAnyVehicle"
                    L14_2 = L14_2[L15_2]
                    L15_2 = L4_2
                    L16_2 = false
                    L14_2 = L14_2(L15_2, L16_2)
                    if L14_2 then
                      L14_2 = _ENV
                      L15_2 = "IsEntityAttached"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L26_1
                      L14_2 = L14_2(L15_2)
                      if not L14_2 then
                        L14_2 = _ENV
                        L15_2 = "GetVehiclePedIsIn"
                        L14_2 = L14_2[L15_2]
                        L15_2 = L4_2
                        L16_2 = false
                        L14_2 = L14_2(L15_2, L16_2)
                        L15_2 = DelMissionBlip
                        L15_2()
                        L15_2 = CreateMissionBlip
                        L16_2 = L12_2
                        L15_2 = L15_2(L16_2)
                        L32_1 = L15_2
                        L15_2 = _ENV
                        L16_2 = "exports"
                        L15_2 = L15_2[L16_2]
                        L16_2 = "striano_combat"
                        L15_2 = L15_2[L16_2]
                        L16_2 = L15_2
                        L15_2 = L15_2.submex
                        L17_2 = "Help Kevin to get medical care."
                        L15_2(L16_2, L17_2)
                        L15_2 = _ENV
                        L16_2 = "AttachEntityToEntity"
                        L15_2 = L15_2[L16_2]
                        L16_2 = L26_1
                        L17_2 = L14_2
                        L18_2 = 0
                        L19_2 = 0.0
                        L20_2 = -1.0
                        L21_2 = 1.3
                        L22_2 = 0.0
                        L23_2 = 0.0
                        L24_2 = 0.0
                        L25_2 = false
                        L26_2 = false
                        L27_2 = false
                        L28_2 = true
                        L29_2 = false
                        L30_2 = true
                        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
                      end
                    end
                    L14_2 = _ENV
                    L15_2 = "exports"
                    L14_2 = L14_2[L15_2]
                    L14_2 = L14_2.striano_ridehorse
                    L16_2 = "myhorse"
                    L15_2 = L14_2
                    L14_2 = L14_2[L16_2]
                    L14_2 = L14_2(L15_2)
                    L15_2 = _ENV
                    L16_2 = "GetEntityCoords"
                    L15_2 = L15_2[L16_2]
                    L16_2 = L4_2
                    L15_2 = L15_2(L16_2)
                    L16_2 = _ENV
                    L17_2 = "GetEntityCoords"
                    L16_2 = L16_2[L17_2]
                    L17_2 = L26_1
                    L16_2 = L16_2(L17_2)
                    L15_2 = L15_2 - L16_2
                    L15_2 = #L15_2
                    if L15_2 < 2.0 then
                      L15_2 = _ENV
                      L16_2 = "Citizen"
                      L15_2 = L15_2[L16_2]
                      L16_2 = "InvokeNative"
                      L15_2 = L15_2[L16_2]
                      L16_2 = -7918206464511161279
                      L17_2 = L4_2
                      L15_2 = L15_2(L16_2, L17_2)
                      if not L15_2 then
                        L15_2 = _ENV
                        L16_2 = "exports"
                        L15_2 = L15_2[L16_2]
                        L15_2 = L15_2.striano_core
                        L17_2 = "draw"
                        L16_2 = L15_2
                        L15_2 = L15_2[L17_2]
                        L17_2 = 29
                        L18_2 = "Manage body"
                        L15_2(L16_2, L17_2, L18_2)
                      else
                        L15_2 = _ENV
                        L16_2 = "IsEntityAttached"
                        L15_2 = L15_2[L16_2]
                        L16_2 = L26_1
                        L15_2 = L15_2(L16_2)
                        if not L15_2 then
                          L15_2 = _ENV
                          L16_2 = "exports"
                          L15_2 = L15_2[L16_2]
                          L15_2 = L15_2.striano_ridehorse
                          L17_2 = "myhorse"
                          L16_2 = L15_2
                          L15_2 = L15_2[L17_2]
                          L15_2 = L15_2(L16_2)
                          L16_2 = nil
                          if L15_2 ~= L16_2 then
                            L16_2 = _ENV
                            L17_2 = "DoesEntityExist"
                            L16_2 = L16_2[L17_2]
                            L17_2 = L15_2
                            L16_2 = L16_2(L17_2)
                            if L16_2 then
                              L16_2 = _ENV
                              L17_2 = "GetEntityCoords"
                              L16_2 = L16_2[L17_2]
                              L17_2 = L15_2
                              L16_2 = L16_2(L17_2)
                              L17_2 = _ENV
                              L18_2 = "GetEntityCoords"
                              L17_2 = L17_2[L18_2]
                              L18_2 = L26_1
                              L17_2 = L17_2(L18_2)
                              L16_2 = L16_2 - L17_2
                              L16_2 = #L16_2
                              if L16_2 < 3.0 then
                                L16_2 = _ENV
                                L17_2 = "exports"
                                L16_2 = L16_2[L17_2]
                                L16_2 = L16_2.striano_core
                                L18_2 = "draw"
                                L17_2 = L16_2
                                L16_2 = L16_2[L18_2]
                                L18_2 = 74
                                L19_2 = "Put on horse"
                                L16_2(L17_2, L18_2, L19_2)
                                L16_2 = _ENV
                                L17_2 = "IsControlPressed"
                                L16_2 = L16_2[L17_2]
                                L17_2 = 0
                                L18_2 = 74
                                L16_2 = L16_2(L17_2, L18_2)
                                if not L16_2 then
                                  L16_2 = _ENV
                                  L17_2 = "IsDisabledControlPressed"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = 0
                                  L18_2 = 74
                                  L16_2 = L16_2(L17_2, L18_2)
                                end
                                if L16_2 then
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L16_2 = L16_2.striano_ridehorse
                                  L18_2 = "possoCavalcare"
                                  L17_2 = L16_2
                                  L16_2 = L16_2[L18_2]
                                  L18_2 = false
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L16_2 = L16_2.striano_core
                                  L18_2 = "disableLadder"
                                  L17_2 = L16_2
                                  L16_2 = L16_2[L18_2]
                                  L18_2 = false
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "ExecuteCommand"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "e prendi10"
                                  L16_2(L17_2)
                                  L16_2 = _ENV
                                  L17_2 = "Wait"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = 750
                                  L16_2(L17_2)
                                  L16_2 = _ENV
                                  L17_2 = "AttachEntityToEntity"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = L15_2
                                  L19_2 = 0
                                  L20_2 = 0.5
                                  L21_2 = 0.15
                                  L22_2 = -0.13
                                  L23_2 = -174.0
                                  L24_2 = 87.0
                                  L25_2 = 269.0
                                  L26_2 = false
                                  L27_2 = false
                                  L28_2 = false
                                  L29_2 = true
                                  L30_2 = false
                                  L31_2 = true
                                  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                                  L16_2 = CreateMissionBlip
                                  L17_2 = L12_2
                                  L16_2 = L16_2(L17_2)
                                  L32_1 = L16_2
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "striano_combat"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L16_2
                                  L16_2 = L16_2.submex
                                  L18_2 = "Help Kevin to get medical care."
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "ExecuteCommand"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "e dai"
                                  L16_2(L17_2)
                                end
                              else
                                L16_2 = _ENV
                                L17_2 = "exports"
                                L16_2 = L16_2[L17_2]
                                L16_2 = L16_2.striano_core
                                L18_2 = "draw"
                                L17_2 = L16_2
                                L16_2 = L16_2[L18_2]
                                L18_2 = 74
                                L19_2 = "Take the body"
                                L16_2(L17_2, L18_2, L19_2)
                                L16_2 = _ENV
                                L17_2 = "IsControlPressed"
                                L16_2 = L16_2[L17_2]
                                L17_2 = 0
                                L18_2 = 74
                                L16_2 = L16_2(L17_2, L18_2)
                                if not L16_2 then
                                  L16_2 = _ENV
                                  L17_2 = "IsDisabledControlPressed"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = 0
                                  L18_2 = 74
                                  L16_2 = L16_2(L17_2, L18_2)
                                end
                                if L16_2 then
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L16_2 = L16_2.striano_core
                                  L18_2 = "disableLadder"
                                  L17_2 = L16_2
                                  L16_2 = L16_2[L18_2]
                                  L18_2 = true
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L16_2 = L16_2.striano_ridehorse
                                  L18_2 = "possoCavalcare"
                                  L17_2 = L16_2
                                  L16_2 = L16_2[L18_2]
                                  L18_2 = false
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "ExecuteCommand"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "e prendi6"
                                  L16_2(L17_2)
                                  L16_2 = _ENV
                                  L17_2 = "Wait"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = 950
                                  L16_2(L17_2)
                                  L16_2 = _ENV
                                  L17_2 = "SetEntityCollision"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = false
                                  L19_2 = true
                                  L16_2(L17_2, L18_2, L19_2)
                                  L16_2 = _ENV
                                  L17_2 = "SetEntityCompletelyDisableCollision"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = true
                                  L19_2 = false
                                  L16_2(L17_2, L18_2, L19_2)
                                  L16_2 = _ENV
                                  L17_2 = "SetPedCanRagdoll"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = false
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "SetEntityInvincible"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = true
                                  L16_2(L17_2, L18_2)
                                  L16_2 = FreezeEntityPosition
                                  L17_2 = L26_1
                                  L18_2 = false
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "AttachEntityToEntity"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L26_1
                                  L18_2 = L4_2
                                  L19_2 = 0
                                  L20_2 = -0.01
                                  L21_2 = -0.31
                                  L22_2 = 0.5
                                  L23_2 = 13.0
                                  L24_2 = 0.0
                                  L25_2 = 4.0
                                  L26_2 = false
                                  L27_2 = false
                                  L28_2 = false
                                  L29_2 = true
                                  L30_2 = false
                                  L31_2 = true
                                  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                                  L16_2 = CreateMissionBlip
                                  L17_2 = L12_2
                                  L16_2 = L16_2(L17_2)
                                  L32_1 = L16_2
                                  L16_2 = _ENV
                                  L17_2 = "exports"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "striano_combat"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = L16_2
                                  L16_2 = L16_2.submex
                                  L18_2 = "Help Kevin to get medical care."
                                  L16_2(L17_2, L18_2)
                                  L16_2 = _ENV
                                  L17_2 = "ExecuteCommand"
                                  L16_2 = L16_2[L17_2]
                                  L17_2 = "e indossa2"
                                  L16_2(L17_2)
                                  L16_2 = true
                                  L14_1 = L16_2
                                  L16_2 = _ENV
                                  L17_2 = "CreateThread"
                                  L16_2 = L16_2[L17_2]
                                  function L17_2()
                                    local L0_3, L1_3
                                    L0_3 = Wait
                                    L1_3 = 1000
                                    L0_3(L1_3)
                                    L0_3 = ExecuteCommand
                                    L1_3 = "e hiking"
                                    L0_3(L1_3)
                                  end
                                  L16_2(L17_2)
                                end
                              end
                          end
                          else
                            L16_2 = _ENV
                            L17_2 = "exports"
                            L16_2 = L16_2[L17_2]
                            L16_2 = L16_2.striano_core
                            L18_2 = "draw"
                            L17_2 = L16_2
                            L16_2 = L16_2[L18_2]
                            L18_2 = 74
                            L19_2 = "Take the body"
                            L16_2(L17_2, L18_2, L19_2)
                            L16_2 = _ENV
                            L17_2 = "IsControlPressed"
                            L16_2 = L16_2[L17_2]
                            L17_2 = 0
                            L18_2 = 74
                            L16_2 = L16_2(L17_2, L18_2)
                            if not L16_2 then
                              L16_2 = _ENV
                              L17_2 = "IsDisabledControlPressed"
                              L16_2 = L16_2[L17_2]
                              L17_2 = 0
                              L18_2 = 74
                              L16_2 = L16_2(L17_2, L18_2)
                            end
                            if L16_2 then
                              L16_2 = _ENV
                              L17_2 = "exports"
                              L16_2 = L16_2[L17_2]
                              L16_2 = L16_2.striano_core
                              L18_2 = "disableLadder"
                              L17_2 = L16_2
                              L16_2 = L16_2[L18_2]
                              L18_2 = true
                              L16_2(L17_2, L18_2)
                              L16_2 = _ENV
                              L17_2 = "exports"
                              L16_2 = L16_2[L17_2]
                              L16_2 = L16_2.striano_ridehorse
                              L18_2 = "possoCavalcare"
                              L17_2 = L16_2
                              L16_2 = L16_2[L18_2]
                              L18_2 = false
                              L16_2(L17_2, L18_2)
                              L16_2 = _ENV
                              L17_2 = "ExecuteCommand"
                              L16_2 = L16_2[L17_2]
                              L17_2 = "e prendi6"
                              L16_2(L17_2)
                              L16_2 = _ENV
                              L17_2 = "Wait"
                              L16_2 = L16_2[L17_2]
                              L17_2 = 950
                              L16_2(L17_2)
                              L16_2 = _ENV
                              L17_2 = "AttachEntityToEntity"
                              L16_2 = L16_2[L17_2]
                              L17_2 = L26_1
                              L18_2 = L4_2
                              L19_2 = 0
                              L20_2 = -0.01
                              L21_2 = -0.31
                              L22_2 = 0.5
                              L23_2 = 13.0
                              L24_2 = 0.0
                              L25_2 = 4.0
                              L26_2 = false
                              L27_2 = false
                              L28_2 = false
                              L29_2 = true
                              L30_2 = false
                              L31_2 = true
                              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                              L16_2 = CreateMissionBlip
                              L17_2 = L12_2
                              L16_2 = L16_2(L17_2)
                              L32_1 = L16_2
                              L16_2 = _ENV
                              L17_2 = "exports"
                              L16_2 = L16_2[L17_2]
                              L17_2 = "striano_combat"
                              L16_2 = L16_2[L17_2]
                              L17_2 = L16_2
                              L16_2 = L16_2.submex
                              L18_2 = "Help Kevin to get medical care."
                              L16_2(L17_2, L18_2)
                              L16_2 = _ENV
                              L17_2 = "ExecuteCommand"
                              L16_2 = L16_2[L17_2]
                              L17_2 = "e indossa2"
                              L16_2(L17_2)
                              L16_2 = true
                              L14_1 = L16_2
                              L16_2 = _ENV
                              L17_2 = "CreateThread"
                              L16_2 = L16_2[L17_2]
                              function L17_2()
                                local L0_3, L1_3
                                L0_3 = Wait
                                L1_3 = 1000
                                L0_3(L1_3)
                                L0_3 = ExecuteCommand
                                L1_3 = "e hiking"
                                L0_3(L1_3)
                              end
                              L16_2(L17_2)
                            end
                          end
                        end
                      end
                    else
                      L15_2 = _ENV
                      L16_2 = "GetEntityCoords"
                      L15_2 = L15_2[L16_2]
                      L16_2 = L26_1
                      L15_2 = L15_2(L16_2)
                      L16_2 = DrawMarker
                      L17_2 = 1
                      L18_2 = L15_2.x
                      L19_2 = L15_2.y
                      L20_2 = L15_2.z
                      L20_2 = L20_2 - 1.0
                      L21_2 = 0.0
                      L22_2 = 0.0
                      L23_2 = 0.0
                      L24_2 = 0
                      L25_2 = 0.0
                      L26_2 = 0.0
                      L27_2 = 0.3
                      L28_2 = 0.3
                      L29_2 = 1.0
                      L30_2 = 255
                      L31_2 = 255
                      L32_2 = 255
                      L33_2 = 100
                      L34_2 = false
                      L35_2 = true
                      L36_2 = 2
                      L37_2 = false
                      L38_2 = false
                      L39_2 = false
                      L40_2 = false
                      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    end
                end
                else
                  L14_2 = _ENV
                  L15_2 = "GetEntityCoords"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L4_2
                  L14_2 = L14_2(L15_2)
                  L15_2 = _ENV
                  L16_2 = "GetEntityCoords"
                  L15_2 = L15_2[L16_2]
                  L16_2 = L26_1
                  L15_2 = L15_2(L16_2)
                  L14_2 = L14_2 - L15_2
                  L14_2 = #L14_2
                  if L14_2 < 15.0 then
                    L14_2 = MissioneSurv
                    L14_2 = L14_2 + 1
                    MissioneSurv = L14_2
                    L14_2 = TriggerServerEvent
                    L15_2 = "esx_Pharmacy:setVarDB"
                    L16_2 = "mytutorial"
                    L17_2 = MissioneSurv
                    L14_2(L15_2, L16_2, L17_2)
                    L14_2 = _ENV
                    L15_2 = "DetachEntity"
                    L14_2 = L14_2[L15_2]
                    L15_2 = L26_1
                    L14_2(L15_2)
                    L14_2 = _ENV
                    L15_2 = "Wait"
                    L14_2 = L14_2[L15_2]
                    L15_2 = 1000
                    L14_2(L15_2)
                    L14_2 = TriggerServerEvent
                    L15_2 = "inv3d:giveItem"
                    L16_2 = GetPlayerServerId
                    L17_2 = PlayerId
                    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L17_2()
                    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L17_2 = "player"
                    L18_2 = "moneta"
                    L19_2 = 355
                    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
                    L14_2 = _ENV
                    L15_2 = "Wait"
                    L14_2 = L14_2[L15_2]
                    L15_2 = 1500
                    L14_2(L15_2)
                    L14_2 = TriggerServerEvent
                    L15_2 = "inv3d:giveItem"
                    L16_2 = GetPlayerServerId
                    L17_2 = PlayerId
                    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L17_2()
                    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                    L17_2 = "player"
                    L18_2 = "pickaxe"
                    L19_2 = 1
                    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
                    L14_2 = _ENV
                    L15_2 = "AnnullaIncaricoSub"
                    L14_2 = L14_2[L15_2]
                    L14_2()
                  else
                    L14_2 = _ENV
                    L15_2 = "exports"
                    L14_2 = L14_2[L15_2]
                    L15_2 = "striano_combat"
                    L14_2 = L14_2[L15_2]
                    L16_2 = "submexType"
                    L15_2 = L14_2
                    L14_2 = L14_2[L16_2]
                    L16_2 = "Where is Kevin? Mission failed."
                    L14_2(L15_2, L16_2)
                    L14_2 = _ENV
                    L15_2 = "AnnullaIncaricoSub"
                    L14_2 = L14_2[L15_2]
                    L14_2()
                    L14_2 = _ENV
                    L15_2 = "Wait"
                    L14_2 = L14_2[L15_2]
                    L15_2 = 9000
                    L14_2(L15_2)
                  end
                end
              else
                L10_2 = "timetable@reunited@ig_9"
                L11_2 = "eating_disorder_jimmy"
                L12_2 = _ENV
                L13_2 = "IsEntityPlayingAnim"
                L12_2 = L12_2[L13_2]
                L13_2 = L26_1
                L14_2 = L10_2
                L15_2 = L11_2
                L16_2 = 1
                L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
                if not L12_2 then
                  L12_2 = _ENV
                  L13_2 = "HasAnimDictLoaded"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L10_2
                  L12_2 = L12_2(L13_2)
                  if not L12_2 then
                    L12_2 = _ENV
                    L13_2 = "RequestAnimDict"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L10_2
                    L12_2(L13_2)
                    while true do
                      L12_2 = _ENV
                      L13_2 = "HasAnimDictLoaded"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L10_2
                      L12_2 = L12_2(L13_2)
                      if L12_2 then
                        break
                      end
                      L12_2 = _ENV
                      L13_2 = "Wait"
                      L12_2 = L12_2[L13_2]
                      L13_2 = 10
                      L12_2(L13_2)
                    end
                  end
                  L12_2 = _ENV
                  L13_2 = "TaskPlayAnim"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L14_2 = L10_2
                  L15_2 = L11_2
                  L16_2 = 3.0
                  L17_2 = 1.0
                  L18_2 = -1
                  L19_2 = 1
                  L20_2 = 0
                  L21_2 = 0
                  L22_2 = 0
                  L23_2 = 0
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
                end
                L12_2 = _ENV
                L13_2 = "GetVehiclePedIsTryingToEnter"
                L12_2 = L12_2[L13_2]
                L13_2 = L4_2
                L12_2 = L12_2(L13_2)
                if 0 ~= L12_2 then
                  L12_2 = _ENV
                  L13_2 = "exports"
                  L12_2 = L12_2[L13_2]
                  L12_2 = L12_2.striano_ridehorse
                  L14_2 = "possoCavalcare"
                  L13_2 = L12_2
                  L12_2 = L12_2[L14_2]
                  L14_2 = true
                  L12_2(L13_2, L14_2)
                  L12_2 = _ENV
                  L13_2 = "ExecuteCommand"
                  L12_2 = L12_2[L13_2]
                  L13_2 = "e prendi6"
                  L12_2(L13_2)
                  L12_2 = _ENV
                  L13_2 = "DetachEntity"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L12_2(L13_2)
                  L12_2 = _ENV
                  L13_2 = "exports"
                  L12_2 = L12_2[L13_2]
                  L12_2 = L12_2.striano_core
                  L14_2 = "disableLadder"
                  L13_2 = L12_2
                  L12_2 = L12_2[L14_2]
                  L14_2 = false
                  L12_2(L13_2, L14_2)
                  L12_2 = _ENV
                  L13_2 = "GetEntityCoords"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L4_2
                  L12_2 = L12_2(L13_2)
                  L13_2 = _ENV
                  L14_2 = "vector3"
                  L13_2 = L13_2[L14_2]
                  L14_2 = L12_2.x
                  L15_2 = L12_2.y
                  L16_2 = L12_2.z
                  L16_2 = L16_2 - 1.0
                  L13_2 = L13_2(L14_2, L15_2, L16_2)
                  L14_2 = _ENV
                  L15_2 = "SetEntityCompletelyDisableCollision"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L26_1
                  L16_2 = true
                  L17_2 = true
                  L14_2(L15_2, L16_2, L17_2)
                  L14_2 = _ENV
                  L15_2 = "SetEntityCollision"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L26_1
                  L16_2 = true
                  L17_2 = true
                  L14_2(L15_2, L16_2, L17_2)
                  L14_2 = SetEntityCoords
                  L15_2 = L26_1
                  L16_2 = L13_2
                  L14_2(L15_2, L16_2)
                  L14_2 = _ENV
                  L15_2 = "SetEntityRotation"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L26_1
                  L16_2 = _ENV
                  L17_2 = "vector3"
                  L16_2 = L16_2[L17_2]
                  L17_2 = 0
                  L18_2 = 0
                  L19_2 = 0
                  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2(L17_2, L18_2, L19_2)
                  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                  L14_2 = _ENV
                  L15_2 = "SetPedConfigFlag"
                  L14_2 = L14_2[L15_2]
                  L15_2 = L4_2
                  L16_2 = 146
                  L17_2 = false
                  L14_2(L15_2, L16_2, L17_2)
                  L14_2 = false
                  L14_1 = L14_2
                end
                L12_2 = _ENV
                L13_2 = "GetEntityCoords"
                L12_2 = L12_2[L13_2]
                L13_2 = L4_2
                L12_2 = L12_2(L13_2)
                L13_2 = _ENV
                L14_2 = "GetEntityCoords"
                L13_2 = L13_2[L14_2]
                L14_2 = L26_1
                L13_2 = L13_2(L14_2)
                L12_2 = L12_2 - L13_2
                L12_2 = #L12_2
                if L12_2 < 3.0 then
                  L12_2 = _ENV
                  L13_2 = "SetEntityCollision"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L14_2 = false
                  L15_2 = false
                  L12_2(L13_2, L14_2, L15_2)
                  L12_2 = _ENV
                  L13_2 = "SetEntityNoCollisionEntity"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L4_2
                  L14_2 = L26_1
                  L15_2 = true
                  L12_2(L13_2, L14_2, L15_2)
                  L12_2 = _ENV
                  L13_2 = "SetEntityCompletelyDisableCollision"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L26_1
                  L14_2 = true
                  L15_2 = false
                  L12_2(L13_2, L14_2, L15_2)
                  L12_2 = _ENV
                  L13_2 = "IsEntityAttached"
                  L12_2 = L12_2[L13_2]
                  L13_2 = L4_2
                  L12_2 = L12_2(L13_2)
                  if not L12_2 then
                    L12_2 = _ENV
                    L13_2 = "exports"
                    L12_2 = L12_2[L13_2]
                    L12_2 = L12_2.striano_core
                    L14_2 = "draw"
                    L13_2 = L12_2
                    L12_2 = L12_2[L14_2]
                    L14_2 = 74
                    L15_2 = "Drop the body"
                    L12_2(L13_2, L14_2, L15_2)
                    L12_2 = _ENV
                    L13_2 = "SetPedConfigFlag"
                    L12_2 = L12_2[L13_2]
                    L13_2 = L4_2
                    L14_2 = 146
                    L15_2 = true
                    L12_2(L13_2, L14_2, L15_2)
                    L12_2 = _ENV
                    L13_2 = "IsControlPressed"
                    L12_2 = L12_2[L13_2]
                    L13_2 = 0
                    L14_2 = 74
                    L12_2 = L12_2(L13_2, L14_2)
                    if L12_2 then
                      L12_2 = _ENV
                      L13_2 = "exports"
                      L12_2 = L12_2[L13_2]
                      L12_2 = L12_2.striano_ridehorse
                      L14_2 = "possoCavalcare"
                      L13_2 = L12_2
                      L12_2 = L12_2[L14_2]
                      L14_2 = true
                      L12_2(L13_2, L14_2)
                      L12_2 = _ENV
                      L13_2 = "ExecuteCommand"
                      L12_2 = L12_2[L13_2]
                      L13_2 = "e prendi6"
                      L12_2(L13_2)
                      L12_2 = _ENV
                      L13_2 = "DetachEntity"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L26_1
                      L12_2(L13_2)
                      L12_2 = _ENV
                      L13_2 = "exports"
                      L12_2 = L12_2[L13_2]
                      L12_2 = L12_2.striano_core
                      L14_2 = "disableLadder"
                      L13_2 = L12_2
                      L12_2 = L12_2[L14_2]
                      L14_2 = false
                      L12_2(L13_2, L14_2)
                      L12_2 = _ENV
                      L13_2 = "GetEntityCoords"
                      L12_2 = L12_2[L13_2]
                      L13_2 = L4_2
                      L12_2 = L12_2(L13_2)
                      L13_2 = _ENV
                      L14_2 = "vector3"
                      L13_2 = L13_2[L14_2]
                      L14_2 = L12_2.x
                      L15_2 = L12_2.y
                      L16_2 = L12_2.z
                      L16_2 = L16_2 - 1.0
                      L13_2 = L13_2(L14_2, L15_2, L16_2)
                      L14_2 = _ENV
                      L15_2 = "SetEntityCompletelyDisableCollision"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L26_1
                      L16_2 = true
                      L17_2 = true
                      L14_2(L15_2, L16_2, L17_2)
                      L14_2 = _ENV
                      L15_2 = "SetEntityCollision"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L26_1
                      L16_2 = true
                      L17_2 = true
                      L14_2(L15_2, L16_2, L17_2)
                      L14_2 = SetEntityCoords
                      L15_2 = L26_1
                      L16_2 = L13_2
                      L14_2(L15_2, L16_2)
                      L14_2 = _ENV
                      L15_2 = "SetEntityRotation"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L26_1
                      L16_2 = _ENV
                      L17_2 = "vector3"
                      L16_2 = L16_2[L17_2]
                      L17_2 = 0
                      L18_2 = 0
                      L19_2 = 0
                      L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L16_2(L17_2, L18_2, L19_2)
                      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
                      L14_2 = _ENV
                      L15_2 = "SetPedConfigFlag"
                      L14_2 = L14_2[L15_2]
                      L15_2 = L4_2
                      L16_2 = 146
                      L17_2 = false
                      L14_2(L15_2, L16_2, L17_2)
                      L14_2 = false
                      L14_1 = L14_2
                    end
                  end
                end
              end
            end
          else
            L8_2 = _ENV
            L9_2 = "Wait"
            L8_2 = L8_2[L9_2]
            L9_2 = 1000
            L8_2(L9_2)
          end
      end
    end
    else
      L8_2 = _ENV
      L9_2 = "Wait"
      L8_2 = L8_2[L9_2]
      L9_2 = 1000
      L8_2(L9_2)
    end
    ::lbl_8782::
  end
end
L39_1(L40_1)
L39_1 = exports
L40_1 = "pedinbraccio"
function L41_1()
  local L0_2, L1_2
  L0_2 = L14_1
  return L0_2
end
L39_1(L40_1, L41_1)
function L39_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L26_1
  if nil ~= L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "DelPedSync"
    L2_2 = PedToNet
    L3_2 = L26_1
    L2_2 = L2_2(L3_2)
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2 = L4_2()
    L3_2, L4_2 = L3_2(L4_2)
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = L27_1
  if nil ~= L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "DelPedSync"
    L2_2 = PedToNet
    L3_2 = L27_1
    L2_2 = L2_2(L3_2)
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2 = L4_2()
    L3_2, L4_2 = L3_2(L4_2)
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = L28_1
  if nil ~= L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "DelPedSync"
    L2_2 = PedToNet
    L3_2 = L28_1
    L2_2 = L2_2(L3_2)
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2 = L4_2()
    L3_2, L4_2 = L3_2(L4_2)
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = false
  L23_1 = L0_2
  L0_2 = 0
  L22_1 = L0_2
  L0_2 = MissioneSurv
  if 16 == L0_2 then
    L0_2 = L24_1
    if L0_2 >= 3 then
      L0_2 = TriggerEvent
      L1_2 = "delScopaMagic"
      L2_2 = false
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = exports
  L0_2 = L0_2.striano_ridehorse
  L1_2 = L0_2
  L0_2 = L0_2.myhorse
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 and L0_2 then
    L1_2 = L27_1
    if L1_2 then
      L1_2 = MissioneSurv
      if 8 == L1_2 then
        L1_2 = L24_1
        if L1_2 >= 1 then
          L1_2 = L27_1
          if L0_2 == L1_2 then
            L1_2 = TriggerEvent
            L2_2 = "dropHorse"
            L1_2(L2_2)
          end
        end
      end
    end
  end
  L1_2 = false
  L19_1 = L1_2
  L1_2 = 0
  L24_1 = L1_2
  L1_2 = DelMissionBlip
  L1_2()
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = false
  L13_1 = L1_2
  L1_2 = false
  L14_1 = L1_2
  L1_2 = nil
  L16_1 = L1_2
  L1_2 = MissioneSurv
  if L1_2 >= 6 then
    L1_2 = ExecuteCommand
    L2_2 = "guidaBase"
    L1_2(L2_2)
  end
  L1_2 = L28_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L28_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L28_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = L28_1
      L1_2(L2_2)
      L1_2 = nil
      L28_1 = L1_2
    end
  end
  L1_2 = L26_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L26_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityAVehicle
      L2_2 = L26_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = L26_1
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = DeleteVehicle
        L2_2 = L26_1
        L1_2(L2_2)
        L1_2 = nil
        L26_1 = L1_2
      end
    end
  end
  L1_2 = L27_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L27_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityAVehicle
      L2_2 = L27_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityAsMissionEntity
        L2_2 = L27_1
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = DeleteVehicle
        L2_2 = L27_1
        L1_2(L2_2)
        L1_2 = nil
        L27_1 = L1_2
      end
    end
  end
  L1_2 = L26_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L26_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L26_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = L26_1
      L1_2(L2_2)
      L1_2 = nil
      L26_1 = L1_2
    end
  end
  L1_2 = L27_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L27_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L27_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = L27_1
      L1_2(L2_2)
      L1_2 = nil
      L27_1 = L1_2
    end
  end
  L1_2 = L27_1
  if L1_2 then
    L1_2 = DoesBlipExist
    L2_2 = L27_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetBlipRoute
      L2_2 = L27_1
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = RemoveBlip
      L2_2 = L27_1
      L1_2(L2_2)
      L1_2 = nil
      L27_1 = L1_2
    end
  end
  L1_2 = ExecuteCommand
  L2_2 = "prova3"
  L1_2(L2_2)
end
AnnullaIncaricoSub = L39_1
L39_1 = RegisterCommand
L40_1 = "annullaob"
function L41_1()
  local L0_2, L1_2
  L0_2 = AnnullaIncaricoSub
  L0_2()
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "delob"
function L41_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "annullaob"
  L0_2(L1_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "ashes"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gifview
  L2_2 = "https://media.discordapp.net/attachments/1515215321571528755/1515216576146833408/ezgif-6f8a8ea9e53db81f.gif?ex=6a2e32e7&is=6a2ce167&hm=c274c138ae2044f5ede2a6389d52d8f0f3946c434e6ca2b64829ea8ea89f0ca9&=&width=810&height=455"
  L3_2 = "Tutorial: How to get /ashes."
  L0_2(L1_2, L2_2, L3_2)
end
L39_1(L40_1, L41_1)
L39_1 = RegisterCommand
L40_1 = "stopob"
function L41_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = MissioneSurv
  if L0_2 > -51 then
    L0_2 = L18_1
    if not L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submex
      L2_2 = ""
      L0_2(L1_2, L2_2)
      L0_2 = L0_1
      if 1 == L0_2 then
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submexInfo
        L2_2 = "Vuoi mettere in pausa le Missioni? Annulleresti anche un eventuale missione iniziata, vuoi farlo?"
        L0_2(L1_2, L2_2)
      else
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submexInfo
        L2_2 = "Do you want pause missions? You will stop also the current missione running if you have, you sure?"
        L0_2(L1_2, L2_2)
      end
      L0_2 = ExecuteCommand
      L1_2 = "e think2"
      L0_2(L1_2)
      while true do
        L0_2 = L0_1
        if 1 == L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.draw
          L2_2 = 74
          L3_2 = "Si, ferma le missioni"
          L4_2 = 73
          L5_2 = "No, annulla"
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        else
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.draw
          L2_2 = 74
          L3_2 = "Yes, stop missions"
          L4_2 = 73
          L5_2 = "No, don't do it"
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        end
        L0_2 = IsDisabledControlPressed
        L1_2 = 0
        L2_2 = 73
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          L0_2 = IsControlPressed
          L1_2 = 0
          L2_2 = 73
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
                goto lbl_100
              end
            end
          end
        end
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submex
        L2_2 = ""
        L0_2(L1_2, L2_2)
        L0_2 = ExecuteCommand
        L1_2 = "e c"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "e cc"
        L0_2(L1_2)
        L0_2 = L0_1
        if 1 == L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_combat
          L1_2 = L0_2
          L0_2 = L0_2.submexInfo
          L2_2 = "Hai scelto di non annullare le missioni."
          L0_2(L1_2, L2_2)
        else
          L0_2 = exports
          L0_2 = L0_2.striano_combat
          L1_2 = L0_2
          L0_2 = L0_2.submexInfo
          L2_2 = "You choose to NOT stop the missions."
          L0_2(L1_2, L2_2)
        end
        do return end
        goto lbl_142
        ::lbl_100::
        L0_2 = IsDisabledControlPressed
        L1_2 = 0
        L2_2 = 74
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          L0_2 = IsControlPressed
          L1_2 = 0
          L2_2 = 74
          L0_2 = L0_2(L1_2, L2_2)
          if not L0_2 then
            goto lbl_142
          end
        end
        L0_2 = true
        L18_1 = L0_2
        L0_2 = L0_1
        if 1 == L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_combat
          L1_2 = L0_2
          L0_2 = L0_2.submexInfo
          L2_2 = "Hai messo in pausa le Missioni, non riceverai informazioni fino a quando non le richiederai nuovamente."
          L0_2(L1_2, L2_2)
        else
          L0_2 = exports
          L0_2 = L0_2.striano_combat
          L1_2 = L0_2
          L0_2 = L0_2.submexInfo
          L2_2 = "Your missions now are paused, you will not get info about until you active them again."
          L0_2(L1_2, L2_2)
        end
        L0_2 = 0
        L24_1 = L0_2
        L0_2 = AnnullaIncaricoSub
        L0_2()
        L0_2 = ExecuteCommand
        L1_2 = "e c"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "e puliscimani"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "clearwaypoints"
        L0_2(L1_2)
        do return end
        ::lbl_142::
        L0_2 = Wait
        L1_2 = 0
        L0_2(L1_2)
      end
    else
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submex
      L2_2 = ""
      L0_2(L1_2, L2_2)
      L0_2 = L0_1
      if 1 == L0_2 then
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submexType
        L2_2 = "Vuoi riattivare le informazioni sulla Missione in corso?"
        L0_2(L1_2, L2_2)
      else
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submexType
        L2_2 = "You you want active information about current mission again?"
        L0_2(L1_2, L2_2)
      end
      L0_2 = ExecuteCommand
      L1_2 = "e binocolo"
      L0_2(L1_2)
      while true do
        L0_2 = L0_1
        if 1 == L0_2 then
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.draw
          L2_2 = 38
          L3_2 = "Si, dammi informazioni"
          L4_2 = 73
          L5_2 = "No, annulla"
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        else
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.draw
          L2_2 = 38
          L3_2 = "Yes, give me informations"
          L4_2 = 73
          L5_2 = "No, don't do it"
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        end
        L0_2 = IsDisabledControlPressed
        L1_2 = 0
        L2_2 = 73
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          L0_2 = IsControlPressed
          L1_2 = 0
          L2_2 = 73
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
                goto lbl_231
              end
            end
          end
        end
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submex
        L2_2 = ""
        L0_2(L1_2, L2_2)
        L0_2 = ExecuteCommand
        L1_2 = "e c"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "e posatasca"
        L0_2(L1_2)
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.submex
        L2_2 = ""
        L0_2(L1_2, L2_2)
        do return end
        goto lbl_259
        ::lbl_231::
        L0_2 = IsDisabledControlPressed
        L1_2 = 0
        L2_2 = 38
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          L0_2 = IsControlPressed
          L1_2 = 0
          L2_2 = 38
          L0_2 = L0_2(L1_2, L2_2)
          if not L0_2 then
            goto lbl_259
          end
        end
        L0_2 = false
        L18_1 = L0_2
        L0_2 = 0
        L24_1 = L0_2
        L0_2 = AnnullaIncaricoSub
        L0_2()
        L0_2 = ExecuteCommand
        L1_2 = "e c"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "e puliscimani"
        L0_2(L1_2)
        L0_2 = ExecuteCommand
        L1_2 = "ob"
        L0_2(L1_2)
        do return end
        ::lbl_259::
        L0_2 = Wait
        L1_2 = 0
        L0_2(L1_2)
      end
    end
  else
    L0_2 = L0_1
    if 1 == L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexError
      L2_2 = "Operazione non ancora disponibile, devi prima completare le missioni base per metterle in pausa."
      L0_2(L1_2, L2_2)
    else
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexError
      L2_2 = "Function blocked at moment, you need to complete first base missions to be able pause them."
      L0_2(L1_2, L2_2)
    end
  end
end
L39_1(L40_1, L41_1)
L39_1 = true
L40_1 = RegisterCommand
L41_1 = "ob"
function L42_1()
  local L0_2, L1_2
  L0_2 = CheckObiettivo
  L1_2 = MissioneSurv
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "obbiettivo"
function L42_1()
  local L0_2, L1_2
  L0_2 = CheckObiettivo
  L1_2 = MissioneSurv
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "obbiettivi"
function L42_1()
  local L0_2, L1_2
  L0_2 = CheckObiettivo
  L1_2 = MissioneSurv
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "obiettivo"
function L42_1()
  local L0_2, L1_2
  L0_2 = CheckObiettivo
  L1_2 = MissioneSurv
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
L40_1 = RegisterCommand
L41_1 = "obiettivi"
function L42_1()
  local L0_2, L1_2
  L0_2 = CheckObiettivo
  L1_2 = MissioneSurv
  L0_2(L1_2)
end
L40_1(L41_1, L42_1)
NoFloodOB = false
L40_1 = exports
L41_1 = "getCoordMission"
function L42_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = ipairs
  L1_2 = MissionsPos
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.id
    L7_2 = MissioneSurv
    if L6_2 == L7_2 then
      L6_2 = L5_2.pos
      return L6_2
    end
  end
  L0_2 = nil
  return L0_2
end
L40_1(L41_1, L42_1)
L40_1 = {}
L41_1 = {}
L41_1.id = -51
L42_1 = vector3
L43_1 = -1003.186
L44_1 = -6934.379
L45_1 = 6.499
L42_1 = L42_1(L43_1, L44_1, L45_1)
L41_1.pos = L42_1
L41_1.label = "Follow the light..."
L42_1 = {}
L42_1.id = -50
L43_1 = vector3
L44_1 = 2861.297
L45_1 = 7492.095
L46_1 = 16.122
L43_1 = L43_1(L44_1, L45_1, L46_1)
L42_1.pos = L43_1
L42_1.label = "Find a way to go on Sons Island."
L43_1 = {}
L43_1.id = -49
L44_1 = vector3
L45_1 = 2878.691
L46_1 = 7500.095
L47_1 = 19.402
L44_1 = L44_1(L45_1, L46_1, L47_1)
L43_1.pos = L44_1
L43_1.label = "Go to the Checkpoint for the next Main Quest."
L44_1 = {}
L44_1.id = -48
L45_1 = vector3
L46_1 = 3353.115
L47_1 = 7373.699
L48_1 = 6.804
L45_1 = L45_1(L46_1, L47_1, L48_1)
L44_1.pos = L45_1
L44_1.label = "You can use /ob to know next Main Quest."
L45_1 = {}
L45_1.id = -47
L46_1 = vector3
L47_1 = 3084.219
L48_1 = 7485.972
L49_1 = 18.897
L46_1 = L46_1(L47_1, L48_1, L49_1)
L45_1.pos = L46_1
L45_1.label = "Go to the Checkpoint for the next Main Quest."
L46_1 = {}
L46_1.id = -46
L47_1 = vector3
L48_1 = 3550.316
L49_1 = 7157.035
L50_1 = 10.744
L47_1 = L47_1(L48_1, L49_1, L50_1)
L46_1.pos = L47_1
L46_1.label = "Go to the Checkpoint for the next Main Quest."
L47_1 = {}
L47_1.id = -45
L48_1 = vector3
L49_1 = 3166.3
L50_1 = 7496.395
L51_1 = 19.402
L48_1 = L48_1(L49_1, L50_1, L51_1)
L47_1.pos = L48_1
L47_1.label = "Go to the Checkpoint for the next Main Quest."
L48_1 = {}
L48_1.id = -44
L49_1 = vector3
L50_1 = 3773.221
L51_1 = 7266.24
L52_1 = 6.977
L49_1 = L49_1(L50_1, L51_1, L52_1)
L48_1.pos = L49_1
L48_1.label = "Go to the Checkpoint for the next Main Quest."
L49_1 = {}
L49_1.id = -43
L50_1 = vector3
L51_1 = 3106.68
L52_1 = 7249.831
L53_1 = 14.621
L50_1 = L50_1(L51_1, L52_1, L53_1)
L49_1.pos = L50_1
L49_1.label = "Go to the Checkpoint for the next Main Quest."
L50_1 = {}
L51_1 = -42
L50_1.id = L51_1
L51_1 = vector3
L52_1 = 3066.804
L53_1 = 7472.539
L54_1 = 19.524
L51_1 = L51_1(L52_1, L53_1, L54_1)
L50_1.pos = L51_1
L50_1.label = "Go to the Checkpoint for the next Main Quest."
L51_1 = {}
L52_1 = -41
L51_1.id = L52_1
L52_1 = vector3
L53_1 = 3155.623
L54_1 = 7497.62
L55_1 = 19.402
L52_1 = L52_1(L53_1, L54_1, L55_1)
L51_1.pos = L52_1
L51_1.label = "Go to the Checkpoint for the next Main Quest."
L52_1 = {}
L53_1 = -40
L52_1.id = L53_1
L53_1 = vector3
L54_1 = 3365.827
L55_1 = 7361.697
L56_1 = 7.18
L53_1 = L53_1(L54_1, L55_1, L56_1)
L52_1.pos = L53_1
L52_1.label = "Go to the Checkpoint for the next Main Quest."
L53_1 = {}
L54_1 = -39
L53_1.id = L54_1
L54_1 = vector3
L55_1 = 3083.188
L56_1 = 7552.769
L57_1 = 2.787
L54_1 = L54_1(L55_1, L56_1, L57_1)
L53_1.pos = L54_1
L53_1.label = "Go to the Checkpoint for the next Main Quest."
L54_1 = {}
L55_1 = -38
L54_1.id = L55_1
L55_1 = vector3
L56_1 = 2933.77
L57_1 = 7518.164
L58_1 = 17.447
L55_1 = L55_1(L56_1, L57_1, L58_1)
L54_1.pos = L55_1
L54_1.label = "Go to the Checkpoint for the next Main Quest."
L55_1 = {}
L56_1 = -37
L55_1.id = L56_1
L56_1 = vector3
L57_1 = 3441.743
L58_1 = 7568.271
L59_1 = 6.332
L56_1 = L56_1(L57_1, L58_1, L59_1)
L55_1.pos = L56_1
L55_1.label = "Go to the Checkpoint for the next Main Quest."
L56_1 = {}
L57_1 = -36
L56_1.id = L57_1
L57_1 = vector3
L58_1 = 2724.9
L59_1 = 7849.239
L60_1 = 17.749
L57_1 = L57_1(L58_1, L59_1, L60_1)
L56_1.pos = L57_1
L56_1.label = "Go to the Checkpoint for the next Main Quest."
L57_1 = {}
L58_1 = -35
L57_1.id = L58_1
L58_1 = vector3
L59_1 = 1468.684
L60_1 = 7299.648
L61_1 = 12.999
L58_1 = L58_1(L59_1, L60_1, L61_1)
L57_1.pos = L58_1
L57_1.label = "Go to the Checkpoint for the next Main Quest."
L58_1 = {}
L59_1 = -34
L58_1.id = L59_1
L59_1 = vector3
L60_1 = 2912.746
L61_1 = 7494.929
L62_1 = 17.023
L59_1 = L59_1(L60_1, L61_1, L62_1)
L58_1.pos = L59_1
L58_1.label = "Go to the Checkpoint for the next Main Quest."
L59_1 = {}
L60_1 = -33
L59_1.id = L60_1
L60_1 = vector3
L61_1 = 3074.625
L62_1 = 7386.431
L63_1 = 17.88
L60_1 = L60_1(L61_1, L62_1, L63_1)
L59_1.pos = L60_1
L59_1.label = "Go to the Checkpoint for the next Main Quest."
L60_1 = {}
L61_1 = -32
L60_1.id = L61_1
L61_1 = vector3
L62_1 = 3628.955
L63_1 = 7398.225
L64_1 = 8.427
L61_1 = L61_1(L62_1, L63_1, L64_1)
L60_1.pos = L61_1
L60_1.label = "Go to the Checkpoint for the next Main Quest."
L61_1 = {}
L62_1 = -31
L61_1.id = L62_1
L62_1 = vector3
L63_1 = 3695.513
L64_1 = 7467.635
L65_1 = 12.344
L62_1 = L62_1(L63_1, L64_1, L65_1)
L61_1.pos = L62_1
L61_1.label = "Go to the Checkpoint for the next Main Quest."
L62_1 = {}
L63_1 = -30
L62_1.id = L63_1
L63_1 = vector3
L64_1 = 3552.998
L65_1 = 7210.108
L66_1 = 1.928
L63_1 = L63_1(L64_1, L65_1, L66_1)
L62_1.pos = L63_1
L62_1.label = "Go to the Checkpoint for the next Main Quest."
L63_1 = {}
L64_1 = -29
L63_1.id = L64_1
L64_1 = vector3
L65_1 = -1141.12
L66_1 = 7486.104
L67_1 = 11.867
L64_1 = L64_1(L65_1, L66_1, L67_1)
L63_1.pos = L64_1
L64_1 = "Save Kevin on the Industrial Isle, you need a Boat to reach out."
L63_1.label = L64_1
L64_1 = {}
L65_1 = -28
L64_1.id = L65_1
L65_1 = vector3
L66_1 = -1141.12
L67_1 = 7486.104
L68_1 = 11.867
L65_1 = L65_1(L66_1, L67_1, L68_1)
L64_1.pos = L65_1
L65_1 = "Get some not contaminate water for agriculture in the Valley."
L64_1.label = L65_1
L40_1[1] = L41_1
L40_1[2] = L42_1
L40_1[3] = L43_1
L40_1[4] = L44_1
L40_1[5] = L45_1
L40_1[6] = L46_1
L40_1[7] = L47_1
L40_1[8] = L48_1
L40_1[9] = L49_1
L40_1[10] = L50_1
L40_1[11] = L51_1
L40_1[12] = L52_1
L40_1[13] = L53_1
L40_1[14] = L54_1
L40_1[15] = L55_1
L40_1[16] = L56_1
L40_1[17] = L57_1
L40_1[18] = L58_1
L40_1[19] = L59_1
L40_1[20] = L60_1
L40_1[21] = L61_1
L40_1[22] = L62_1
L40_1[23] = L63_1
L40_1[24] = L64_1
MissionsPos = L40_1
L40_1 = _ENV
L41_1 = "CheckObiettivo"
function L42_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GlobalState
  L1_2 = L1_2.SafeModeActive
  if L1_2 then
    L1_2 = print
    L2_2 = "You can't start Main Quest with Night Fog active. Check the timer on top-right when ends."
    L1_2(L2_2)
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "1st_Person_Transition"
    L4_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = L39_1
  if not L1_2 then
    L1_2 = print
    L2_2 = "Le missioni al momento sono disabilitate."
    L1_2(L2_2)
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityPlayingAnim
  L3_2 = L1_2
  L4_2 = "missfam1_yachtbattleonyacht02_"
  L5_2 = "onboom_hangloop_j"
  L6_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    return
  end
  L2_2 = 0
  while true do
    L3_2 = IsNuiFocused
    L3_2 = L3_2()
    if not L3_2 then
      break
    end
    L3_2 = 500
    if not (L2_2 < L3_2) then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L2_2 = L2_2 + 1
  end
  L3_2 = tutorialFatto
  if L3_2 then
    L3_2 = IsEntityVisible
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = NoFloodOB
      if not L3_2 then
        L3_2 = IsPedRagdoll
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = IsPedFatallyInjured
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if not L3_2 then
            L3_2 = IsPedDeadOrDying
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if not L3_2 then
              L3_2 = L24_1
              if 0 == L3_2 then
                L3_2 = L18_1
                if L3_2 then
                  L3_2 = false
                  L18_1 = L3_2
                end
                L3_2 = exports
                L3_2 = L3_2.striano_combat
                L4_2 = L3_2
                L3_2 = L3_2.submex
                L5_2 = ""
                L3_2(L4_2, L5_2)
                NoFloodOB = true
                L3_2 = CreateThread
                function L4_2()
                  local L0_3, L1_3
                  L0_3 = Wait
                  L1_3 = 2000
                  L0_3(L1_3)
                  NoFloodOB = false
                end
                L3_2(L4_2)
                L3_2 = PlaySoundFrontend
                L4_2 = -1
                L5_2 = "FestiveGift"
                L6_2 = "Feed_Message_Sounds"
                L7_2 = 0
                L3_2(L4_2, L5_2, L6_2, L7_2)
                L3_2 = "a"
                L4_2 = GetEntityModel
                L5_2 = L1_2
                L4_2 = L4_2(L5_2)
                if 1885233650 == L4_2 then
                  L3_2 = "o"
                end
                L4_2 = nil
                L5_2 = ipairs
                L6_2 = MissionsPos
                L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
                for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
                  L11_2 = L10_2.id
                  if L11_2 == A0_2 then
                    L4_2 = L10_2
                    break
                  end
                end
                if L4_2 then
                  L5_2 = exports
                  L5_2 = L5_2.striano_combat
                  L6_2 = L5_2
                  L5_2 = L5_2.submexType
                  L7_2 = L4_2.label
                  L5_2(L6_2, L7_2)
                  L5_2 = CreateMissionBlip
                  L6_2 = L4_2.pos
                  L5_2 = L5_2(L6_2)
                  L32_1 = L5_2
                else
                  L5_2 = exports
                  L5_2 = L5_2.striano_combat
                  L6_2 = L5_2
                  L5_2 = L5_2.submex
                  L7_2 = "Theres no Missions at moment."
                  L5_2(L6_2, L7_2)
                  L5_2 = ExecuteCommand
                  L6_2 = "clearwaypoints"
                  L5_2(L6_2)
                  L5_2 = DelMissionBlip
                  L5_2()
                end
              end
          end
        end
      end
    end
  end
  else
    L3_2 = DelMissionBlip
    L3_2()
  end
end
L40_1[L41_1] = L42_1
L40_1 = nil
L41_1 = _ENV
L42_1 = "SpawnaBici"
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = striano_SpawnVehicle
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3
    L2_3 = SetModelAsNoLongerNeeded
    L3_3 = A0_2
    L2_3(L3_3)
    L2_3 = SetEntityAsMissionEntity
    L3_3 = A0_3
    L4_3 = true
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = SetVehicleDoorsLocked
    L3_3 = L1_3
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleLivery
    L3_3 = L1_3
    L4_3 = -1
    L2_3(L3_3, L4_3)
    L2_3 = SetEntityHeading
    L3_3 = L1_3
    L4_3 = rotazioneSpawn
    L2_3(L3_3, L4_3)
    L2_3 = SetVehicleDoorsLocked
    L3_3 = L1_3
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    L2_3 = Wait
    L3_3 = 1000
    L2_3(L3_3)
    L2_3 = AddBlipForEntity
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L40_1 = L2_3
    L2_3 = SetBlipSprite
    L3_3 = L40_1
    L4_3 = 459
    L2_3(L3_3, L4_3)
    L2_3 = SetBlipColour
    L3_3 = L40_1
    L4_3 = 37
    L2_3(L3_3, L4_3)
    L2_3 = SetBlipScale
    L3_3 = L40_1
    L4_3 = 0.7
    L2_3(L3_3, L4_3)
    L2_3 = SetBlipAsShortRange
    L3_3 = L40_1
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = BeginTextCommandSetBlipName
    L3_3 = "STRING"
    L2_3(L3_3)
    L2_3 = AddTextComponentString
    L3_3 = "La tua bici"
    L2_3(L3_3)
    L2_3 = EndTextCommandSetBlipName
    L3_3 = L40_1
    L2_3(L3_3)
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L41_1[L42_1] = L43_1
L41_1 = RegisterNetEvent
L42_1 = "setOBVar"
L41_1(L42_1)
L41_1 = AddEventHandler
L42_1 = "setOBVar"
function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = funcOBVARSET
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "TENNIS_POINT_WON"
  L4_2 = "HUD_AWARDS"
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCommand
L42_1 = "obvar"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L2_2 = L2_2.adminLevel
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = A1_2[1]
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = A1_2[2]
  if nil ~= L5_2 then
    L5_2 = tonumber
    L6_2 = A1_2[2]
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  if L3_2 then
    L5_2 = funcOBVARSET
    L6_2 = L3_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = print
    L6_2 = "Missione ID: "
    L7_2 = MissioneSurv
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
end
L41_1(L42_1, L43_1)
L41_1 = RegisterCommand
L42_1 = "discord"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "10_SEC_WARNING"
  L5_2 = "HUD_MINI_GAME_SOUNDSET"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = ExecuteCommand
  L3_2 = "copia https://discord.gg/VgTGW5St9E"
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "prova Link copied in clipboard."
  L2_2(L3_2)
end
L41_1(L42_1, L43_1)
L41_1 = _ENV
L42_1 = "funcOBVARSET"
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = AnnullaIncaricoSub
  L2_2()
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  MissioneSurv = L2_2
  L2_2 = L24_1
  if L2_2 > 0 then
    L2_2 = 0
    L24_1 = L2_2
    L2_2 = print
    L3_2 = "Mission was active, resetted."
    L2_2(L3_2)
  end
  L2_2 = TriggerServerEvent
  L3_2 = "esx_Pharmacy:setVarDB"
  L4_2 = "mytutorial"
  L5_2 = MissioneSurv
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = ExecuteCommand
  L3_2 = "ob"
  L2_2(L3_2)
end
L41_1[L42_1] = L43_1
L41_1 = vector3
L42_1 = 0.0
L43_1 = 0.0
L44_1 = 0.0
L41_1 = L41_1(L42_1, L43_1, L44_1)
L42_1 = false
L43_1 = _ENV
L44_1 = "LoopSalvaCoordinate"
function L45_1()
  local L0_2, L1_2
  L0_2 = L42_1
  if L0_2 then
    return
  end
  L0_2 = true
  L42_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = vector3
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 > 50.0 then
        L1_3 = GetEntityCoords
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        L2_3 = L41_1
        L1_3 = L1_3 - L2_3
        L1_3 = #L1_3
        if L1_3 > 2.0 then
          L1_3 = GetEntitySpeed
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = 0.1
          if L1_3 < L2_3 then
            L1_3 = IsEntityVisible
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = IsPedRagdoll
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsPedFatallyInjured
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsPedGettingUp
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = GetEntityCoords
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if nil ~= L1_3 then
                      L2_3 = TriggerServerEvent
                      L3_3 = "esx:aggiornaPos"
                      L4_3 = L1_3.x
                      L5_3 = L1_3.y
                      L6_3 = L1_3.z
                      L7_3 = GetPlayerServerId
                      L8_3 = PlayerId
                      L8_3 = L8_3()
                      L7_3, L8_3 = L7_3(L8_3)
                      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
                      L41_1 = L1_3
                    end
                  end
                end
              end
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = 5000
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
L43_1[L44_1] = L45_1
L43_1 = RegisterCommand
L44_1 = "fadeout"
function L45_1()
  local L0_2, L1_2
  L0_2 = DoScreenFadeOut
  L1_2 = 500
  L0_2(L1_2)
end
L43_1(L44_1, L45_1)
L43_1 = RegisterCommand
L44_1 = "fadein"
function L45_1()
  local L0_2, L1_2
  L0_2 = DoScreenFadeIn
  L1_2 = 500
  L0_2(L1_2)
end
L43_1(L44_1, L45_1)
L43_1 = _ENV
L44_1 = "Caratteristiche"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2
  L0_2 = TriggerEvent
  L1_2 = "striano_skin:edit"
  L2_2 = {}
  L3_2 = "mom"
  L4_2 = "dad"
  L5_2 = "face_md_weight"
  L6_2 = "skin_md_weight"
  L7_2 = "nose_1"
  L8_2 = "nose_2"
  L9_2 = "nose_3"
  L10_2 = "nose_4"
  L11_2 = "nose_5"
  L12_2 = "nose_6"
  L13_2 = "cheeks_1"
  L14_2 = "cheeks_2"
  L15_2 = "cheeks_3"
  L16_2 = "lip_thickness"
  L17_2 = "jaw_1"
  L18_2 = "jaw_2"
  L19_2 = "chin_1"
  L20_2 = "chin_2"
  L21_2 = "chin_3"
  L22_2 = "chin_4"
  L23_2 = "neck_thickness"
  L24_2 = "hair_1"
  L25_2 = "hair_color_1"
  L26_2 = "hair_color_2"
  L27_2 = "eye_color"
  L28_2 = "eye_squint"
  L29_2 = "eyebrows_1"
  L30_2 = "eyebrows_2"
  L31_2 = "eyebrows_3"
  L32_2 = "eyebrows_4"
  L33_2 = "eyebrows_5"
  L34_2 = "eyebrows_6"
  L35_2 = "makeup_1"
  L36_2 = "makeup_2"
  L37_2 = "makeup_3"
  L38_2 = "makeup_4"
  L39_2 = "lipstick_1"
  L40_2 = "lipstick_2"
  L41_2 = "lipstick_3"
  L42_2 = "lipstick_4"
  L43_2 = "blemishes_1"
  L44_2 = "blemishes_2"
  L45_2 = "age_1"
  L46_2 = "age_2"
  L47_2 = "blush_1"
  L48_2 = "blush_2"
  L49_2 = "blush_3"
  L50_2 = "complexion_1"
  L51_2 = "complexion_2"
  L52_2 = "sun_1"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  L2_2[17] = L19_2
  L2_2[18] = L20_2
  L2_2[19] = L21_2
  L2_2[20] = L22_2
  L2_2[21] = L23_2
  L2_2[22] = L24_2
  L2_2[23] = L25_2
  L2_2[24] = L26_2
  L2_2[25] = L27_2
  L2_2[26] = L28_2
  L2_2[27] = L29_2
  L2_2[28] = L30_2
  L2_2[29] = L31_2
  L2_2[30] = L32_2
  L2_2[31] = L33_2
  L2_2[32] = L34_2
  L2_2[33] = L35_2
  L2_2[34] = L36_2
  L2_2[35] = L37_2
  L2_2[36] = L38_2
  L2_2[37] = L39_2
  L2_2[38] = L40_2
  L2_2[39] = L41_2
  L2_2[40] = L42_2
  L2_2[41] = L43_2
  L2_2[42] = L44_2
  L2_2[43] = L45_2
  L2_2[44] = L46_2
  L2_2[45] = L47_2
  L2_2[46] = L48_2
  L2_2[47] = L49_2
  L2_2[48] = L50_2
  L2_2[49] = L51_2
  L2_2[50] = L52_2
  L3_2 = "sun_2"
  L4_2 = "moles_1"
  L5_2 = "moles_2"
  L6_2 = "chest_1"
  L7_2 = "chest_2"
  L8_2 = "chest_3"
  L9_2 = "decals_1"
  L10_2 = "decals_2"
  L11_2 = "beard_1"
  L12_2 = "beard_2"
  L13_2 = "beard_3"
  L14_2 = "beard_4"
  L15_2 = "bodyb_1"
  L16_2 = "bodyb_2"
  L17_2 = "bodyb_3"
  L18_2 = "bodyb_4"
  L2_2[51] = L3_2
  L2_2[52] = L4_2
  L2_2[53] = L5_2
  L2_2[54] = L6_2
  L2_2[55] = L7_2
  L2_2[56] = L8_2
  L2_2[57] = L9_2
  L2_2[58] = L10_2
  L2_2[59] = L11_2
  L2_2[60] = L12_2
  L2_2[61] = L13_2
  L2_2[62] = L14_2
  L2_2[63] = L15_2
  L2_2[64] = L16_2
  L2_2[65] = L17_2
  L2_2[66] = L18_2
  L0_2(L1_2, L2_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "VestitiPG"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = TriggerEvent
  L1_2 = "striano_skin:edit"
  L2_2 = {}
  L3_2 = "tshirt_1"
  L4_2 = "tshirt_2"
  L5_2 = "torso_1"
  L6_2 = "torso_2"
  L7_2 = "arms"
  L8_2 = "arms_2"
  L9_2 = "pants_1"
  L10_2 = "pants_2"
  L11_2 = "shoes_1"
  L12_2 = "shoes_2"
  L13_2 = "chain_1"
  L14_2 = "chain_2"
  L15_2 = "helmet_1"
  L16_2 = "helmet_2"
  L17_2 = "bracelets_1"
  L18_2 = "bracelets_2"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  L0_2(L1_2, L2_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "calcolovita"
function L45_1()
  local L0_2, L1_2, L2_2
  L0_2 = 10
  L1_2 = 50 * L0_2
  L2_2 = 200
  if L1_2 < L2_2 then
    L1_2 = 200
  end
  return L1_2
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "LifeByRank"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_editor
    L2_2 = L1_2
    L1_2 = L1_2.updateMaxHealth
    L3_2 = 500
    L1_2(L2_2, L3_2)
    L1_2 = SetPedMaxHealth
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = 500
    L1_2(L2_2, L3_2)
    L1_2 = SetEntityHealth
    L2_2 = L0_2
    L3_2 = GetEntityMaxHealth
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = TriggerServerEvent
    L2_2 = "status:set"
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = "vitapl"
    L5_2 = GetEntityMaxHealth
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L5_2, L6_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = print
    L2_2 = "La tua vita: "
    L3_2 = GetEntityHealth
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " - MAX: "
    L5_2 = GetEntityMaxHealth
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = " hp."
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    L1_2(L2_2)
  end
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "exports"
L43_1 = L43_1[L44_1]
L44_1 = "getliferank"
function L45_1()
  local L0_2, L1_2
  L0_2 = GetEntityMaxHealth
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  return L0_2(L1_2)
end
L43_1(L44_1, L45_1)
L43_1 = _ENV
L44_1 = "exports"
L43_1 = L43_1[L44_1]
L44_1 = "liferank"
function L45_1()
  local L0_2, L1_2
  L0_2 = LifeByRank
  L0_2()
end
L43_1(L44_1, L45_1)
L43_1 = _ENV
L44_1 = "exports"
L43_1 = L43_1[L44_1]
L44_1 = "getsubmisID"
function L45_1()
  local L0_2, L1_2
  L0_2 = L24_1
  return L0_2
end
L43_1(L44_1, L45_1)
L43_1 = _ENV
L44_1 = "exports"
L43_1 = L43_1[L44_1]
L44_1 = "getMissioneSurv"
function L45_1()
  local L0_2, L1_2
  L0_2 = MissioneSurv
  return L0_2
end
L43_1(L44_1, L45_1)
L43_1 = RegisterNetEvent
L44_1 = "InfoBottega"
L43_1(L44_1)
L43_1 = AddEventHandler
L44_1 = "InfoBottega"
function L45_1()
  local L0_2, L1_2
  L0_2 = L24_1
  if 0 == L0_2 then
    L0_2 = tutorialFatto
    if L0_2 then
    end
  end
end
L43_1(L44_1, L45_1)
L43_1 = _ENV
L44_1 = "disableIK"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedLegIkMode
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanHeadIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanArmIk
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "enableIK"
function L45_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedLegIkMode
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanHeadIk
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanArmIk
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "voceidTT"
L45_1 = "AZnzlk1XvdvUeBnXmlld"
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "genere"
L45_1 = "UOMO"
L43_1[L44_1] = L45_1
L43_1 = _ENV
L44_1 = "StoResistendo"
L43_1[L44_1] = 0
L43_1 = _ENV
L44_1 = "vector3"
L43_1 = L43_1[L44_1]
L44_1 = 3847.208
L45_1 = 6465.439
L46_1 = 1.469
L43_1 = L43_1(L44_1, L45_1, L46_1)
L44_1 = nil
L45_1 = nil
L46_1 = 2.0
L47_1 = 55.0
L48_1 = 40.0
L49_1 = true
L50_1 = true
L51_1 = 0.25
L52_1 = 1000
L53_1 = 2.5
L54_1 = 2.0
L55_1 = nil
L56_1 = false
L57_1 = {}
L58_1 = "enabled"
L59_1 = false
L57_1[L58_1] = L59_1
L58_1 = "h"
L59_1 = 0.0
L57_1[L58_1] = L59_1
L58_1 = "target"
L59_1 = 0.0
L57_1[L58_1] = L59_1
L58_1 = "speed"
L59_1 = 3.5
L57_1[L58_1] = L59_1
L58_1 = _ENV
L59_1 = "vec3"
L58_1 = L58_1[L59_1]
if not L58_1 then
  L58_1 = _ENV
  L59_1 = "vec3"
  function L60_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2
    L3_2 = vector3
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L58_1[L59_1] = L60_1
end
function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vec3
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  return L1_2(L2_2, L3_2, L4_2)
end
function L59_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vec3
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
function L60_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = vec3
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
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = vec3
  L3_2 = A0_2.x
  L3_2 = L3_2 * A1_2
  L4_2 = A0_2.y
  L4_2 = L4_2 * A1_2
  L5_2 = A0_2.z
  L5_2 = L5_2 * A1_2
  return L2_2(L3_2, L4_2, L5_2)
end
function L62_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vector3
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = #L1_2
  return L1_2
end
function L63_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L62_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1.0E-4
  if L1_2 > L2_2 then
    L2_2 = L61_1
    L3_2 = A0_2
    L4_2 = 1.0
    L4_2 = L4_2 / L1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = vec3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  end
end
function L64_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L59_1
  L4_2 = L61_1
  L5_2 = A0_2
  L6_2 = 1
  L6_2 = L6_2 - A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L61_1
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L65_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vec3
  L2_2 = A0_2.y
  L2_2 = -L2_2
  L3_2 = A0_2.x
  L4_2 = 0.0
  return L1_2(L2_2, L3_2, L4_2)
end
function L66_1(A0_2)
  local L1_2
  L1_2 = 0.5
  if A0_2 < L1_2 then
    L1_2 = 4 * A0_2
    L1_2 = L1_2 * A0_2
    L1_2 = L1_2 * A0_2
    return L1_2
  end
  L1_2 = 2 * A0_2
  A0_2 = L1_2 - 2
  L1_2 = 0.5 * A0_2
  L1_2 = L1_2 * A0_2
  L1_2 = L1_2 * A0_2
  L1_2 = L1_2 + 1
  return L1_2
end
function L67_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L64_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L64_1
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L64_1
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = A3_2
  return L6_2(L7_2, L8_2, L9_2)
end
function L68_1(A0_2)
  local L1_2
  L57_1.enabled = A0_2
  if A0_2 then
    L1_2 = 0.12
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = 0.0
  ::lbl_8::
  L57_1.target = L1_2
end
function L69_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L55_1
  if L0_2 then
    L0_2 = DoesCamExist
    L1_2 = L55_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = RenderScriptCams
      L1_2 = false
      L2_2 = true
      L3_2 = L52_1
      L4_2 = true
      L5_2 = true
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
      L0_2 = DestroyCam
      L1_2 = L55_1
      L2_2 = false
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = nil
  L1_2 = false
  L56_1 = L1_2
  L55_1 = L0_2
  L0_2 = ClearFocus
  L0_2()
  L0_2 = L68_1
  L1_2 = false
  L0_2(L1_2)
end
function L70_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L56_1
  if L1_2 then
    L1_2 = L69_1
    L1_2()
  end
  L1_2 = true
  L56_1 = L1_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = GetEntityCoords
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = L45_1
  if L5_2 then
    L5_2 = L58_1
    L6_2 = L45_1
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_30
    end
  end
  L5_2 = vec3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2 + 0.9
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  ::lbl_30::
  L6_2 = L43_1
  if nil == L6_2 then
    L6_2 = GetEntityForwardVector
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.unpack
    L8_2 = GetEntityCoords
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
    L9_2 = L6_2 * 20.5
    L9_2 = L9_2 * -1
    L8_2 = L8_2 + L9_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L10_2 = vector3
    L11_2 = L7_2
    L12_2 = L8_2
    L13_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L43_1 = L10_2
  end
  L6_2 = L58_1
  L7_2 = L43_1
  L6_2 = L6_2(L7_2)
  L7_2 = L58_1
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = L63_1
  L9_2 = L60_1
  L10_2 = L7_2
  L11_2 = L6_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = L63_1
  L10_2 = L65_1
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L59_1
  L11_2 = L59_1
  L12_2 = L64_1
  L13_2 = L6_2
  L14_2 = L7_2
  L15_2 = 0.5
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = L61_1
  L14_2 = L9_2
  L15_2 = L54_1
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = vec3
  L13_2 = 0
  L14_2 = 0
  L15_2 = L53_1
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = CreateCam
  L12_2 = "DEFAULT_SCRIPTED_CAMERA"
  L13_2 = true
  L11_2 = L11_2(L12_2, L13_2)
  L55_1 = L11_2
  L11_2 = SetCamCoord
  L12_2 = L55_1
  L13_2 = L6_2.x
  L14_2 = L6_2.y
  L15_2 = L6_2.z
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = SetCamFov
  L12_2 = L55_1
  L13_2 = L47_1
  L11_2(L12_2, L13_2)
  L11_2 = GetEntityCoords
  L12_2 = L1_2
  L11_2 = L11_2(L12_2)
  L44_1 = L11_2
  L11_2 = PointCamAtCoord
  L12_2 = L55_1
  L13_2 = L44_1.x
  L14_2 = L44_1.y
  L15_2 = L44_1.z
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = SetCamActive
  L12_2 = L55_1
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = RenderScriptCams
  L12_2 = true
  L13_2 = true
  L14_2 = 700
  L15_2 = true
  L16_2 = true
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L68_1
  L12_2 = true
  L11_2(L12_2)
  L11_2 = L50_1
  if L11_2 then
    L11_2 = ShakeCam
    L12_2 = L55_1
    L13_2 = "HAND_SHAKE"
    L14_2 = L51_1
    L11_2(L12_2, L13_2, L14_2)
  end
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    while true do
      L1_3 = L56_1
      if not L1_3 then
        break
      end
      L1_3 = L55_1
      if not L1_3 then
        break
      end
      L1_3 = DoesCamExist
      L2_3 = L55_1
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L1_3 = L1_3 / 1000.0
      L2_3 = math
      L2_3 = L2_3.min
      L3_3 = 1.0
      L4_3 = A0_2
      L4_3 = L1_3 / L4_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L66_1
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = L45_1
      if nil == L4_3 then
        L4_3 = table
        L4_3 = L4_3.unpack
        L5_3 = GetEntityCoords
        L6_3 = PlayerPedId
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3()
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L4_3, L5_3, L6_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L7_3 = vec3
        L8_3 = L4_3
        L9_3 = L5_3
        L10_3 = L6_3 + 0.9
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L8_3 = L64_1
        L9_3 = L7_2
        L10_3 = L7_3
        L11_3 = 0.05
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        L7_2 = L8_3
      end
      L4_3 = L63_1
      L5_3 = L60_1
      L6_3 = L7_2
      L7_3 = L6_2
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L5_3(L6_3, L7_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L5_3 = L63_1
      L6_3 = L65_1
      L7_3 = L4_3
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3(L7_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L6_3 = L59_1
      L7_3 = L59_1
      L8_3 = L64_1
      L9_3 = L6_2
      L10_3 = L7_2
      L11_3 = 0.5
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L9_3 = L61_1
      L10_3 = L5_3
      L11_3 = L54_1
      L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3, L11_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L8_3 = vec3
      L9_3 = 0
      L10_3 = 0
      L11_3 = L53_1
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L8_3(L9_3, L10_3, L11_3)
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3 = L64_1
      L8_3 = L10_2
      L9_3 = L6_3
      L10_3 = 0.08
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L10_2 = L7_3
      L7_3 = L67_1
      L8_3 = L6_2
      L9_3 = L10_2
      L10_3 = L7_2
      L11_3 = L3_3
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      L8_3 = SetCamCoord
      L9_3 = L55_1
      L10_3 = L7_3.x
      L11_3 = L7_3.y
      L12_3 = L7_3.z
      L8_3(L9_3, L10_3, L11_3, L12_3)
      L8_3 = L47_1
      L9_3 = L48_1
      L10_3 = L47_1
      L9_3 = L9_3 - L10_3
      L9_3 = L9_3 * L3_3
      L8_3 = L8_3 + L9_3
      L9_3 = SetCamFov
      L10_3 = L55_1
      L11_3 = L8_3
      L9_3(L10_3, L11_3)
      L9_3 = PointCamAtCoord
      L10_3 = L55_1
      L11_3 = L7_2.x
      L12_3 = L7_2.y
      L13_3 = L7_2.z
      L9_3(L10_3, L11_3, L12_3, L13_3)
      L9_3 = L45_1
      if nil == L9_3 then
        L9_3 = vec3
        L10_3 = qx
        if not L10_3 then
          L10_3 = L2_2
        end
        L11_3 = qy
        if not L11_3 then
          L11_3 = L3_2
        end
        L12_3 = qz
        if not L12_3 then
          L12_3 = L4_2
        end
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L10_3 = L62_1
        L11_3 = L60_1
        L12_3 = L7_3
        L13_3 = L9_3
        L11_3, L12_3, L13_3 = L11_3(L12_3, L13_3)
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        L11_3 = L46_1
        if L10_3 <= L11_3 then
          break
        end
      else
        L9_3 = L62_1
        L10_3 = L60_1
        L11_3 = L7_3
        L12_3 = L7_2
        L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3, L12_3)
        L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
        L10_3 = 0.25
      end
      if L9_3 <= L10_3 or L2_3 >= 1.0 then
        break
      end
      L9_3 = Wait
      L10_3 = 0
      L9_3(L10_3)
    end
    L1_3 = L69_1
    L1_3()
  end
  L11_2(L12_2)
  L11_2 = CreateThread
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L49_1
      if L0_3 then
        L0_3 = GetFrameTime
        L0_3 = L0_3()
        L1_3 = L57_1.target
        L2_3 = L57_1.h
        L1_3 = L1_3 - L2_3
        L2_3 = math
        L2_3 = L2_3.abs
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L3_3 = 1.0E-4
        if L2_3 > L3_3 then
          L2_3 = L57_1.h
          L3_3 = math
          L3_3 = L3_3.min
          L4_3 = 1.0
          L5_3 = L57_1.speed
          L5_3 = L5_3 * L0_3
          L3_3 = L3_3(L4_3, L5_3)
          L3_3 = L1_3 * L3_3
          L2_3 = L2_3 + L3_3
          L57_1.h = L2_3
        end
        L2_3 = L57_1.h
        L3_3 = 1.0E-4
        if L2_3 > L3_3 then
          L2_3 = L57_1.h
          L3_3 = DrawRect
          L4_3 = 0.5
          L5_3 = L2_3 / 2
          L5_3 = 0.0 + L5_3
          L6_3 = 1.0
          L7_3 = L2_3
          L8_3 = 0
          L9_3 = 0
          L10_3 = 0
          L11_3 = 220
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          L3_3 = DrawRect
          L4_3 = 0.5
          L5_3 = L2_3 / 2
          L6_3 = 1.0
          L5_3 = L6_3 - L5_3
          L6_3 = 1.0
          L7_3 = L2_3
          L8_3 = 0
          L9_3 = 0
          L10_3 = 0
          L11_3 = 220
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L11_2(L12_2)
end
L71_1 = false
L72_1 = RegisterCommand
L73_1 = "radar"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L71_1
  L0_2 = not L0_2
  L71_1 = L0_2
  L0_2 = DisplayRadar
  L1_2 = L71_1
  L0_2(L1_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_SEC_WARNING"
  L3_2 = "HUD_MINI_GAME_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "VestitiTutorial"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 1885233650 == L1_2 then
    L1_2 = {}
    L1_2.mask_1 = 0
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 15
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 65
    L1_2.torso_2 = 0
    L1_2.arms = 53
    L1_2.bags_1 = 0
    L1_2.bags_2 = 0
    L1_2.pants_1 = 38
    L1_2.pants_2 = 0
    L1_2.shoes_1 = 27
    L1_2.shoes_2 = 0
    L1_2.chain_1 = 0
    L1_2.chain_2 = 0
    L1_2.bproof_1 = 0
    L1_2.bproof_2 = 0
    L1_2.decals_1 = 0
    L1_2.decals_2 = 0
    L1_2.helmet_1 = -1
    L1_2.helmet_2 = 0
    L1_2.glasses_1 = 0
    L1_2.glasses_2 = 0
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = {}
    L1_2.mask_1 = 0
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 14
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 59
    L1_2.torso_2 = 0
    L1_2.arms = 19
    L1_2.bags_1 = 0
    L1_2.bags_2 = 0
    L1_2.pants_1 = 38
    L1_2.pants_2 = 0
    L1_2.shoes_1 = 26
    L1_2.shoes_2 = 0
    L1_2.chain_1 = 0
    L1_2.chain_2 = 0
    L1_2.bproof_1 = 0
    L1_2.bproof_2 = 0
    L1_2.decals_1 = 0
    L1_2.decals_2 = 0
    L1_2.helmet_1 = -1
    L1_2.helmet_2 = 0
    L1_2.glasses_1 = 5
    L1_2.glasses_2 = 0
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "VestitiBunker"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 1885233650 == L1_2 then
    L1_2 = {}
    L1_2.mask_1 = 0
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 15
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 599
    L1_2.torso_2 = 0
    L1_2.arms = 15
    L1_2.bags_1 = 0
    L1_2.bags_2 = 0
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = {}
    L1_2.mask_1 = 0
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 15
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 603
    L1_2.torso_2 = 0
    L1_2.arms = 15
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "ottieniSkinRandom"
function L74_1(A0_2)
  local L1_2, L2_2
  L1_2 = ottieniSkinRand
  L2_2 = A0_2
  return L1_2(L2_2)
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "ottieniSkinRandomNudo"
function L74_1()
  local L0_2, L1_2
  L0_2 = ottieniSkinRandNudo
  return L0_2()
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "ottieniSkinRandomNudoBlack"
function L74_1()
  local L0_2, L1_2
  L0_2 = ottieniSkinRandNudoBlack
  return L0_2()
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "ottieniSkinStile"
function L74_1(A0_2)
  local L1_2, L2_2
  L1_2 = ottieniSkinDaStile
  L2_2 = A0_2
  return L1_2(L2_2)
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "ottieniSkinDaStile"
function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 44
  L1_2 = L1_2(L2_2, L3_2)
  if 21 == L1_2 or 33 == L1_2 then
    L1_2 = 22
  end
  if 39 == L1_2 then
    L1_2 = 16
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 31
  L4_2 = 145
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = 2
  L6_2 = 3
  L7_2 = 9
  L8_2 = 10
  L9_2 = 11
  L10_2 = 12
  L11_2 = 13
  L12_2 = 14
  L13_2 = 15
  L14_2 = 16
  L15_2 = 27
  L16_2 = 28
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = #L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L3_2[L4_2]
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 28
  L5_2 = L5_2(L6_2, L7_2)
  if 19 == L5_2 or 21 == L5_2 or 23 == L5_2 or 24 == L5_2 then
    L5_2 = 18
  end
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 0
  L8_2 = 13
  L6_2 = L6_2(L7_2, L8_2)
  if 9 == L6_2 or 11 == L6_2 then
    L6_2 = 1
  end
  L7_2 = {}
  if "Sole" == A0_2 then
    L8_2 = "{\"torso_1\":65,\"torso_2\":0,\"pants_2\":0,\"pants_1\":38,\"shoes_1\":27,\"shoes_2\":0,\"moles_1\":"
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 0
    L11_2 = 10
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = ",\"chest_2\":"
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 0
    L13_2 = 5
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = ",\"chest_1\":"
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = 0
    L15_2 = 6
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = ",\"chest_3\":"
    L15_2 = L4_2
    L16_2 = ",\"hair_2\":0,\"moles_2\":"
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = 0
    L19_2 = 10
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
    L19_2 = math
    L19_2 = L19_2.random
    L20_2 = 0
    L21_2 = 33
    L19_2 = L19_2(L20_2, L21_2)
    L20_2 = ",\"mom\":"
    L21_2 = L1_2
    L22_2 = ",\"chin_4\":"
    L23_2 = math
    L23_2 = L23_2.random
    L24_2 = -10
    L25_2 = 10
    L23_2 = L23_2(L24_2, L25_2)
    L24_2 = ",\"arms\":53,\"eyebrows_3\":"
    L25_2 = L4_2
    L26_2 = ",\"jaw_1\":0,\"blush_2\":0,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
    L27_2 = math
    L27_2 = L27_2.random
    L28_2 = -10
    L29_2 = 10
    L27_2 = L27_2(L28_2, L29_2)
    L28_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
    L29_2 = math
    L29_2 = L29_2.random
    L30_2 = -1
    L31_2 = 11
    L29_2 = L29_2(L30_2, L31_2)
    L30_2 = ",\"mask_2\":0,\"cheeks_2\":"
    L31_2 = math
    L31_2 = L31_2.random
    L32_2 = -10
    L33_2 = 10
    L31_2 = L31_2(L32_2, L33_2)
    L32_2 = ",\"sun_1\":"
    L33_2 = math
    L33_2 = L33_2.random
    L34_2 = 0
    L35_2 = 10
    L33_2 = L33_2(L34_2, L35_2)
    L34_2 = ",\"nose_2\":"
    L35_2 = math
    L35_2 = L35_2.random
    L36_2 = -10
    L37_2 = 10
    L35_2 = L35_2(L36_2, L37_2)
    L36_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
    L37_2 = math
    L37_2 = L37_2.random
    L38_2 = -10
    L39_2 = 10
    L37_2 = L37_2(L38_2, L39_2)
    L38_2 = ",\"eyebrows_6\":0,\"blush_3\":0,\"beard_2\":10,\"age_2\":"
    L39_2 = math
    L39_2 = L39_2.random
    L40_2 = 0
    L41_2 = 10
    L39_2 = L39_2(L40_2, L41_2)
    L40_2 = ",\"cheeks_3\":"
    L41_2 = math
    L41_2 = L41_2.random
    L42_2 = -10
    L43_2 = 10
    L41_2 = L41_2(L42_2, L43_2)
    L42_2 = ",\"nose_1\":"
    L43_2 = math
    L43_2 = L43_2.random
    L44_2 = -10
    L45_2 = 10
    L43_2 = L43_2(L44_2, L45_2)
    L44_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
    L45_2 = math
    L45_2 = L45_2.random
    L46_2 = -10
    L47_2 = 10
    L45_2 = L45_2(L46_2, L47_2)
    L46_2 = ",\"beard_3\":"
    L47_2 = L4_2
    L48_2 = ",\"bodyb_3\":"
    L49_2 = math
    L49_2 = L49_2.random
    L50_2 = -1
    L51_2 = 1
    L49_2 = L49_2(L50_2, L51_2)
    L50_2 = ",\"sex\":1,\"nose_5\":"
    L51_2 = math
    L51_2 = L51_2.random
    L52_2 = -10
    L53_2 = 10
    L51_2 = L51_2(L52_2, L53_2)
    L52_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
    L53_2 = math
    L53_2 = L53_2.random
    L54_2 = 0
    L55_2 = 14
    L53_2 = L53_2(L54_2, L55_2)
    L54_2 = ",\"blemishes_2\":"
    L55_2 = math
    L55_2 = L55_2.random
    L56_2 = 0
    L57_2 = 10
    L55_2 = L55_2(L56_2, L57_2)
    L56_2 = ",\"chin_1\":"
    L57_2 = math
    L57_2 = L57_2.random
    L58_2 = -10
    L59_2 = 10
    L57_2 = L57_2(L58_2, L59_2)
    L58_2 = ",\"skin_md_weight\":"
    L59_2 = math
    L59_2 = L59_2.random
    L60_2 = 0
    L61_2 = 100
    L59_2 = L59_2(L60_2, L61_2)
    L60_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
    L61_2 = L4_2
    L62_2 = ",\"neck_thickness\":"
    L63_2 = math
    L63_2 = L63_2.random
    L64_2 = -10
    L65_2 = 10
    L63_2 = L63_2(L64_2, L65_2)
    L64_2 = ",\"ears_1\":-1,\"blemishes_1\":"
    L65_2 = math
    L65_2 = L65_2.random
    L66_2 = 0
    L67_2 = 23
    L65_2 = L65_2(L66_2, L67_2)
    L66_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
    L67_2 = math
    L67_2 = L67_2.random
    L68_2 = -10
    L69_2 = 10
    L67_2 = L67_2(L68_2, L69_2)
    L68_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
    L69_2 = L6_2
    L70_2 = ",\"lip_thickness\":"
    L71_2 = math
    L71_2 = L71_2.random
    L72_2 = -10
    L73_2 = 10
    L71_2 = L71_2(L72_2, L73_2)
    L72_2 = ",\"beard_4\":0,\"nose_4\":"
    L73_2 = math
    L73_2 = L73_2.random
    L74_2 = -10
    L75_2 = 10
    L73_2 = L73_2(L74_2, L75_2)
    L74_2 = ",\"watches_2\":0,\"sun_2\":"
    L75_2 = math
    L75_2 = L75_2.random
    L76_2 = 0
    L77_2 = 10
    L75_2 = L75_2(L76_2, L77_2)
    L76_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
    L77_2 = math
    L77_2 = L77_2.random
    L78_2 = 0
    L79_2 = 44
    L77_2 = L77_2(L78_2, L79_2)
    L78_2 = ",\"bodyb_4\":"
    L79_2 = math
    L79_2 = L79_2.random
    L80_2 = 0
    L81_2 = 10
    L79_2 = L79_2(L80_2, L81_2)
    L80_2 = ",\"beard_1\":"
    L81_2 = L5_2
    L82_2 = ",\"chin_3\":"
    L83_2 = math
    L83_2 = L83_2.random
    L84_2 = -10
    L85_2 = 10
    L83_2 = L83_2(L84_2, L85_2)
    L84_2 = ",\"hair_1\":"
    L85_2 = L2_2
    L86_2 = ",\"bodyb_2\":"
    L87_2 = math
    L87_2 = L87_2.random
    L88_2 = 0
    L89_2 = 10
    L87_2 = L87_2(L88_2, L89_2)
    L88_2 = "}"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2
    L7_2 = L8_2
  elseif "Caos" == A0_2 then
    L8_2 = "{\"torso_1\":67,\"torso_2\":1,\"pants_2\":0,\"pants_1\":42,\"shoes_1\":27,\"shoes_2\":0,\"moles_1\":"
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 0
    L11_2 = 10
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = ",\"chest_2\":"
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 0
    L13_2 = 5
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = ",\"chest_1\":"
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = 0
    L15_2 = 6
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = ",\"chest_3\":"
    L15_2 = L4_2
    L16_2 = ",\"hair_2\":0,\"moles_2\":"
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = 0
    L19_2 = 10
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
    L19_2 = math
    L19_2 = L19_2.random
    L20_2 = 0
    L21_2 = 33
    L19_2 = L19_2(L20_2, L21_2)
    L20_2 = ",\"mom\":"
    L21_2 = L1_2
    L22_2 = ",\"chin_4\":"
    L23_2 = math
    L23_2 = L23_2.random
    L24_2 = -10
    L25_2 = 10
    L23_2 = L23_2(L24_2, L25_2)
    L24_2 = ",\"arms\":53,\"eyebrows_3\":"
    L25_2 = L4_2
    L26_2 = ",\"jaw_1\":0,\"blush_2\":0,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
    L27_2 = math
    L27_2 = L27_2.random
    L28_2 = -10
    L29_2 = 10
    L27_2 = L27_2(L28_2, L29_2)
    L28_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
    L29_2 = math
    L29_2 = L29_2.random
    L30_2 = -1
    L31_2 = 11
    L29_2 = L29_2(L30_2, L31_2)
    L30_2 = ",\"mask_2\":0,\"cheeks_2\":"
    L31_2 = math
    L31_2 = L31_2.random
    L32_2 = -10
    L33_2 = 10
    L31_2 = L31_2(L32_2, L33_2)
    L32_2 = ",\"sun_1\":"
    L33_2 = math
    L33_2 = L33_2.random
    L34_2 = 0
    L35_2 = 10
    L33_2 = L33_2(L34_2, L35_2)
    L34_2 = ",\"nose_2\":"
    L35_2 = math
    L35_2 = L35_2.random
    L36_2 = -10
    L37_2 = 10
    L35_2 = L35_2(L36_2, L37_2)
    L36_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
    L37_2 = math
    L37_2 = L37_2.random
    L38_2 = -10
    L39_2 = 10
    L37_2 = L37_2(L38_2, L39_2)
    L38_2 = ",\"eyebrows_6\":0,\"blush_3\":0,\"beard_2\":10,\"age_2\":"
    L39_2 = math
    L39_2 = L39_2.random
    L40_2 = 0
    L41_2 = 10
    L39_2 = L39_2(L40_2, L41_2)
    L40_2 = ",\"cheeks_3\":"
    L41_2 = math
    L41_2 = L41_2.random
    L42_2 = -10
    L43_2 = 10
    L41_2 = L41_2(L42_2, L43_2)
    L42_2 = ",\"nose_1\":"
    L43_2 = math
    L43_2 = L43_2.random
    L44_2 = -10
    L45_2 = 10
    L43_2 = L43_2(L44_2, L45_2)
    L44_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
    L45_2 = math
    L45_2 = L45_2.random
    L46_2 = -10
    L47_2 = 10
    L45_2 = L45_2(L46_2, L47_2)
    L46_2 = ",\"beard_3\":"
    L47_2 = L4_2
    L48_2 = ",\"bodyb_3\":"
    L49_2 = math
    L49_2 = L49_2.random
    L50_2 = -1
    L51_2 = 1
    L49_2 = L49_2(L50_2, L51_2)
    L50_2 = ",\"sex\":1,\"nose_5\":"
    L51_2 = math
    L51_2 = L51_2.random
    L52_2 = -10
    L53_2 = 10
    L51_2 = L51_2(L52_2, L53_2)
    L52_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
    L53_2 = math
    L53_2 = L53_2.random
    L54_2 = 0
    L55_2 = 14
    L53_2 = L53_2(L54_2, L55_2)
    L54_2 = ",\"blemishes_2\":"
    L55_2 = math
    L55_2 = L55_2.random
    L56_2 = 0
    L57_2 = 10
    L55_2 = L55_2(L56_2, L57_2)
    L56_2 = ",\"chin_1\":"
    L57_2 = math
    L57_2 = L57_2.random
    L58_2 = -10
    L59_2 = 10
    L57_2 = L57_2(L58_2, L59_2)
    L58_2 = ",\"skin_md_weight\":"
    L59_2 = math
    L59_2 = L59_2.random
    L60_2 = 0
    L61_2 = 100
    L59_2 = L59_2(L60_2, L61_2)
    L60_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
    L61_2 = L4_2
    L62_2 = ",\"neck_thickness\":"
    L63_2 = math
    L63_2 = L63_2.random
    L64_2 = -10
    L65_2 = 10
    L63_2 = L63_2(L64_2, L65_2)
    L64_2 = ",\"ears_1\":-1,\"blemishes_1\":"
    L65_2 = math
    L65_2 = L65_2.random
    L66_2 = 0
    L67_2 = 23
    L65_2 = L65_2(L66_2, L67_2)
    L66_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
    L67_2 = math
    L67_2 = L67_2.random
    L68_2 = -10
    L69_2 = 10
    L67_2 = L67_2(L68_2, L69_2)
    L68_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
    L69_2 = L6_2
    L70_2 = ",\"lip_thickness\":"
    L71_2 = math
    L71_2 = L71_2.random
    L72_2 = -10
    L73_2 = 10
    L71_2 = L71_2(L72_2, L73_2)
    L72_2 = ",\"beard_4\":0,\"nose_4\":"
    L73_2 = math
    L73_2 = L73_2.random
    L74_2 = -10
    L75_2 = 10
    L73_2 = L73_2(L74_2, L75_2)
    L74_2 = ",\"watches_2\":0,\"sun_2\":"
    L75_2 = math
    L75_2 = L75_2.random
    L76_2 = 0
    L77_2 = 10
    L75_2 = L75_2(L76_2, L77_2)
    L76_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
    L77_2 = math
    L77_2 = L77_2.random
    L78_2 = 0
    L79_2 = 44
    L77_2 = L77_2(L78_2, L79_2)
    L78_2 = ",\"bodyb_4\":"
    L79_2 = math
    L79_2 = L79_2.random
    L80_2 = 0
    L81_2 = 10
    L79_2 = L79_2(L80_2, L81_2)
    L80_2 = ",\"beard_1\":"
    L81_2 = L5_2
    L82_2 = ",\"chin_3\":"
    L83_2 = math
    L83_2 = L83_2.random
    L84_2 = -10
    L85_2 = 10
    L83_2 = L83_2(L84_2, L85_2)
    L84_2 = ",\"hair_1\":"
    L85_2 = L2_2
    L86_2 = ",\"bodyb_2\":"
    L87_2 = math
    L87_2 = L87_2.random
    L88_2 = 0
    L89_2 = 10
    L87_2 = L87_2(L88_2, L89_2)
    L88_2 = "}"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2
    L7_2 = L8_2
  end
  return L7_2
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "ottieniSkinRandNudo"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = 44
  L0_2 = L0_2(L1_2, L2_2)
  if 21 == L0_2 or 33 == L0_2 then
    L0_2 = 22
  end
  if 39 == L0_2 then
    L0_2 = 16
  end
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 0
  L3_2 = 136
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = 1
  L4_2 = 2
  L5_2 = 3
  L6_2 = 9
  L7_2 = 10
  L8_2 = 11
  L9_2 = 12
  L10_2 = 13
  L11_2 = 14
  L12_2 = 15
  L13_2 = 16
  L14_2 = 27
  L15_2 = 28
  L16_2 = 29
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = #L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L2_2[L3_2]
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 0
  L6_2 = 28
  L4_2 = L4_2(L5_2, L6_2)
  if 19 == L4_2 or 21 == L4_2 or 23 == L4_2 or 24 == L4_2 then
    L4_2 = 18
  end
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 13
  L5_2 = L5_2(L6_2, L7_2)
  if 9 == L5_2 or 11 == L5_2 then
    L5_2 = 1
  end
  L6_2 = 15
  L7_2 = "{\"torso_1\":15,\"torso_2\":0,\"pants_2\":0,\"pants_1\":56,\"shoes_1\":34,\"shoes_2\":0,\"moles_1\":"
  L8_2 = math
  L8_2 = L8_2.random
  L9_2 = 0
  L10_2 = 10
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = ",\"chest_2\":"
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 0
  L12_2 = 5
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = ",\"chest_1\":"
  L12_2 = math
  L12_2 = L12_2.random
  L13_2 = 0
  L14_2 = 6
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = ",\"chest_3\":"
  L14_2 = L3_2
  L15_2 = ",\"hair_2\":0,\"moles_2\":"
  L16_2 = math
  L16_2 = L16_2.random
  L17_2 = 0
  L18_2 = 10
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
  L18_2 = math
  L18_2 = L18_2.random
  L19_2 = 0
  L20_2 = 33
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = ",\"mom\":"
  L20_2 = L0_2
  L21_2 = ",\"chin_4\":"
  L22_2 = math
  L22_2 = L22_2.random
  L23_2 = -10
  L24_2 = 10
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = ",\"arms\":"
  L24_2 = L6_2
  L25_2 = ",\"eyebrows_3\":"
  L26_2 = L3_2
  L27_2 = ",\"jaw_1\":0,\"blush_2\":5,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
  L28_2 = math
  L28_2 = L28_2.random
  L29_2 = -10
  L30_2 = 10
  L28_2 = L28_2(L29_2, L30_2)
  L29_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
  L30_2 = math
  L30_2 = L30_2.random
  L31_2 = -1
  L32_2 = 11
  L30_2 = L30_2(L31_2, L32_2)
  L31_2 = ",\"mask_2\":0,\"cheeks_2\":"
  L32_2 = math
  L32_2 = L32_2.random
  L33_2 = -10
  L34_2 = 10
  L32_2 = L32_2(L33_2, L34_2)
  L33_2 = ",\"sun_1\":"
  L34_2 = math
  L34_2 = L34_2.random
  L35_2 = 0
  L36_2 = 10
  L34_2 = L34_2(L35_2, L36_2)
  L35_2 = ",\"nose_2\":"
  L36_2 = math
  L36_2 = L36_2.random
  L37_2 = -10
  L38_2 = 10
  L36_2 = L36_2(L37_2, L38_2)
  L37_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
  L38_2 = math
  L38_2 = L38_2.random
  L39_2 = -10
  L40_2 = 10
  L38_2 = L38_2(L39_2, L40_2)
  L39_2 = ",\"eyebrows_6\":0,\"blush_3\":52,\"beard_2\":10,\"age_2\":"
  L40_2 = math
  L40_2 = L40_2.random
  L41_2 = 0
  L42_2 = 10
  L40_2 = L40_2(L41_2, L42_2)
  L41_2 = ",\"cheeks_3\":"
  L42_2 = math
  L42_2 = L42_2.random
  L43_2 = -10
  L44_2 = 10
  L42_2 = L42_2(L43_2, L44_2)
  L43_2 = ",\"nose_1\":"
  L44_2 = math
  L44_2 = L44_2.random
  L45_2 = -10
  L46_2 = 10
  L44_2 = L44_2(L45_2, L46_2)
  L45_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
  L46_2 = math
  L46_2 = L46_2.random
  L47_2 = -10
  L48_2 = 10
  L46_2 = L46_2(L47_2, L48_2)
  L47_2 = ",\"beard_3\":"
  L48_2 = L3_2
  L49_2 = ",\"bodyb_3\":"
  L50_2 = math
  L50_2 = L50_2.random
  L51_2 = -1
  L52_2 = 1
  L50_2 = L50_2(L51_2, L52_2)
  L51_2 = ",\"sex\":1,\"nose_5\":"
  L52_2 = math
  L52_2 = L52_2.random
  L53_2 = -10
  L54_2 = 10
  L52_2 = L52_2(L53_2, L54_2)
  L53_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":9,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
  L54_2 = math
  L54_2 = L54_2.random
  L55_2 = 0
  L56_2 = 14
  L54_2 = L54_2(L55_2, L56_2)
  L55_2 = ",\"blemishes_2\":"
  L56_2 = math
  L56_2 = L56_2.random
  L57_2 = 0
  L58_2 = 10
  L56_2 = L56_2(L57_2, L58_2)
  L57_2 = ",\"chin_1\":"
  L58_2 = math
  L58_2 = L58_2.random
  L59_2 = -10
  L60_2 = 10
  L58_2 = L58_2(L59_2, L60_2)
  L59_2 = ",\"skin_md_weight\":"
  L60_2 = math
  L60_2 = L60_2.random
  L61_2 = 0
  L62_2 = 100
  L60_2 = L60_2(L61_2, L62_2)
  L61_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
  L62_2 = L3_2
  L63_2 = ",\"neck_thickness\":"
  L64_2 = math
  L64_2 = L64_2.random
  L65_2 = -10
  L66_2 = 10
  L64_2 = L64_2(L65_2, L66_2)
  L65_2 = ",\"ears_1\":-1,\"blemishes_1\":"
  L66_2 = math
  L66_2 = L66_2.random
  L67_2 = 0
  L68_2 = 23
  L66_2 = L66_2(L67_2, L68_2)
  L67_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
  L68_2 = math
  L68_2 = L68_2.random
  L69_2 = -10
  L70_2 = 10
  L68_2 = L68_2(L69_2, L70_2)
  L69_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
  L70_2 = L5_2
  L71_2 = ",\"lip_thickness\":"
  L72_2 = math
  L72_2 = L72_2.random
  L73_2 = -10
  L74_2 = 10
  L72_2 = L72_2(L73_2, L74_2)
  L73_2 = ",\"beard_4\":0,\"nose_4\":"
  L74_2 = math
  L74_2 = L74_2.random
  L75_2 = -10
  L76_2 = 10
  L74_2 = L74_2(L75_2, L76_2)
  L75_2 = ",\"watches_2\":0,\"sun_2\":"
  L76_2 = math
  L76_2 = L76_2.random
  L77_2 = 0
  L78_2 = 10
  L76_2 = L76_2(L77_2, L78_2)
  L77_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
  L78_2 = math
  L78_2 = L78_2.random
  L79_2 = 0
  L80_2 = 44
  L78_2 = L78_2(L79_2, L80_2)
  L79_2 = ",\"bodyb_4\":"
  L80_2 = math
  L80_2 = L80_2.random
  L81_2 = 0
  L82_2 = 10
  L80_2 = L80_2(L81_2, L82_2)
  L81_2 = ",\"beard_1\":"
  L82_2 = L4_2
  L83_2 = ",\"chin_3\":"
  L84_2 = math
  L84_2 = L84_2.random
  L85_2 = -10
  L86_2 = 10
  L84_2 = L84_2(L85_2, L86_2)
  L85_2 = ",\"hair_1\":"
  L86_2 = L1_2
  L87_2 = ",\"bodyb_2\":"
  L88_2 = math
  L88_2 = L88_2.random
  L89_2 = 0
  L90_2 = 10
  L88_2 = L88_2(L89_2, L90_2)
  L89_2 = "}"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2 .. L89_2
  return L7_2
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "ottieniSkinRandNudoBlack"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = 44
  L0_2 = L0_2(L1_2, L2_2)
  if 21 == L0_2 or 33 == L0_2 then
    L0_2 = 22
  end
  if 39 == L0_2 then
    L0_2 = 16
  end
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 0
  L3_2 = 136
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = 1
  L4_2 = 2
  L5_2 = 3
  L6_2 = 9
  L7_2 = 10
  L8_2 = 11
  L9_2 = 12
  L10_2 = 13
  L11_2 = 14
  L12_2 = 15
  L13_2 = 16
  L14_2 = 27
  L15_2 = 28
  L16_2 = 29
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = #L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L2_2[L3_2]
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 0
  L6_2 = 28
  L4_2 = L4_2(L5_2, L6_2)
  if 19 == L4_2 or 21 == L4_2 or 23 == L4_2 or 24 == L4_2 then
    L4_2 = 18
  end
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 13
  L5_2 = L5_2(L6_2, L7_2)
  if 9 == L5_2 or 11 == L5_2 then
    L5_2 = 1
  end
  L6_2 = 15
  L7_2 = "{\"torso_1\":15,\"torso_2\":0,\"pants_2\":2,\"pants_1\":56,\"shoes_1\":34,\"shoes_2\":0,\"moles_1\":"
  L8_2 = math
  L8_2 = L8_2.random
  L9_2 = 0
  L10_2 = 10
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = ",\"chest_2\":"
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = 0
  L12_2 = 5
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = ",\"chest_1\":"
  L12_2 = math
  L12_2 = L12_2.random
  L13_2 = 0
  L14_2 = 6
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = ",\"chest_3\":"
  L14_2 = L3_2
  L15_2 = ",\"hair_2\":0,\"moles_2\":"
  L16_2 = math
  L16_2 = L16_2.random
  L17_2 = 0
  L18_2 = 10
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
  L18_2 = math
  L18_2 = L18_2.random
  L19_2 = 0
  L20_2 = 33
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = ",\"mom\":"
  L20_2 = L0_2
  L21_2 = ",\"chin_4\":"
  L22_2 = math
  L22_2 = L22_2.random
  L23_2 = -10
  L24_2 = 10
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = ",\"arms\":"
  L24_2 = L6_2
  L25_2 = ",\"eyebrows_3\":"
  L26_2 = L3_2
  L27_2 = ",\"jaw_1\":0,\"blush_2\":5,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
  L28_2 = math
  L28_2 = L28_2.random
  L29_2 = -10
  L30_2 = 10
  L28_2 = L28_2(L29_2, L30_2)
  L29_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
  L30_2 = math
  L30_2 = L30_2.random
  L31_2 = -1
  L32_2 = 11
  L30_2 = L30_2(L31_2, L32_2)
  L31_2 = ",\"mask_2\":0,\"cheeks_2\":"
  L32_2 = math
  L32_2 = L32_2.random
  L33_2 = -10
  L34_2 = 10
  L32_2 = L32_2(L33_2, L34_2)
  L33_2 = ",\"sun_1\":"
  L34_2 = math
  L34_2 = L34_2.random
  L35_2 = 0
  L36_2 = 10
  L34_2 = L34_2(L35_2, L36_2)
  L35_2 = ",\"nose_2\":"
  L36_2 = math
  L36_2 = L36_2.random
  L37_2 = -10
  L38_2 = 10
  L36_2 = L36_2(L37_2, L38_2)
  L37_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
  L38_2 = math
  L38_2 = L38_2.random
  L39_2 = -10
  L40_2 = 10
  L38_2 = L38_2(L39_2, L40_2)
  L39_2 = ",\"eyebrows_6\":0,\"blush_3\":52,\"beard_2\":10,\"age_2\":"
  L40_2 = math
  L40_2 = L40_2.random
  L41_2 = 0
  L42_2 = 10
  L40_2 = L40_2(L41_2, L42_2)
  L41_2 = ",\"cheeks_3\":"
  L42_2 = math
  L42_2 = L42_2.random
  L43_2 = -10
  L44_2 = 10
  L42_2 = L42_2(L43_2, L44_2)
  L43_2 = ",\"nose_1\":"
  L44_2 = math
  L44_2 = L44_2.random
  L45_2 = -10
  L46_2 = 10
  L44_2 = L44_2(L45_2, L46_2)
  L45_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
  L46_2 = math
  L46_2 = L46_2.random
  L47_2 = -10
  L48_2 = 10
  L46_2 = L46_2(L47_2, L48_2)
  L47_2 = ",\"beard_3\":"
  L48_2 = L3_2
  L49_2 = ",\"bodyb_3\":"
  L50_2 = math
  L50_2 = L50_2.random
  L51_2 = -1
  L52_2 = 1
  L50_2 = L50_2(L51_2, L52_2)
  L51_2 = ",\"sex\":1,\"nose_5\":"
  L52_2 = math
  L52_2 = L52_2.random
  L53_2 = -10
  L54_2 = 10
  L52_2 = L52_2(L53_2, L54_2)
  L53_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":9,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
  L54_2 = math
  L54_2 = L54_2.random
  L55_2 = 0
  L56_2 = 14
  L54_2 = L54_2(L55_2, L56_2)
  L55_2 = ",\"blemishes_2\":"
  L56_2 = math
  L56_2 = L56_2.random
  L57_2 = 0
  L58_2 = 10
  L56_2 = L56_2(L57_2, L58_2)
  L57_2 = ",\"chin_1\":"
  L58_2 = math
  L58_2 = L58_2.random
  L59_2 = -10
  L60_2 = 10
  L58_2 = L58_2(L59_2, L60_2)
  L59_2 = ",\"skin_md_weight\":"
  L60_2 = math
  L60_2 = L60_2.random
  L61_2 = 0
  L62_2 = 100
  L60_2 = L60_2(L61_2, L62_2)
  L61_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
  L62_2 = L3_2
  L63_2 = ",\"neck_thickness\":"
  L64_2 = math
  L64_2 = L64_2.random
  L65_2 = -10
  L66_2 = 10
  L64_2 = L64_2(L65_2, L66_2)
  L65_2 = ",\"ears_1\":-1,\"blemishes_1\":"
  L66_2 = math
  L66_2 = L66_2.random
  L67_2 = 0
  L68_2 = 23
  L66_2 = L66_2(L67_2, L68_2)
  L67_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
  L68_2 = math
  L68_2 = L68_2.random
  L69_2 = -10
  L70_2 = 10
  L68_2 = L68_2(L69_2, L70_2)
  L69_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
  L70_2 = L5_2
  L71_2 = ",\"lip_thickness\":"
  L72_2 = math
  L72_2 = L72_2.random
  L73_2 = -10
  L74_2 = 10
  L72_2 = L72_2(L73_2, L74_2)
  L73_2 = ",\"beard_4\":0,\"nose_4\":"
  L74_2 = math
  L74_2 = L74_2.random
  L75_2 = -10
  L76_2 = 10
  L74_2 = L74_2(L75_2, L76_2)
  L75_2 = ",\"watches_2\":0,\"sun_2\":"
  L76_2 = math
  L76_2 = L76_2.random
  L77_2 = 0
  L78_2 = 10
  L76_2 = L76_2(L77_2, L78_2)
  L77_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
  L78_2 = math
  L78_2 = L78_2.random
  L79_2 = 0
  L80_2 = 44
  L78_2 = L78_2(L79_2, L80_2)
  L79_2 = ",\"bodyb_4\":"
  L80_2 = math
  L80_2 = L80_2.random
  L81_2 = 0
  L82_2 = 10
  L80_2 = L80_2(L81_2, L82_2)
  L81_2 = ",\"beard_1\":"
  L82_2 = L4_2
  L83_2 = ",\"chin_3\":"
  L84_2 = math
  L84_2 = L84_2.random
  L85_2 = -10
  L86_2 = 10
  L84_2 = L84_2(L85_2, L86_2)
  L85_2 = ",\"hair_1\":"
  L86_2 = L1_2
  L87_2 = ",\"bodyb_2\":"
  L88_2 = math
  L88_2 = L88_2.random
  L89_2 = 0
  L90_2 = 10
  L88_2 = L88_2(L89_2, L90_2)
  L89_2 = "}"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2 .. L89_2
  return L7_2
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "ottieniSkinRand"
function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2, L65_2, L66_2, L67_2, L68_2, L69_2, L70_2, L71_2, L72_2, L73_2, L74_2, L75_2, L76_2, L77_2, L78_2, L79_2, L80_2, L81_2, L82_2, L83_2, L84_2, L85_2, L86_2, L87_2, L88_2, L89_2, L90_2, L91_2, L92_2, L93_2, L94_2, L95_2, L96_2, L97_2, L98_2, L99_2, L100_2, L101_2, L102_2, L103_2, L104_2, L105_2, L106_2, L107_2, L108_2, L109_2, L110_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 44
  L1_2 = L1_2(L2_2, L3_2)
  if 21 == L1_2 or 33 == L1_2 or 45 == L1_2 then
    L1_2 = 22
  end
  if 39 == L1_2 then
    L1_2 = 16
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 136
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = 2
  L6_2 = 3
  L7_2 = 9
  L8_2 = 10
  L9_2 = 11
  L10_2 = 12
  L11_2 = 13
  L12_2 = 14
  L13_2 = 15
  L14_2 = 16
  L15_2 = 27
  L16_2 = 28
  L17_2 = 29
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L3_2[14] = L17_2
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = #L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L3_2[L4_2]
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = 0
  L7_2 = 28
  L5_2 = L5_2(L6_2, L7_2)
  if 19 == L5_2 or 21 == L5_2 or 23 == L5_2 or 24 == L5_2 then
    L5_2 = 18
  end
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 0
  L8_2 = 13
  L6_2 = L6_2(L7_2, L8_2)
  if 9 == L6_2 or 11 == L6_2 then
    L6_2 = 1
  end
  L7_2 = {}
  L8_2 = nil
  L9_2 = {}
  L10_2 = nil
  L11_2 = {}
  L12_2 = nil
  L13_2 = 15
  L14_2 = nil
  if nil ~= A0_2 then
    L13_2 = 1
    L15_2 = {}
    L16_2 = {}
    L16_2.t = 14
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = 0
    L19_2 = 15
    L17_2 = L17_2(L18_2, L19_2)
    L16_2.c = L17_2
    L17_2 = {}
    L17_2.t = 41
    L18_2 = math
    L18_2 = L18_2.random
    L19_2 = 0
    L20_2 = 3
    L18_2 = L18_2(L19_2, L20_2)
    L17_2.c = L18_2
    L18_2 = {}
    L18_2.t = 41
    L19_2 = math
    L19_2 = L19_2.random
    L20_2 = 0
    L21_2 = 3
    L19_2 = L19_2(L20_2, L21_2)
    L18_2.c = L19_2
    L19_2 = {}
    L19_2.t = 75
    L20_2 = math
    L20_2 = L20_2.random
    L21_2 = 0
    L22_2 = 10
    L20_2 = L20_2(L21_2, L22_2)
    L19_2.c = L20_2
    L20_2 = {}
    L20_2.t = 84
    L21_2 = math
    L21_2 = L21_2.random
    L22_2 = 0
    L23_2 = 5
    L21_2 = L21_2(L22_2, L23_2)
    L20_2.c = L21_2
    L21_2 = {}
    L21_2.t = 86
    L22_2 = math
    L22_2 = L22_2.random
    L23_2 = 0
    L24_2 = 4
    L22_2 = L22_2(L23_2, L24_2)
    L21_2.c = L22_2
    L22_2 = {}
    L22_2.t = 87
    L23_2 = math
    L23_2 = L23_2.random
    L24_2 = 0
    L25_2 = 11
    L23_2 = L23_2(L24_2, L25_2)
    L22_2.c = L23_2
    L23_2 = {}
    L23_2.t = 89
    L24_2 = math
    L24_2 = L24_2.random
    L25_2 = 0
    L26_2 = 3
    L24_2 = L24_2(L25_2, L26_2)
    L23_2.c = L24_2
    L24_2 = {}
    L24_2.t = 113
    L25_2 = math
    L25_2 = L25_2.random
    L26_2 = 0
    L27_2 = 3
    L25_2 = L25_2(L26_2, L27_2)
    L24_2.c = L25_2
    L25_2 = {}
    L25_2.t = 138
    L26_2 = math
    L26_2 = L26_2.random
    L27_2 = 0
    L28_2 = 2
    L26_2 = L26_2(L27_2, L28_2)
    L25_2.c = L26_2
    L26_2 = {}
    L26_2.t = 141
    L27_2 = math
    L27_2 = L27_2.random
    L28_2 = 0
    L29_2 = 10
    L27_2 = L27_2(L28_2, L29_2)
    L26_2.c = L27_2
    L27_2 = {}
    L27_2.t = 150
    L28_2 = math
    L28_2 = L28_2.random
    L29_2 = 0
    L30_2 = 11
    L28_2 = L28_2(L29_2, L30_2)
    L27_2.c = L28_2
    L28_2 = {}
    L28_2.t = 168
    L29_2 = math
    L29_2 = L29_2.random
    L30_2 = 0
    L31_2 = 2
    L29_2 = L29_2(L30_2, L31_2)
    L28_2.c = L29_2
    L29_2 = {}
    L29_2.t = 217
    L30_2 = math
    L30_2 = L30_2.random
    L31_2 = 0
    L32_2 = 14
    L30_2 = L30_2(L31_2, L32_2)
    L29_2.c = L30_2
    L30_2 = {}
    L30_2.t = 244
    L31_2 = math
    L31_2 = L31_2.random
    L32_2 = 0
    L33_2 = 25
    L31_2 = L31_2(L32_2, L33_2)
    L30_2.c = L31_2
    L31_2 = {}
    L31_2.t = 317
    L32_2 = math
    L32_2 = L32_2.random
    L33_2 = 0
    L34_2 = 8
    L32_2 = L32_2(L33_2, L34_2)
    L31_2.c = L32_2
    L32_2 = {}
    L32_2.t = 379
    L33_2 = math
    L33_2 = L33_2.random
    L34_2 = 0
    L35_2 = 11
    L33_2 = L33_2(L34_2, L35_2)
    L32_2.c = L33_2
    L33_2 = {}
    L33_2.t = 402
    L34_2 = math
    L34_2 = L34_2.random
    L35_2 = 0
    L36_2 = 13
    L34_2 = L34_2(L35_2, L36_2)
    L33_2.c = L34_2
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L15_2[4] = L19_2
    L15_2[5] = L20_2
    L15_2[6] = L21_2
    L15_2[7] = L22_2
    L15_2[8] = L23_2
    L15_2[9] = L24_2
    L15_2[10] = L25_2
    L15_2[11] = L26_2
    L15_2[12] = L27_2
    L15_2[13] = L28_2
    L15_2[14] = L29_2
    L15_2[15] = L30_2
    L15_2[16] = L31_2
    L15_2[17] = L32_2
    L15_2[18] = L33_2
    L7_2 = L15_2
    L15_2 = math
    L15_2 = L15_2.random
    L16_2 = 1
    L17_2 = #L7_2
    L15_2 = L15_2(L16_2, L17_2)
    L8_2 = L15_2
    L15_2 = {}
    L16_2 = {}
    L16_2.t = 0
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = 0
    L19_2 = 15
    L17_2 = L17_2(L18_2, L19_2)
    L16_2.c = L17_2
    L17_2 = {}
    L17_2.t = 1
    L18_2 = math
    L18_2 = L18_2.random
    L19_2 = 0
    L20_2 = 4
    L18_2 = L18_2(L19_2, L20_2)
    L17_2.c = L18_2
    L18_2 = {}
    L18_2.t = 5
    L19_2 = math
    L19_2 = L19_2.random
    L20_2 = 0
    L21_2 = 15
    L19_2 = L19_2(L20_2, L21_2)
    L18_2.c = L19_2
    L19_2 = {}
    L19_2.t = 7
    L20_2 = math
    L20_2 = L20_2.random
    L21_2 = 0
    L22_2 = 15
    L20_2 = L20_2(L21_2, L22_2)
    L19_2.c = L20_2
    L20_2 = {}
    L20_2.t = 9
    L21_2 = math
    L21_2 = L21_2.random
    L22_2 = 0
    L23_2 = 15
    L21_2 = L21_2(L22_2, L23_2)
    L20_2.c = L21_2
    L21_2 = {}
    L21_2.t = 23
    L22_2 = math
    L22_2 = L22_2.random
    L23_2 = 0
    L24_2 = 12
    L22_2 = L22_2(L23_2, L24_2)
    L21_2.c = L22_2
    L22_2 = {}
    L22_2.t = 24
    L23_2 = math
    L23_2 = L23_2.random
    L24_2 = 0
    L25_2 = 6
    L23_2 = L23_2(L24_2, L25_2)
    L22_2.c = L23_2
    L23_2 = {}
    L23_2.t = 25
    L24_2 = math
    L24_2 = L24_2.random
    L25_2 = 0
    L26_2 = 6
    L24_2 = L24_2(L25_2, L26_2)
    L23_2.c = L24_2
    L24_2 = {}
    L24_2.t = 28
    L25_2 = math
    L25_2 = L25_2.random
    L26_2 = 0
    L27_2 = 15
    L25_2 = L25_2(L26_2, L27_2)
    L24_2.c = L25_2
    L25_2 = {}
    L25_2.t = 49
    L26_2 = math
    L26_2 = L26_2.random
    L27_2 = 0
    L28_2 = 4
    L26_2 = L26_2(L27_2, L28_2)
    L25_2.c = L26_2
    L26_2 = {}
    L26_2.t = 55
    L27_2 = math
    L27_2 = L27_2.random
    L28_2 = 0
    L29_2 = 3
    L27_2 = L27_2(L28_2, L29_2)
    L26_2.c = L27_2
    L27_2 = {}
    L27_2.t = 75
    L28_2 = math
    L28_2 = L28_2.random
    L29_2 = 0
    L30_2 = 7
    L28_2 = L28_2(L29_2, L30_2)
    L27_2.c = L28_2
    L28_2 = {}
    L28_2.t = 76
    L29_2 = math
    L29_2 = L29_2.random
    L30_2 = 0
    L31_2 = 7
    L29_2 = L29_2(L30_2, L31_2)
    L28_2.c = L29_2
    L29_2 = {}
    L29_2.t = 102
    L30_2 = math
    L30_2 = L30_2.random
    L31_2 = 0
    L32_2 = 13
    L30_2 = L30_2(L31_2, L32_2)
    L29_2.c = L30_2
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L15_2[4] = L19_2
    L15_2[5] = L20_2
    L15_2[6] = L21_2
    L15_2[7] = L22_2
    L15_2[8] = L23_2
    L15_2[9] = L24_2
    L15_2[10] = L25_2
    L15_2[11] = L26_2
    L15_2[12] = L27_2
    L15_2[13] = L28_2
    L15_2[14] = L29_2
    L9_2 = L15_2
    L15_2 = math
    L15_2 = L15_2.random
    L16_2 = 1
    L17_2 = #L9_2
    L15_2 = L15_2(L16_2, L17_2)
    L10_2 = L15_2
    L15_2 = {}
    L16_2 = {}
    L16_2.t = 1
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = 0
    L19_2 = 15
    L17_2 = L17_2(L18_2, L19_2)
    L16_2.c = L17_2
    L17_2 = {}
    L17_2.t = 7
    L18_2 = math
    L18_2 = L18_2.random
    L19_2 = 0
    L20_2 = 15
    L18_2 = L18_2(L19_2, L20_2)
    L17_2.c = L18_2
    L18_2 = {}
    L18_2.t = 9
    L19_2 = math
    L19_2 = L19_2.random
    L20_2 = 0
    L21_2 = 15
    L19_2 = L19_2(L20_2, L21_2)
    L18_2.c = L19_2
    L19_2 = {}
    L19_2.t = 12
    L20_2 = math
    L20_2 = L20_2.random
    L21_2 = 0
    L22_2 = 15
    L20_2 = L20_2(L21_2, L22_2)
    L19_2.c = L20_2
    L20_2 = {}
    L20_2.t = 31
    L21_2 = math
    L21_2 = L21_2.random
    L22_2 = 0
    L23_2 = 4
    L21_2 = L21_2(L22_2, L23_2)
    L20_2.c = L21_2
    L21_2 = {}
    L21_2.t = 46
    L22_2 = math
    L22_2 = L22_2.random
    L23_2 = 0
    L24_2 = 7
    L22_2 = L22_2(L23_2, L24_2)
    L21_2.c = L22_2
    L22_2 = {}
    L22_2.t = 51
    L23_2 = math
    L23_2 = L23_2.random
    L24_2 = 0
    L25_2 = 5
    L23_2 = L23_2(L24_2, L25_2)
    L22_2.c = L23_2
    L23_2 = {}
    L23_2.t = 54
    L24_2 = math
    L24_2 = L24_2.random
    L25_2 = 0
    L26_2 = 5
    L24_2 = L24_2(L25_2, L26_2)
    L23_2.c = L24_2
    L24_2 = {}
    L24_2.t = 57
    L25_2 = math
    L25_2 = L25_2.random
    L26_2 = 0
    L27_2 = 11
    L25_2 = L25_2(L26_2, L27_2)
    L24_2.c = L25_2
    L25_2 = {}
    L25_2.t = 76
    L26_2 = math
    L26_2 = L26_2.random
    L27_2 = 0
    L28_2 = 25
    L26_2 = L26_2(L27_2, L28_2)
    L25_2.c = L26_2
    L26_2 = {}
    L26_2.t = 92
    L27_2 = math
    L27_2 = L27_2.random
    L28_2 = 0
    L29_2 = 7
    L27_2 = L27_2(L28_2, L29_2)
    L26_2.c = L27_2
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L15_2[4] = L19_2
    L15_2[5] = L20_2
    L15_2[6] = L21_2
    L15_2[7] = L22_2
    L15_2[8] = L23_2
    L15_2[9] = L24_2
    L15_2[10] = L25_2
    L15_2[11] = L26_2
    L11_2 = L15_2
    L15_2 = math
    L15_2 = L15_2.random
    L16_2 = 1
    L17_2 = #L11_2
    L15_2 = L15_2(L16_2, L17_2)
    L12_2 = L15_2
    L15_2 = "{\"torso_1\":"
    L16_2 = L7_2[L8_2]
    L16_2 = L16_2.t
    L17_2 = ",\"torso_2\":"
    L18_2 = math
    L18_2 = L18_2.random
    L19_2 = 0
    L20_2 = 2
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = ",\"pants_2\":"
    L20_2 = math
    L20_2 = L20_2.random
    L21_2 = 0
    L22_2 = 3
    L20_2 = L20_2(L21_2, L22_2)
    L21_2 = ",\"pants_1\":"
    L22_2 = L9_2[L10_2]
    L22_2 = L22_2.t
    L23_2 = ",\"shoes_1\":"
    L24_2 = L11_2[L12_2]
    L24_2 = L24_2.t
    L25_2 = ",\"shoes_2\":"
    L26_2 = math
    L26_2 = L26_2.random
    L27_2 = 0
    L28_2 = 3
    L26_2 = L26_2(L27_2, L28_2)
    L27_2 = ",\"moles_1\":"
    L28_2 = math
    L28_2 = L28_2.random
    L29_2 = 0
    L30_2 = 10
    L28_2 = L28_2(L29_2, L30_2)
    L29_2 = ",\"chest_2\":"
    L30_2 = math
    L30_2 = L30_2.random
    L31_2 = 0
    L32_2 = 5
    L30_2 = L30_2(L31_2, L32_2)
    L31_2 = ",\"chest_1\":"
    L32_2 = math
    L32_2 = L32_2.random
    L33_2 = 0
    L34_2 = 6
    L32_2 = L32_2(L33_2, L34_2)
    L33_2 = ",\"chest_3\":"
    L34_2 = L4_2
    L35_2 = ",\"hair_2\":0,\"moles_2\":"
    L36_2 = math
    L36_2 = L36_2.random
    L37_2 = 0
    L38_2 = 5
    L36_2 = L36_2(L37_2, L38_2)
    L37_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
    L38_2 = math
    L38_2 = L38_2.random
    L39_2 = 0
    L40_2 = 33
    L38_2 = L38_2(L39_2, L40_2)
    L39_2 = ",\"mom\":"
    L40_2 = L1_2
    L41_2 = ",\"chin_4\":"
    L42_2 = math
    L42_2 = L42_2.random
    L43_2 = -10
    L44_2 = 10
    L42_2 = L42_2(L43_2, L44_2)
    L43_2 = ",\"arms\":"
    L44_2 = L13_2
    L45_2 = ",\"eyebrows_3\":"
    L46_2 = L4_2
    L47_2 = ",\"jaw_1\":0,\"blush_2\":0,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
    L48_2 = math
    L48_2 = L48_2.random
    L49_2 = -10
    L50_2 = 10
    L48_2 = L48_2(L49_2, L50_2)
    L49_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
    L50_2 = math
    L50_2 = L50_2.random
    L51_2 = -1
    L52_2 = 11
    L50_2 = L50_2(L51_2, L52_2)
    L51_2 = ",\"mask_2\":0,\"cheeks_2\":"
    L52_2 = math
    L52_2 = L52_2.random
    L53_2 = -10
    L54_2 = 10
    L52_2 = L52_2(L53_2, L54_2)
    L53_2 = ",\"sun_1\":"
    L54_2 = math
    L54_2 = L54_2.random
    L55_2 = 0
    L56_2 = 10
    L54_2 = L54_2(L55_2, L56_2)
    L55_2 = ",\"nose_2\":"
    L56_2 = math
    L56_2 = L56_2.random
    L57_2 = -10
    L58_2 = 10
    L56_2 = L56_2(L57_2, L58_2)
    L57_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
    L58_2 = math
    L58_2 = L58_2.random
    L59_2 = -10
    L60_2 = 10
    L58_2 = L58_2(L59_2, L60_2)
    L59_2 = ",\"eyebrows_6\":0,\"blush_3\":0,\"beard_2\":10,\"age_2\":"
    L60_2 = math
    L60_2 = L60_2.random
    L61_2 = 0
    L62_2 = 10
    L60_2 = L60_2(L61_2, L62_2)
    L61_2 = ",\"cheeks_3\":"
    L62_2 = math
    L62_2 = L62_2.random
    L63_2 = -10
    L64_2 = 10
    L62_2 = L62_2(L63_2, L64_2)
    L63_2 = ",\"nose_1\":"
    L64_2 = math
    L64_2 = L64_2.random
    L65_2 = -10
    L66_2 = 10
    L64_2 = L64_2(L65_2, L66_2)
    L65_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
    L66_2 = math
    L66_2 = L66_2.random
    L67_2 = -10
    L68_2 = 10
    L66_2 = L66_2(L67_2, L68_2)
    L67_2 = ",\"beard_3\":"
    L68_2 = L4_2
    L69_2 = ",\"bodyb_3\":"
    L70_2 = math
    L70_2 = L70_2.random
    L71_2 = -1
    L72_2 = 1
    L70_2 = L70_2(L71_2, L72_2)
    L71_2 = ",\"sex\":1,\"nose_5\":"
    L72_2 = math
    L72_2 = L72_2.random
    L73_2 = -10
    L74_2 = 10
    L72_2 = L72_2(L73_2, L74_2)
    L73_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
    L74_2 = math
    L74_2 = L74_2.random
    L75_2 = 0
    L76_2 = 14
    L74_2 = L74_2(L75_2, L76_2)
    L75_2 = ",\"blemishes_2\":"
    L76_2 = math
    L76_2 = L76_2.random
    L77_2 = 0
    L78_2 = 10
    L76_2 = L76_2(L77_2, L78_2)
    L77_2 = ",\"chin_1\":"
    L78_2 = math
    L78_2 = L78_2.random
    L79_2 = -10
    L80_2 = 10
    L78_2 = L78_2(L79_2, L80_2)
    L79_2 = ",\"skin_md_weight\":"
    L80_2 = math
    L80_2 = L80_2.random
    L81_2 = 0
    L82_2 = 100
    L80_2 = L80_2(L81_2, L82_2)
    L81_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
    L82_2 = L4_2
    L83_2 = ",\"neck_thickness\":"
    L84_2 = math
    L84_2 = L84_2.random
    L85_2 = -10
    L86_2 = 10
    L84_2 = L84_2(L85_2, L86_2)
    L85_2 = ",\"ears_1\":-1,\"blemishes_1\":"
    L86_2 = math
    L86_2 = L86_2.random
    L87_2 = 0
    L88_2 = 23
    L86_2 = L86_2(L87_2, L88_2)
    L87_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
    L88_2 = math
    L88_2 = L88_2.random
    L89_2 = -10
    L90_2 = 10
    L88_2 = L88_2(L89_2, L90_2)
    L89_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
    L90_2 = L6_2
    L91_2 = ",\"lip_thickness\":"
    L92_2 = math
    L92_2 = L92_2.random
    L93_2 = -10
    L94_2 = 10
    L92_2 = L92_2(L93_2, L94_2)
    L93_2 = ",\"beard_4\":0,\"nose_4\":"
    L94_2 = math
    L94_2 = L94_2.random
    L95_2 = -10
    L96_2 = 10
    L94_2 = L94_2(L95_2, L96_2)
    L95_2 = ",\"watches_2\":0,\"sun_2\":"
    L96_2 = math
    L96_2 = L96_2.random
    L97_2 = 0
    L98_2 = 10
    L96_2 = L96_2(L97_2, L98_2)
    L97_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
    L98_2 = math
    L98_2 = L98_2.random
    L99_2 = 0
    L100_2 = 44
    L98_2 = L98_2(L99_2, L100_2)
    L99_2 = ",\"bodyb_4\":"
    L100_2 = math
    L100_2 = L100_2.random
    L101_2 = 0
    L102_2 = 10
    L100_2 = L100_2(L101_2, L102_2)
    L101_2 = ",\"beard_1\":"
    L102_2 = L5_2
    L103_2 = ",\"chin_3\":"
    L104_2 = math
    L104_2 = L104_2.random
    L105_2 = -10
    L106_2 = 10
    L104_2 = L104_2(L105_2, L106_2)
    L105_2 = ",\"hair_1\":"
    L106_2 = L2_2
    L107_2 = ",\"bodyb_2\":"
    L108_2 = math
    L108_2 = L108_2.random
    L109_2 = 0
    L110_2 = 10
    L108_2 = L108_2(L109_2, L110_2)
    L109_2 = "}"
    L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2 .. L89_2 .. L90_2 .. L91_2 .. L92_2 .. L93_2 .. L94_2 .. L95_2 .. L96_2 .. L97_2 .. L98_2 .. L99_2 .. L100_2 .. L101_2 .. L102_2 .. L103_2 .. L104_2 .. L105_2 .. L106_2 .. L107_2 .. L108_2 .. L109_2
    L14_2 = L15_2
  else
    L15_2 = "{\"torso_1\":15,\"torso_2\":0,\"pants_2\":2,\"pants_1\":56,\"shoes_1\":34,\"shoes_2\":0,\"moles_1\":"
    L16_2 = math
    L16_2 = L16_2.random
    L17_2 = 0
    L18_2 = 10
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = ",\"chest_2\":"
    L18_2 = math
    L18_2 = L18_2.random
    L19_2 = 0
    L20_2 = 5
    L18_2 = L18_2(L19_2, L20_2)
    L19_2 = ",\"chest_1\":"
    L20_2 = math
    L20_2 = L20_2.random
    L21_2 = 0
    L22_2 = 6
    L20_2 = L20_2(L21_2, L22_2)
    L21_2 = ",\"chest_3\":"
    L22_2 = L4_2
    L23_2 = ",\"hair_2\":0,\"moles_2\":"
    L24_2 = math
    L24_2 = L24_2.random
    L25_2 = 0
    L26_2 = 5
    L24_2 = L24_2(L25_2, L26_2)
    L25_2 = ",\"bags_2\":0,\"bracelets_2\":0,\"bproof_1\":0,\"eyebrows_1\":"
    L26_2 = math
    L26_2 = L26_2.random
    L27_2 = 0
    L28_2 = 33
    L26_2 = L26_2(L27_2, L28_2)
    L27_2 = ",\"mom\":"
    L28_2 = L1_2
    L29_2 = ",\"chin_4\":"
    L30_2 = math
    L30_2 = L30_2.random
    L31_2 = -10
    L32_2 = 10
    L30_2 = L30_2(L31_2, L32_2)
    L31_2 = ",\"arms\":"
    L32_2 = L13_2
    L33_2 = ",\"eyebrows_3\":"
    L34_2 = L4_2
    L35_2 = ",\"jaw_1\":0,\"blush_2\":0,\"tshirt_1\":15,\"ears_2\":0,\"arms_2\":0,\"nose_3\":"
    L36_2 = math
    L36_2 = L36_2.random
    L37_2 = -10
    L38_2 = 10
    L36_2 = L36_2(L37_2, L38_2)
    L37_2 = ",\"bags_1\":0,\"decals_2\":0,\"jaw_2\":0,\"bodyb_1\":"
    L38_2 = math
    L38_2 = L38_2.random
    L39_2 = -1
    L40_2 = 11
    L38_2 = L38_2(L39_2, L40_2)
    L39_2 = ",\"mask_2\":0,\"cheeks_2\":"
    L40_2 = math
    L40_2 = L40_2.random
    L41_2 = -10
    L42_2 = 10
    L40_2 = L40_2(L41_2, L42_2)
    L41_2 = ",\"sun_1\":"
    L42_2 = math
    L42_2 = L42_2.random
    L43_2 = 0
    L44_2 = 10
    L42_2 = L42_2(L43_2, L44_2)
    L43_2 = ",\"nose_2\":"
    L44_2 = math
    L44_2 = L44_2.random
    L45_2 = -10
    L46_2 = 10
    L44_2 = L44_2(L45_2, L46_2)
    L45_2 = ",\"bproof_2\":0,\"chain_2\":0,\"chin_2\":"
    L46_2 = math
    L46_2 = L46_2.random
    L47_2 = -10
    L48_2 = 10
    L46_2 = L46_2(L47_2, L48_2)
    L47_2 = ",\"eyebrows_6\":0,\"blush_3\":0,\"beard_2\":10,\"age_2\":"
    L48_2 = math
    L48_2 = L48_2.random
    L49_2 = 0
    L50_2 = 10
    L48_2 = L48_2(L49_2, L50_2)
    L49_2 = ",\"cheeks_3\":"
    L50_2 = math
    L50_2 = L50_2.random
    L51_2 = -10
    L52_2 = 10
    L50_2 = L50_2(L51_2, L52_2)
    L51_2 = ",\"nose_1\":"
    L52_2 = math
    L52_2 = L52_2.random
    L53_2 = -10
    L54_2 = 10
    L52_2 = L52_2(L53_2, L54_2)
    L53_2 = ",\"glasses_2\":0,\"makeup_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"helmet_2\":0,\"eyebrows_2\":10,\"makeup_4\":0,\"cheeks_1\":"
    L54_2 = math
    L54_2 = L54_2.random
    L55_2 = -10
    L56_2 = 10
    L54_2 = L54_2(L55_2, L56_2)
    L55_2 = ",\"beard_3\":"
    L56_2 = L4_2
    L57_2 = ",\"bodyb_3\":"
    L58_2 = math
    L58_2 = L58_2.random
    L59_2 = -1
    L60_2 = 1
    L58_2 = L58_2(L59_2, L60_2)
    L59_2 = ",\"sex\":1,\"nose_5\":"
    L60_2 = math
    L60_2 = L60_2.random
    L61_2 = -10
    L62_2 = 10
    L60_2 = L60_2(L61_2, L62_2)
    L61_2 = ",\"tshirt_2\":0,\"watches_1\":-1,\"complexion_2\":0,\"mask_1\":0,\"hair_color_2\":0,\"lipstick_1\":0,\"blush_1\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"age_1\":"
    L62_2 = math
    L62_2 = L62_2.random
    L63_2 = 0
    L64_2 = 14
    L62_2 = L62_2(L63_2, L64_2)
    L63_2 = ",\"blemishes_2\":"
    L64_2 = math
    L64_2 = L64_2.random
    L65_2 = 0
    L66_2 = 10
    L64_2 = L64_2(L65_2, L66_2)
    L65_2 = ",\"chin_1\":"
    L66_2 = math
    L66_2 = L66_2.random
    L67_2 = -10
    L68_2 = 10
    L66_2 = L66_2(L67_2, L68_2)
    L67_2 = ",\"skin_md_weight\":"
    L68_2 = math
    L68_2 = L68_2.random
    L69_2 = 0
    L70_2 = 100
    L68_2 = L68_2(L69_2, L70_2)
    L69_2 = ",\"face_md_weight\":0,\"eyebrows_5\":0,\"hair_color_1\":"
    L70_2 = L4_2
    L71_2 = ",\"neck_thickness\":"
    L72_2 = math
    L72_2 = L72_2.random
    L73_2 = -10
    L74_2 = 10
    L72_2 = L72_2(L73_2, L74_2)
    L73_2 = ",\"ears_1\":-1,\"blemishes_1\":"
    L74_2 = math
    L74_2 = L74_2.random
    L75_2 = 0
    L76_2 = 23
    L74_2 = L74_2(L75_2, L76_2)
    L75_2 = ",\"bracelets_1\":-1,\"makeup_3\":0,\"eye_squint\":0,\"complexion_1\":0,\"nose_6\":"
    L76_2 = math
    L76_2 = L76_2.random
    L77_2 = -10
    L78_2 = 10
    L76_2 = L76_2(L77_2, L78_2)
    L77_2 = ",\"glasses_1\":0,\"decals_1\":0,\"eyebrows_4\":0,\"eye_color\":"
    L78_2 = L6_2
    L79_2 = ",\"lip_thickness\":"
    L80_2 = math
    L80_2 = L80_2.random
    L81_2 = -10
    L82_2 = 10
    L80_2 = L80_2(L81_2, L82_2)
    L81_2 = ",\"beard_4\":0,\"nose_4\":"
    L82_2 = math
    L82_2 = L82_2.random
    L83_2 = -10
    L84_2 = 10
    L82_2 = L82_2(L83_2, L84_2)
    L83_2 = ",\"watches_2\":0,\"sun_2\":"
    L84_2 = math
    L84_2 = L84_2.random
    L85_2 = 0
    L86_2 = 10
    L84_2 = L84_2(L85_2, L86_2)
    L85_2 = ",\"chain_1\":0,\"makeup_1\":0,\"dad\":"
    L86_2 = math
    L86_2 = L86_2.random
    L87_2 = 0
    L88_2 = 44
    L86_2 = L86_2(L87_2, L88_2)
    L87_2 = ",\"bodyb_4\":"
    L88_2 = math
    L88_2 = L88_2.random
    L89_2 = 0
    L90_2 = 10
    L88_2 = L88_2(L89_2, L90_2)
    L89_2 = ",\"beard_1\":"
    L90_2 = L5_2
    L91_2 = ",\"chin_3\":"
    L92_2 = math
    L92_2 = L92_2.random
    L93_2 = -10
    L94_2 = 10
    L92_2 = L92_2(L93_2, L94_2)
    L93_2 = ",\"hair_1\":"
    L94_2 = L2_2
    L95_2 = ",\"bodyb_2\":"
    L96_2 = math
    L96_2 = L96_2.random
    L97_2 = 0
    L98_2 = 10
    L96_2 = L96_2(L97_2, L98_2)
    L97_2 = "}"
    L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2 .. L62_2 .. L63_2 .. L64_2 .. L65_2 .. L66_2 .. L67_2 .. L68_2 .. L69_2 .. L70_2 .. L71_2 .. L72_2 .. L73_2 .. L74_2 .. L75_2 .. L76_2 .. L77_2 .. L78_2 .. L79_2 .. L80_2 .. L81_2 .. L82_2 .. L83_2 .. L84_2 .. L85_2 .. L86_2 .. L87_2 .. L88_2 .. L89_2 .. L90_2 .. L91_2 .. L92_2 .. L93_2 .. L94_2 .. L95_2 .. L96_2 .. L97_2
    L14_2 = L15_2
  end
  return L14_2
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "SettamiUomo"
function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ottieniSkinRand
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = mioSessoSkinESX
  if "M" ~= L2_2 then
    L2_2 = SetEntityVisible
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:setuomo"
    L4_2 = "mp_m_freemode_01"
    L2_2(L3_2, L4_2)
    L2_2 = TriggerServerEvent
    L3_2 = "esx_Pharmacy:setVarDB"
    L4_2 = "sex"
    L5_2 = "M"
    L2_2(L3_2, L4_2, L5_2)
    mioSessoSkinESX = "M"
  end
  L2_2 = exports
  L2_2 = L2_2.skinchanger
  L3_2 = L2_2
  L2_2 = L2_2.applicaUnaSkinPlayer
  L4_2 = json
  L4_2 = L4_2.decode
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = TriggerServerEvent
  L3_2 = "sp_menuperso:ApplicaDonna"
  L4_2 = L1_2
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = VestitoGonnaIniziale
  L2_2()
end
L72_1[L73_1] = L74_1
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "settamiuomo"
function L74_1()
  local L0_2, L1_2
  L0_2 = SettamiUomo
  L0_2()
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "exports"
L72_1 = L72_1[L73_1]
L73_1 = "vestitogonna"
function L74_1()
  local L0_2, L1_2
  L0_2 = VestitoGonnaIniziale
  L0_2()
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "SettamiDonna"
function L74_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2
  L0_2 = {}
  L1_2 = 21
  L2_2 = 25
  L3_2 = 26
  L4_2 = 27
  L5_2 = 29
  L6_2 = 31
  L7_2 = 37
  L8_2 = 40
  L9_2 = 45
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L0_2[5] = L5_2
  L0_2[6] = L6_2
  L0_2[7] = L7_2
  L0_2[8] = L8_2
  L0_2[9] = L9_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = #L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 143
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 25
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 1
  L6_2 = 13
  L4_2 = L4_2(L5_2, L6_2)
  if 9 == L4_2 or 11 == L4_2 then
    L4_2 = 1
  end
  L5_2 = "{\"makeup_4\":0,\"age_1\":0,\"ears_1\":"
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 3
  L8_2 = 21
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = ",\"pants_1\":8,\"eyebrows_3\":27,\"hair_1\":"
  L8_2 = L2_2
  L9_2 = ",\"tshirt_1\":15,\"age_2\":0,\"chin_4\":"
  L10_2 = math
  L10_2 = L10_2.random
  L11_2 = -10
  L12_2 = 10
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = ",\"hair_color_2\":0,\"nose_1\":"
  L12_2 = math
  L12_2 = L12_2.random
  L13_2 = -10
  L14_2 = 10
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = ",\"decals_1\":0,\"skin_md_weight\":"
  L14_2 = math
  L14_2 = L14_2.random
  L15_2 = 0
  L16_2 = 100
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = ",\"ears_2\":0,\"jaw_2\":0,\"bags_2\":0,\"helmet_2\":0,\"cheeks_2\":"
  L16_2 = math
  L16_2 = L16_2.random
  L17_2 = -10
  L18_2 = 10
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = ",\"shoes_2\":0,\"cheeks_3\":"
  L18_2 = math
  L18_2 = L18_2.random
  L19_2 = -10
  L20_2 = 10
  L18_2 = L18_2(L19_2, L20_2)
  L19_2 = ",\"lipstick_4\":9,\"lipstick_1\":4,\"complexion_1\":0,\"lipstick_3\":50,\"arms\":15,\"eye_color\":"
  L20_2 = L4_2
  L21_2 = ",\"eye_squint\":0,\"mask_1\":0,\"chin_1\":"
  L22_2 = math
  L22_2 = L22_2.random
  L23_2 = -10
  L24_2 = 10
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = ",\"makeup_1\":0,\"shoes_1\":35,\"chin_3\":"
  L24_2 = math
  L24_2 = L24_2.random
  L25_2 = -10
  L26_2 = 10
  L24_2 = L24_2(L25_2, L26_2)
  L25_2 = ",\"bodyb_1\":-1,\"beard_1\":0,\"sun_2\":"
  L26_2 = math
  L26_2 = L26_2.random
  L27_2 = 0
  L28_2 = 10
  L26_2 = L26_2(L27_2, L28_2)
  L27_2 = ",\"glasses_2\":0,\"watches_1\":-1,\"face_md_weight\":0,\"beard_3\":0,\"chain_2\":0,\"bags_1\":0,\"pants_2\":0,\"hair_color_1\":"
  L28_2 = L3_2
  L29_2 = ",\"moles_1\":"
  L30_2 = math
  L30_2 = L30_2.random
  L31_2 = 0
  L32_2 = 10
  L30_2 = L30_2(L31_2, L32_2)
  L31_2 = ",\"sun_1\":"
  L32_2 = math
  L32_2 = L32_2.random
  L33_2 = 0
  L34_2 = 10
  L32_2 = L32_2(L33_2, L34_2)
  L33_2 = ",\"blemishes_2\":"
  L34_2 = math
  L34_2 = L34_2.random
  L35_2 = 0
  L36_2 = 10
  L34_2 = L34_2(L35_2, L36_2)
  L35_2 = ",\"chest_1\":0,\"nose_5\":"
  L36_2 = math
  L36_2 = L36_2.random
  L37_2 = -10
  L38_2 = 10
  L36_2 = L36_2(L37_2, L38_2)
  L37_2 = ",\"complexion_2\":0,\"glasses_1\":5,\"bracelets_1\":-1,\"eyebrows_5\":-10,\"nose_2\":"
  L38_2 = math
  L38_2 = L38_2.random
  L39_2 = -10
  L40_2 = 10
  L38_2 = L38_2(L39_2, L40_2)
  L39_2 = ",\"cheeks_1\":"
  L40_2 = math
  L40_2 = L40_2.random
  L41_2 = -10
  L42_2 = 10
  L40_2 = L40_2(L41_2, L42_2)
  L41_2 = ",\"nose_6\":"
  L42_2 = math
  L42_2 = L42_2.random
  L43_2 = -10
  L44_2 = 10
  L42_2 = L42_2(L43_2, L44_2)
  L43_2 = ",\"lipstick_2\":7,\"eyebrows_1\":3,\"beard_4\":0,\"bodyb_3\":-1,\"chain_1\":0,\"blush_3\":0,\"mask_2\":0,\"decals_2\":0,\"arms_2\":0,\"bproof_1\":0,\"eyebrows_4\":22,\"nose_4\":"
  L44_2 = math
  L44_2 = L44_2.random
  L45_2 = -10
  L46_2 = 10
  L44_2 = L44_2(L45_2, L46_2)
  L45_2 = ",\"jaw_1\":0,\"eyebrows_6\":0,\"watches_2\":0,\"torso_1\":74,\"chest_2\":0,\"torso_2\":1,\"bproof_2\":0,\"beard_2\":0,\"makeup_3\":0,\"eyebrows_2\":10,\"neck_thickness\":"
  L46_2 = math
  L46_2 = L46_2.random
  L47_2 = -10
  L48_2 = 10
  L46_2 = L46_2(L47_2, L48_2)
  L47_2 = ",\"lip_thickness\":"
  L48_2 = math
  L48_2 = L48_2.random
  L49_2 = -10
  L50_2 = 10
  L48_2 = L48_2(L49_2, L50_2)
  L49_2 = ",\"blush_1\":0,\"bodyb_2\":0,\"moles_2\":"
  L50_2 = math
  L50_2 = L50_2.random
  L51_2 = 0
  L52_2 = 5
  L50_2 = L50_2(L51_2, L52_2)
  L51_2 = ",\"hair_2\":0,\"blush_2\":0,\"tshirt_2\":0,\"helmet_1\":-1,\"chin_2\":"
  L52_2 = math
  L52_2 = L52_2.random
  L53_2 = -10
  L54_2 = 10
  L52_2 = L52_2(L53_2, L54_2)
  L53_2 = ",\"dad\":"
  L54_2 = math
  L54_2 = L54_2.random
  L55_2 = 0
  L56_2 = 44
  L54_2 = L54_2(L55_2, L56_2)
  L55_2 = ",\"blemishes_1\":"
  L56_2 = math
  L56_2 = L56_2.random
  L57_2 = 0
  L58_2 = 10
  L56_2 = L56_2(L57_2, L58_2)
  L57_2 = ",\"bodyb_4\":0,\"sex\":1,\"makeup_2\":0,\"bracelets_2\":0,\"chest_3\":0,\"mom\":"
  L58_2 = L0_2[L1_2]
  L59_2 = ",\"nose_3\":"
  L60_2 = math
  L60_2 = L60_2.random
  L61_2 = -10
  L62_2 = 10
  L60_2 = L60_2(L61_2, L62_2)
  L61_2 = "}"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2 .. L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2 .. L39_2 .. L40_2 .. L41_2 .. L42_2 .. L43_2 .. L44_2 .. L45_2 .. L46_2 .. L47_2 .. L48_2 .. L49_2 .. L50_2 .. L51_2 .. L52_2 .. L53_2 .. L54_2 .. L55_2 .. L56_2 .. L57_2 .. L58_2 .. L59_2 .. L60_2 .. L61_2
  L6_2 = mioSessoSkinESX
  if "F" ~= L6_2 then
    L6_2 = SetEntityVisible
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = TriggerEvent
    L7_2 = "skinchanger:setuomo"
    L8_2 = "mp_f_freemode_01"
    L6_2(L7_2, L8_2)
    mioSessoSkinESX = "F"
    L6_2 = TriggerServerEvent
    L7_2 = "esx_Pharmacy:setVarDB"
    L8_2 = "sex"
    L9_2 = "F"
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = exports
  L6_2 = L6_2.skinchanger
  L7_2 = L6_2
  L6_2 = L6_2.applicaUnaSkinPlayer
  L8_2 = json
  L8_2 = L8_2.decode
  L9_2 = L5_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
  L6_2 = TriggerServerEvent
  L7_2 = "sp_menuperso:ApplicaDonna"
  L8_2 = L5_2
  L9_2 = GetPlayerServerId
  L10_2 = PlayerId
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L10_2()
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2)
end
L72_1[L73_1] = L74_1
L72_1 = RegisterCommand
L73_1 = "saveskin"
function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = exports
  L3_2 = L3_2.skinchanger
  L4_2 = L3_2
  L3_2 = L3_2.menuaperto
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = TriggerEvent
    L4_2 = "SaveMySkin"
    L3_2(L4_2)
  else
    L3_2 = print
    L4_2 = "Cannot save a skin with menu opened!"
    L3_2(L4_2)
  end
end
L72_1(L73_1, L74_1)
L72_1 = _ENV
L73_1 = "FloatingObjects"
L74_1 = {}
L72_1[L73_1] = L74_1
function L72_1(A0_2)
  local L1_2
  L1_2 = A0_2 % 360.0
  L1_2 = L1_2 + 360.0
  L1_2 = L1_2 % 360.0
  return L1_2
end
function L73_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2 - A1_2
  L2_2 = L2_2 + 180.0
  L2_2 = L2_2 % 360.0
  L2_2 = L2_2 - 180.0
  return L2_2
end
function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L72_1
  L4_2 = L73_1
  L5_2 = A1_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 * A2_2
  L4_2 = A0_2 + L4_2
  return L3_2(L4_2)
end
L75_1 = _ENV
L76_1 = "StopFloatingObject"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = FloatingObjects
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2.active = false
  L3_2 = L2_2.particle
  if L3_2 then
    L3_2 = DoesParticleFxLoopedExist
    L4_2 = L2_2.particle
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = StopParticleFxLooped
      L4_2 = L2_2.particle
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  if A1_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = SetEntityCoordsNoOffset
      L4_2 = A0_2
      L5_2 = L2_2.basePosition
      L5_2 = L5_2.x
      L6_2 = L2_2.basePosition
      L6_2 = L6_2.y
      L7_2 = L2_2.basePosition
      L7_2 = L7_2.z
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L3_2 = SetEntityRotation
      L4_2 = A0_2
      L5_2 = L2_2.baseRotation
      L5_2 = L5_2.x
      L6_2 = L2_2.baseRotation
      L6_2 = L6_2.y
      L7_2 = L2_2.baseRotation
      L7_2 = L7_2.z
      L8_2 = 2
      L9_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
  L3_2 = FloatingObjects
  L3_2[A0_2] = nil
end
L75_1[L76_1] = L77_1
L75_1 = _ENV
L76_1 = "StartFloatingObject"
function L77_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 and 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = StopFloatingObject
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = Wait
  L3_2 = 225
  L2_2(L3_2)
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityRotation
  L4_2 = A0_2
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L4_2.active = true
  L4_2.basePosition = L2_2
  L4_2.baseRotation = L3_2
  L5_2 = A1_2.floatHeight
  if not L5_2 then
    L5_2 = 0.15
  end
  L4_2.floatHeight = L5_2
  L5_2 = A1_2.floatSpeed
  if not L5_2 then
    L5_2 = 1.6
  end
  L4_2.floatSpeed = L5_2
  L5_2 = A1_2.sideMovement
  L5_2 = false ~= L5_2
  L4_2.sideMovement = L5_2
  L5_2 = A1_2.sideAmount
  if not L5_2 then
    L5_2 = 0.025
  end
  L4_2.sideAmount = L5_2
  L5_2 = A1_2.sideSpeed
  if not L5_2 then
    L5_2 = 0.8
  end
  L4_2.sideSpeed = L5_2
  L5_2 = A1_2.facePlayer
  L5_2 = false ~= L5_2
  L4_2.facePlayer = L5_2
  L5_2 = A1_2.headingOffset
  if not L5_2 then
    L5_2 = 0.0
  end
  L4_2.headingOffset = L5_2
  L5_2 = A1_2.headingSmooth
  if not L5_2 then
    L5_2 = 0.075
  end
  L4_2.headingSmooth = L5_2
  L5_2 = A1_2.headingWobble
  if not L5_2 then
    L5_2 = 2.5
  end
  L4_2.headingWobble = L5_2
  L5_2 = A1_2.headingWobbleSpeed
  if not L5_2 then
    L5_2 = 1.0
  end
  L4_2.headingWobbleSpeed = L5_2
  L5_2 = A1_2.tiltEnabled
  L5_2 = false ~= L5_2
  L4_2.tiltEnabled = L5_2
  L5_2 = A1_2.tiltAmount
  if not L5_2 then
    L5_2 = 1.5
  end
  L4_2.tiltAmount = L5_2
  L5_2 = A1_2.tiltSpeed
  if not L5_2 then
    L5_2 = 1.1
  end
  L4_2.tiltSpeed = L5_2
  L5_2 = A1_2.lightEnabled
  L5_2 = false ~= L5_2
  L4_2.lightEnabled = L5_2
  L5_2 = A1_2.lightColor
  if not L5_2 then
    L5_2 = {}
    L5_2.r = 80
    L5_2.g = 160
    L5_2.b = 255
  end
  L4_2.lightColor = L5_2
  L5_2 = A1_2.lightRange
  if not L5_2 then
    L5_2 = 4.0
  end
  L4_2.lightRange = L5_2
  L5_2 = A1_2.lightIntensity
  if not L5_2 then
    L5_2 = 2.0
  end
  L4_2.lightIntensity = L5_2
  L5_2 = A1_2.lightPulse
  if not L5_2 then
    L5_2 = 0.35
  end
  L4_2.lightPulse = L5_2
  L5_2 = A1_2.maxDistance
  if not L5_2 then
    L5_2 = 300.0
  end
  L4_2.maxDistance = L5_2
  L5_2 = A1_2.farWait
  if not L5_2 then
    L5_2 = 1000
  end
  L4_2.farWait = L5_2
  L4_2.particle = nil
  L5_2 = FloatingObjects
  L5_2[A0_2] = L4_2
  L5_2 = A1_2.freeze
  if false ~= L5_2 then
    L5_2 = FreezeEntityPosition
    L6_2 = A0_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2.collision
  if nil ~= L5_2 then
    L5_2 = SetEntityCollision
    L6_2 = A0_2
    L7_2 = A1_2.collision
    L8_2 = A1_2.collision
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A1_2.particleDictionary
  if L5_2 then
    L5_2 = A1_2.particleName
    if L5_2 then
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
        L0_3 = RequestNamedPtfxAsset
        L1_3 = A1_2.particleDictionary
        L0_3(L1_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L0_3 = L0_3 + 5000
        while true do
          L1_3 = HasNamedPtfxAssetLoaded
          L2_3 = A1_2.particleDictionary
          L1_3 = L1_3(L2_3)
          if L1_3 then
            break
          end
          L1_3 = GetGameTimer
          L1_3 = L1_3()
          if L0_3 <= L1_3 then
            L1_3 = print
            L2_3 = "[FloatingObject] Particella non caricata: %s"
            L3_3 = L2_3
            L2_3 = L2_3.format
            L4_3 = A1_2.particleDictionary
            L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L2_3(L3_3, L4_3)
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            return
          end
          L1_3 = Wait
          L2_3 = 0
          L1_3(L2_3)
        end
        L1_3 = L4_2.active
        if L1_3 then
          L1_3 = DoesEntityExist
          L2_3 = A0_2
          L1_3 = L1_3(L2_3)
          if L1_3 then
            goto lbl_37
          end
        end
        do return end
        ::lbl_37::
        L1_3 = UseParticleFxAssetNextCall
        L2_3 = A1_2.particleDictionary
        L1_3(L2_3)
        L1_3 = StartParticleFxLoopedOnEntity
        L2_3 = A1_2.particleName
        L3_3 = A0_2
        L4_3 = A1_2.particleOffsetX
        if not L4_3 then
          L4_3 = 0.0
        end
        L5_3 = A1_2.particleOffsetY
        if not L5_3 then
          L5_3 = 0.0
        end
        L6_3 = A1_2.particleOffsetZ
        if not L6_3 then
          L6_3 = 0.0
        end
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = A1_2.particleScale
        if not L10_3 then
          L10_3 = 0.7
        end
        L11_3 = false
        L12_3 = false
        L13_3 = false
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        L4_2.particle = L1_3
      end
      L5_2(L6_2)
    end
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = GetEntityHeading
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    while true do
      L2_3 = L4_2.active
      if not L2_3 then
        break
      end
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = GetEntityCoords
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      L4_3 = L4_2.basePosition
      L4_3 = L3_3 - L4_3
      L4_3 = #L4_3
      L5_3 = L4_2.maxDistance
      if L4_3 <= L5_3 then
        L5_3 = GetGameTimer
        L5_3 = L5_3()
        L5_3 = L5_3 - L0_3
        L5_3 = L5_3 / 1000.0
        L6_3 = math
        L6_3 = L6_3.sin
        L7_3 = L4_2.floatSpeed
        L7_3 = L5_3 * L7_3
        L6_3 = L6_3(L7_3)
        L7_3 = L4_2.floatHeight
        L6_3 = L6_3 * L7_3
        L7_3 = 0.0
        L8_3 = 0.0
        L9_3 = L4_2.sideMovement
        if L9_3 then
          L9_3 = math
          L9_3 = L9_3.sin
          L10_3 = L4_2.sideSpeed
          L10_3 = L5_3 * L10_3
          L9_3 = L9_3(L10_3)
          L10_3 = L4_2.sideAmount
          L7_3 = L9_3 * L10_3
          L9_3 = math
          L9_3 = L9_3.cos
          L10_3 = L4_2.sideSpeed
          L10_3 = L5_3 * L10_3
          L10_3 = L10_3 * 0.85
          L9_3 = L9_3(L10_3)
          L10_3 = L4_2.sideAmount
          L8_3 = L9_3 * L10_3
        end
        L9_3 = L4_2.basePosition
        L9_3 = L9_3.x
        L9_3 = L9_3 + L7_3
        L10_3 = L4_2.basePosition
        L10_3 = L10_3.y
        L10_3 = L10_3 + L8_3
        L11_3 = L4_2.basePosition
        L11_3 = L11_3.z
        L11_3 = L11_3 + L6_3
        L12_3 = SetEntityCoordsNoOffset
        L13_3 = A0_2
        L14_3 = L9_3
        L15_3 = L10_3
        L16_3 = L11_3
        L17_3 = false
        L18_3 = false
        L19_3 = false
        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
        L12_3 = L1_3
        L13_3 = L4_2.facePlayer
        if L13_3 then
          L13_3 = L3_3.x
          L13_3 = L13_3 - L9_3
          L14_3 = L3_3.y
          L14_3 = L14_3 - L10_3
          L15_3 = math
          L15_3 = L15_3.abs
          L16_3 = L13_3
          L15_3 = L15_3(L16_3)
          L16_3 = 0.001
          if not (L15_3 > L16_3) then
            L15_3 = math
            L15_3 = L15_3.abs
            L16_3 = L14_3
            L15_3 = L15_3(L16_3)
            L16_3 = 0.001
            if not (L15_3 > L16_3) then
              goto lbl_118
            end
          end
          L15_3 = GetHeadingFromVector_2d
          L16_3 = L13_3
          L17_3 = L14_3
          L15_3 = L15_3(L16_3, L17_3)
          L16_3 = L4_2.headingOffset
          L12_3 = L15_3 + L16_3
        end
        ::lbl_118::
        L13_3 = math
        L13_3 = L13_3.sin
        L14_3 = L4_2.headingWobbleSpeed
        L14_3 = L5_3 * L14_3
        L13_3 = L13_3(L14_3)
        L14_3 = L4_2.headingWobble
        L13_3 = L13_3 * L14_3
        L12_3 = L12_3 + L13_3
        L13_3 = L74_1
        L14_3 = L1_3
        L15_3 = L12_3
        L16_3 = L4_2.headingSmooth
        L13_3 = L13_3(L14_3, L15_3, L16_3)
        L1_3 = L13_3
        L13_3 = L4_2.baseRotation
        L13_3 = L13_3.x
        L14_3 = L4_2.baseRotation
        L14_3 = L14_3.y
        L15_3 = L4_2.tiltEnabled
        if L15_3 then
          L15_3 = math
          L15_3 = L15_3.sin
          L16_3 = L4_2.tiltSpeed
          L16_3 = L5_3 * L16_3
          L15_3 = L15_3(L16_3)
          L16_3 = L4_2.tiltAmount
          L15_3 = L15_3 * L16_3
          L13_3 = L13_3 + L15_3
          L15_3 = math
          L15_3 = L15_3.cos
          L16_3 = L4_2.tiltSpeed
          L16_3 = L5_3 * L16_3
          L16_3 = L16_3 * 0.8
          L15_3 = L15_3(L16_3)
          L16_3 = L4_2.tiltAmount
          L15_3 = L15_3 * L16_3
          L14_3 = L14_3 + L15_3
        end
        L15_3 = SetEntityRotation
        L16_3 = A0_2
        L17_3 = L13_3
        L18_3 = L14_3
        L19_3 = L1_3
        L20_3 = 2
        L21_3 = true
        L15_3(L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L15_3 = L4_2.lightEnabled
        if L15_3 then
          L15_3 = math
          L15_3 = L15_3.sin
          L16_3 = L5_3 * 2.0
          L15_3 = L15_3(L16_3)
          L16_3 = L4_2.lightPulse
          L15_3 = L15_3 * L16_3
          L15_3 = 1.0 + L15_3
          L16_3 = DrawLightWithRange
          L17_3 = L9_3
          L18_3 = L10_3
          L19_3 = L11_3
          L20_3 = L4_2.lightColor
          L20_3 = L20_3.r
          L21_3 = L4_2.lightColor
          L21_3 = L21_3.g
          L22_3 = L4_2.lightColor
          L22_3 = L22_3.b
          L23_3 = L4_2.lightRange
          L24_3 = math
          L24_3 = L24_3.max
          L25_3 = 0.1
          L26_3 = L4_2.lightIntensity
          L26_3 = L26_3 * L15_3
          L24_3, L25_3, L26_3 = L24_3(L25_3, L26_3)
          L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        end
        L15_3 = Wait
        L16_3 = 0
        L15_3(L16_3)
      else
        L5_3 = Wait
        L6_3 = 9000
        L5_3(L6_3)
      end
    end
    L2_3 = FloatingObjects
    L3_3 = A0_2
    L2_3[L3_3] = nil
  end
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
L75_1[L76_1] = L77_1
L75_1 = {}
L76_1 = _ENV
L77_1 = "SegnaleIniziale"
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 1
  L2_2 = L75_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = StopParticleFxLooped
    L6_2 = L75_1
    L6_2 = L6_2[L4_2]
    L7_2 = 0
    L5_2(L6_2, L7_2)
    L5_2 = RemoveParticleFx
    L6_2 = L75_1
    L6_2 = L6_2[L4_2]
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L1_2 = {}
  L75_1 = L1_2
  L1_2 = "scr_xm_heat"
  L2_2 = RequestNamedPtfxAsset
  L3_2 = L1_2
  L2_2(L3_2)
  while true do
    L2_2 = HasNamedPtfxAssetLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = UseParticleFxAssetNextCall
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = StartParticleFxLoopedAtCoord
  L3_2 = "scr_xm_heat_camo"
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L6_2 = L6_2 + 7.0
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 10.0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L75_1
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = GetClosestObjectOfType
  L4_2 = A0_2
  L5_2 = 20.0
  L6_2 = -1746219234
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Wait
  L5_2 = 1000
  L4_2(L5_2)
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = GetClosestObjectOfType
      L1_3 = A0_2
      L2_3 = 20.0
      L3_3 = -1746219234
      L4_3 = 0
      L5_3 = 0
      L6_3 = 0
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
      if 0 ~= L0_3 then
        L1_3 = FloatingObjects
        L1_3 = L1_3[L0_3]
        if nil ~= L1_3 then
          L1_3 = Wait
          L2_3 = 5000
          L1_3(L2_3)
      end
      else
        L1_3 = checkFloatingStatue
        L2_3 = L0_3
        L1_3(L2_3)
      end
      L1_3 = Wait
      L2_3 = 5000
      L1_3(L2_3)
    end
  end
  L4_2(L5_2)
end
L76_1[L77_1] = L78_1
L76_1 = _ENV
L77_1 = "checkFloatingStatue"
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = StartFloatingObject
  L2_2 = A0_2
  L3_2 = {}
  L3_2.floatHeight = 0.35
  L3_2.floatSpeed = 2.6
  L3_2.facePlayer = true
  L3_2.headingOffset = 180.0
  L3_2.sideMovement = true
  L3_2.sideAmount = 0.055
  L3_2.tiltEnabled = true
  L3_2.tiltAmount = 3.5
  L3_2.freeze = true
  L3_2.collision = false
  L3_2.lightEnabled = true
  L4_2 = {}
  L4_2.r = 80
  L4_2.g = 160
  L4_2.b = 255
  L3_2.lightColor = L4_2
  L3_2.particleDictionary = "silk_dbz_aura_elec"
  L3_2.particleName = "aura_elec_rgb"
  L3_2.particleScale = 3.0
  L1_2(L2_2, L3_2)
end
L76_1[L77_1] = L78_1
L76_1 = _ENV
L77_1 = "StopSegnale"
function L78_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 1
  L1_2 = L75_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = StopParticleFxLooped
    L5_2 = L75_1
    L5_2 = L5_2[L3_2]
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = RemoveParticleFx
    L5_2 = L75_1
    L5_2 = L5_2[L3_2]
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L0_2 = {}
  L75_1 = L0_2
end
L76_1[L77_1] = L78_1
L76_1 = RegisterCommand
L77_1 = "stopmusic"
function L78_1()
  local L0_2, L1_2, L2_2
  L0_2 = stopMusic
  L1_2 = "intro2"
  L2_2 = 1000
  L0_2(L1_2, L2_2)
  L0_2 = stopMusic
  L1_2 = "aposong"
  L2_2 = 1000
  L0_2(L1_2, L2_2)
  L0_2 = stopMusic
  L1_2 = "darkpiano"
  L2_2 = 1000
  L0_2(L1_2, L2_2)
end
L76_1(L77_1, L78_1)
L76_1 = _ENV
L77_1 = "LobbyTutorial"
function L78_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L17_1
  if not L0_2 then
    while true do
      L0_2 = NetworkIsSessionStarted
      L0_2 = L0_2()
      if L0_2 then
        break
      end
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
    L0_2 = WaitForPlayerCollision
    L0_2()
    L0_2 = IsPedHuman
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    if not L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "tornaUmano"
      L2_2 = nil
      L3_2 = GetPlayerServerId
      L4_2 = PlayerId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
    L0_2 = DoScreenFadeOut
    L1_2 = 25
    L0_2(L1_2)
    L0_2 = ExecuteCommand
    L1_2 = "hudoff"
    L0_2(L1_2)
    L0_2 = ExecuteCommand
    L1_2 = "hudoff2"
    L0_2(L1_2)
    L0_2 = true
    L17_1 = L0_2
    serpenteStart = false
    L0_2 = ExecuteCommand
    L1_2 = "clear"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.text_guide
    L1_2 = L0_2
    L0_2 = L0_2.ClearGuideText
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.text_guide
    L1_2 = L0_2
    L0_2 = L0_2.GuidaNascondi
    L0_2(L1_2)
    L0_2 = SetTimecycleModifier
    L1_2 = "heist_boat_norain"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.setbow
    L2_2 = 0
    L0_2(L1_2, L2_2)
    L0_2 = 0
    L36_1 = L0_2
    L0_2 = PedTutorial
    if nil ~= L0_2 then
      L0_2 = DoesEntityExist
      L1_2 = PedTutorial
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = SetEntityAsMissionEntity
        L1_2 = PedTutorial
        L2_2 = true
        L0_2(L1_2, L2_2)
        L0_2 = DeleteEntity
        L1_2 = PedTutorial
        L0_2(L1_2)
        PedTutorial = nil
      end
    end
    L0_2 = L37_1
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = 1
      L1_2 = L37_1
      L1_2 = #L1_2
      L2_2 = 1
      for L3_2 = L0_2, L1_2, L2_2 do
        L4_2 = L37_1
        L4_2 = L4_2[L3_2]
        if L4_2 then
          L4_2 = DoesEntityExist
          L5_2 = L37_1
          L5_2 = L5_2[L3_2]
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = SetEntityAsMissionEntity
            L5_2 = L37_1
            L5_2 = L5_2[L3_2]
            L4_2(L5_2)
            L4_2 = DeleteEntity
            L5_2 = L37_1
            L5_2 = L5_2[L3_2]
            L4_2(L5_2)
          end
        end
      end
    end
    L0_2 = {}
    L37_1 = L0_2
    tutorialFatto = false
    L0_2 = Wait
    L1_2 = 25
    L0_2(L1_2)
    mioSessoSkinESX = "NI"
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    L0_2 = FreezeEntityPosition
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    MissioneSurv = 0
    L0_2 = RemoveAllPedWeapons
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = TriggerEvent
    L1_2 = "combat:ApplySword"
    L2_2 = 0
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.delAllDummy
    L0_2(L1_2)
    L0_2 = RemoveAllPedWeapons
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = ExecuteCommand
    L1_2 = "hudoff"
    L0_2(L1_2)
    L0_2 = FreezeEntityPosition
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = TriggerEvent
    L1_2 = "no1-playerped:client:ResetPlayerPed"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.settamiuomo
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.vestitogonna
    L0_2(L1_2)
    L0_2 = ExecuteCommand
    L1_2 = "loadskin"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.vestitogonna
    L0_2(L1_2)
    L0_2 = FreezeEntityPosition
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = ExecuteCommand
    L1_2 = "clearwaypoints"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.text_guide
    L1_2 = L0_2
    L0_2 = L0_2.GuidaNascondi
    L0_2(L1_2)
    L0_2 = ExecuteCommand
    L1_2 = "hudoff2"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = ""
    L0_2(L1_2, L2_2)
    L0_2 = SettamiUomo
    L0_2()
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = TriggerEvent
    L1_2 = "SaveMySkin"
    L0_2(L1_2)
    L0_2 = TriggerServerEvent
    L1_2 = "setBucketLegacy"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = "sounds/aposong.mp3"
    L1_2 = exports
    L1_2 = L1_2.xsound
    L2_2 = L1_2
    L1_2 = L1_2.PlayUrl
    L3_2 = "aposong"
    L4_2 = L0_2
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.GetSFXVolume
    L7_2 = 0.05
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = true
    L7_2 = {}
    L7_2.startTime = 95
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = exports
    L1_2 = L1_2.xsound
    L2_2 = L1_2
    L1_2 = L1_2.setTimeStamp
    L3_2 = "aposong"
    L4_2 = 95
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ExecuteCommand
    L2_2 = "hudoff2"
    L1_2(L2_2)
    L1_2 = TriggerEvent
    L2_2 = "esx_ambulancejjj:revive3"
    L1_2(L2_2)
    L1_2 = "sounds/menu_open.mp3"
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.PlayUrl
    L4_2 = "menu_open"
    L5_2 = L1_2
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.GetSFXVolume
    L8_2 = 0.5
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = ""
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "hudoff2"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "fixchat"
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.setwatermark
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.clearMenu
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "[ SELECT GENDER ]"
    function L5_2()
      local L0_3, L1_3
    end
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "\226\128\162 MALE"
    function L5_2()
      local L0_3, L1_3
      genere = "UOMO"
    end
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "\226\128\162 FEMALE"
    function L5_2()
      local L0_3, L1_3
      genere = "DONNA"
    end
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.openMenu
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
    while true do
      L2_2 = exports
      L2_2 = L2_2.striano_fastmenu
      L3_2 = L2_2
      L2_2 = L2_2.opened
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = "sounds/menu_close.mp3"
    L3_2 = exports
    L3_2 = L3_2.xsound
    L4_2 = L3_2
    L3_2 = L3_2.PlayUrl
    L5_2 = "menu_close"
    L6_2 = L2_2
    L7_2 = exports
    L7_2 = L7_2.striano_combat
    L8_2 = L7_2
    L7_2 = L7_2.GetSFXVolume
    L9_2 = 0.15
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = print
    L4_2 = "Genere specificato: "
    L5_2 = genere
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = genere
    if "UOMO" == L3_2 then
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submex
      L5_2 = ""
      L3_2(L4_2, L5_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submex
      L5_2 = ""
      L3_2(L4_2, L5_2)
      L3_2 = SettamiUomo
      L3_2()
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submex
      L5_2 = ""
      L3_2(L4_2, L5_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submex
      L5_2 = ""
      L3_2(L4_2, L5_2)
      L3_2 = SettamiDonna
      L3_2()
    end
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "hudoff2"
    L3_2(L4_2)
    L3_2 = VestitoGonnaIniziale
    L3_2()
    L3_2 = TriggerEvent
    L4_2 = "SaveMySkin"
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.ResettaFerite
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.striano_editor
    L4_2 = L3_2
    L3_2 = L3_2.ResettaSporco
    L3_2(L4_2)
    L3_2 = 1
    L4_2 = 20
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = ExecuteCommand
      L8_2 = "addsporco"
      L7_2(L8_2)
      L7_2 = Wait
      L8_2 = 25
      L7_2(L8_2)
    end
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = ""
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "hudoff2"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "fixchat"
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.striano_core
    L4_2 = L3_2
    L3_2 = L3_2.setwatermark
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = exports
    L3_2 = L3_2.text_guide
    L4_2 = L3_2
    L3_2 = L3_2.ClearGuideText
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 50
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.text_guide
    L4_2 = L3_2
    L3_2 = L3_2.ClearGuideText
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.text_guide
    L4_2 = L3_2
    L3_2 = L3_2.GuidaNascondi
    L3_2(L4_2)
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = ""
    L3_2(L4_2, L5_2)
    L3_2 = ExecuteCommand
    L4_2 = "w drunk5"
    L3_2(L4_2)
    L3_2 = SetEntityInvincible
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = SetEntityHealth
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = 500
    L3_2(L4_2, L5_2)
    L3_2 = SpawnSerpente
    L3_2()
  end
end
L76_1[L77_1] = L78_1
L76_1 = AddEventHandler
L77_1 = "setVestitoGonna"
function L78_1()
  local L0_2, L1_2
  L0_2 = VestitoGonnaIniziale
  L0_2()
end
L76_1(L77_1, L78_1)
L76_1 = AddEventHandler
L77_1 = "setUomoRandom"
function L78_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettamiUomo
  L0_2()
  L0_2 = mioSessoSkinESX
  if "F" == L0_2 then
    L0_2 = SetEntityVisible
    L1_2 = ped
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = SetEntityVisible
  L1_2 = ped
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L76_1(L77_1, L78_1)
L76_1 = AddEventHandler
L77_1 = "setDonnaRandom"
function L78_1()
  local L0_2, L1_2, L2_2
  L0_2 = SettamiDonna
  L0_2()
  L0_2 = mioSessoSkinESX
  if "F" == L0_2 then
    L0_2 = SetEntityVisible
    L1_2 = ped
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = SetEntityVisible
  L1_2 = ped
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L76_1(L77_1, L78_1)
L76_1 = AddEventHandler
L77_1 = "PersonalizzaPed"
function L78_1()
  local L0_2, L1_2
  L0_2 = Caratteristiche
  L0_2()
end
L76_1(L77_1, L78_1)
L76_1 = AddEventHandler
L77_1 = "PersonalizzaTattoo"
function L78_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "tattoo"
  L0_2(L1_2)
end
L76_1(L77_1, L78_1)
L76_1 = AddEventHandler
L77_1 = "SaveMySkin"
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if 1885233650 ~= L1_2 then
    L1_2 = GetEntityModel
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if -1667301416 ~= L1_2 then
      goto lbl_29
    end
  end
  if nil == A0_2 then
    L1_2 = TriggerEvent
    L2_2 = "skinchanger:getSkin"
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = TriggerServerEvent
      L2_3 = "esx_skin:save"
      L3_3 = A0_3
      L4_3 = GetPlayerServerId
      L5_3 = PlayerId
      L5_3 = L5_3()
      L4_3, L5_3 = L4_3(L5_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = TriggerServerEvent
    L2_2 = "esx_skin:save"
    L3_2 = A0_2
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2 = L5_2()
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    goto lbl_32
    ::lbl_29::
    L1_2 = print
    L2_2 = "Non salvo la skin, modello non valido."
    L1_2(L2_2)
  end
  ::lbl_32::
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNetEvent
L77_1 = "setTutorialFatto"
L76_1(L77_1)
L76_1 = AddEventHandler
L77_1 = "setTutorialFatto"
function L78_1()
  local L0_2, L1_2, L2_2, L3_2
  tutorialFatto = true
  L0_2 = TriggerServerEvent
  L1_2 = "esx_Pharmacy:setVarDB"
  L2_2 = "mytutorial"
  L3_2 = MissioneSurv
  L0_2(L1_2, L2_2, L3_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNetEvent
L77_1 = "setTutorial"
L76_1(L77_1)
L76_1 = AddEventHandler
L77_1 = "setTutorial"
function L78_1(A0_2)
  local L1_2
  tutorialFatto = A0_2
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNetEvent
L77_1 = "Multichar"
L76_1(L77_1)
L76_1 = AddEventHandler
L77_1 = "Multichar"
function L78_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = vector3
  L2_2 = 0.0
  L3_2 = 0.0
  L4_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2 = L0_2 - L1_2
  L0_2 = #L0_2
  if L0_2 < 50.0 then
    L0_2 = IntroMultichar
    L0_2()
  end
end
L76_1(L77_1, L78_1)
L76_1 = _ENV
L77_1 = "doingTutorial"
L78_1 = false
L76_1[L77_1] = L78_1
L76_1 = RegisterNetEvent
L77_1 = "SonoPedNuovo"
L76_1(L77_1)
L76_1 = AddEventHandler
L77_1 = "SonoPedNuovo"
function L78_1()
  local L0_2, L1_2
  L0_2 = doingTutorial
  if L0_2 then
    L0_2 = print
    L1_2 = "ANTIFLOOD TUTORIAL!"
    L0_2(L1_2)
    return
  end
  doingTutorial = true
  L0_2 = DoScreenFadeOut
  L1_2 = 25
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:clearInventory"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.clearWeaponSlot
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "LobbyTutorial() from skinchanger, im a new character."
  L0_2(L1_2)
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = WaitForPlayerCollision
  L0_2()
  while true do
    L0_2 = IsInPowerSavingMode
    L0_2 = L0_2()
    if not L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
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
  L0_2 = ExecuteCommand
  L1_2 = "hudoff2"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.fastgetup
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "esx_ambulancejjj:revive3"
  L0_2(L1_2)
  L0_2 = LobbyTutorial
  L0_2()
end
L76_1(L77_1, L78_1)
L76_1 = RegisterCommand
L77_1 = "TutorialStart"
function L78_1()
  local L0_2, L1_2
  tutorialFatto = false
  L0_2 = TriggerEvent
  L1_2 = "esx_ambulancejjj:revive3"
  L0_2(L1_2)
  L0_2 = LobbyTutorial
  L0_2()
end
L76_1(L77_1, L78_1)
L76_1 = RegisterCommand
L77_1 = "testObs"
function L78_1()
  local L0_2, L1_2
  L0_2 = SetTimecycleModifier
  L1_2 = "V_FIB_IT3_alt"
  L0_2(L1_2)
  L0_2 = SetTimecycleModifierStrength
  L1_2 = 1.0
  L0_2(L1_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterNetEvent
L77_1 = "legacy:loadskin"
L76_1(L77_1)
L76_1 = AddEventHandler
L77_1 = "legacy:loadskin"
function L78_1()
  local L0_2, L1_2
  L0_2 = CaricamentoSkin
  L0_2()
end
L76_1(L77_1, L78_1)
L76_1 = RegisterCommand
L77_1 = "myskinpedid"
function L78_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_2, L2_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2)
end
L76_1(L77_1, L78_1)
L76_1 = RegisterCommand
L77_1 = "gettutorial"
function L78_1()
  local L0_2, L1_2
  L0_2 = tutorialFatto
  if L0_2 then
    L0_2 = print
    L1_2 = "Fatto!"
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "Non fatto."
    L0_2(L1_2)
  end
end
L76_1(L77_1, L78_1)
L76_1 = false
L77_1 = _ENV
L78_1 = "CaricamentoSkin"
function L79_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  if nil == L0_2 then
    L0_2 = print
    L1_2 = "ATTENZIONE ERRORE: Non hai la skin settata, dovresti riloggare!"
    L0_2(L1_2)
  end
  L0_2 = GetEntityModel
  L1_2 = PlayerPedId
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  if 1885233650 ~= L0_2 then
    L0_2 = GetEntityModel
    L1_2 = PlayerPedId
    L1_2, L2_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2)
    if -1667301416 ~= L0_2 then
      goto lbl_26
    end
  end
  L0_2 = TriggerServerCallback
  L1_2 = "esx_skin:getPlayerSkin"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 then
      L1_3 = L76_1
      if not L1_3 then
        L1_3 = true
        L76_1 = L1_3
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:loadSkin"
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      L1_3 = exports
      L1_3 = L1_3.skinchanger
      L2_3 = L1_3
      L1_3 = L1_3.applicaUnaSkinPlayer
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submex
      L3_3 = "Error to laod skin form DB."
      L1_3(L2_3, L3_3)
    end
  end
  L0_2(L1_2, L2_2)
  ::lbl_26::
end
L77_1[L78_1] = L79_1
L77_1 = RegisterCommand
L78_1 = "lifebyrank"
function L79_1()
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
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.liferank
  L1_2(L2_2)
end
L77_1(L78_1, L79_1)
L77_1 = _ENV
L78_1 = "exports"
L77_1 = L77_1[L78_1]
L78_1 = "updateSex"
function L79_1(A0_2)
  local L1_2
  mioSessoSkinESX = A0_2
end
L77_1(L78_1, L79_1)
L77_1 = _ENV
L78_1 = "exports"
L77_1 = L77_1[L78_1]
L78_1 = "gettutorial"
function L79_1()
  local L0_2, L1_2
  L0_2 = tutorialFatto
  return L0_2
end
L77_1(L78_1, L79_1)
L77_1 = _ENV
L78_1 = "exports"
L77_1 = L77_1[L78_1]
L78_1 = "notutorial"
function L79_1()
  local L0_2, L1_2
  L0_2 = tutorialFatto
  L0_2 = not L0_2
  return L0_2
end
L77_1(L78_1, L79_1)
L77_1 = RegisterCommand
L78_1 = "submisID"
function L79_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "submisID: "
  L2_2 = L24_1
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L77_1(L78_1, L79_1)
L77_1 = AddEventHandler
L78_1 = "esx:onPlayerDeath"
function L79_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L23_1 = L1_2
  L1_2 = 0
  L22_1 = L1_2
  L1_2 = 1
  L2_2 = L25_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = DoesEntityExist
    L6_2 = L25_1
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SetEntityAsMissionEntity
      L6_2 = L25_1
      L6_2 = L6_2[L4_2]
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = DeleteEntity
      L6_2 = L25_1
      L6_2 = L6_2[L4_2]
      L5_2(L6_2)
    end
  end
  L1_2 = {}
  L25_1 = L1_2
  while true do
    L1_2 = IsPedFatallyInjured
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    if not L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = TriggerEvent
  L2_2 = "esx_ambulancejjj:revive3"
  L1_2(L2_2)
  L1_2 = AnnullaIncaricoSub
  L1_2()
end
L77_1(L78_1, L79_1)
L77_1 = _ENV
L78_1 = "VestitoGonnaIniziale"
function L79_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 1885233650 == L1_2 then
    L1_2 = {}
    L1_2.mask_1 = 260
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 15
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 15
    L1_2.torso_2 = 0
    L1_2.arms = 15
    L1_2.bags_1 = 0
    L1_2.bags_2 = 0
    L1_2.pants_1 = 202
    L1_2.pants_2 = 2
    L1_2.shoes_1 = 27
    L1_2.shoes_2 = 0
    L1_2.chain_1 = 0
    L1_2.chain_2 = 0
    L1_2.bproof_1 = 0
    L1_2.bproof_2 = 0
    L1_2.decals_1 = 0
    L1_2.decals_2 = 0
    L1_2.helmet_1 = -1
    L1_2.helmet_2 = 0
    L1_2.glasses_1 = 0
    L1_2.glasses_2 = 0
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = {}
    L1_2.mask_1 = 0
    L1_2.mask_2 = 0
    L1_2.tshirt_1 = 15
    L1_2.tshirt_2 = 0
    L1_2.torso_1 = 610
    L1_2.torso_2 = 0
    L1_2.arms = 15
    L1_2.bags_1 = 0
    L1_2.bags_2 = 0
    L1_2.pants_1 = 222
    L1_2.pants_2 = 0
    L1_2.shoes_1 = 26
    L1_2.shoes_2 = 0
    L1_2.chain_1 = 0
    L1_2.chain_2 = 0
    L1_2.bproof_1 = 0
    L1_2.bproof_2 = 0
    L1_2.decals_1 = 0
    L1_2.decals_2 = 0
    L1_2.helmet_1 = -1
    L1_2.helmet_2 = 0
    L1_2.glasses_1 = 5
    L1_2.glasses_2 = 0
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:loadClothesLegacy"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L77_1[L78_1] = L79_1
L77_1 = _ENV
L78_1 = "mostro"
L79_1 = nil
L77_1[L78_1] = L79_1
L77_1 = _ENV
L78_1 = "freezCam"
L79_1 = 0
L77_1[L78_1] = L79_1
L77_1 = _ENV
L78_1 = "FreezaCam"
function L79_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = freezCam
    if 0 == L2_2 then
      freezCam = 5
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
L77_1[L78_1] = L79_1
L77_1 = 0
L78_1 = _ENV
L79_1 = "avgFrameTime"
L80_1 = 0.0
L78_1[L79_1] = L80_1
L78_1 = _ENV
L79_1 = "hasLowFps"
L80_1 = false
L78_1[L79_1] = L80_1
L78_1 = _ENV
L79_1 = "checkLowFPS"
function L80_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = 0.05
    while true do
      L1_3 = TutorialStart
      if not L1_3 then
        break
      end
      L1_3 = GetFrameTime
      L1_3 = L1_3()
      L2_3 = avgFrameTime
      if 0.0 == L2_3 then
        avgFrameTime = L1_3
      else
        L2_3 = avgFrameTime
        L3_3 = 1.0
        L3_3 = L3_3 - L0_3
        L2_3 = L2_3 * L3_3
        L3_3 = L1_3 * L0_3
        L2_3 = L2_3 + L3_3
        avgFrameTime = L2_3
      end
      L2_3 = avgFrameTime
      L3_3 = 1.0
      L2_3 = L3_3 / L2_3
      if L2_3 < 5.0 then
        L3_3 = hasLowFps
        if not L3_3 then
          hasLowFps = true
        end
      else
        L3_3 = hasLowFps
        if L3_3 then
          hasLowFps = false
        end
      end
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
  end
  L0_2(L1_2)
end
L78_1[L79_1] = L80_1
L78_1 = RegisterNetEvent
L79_1 = "stopSodMusic"
L78_1(L79_1)
L78_1 = AddEventHandler
L79_1 = "stopSodMusic"
function L80_1(A0_2)
  local L1_2, L2_2
  L1_2 = stopMusic
  L2_2 = A0_2
  L1_2(L2_2)
end
L78_1(L79_1, L80_1)
function L78_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = PlayPain
  L2_2 = A0_2
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 0
  L5_2 = 12
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0.0
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L79_1 = 0
L80_1 = _ENV
L81_1 = "IniziatoTut"
L82_1 = false
L80_1[L81_1] = L82_1
L80_1 = _ENV
L81_1 = "serpenteStart"
L82_1 = false
L80_1[L81_1] = L82_1
L80_1 = false
L81_1 = _ENV
L82_1 = "SpawnSerpente"
function L83_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2
  L0_2 = serpenteStart
  if L0_2 then
    return
  end
  serpenteStart = true
  L0_2 = checkLowFPS
  L0_2()
  introBaseFinita = true
  L0_2 = IsPedHuman
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  if not L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "tornaUmano"
    L2_2 = nil
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = TriggerEvent
  L3_2 = "esx_ambulancejjj:revive3"
  L2_2(L3_2)
  L2_2 = SetTimecycleModifier
  L3_2 = "Blackout"
  L2_2(L3_2)
  L2_2 = SetTimecycleModifierStrength
  L3_2 = 2.0
  L2_2(L3_2)
  tutorialFatto = false
  L2_2 = exports
  L2_2 = L2_2.striano_boat
  L3_2 = L2_2
  L2_2 = L2_2.delBoat
  L2_2(L3_2)
  L2_2 = vector3
  L3_2 = 3815.206
  L4_2 = 6560.591
  L5_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = SetEntityCoords
  L4_2 = L0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityHeading
  L4_2 = L0_2
  L5_2 = 100.0
  L3_2(L4_2, L5_2)
  L1_2 = true
  L3_2 = ExecuteCommand
  L4_2 = "clearwaypoints"
  L3_2(L4_2)
  L3_2 = vector3
  L4_2 = 3673.912
  L5_2 = 6533.373
  L6_2 = -3.019
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = vector3
  L5_2 = 3.0000007152557
  L6_2 = -2.6680424980441E-8
  L7_2 = 85.353744506836
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L6_2 = exports
  L6_2 = L6_2.striano_inventory
  L7_2 = L6_2
  L6_2 = L6_2.delblipInteresse
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.striano_core
  L7_2 = L6_2
  L6_2 = L6_2.setwatermark
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = exports
  L6_2 = L6_2.striano_boat
  L7_2 = L6_2
  L6_2 = L6_2.calmWater
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = ExecuteCommand
  L7_2 = "hudoff2"
  L6_2(L7_2)
  L6_2 = NetworkOverrideClockTime
  L7_2 = 19
  L8_2 = 0
  L9_2 = 0
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Wait
  L7_2 = 1500
  L6_2(L7_2)
  L6_2 = settamiMeteo
  L7_2 = "RAIN"
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.text_guide
  L7_2 = L6_2
  L6_2 = L6_2.ClearGuideText
  L6_2(L7_2)
  L6_2 = exports
  L6_2 = L6_2.text_guide
  L7_2 = L6_2
  L6_2 = L6_2.GuidaNascondi
  L6_2(L7_2)
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = exports
    L0_3 = L0_3.striano_boat
    L1_3 = L0_3
    L0_3 = L0_3.tutboat
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = exports
    L0_3 = L0_3.striano_boat
    L1_3 = L0_3
    L0_3 = L0_3.canDropFromBoat
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = Wait
    L1_3 = 2000
    L0_3(L1_3)
    L0_3 = barcaTut
    if nil ~= L0_3 then
      L0_3 = SetEntityAsMissionEntity
      L1_3 = barcaTut
      L0_3(L1_3)
      L0_3 = DeleteEntity
      L1_3 = barcaTut
      L0_3(L1_3)
    end
    L0_3 = RequestModelStriano
    L1_3 = "prop_byard_rowboat4"
    L0_3(L1_3)
    L0_3 = CreateObject
    L1_3 = GetHashKey
    L2_3 = "prop_byard_rowboat4"
    L1_3 = L1_3(L2_3)
    L2_3 = L2_2.x
    L3_3 = L2_2.y
    L4_3 = L2_2.z
    L5_3 = false
    L6_3 = false
    L7_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    barcaTut = L0_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = barcaTut
      L0_3 = L0_3(L1_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = SetEntityInvincible
    L1_3 = barcaTut
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityCanBeDamaged
    L1_3 = barcaTut
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityRotation
    L1_3 = barcaTut
    L2_3 = 0.0
    L3_3 = 0.0
    L3_3 = -L3_3
    L4_3 = 100.0
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = FreezeEntityPosition
    L1_3 = barcaTut
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = exports
    L0_3 = L0_3.striano_boat
    L1_3 = L0_3
    L0_3 = L0_3.deleteAndSpawnBoat
    L2_3 = barcaTut
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2)
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.showZone
  L9_2 = " "
  L10_2 = "strianodev.com presents"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = {}
  L8_2 = {}
  L9_2 = vector3
  L10_2 = 3815.206
  L11_2 = 6560.591
  L12_2 = 5.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.p = L9_2
  L8_2.s = "Black"
  L9_2 = {}
  L10_2 = -0.594
  L11_2 = 0.297
  L12_2 = 1.144
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = -18.9
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L9_2[5] = L14_2
  L9_2[6] = L15_2
  L8_2.att = L9_2
  L9_2 = {}
  L9_2.a = "anim@amb@nightclub@lazlow@lo_alone@"
  L9_2.b = "lowalone_base_laz"
  L8_2.anim = L9_2
  L9_2 = {}
  L10_2 = vector3
  L11_2 = 3815.206
  L12_2 = 6560.591
  L13_2 = 5.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.p = L10_2
  L9_2.s = "Black"
  L10_2 = {}
  L11_2 = -0.783
  L12_2 = -1.944
  L13_2 = 0.531
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 1.3
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L9_2.att = L10_2
  L10_2 = {}
  L10_2.a = "misstrevor1trv_1_mcs_2"
  L10_2.b = "dialogue_a_wade"
  L9_2.anim = L10_2
  L10_2 = {}
  L11_2 = vector3
  L12_2 = 3815.206
  L13_2 = 6560.591
  L14_2 = 5.0
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.p = L11_2
  L10_2.s = "Black"
  L11_2 = {}
  L12_2 = 0.396
  L13_2 = -0.783
  L14_2 = 0.1
  L15_2 = 22.5
  L16_2 = 4.2
  L17_2 = 0.6
  L11_2[1] = L12_2
  L11_2[2] = L13_2
  L11_2[3] = L14_2
  L11_2[4] = L15_2
  L11_2[5] = L16_2
  L11_2[6] = L17_2
  L10_2.att = L11_2
  L11_2 = {}
  L11_2.a = "oddjobs@taxi@tie"
  L11_2.b = "drunk_idle"
  L10_2.anim = L11_2
  L11_2 = {}
  L12_2 = vector3
  L13_2 = 3815.206
  L14_2 = 6560.591
  L15_2 = 5.0
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2.p = L12_2
  L11_2.s = "Black"
  L12_2 = {}
  L13_2 = -0.486
  L14_2 = 0.234
  L15_2 = 1.134
  L16_2 = 8.7
  L17_2 = 0.3
  L18_2 = -24.3
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L12_2[6] = L18_2
  L11_2.att = L12_2
  L12_2 = {}
  L12_2.a = "timetable@ron@ig_3_couch"
  L12_2.b = "trevoryouarereallygonnawant"
  L11_2.anim = L12_2
  L12_2 = {}
  L13_2 = vector3
  L14_2 = 3815.206
  L15_2 = 6560.591
  L16_2 = 5.0
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.p = L13_2
  L12_2.s = "Black"
  L13_2 = {}
  L14_2 = 0.234
  L15_2 = 0.225
  L16_2 = 1.08
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = 12.6
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L13_2[5] = L18_2
  L13_2[6] = L19_2
  L12_2.att = L13_2
  L13_2 = {}
  L13_2.a = "anim@heists@ornate_bank@hostages@ped_e@"
  L13_2.b = "flinch_loop"
  L12_2.anim = L13_2
  L13_2 = {}
  L14_2 = vector3
  L15_2 = 3815.206
  L16_2 = 6560.591
  L17_2 = 5.0
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.p = L14_2
  L13_2.s = "Black"
  L14_2 = {}
  L15_2 = -1.125
  L16_2 = -1.044
  L17_2 = 0.459
  L18_2 = -5.7
  L19_2 = -0.3
  L20_2 = -7.8
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  L14_2[5] = L19_2
  L14_2[6] = L20_2
  L13_2.att = L14_2
  L14_2 = {}
  L14_2.a = "anim@amb@clubhouse@boardroom@boss@female@base@"
  L14_2.b = "base"
  L13_2.anim = L14_2
  L13_2.devoCadere = true
  L14_2 = {}
  L15_2 = vector3
  L16_2 = 3815.206
  L17_2 = 6560.591
  L18_2 = 5.0
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L14_2.p = L15_2
  L14_2.s = "Black"
  L15_2 = {}
  L16_2 = 1.728
  L17_2 = 0.846
  L18_2 = 0.459
  L19_2 = -46.8
  L20_2 = -13.5
  L21_2 = 87.9
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L14_2.att = L15_2
  L15_2 = {}
  L15_2.a = "missfam1_yachtbattleonyacht02_"
  L15_2.b = "onboom_hangloop_j"
  L14_2.anim = L15_2
  L14_2.devoCadere = true
  L15_2 = {}
  L16_2 = vector3
  L17_2 = 3815.206
  L18_2 = 6560.591
  L19_2 = 5.0
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L15_2.p = L16_2
  L15_2.s = "Black"
  L16_2 = {}
  L17_2 = -0.072
  L18_2 = 0.927
  L19_2 = 1.125
  L20_2 = 15.9
  L21_2 = -3.9
  L22_2 = -17.4
  L16_2[1] = L17_2
  L16_2[2] = L18_2
  L16_2[3] = L19_2
  L16_2[4] = L20_2
  L16_2[5] = L21_2
  L16_2[6] = L22_2
  L15_2.att = L16_2
  L16_2 = {}
  L16_2.a = "anim@heists@ornate_bank@hostages@ped_c@"
  L16_2.b = "flinch_loop"
  L15_2.anim = L16_2
  L16_2 = {}
  L17_2 = vector3
  L18_2 = 3815.206
  L19_2 = 6560.591
  L20_2 = 5.0
  L17_2 = L17_2(L18_2, L19_2, L20_2)
  L16_2.p = L17_2
  L16_2.s = "Black"
  L17_2 = {}
  L18_2 = 0.603
  L19_2 = -2.223
  L20_2 = 0.79
  L21_2 = 33.3
  L22_2 = 19.2
  L23_2 = 3.6
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  L17_2[5] = L22_2
  L17_2[6] = L23_2
  L16_2.att = L17_2
  L17_2 = {}
  L17_2.a = "timetable@tracy@ig_14@"
  L17_2.b = "ig_14_base_tracy"
  L16_2.anim = L17_2
  L17_2 = {}
  L18_2 = vector3
  L19_2 = 3815.206
  L20_2 = 6560.591
  L21_2 = 5.0
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.p = L18_2
  L17_2.s = "Black"
  L18_2 = {}
  L19_2 = -0.396
  L20_2 = -0.711
  L21_2 = 0.652
  L22_2 = -100.5
  L23_2 = -14.4
  L24_2 = 142.2
  L18_2[1] = L19_2
  L18_2[2] = L20_2
  L18_2[3] = L21_2
  L18_2[4] = L22_2
  L18_2[5] = L23_2
  L18_2[6] = L24_2
  L17_2.att = L18_2
  L18_2 = {}
  L18_2.a = "oddjobs@taxi@tie"
  L18_2.b = "drunk_idle"
  L17_2.anim = L18_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L7_2[6] = L13_2
  L7_2[7] = L14_2
  L7_2[8] = L15_2
  L7_2[9] = L16_2
  L7_2[10] = L17_2
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L0_3 = Wait
    L1_3 = 2000
    L0_3(L1_3)
    while true do
      L0_3 = exports
      L0_3 = L0_3.striano_boat
      L1_3 = L0_3
      L0_3 = L0_3.getMyBoat
      L0_3 = L0_3(L1_3)
      if nil ~= L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_boat
    L1_3 = L0_3
    L0_3 = L0_3.getMyBoat
    L0_3 = L0_3(L1_3)
    L1_3 = 1
    L2_3 = L7_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L7_2
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.p
      L6_3 = L7_2
      L6_3 = L6_3[L4_3]
      L6_3 = L6_3.s
      L7_3 = L7_2
      L7_3 = L7_3[L4_3]
      L7_3 = L7_3.att
      L8_3 = L7_2
      L8_3 = L8_3[L4_3]
      L8_3 = L8_3.anim
      L9_3 = nil
      L10_3 = RequestCollisionAtCoord
      L11_3 = L5_3.x
      L12_3 = L5_3.y
      L13_3 = L5_3.z
      L10_3(L11_3, L12_3, L13_3)
      if "Sole" == L6_3 then
        L10_3 = exports
        L10_3 = L10_3.striano_editor
        L11_3 = L10_3
        L10_3 = L10_3.spawnPedVestiti
        L12_3 = L5_3
        L13_3 = math
        L13_3 = L13_3.random
        L14_3 = 1
        L15_3 = 359
        L13_3 = L13_3(L14_3, L15_3)
        L14_3 = "Sole"
        L15_3 = false
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
        L9_3 = L10_3
      elseif "Black" == L6_3 then
        L10_3 = exports
        L10_3 = L10_3.striano_editor
        L11_3 = L10_3
        L10_3 = L10_3.spawnPedRandom3
        L12_3 = L5_3
        L13_3 = math
        L13_3 = L13_3.random
        L14_3 = 1
        L15_3 = 359
        L13_3 = L13_3(L14_3, L15_3)
        L14_3 = false
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
        L9_3 = L10_3
      else
        L10_3 = RequestModelStriano
        L11_3 = L6_3
        L10_3(L11_3)
        L10_3 = CreatePed
        L11_3 = 1
        L12_3 = L6_3
        L13_3 = L5_3
        L14_3 = math
        L14_3 = L14_3.random
        L15_3 = 1
        L16_3 = 359
        L14_3 = L14_3(L15_3, L16_3)
        L15_3 = false
        L16_3 = false
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L9_3 = L10_3
      end
      L10_3 = DoesEntityExist
      L11_3 = L9_3
      L10_3 = L10_3(L11_3)
      if L10_3 then
        L10_3 = table
        L10_3 = L10_3.insert
        L11_3 = L37_1
        L12_3 = {}
        L12_3.npc = L9_3
        L13_3 = L7_2
        L13_3 = L13_3[L4_3]
        L13_3 = L13_3.devoCadere
        L12_3.devoCadere = L13_3
        L12_3.anim = L8_3
        L10_3(L11_3, L12_3)
        L10_3 = SetPedFleeAttributes
        L11_3 = L9_3
        L12_3 = 0
        L13_3 = 0
        L10_3(L11_3, L12_3, L13_3)
        L10_3 = SetPedDropsWeaponsWhenDead
        L11_3 = L9_3
        L12_3 = false
        L10_3(L11_3, L12_3)
        L10_3 = SetPedDiesWhenInjured
        L11_3 = L9_3
        L12_3 = false
        L10_3(L11_3, L12_3)
        L10_3 = SetEntityAsMissionEntity
        L11_3 = L9_3
        L12_3 = true
        L10_3(L11_3, L12_3)
        L10_3 = SetEntityAlpha
        L11_3 = L9_3
        L12_3 = 254
        L10_3(L11_3, L12_3)
        L10_3 = SetPedMute
        L11_3 = L9_3
        L10_3(L11_3)
        L10_3 = CanPedSpeak
        L11_3 = L9_3
        L12_3 = false
        L13_3 = 0
        L10_3(L11_3, L12_3, L13_3)
        L10_3 = StopPedSpeaking
        L11_3 = L9_3
        L12_3 = false
        L10_3(L11_3, L12_3)
        L10_3 = DisablePedPainAudio
        L11_3 = L9_3
        L12_3 = true
        L10_3(L11_3, L12_3)
        L10_3 = 1
        L11_3 = 10
        L12_3 = 1
        for L13_3 = L10_3, L11_3, L12_3 do
          L14_3 = TriggerEvent
          L15_3 = "doblood"
          L16_3 = L9_3
          L14_3(L15_3, L16_3)
        end
        L10_3 = Wait
        L11_3 = 25
        L10_3(L11_3)
        L10_3 = Wait
        L11_3 = 50
        L10_3(L11_3)
        L10_3 = ClearPedTasks
        L11_3 = L9_3
        L10_3(L11_3)
        L10_3 = AttachEntityToEntity
        L11_3 = L9_3
        L12_3 = L0_3
        L13_3 = 0
        L14_3 = L7_3[1]
        L15_3 = L7_3[2]
        L16_3 = L7_3[3]
        L17_3 = L7_3[4]
        L18_3 = L7_3[5]
        L19_3 = L7_3[6]
        L20_3 = false
        L21_3 = false
        L22_3 = false
        L23_3 = true
        L24_3 = 2
        L25_3 = true
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
        L10_3 = Wait
        L11_3 = 50
        L10_3(L11_3)
        L10_3 = faiAnim
        L11_3 = L8_3.a
        L12_3 = L8_3.b
        L13_3 = -1
        L14_3 = 1
        L15_3 = L9_3
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
        L10_3 = Wait
        L11_3 = 50
        L10_3(L11_3)
        L10_3 = faiAnim
        L11_3 = L8_3.a
        L12_3 = L8_3.b
        L13_3 = -1
        L14_3 = 1
        L15_3 = L9_3
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3)
      else
        L10_3 = print
        L11_3 = "ATTENZIONE! Uno dei PED del tutorial non esiste per qualche problema!"
        L10_3(L11_3)
      end
    end
    L1_3 = Wait
    L2_3 = 15000
    L1_3(L2_3)
    L1_3 = 1
    L2_3 = L37_1
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L37_1
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.npc
      if nil ~= L5_3 then
        L6_3 = DoesEntityExist
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = L37_1
          L6_3 = L6_3[L4_3]
          L6_3 = L6_3.anim
          L7_3 = faiAnim
          L8_3 = L6_3.a
          L9_3 = L6_3.b
          L10_3 = -1
          L11_3 = 1
          L12_3 = npc
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
          L7_3 = L37_1
          L7_3 = L7_3[L4_3]
          L7_3 = L7_3.devoCadere
          if nil ~= L7_3 then
            L7_3 = exports
            L7_3 = L7_3.striano_combat
            L8_3 = L7_3
            L7_3 = L7_3.MakePedAngry
            L9_3 = L5_3
            L7_3(L8_3, L9_3)
            L7_3 = DetachEntity
            L8_3 = L5_3
            L7_3(L8_3)
            L7_3 = SetPedToRagdoll
            L8_3 = L5_3
            L9_3 = 9000
            L10_3 = 9000
            L11_3 = 0
            L12_3 = 1
            L13_3 = 1
            L14_3 = 1
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
            L7_3 = L78_1
            L8_3 = L5_3
            L7_3(L8_3)
            L7_3 = Wait
            L8_3 = 25
            L7_3(L8_3)
            L7_3 = ApplyForceToEntity
            L8_3 = L5_3
            L9_3 = 1
            L10_3 = 0.5
            L11_3 = 0.5
            L12_3 = 0.3
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0
            L17_3 = false
            L18_3 = true
            L19_3 = true
            L20_3 = false
            L21_3 = true
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
            L7_3 = Wait
            L8_3 = 1000
            L7_3(L8_3)
            L7_3 = SetEntityHealth
            L8_3 = L5_3
            L9_3 = 0
            L7_3(L8_3, L9_3)
            L7_3 = Wait
            L8_3 = 9000
            L7_3(L8_3)
          end
        end
      end
    end
  end
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 4000
  L8_2(L9_2)
  L8_2 = DoScreenFadeIn
  L9_2 = 2000
  L8_2(L9_2)
  L8_2 = SetTimecycleModifier
  L9_2 = "WATER_silty"
  L8_2(L9_2)
  L8_2 = SetTimecycleModifierStrength
  L9_2 = 1.0
  L8_2(L9_2)
  L8_2 = Wait
  L9_2 = 3000
  L8_2(L9_2)
  L8_2 = "sounds/respirosurv.mp3"
  L9_2 = exports
  L9_2 = L9_2.xsound
  L10_2 = L9_2
  L9_2 = L9_2.PlayUrl
  L11_2 = "respirosurv"
  L12_2 = L8_2
  L13_2 = exports
  L13_2 = L13_2.striano_combat
  L14_2 = L13_2
  L13_2 = L13_2.GetSFXVolume
  L15_2 = 0.5
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L13_2(L14_2, L15_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  while true do
    L9_2 = GetEntityCoords
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L5_2
    L9_2 = #L9_2
    L10_2 = 45.5
    if not (L9_2 > L10_2) then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
    L9_2 = DrawMarker
    L10_2 = 1
    L11_2 = vector3
    L12_2 = L5_2.x
    L13_2 = L5_2.y
    L14_2 = L5_2.z
    L14_2 = L14_2 - 1.5
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 2.0
    L19_2 = 2.0
    L20_2 = 100.0
    L21_2 = 255
    L22_2 = 255
    L23_2 = 255
    L24_2 = 200
    L25_2 = false
    L26_2 = true
    L27_2 = 2
    L28_2 = nil
    L29_2 = nil
    L30_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L9_2 = exports
  L9_2 = L9_2.striano_boat
  L10_2 = L9_2
  L9_2 = L9_2.calmWater
  L11_2 = true
  L9_2(L10_2, L11_2)
  while true do
    L9_2 = GetEntityCoords
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L5_2
    L9_2 = #L9_2
    L10_2 = 25.5
    if not (L9_2 > L10_2) then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
    L9_2 = DrawMarker
    L10_2 = 1
    L11_2 = vector3
    L12_2 = L5_2.x
    L13_2 = L5_2.y
    L14_2 = L5_2.z
    L14_2 = L14_2 - 1.5
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 1.3
    L19_2 = 1.3
    L20_2 = 100.0
    L21_2 = 255
    L22_2 = 255
    L23_2 = 255
    L24_2 = 150
    L25_2 = false
    L26_2 = true
    L27_2 = 2
    L28_2 = nil
    L29_2 = nil
    L30_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L9_2 = "sounds/worm"
  L10_2 = L9_2
  L11_2 = ".mp3"
  L10_2 = L10_2 .. L11_2
  L11_2 = exports
  L11_2 = L11_2.xsound
  L12_2 = L11_2
  L11_2 = L11_2.PlayUrl
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = exports
  L15_2 = L15_2.striano_combat
  L16_2 = L15_2
  L15_2 = L15_2.GetSFXVolume
  L17_2 = 0.3
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L15_2(L16_2, L17_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L11_2 = "EaseInOut"
  L12_2 = PlayEffectTutorial
  L13_2 = "core"
  L14_2 = "trail_splash_petrol"
  L15_2 = vector3
  L16_2 = L3_2.x
  L17_2 = L3_2.y
  L18_2 = L3_2.z
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = 25.5
  L17_2 = vector3
  L18_2 = 0.0
  L19_2 = 0.0
  L20_2 = 0.0
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L17_2(L18_2, L19_2, L20_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L13_2 = CreateThread
  function L14_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 5500
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
  L13_2 = Wait
  L14_2 = 500
  L13_2(L14_2)
  L13_2 = RequestModelStriano
  L14_2 = GetHashKey
  L15_2 = "alezlab_serpenopode"
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L14_2(L15_2)
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L13_2 = CreateObject
  L14_2 = GetHashKey
  L15_2 = "alezlab_serpenopode"
  L14_2 = L14_2(L15_2)
  L15_2 = vector3
  L16_2 = L3_2.x
  L17_2 = L3_2.y
  L18_2 = L3_2.z
  L18_2 = L18_2 - 15
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = false
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  mostro = L13_2
  while true do
    L13_2 = tutorialFatto
    if L13_2 then
      break
    end
    L13_2 = DoesEntityExist
    L14_2 = mostro
    L13_2 = L13_2(L14_2)
    if L13_2 then
      break
    end
    L13_2 = Wait
    L14_2 = 0
    L13_2(L14_2)
  end
  L13_2 = SetEntityCollision
  L14_2 = mostro
  L15_2 = false
  L16_2 = false
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = Wait
  L14_2 = 25
  L13_2(L14_2)
  L13_2 = makeEntityFaceEntityRev
  L14_2 = mostro
  L15_2 = PlayerPedId
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L15_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L13_2 = "alezlab_serpenopode"
  L14_2 = "alezlab_serpenopode@animation"
  L15_2 = RequestAnimDict
  L16_2 = L14_2
  L15_2(L16_2)
  L15_2 = GetGameTimer
  L15_2 = L15_2()
  while true do
    L16_2 = tutorialFatto
    if L16_2 then
      break
    end
    L16_2 = HasAnimDictLoaded
    L17_2 = L14_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      break
    end
    L16_2 = GetGameTimer
    L16_2 = L16_2()
    L16_2 = L16_2 - L15_2
    L17_2 = 1500
    if not (L16_2 < L17_2) then
      break
    end
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L16_2 = SetEntityAnimCurrentTime
  L17_2 = mostro
  L18_2 = L14_2
  L19_2 = L13_2
  L20_2 = 0.0
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = SetEntityAnimSpeed
  L17_2 = mostro
  L18_2 = L14_2
  L19_2 = L13_2
  L20_2 = 0.0
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = SetEntityAnimSpeed
  L17_2 = mostro
  L18_2 = L14_2
  L19_2 = L13_2
  L20_2 = 0.9
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.TransitionEntity
    L2_3 = L11_2
    L3_3 = mostro
    L4_3 = L4_2
    L5_3 = vector3
    L6_3 = L3_2.x
    L7_3 = L3_2.y
    L8_3 = L3_2.z
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = 1.5
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L16_2(L17_2)
  L16_2 = Wait
  L17_2 = 500
  L16_2(L17_2)
  L16_2 = SetCurrentPedWeapon
  L17_2 = L6_2
  L18_2 = -1569615261
  L19_2 = true
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = Wait
  L17_2 = 500
  L16_2(L17_2)
  L16_2 = exports
  L16_2 = L16_2.striano_boat
  L17_2 = L16_2
  L16_2 = L16_2.canBoating
  L18_2 = false
  L16_2(L17_2, L18_2)
  L16_2 = SetEntityNoCollisionEntity
  L17_2 = PlayerPedId
  L17_2 = L17_2()
  L18_2 = mostro
  L19_2 = true
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = SetEntityNoCollisionEntity
  L17_2 = mostro
  L18_2 = PlayerPedId
  L18_2 = L18_2()
  L19_2 = true
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = Wait
  L17_2 = 1250
  L16_2(L17_2)
  L16_2 = "sounds/dragonroar"
  L17_2 = L16_2
  L18_2 = ".mp3"
  L17_2 = L17_2 .. L18_2
  L18_2 = exports
  L18_2 = L18_2.xsound
  L19_2 = L18_2
  L18_2 = L18_2.PlayUrlPos
  L20_2 = L16_2
  L21_2 = L17_2
  L22_2 = exports
  L22_2 = L22_2.striano_combat
  L23_2 = L22_2
  L22_2 = L22_2.GetSFXVolume
  L24_2 = 0.2
  L22_2 = L22_2(L23_2, L24_2)
  L23_2 = GetEntityCoords
  L24_2 = L6_2
  L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L23_2(L24_2)
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L18_2 = Wait
  L19_2 = 350
  L18_2(L19_2)
  L18_2 = makeEntityFaceEntityRev
  L19_2 = mostro
  L20_2 = PlayerPedId
  L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L20_2()
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L18_2 = Wait
  L19_2 = 25
  L18_2(L19_2)
  L18_2 = SetEntityAnimSpeed
  L19_2 = mostro
  L20_2 = L14_2
  L21_2 = L13_2
  L22_2 = 0.75
  L18_2(L19_2, L20_2, L21_2, L22_2)
  L18_2 = SetEntityHealth
  L19_2 = L6_2
  L20_2 = 900
  L18_2(L19_2, L20_2)
  L18_2 = TriggerEvent
  L19_2 = "esx_ambulancejjj:revive3"
  L18_2(L19_2)
  L18_2 = DisplayRadar
  L19_2 = false
  L18_2(L19_2)
  while true do
    L18_2 = hasLowFps
    if not L18_2 then
      break
    end
    L18_2 = tutorialFatto
    if L18_2 then
      break
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = enableIK
    L0_3()
    L0_3 = FreezeEntityPosition
    L1_3 = L6_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = GetEntityModel
    L1_3 = L6_2
    L0_3 = L0_3(L1_3)
    if 1885233650 == L0_3 then
      L0_3 = "sounds/striano_combat/grunt/male/audio_22.mp3"
      L1_3 = exports
      L1_3 = L1_3.xsound
      L2_3 = L1_3
      L1_3 = L1_3.PlayUrl
      L3_3 = "grunt_22"
      L4_3 = L0_3
      L5_3 = exports
      L5_3 = L5_3.striano_combat
      L6_3 = L5_3
      L5_3 = L5_3.GetSFXVolume
      L7_3 = 0.03
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L5_3(L6_3, L7_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    else
      L0_3 = "sounds/striano_combat/grunt/female/audio_15.mp3"
      L1_3 = exports
      L1_3 = L1_3.xsound
      L2_3 = L1_3
      L1_3 = L1_3.PlayUrl
      L3_3 = "grunt_f_15"
      L4_3 = L0_3
      L5_3 = exports
      L5_3 = L5_3.striano_combat
      L6_3 = L5_3
      L5_3 = L5_3.GetSFXVolume
      L7_3 = 0.03
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L5_3(L6_3, L7_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
    L0_3 = tutorialFatto
    if not L0_3 then
      L0_3 = exports
      L0_3 = L0_3.striano_boat
      L1_3 = L0_3
      L0_3 = L0_3.endcam
      L0_3(L1_3)
      L0_3 = exports
      L0_3 = L0_3.striano_boat
      L1_3 = L0_3
      L0_3 = L0_3.delremi
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DetachEntity
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = makeEntityFaceEntity
      L1_3 = L6_2
      L2_3 = mostro
      L0_3(L1_3, L2_3)
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = SetPedToRagdoll
      L1_3 = L6_2
      L2_3 = 9000
      L3_3 = 9000
      L4_3 = 0
      L5_3 = 1
      L6_3 = 1
      L7_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      while true do
        L0_3 = IsPedRagdoll
        L1_3 = L6_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = exports
      L0_3 = L0_3.striano_boat
      L1_3 = L0_3
      L0_3 = L0_3.getMyBoat
      L0_3 = L0_3(L1_3)
      L1_3 = FreezeEntityPosition
      L2_3 = L0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityCollision
      L2_3 = L0_3
      L3_3 = false
      L4_3 = false
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = Wait
      L2_3 = 25
      L1_3(L2_3)
      L1_3 = GetEntityForwardVector
      L2_3 = mostro
      L1_3 = L1_3(L2_3)
      L2_3 = CreateThread
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4
        L0_4 = 1
        L1_4 = L37_1
        L1_4 = #L1_4
        L2_4 = 1
        for L3_4 = L0_4, L1_4, L2_4 do
          L4_4 = L37_1
          L4_4 = L4_4[L3_4]
          L4_4 = L4_4.npc
          L5_4 = DetachEntity
          L6_4 = L4_4
          L5_4(L6_4)
          L5_4 = Wait
          L6_4 = 25
          L5_4(L6_4)
          L5_4 = SetPedToRagdoll
          L6_4 = L4_4
          L7_4 = 9000
          L8_4 = 9000
          L9_4 = 0
          L10_4 = 1
          L11_4 = 1
          L12_4 = 1
          L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
          L5_4 = Wait
          L6_4 = 25
          L5_4(L6_4)
          L5_4 = L78_1
          L6_4 = L4_4
          L5_4(L6_4)
          while true do
            L5_4 = IsPedRagdoll
            L6_4 = L4_4
            L5_4 = L5_4(L6_4)
            if L5_4 then
              break
            end
            L5_4 = Wait
            L6_4 = 0
            L5_4(L6_4)
          end
          L5_4 = ApplyForceToEntity
          L6_4 = L4_4
          L7_4 = 1
          L8_4 = 0.0
          L9_4 = 0.0
          L10_4 = 1.5
          L11_4 = 0.0
          L12_4 = 0.0
          L13_4 = 0.0
          L14_4 = 0
          L15_4 = false
          L16_4 = true
          L17_4 = true
          L18_4 = false
          L19_4 = true
          L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4)
          L5_4 = Wait
          L6_4 = 25
          L5_4(L6_4)
          L5_4 = ApplyForceToEntity
          L6_4 = L4_4
          L7_4 = 1
          L8_4 = L1_3.x
          L8_4 = L8_4 * 15.0
          L8_4 = L8_4 * -1
          L9_4 = L1_3.y
          L9_4 = L9_4 * 15.0
          L9_4 = L9_4 * -1
          L10_4 = 1.5
          L11_4 = 0.0
          L12_4 = 0.0
          L13_4 = 0.0
          L14_4 = 0
          L15_4 = false
          L16_4 = true
          L17_4 = true
          L18_4 = false
          L19_4 = true
          L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4)
        end
      end
      L2_3(L3_3)
      L2_3 = CreateThread
      function L3_3()
        local L0_4, L1_4
        while true do
          L0_4 = IsPedRagdoll
          L1_4 = L6_2
          L0_4 = L0_4(L1_4)
          if not L0_4 then
            break
          end
          L0_4 = Wait
          L1_4 = 0
          L0_4(L1_4)
          L0_4 = DoesEntityExist
          L1_4 = barcaTut
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L0_4 = DisableCamCollisionForEntity
            L1_4 = barcaTut
            L0_4(L1_4)
          end
          L0_4 = DoesEntityExist
          L1_4 = mostro
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L0_4 = DisableCamCollisionForEntity
            L1_4 = mostro
            L0_4(L1_4)
          end
        end
      end
      L2_3(L3_3)
      L2_3 = ApplyForceToEntity
      L3_3 = L6_2
      L4_3 = 1
      L5_3 = 0.0
      L6_3 = 0.0
      L7_3 = 1.5
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = 0.0
      L11_3 = 0
      L12_3 = false
      L13_3 = true
      L14_3 = true
      L15_3 = false
      L16_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L2_3 = Wait
      L3_3 = 25
      L2_3(L3_3)
      L2_3 = ApplyForceToEntity
      L3_3 = L6_2
      L4_3 = 1
      L5_3 = L1_3.x
      L5_3 = L5_3 * 15.0
      L5_3 = L5_3 * -1
      L6_3 = L1_3.y
      L6_3 = L6_3 * 15.0
      L6_3 = L6_3 * -1
      L7_3 = 1.5
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = 0.0
      L11_3 = 0
      L12_3 = false
      L13_3 = true
      L14_3 = true
      L15_3 = false
      L16_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
    L0_3 = Wait
    L1_3 = 1100
    L0_3(L1_3)
    L0_3 = PlayEffectTutorial
    L1_3 = "core"
    L2_3 = "trail_splash_petrol"
    L3_3 = vector3
    L4_3 = L3_2.x
    L5_3 = L3_2.y
    L6_3 = L3_2.z
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = 15.5
    L5_3 = vector3
    L6_3 = 0.0
    L7_3 = 0.0
    L8_3 = 0.0
    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L5_3(L6_3, L7_3, L8_3)
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 5500
      L0_4(L1_4)
      L0_4 = StopParticleFxLooped
      L1_4 = L0_3
      L2_4 = 0
      L0_4(L1_4, L2_4)
      L0_4 = RemoveParticleFx
      L1_4 = L0_3
      L2_4 = true
      L0_4(L1_4, L2_4)
    end
    L1_3(L2_3)
    L1_3 = PlayEffectTutorial
    L2_3 = "des_pro_tree_crash"
    L3_3 = "ent_ray_pro_tree_crash_snow"
    L4_3 = vector3
    L5_3 = L3_2.x
    L6_3 = L3_2.y
    L7_3 = L3_2.z
    L7_3 = L7_3 - 3.0
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = 5.5
    L6_3 = vector3
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = 0.0
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3(L7_3, L8_3, L9_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L2_3 = CreateThread
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = Wait
      L1_4 = 5500
      L0_4(L1_4)
      L0_4 = StopParticleFxLooped
      L1_4 = L1_3
      L2_4 = 0
      L0_4(L1_4, L2_4)
      L0_4 = RemoveParticleFx
      L1_4 = L1_3
      L2_4 = true
      L0_4(L1_4, L2_4)
    end
    L2_3(L3_3)
  end
  L18_2(L19_2)
  L18_2 = ShakeGameplayCam
  L19_2 = "SMALL_EXPLOSION_SHAKE"
  L20_2 = 1.1
  L18_2(L19_2, L20_2)
  L18_2 = Wait
  L19_2 = 350
  L18_2(L19_2)
  L18_2 = GetEntityForwardVector
  L19_2 = mostro
  L18_2 = L18_2(L19_2)
  L19_2 = vector3
  L20_2 = L3_2.x
  L21_2 = L18_2.x
  L21_2 = L21_2 * 15.0
  L21_2 = L21_2 * -1
  L20_2 = L20_2 + L21_2
  L21_2 = L3_2.y
  L22_2 = L18_2.y
  L22_2 = L22_2 * 15.0
  L22_2 = L22_2 * -1
  L21_2 = L21_2 + L22_2
  L22_2 = L3_2.z
  L22_2 = L22_2 + 7.5
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L20_2 = PlayEffectTutorial
  L21_2 = "core"
  L22_2 = "exp_extinguisher"
  L23_2 = vector3
  L24_2 = L19_2.x
  L25_2 = L19_2.y
  L26_2 = L19_2.z
  L23_2 = L23_2(L24_2, L25_2, L26_2)
  L24_2 = 2.5
  L25_2 = vector3
  L26_2 = 0.0
  L27_2 = 0.0
  L28_2 = 0.0
  L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L25_2(L26_2, L27_2, L28_2)
  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L21_2 = CreateThread
  function L22_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 2500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L20_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L20_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L21_2(L22_2)
  L21_2 = PlayEffectTutorial
  L22_2 = "core"
  L23_2 = "exp_extinguisher"
  L24_2 = vector3
  L25_2 = L19_2.x
  L26_2 = L19_2.y
  L27_2 = L19_2.z
  L24_2 = L24_2(L25_2, L26_2, L27_2)
  L25_2 = 4.5
  L26_2 = vector3
  L27_2 = 0.0
  L28_2 = 0.0
  L29_2 = 0.0
  L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L26_2(L27_2, L28_2, L29_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L22_2 = CreateThread
  function L23_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 2500
    L0_3(L1_3)
    L0_3 = StopParticleFxLooped
    L1_3 = L21_2
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = RemoveParticleFx
    L1_3 = L21_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L22_2(L23_2)
  L22_2 = Wait
  L23_2 = 350
  L22_2(L23_2)
  L22_2 = StopGameplayCamShaking
  L23_2 = true
  L22_2(L23_2)
  L22_2 = Wait
  L23_2 = 950
  L22_2(L23_2)
  L22_2 = tutorialFatto
  if not L22_2 then
    L22_2 = DoScreenFadeOut
    L23_2 = 2250
    L22_2(L23_2)
  end
  L22_2 = Wait
  L23_2 = 2000
  L22_2(L23_2)
  L22_2 = SetEntityAnimSpeed
  L23_2 = mostro
  L24_2 = L14_2
  L25_2 = L13_2
  L26_2 = 0.9
  L22_2(L23_2, L24_2, L25_2, L26_2)
  L22_2 = exports
  L22_2 = L22_2.striano_core
  L23_2 = L22_2
  L22_2 = L22_2.TransitionEntity
  L24_2 = L11_2
  L25_2 = mostro
  L26_2 = L4_2
  L27_2 = vector3
  L28_2 = L3_2.x
  L29_2 = L3_2.y
  L30_2 = L3_2.z
  L30_2 = L30_2 - 15.0
  L27_2 = L27_2(L28_2, L29_2, L30_2)
  L28_2 = 1.5
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L22_2 = SetEntityAsMissionEntity
  L23_2 = mostro
  L22_2(L23_2)
  L22_2 = DeleteEntity
  L23_2 = mostro
  L22_2(L23_2)
  mostro = nil
  L22_2 = exports
  L22_2 = L22_2.striano_boat
  L23_2 = L22_2
  L22_2 = L22_2.canBoating
  L24_2 = true
  L22_2(L23_2, L24_2)
  L22_2 = cam
  if nil ~= L22_2 then
    L22_2 = RenderScriptCams
    L23_2 = false
    L24_2 = false
    L25_2 = 0
    L26_2 = true
    L27_2 = false
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
    L22_2 = DestroyCam
    L23_2 = cam
    L24_2 = false
    L22_2(L23_2, L24_2)
  end
  L22_2 = Wait
  L23_2 = 4000
  L22_2(L23_2)
  L22_2 = exports
  L22_2 = L22_2.striano_boat
  L23_2 = L22_2
  L22_2 = L22_2.delBoat
  L22_2(L23_2)
  L22_2 = 1
  L23_2 = 20
  L24_2 = 1
  for L25_2 = L22_2, L23_2, L24_2 do
    L26_2 = ExecuteCommand
    L27_2 = "addsangue"
    L26_2(L27_2)
    L26_2 = Wait
    L27_2 = 25
    L26_2(L27_2)
  end
  L22_2 = 1
  L23_2 = 20
  L24_2 = 1
  for L25_2 = L22_2, L23_2, L24_2 do
    L26_2 = ExecuteCommand
    L27_2 = "addferita"
    L26_2(L27_2)
    L26_2 = Wait
    L27_2 = 25
    L26_2(L27_2)
  end
  L22_2 = SetEntityAsMissionEntity
  L23_2 = barcaTut
  L22_2(L23_2)
  L22_2 = DeleteEntity
  L23_2 = barcaTut
  L22_2(L23_2)
  L22_2 = tutorialFatto
  if L22_2 then
    return
  end
  L22_2 = tutorialFatto
  if L22_2 then
    L22_2 = DoScreenFadeIn
    L23_2 = 5850
    L22_2(L23_2)
    return
  end
  while true do
    L22_2 = hasLowFps
    if not L22_2 then
      break
    end
    L22_2 = tutorialFatto
    if L22_2 then
      break
    end
    L22_2 = Wait
    L23_2 = 0
    L22_2(L23_2)
  end
  L22_2 = CreateThread
  function L23_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = tutorialFatto
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 5000
      L0_3(L1_3)
      L0_3 = GetClockHours
      L0_3 = L0_3()
      if 0 == L0_3 then
        L0_3 = GetClockMinutes
        L0_3 = L0_3()
        if 0 == L0_3 then
          goto lbl_20
        end
      end
      L0_3 = NetworkOverrideClockTime
      L1_3 = 0
      L2_3 = 0
      L3_3 = 0
      L0_3(L1_3, L2_3, L3_3)
      ::lbl_20::
    end
  end
  L22_2(L23_2)
  L22_2 = settamiMeteo
  L23_2 = "SNOWLIGHT"
  L22_2(L23_2)
  L22_2 = NetworkOverrideClockTime
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L22_2(L23_2, L24_2, L25_2)
  L22_2 = SetTimecycleModifierStrength
  L23_2 = 1.0
  L22_2(L23_2)
  L22_2 = SetTimecycleModifier
  L23_2 = "WATER_silty"
  L22_2(L23_2)
  L22_2 = ExecuteCommand
  L23_2 = "hudoff2"
  L22_2(L23_2)
  L22_2 = exports
  L22_2 = L22_2.striano_core
  L23_2 = L22_2
  L22_2 = L22_2.setwatermark
  L24_2 = false
  L22_2(L23_2, L24_2)
  L22_2 = settamiMeteo
  L23_2 = "SNOWLIGHT"
  L22_2(L23_2)
  L22_2 = exports
  L22_2 = L22_2.striano_boat
  L23_2 = L22_2
  L22_2 = L22_2.calmWater
  L24_2 = true
  L22_2(L23_2, L24_2)
  L22_2 = SetEntityCoords
  L23_2 = L6_2
  L24_2 = 3840.557
  L25_2 = 6416.946
  L26_2 = -1.168
  L22_2(L23_2, L24_2, L25_2, L26_2)
  L22_2 = SetPedToRagdoll
  L23_2 = L6_2
  L24_2 = 6000
  L25_2 = 6000
  L26_2 = 0
  L27_2 = 1
  L28_2 = 1
  L29_2 = 1
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L22_2 = SetEntityHeading
  L23_2 = L6_2
  L24_2 = 20.0
  L22_2(L23_2, L24_2)
  L22_2 = DoScreenFadeIn
  L23_2 = 5850
  L22_2(L23_2)
  L22_2 = Wait
  L23_2 = 5500
  L22_2(L23_2)
  L22_2 = SetPedMotionBlur
  L23_2 = L6_2
  L24_2 = true
  L22_2(L23_2, L24_2)
  while true do
    L22_2 = tutorialFatto
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 45
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsDisabledControlPressed
    L23_2 = 0
    L24_2 = 45
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 73
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 38
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 33
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 32
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 34
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = IsControlPressed
    L23_2 = 0
    L24_2 = 35
    L22_2 = L22_2(L23_2, L24_2)
    if L22_2 then
      break
    end
    L22_2 = Wait
    L23_2 = 0
    L22_2(L23_2)
    L22_2 = SetPedToRagdoll
    L23_2 = L6_2
    L24_2 = 1000
    L25_2 = 1000
    L26_2 = 0
    L27_2 = 1
    L28_2 = 1
    L29_2 = 1
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  end
  L22_2 = ExecuteCommand
  L23_2 = "stopragdoll"
  L22_2(L23_2)
  L22_2 = SetPedToRagdoll
  L23_2 = L6_2
  L24_2 = 1000
  L25_2 = 1000
  L26_2 = 0
  L27_2 = 1
  L28_2 = 1
  L29_2 = 1
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L22_2 = Wait
  L23_2 = 500
  L22_2(L23_2)
  L22_2 = ApplyForceToEntityCenterOfMass
  L23_2 = L6_2
  L24_2 = 1
  L25_2 = 0.0
  L26_2 = 0.0
  L27_2 = 1.0
  L28_2 = true
  L29_2 = true
  L30_2 = true
  L31_2 = true
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L22_2 = Wait
  L23_2 = 1500
  L22_2(L23_2)
  while true do
    L22_2 = IsPedRagdoll
    L23_2 = L6_2
    L22_2 = L22_2(L23_2)
    if not L22_2 then
      L22_2 = IsPedSwimmingUnderWater
      L23_2 = L6_2
      L22_2 = L22_2(L23_2)
      if not L22_2 then
        L22_2 = IsPedGettingUp
        L23_2 = L6_2
        L22_2 = L22_2(L23_2)
        if not L22_2 then
          break
        end
      end
    end
    L22_2 = Wait
    L23_2 = 0
    L22_2(L23_2)
  end
  L22_2 = tutorialFatto
  if L22_2 then
    return
  end
  L22_2 = 0
  L79_1 = L22_2
  L22_2 = "sounds/respirosurv.mp3"
  L23_2 = exports
  L23_2 = L23_2.xsound
  L24_2 = L23_2
  L23_2 = L23_2.PlayUrl
  L25_2 = "respirosurv"
  L26_2 = L22_2
  L27_2 = exports
  L27_2 = L27_2.striano_combat
  L28_2 = L27_2
  L27_2 = L27_2.GetSFXVolume
  L29_2 = 0.5
  L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L27_2(L28_2, L29_2)
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L23_2 = SetPedMotionBlur
  L24_2 = L6_2
  L25_2 = false
  L23_2(L24_2, L25_2)
  L23_2 = Wait
  L24_2 = 25
  L23_2(L24_2)
  L23_2 = ExecuteCommand
  L24_2 = "e breath3"
  L23_2(L24_2)
  L23_2 = Wait
  L24_2 = 2000
  L23_2(L24_2)
  L23_2 = exports
  L23_2 = L23_2.striano_combat
  L24_2 = L23_2
  L23_2 = L23_2.showZone
  L25_2 = " "
  L26_2 = "3 hours later."
  L23_2(L24_2, L25_2, L26_2)
  L23_2 = exports
  L23_2 = L23_2.striano_boat
  L24_2 = L23_2
  L23_2 = L23_2.tutboat
  L25_2 = true
  L23_2(L24_2, L25_2)
  L23_2 = exports
  L23_2 = L23_2.striano_boat
  L24_2 = L23_2
  L23_2 = L23_2.canDropFromBoat
  L25_2 = true
  L23_2(L24_2, L25_2)
  IniziatoTut = true
  L23_2 = Wait
  L24_2 = 5500
  L23_2(L24_2)
  L23_2 = GetGamePool
  L24_2 = "CObject"
  L23_2 = L23_2(L24_2)
  L24_2 = ipairs
  L25_2 = L23_2
  L24_2, L25_2, L26_2, L27_2 = L24_2(L25_2)
  for L28_2, L29_2 in L24_2, L25_2, L26_2, L27_2 do
    L30_2 = GetEntityModel
    L31_2 = L29_2
    L30_2 = L30_2(L31_2)
    L31_2 = GetHashKey
    L32_2 = "prop_byard_rowboat4"
    L31_2 = L31_2(L32_2)
    if L30_2 == L31_2 then
      L30_2 = GetEntityCoords
      L31_2 = L29_2
      L30_2 = L30_2(L31_2)
      L31_2 = vector3
      L32_2 = 3828.359375
      L33_2 = 6532.3393554688
      L34_2 = -0.22823062539101
      L31_2 = L31_2(L32_2, L33_2, L34_2)
      L30_2 = L30_2 - L31_2
      L30_2 = #L30_2
      if L30_2 < 5.0 then
        L31_2 = SetEntityAsMissionEntity
        L32_2 = L29_2
        L31_2(L32_2)
        L31_2 = DeleteEntity
        L32_2 = L29_2
        L31_2(L32_2)
      end
    end
    L30_2 = GetEntityModel
    L31_2 = L29_2
    L30_2 = L30_2(L31_2)
    L31_2 = GetHashKey
    L32_2 = "prop_tree_log_01"
    L31_2 = L31_2(L32_2)
    if L30_2 == L31_2 then
      L30_2 = GetEntityCoords
      L31_2 = L29_2
      L30_2 = L30_2(L31_2)
      L31_2 = vector3
      L32_2 = 3828.359375
      L33_2 = 6532.3393554688
      L34_2 = -0.22823062539101
      L31_2 = L31_2(L32_2, L33_2, L34_2)
      L30_2 = L30_2 - L31_2
      L30_2 = #L30_2
      if L30_2 < 5.0 then
        L31_2 = SetEntityAsMissionEntity
        L32_2 = L29_2
        L31_2(L32_2)
        L31_2 = DeleteEntity
        L32_2 = L29_2
        L31_2(L32_2)
      end
    end
  end
  L24_2 = ""
  L25_2 = exports
  L26_2 = "striano_fastmenu"
  L25_2 = L25_2[L26_2]
  L27_2 = "clearMenu"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L25_2(L26_2)
  L25_2 = exports
  L26_2 = "striano_fastmenu"
  L25_2 = L25_2[L26_2]
  L27_2 = "addMenuItem"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L27_2 = "[ WOULD YOU CONTINUE TUTORIAL? ]"
  function L28_2()
    local L0_3, L1_3
  end
  L29_2 = false
  L25_2(L26_2, L27_2, L28_2, L29_2)
  L25_2 = exports
  L26_2 = "striano_fastmenu"
  L25_2 = L25_2[L26_2]
  L27_2 = "addMenuItem"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L27_2 = "\226\128\162 Yes, i want continue."
  function L28_2()
    local L0_3, L1_3
    L0_3 = "continua"
    L24_2 = L0_3
  end
  L29_2 = true
  L25_2(L26_2, L27_2, L28_2, L29_2)
  L25_2 = exports
  L26_2 = "striano_fastmenu"
  L25_2 = L25_2[L26_2]
  L27_2 = "addMenuItem"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L27_2 = "\226\128\162 No, spawn me."
  function L28_2()
    local L0_3, L1_3
    L0_3 = "FermaTutorial"
    L24_2 = L0_3
  end
  L29_2 = true
  L25_2(L26_2, L27_2, L28_2, L29_2)
  L25_2 = exports
  L26_2 = "striano_fastmenu"
  L25_2 = L25_2[L26_2]
  L27_2 = "openMenu"
  L26_2 = L25_2
  L25_2 = L25_2[L27_2]
  L25_2(L26_2)
  L25_2 = Wait
  L26_2 = 25
  L25_2(L26_2)
  while true do
    L25_2 = exports
    L26_2 = "striano_fastmenu"
    L25_2 = L25_2[L26_2]
    L27_2 = "opened"
    L26_2 = L25_2
    L25_2 = L25_2[L27_2]
    L25_2 = L25_2(L26_2)
    if not L25_2 then
      break
    end
    L25_2 = Wait
    L26_2 = 0
    L25_2(L26_2)
  end
  L25_2 = "FermaTutorial"
  if L24_2 == L25_2 then
    L25_2 = DoScreenFadeOut
    L26_2 = 500
    L25_2(L26_2)
    L25_2 = Wait
    L26_2 = 1000
    L25_2(L26_2)
    L25_2 = _ENV
    L26_2 = "doingTutorial"
    L25_2[L26_2] = false
    tutorialFatto = true
    L25_2 = Wait
    L26_2 = 250
    L25_2(L26_2)
    L25_2 = PlayerPedId
    L25_2 = L25_2()
    L26_2 = _ENV
    L27_2 = "stopMusic"
    L26_2 = L26_2[L27_2]
    L27_2 = "aposong"
    L26_2(L27_2)
    L26_2 = exports
    L26_2 = L26_2.striano_inventory
    L27_2 = L26_2
    L26_2 = L26_2.delblipInteresse
    L26_2(L27_2)
    L26_2 = ExecuteCommand
    L27_2 = "clearwaypoints"
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "DetachEntity"
    L26_2 = L26_2[L27_2]
    L27_2 = L25_2
    L26_2(L27_2)
    L26_2 = exports
    L26_2 = L26_2.striano_boat
    L27_2 = L26_2
    L26_2 = L26_2.delBoat
    L26_2(L27_2)
    L26_2 = barcaTut
    if nil ~= L26_2 then
      L26_2 = _ENV
      L27_2 = "DoesEntityExist"
      L26_2 = L26_2[L27_2]
      L27_2 = barcaTut
      L26_2 = L26_2(L27_2)
      if L26_2 then
        L26_2 = SetEntityAsMissionEntity
        L27_2 = barcaTut
        L26_2(L27_2)
        L26_2 = DeleteEntity
        L27_2 = barcaTut
        L26_2(L27_2)
      end
    end
    barcaTut = nil
    L26_2 = exports
    L26_2 = L26_2.striano_boat
    L27_2 = L26_2
    L26_2 = L26_2.calmWater
    L28_2 = true
    L26_2(L27_2, L28_2)
    L26_2 = ExecuteCommand
    L27_2 = "hudoff2"
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "MissioneSurv"
    L28_2 = -51
    L26_2[L27_2] = L28_2
    L26_2 = TriggerServerEvent
    L27_2 = "esx_Pharmacy:setVarDB"
    L28_2 = "mytutorial"
    L29_2 = _ENV
    L30_2 = "MissioneSurv"
    L29_2 = L29_2[L30_2]
    L26_2(L27_2, L28_2, L29_2)
    L26_2 = DisplayRadar
    L27_2 = false
    L26_2(L27_2)
    L26_2 = TriggerEvent
    L27_2 = "combat:ApplySword"
    L28_2 = 15
    L26_2(L27_2, L28_2)
    L26_2 = exports
    L26_2 = L26_2.striano_combat
    L28_2 = "delAllDummy"
    L27_2 = L26_2
    L26_2 = L26_2[L28_2]
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "SetEntityInvincible"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = _ENV
    L27_2 = "FreezeEntityPosition"
    L26_2 = L26_2[L27_2]
    L27_2 = L25_2
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = exports
    L26_2 = L26_2.striano_core
    L27_2 = L26_2
    L26_2 = L26_2.setwatermark
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = SetEntityCoords
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = -1003.186
    L29_2 = -6934.379
    L30_2 = 6.499
    L26_2(L27_2, L28_2, L29_2, L30_2)
    L26_2 = _ENV
    L27_2 = "FreezaCam"
    L26_2 = L26_2[L27_2]
    L27_2 = true
    L28_2 = 500
    L26_2(L27_2, L28_2)
    L26_2 = Wait
    L27_2 = 0
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "RequestCollisionAtCoord"
    L26_2 = L26_2[L27_2]
    L27_2 = GetEntityCoords
    L28_2 = PlayerPedId
    L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L28_2()
    L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2 = Wait
    L27_2 = 0
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "SetEntityCollision"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = true
    L29_2 = true
    L26_2(L27_2, L28_2, L29_2)
    L26_2 = _ENV
    L27_2 = "FreezeEntityPosition"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = _ENV
    L27_2 = "SetEntityInvincible"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = _ENV
    L27_2 = "ResetEntityAlpha"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L27_2()
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2 = _ENV
    L27_2 = "sonoUnUccello"
    L26_2[L27_2] = false
    L26_2 = ExecuteCommand
    L27_2 = "hudoff2"
    L26_2(L27_2)
    L26_2 = TriggerServerEvent
    L27_2 = "vSync:getSync"
    L28_2 = GetPlayerServerId
    L29_2 = PlayerId
    L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L29_2()
    L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2 = TriggerServerEvent
    L27_2 = "getBlackout"
    L28_2 = GetPlayerServerId
    L29_2 = PlayerId
    L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L29_2()
    L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
    L26_2 = exports
    L26_2 = L26_2.striano_core
    L28_2 = "atmosfera"
    L27_2 = L26_2
    L26_2 = L26_2[L28_2]
    L26_2(L27_2)
    L26_2 = _ENV
    L27_2 = "FreezeEntityPosition"
    L26_2 = L26_2[L27_2]
    L27_2 = PlayerPedId
    L27_2 = L27_2()
    L28_2 = false
    L26_2(L27_2, L28_2)
    L26_2 = settamiMeteo
    L27_2 = "SNOWLIGHT"
    L26_2(L27_2)
    L26_2 = exports
    L26_2 = L26_2.striano_core
    L28_2 = "atmosfera"
    L27_2 = L26_2
    L26_2 = L26_2[L28_2]
    L26_2(L27_2)
    L26_2 = ExecuteCommand
    L27_2 = "ob"
    L26_2(L27_2)
    return
  end
  L25_2 = RequestModelStriano
  L26_2 = "prop_byard_rowboat4"
  L25_2(L26_2)
  L25_2 = CreateObject
  L26_2 = GetHashKey
  L27_2 = "prop_byard_rowboat4"
  L26_2 = L26_2(L27_2)
  L27_2 = 3828.359375
  L28_2 = 6532.3393554688
  L29_2 = -0.22823062539101
  L30_2 = false
  L31_2 = false
  L32_2 = false
  L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  barcaTut = L25_2
  while true do
    L25_2 = _ENV
    L26_2 = "DoesEntityExist"
    L25_2 = L25_2[L26_2]
    L26_2 = barcaTut
    L25_2 = L25_2(L26_2)
    if L25_2 then
      break
    end
    L25_2 = Wait
    L26_2 = 0
    L25_2(L26_2)
  end
  L25_2 = _ENV
  L26_2 = "SetEntityInvincible"
  L25_2 = L25_2[L26_2]
  L26_2 = barcaTut
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = _ENV
  L26_2 = "SetEntityCanBeDamaged"
  L25_2 = L25_2[L26_2]
  L26_2 = barcaTut
  L27_2 = false
  L25_2(L26_2, L27_2)
  L25_2 = _ENV
  L26_2 = "SetEntityRotation"
  L25_2 = L25_2[L26_2]
  L26_2 = barcaTut
  L27_2 = 0.0
  L28_2 = 0.0
  L28_2 = -L28_2
  L29_2 = 115.49999237061
  L25_2(L26_2, L27_2, L28_2, L29_2)
  L25_2 = _ENV
  L26_2 = "FreezeEntityPosition"
  L25_2 = L25_2[L26_2]
  L26_2 = barcaTut
  L27_2 = true
  L25_2(L26_2, L27_2)
  L25_2 = _ENV
  L26_2 = "troncoTut"
  L25_2 = L25_2[L26_2]
  if nil == L25_2 then
    L25_2 = RequestModelStriano
    L26_2 = "prop_tree_log_01"
    L25_2(L26_2)
    L25_2 = _ENV
    L26_2 = "troncoTut"
    L27_2 = CreateObject
    L28_2 = GetHashKey
    L29_2 = "prop_tree_log_01"
    L28_2 = L28_2(L29_2)
    L29_2 = 3827.294921875
    L30_2 = 6531.1279296875
    L31_2 = 0.12235412746668
    L32_2 = false
    L33_2 = false
    L34_2 = false
    L27_2 = L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    L25_2[L26_2] = L27_2
    while true do
      L25_2 = _ENV
      L26_2 = "DoesEntityExist"
      L25_2 = L25_2[L26_2]
      L26_2 = _ENV
      L27_2 = "troncoTut"
      L26_2 = L26_2[L27_2]
      L25_2 = L25_2(L26_2)
      if L25_2 then
        break
      end
      L25_2 = Wait
      L26_2 = 0
      L25_2(L26_2)
    end
    L25_2 = _ENV
    L26_2 = "SetEntityInvincible"
    L25_2 = L25_2[L26_2]
    L26_2 = _ENV
    L27_2 = "troncoTut"
    L26_2 = L26_2[L27_2]
    L27_2 = true
    L25_2(L26_2, L27_2)
    L25_2 = _ENV
    L26_2 = "SetEntityCanBeDamaged"
    L25_2 = L25_2[L26_2]
    L26_2 = _ENV
    L27_2 = "troncoTut"
    L26_2 = L26_2[L27_2]
    L27_2 = false
    L25_2(L26_2, L27_2)
    L25_2 = _ENV
    L26_2 = "SetEntityRotation"
    L25_2 = L25_2[L26_2]
    L26_2 = _ENV
    L27_2 = "troncoTut"
    L26_2 = L26_2[L27_2]
    L27_2 = 177.49949645996
    L28_2 = 76.251205444336
    L29_2 = 96.498680114746
    L25_2(L26_2, L27_2, L28_2, L29_2)
    L25_2 = _ENV
    L26_2 = "FreezeEntityPosition"
    L25_2 = L25_2[L26_2]
    L26_2 = _ENV
    L27_2 = "troncoTut"
    L26_2 = L26_2[L27_2]
    L27_2 = true
    L25_2(L26_2, L27_2)
  end
  L25_2 = false
  L26_2 = vector3
  L27_2 = 3829.75
  L28_2 = 6530.431
  L29_2 = 1.247
  L26_2 = L26_2(L27_2, L28_2, L29_2)
  L27_2 = exports
  L27_2 = L27_2.striano_inventory
  L28_2 = L27_2
  L27_2 = L27_2.delblipInteresse
  L27_2(L28_2)
  L27_2 = Wait
  L28_2 = 25
  L27_2(L28_2)
  L27_2 = Wait
  L28_2 = 1500
  L27_2(L28_2)
  L27_2 = exports
  L27_2 = L27_2.striano_combat
  L28_2 = L27_2
  L27_2 = L27_2.showZone
  L29_2 = " "
  L30_2 = "Follow the white light."
  L27_2(L28_2, L29_2, L30_2)
  L27_2 = Wait
  L28_2 = 2000
  L27_2(L28_2)
  L27_2 = tutorialFatto
  if L27_2 then
    return
  end
  while true do
    L27_2 = GetEntityCoords
    L28_2 = L6_2
    L27_2 = L27_2(L28_2)
    L27_2 = L27_2 - L26_2
    L27_2 = #L27_2
    L28_2 = 3.5
    if not (L27_2 > L28_2) then
      break
    end
    L27_2 = tutorialFatto
    if L27_2 then
      break
    end
    L27_2 = Wait
    L28_2 = 0
    L27_2(L28_2)
    L27_2 = DrawMarker
    L28_2 = 1
    L29_2 = vector3
    L30_2 = L26_2.x
    L31_2 = L26_2.y
    L32_2 = L26_2.z
    L32_2 = L32_2 - 1.5
    L29_2 = L29_2(L30_2, L31_2, L32_2)
    L30_2 = 0.0
    L31_2 = 0.0
    L32_2 = 0.0
    L33_2 = 0.0
    L34_2 = 0.0
    L35_2 = 0.0
    L36_2 = 1.1
    L37_2 = 1.1
    L38_2 = 100.0
    L39_2 = 255
    L40_2 = 255
    L41_2 = 255
    L42_2 = 150
    L43_2 = false
    L44_2 = true
    L45_2 = 2
    L46_2 = nil
    L47_2 = nil
    L48_2 = false
    L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
  end
  L27_2 = tutorialFatto
  if L27_2 then
    return
  end
  L27_2 = ExecuteCommand
  L28_2 = "e shrug4"
  L27_2(L28_2)
  L27_2 = "sounds/striano_combat/magic/soulsteal.mp3"
  L28_2 = exports
  L28_2 = L28_2.xsound
  L29_2 = L28_2
  L28_2 = L28_2.PlayUrl
  L30_2 = "sounds/striano_combat/magic/soulsteal"
  L31_2 = L27_2
  L32_2 = exports
  L32_2 = L32_2.striano_combat
  L33_2 = L32_2
  L32_2 = L32_2.GetSFXVolume
  L34_2 = 0.1
  L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L32_2(L33_2, L34_2)
  L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L28_2 = exports
  L28_2 = L28_2.striano_inventory
  L29_2 = L28_2
  L28_2 = L28_2.delblipInteresse
  L28_2(L29_2)
  L28_2 = exports
  L28_2 = L28_2.striano_combat
  L29_2 = L28_2
  L28_2 = L28_2.showZone
  L30_2 = " "
  L31_2 = "Follow the white light."
  L28_2(L29_2, L30_2, L31_2)
  L28_2 = ExecuteCommand
  L29_2 = "hudoff2"
  L28_2(L29_2)
  L28_2 = Wait
  L29_2 = 25
  L28_2(L29_2)
  L28_2 = vector3
  L29_2 = 3825.189
  L30_2 = 6646.461
  L31_2 = 2.804
  L28_2 = L28_2(L29_2, L30_2, L31_2)
  while true do
    L29_2 = GetEntityCoords
    L30_2 = L6_2
    L29_2 = L29_2(L30_2)
    L29_2 = L29_2 - L28_2
    L29_2 = #L29_2
    L30_2 = 1.5
    if not (L29_2 > L30_2) then
      break
    end
    L29_2 = tutorialFatto
    if L29_2 then
      break
    end
    L29_2 = Wait
    L30_2 = 0
    L29_2(L30_2)
    L29_2 = DrawMarker
    L30_2 = 1
    L31_2 = vector3
    L32_2 = L28_2.x
    L33_2 = L28_2.y
    L34_2 = L28_2.z
    L34_2 = L34_2 - 1.5
    L31_2 = L31_2(L32_2, L33_2, L34_2)
    L32_2 = 0.0
    L33_2 = 0.0
    L34_2 = 0.0
    L35_2 = 0.0
    L36_2 = 0.0
    L37_2 = 0.0
    L38_2 = 1.1
    L39_2 = 1.1
    L40_2 = 100.0
    L41_2 = 255
    L42_2 = 255
    L43_2 = 255
    L44_2 = 150
    L45_2 = false
    L46_2 = true
    L47_2 = 2
    L48_2 = nil
    L49_2 = nil
    L50_2 = false
    L29_2(L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2)
    L29_2 = GetEntityCoords
    L30_2 = _ENV
    L31_2 = "troncoTut"
    L30_2 = L30_2[L31_2]
    L29_2 = L29_2(L30_2)
    L30_2 = GetEntityCoords
    L31_2 = L6_2
    L30_2 = L30_2(L31_2)
    L30_2 = L30_2 - L29_2
    L30_2 = #L30_2
    L31_2 = 10.5
    if L30_2 < L31_2 then
      L30_2 = L29_1
      L31_2 = L29_2.x
      L32_2 = L29_2.y
      L33_2 = L29_2.z
      L34_2 = "I need search something to unlock my boat."
      L30_2(L31_2, L32_2, L33_2, L34_2)
    end
  end
  L29_2 = tutorialFatto
  if L29_2 then
    return
  end
  L29_2 = "sounds/striano_combat/magic/soulsteal.mp3"
  L30_2 = exports
  L30_2 = L30_2.xsound
  L31_2 = L30_2
  L30_2 = L30_2.PlayUrl
  L32_2 = "sounds/striano_combat/magic/soulsteal"
  L33_2 = L29_2
  L34_2 = exports
  L34_2 = L34_2.striano_combat
  L35_2 = L34_2
  L34_2 = L34_2.GetSFXVolume
  L36_2 = 0.1
  L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L34_2(L35_2, L36_2)
  L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L30_2 = 100
  L77_1 = L30_2
  L30_2 = PlayEffectTutorial
  L31_2 = "scr_biolab_heist"
  L32_2 = "scr_heist_biolab_flare"
  L33_2 = vector3
  L34_2 = 3827.388
  L35_2 = 6648.888
  L36_2 = 1.86
  L33_2 = L33_2(L34_2, L35_2, L36_2)
  L34_2 = 5.5
  L35_2 = vector3
  L36_2 = 0.0
  L37_2 = 0.0
  L38_2 = 0.0
  L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L35_2(L36_2, L37_2, L38_2)
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L31_2 = _ENV
  L32_2 = "RagnettiMovement2"
  L31_2 = L31_2[L32_2]
  L31_2()
  L31_2 = vector3
  L32_2 = 3823.786
  L33_2 = 6630.255
  L34_2 = 0.887
  L31_2 = L31_2(L32_2, L33_2, L34_2)
  L32_2 = "a_f_o_indian_01"
  L33_2 = RequestModelStriano
  L34_2 = L32_2
  L33_2(L34_2)
  L33_2 = _ENV
  L34_2 = "PedTutorial"
  L35_2 = _ENV
  L36_2 = "CreatePed"
  L35_2 = L35_2[L36_2]
  L36_2 = 1
  L37_2 = L32_2
  L38_2 = L31_2
  L39_2 = 0.0
  L40_2 = false
  L41_2 = false
  L35_2 = L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2)
  L33_2[L34_2] = L35_2
  while true do
    L33_2 = _ENV
    L34_2 = "DoesEntityExist"
    L33_2 = L33_2[L34_2]
    L34_2 = _ENV
    L35_2 = "PedTutorial"
    L34_2 = L34_2[L35_2]
    L33_2 = L33_2(L34_2)
    if L33_2 then
      break
    end
    L33_2 = Wait
    L34_2 = 0
    L33_2(L34_2)
  end
  L33_2 = _ENV
  L34_2 = "SetEntityVisible"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = false
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "makeEntityFaceEntity"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = L6_2
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetPedFleeAttributes"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = 0
  L36_2 = 0
  L33_2(L34_2, L35_2, L36_2)
  L33_2 = _ENV
  L34_2 = "SetPedDropsWeaponsWhenDead"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = false
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetPedDiesWhenInjured"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = false
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetBlockingOfNonTemporaryEvents"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = true
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetPedCanRagdollFromPlayerImpact"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = false
  L33_2(L34_2, L35_2)
  L33_2 = SetEntityAsMissionEntity
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = true
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetPedCanBeTargetted"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = false
  L33_2(L34_2, L35_2)
  L33_2 = _ENV
  L34_2 = "SetEntityAlpha"
  L33_2 = L33_2[L34_2]
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = 254
  L33_2(L34_2, L35_2)
  L33_2 = Wait
  L34_2 = 25
  L33_2(L34_2)
  L33_2 = SetEntityCoords
  L34_2 = _ENV
  L35_2 = "PedTutorial"
  L34_2 = L34_2[L35_2]
  L35_2 = L31_2.x
  L36_2 = L31_2.y
  L37_2 = L31_2.z
  L33_2(L34_2, L35_2, L36_2, L37_2)
  L33_2 = 1
  L34_2 = 5
  L35_2 = 1
  for L36_2 = L33_2, L34_2, L35_2 do
    L37_2 = TriggerEvent
    L38_2 = "doblood"
    L39_2 = _ENV
    L40_2 = "PedTutorial"
    L39_2 = L39_2[L40_2]
    L37_2(L38_2, L39_2)
  end
  L33_2 = "zombie_set_walk"
  L34_2 = "zombie_set_walk_clip"
  L35_2 = _ENV
  L36_2 = "IsEntityPlayingAnim"
  L35_2 = L35_2[L36_2]
  L36_2 = _ENV
  L37_2 = "PedTutorial"
  L36_2 = L36_2[L37_2]
  L37_2 = L33_2
  L38_2 = L34_2
  L39_2 = 1
  L35_2 = L35_2(L36_2, L37_2, L38_2, L39_2)
  if not L35_2 then
    L35_2 = HasAnimDictLoaded
    L36_2 = L33_2
    L35_2 = L35_2(L36_2)
    if not L35_2 then
      L35_2 = RequestAnimDict
      L36_2 = L33_2
      L35_2(L36_2)
      while true do
        L35_2 = HasAnimDictLoaded
        L36_2 = L33_2
        L35_2 = L35_2(L36_2)
        if L35_2 then
          break
        end
        L35_2 = Wait
        L36_2 = 10
        L35_2(L36_2)
      end
    end
    L35_2 = _ENV
    L36_2 = "TaskPlayAnim"
    L35_2 = L35_2[L36_2]
    L36_2 = _ENV
    L37_2 = "PedTutorial"
    L36_2 = L36_2[L37_2]
    L37_2 = L33_2
    L38_2 = L34_2
    L39_2 = 3.0
    L40_2 = 1.0
    L41_2 = -1
    L42_2 = 0
    L43_2 = 0
    L44_2 = 0
    L45_2 = 0
    L46_2 = 0
    L35_2(L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2)
  end
  L35_2 = Wait
  L36_2 = 150
  L35_2(L36_2)
  L35_2 = _ENV
  L36_2 = "SetEntityVisible"
  L35_2 = L35_2[L36_2]
  L36_2 = _ENV
  L37_2 = "PedTutorial"
  L36_2 = L36_2[L37_2]
  L37_2 = true
  L35_2(L36_2, L37_2)
  L35_2 = RequestModelStriano
  L36_2 = "sword"
  L35_2(L36_2)
  L35_2 = CreateObject
  L36_2 = GetHashKey
  L37_2 = "sword"
  L36_2 = L36_2(L37_2)
  L37_2 = GetEntityCoords
  L38_2 = _ENV
  L39_2 = "PedTutorial"
  L38_2 = L38_2[L39_2]
  L37_2 = L37_2(L38_2)
  L38_2 = true
  L35_2 = L35_2(L36_2, L37_2, L38_2)
  while true do
    L36_2 = _ENV
    L37_2 = "DoesEntityExist"
    L36_2 = L36_2[L37_2]
    L37_2 = L35_2
    L36_2 = L36_2(L37_2)
    if L36_2 then
      break
    end
    L36_2 = Wait
    L37_2 = 0
    L36_2(L37_2)
  end
  L36_2 = _ENV
  L37_2 = "FreezeEntityPosition"
  L36_2 = L36_2[L37_2]
  L37_2 = L35_2
  L38_2 = true
  L36_2(L37_2, L38_2)
  L36_2 = _ENV
  L37_2 = "SetEntityInvincible"
  L36_2 = L36_2[L37_2]
  L37_2 = L35_2
  L38_2 = true
  L36_2(L37_2, L38_2)
  L36_2 = SetEntityNoCollisionEntity
  L37_2 = L35_2
  L38_2 = L6_2
  L36_2(L37_2, L38_2)
  L36_2 = SetEntityNoCollisionEntity
  L37_2 = L35_2
  L38_2 = _ENV
  L39_2 = "PedTutorial"
  L38_2 = L38_2[L39_2]
  L36_2(L37_2, L38_2)
  L36_2 = _ENV
  L37_2 = "AttachEntityToEntity"
  L36_2 = L36_2[L37_2]
  L37_2 = L35_2
  L38_2 = _ENV
  L39_2 = "PedTutorial"
  L38_2 = L38_2[L39_2]
  L39_2 = _ENV
  L40_2 = "GetPedBoneIndex"
  L39_2 = L39_2[L40_2]
  L40_2 = _ENV
  L41_2 = "PedTutorial"
  L40_2 = L40_2[L41_2]
  L41_2 = 57005
  L39_2 = L39_2(L40_2, L41_2)
  L40_2 = 0.08
  L41_2 = 0.01
  L42_2 = -0.05
  L43_2 = 46.5
  L44_2 = 36.5
  L45_2 = -30.0
  L46_2 = false
  L47_2 = false
  L48_2 = false
  L49_2 = false
  L50_2 = 0
  L51_2 = true
  L36_2(L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2)
  L36_2 = CreateThread
  function L37_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = PedTutorial
      if nil == L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = PedTutorial
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = tutorialFatto
      if L0_3 then
        break
      end
      L0_3 = IsPedFatallyInjured
      L1_3 = PedTutorial
      L0_3 = L0_3(L1_3)
      if L0_3 then
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
      L0_3 = GetEntityCoords
      L1_3 = PedTutorial
      L0_3 = L0_3(L1_3)
      L1_3 = GetEntityCoords
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      L1_3 = L0_3 - L1_3
      L1_3 = #L1_3
      if L1_3 < 75.0 then
        L1_3 = GetPedBoneIndex
        L2_3 = PedTutorial
        L3_3 = 31086
        L1_3 = L1_3(L2_3, L3_3)
        L2_3 = GetWorldPositionOfEntityBone
        L3_3 = PedTutorial
        L4_3 = L1_3
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = L29_1
        L4_3 = L2_3.x
        L5_3 = L2_3.y
        L6_3 = L2_3.z
        L7_3 = "Please help..."
        L8_3 = 0.35
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
        L3_3 = DrawLightWithRange
        L4_3 = L2_3.x
        L5_3 = L2_3.y
        L6_3 = L2_3.z
        L6_3 = L6_3 + 0.5
        L7_3 = 255
        L8_3 = 255
        L9_3 = 255
        L10_3 = 3.0
        L11_3 = 1.5
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L1_3 = GetEntityCoords
      L2_3 = L6_2
      L1_3 = L1_3(L2_3)
      L1_3 = L0_3 - L1_3
      L1_3 = #L1_3
      L2_3 = 1.5
      if L1_3 < L2_3 then
        L1_3 = makeEntityFaceEntity
        L2_3 = L6_2
        L3_3 = PedTutorial
        L1_3(L2_3, L3_3)
        L1_3 = ExecuteCommand
        L2_3 = "resisti"
        L1_3(L2_3)
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.gengrunt
        L1_3(L2_3)
        L1_3 = SetEntityAsMissionEntity
        L2_3 = PedTutorial
        L1_3(L2_3)
        L1_3 = SetPedToRagdoll
        L2_3 = PedTutorial
        L3_3 = 5000
        L4_3 = 5000
        L5_3 = 0
        L6_3 = 1
        L7_3 = 1
        L8_3 = 1
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = Wait
        L2_3 = 25
        L1_3(L2_3)
        L1_3 = GetEntityForwardVector
        L2_3 = PedTutorial
        L1_3 = L1_3(L2_3)
        L2_3 = ApplyForceToEntity
        L3_3 = PedTutorial
        L4_3 = 1
        L5_3 = L1_3.x
        L5_3 = L5_3 * 2.5
        L5_3 = L5_3 * -1
        L6_3 = L1_3.y
        L6_3 = L6_3 * 2.5
        L6_3 = L6_3 * -1
        L7_3 = 0.2
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L11_3 = 0
        L12_3 = false
        L13_3 = true
        L14_3 = true
        L15_3 = false
        L16_3 = true
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L2_3 = CreateThread
        function L3_3()
          local L0_4, L1_4, L2_4
          L0_4 = Wait
          L1_4 = 1000
          L0_4(L1_4)
          L0_4 = SetEntityHealth
          L1_4 = PedTutorial
          L2_4 = 0
          L0_4(L1_4, L2_4)
        end
        L2_3(L3_3)
        L2_3 = PlayEffectTutorial
        L3_3 = "core"
        L4_3 = "blood_stab"
        L5_3 = vector3
        L6_3 = L0_3.x
        L7_3 = L0_3.y
        L8_3 = L0_3.z
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        L6_3 = 3.5
        L7_3 = vector3
        L8_3 = 0.0
        L9_3 = 0.0
        L10_3 = 0.0
        L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L7_3(L8_3, L9_3, L10_3)
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        L3_3 = Wait
        L4_3 = 950
        L3_3(L4_3)
        L3_3 = ExecuteCommand
        L4_3 = "resisti"
        L3_3(L4_3)
        L3_3 = Wait
        L4_3 = 2000
        L3_3(L4_3)
        L3_3 = GetPedBoneIndex
        L4_3 = PedTutorial
        L5_3 = 11816
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = GetWorldPositionOfEntityBone
        L5_3 = PedTutorial
        L6_3 = L3_3
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = DetachEntity
        L6_3 = L35_2
        L5_3(L6_3)
        L5_3 = FreezeEntityPosition
        L6_3 = L35_2
        L7_3 = true
        L5_3(L6_3, L7_3)
        L5_3 = SetEntityCoords
        L6_3 = L35_2
        L7_3 = L4_3.x
        L8_3 = L4_3.y
        L9_3 = L4_3.z
        L9_3 = L9_3 + 1.5
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L5_3 = SetEntityRotation
        L6_3 = L35_2
        L7_3 = -90.0
        L8_3 = 0.0
        L9_3 = 0.0
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L5_3 = SetEntityCollision
        L6_3 = L35_2
        L7_3 = false
        L8_3 = false
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = true
        L6_3 = GetEntityCoords
        L7_3 = L35_2
        L6_3 = L6_3(L7_3)
        L7_3 = 0.0
        L8_3 = CreateThread
        function L9_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
          while true do
            L0_4 = L5_3
            if not L0_4 then
              break
            end
            L0_4 = DoesEntityExist
            L1_4 = L35_2
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              break
            end
            L0_4 = Wait
            L1_4 = 0
            L0_4(L1_4)
            L0_4 = GetFrameTime
            L0_4 = L0_4()
            L1_4 = L7_3
            L1_4 = L1_4 + L0_4
            L7_3 = L1_4
            L1_4 = GetEntityRotation
            L2_4 = L35_2
            L3_4 = 2
            L1_4 = L1_4(L2_4, L3_4)
            L2_4 = L1_4.z
            L3_4 = 40.0 * L0_4
            L2_4 = L2_4 + L3_4
            L2_4 = L2_4 % 360.0
            L3_4 = SetEntityRotation
            L4_4 = L35_2
            L5_4 = L1_4.x
            L6_4 = L1_4.y
            L7_4 = L2_4
            L8_4 = 2
            L9_4 = true
            L3_4(L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
            L3_4 = math
            L3_4 = L3_4.sin
            L4_4 = L7_3
            L4_4 = L4_4 * 2.5
            L3_4 = L3_4(L4_4)
            L3_4 = L3_4 * 0.1
            L4_4 = L6_3.z
            L4_4 = L4_4 + L3_4
            L5_4 = SetEntityCoordsNoOffset
            L6_4 = L35_2
            L7_4 = L6_3.x
            L8_4 = L6_3.y
            L9_4 = L4_4
            L10_4 = false
            L11_4 = false
            L12_4 = false
            L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
            L5_4 = DrawLightWithRange
            L6_4 = L6_3.x
            L7_4 = L6_3.y
            L8_4 = L4_4 + 0.5
            L9_4 = 255
            L10_4 = 255
            L11_4 = 255
            L12_4 = 3.0
            L13_4 = 1.5
            L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
          end
        end
        L8_3(L9_3)
        while true do
          L8_3 = GetEntityCoords
          L9_3 = L6_2
          L8_3 = L8_3(L9_3)
          L9_3 = GetEntityCoords
          L10_3 = L35_2
          L9_3 = L9_3(L10_3)
          L8_3 = L8_3 - L9_3
          L8_3 = #L8_3
          L9_3 = 1.3
          if not (L8_3 > L9_3) then
            break
          end
          L8_3 = Wait
          L9_3 = 0
          L8_3(L9_3)
        end
        L8_3 = RagnettiMovement2
        L8_3()
        L8_3 = CreateThread
        function L9_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
          L0_4 = makeEntityFaceEntity
          L1_4 = L6_2
          L2_4 = L35_2
          L0_4(L1_4, L2_4)
          L0_4 = ExecuteCommand
          L1_4 = "e prendi5"
          L0_4(L1_4)
          L0_4 = Wait
          L1_4 = 950
          L0_4(L1_4)
          L0_4 = SetEntityAsMissionEntity
          L1_4 = L35_2
          L0_4(L1_4)
          L0_4 = DeleteEntity
          L1_4 = L35_2
          L0_4(L1_4)
          L0_4 = StopParticleFxLooped
          L1_4 = L2_3
          L2_4 = 0
          L0_4(L1_4, L2_4)
          L0_4 = RemoveParticleFx
          L1_4 = L2_3
          L2_4 = true
          L0_4(L1_4, L2_4)
          L0_4 = ExecuteCommand
          L1_4 = "hudoff2"
          L0_4(L1_4)
          L0_4 = TriggerEvent
          L1_4 = "combat:ApplySword"
          L2_4 = 15
          L0_4(L1_4, L2_4)
          L0_4 = tutorialFatto
          if not L0_4 then
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3830.7980957031
            L3_4 = 6599.4877929688
            L4_4 = 1.3088127374649
            L5_4 = 0.0
            L6_4 = 0.0
            L7_4 = 2.4999997615814
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3837.5952148438
            L3_4 = 6602.43359375
            L4_4 = 1.34912109375
            L5_4 = 0.0
            L6_4 = 0.0
            L7_4 = -41.750011444092
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3827.6254882812
            L3_4 = 6643.6967773438
            L4_4 = 1.8142359256744
            L5_4 = 0.0
            L6_4 = 0.0
            L7_4 = -41.750011444092
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3818.9533691406
            L3_4 = 6669.8154296875
            L4_4 = 1.8369836807251
            L5_4 = 0.0
            L6_4 = 0.0
            L7_4 = -3.7500092983246
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3855.2241210938
            L3_4 = 6642.7612304688
            L4_4 = 11.604617118835
            L5_4 = 0.0
            L6_4 = 0.0
            L6_4 = -L6_4
            L7_4 = 0.0
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3843.783203125
            L3_4 = 6541.6254882812
            L4_4 = 0.49781149625778
            L5_4 = 0.0
            L6_4 = 0.0
            L6_4 = -L6_4
            L7_4 = 90.0
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3821.8972167969
            L3_4 = 6532.8471679688
            L4_4 = 1.6530812978745
            L5_4 = 0.0
            L6_4 = 0.0
            L6_4 = -L6_4
            L7_4 = -135.0
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = exports
            L0_4 = L0_4.striano_combat
            L1_4 = L0_4
            L0_4 = L0_4.dummy
            L2_4 = 3827.4675292969
            L3_4 = 6674.5810546875
            L4_4 = 1.7050892114639
            L5_4 = 0.0
            L6_4 = 0.0
            L6_4 = -L6_4
            L7_4 = -179.99998474121
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
            L0_4 = Wait
            L1_4 = 1000
            L0_4(L1_4)
            while true do
              L0_4 = IsDisabledControlPressed
              L1_4 = 0
              L0_4 = L0_4(L1_4)
              if not L0_4 then
                L0_4 = IsControlPressed
                L1_4 = 0
                L2_4 = 25
                L0_4 = L0_4(L1_4, L2_4)
                if not L0_4 then
                  break
                end
              end
              L0_4 = Wait
              L1_4 = 0
              L0_4(L1_4)
            end
            L0_4 = exports
            L0_4 = L0_4.striano_editor
            L1_4 = L0_4
            L0_4 = L0_4.activeQuest
            L2_4 = 1
            L3_4 = true
            L0_4(L1_4, L2_4, L3_4)
          end
          PedTutorial = nil
        end
        L8_3(L9_3)
      end
      L1_3 = IsEntityPlayingAnim
      L2_3 = PedTutorial
      L3_3 = L33_2
      L4_3 = L34_2
      L5_3 = 1
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = HasAnimDictLoaded
        L2_3 = L33_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = RequestAnimDict
          L2_3 = L33_2
          L1_3(L2_3)
          while true do
            L1_3 = HasAnimDictLoaded
            L2_3 = L33_2
            L1_3 = L1_3(L2_3)
            if L1_3 then
              break
            end
            L1_3 = Wait
            L2_3 = 10
            L1_3(L2_3)
          end
        end
        L1_3 = TaskPlayAnim
        L2_3 = PedTutorial
        L3_3 = L33_2
        L4_3 = L34_2
        L5_3 = 3.0
        L6_3 = 1.0
        L7_3 = -1
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L12_3 = 0
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      end
      L1_3 = makeEntityFaceEntity
      L2_3 = PedTutorial
      L3_3 = L6_2
      L1_3(L2_3, L3_3)
    end
  end
  L36_2(L37_2)
  L36_2 = _ENV
  L37_2 = "Wait"
  L36_2 = L36_2[L37_2]
  L37_2 = 1500
  L36_2(L37_2)
  L36_2 = _ENV
  L37_2 = "ExecuteCommand"
  L36_2 = L36_2[L37_2]
  L37_2 = "resisti"
  L36_2(L37_2)
  L36_2 = _ENV
  L37_2 = "SpawnRagno"
  L36_2 = L36_2[L37_2]
  L36_2()
  while true do
    L36_2 = _ENV
    L37_2 = "ragno"
    L36_2 = L36_2[L37_2]
    L37_2 = nil
    if L36_2 == L37_2 then
      break
    end
    L36_2 = _ENV
    L37_2 = "DoesEntityExist"
    L36_2 = L36_2[L37_2]
    L37_2 = _ENV
    L38_2 = "ragno"
    L37_2 = L37_2[L38_2]
    L36_2 = L36_2(L37_2)
    if not L36_2 then
      break
    end
    L36_2 = _ENV
    L37_2 = "tutorialFatto"
    L36_2 = L36_2[L37_2]
    if L36_2 then
      break
    end
    L36_2 = _ENV
    L37_2 = "Wait"
    L36_2 = L36_2[L37_2]
    L37_2 = 0
    L36_2(L37_2)
  end
  L36_2 = _ENV
  L37_2 = "StopParticleFxLooped"
  L36_2 = L36_2[L37_2]
  L37_2 = L30_2
  L38_2 = 0
  L36_2(L37_2, L38_2)
  L36_2 = _ENV
  L37_2 = "RemoveParticleFx"
  L36_2 = L36_2[L37_2]
  L37_2 = L30_2
  L38_2 = true
  L36_2(L37_2, L38_2)
  L36_2 = _ENV
  L37_2 = "SetEntityCoords"
  L36_2 = L36_2[L37_2]
  L37_2 = _ENV
  L38_2 = "troncoTut"
  L37_2 = L37_2[L38_2]
  L38_2 = 3827.294921875
  L39_2 = 6531.1279296875
  L40_2 = 0.12235412746668
  L36_2(L37_2, L38_2, L39_2, L40_2)
  while true do
    L36_2 = _ENV
    L37_2 = "PedTutorial"
    L36_2 = L36_2[L37_2]
    L37_2 = nil
    if L36_2 == L37_2 then
      break
    end
    L36_2 = _ENV
    L37_2 = "Wait"
    L36_2 = L36_2[L37_2]
    L37_2 = 0
    L36_2(L37_2)
  end
  L36_2 = _ENV
  L37_2 = "Wait"
  L36_2 = L36_2[L37_2]
  L37_2 = 1000
  L36_2(L37_2)
  L36_2 = _ENV
  L37_2 = "exports"
  L36_2 = L36_2[L37_2]
  L37_2 = "striano_combat"
  L36_2 = L36_2[L37_2]
  L37_2 = L36_2
  L36_2 = L36_2.showZone
  L38_2 = " "
  L39_2 = "Follow the white light."
  L36_2(L37_2, L38_2, L39_2)
  L36_2 = _ENV
  L37_2 = "vector3"
  L36_2 = L36_2[L37_2]
  L37_2 = 3829.527
  L38_2 = 6529.732
  L39_2 = 0.28
  L36_2 = L36_2(L37_2, L38_2, L39_2)
  L37_2 = _ENV
  L38_2 = "exports"
  L37_2 = L37_2[L38_2]
  L37_2 = L37_2.striano_inventory
  L38_2 = L37_2
  L37_2 = L37_2.delblipInteresse
  L37_2(L38_2)
  L37_2 = _ENV
  L38_2 = "Wait"
  L37_2 = L37_2[L38_2]
  L38_2 = 25
  L37_2(L38_2)
  while true do
    L37_2 = _ENV
    L38_2 = "GetEntityCoords"
    L37_2 = L37_2[L38_2]
    L38_2 = L6_2
    L37_2 = L37_2(L38_2)
    L37_2 = L37_2 - L36_2
    L37_2 = #L37_2
    L38_2 = 3.5
    if not (L37_2 > L38_2) then
      break
    end
    L37_2 = _ENV
    L38_2 = "tutorialFatto"
    L37_2 = L37_2[L38_2]
    if L37_2 then
      break
    end
    L37_2 = _ENV
    L38_2 = "Wait"
    L37_2 = L37_2[L38_2]
    L38_2 = 0
    L37_2(L38_2)
    L37_2 = DrawMarker
    L38_2 = 1
    L39_2 = _ENV
    L40_2 = "vector3"
    L39_2 = L39_2[L40_2]
    L40_2 = "x"
    L40_2 = L36_2[L40_2]
    L41_2 = "y"
    L41_2 = L36_2[L41_2]
    L42_2 = "z"
    L42_2 = L36_2[L42_2]
    L43_2 = 1.5
    L42_2 = L42_2 - L43_2
    L39_2 = L39_2(L40_2, L41_2, L42_2)
    L40_2 = 0.0
    L41_2 = 0.0
    L42_2 = 0.0
    L43_2 = 0.0
    L44_2 = 0.0
    L45_2 = 0.0
    L46_2 = 1.1
    L47_2 = 1.1
    L48_2 = 100.0
    L49_2 = 255
    L50_2 = 255
    L51_2 = 255
    L52_2 = 150
    L53_2 = false
    L54_2 = true
    L55_2 = 2
    L56_2 = nil
    L57_2 = nil
    L58_2 = false
    L37_2(L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2)
  end
  L37_2 = _ENV
  L38_2 = "tutorialFatto"
  L37_2 = L37_2[L38_2]
  if L37_2 then
    return
  end
  L37_2 = _ENV
  L38_2 = "vector3"
  L37_2 = L37_2[L38_2]
  L38_2 = 3828.622
  L39_2 = 6530.03
  L40_2 = 0.207
  L37_2 = L37_2(L38_2, L39_2, L40_2)
  while true do
    L38_2 = L77_1
    if not (L38_2 > 0) then
      break
    end
    L38_2 = _ENV
    L39_2 = "tutorialFatto"
    L38_2 = L38_2[L39_2]
    if L38_2 then
      break
    end
    L38_2 = _ENV
    L39_2 = "Wait"
    L38_2 = L38_2[L39_2]
    L39_2 = 0
    L38_2(L39_2)
    L38_2 = _ENV
    L39_2 = "GetEntityCoords"
    L38_2 = L38_2[L39_2]
    L39_2 = L6_2
    L38_2 = L38_2(L39_2)
    L38_2 = L38_2 - L37_2
    L38_2 = #L38_2
    L39_2 = 4.5
    if L38_2 < L39_2 then
      L38_2 = _ENV
      L39_2 = "GetEntityCoords"
      L38_2 = L38_2[L39_2]
      L39_2 = L6_2
      L38_2 = L38_2(L39_2)
      L39_2 = _ENV
      L40_2 = "GetEntityCoords"
      L39_2 = L39_2[L40_2]
      L40_2 = _ENV
      L41_2 = "troncoTut"
      L40_2 = L40_2[L41_2]
      L39_2 = L39_2(L40_2)
      L38_2 = L38_2 - L39_2
      L38_2 = #L38_2
      L39_2 = 2.5
      if L38_2 < L39_2 then
        L38_2 = _ENV
        L39_2 = "exports"
        L38_2 = L38_2[L39_2]
        L39_2 = "striano_combat"
        L38_2 = L38_2[L39_2]
        L40_2 = "sfoggiate"
        L39_2 = L38_2
        L38_2 = L38_2[L40_2]
        L38_2 = L38_2(L39_2)
        if not L38_2 then
          L38_2 = _ENV
          L39_2 = "exports"
          L38_2 = L38_2[L39_2]
          L39_2 = "striano_ridehorse"
          L38_2 = L38_2[L39_2]
          L40_2 = "ShowInstructionalButtons"
          L39_2 = L38_2
          L38_2 = L38_2[L40_2]
          L40_2 = "Equip Sword."
          L41_2 = {}
          L42_2 = 45
          L41_2[1] = L42_2
          L38_2(L39_2, L40_2, L41_2)
        else
          L38_2 = _ENV
          L39_2 = "exports"
          L38_2 = L38_2[L39_2]
          L39_2 = "striano_combat"
          L38_2 = L38_2[L39_2]
          L40_2 = "EasyCombat"
          L39_2 = L38_2
          L38_2 = L38_2[L40_2]
          L38_2 = L38_2(L39_2)
          if L38_2 then
            L38_2 = _ENV
            L39_2 = "exports"
            L38_2 = L38_2[L39_2]
            L39_2 = "striano_ridehorse"
            L38_2 = L38_2[L39_2]
            L40_2 = "ShowInstructionalButtons"
            L39_2 = L38_2
            L38_2 = L38_2[L40_2]
            L40_2 = "To attack."
            L41_2 = {}
            L42_2 = 24
            L41_2[1] = L42_2
            L38_2(L39_2, L40_2, L41_2)
          else
            L38_2 = _ENV
            L39_2 = "exports"
            L38_2 = L38_2[L39_2]
            L39_2 = "striano_ridehorse"
            L38_2 = L38_2[L39_2]
            L40_2 = "ShowInstructionalButtons"
            L39_2 = L38_2
            L38_2 = L38_2[L40_2]
            L40_2 = "To attack."
            L41_2 = {}
            L42_2 = 25
            L43_2 = 24
            L44_2 = 35
            L41_2[1] = L42_2
            L41_2[2] = L43_2
            L41_2[3] = L44_2
            L38_2(L39_2, L40_2, L41_2)
          end
        end
        L38_2 = _ENV
        L39_2 = "GetEntityCoords"
        L38_2 = L38_2[L39_2]
        L39_2 = _ENV
        L40_2 = "troncoTut"
        L39_2 = L39_2[L40_2]
        L38_2 = L38_2(L39_2)
        L39_2 = L29_1
        L40_2 = "x"
        L40_2 = L38_2[L40_2]
        L41_2 = "y"
        L41_2 = L38_2[L41_2]
        L42_2 = "z"
        L42_2 = L38_2[L42_2]
        L43_2 = "~y~"
        L44_2 = L77_1
        L45_2 = "%"
        L43_2 = L43_2 .. L44_2 .. L45_2
        L39_2(L40_2, L41_2, L42_2, L43_2)
        L39_2 = GetGameTimer
        L39_2 = L39_2()
        L40_2 = L79_1
        L40_2 = L39_2 - L40_2
        if L40_2 >= 77 then
          L79_1 = L39_2
          L40_2 = _ENV
          L41_2 = "exports"
          L40_2 = L40_2[L41_2]
          L41_2 = "striano_combat"
          L40_2 = L40_2[L41_2]
          L42_2 = "inanim"
          L41_2 = L40_2
          L40_2 = L40_2[L42_2]
          L40_2 = L40_2(L41_2)
          if L40_2 then
            L40_2 = _ENV
            L41_2 = "exports"
            L40_2 = L40_2[L41_2]
            L41_2 = "striano_combat"
            L40_2 = L40_2[L41_2]
            L42_2 = "gethitted"
            L41_2 = L40_2
            L40_2 = L40_2[L42_2]
            L40_2 = L40_2(L41_2)
            if L40_2 then
              L40_2 = _ENV
              L41_2 = "exports"
              L40_2 = L40_2[L41_2]
              L41_2 = "striano_combat"
              L40_2 = L40_2[L41_2]
              L42_2 = "sfoggiate"
              L41_2 = L40_2
              L40_2 = L40_2[L42_2]
              L40_2 = L40_2(L41_2)
              if L40_2 then
                L40_2 = L77_1
                L40_2 = L40_2 - 25
                L77_1 = L40_2
                L40_2 = _ENV
                L41_2 = "PlaySoundFrontend"
                L40_2 = L40_2[L41_2]
                L41_2 = -1
                L42_2 = "Hit"
                L43_2 = "RESPAWN_ONLINE_SOUNDSET"
                L44_2 = 1
                L40_2(L41_2, L42_2, L43_2, L44_2)
                L40_2 = _ENV
                L41_2 = "PlayEffectTutorial"
                L40_2 = L40_2[L41_2]
                L41_2 = "core"
                L42_2 = "bul_wood_splinter"
                L43_2 = _ENV
                L44_2 = "vector3"
                L43_2 = L43_2[L44_2]
                L44_2 = "x"
                L44_2 = L38_2[L44_2]
                L45_2 = "y"
                L45_2 = L38_2[L45_2]
                L46_2 = "z"
                L46_2 = L38_2[L46_2]
                L47_2 = 1.0
                L46_2 = L46_2 + L47_2
                L43_2 = L43_2(L44_2, L45_2, L46_2)
                L44_2 = 3.5
                L45_2 = _ENV
                L46_2 = "vector3"
                L45_2 = L45_2[L46_2]
                L46_2 = 0.0
                L47_2 = 0.0
                L48_2 = 0.0
                L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L45_2(L46_2, L47_2, L48_2)
                L40_2 = L40_2(L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
                L41_2 = _ENV
                L42_2 = "CreateThread"
                L41_2 = L41_2[L42_2]
                function L42_2()
                  local L0_3, L1_3, L2_3
                  L0_3 = Wait
                  L1_3 = 900
                  L0_3(L1_3)
                  L0_3 = StopParticleFxLooped
                  L1_3 = L40_2
                  L2_3 = 0
                  L0_3(L1_3, L2_3)
                  L0_3 = RemoveParticleFx
                  L1_3 = L40_2
                  L2_3 = true
                  L0_3(L1_3, L2_3)
                end
                L41_2(L42_2)
              end
            end
          end
        end
      else
        L38_2 = _ENV
        L39_2 = "GetEntityCoords"
        L38_2 = L38_2[L39_2]
        L39_2 = _ENV
        L40_2 = "troncoTut"
        L39_2 = L39_2[L40_2]
        L38_2 = L38_2(L39_2)
        L39_2 = DrawMarker
        L40_2 = 1
        L41_2 = _ENV
        L42_2 = "vector3"
        L41_2 = L41_2[L42_2]
        L42_2 = "x"
        L42_2 = L37_2[L42_2]
        L43_2 = "y"
        L43_2 = L37_2[L43_2]
        L44_2 = "z"
        L44_2 = L37_2[L44_2]
        L45_2 = 1.5
        L44_2 = L44_2 - L45_2
        L41_2 = L41_2(L42_2, L43_2, L44_2)
        L42_2 = 0.0
        L43_2 = 0.0
        L44_2 = 0.0
        L45_2 = 0.0
        L46_2 = 0.0
        L47_2 = 0.0
        L48_2 = 0.3
        L49_2 = 0.3
        L50_2 = 5.0
        L51_2 = 255
        L52_2 = 255
        L53_2 = 0
        L54_2 = 50
        L55_2 = false
        L56_2 = true
        L57_2 = 2
        L58_2 = nil
        L59_2 = nil
        L60_2 = false
        L39_2(L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2)
      end
    else
      L38_2 = DrawMarker
      L39_2 = 1
      L40_2 = _ENV
      L41_2 = "vector3"
      L40_2 = L40_2[L41_2]
      L41_2 = "x"
      L41_2 = L37_2[L41_2]
      L42_2 = "y"
      L42_2 = L37_2[L42_2]
      L43_2 = "z"
      L43_2 = L37_2[L43_2]
      L44_2 = 1.5
      L43_2 = L43_2 - L44_2
      L40_2 = L40_2(L41_2, L42_2, L43_2)
      L41_2 = 0.0
      L42_2 = 0.0
      L43_2 = 0.0
      L44_2 = 0.0
      L45_2 = 0.0
      L46_2 = 0.0
      L47_2 = 1.1
      L48_2 = 1.1
      L49_2 = 100.0
      L50_2 = 255
      L51_2 = 255
      L52_2 = 255
      L53_2 = 150
      L54_2 = false
      L55_2 = true
      L56_2 = 2
      L57_2 = nil
      L58_2 = nil
      L59_2 = false
      L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2)
    end
  end
  L38_2 = _ENV
  L39_2 = "FreezeEntityPosition"
  L38_2 = L38_2[L39_2]
  L39_2 = _ENV
  L40_2 = "troncoTut"
  L39_2 = L39_2[L40_2]
  L40_2 = false
  L38_2(L39_2, L40_2)
  L38_2 = _ENV
  L39_2 = "ApplyForceToEntity"
  L38_2 = L38_2[L39_2]
  L39_2 = _ENV
  L40_2 = "troncoTut"
  L39_2 = L39_2[L40_2]
  L40_2 = 1
  L41_2 = 0.0
  L42_2 = 0.0
  L43_2 = -0.3
  L44_2 = 0.0
  L45_2 = 0.0
  L46_2 = 0.0
  L47_2 = 0
  L48_2 = false
  L49_2 = true
  L50_2 = true
  L51_2 = false
  L52_2 = true
  L38_2(L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2)
  L38_2 = _ENV
  L39_2 = "PedTutorial"
  L38_2 = L38_2[L39_2]
  L39_2 = nil
  if L38_2 ~= L39_2 then
    L38_2 = _ENV
    L39_2 = "DoesEntityExist"
    L38_2 = L38_2[L39_2]
    L39_2 = _ENV
    L40_2 = "PedTutorial"
    L39_2 = L39_2[L40_2]
    L38_2 = L38_2(L39_2)
    if L38_2 then
      L38_2 = _ENV
      L39_2 = "SetEntityAsMissionEntity"
      L38_2 = L38_2[L39_2]
      L39_2 = _ENV
      L40_2 = "PedTutorial"
      L39_2 = L39_2[L40_2]
      L38_2(L39_2)
      L38_2 = _ENV
      L39_2 = "SetEntityAsNoLongerNeeded"
      L38_2 = L38_2[L39_2]
      L39_2 = _ENV
      L40_2 = "PedTutorial"
      L39_2 = L39_2[L40_2]
      L38_2(L39_2)
    end
  end
  L38_2 = _ENV
  L39_2 = "exports"
  L38_2 = L38_2[L39_2]
  L39_2 = "striano_combat"
  L38_2 = L38_2[L39_2]
  L40_2 = "fodera2"
  L39_2 = L38_2
  L38_2 = L38_2[L40_2]
  L38_2(L39_2)
  L38_2 = _ENV
  L39_2 = "Wait"
  L38_2 = L38_2[L39_2]
  L39_2 = 2000
  L38_2(L39_2)
  L38_2 = _ENV
  L39_2 = "tutorialFatto"
  L38_2 = L38_2[L39_2]
  if L38_2 then
    return
  end
  L38_2 = DoScreenFadeOut
  L39_2 = 500
  L38_2(L39_2)
  L38_2 = _ENV
  L39_2 = "Wait"
  L38_2 = L38_2[L39_2]
  L39_2 = 1000
  L38_2(L39_2)
  L38_2 = _ENV
  L39_2 = "FreezeEntityPosition"
  L38_2 = L38_2[L39_2]
  L39_2 = barcaTut
  L40_2 = true
  L38_2(L39_2, L40_2)
  L38_2 = "sounds/rusty"
  L39_2 = L38_2
  L40_2 = ".mp3"
  L39_2 = L39_2 .. L40_2
  L40_2 = _ENV
  L41_2 = "exports"
  L40_2 = L40_2[L41_2]
  L40_2 = L40_2.xsound
  L41_2 = L40_2
  L40_2 = L40_2.PlayUrl
  L42_2 = L38_2
  L43_2 = L39_2
  L44_2 = _ENV
  L45_2 = "exports"
  L44_2 = L44_2[L45_2]
  L45_2 = "striano_combat"
  L44_2 = L44_2[L45_2]
  L45_2 = L44_2
  L44_2 = L44_2.GetSFXVolume
  L46_2 = 0.02
  L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L44_2(L45_2, L46_2)
  L40_2(L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
  L40_2 = _ENV
  L41_2 = "Wait"
  L40_2 = L40_2[L41_2]
  L41_2 = 2000
  L40_2(L41_2)
  L40_2 = _ENV
  L41_2 = "GetEntityHeading"
  L40_2 = L40_2[L41_2]
  L41_2 = barcaTut
  L40_2 = L40_2(L41_2)
  L41_2 = _ENV
  L42_2 = "SetEntityCoords"
  L41_2 = L41_2[L42_2]
  L42_2 = barcaTut
  L43_2 = 3819.634
  L44_2 = 6528.256
  L45_2 = 0.306
  L41_2(L42_2, L43_2, L44_2, L45_2)
  L41_2 = SetEntityHeading
  L42_2 = barcaTut
  L43_2 = L40_2
  L41_2(L42_2, L43_2)
  L41_2 = _ENV
  L42_2 = "SetEntityVelocity"
  L41_2 = L41_2[L42_2]
  L42_2 = barcaTut
  L43_2 = 0.0
  L44_2 = 0.0
  L45_2 = 0.0
  L41_2(L42_2, L43_2, L44_2, L45_2)
  L41_2 = _ENV
  L42_2 = "SetEntityAngularVelocity"
  L41_2 = L41_2[L42_2]
  L42_2 = barcaTut
  L43_2 = 0.0
  L44_2 = 0.0
  L45_2 = 0.0
  L41_2(L42_2, L43_2, L44_2, L45_2)
  L41_2 = _ENV
  L42_2 = "FreezeEntityPosition"
  L41_2 = L41_2[L42_2]
  L42_2 = barcaTut
  L43_2 = true
  L41_2(L42_2, L43_2)
  L41_2 = _ENV
  L42_2 = "CreateThread"
  L41_2 = L41_2[L42_2]
  function L42_2()
    local L0_3, L1_3, L2_3
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = DetachEntity
    L1_3 = L6_2
    L0_3(L1_3)
    L0_3 = FreezeEntityPosition
    L1_3 = barcaTut
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "Wait"
  L41_2 = L41_2[L42_2]
  L42_2 = 1000
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "exports"
  L41_2 = L41_2[L42_2]
  L41_2 = L41_2.striano_boat
  L43_2 = "deleteAndSpawnBoat"
  L42_2 = L41_2
  L41_2 = L41_2[L43_2]
  L43_2 = _ENV
  L44_2 = "barcaTut"
  L43_2 = L43_2[L44_2]
  L41_2(L42_2, L43_2)
  L41_2 = _ENV
  L42_2 = "testo3d"
  L41_2 = L41_2[L42_2]
  L42_2 = "Boat freed."
  L41_2(L42_2)
  L41_2 = 255
  L42_2 = 0
  L43_2 = -15
  for L44_2 = L41_2, L42_2, L43_2 do
    L45_2 = _ENV
    L46_2 = "SetEntityAlpha"
    L45_2 = L45_2[L46_2]
    L46_2 = _ENV
    L47_2 = "troncoTut"
    L46_2 = L46_2[L47_2]
    L47_2 = L44_2
    L48_2 = false
    L45_2(L46_2, L47_2, L48_2)
    L45_2 = _ENV
    L46_2 = "Wait"
    L45_2 = L45_2[L46_2]
    L46_2 = 50
    L45_2(L46_2)
  end
  L41_2 = _ENV
  L42_2 = "SetEntityAsMissionEntity"
  L41_2 = L41_2[L42_2]
  L42_2 = _ENV
  L43_2 = "troncoTut"
  L42_2 = L42_2[L43_2]
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "DeleteEntity"
  L41_2 = L41_2[L42_2]
  L42_2 = _ENV
  L43_2 = "troncoTut"
  L42_2 = L42_2[L43_2]
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "Wait"
  L41_2 = L41_2[L42_2]
  L42_2 = 1000
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "ExecuteCommand"
  L41_2 = L41_2[L42_2]
  L42_2 = "e alzati"
  L41_2(L42_2)
  L41_2 = DoScreenFadeIn
  L42_2 = 500
  L41_2(L42_2)
  L41_2 = _ENV
  L42_2 = "FreezeEntityPosition"
  L41_2 = L41_2[L42_2]
  L42_2 = _ENV
  L43_2 = "barcaTut"
  L42_2 = L42_2[L43_2]
  L43_2 = false
  L41_2(L42_2, L43_2)
  L41_2 = _ENV
  L42_2 = "exports"
  L41_2 = L41_2[L42_2]
  L41_2 = L41_2.striano_boat
  L42_2 = L41_2
  L41_2 = L41_2.calmWater
  L43_2 = false
  L41_2(L42_2, L43_2)
  L41_2 = _ENV
  L42_2 = "vector3"
  L41_2 = L41_2[L42_2]
  L42_2 = 3828.26
  L43_2 = 6534.958
  L44_2 = 0.582
  L41_2 = L41_2(L42_2, L43_2, L44_2)
  while true do
    L42_2 = _ENV
    L43_2 = "GetEntityCoords"
    L42_2 = L42_2[L43_2]
    L43_2 = _ENV
    L44_2 = "barcaTut"
    L43_2 = L43_2[L44_2]
    L42_2 = L42_2(L43_2)
    L42_2 = L42_2 - L41_2
    L42_2 = #L42_2
    if not (L42_2 < 100.0) then
      break
    end
    L42_2 = _ENV
    L43_2 = "tutorialFatto"
    L42_2 = L42_2[L43_2]
    if L42_2 then
      break
    end
    L42_2 = _ENV
    L43_2 = "Wait"
    L42_2 = L42_2[L43_2]
    L43_2 = 0
    L42_2(L43_2)
    L42_2 = _ENV
    L43_2 = "GetEntityCoords"
    L42_2 = L42_2[L43_2]
    L43_2 = L6_2
    L42_2 = L42_2(L43_2)
    L43_2 = _ENV
    L44_2 = "GetEntityCoords"
    L43_2 = L43_2[L44_2]
    L44_2 = _ENV
    L45_2 = "barcaTut"
    L44_2 = L44_2[L45_2]
    L43_2 = L43_2(L44_2)
    L42_2 = L42_2 - L43_2
    L42_2 = #L42_2
    if L42_2 < 2.0 then
      L42_2 = _ENV
      L43_2 = "GetEntityCoords"
      L42_2 = L42_2[L43_2]
      L43_2 = PlayerPedId
      L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2 = L43_2()
      L42_2 = L42_2(L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
      L42_2 = L42_2 - L41_2
      L42_2 = #L42_2
      L43_2 = 100.0
      L44_2 = _ENV
      L45_2 = "math"
      L44_2 = L44_2[L45_2]
      L45_2 = "min"
      L44_2 = L44_2[L45_2]
      L45_2 = L42_2
      L46_2 = L43_2
      L44_2 = L44_2(L45_2, L46_2)
      L44_2 = L44_2 / L43_2
      L45_2 = 1.0
      L44_2 = L45_2 - L44_2
      L45_2 = 100.0
      L44_2 = L44_2 * L45_2
      L45_2 = _ENV
      L46_2 = "math"
      L45_2 = L45_2[L46_2]
      L46_2 = "floor"
      L45_2 = L45_2[L46_2]
      L46_2 = L44_2
      L45_2 = L45_2(L46_2)
      L45_2 = -L45_2
      L46_2 = _ENV
      L47_2 = "GetEntityCoords"
      L46_2 = L46_2[L47_2]
      L47_2 = _ENV
      L48_2 = "barcaTut"
      L47_2 = L47_2[L48_2]
      L46_2 = L46_2(L47_2)
      L47_2 = L29_1
      L48_2 = "x"
      L48_2 = L46_2[L48_2]
      L49_2 = "y"
      L49_2 = L46_2[L49_2]
      L50_2 = "z"
      L50_2 = L46_2[L50_2]
      L51_2 = 1.9
      L50_2 = L50_2 + L51_2
      L51_2 = "Escape from island. ~h~("
      L52_2 = L45_2
      L53_2 = "m)"
      L51_2 = L51_2 .. L52_2 .. L53_2
      L47_2(L48_2, L49_2, L50_2, L51_2)
    else
      L42_2 = _ENV
      L43_2 = "GetEntityCoords"
      L42_2 = L42_2[L43_2]
      L43_2 = _ENV
      L44_2 = "barcaTut"
      L43_2 = L43_2[L44_2]
      L42_2 = L42_2(L43_2)
      L43_2 = DrawMarker
      L44_2 = 1
      L45_2 = L42_2
      L46_2 = 0.0
      L47_2 = 0.0
      L48_2 = 0.0
      L49_2 = 0.0
      L50_2 = 0.0
      L51_2 = 0.0
      L52_2 = 0.5
      L53_2 = 0.5
      L54_2 = 5.0
      L55_2 = 255
      L56_2 = 255
      L57_2 = 255
      L58_2 = 150
      L59_2 = false
      L60_2 = true
      L61_2 = 2
      L62_2 = nil
      L63_2 = nil
      L64_2 = false
      L43_2(L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2, L56_2, L57_2, L58_2, L59_2, L60_2, L61_2, L62_2, L63_2, L64_2)
      L43_2 = _ENV
      L44_2 = "GetEntityCoords"
      L43_2 = L43_2[L44_2]
      L44_2 = L6_2
      L43_2 = L43_2(L44_2)
      L44_2 = _ENV
      L45_2 = "GetEntityCoords"
      L44_2 = L44_2[L45_2]
      L45_2 = L6_2
      L44_2 = L44_2(L45_2)
      L45_2 = _ENV
      L46_2 = "GetEntityCoords"
      L45_2 = L45_2[L46_2]
      L46_2 = _ENV
      L47_2 = "barcaTut"
      L46_2 = L46_2[L47_2]
      L45_2 = L45_2(L46_2)
      L44_2 = L44_2 - L45_2
      L44_2 = #L44_2
      if L44_2 >= 3.0 then
        L44_2 = L29_1
        L45_2 = "x"
        L45_2 = L43_2[L45_2]
        L46_2 = "y"
        L46_2 = L43_2[L46_2]
        L47_2 = "z"
        L47_2 = L43_2[L47_2]
        L48_2 = "Board ~h~boat ~h~to escape."
        L44_2(L45_2, L46_2, L47_2, L48_2)
      end
    end
  end
  L42_2 = _ENV
  L43_2 = "tutorialFatto"
  L42_2 = L42_2[L43_2]
  if L42_2 then
    return
  end
  L42_2 = DoScreenFadeOut
  L43_2 = 500
  L42_2(L43_2)
  L42_2 = _ENV
  L43_2 = "Wait"
  L42_2 = L42_2[L43_2]
  L43_2 = 1000
  L42_2(L43_2)
  L42_2 = _ENV
  L43_2 = "EndOfTutorial"
  L42_2 = L42_2[L43_2]
  L42_2()
end
L81_1[L82_1] = L83_1
L81_1 = _ENV
L82_1 = "EndOfTutorial"
function L83_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  doingTutorial = false
  tutorialFatto = true
  L0_2 = Wait
  L1_2 = 250
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = stopMusic
  L2_2 = "aposong"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "vSync:getSync"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.delblipInteresse
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "clearwaypoints"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "getBlackout"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = DetachEntity
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_boat
  L2_2 = L1_2
  L1_2 = L1_2.delBoat
  L1_2(L2_2)
  L1_2 = barcaTut
  if nil ~= L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = barcaTut
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = barcaTut
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = barcaTut
      L1_2(L2_2)
    end
  end
  barcaTut = nil
  L1_2 = exports
  L1_2 = L1_2.striano_boat
  L2_2 = L1_2
  L1_2 = L1_2.calmWater
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = ExecuteCommand
  L2_2 = "hudoff2"
  L1_2(L2_2)
  MissioneSurv = -51
  L1_2 = TriggerServerEvent
  L2_2 = "esx_Pharmacy:setVarDB"
  L3_2 = "mytutorial"
  L4_2 = MissioneSurv
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisplayRadar
  L2_2 = false
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.delAllDummy
  L1_2(L2_2)
  L1_2 = SetEntityInvincible
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.setwatermark
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = vector3
  L2_2 = -700.835
  L3_2 = -6988.291
  L4_2 = 39.251
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = SetEntityCoords
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityHeading
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = 80.0
  L2_2(L3_2, L4_2)
  L2_2 = FreezaCam
  L3_2 = true
  L4_2 = 500
  L2_2(L3_2, L4_2)
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = RequestCollisionAtCoord
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = SetEntityCollision
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = ResetEntityAlpha
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  sonoUnUccello = true
  L2_2 = ExecuteCommand
  L3_2 = "prova2 "
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "hudoff2"
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "flyAnimal"
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "vSync:getSync"
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = TriggerServerEvent
  L3_2 = "getBlackout"
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.atmosfera
  L2_2(L3_2)
  L2_2 = FreezeEntityPosition
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = Wait
  L3_2 = 1000
  L2_2(L3_2)
  L2_2 = "sounds/intro2.mp3"
  L3_2 = exports
  L3_2 = L3_2.xsound
  L4_2 = L3_2
  L3_2 = L3_2.PlayUrl
  L5_2 = "intro2"
  L6_2 = L2_2
  L7_2 = exports
  L7_2 = L7_2.striano_combat
  L8_2 = L7_2
  L7_2 = L7_2.GetSFXVolume
  L9_2 = 0.1
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = Wait
  L4_2 = 3000
  L3_2(L4_2)
  L3_2 = settamiMeteo
  L4_2 = "SNOWLIGHT"
  L3_2(L4_2)
  L3_2 = SetTimecycleModifier
  L4_2 = "heist_boat_norain"
  L3_2(L4_2)
  L3_2 = SetTimecycleModifierStrength
  L4_2 = 0.2
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.atmosfera
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 3000
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_boat
  L4_2 = L3_2
  L3_2 = L3_2.calmWater
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.atmosfera
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 5500
  L3_2(L4_2)
  L3_2 = ExecuteCommand
  L4_2 = "ob"
  L3_2(L4_2)
  L3_2 = DoScreenFadeIn
  L4_2 = 1500
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = tutorialFatto
      if L0_3 then
        break
      end
      L0_3 = IsPedHuman
      L1_3 = PlayerPedId
      L1_3, L2_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = L1_2
      L0_3 = L0_3 - L1_3
      L0_3 = #L0_3
      L1_3 = 2000.0
      if L0_3 > L1_3 then
        L0_3 = SetEntityCoords
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = L1_2
        L0_3(L1_3, L2_3)
        L0_3 = SetEntityHeading
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = 80.0
        L0_3(L1_3, L2_3)
        L0_3 = FreezaCam
        L1_3 = true
        L2_3 = 500
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = RequestCollisionAtCoord
        L1_3 = GetEntityCoords
        L2_3 = PlayerPedId
        L2_3 = L2_3()
        L1_3, L2_3 = L1_3(L2_3)
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
    end
  end
  L3_2(L4_2)
end
L81_1[L82_1] = L83_1
L81_1 = 0
L82_1 = nil
L83_1 = _ENV
L84_1 = "StartCampana"
function L85_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = "alezlab_campana"
  L2_2 = "alezlab_campana@animation"
  L3_2 = vector3
  L4_2 = 3801.5473632812
  L5_2 = 7262.3037109375
  L6_2 = 45.863198852539
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = GetClosestObjectOfType
  L5_2 = L3_2
  L6_2 = 3.0
  L7_2 = -849778966
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if 0 == L4_2 then
    L5_2 = RequestModelStriano
    L6_2 = GetHashKey
    L7_2 = "alezlab_campana"
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = CreateObject
    L6_2 = GetHashKey
    L7_2 = "alezlab_campana"
    L6_2 = L6_2(L7_2)
    L7_2 = L3_2
    L8_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L82_1 = L5_2
    while true do
      L5_2 = DoesEntityExist
      L6_2 = L82_1
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    L5_2 = SetEntityCollision
    L6_2 = L82_1
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = RequestAnimDict
    L6_2 = L2_2
    L5_2(L6_2)
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    while true do
      L6_2 = HasAnimDictLoaded
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = GetGameTimer
      L6_2 = L6_2()
      L6_2 = L6_2 - L5_2
      L7_2 = 1500
      if not (L6_2 < L7_2) then
        break
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
    L6_2 = SetEntityLodDist
    L7_2 = L82_1
    L8_2 = 800
    L6_2(L7_2, L8_2)
    L6_2 = SetEntityAsMissionEntity
    L7_2 = L82_1
    L6_2(L7_2)
    L6_2 = SetEntityAnimCurrentTime
    L7_2 = L82_1
    L8_2 = L2_2
    L9_2 = L1_2
    L10_2 = 0.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetEntityAnimSpeed
    L7_2 = L82_1
    L8_2 = L2_2
    L9_2 = L1_2
    L10_2 = 0.0
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SetEntityAnimSpeed
    L7_2 = L82_1
    L8_2 = L2_2
    L9_2 = L1_2
    L10_2 = 0.9
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = SwingBell
    L7_2 = L82_1
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
  else
    L82_1 = L4_2
    L5_2 = SetEntityLodDist
    L6_2 = L82_1
    L7_2 = 800
    L5_2(L6_2, L7_2)
    L5_2 = L81_1
    if 0 == L5_2 then
      L5_2 = SetEntityAnimCurrentTime
      L6_2 = L82_1
      L7_2 = L2_2
      L8_2 = L1_2
      L9_2 = 0.5
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SetEntityAnimSpeed
      L6_2 = L82_1
      L7_2 = L2_2
      L8_2 = L1_2
      L9_2 = 0.0
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SetEntityAnimSpeed
      L6_2 = L82_1
      L7_2 = L2_2
      L8_2 = L1_2
      L9_2 = 0.9
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = SwingBell
      L6_2 = L82_1
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
    end
  end
end
L83_1[L84_1] = L85_1
L83_1 = RegisterNetEvent
L84_1 = "ActiveAutoDummy"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "ActiveAutoDummy"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetResourceState
  L1_2 = "striano_editor"
  L0_2 = L0_2(L1_2)
  if "started" == L0_2 then
    L0_2 = tutorialFatto
    if not L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_editor
      L1_2 = L0_2
      L0_2 = L0_2.isQuestActive
      L0_2 = L0_2(L1_2)
      if 0 ~= L0_2 then
        L0_2 = exports
        L0_2 = L0_2.striano_editor
        L1_2 = L0_2
        L0_2 = L0_2.isQuestActive
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          goto lbl_33
        end
      end
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexInfo
      L2_2 = "Hey! You knockdown the mannequin without Accept the right Quest! Press [L] to manage."
      L0_2(L1_2, L2_2)
      L0_2 = print
      L1_2 = "Current Quest active:"
      L2_2 = exports
      L2_2 = L2_2.striano_editor
      L3_2 = L2_2
      L2_2 = L2_2.isQuestActive
      L2_2, L3_2 = L2_2(L3_2)
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  ::lbl_33::
end
L83_1(L84_1, L85_1)
L83_1 = RegisterNetEvent
L84_1 = "campanaclient"
L83_1(L84_1)
L83_1 = AddEventHandler
L84_1 = "campanaclient"
function L85_1(A0_2)
  local L1_2, L2_2
  L1_2 = StartCampana
  L2_2 = A0_2
  L1_2(L2_2)
end
L83_1(L84_1, L85_1)
L83_1 = _ENV
L84_1 = "SwingBell"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = 0.0
    L1_3 = 1
    while true do
      L2_3 = DoesEntityExist
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        break
      end
      L2_3 = L81_1
      if not (L2_3 < 3) then
        break
      end
      L2_3 = Wait
      L3_3 = 15
      L2_3(L3_3)
      L2_3 = 0.35 * L1_3
      L0_3 = L0_3 + L2_3
      if L0_3 > 35.0 then
        L1_3 = -1
        L2_3 = PlayBellSound
        L3_3 = A0_2
        L4_3 = A1_2
        L2_3(L3_3, L4_3)
        L2_3 = L81_1
        L2_3 = L2_3 + 1
        L81_1 = L2_3
      elseif L0_3 < -35.0 then
        L1_3 = 1
        L2_3 = PlayBellSound
        L3_3 = A0_2
        L4_3 = A1_2
        L2_3(L3_3, L4_3)
        L2_3 = L81_1
        L2_3 = L2_3 + 1
        L81_1 = L2_3
      end
      L2_3 = SetEntityRotation
      L3_3 = A0_2
      L4_3 = 0.0
      L5_3 = L0_3
      L6_3 = 0.0
      L7_3 = 2
      L8_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L2_3 = DoesEntityExist
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L2_3 = "alezlab_campana"
      L3_3 = "alezlab_campana@animation"
      L4_3 = SetEntityAnimCurrentTime
      L5_3 = A0_2
      L6_3 = L3_3
      L7_3 = L2_3
      L8_3 = 0.0
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetEntityAnimSpeed
      L5_3 = A0_2
      L6_3 = L3_3
      L7_3 = L2_3
      L8_3 = 0.0
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = SetEntityRotation
      L5_3 = A0_2
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = 0.0
      L9_3 = 2
      L10_3 = true
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L4_3 = Wait
      L5_3 = 225
      L4_3(L5_3)
    end
    L2_3 = 0
    L81_1 = L2_3
  end
  L2_2(L3_2)
end
L83_1[L84_1] = L85_1
L83_1 = _ENV
L84_1 = "PlayBellSound"
function L85_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if A1_2 == L2_2 then
    L2_2 = "sounds/bell"
    L3_2 = L2_2
    L4_2 = ".mp3"
    L3_2 = L3_2 .. L4_2
    L4_2 = TriggerServerEvent
    L5_2 = "striano_djset:playSoundPos"
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = GetEntityCoords
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = 0.07
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L83_1[L84_1] = L85_1
L83_1 = RegisterCommand
L84_1 = "testMostro"
function L85_1()
  local L0_2, L1_2
  L0_2 = mostro
  if nil == L0_2 then
    L0_2 = SpawnSerpente
    L0_2()
  else
    L0_2 = SetEntityAsMissionEntity
    L1_2 = mostro
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = mostro
    L0_2(L1_2)
    mostro = nil
  end
end
L83_1(L84_1, L85_1)
L83_1 = _ENV
L84_1 = "ragno"
L85_1 = nil
L83_1[L84_1] = L85_1
L83_1 = RegisterCommand
L84_1 = "weatut"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = "HALLOWEEN"
  L1_2 = SetWeatherTypeNowPersist
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ClearOverrideWeather
  L1_2()
  L1_2 = ClearWeatherTypePersist
  L1_2()
  L1_2 = SetWeatherTypePersist
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SetWeatherTypeNow
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SetWeatherTypeNowPersist
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = NetworkOverrideClockTime
  L2_2 = 0
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetTimecycleModifier
  L2_2 = "V_FIB_stairs"
  L1_2(L2_2)
  L1_2 = SetTimecycleModifierStrength
  L2_2 = 1.0
  L1_2(L2_2)
end
L83_1(L84_1, L85_1)
L83_1 = _ENV
L84_1 = "SpawnRagno"
function L85_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = ragno
  if nil == L0_2 then
    L0_2 = vector3
    L1_2 = 3827.6506347656
    L2_2 = 6647.4995117188
    L3_2 = 1.8952440023422
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L1_2 = vector3
    L2_2 = -5.2499980926514
    L3_2 = -0.24999864399433
    L4_2 = -179.99989318848
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = vector3
    L3_2 = 3828.5217285156
    L4_2 = 6666.59375
    L5_2 = 1.5665209293365
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = "sounds/striano_combat/magic/bass1"
    L4_2 = L3_2
    L5_2 = ".mp3"
    L4_2 = L4_2 .. L5_2
    L5_2 = exports
    L5_2 = L5_2.xsound
    L6_2 = L5_2
    L5_2 = L5_2.PlayUrl
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = exports
    L9_2 = L9_2.striano_combat
    L10_2 = L9_2
    L9_2 = L9_2.GetSFXVolume
    L11_2 = 0.3
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L5_2 = "alezlab_ragnog"
    L6_2 = "alezlab_ragno@animation"
    L7_2 = "alezlab_ragno_corsa"
    L8_2 = ExecuteCommand
    L9_2 = "e oddio"
    L8_2(L9_2)
    L8_2 = RequestModelStriano
    L9_2 = GetHashKey
    L10_2 = L5_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L8_2 = CreateObject
    L9_2 = GetHashKey
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L10_2 = L0_2
    L11_2 = false
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    ragno = L8_2
    while true do
      L8_2 = DoesEntityExist
      L9_2 = ragno
      L8_2 = L8_2(L9_2)
      if L8_2 then
        break
      end
      L8_2 = Wait
      L9_2 = 0
      L8_2(L9_2)
    end
    L8_2 = SetEntityRotation
    L9_2 = ragno
    L10_2 = L1_2
    L8_2(L9_2, L10_2)
    L8_2 = RequestAnimDict
    L9_2 = L6_2
    L8_2(L9_2)
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    while true do
      L9_2 = HasAnimDictLoaded
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      L9_2 = L9_2 - L8_2
      L10_2 = 1500
      if not (L9_2 < L10_2) then
        break
      end
      L9_2 = Wait
      L10_2 = 0
      L9_2(L10_2)
    end
    L9_2 = PlayEntityAnim
    L10_2 = ragno
    L11_2 = L7_2
    L12_2 = L6_2
    L13_2 = 1.0
    L14_2 = true
    L15_2 = false
    L16_2 = false
    L17_2 = 0.0
    L18_2 = 1
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = "sounds/worm"
    L10_2 = L9_2
    L11_2 = ".mp3"
    L10_2 = L10_2 .. L11_2
    L11_2 = exports
    L11_2 = L11_2.xsound
    L12_2 = L11_2
    L11_2 = L11_2.PlayUrl
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = exports
    L15_2 = L15_2.striano_combat
    L16_2 = L15_2
    L15_2 = L15_2.GetSFXVolume
    L17_2 = 0.1
    L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = SetEntityAnimSpeed
    L12_2 = ragno
    L13_2 = L6_2
    L14_2 = L7_2
    L15_2 = 1.5
    L11_2(L12_2, L13_2, L14_2, L15_2)
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = MoveEntity
      L1_3 = "Linear"
      L2_3 = ragno
      L3_3 = L2_2
      L4_3 = 3.5
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L11_2(L12_2)
    while true do
      L11_2 = GetEntityCoords
      L12_2 = ragno
      L11_2 = L11_2(L12_2)
      L11_2 = L2_2 - L11_2
      L11_2 = #L11_2
      L12_2 = 0.1
      if not (L11_2 > L12_2) then
        break
      end
      L11_2 = Wait
      L12_2 = 0
      L11_2(L12_2)
    end
    L11_2 = SetEntityRotation
    L12_2 = ragno
    L13_2 = vector3
    L14_2 = -77.499725341797
    L15_2 = 0.24999992549419
    L16_2 = -179.99989318848
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = SetEntityCoords
    L12_2 = ragno
    L13_2 = vector3
    L14_2 = 3828.4497070312
    L15_2 = 6667.8725585938
    L16_2 = 3.3870630264282
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2, L16_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = vector3
    L12_2 = vector3
    L13_2 = 3828.4497070312
    L14_2 = 6668.3881835938
    L15_2 = 17.126993179321
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2, L15_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L2_2 = L11_2
    L11_2 = CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = MoveEntity
      L1_3 = "Linear"
      L2_3 = ragno
      L3_3 = L2_2
      L4_3 = 4.8
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L11_2(L12_2)
    while true do
      L11_2 = GetEntityCoords
      L12_2 = ragno
      L11_2 = L11_2(L12_2)
      L11_2 = L2_2 - L11_2
      L11_2 = #L11_2
      L12_2 = 0.5
      if not (L11_2 > L12_2) then
        break
      end
      L11_2 = Wait
      L12_2 = 0
      L11_2(L12_2)
    end
    L11_2 = SetEntityAsMissionEntity
    L12_2 = ragno
    L11_2(L12_2)
    L11_2 = 255
    L12_2 = 0
    L13_2 = -10
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = SetEntityAlpha
      L16_2 = ragno
      L17_2 = L14_2
      L18_2 = false
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = Wait
      L16_2 = 25
      L15_2(L16_2)
    end
    L11_2 = DeleteEntity
    L12_2 = ragno
    L11_2(L12_2)
    ragno = nil
    L11_2 = stopMusic
    L12_2 = L9_2
    L13_2 = 1000
    L11_2(L12_2, L13_2)
  else
    L0_2 = SetEntityAsMissionEntity
    L1_2 = ragno
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = ragno
    L0_2(L1_2)
    ragno = nil
    L0_2 = print
    L1_2 = "Ragno eliminato."
    L0_2(L1_2)
  end
end
L83_1[L84_1] = L85_1
L83_1 = RegisterCommand
L84_1 = "testRagno"
function L85_1()
  local L0_2, L1_2
  L0_2 = SpawnRagno
  L0_2()
end
L83_1(L84_1, L85_1)
L83_1 = {}
L84_1 = false
L85_1 = false
L86_1 = 270.0
L87_1 = {}
function L88_1(A0_2)
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
  L2_2 = 1.0E-4
  if L1_2 <= L2_2 then
    L2_2 = vector3
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 1.0
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
function L89_1(A0_2, A1_2)
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
function L90_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = SetDrawOrigin
  L3_2 = A0_2.x
  L4_2 = A0_2.y
  L5_2 = A0_2.z
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetTextScale
  L3_2 = 0.25
  L4_2 = 0.25
  L2_2(L3_2, L4_2)
  L2_2 = SetTextFont
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = SetTextProportional
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = SetTextColour
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L6_2 = 220
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetTextCentre
  L3_2 = true
  L2_2(L3_2)
  L2_2 = SetTextEntry
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentString
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = DrawText
  L3_2 = 0.0
  L4_2 = 0.0
  L2_2(L3_2, L4_2)
  L2_2 = ClearDrawOrigin
  L2_2()
end
L91_1 = {}
L92_1 = -383623015
L93_1 = true
L91_1[L92_1] = L93_1
L92_1 = 2044171877
L93_1 = true
L91_1[L92_1] = L93_1
L92_1 = -946956202
L93_1 = true
L91_1[L92_1] = L93_1
function L92_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = A2_2 + 0.3
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
    L16_2 = GetEntityModel
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    L17_2 = L91_1
    L16_2 = L17_2[L16_2]
    if not L16_2 then
      L16_2 = L11_2
      L17_2 = L12_2
      L18_2 = L13_2
      L19_2 = L14_2
      L20_2 = L15_2
      return L16_2, L17_2, L18_2, L19_2, L20_2
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
function L93_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2
  L2_2 = A1_2.x
  L3_2 = A1_2.y
  L4_2 = A1_2.z
  L5_2 = 511
  L6_2 = L92_1
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = A0_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L11_2 = L85_1
  if L11_2 then
    L11_2 = vector3
    L12_2 = A1_2.x
    L13_2 = A1_2.y
    L14_2 = A1_2.z
    L14_2 = L14_2 + 1.0
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = vector3
    L13_2 = A1_2.x
    L14_2 = A1_2.y
    L15_2 = A1_2.z
    L15_2 = L15_2 - 3.0
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = DrawLine
    L14_2 = L11_2.x
    L15_2 = L11_2.y
    L16_2 = L11_2.z
    L17_2 = L12_2.x
    L18_2 = L12_2.y
    L19_2 = L12_2.z
    L20_2 = 255
    L21_2 = 255
    L22_2 = 0
    L23_2 = 255
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L13_2 = DrawMarker
    L14_2 = 28
    L15_2 = L11_2.x
    L16_2 = L11_2.y
    L17_2 = L11_2.z
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L24_2 = 0.025
    L25_2 = 0.025
    L26_2 = 0.025
    L27_2 = 0
    L28_2 = 150
    L29_2 = 255
    L30_2 = 255
    L31_2 = false
    L32_2 = false
    L33_2 = 2
    L34_2 = false
    L35_2 = nil
    L36_2 = nil
    L37_2 = false
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
    if 1 == L7_2 then
      L13_2 = DrawMarker
      L14_2 = 28
      L15_2 = L8_2.x
      L16_2 = L8_2.y
      L17_2 = L8_2.z
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = 0.0
      L21_2 = 0.0
      L22_2 = 0.0
      L23_2 = 0.0
      L24_2 = 0.035
      L25_2 = 0.035
      L26_2 = 0.035
      L27_2 = 0
      L28_2 = 255
      L29_2 = 0
      L30_2 = 255
      L31_2 = false
      L32_2 = false
      L33_2 = 2
      L34_2 = false
      L35_2 = nil
      L36_2 = nil
      L37_2 = false
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2)
      L13_2 = DrawLine
      L14_2 = L8_2.x
      L15_2 = L8_2.y
      L16_2 = L8_2.z
      L17_2 = L8_2.x
      L18_2 = L9_2.x
      L18_2 = L18_2 * 0.5
      L17_2 = L17_2 + L18_2
      L18_2 = L8_2.y
      L19_2 = L9_2.y
      L19_2 = L19_2 * 0.5
      L18_2 = L18_2 + L19_2
      L19_2 = L8_2.z
      L20_2 = L9_2.z
      L20_2 = L20_2 * 0.5
      L19_2 = L19_2 + L20_2
      L20_2 = 255
      L21_2 = 0
      L22_2 = 0
      L23_2 = 255
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    end
  end
  if 1 == L7_2 then
    L11_2 = true
    L12_2 = L8_2
    L13_2 = L88_1
    L14_2 = L9_2
    L13_2 = L13_2(L14_2)
    L14_2 = L10_2
    return L11_2, L12_2, L13_2, L14_2
  end
  L11_2 = false
  L12_2 = nil
  L13_2 = nil
  L14_2 = 0
  return L11_2, L12_2, L13_2, L14_2
end
function L94_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = L88_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A2_2 = L4_2
  L4_2 = L86_1
  L4_2 = A3_2 + L4_2
  L4_2 = L4_2 % 360.0
  L5_2 = math
  L5_2 = L5_2.rad
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = -L7_2
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L5_2
  L8_2 = L8_2(L9_2)
  L9_2 = 0.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L6_2.x
  L8_2 = A2_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L6_2.y
  L9_2 = A2_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L6_2.z
  L9_2 = A2_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = vector3
  L9_2 = L6_2.x
  L10_2 = A2_2.x
  L10_2 = L10_2 * L7_2
  L9_2 = L9_2 - L10_2
  L10_2 = L6_2.y
  L11_2 = A2_2.y
  L11_2 = L11_2 * L7_2
  L10_2 = L10_2 - L11_2
  L11_2 = L6_2.z
  L12_2 = A2_2.z
  L12_2 = L12_2 * L7_2
  L11_2 = L11_2 - L12_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L6_2 = L8_2
  L8_2 = L88_1
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L6_2 = L8_2
  L8_2 = L88_1
  L9_2 = L89_1
  L10_2 = L6_2
  L11_2 = A2_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2, L11_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = SetEntityMatrix
  L10_2 = A0_2
  L11_2 = L8_2.x
  L12_2 = L8_2.y
  L13_2 = L8_2.z
  L14_2 = L6_2.x
  L15_2 = L6_2.y
  L16_2 = L6_2.z
  L17_2 = A2_2.x
  L18_2 = A2_2.y
  L19_2 = A2_2.z
  L20_2 = A1_2.x
  L21_2 = A1_2.y
  L22_2 = A1_2.z
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = L85_1
  if L9_2 then
    L9_2 = DrawLine
    L10_2 = A1_2.x
    L11_2 = A1_2.y
    L12_2 = A1_2.z
    L12_2 = L12_2 + 0.03
    L13_2 = A1_2.x
    L14_2 = L6_2.x
    L14_2 = L14_2 * 0.5
    L13_2 = L13_2 + L14_2
    L14_2 = A1_2.y
    L15_2 = L6_2.y
    L15_2 = L15_2 * 0.5
    L14_2 = L14_2 + L15_2
    L15_2 = A1_2.z
    L16_2 = L6_2.z
    L16_2 = L16_2 * 0.5
    L15_2 = L15_2 + L16_2
    L15_2 = L15_2 + 0.03
    L16_2 = 0
    L17_2 = 100
    L18_2 = 255
    L19_2 = 255
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
end
function L95_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = 0.0
    L1_3 = GetEntityCoords
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    L2_3 = GetEntityHeading
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = 0
    L4_3 = A1_2
    L4_3 = L4_3 * 0.85
    while true do
      L5_3 = DoesEntityExist
      L6_3 = A0_2
      L5_3 = L5_3(L6_3)
      if not L5_3 then
        break
      end
      L5_3 = A1_2
      if not (L0_3 < L5_3) then
        break
      end
      L5_3 = Wait
      L6_3 = 0
      L5_3(L6_3)
      L5_3 = GetFrameTime
      L5_3 = L5_3()
      L6_3 = 0.05
      if L5_3 > L6_3 then
        L5_3 = 0.05
      end
      L6_3 = GetEntityCoords
      L7_3 = A0_2
      L6_3 = L6_3(L7_3)
      L7_3 = PlayerPedId
      L7_3 = L7_3()
      L8_3 = GetEntityCoords
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      L9_3 = L6_3.x
      L10_3 = L8_3.x
      L9_3 = L9_3 - L10_3
      L10_3 = L6_3.y
      L11_3 = L8_3.y
      L10_3 = L10_3 - L11_3
      L11_3 = math
      L11_3 = L11_3.sqrt
      L12_3 = L9_3 * L9_3
      L13_3 = L10_3 * L10_3
      L12_3 = L12_3 + L13_3
      L11_3 = L11_3(L12_3)
      L12_3 = A3_2
      if not L12_3 then
        L12_3 = 1.5
        if not (L11_3 < L12_3) then
          goto lbl_87
        end
      end
      L12_3 = math
      L12_3 = L12_3.sqrt
      L13_3 = L9_3 * L9_3
      L14_3 = L10_3 * L10_3
      L13_3 = L13_3 + L14_3
      L12_3 = L12_3(L13_3)
      L13_3 = 0.001
      if L12_3 > L13_3 then
        L13_3 = L9_3 / L12_3
        L14_3 = L10_3 / L12_3
        L15_3 = GetHeadingFromVector_2d
        L16_3 = L13_3
        L17_3 = L14_3
        L15_3 = L15_3(L16_3, L17_3)
        L2_3 = L15_3
      end
      ::lbl_87::
      L12_3 = math
      L12_3 = L12_3.rad
      L13_3 = L2_3
      L12_3 = L12_3(L13_3)
      L13_3 = vector3
      L14_3 = math
      L14_3 = L14_3.sin
      L15_3 = L12_3
      L14_3 = L14_3(L15_3)
      L14_3 = -L14_3
      L15_3 = math
      L15_3 = L15_3.cos
      L16_3 = L12_3
      L15_3 = L15_3(L16_3)
      L16_3 = 0.0
      L13_3 = L13_3(L14_3, L15_3, L16_3)
      L14_3 = A2_2
      L14_3 = L14_3 * L5_3
      L15_3 = vector3
      L16_3 = L6_3.x
      L17_3 = L13_3.x
      L17_3 = L17_3 * L14_3
      L16_3 = L16_3 + L17_3
      L17_3 = L6_3.y
      L18_3 = L13_3.y
      L18_3 = L18_3 * L14_3
      L17_3 = L17_3 + L18_3
      L18_3 = L6_3.z
      L15_3 = L15_3(L16_3, L17_3, L18_3)
      L16_3 = L85_1
      if L16_3 then
        L16_3 = DrawLine
        L17_3 = L6_3.x
        L18_3 = L6_3.y
        L19_3 = L6_3.z
        L19_3 = L19_3 + 0.08
        L20_3 = L6_3.x
        L21_3 = L13_3.x
        L21_3 = L21_3 * 0.7
        L20_3 = L20_3 + L21_3
        L21_3 = L6_3.y
        L22_3 = L13_3.y
        L22_3 = L22_3 * 0.7
        L21_3 = L21_3 + L22_3
        L22_3 = L6_3.z
        L22_3 = L22_3 + 0.08
        L23_3 = 0
        L24_3 = 255
        L25_3 = 0
        L26_3 = 255
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
        L16_3 = L90_1
        L17_3 = vector3
        L18_3 = 0.0
        L19_3 = 0.0
        L20_3 = 0.2
        L17_3 = L17_3(L18_3, L19_3, L20_3)
        L17_3 = L6_3 + L17_3
        L18_3 = "H %.1f"
        L19_3 = L18_3
        L18_3 = L18_3.format
        L20_3 = L2_3
        L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L18_3(L19_3, L20_3)
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
      end
      L16_3 = L93_1
      L17_3 = A0_2
      L18_3 = L15_3
      L16_3, L17_3, L18_3 = L16_3(L17_3, L18_3)
      if L16_3 then
        L19_3 = DoesEntityExist
        L20_3 = A0_2
        L19_3 = L19_3(L20_3)
        if L19_3 then
          L3_3 = 0
          L19_3 = 0.0
          L20_3 = A3_2
          if L20_3 and L0_3 > L4_3 then
            L20_3 = L0_3 - L4_3
            L21_3 = A1_2
            L21_3 = L21_3 - L4_3
            L20_3 = L20_3 / L21_3
            L21_3 = math
            L21_3 = L21_3.min
            L22_3 = 1.0
            L23_3 = math
            L23_3 = L23_3.max
            L24_3 = 0.0
            L25_3 = L20_3
            L23_3, L24_3, L25_3, L26_3 = L23_3(L24_3, L25_3)
            L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3, L26_3)
            L20_3 = L21_3
            L19_3 = L20_3 * 0.6
          end
          L20_3 = vector3
          L21_3 = L17_3.x
          L22_3 = L17_3.y
          L23_3 = L17_3.z
          L23_3 = L23_3 + 0.015
          L23_3 = L23_3 - L19_3
          L20_3 = L20_3(L21_3, L22_3, L23_3)
          L21_3 = L94_1
          L22_3 = A0_2
          L23_3 = L20_3
          L24_3 = L18_3
          L25_3 = L2_3
          L21_3(L22_3, L23_3, L24_3, L25_3)
          L21_3 = L20_3.x
          L22_3 = L1_3.x
          L21_3 = L21_3 - L22_3
          L22_3 = L20_3.y
          L23_3 = L1_3.y
          L22_3 = L22_3 - L23_3
          L23_3 = math
          L23_3 = L23_3.sqrt
          L24_3 = L21_3 * L21_3
          L25_3 = L22_3 * L22_3
          L24_3 = L24_3 + L25_3
          L23_3 = L23_3(L24_3)
          L0_3 = L0_3 + L23_3
          L1_3 = L20_3
      end
      else
        L3_3 = L3_3 + 50
        L19_3 = L85_1
        if L19_3 then
          L19_3 = print
          L20_3 = "^1[SPIDER]^7 NO GROUND |"
          L21_3 = A0_2
          L22_3 = L15_3
          L23_3 = "TIME:"
          L24_3 = L3_3
          L19_3(L20_3, L21_3, L22_3, L23_3, L24_3)
        end
        L19_3 = 1000
        if L3_3 >= L19_3 then
          L19_3 = L85_1
          if L19_3 then
            L19_3 = print
            L20_3 = "^3[SPIDER]^7 NO GROUND TIMEOUT |"
            L21_3 = A0_2
            L19_3(L20_3, L21_3)
          end
          break
        end
        L19_3 = Wait
        L20_3 = 50
        L19_3(L20_3)
      end
    end
    L5_3 = DoesEntityExist
    L6_3 = A0_2
    L5_3 = L5_3(L6_3)
    if L5_3 then
      L5_3 = SetEntityAsMissionEntity
      L6_3 = A0_2
      L7_3 = true
      L8_3 = true
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = DeleteEntity
      L6_3 = A0_2
      L5_3(L6_3)
    end
    L6_3 = A0_2
    L5_3 = L83_1
    L5_3[L6_3] = nil
  end
  L4_2(L5_2)
end
function L96_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3
    L0_3 = DoesEntityExist
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = nil
    L2_3 = 0
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L0_4 = GetEntityCoords
      L1_4 = L0_3
      L0_4 = L0_4(L1_4)
      L1_4 = math
      L1_4 = L1_4.random
      L1_4 = L1_4()
      L2_4 = math
      L2_4 = L2_4.pi
      L1_4 = L1_4 * L2_4
      L1_4 = L1_4 * 2.0
      L2_4 = math
      L2_4 = L2_4.random
      L2_4 = L2_4()
      L2_4 = L2_4 * 2.5
      L2_4 = 1.5 + L2_4
      L3_4 = vector3
      L4_4 = L0_4.x
      L5_4 = math
      L5_4 = L5_4.cos
      L6_4 = L1_4
      L5_4 = L5_4(L6_4)
      L5_4 = L5_4 * L2_4
      L4_4 = L4_4 + L5_4
      L5_4 = L0_4.y
      L6_4 = math
      L6_4 = L6_4.sin
      L7_4 = L1_4
      L6_4 = L6_4(L7_4)
      L6_4 = L6_4 * L2_4
      L5_4 = L5_4 + L6_4
      L6_4 = L0_4.z
      L3_4 = L3_4(L4_4, L5_4, L6_4)
      L1_3 = L3_4
      L3_4 = GetGameTimer
      L3_4 = L3_4()
      L4_4 = math
      L4_4 = L4_4.random
      L5_4 = 1500
      L6_4 = 3500
      L4_4 = L4_4(L5_4, L6_4)
      L3_4 = L3_4 + L4_4
      L2_3 = L3_4
    end
    L4_3 = L3_3
    L4_3()
    while true do
      L4_3 = A0_2
      if not L4_3 then
        break
      end
      L4_3 = A0_2
      if 0 == L4_3 then
        break
      end
      L4_3 = DoesEntityExist
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        break
      end
      L5_3 = A0_2
      L4_3 = L83_1
      L4_3 = L4_3[L5_3]
      if L4_3 then
        break
      end
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
      L4_3 = A0_2
      if not L4_3 then
        break
      end
      L4_3 = A0_2
      if 0 == L4_3 then
        break
      end
      L4_3 = DoesEntityExist
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        break
      end
      L5_3 = A0_2
      L4_3 = L83_1
      L4_3 = L4_3[L5_3]
      if L4_3 then
        break
      end
      L5_3 = A0_2
      L4_3 = L83_1
      L4_3 = L4_3[L5_3]
      if L4_3 then
        break
      end
      L4_3 = DoesEntityExist
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      if not L4_3 then
        break
      end
      L4_3 = GetFrameTime
      L4_3 = L4_3()
      L5_3 = 0.05
      if L4_3 > L5_3 then
        L4_3 = 0.05
      end
      L5_3 = GetEntityCoords
      L6_3 = A0_2
      L5_3 = L5_3(L6_3)
      L6_3 = GetEntityCoords
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      L7_3 = L5_3 - L6_3
      L7_3 = #L7_3
      L8_3 = vector2
      L9_3 = L5_3.x
      L10_3 = L5_3.y
      L8_3 = L8_3(L9_3, L10_3)
      L9_3 = vector2
      L10_3 = L1_3.x
      L11_3 = L1_3.y
      L9_3 = L9_3(L10_3, L11_3)
      L8_3 = L8_3 - L9_3
      L8_3 = #L8_3
      L9_3 = 0.35
      if not (L8_3 < L9_3) then
        L9_3 = GetGameTimer
        L9_3 = L9_3()
        if not (L2_3 < L9_3) then
          goto lbl_94
        end
      end
      L9_3 = L3_3
      L9_3()
      ::lbl_94::
      L9_3 = vector2
      L10_3 = L1_3.x
      L11_3 = L1_3.y
      L9_3 = L9_3(L10_3, L11_3)
      L10_3 = vector2
      L11_3 = L6_3.x
      L12_3 = L6_3.y
      L10_3 = L10_3(L11_3, L12_3)
      L9_3 = L9_3 - L10_3
      L9_3 = #L9_3
      if L9_3 > 5.0 then
        L10_3 = L3_3
        L10_3()
      end
      if L7_3 > 6.0 then
        L10_3 = math
        L10_3 = L10_3.random
        L10_3 = L10_3()
        L11_3 = math
        L11_3 = L11_3.pi
        L10_3 = L10_3 * L11_3
        L10_3 = L10_3 * 2.0
        L11_3 = math
        L11_3 = L11_3.random
        L11_3 = L11_3()
        L11_3 = L11_3 * 1.0
        L11_3 = 0.8 + L11_3
        L12_3 = vector3
        L13_3 = L6_3.x
        L14_3 = math
        L14_3 = L14_3.cos
        L15_3 = L10_3
        L14_3 = L14_3(L15_3)
        L14_3 = L14_3 * L11_3
        L13_3 = L13_3 + L14_3
        L14_3 = L6_3.y
        L15_3 = math
        L15_3 = L15_3.sin
        L16_3 = L10_3
        L15_3 = L15_3(L16_3)
        L15_3 = L15_3 * L11_3
        L14_3 = L14_3 + L15_3
        L15_3 = L6_3.z
        L12_3 = L12_3(L13_3, L14_3, L15_3)
        L1_3 = L12_3
        L12_3 = GetGameTimer
        L12_3 = L12_3()
        L2_3 = L12_3 + 1500
      end
      L10_3 = L1_3.x
      L11_3 = L5_3.x
      L10_3 = L10_3 - L11_3
      L11_3 = L1_3.y
      L12_3 = L5_3.y
      L11_3 = L11_3 - L12_3
      L12_3 = math
      L12_3 = L12_3.sqrt
      L13_3 = L10_3 * L10_3
      L14_3 = L11_3 * L11_3
      L13_3 = L13_3 + L14_3
      L12_3 = L12_3(L13_3)
      L13_3 = 0.001
      if L12_3 > L13_3 then
        L13_3 = L10_3 / L12_3
        L14_3 = L11_3 / L12_3
        L15_3 = GetHeadingFromVector_2d
        L16_3 = L13_3
        L17_3 = L14_3
        L15_3 = L15_3(L16_3, L17_3)
        L16_3 = A1_2
        L16_3 = L16_3 * L4_3
        if L7_3 > 4.0 then
          L16_3 = L16_3 * 1.5
        end
        L17_3 = vector3
        L18_3 = L5_3.x
        L19_3 = L13_3 * L16_3
        L18_3 = L18_3 + L19_3
        L19_3 = L5_3.y
        L20_3 = L14_3 * L16_3
        L19_3 = L19_3 + L20_3
        L20_3 = L5_3.z
        L17_3 = L17_3(L18_3, L19_3, L20_3)
        L18_3 = L85_1
        if L18_3 then
          L18_3 = DrawLine
          L19_3 = L5_3.x
          L20_3 = L5_3.y
          L21_3 = L5_3.z
          L21_3 = L21_3 + 0.08
          L22_3 = L1_3.x
          L23_3 = L1_3.y
          L24_3 = L1_3.z
          L24_3 = L24_3 + 0.08
          L25_3 = 0
          L26_3 = 255
          L27_3 = 0
          L28_3 = 255
          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
          L18_3 = DrawMarker
          L19_3 = 28
          L20_3 = L1_3.x
          L21_3 = L1_3.y
          L22_3 = L1_3.z
          L22_3 = L22_3 + 0.05
          L23_3 = 0.0
          L24_3 = 0.0
          L25_3 = 0.0
          L26_3 = 0.0
          L27_3 = 0.0
          L28_3 = 0.0
          L29_3 = 0.06
          L30_3 = 0.06
          L31_3 = 0.06
          L32_3 = 255
          L33_3 = 0
          L34_3 = 0
          L35_3 = 255
          L36_3 = false
          L37_3 = false
          L38_3 = 2
          L39_3 = false
          L40_3 = nil
          L41_3 = nil
          L42_3 = false
          L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3, L41_3, L42_3)
        end
        L18_3 = L93_1
        L19_3 = A0_2
        L20_3 = L17_3
        L18_3, L19_3, L20_3 = L18_3(L19_3, L20_3)
        if L18_3 then
          L22_3 = A0_2
          L21_3 = L83_1
          L21_3 = L21_3[L22_3]
          if not L21_3 then
            L21_3 = DoesEntityExist
            L22_3 = A0_2
            L21_3 = L21_3(L22_3)
            if L21_3 then
              L21_3 = vector3
              L22_3 = L19_3.x
              L23_3 = L19_3.y
              L24_3 = L19_3.z
              L24_3 = L24_3 + 0.015
              L21_3 = L21_3(L22_3, L23_3, L24_3)
              L22_3 = L94_1
              L23_3 = A0_2
              L24_3 = L21_3
              L25_3 = L20_3
              L26_3 = L15_3
              L22_3(L23_3, L24_3, L25_3, L26_3)
            end
          end
        end
      end
    end
  end
  L2_2(L3_2)
end
L97_1 = false
L98_1 = false
L99_1 = _ENV
L100_1 = "RagnettiMovement2"
function L101_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L97_1
  if L1_2 then
    L1_2 = print
    L2_2 = "Spider antiflood"
    L1_2(L2_2)
    return
  end
  L1_2 = L87_1
  L1_2 = #L1_2
  if L1_2 > 0 then
    L1_2 = true
    L97_1 = L1_2
    L1_2 = false
    L98_1 = L1_2
    L1_2 = true
    L84_1 = L1_2
    L1_2 = {}
    L2_2 = ipairs
    L3_2 = L87_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if L7_2 then
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = L83_1
          L8_2[L7_2] = true
          L8_2 = #L1_2
          L8_2 = L8_2 + 1
          L1_2[L8_2] = L7_2
        end
      end
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = ipairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = L95_1
        L9_2 = L7_2
        L10_2 = 7.5
        L11_2 = 2.2
        L12_2 = true
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
    end
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L0_3 = L0_3 + 10000
      while true do
        L1_3 = L1_2
        L1_3 = #L1_3
        if not (L1_3 > 0) then
          break
        end
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if not (L0_3 > L1_3) then
          break
        end
        L1_3 = Wait
        L2_3 = 250
        L1_3(L2_3)
        L1_3 = L1_2
        L1_3 = #L1_3
        L2_3 = 1
        L3_3 = -1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = L1_2
          L5_3 = L5_3[L4_3]
          if L5_3 then
            L6_3 = DoesEntityExist
            L7_3 = L5_3
            L6_3 = L6_3(L7_3)
            if L6_3 then
              goto lbl_37
            end
          end
          L6_3 = L83_1
          L6_3[L5_3] = nil
          L6_3 = table
          L6_3 = L6_3.remove
          L7_3 = L1_2
          L8_3 = L4_3
          L6_3(L7_3, L8_3)
          ::lbl_37::
        end
      end
      L1_3 = ipairs
      L2_3 = L1_2
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        if L6_3 then
          L7_3 = DoesEntityExist
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          if L7_3 then
            L7_3 = SetEntityAsMissionEntity
            L8_3 = L6_3
            L9_3 = true
            L10_3 = true
            L7_3(L8_3, L9_3, L10_3)
            L7_3 = DeleteEntity
            L8_3 = L6_3
            L7_3(L8_3)
          end
        end
        L7_3 = L83_1
        L7_3[L6_3] = nil
      end
      L1_3 = ipairs
      L2_3 = L87_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L83_1
        L7_3[L6_3] = nil
      end
      L1_3 = {}
      L87_1 = L1_3
      L1_3 = false
      L84_1 = L1_3
      L1_3 = false
      L97_1 = L1_3
      L1_3 = print
      L2_3 = "^2[SPIDER]^7 Cleanup completato"
      L1_3(L2_3)
    end
    L2_2(L3_2)
    return
  end
  L1_2 = true
  L97_1 = L1_2
  L1_2 = false
  L84_1 = L1_2
  L1_2 = true
  L98_1 = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = A0_2
    if not L1_3 then
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
    end
    L2_3 = "alezlab_ragnop"
    L3_3 = GetHashKey
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = "alezlab_ragnop@animation"
    L5_3 = "alezlab_ragnop_corsa"
    L6_3 = RequestAnimDict
    L7_3 = L4_3
    L6_3(L7_3)
    L6_3 = GetGameTimer
    L6_3 = L6_3()
    while true do
      L7_3 = HasAnimDictLoaded
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        break
      end
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      L7_3 = L7_3 - L6_3
      L8_3 = 3000
      if not (L7_3 < L8_3) then
        break
      end
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L7_3 = HasAnimDictLoaded
    L8_3 = L4_3
    L7_3 = L7_3(L8_3)
    if not L7_3 then
      L7_3 = print
      L8_3 = "^1[SPIDER]^7 AnimDict non caricato"
      L7_3(L8_3)
      L7_3 = false
      L97_1 = L7_3
      L7_3 = false
      L98_1 = L7_3
      return
    end
    L7_3 = RequestModelStriano
    L8_3 = L3_3
    L7_3(L8_3)
    L7_3 = 1
    L8_3 = 10
    L9_3 = 1
    for L10_3 = L7_3, L8_3, L9_3 do
      L11_3 = L98_1
      if not L11_3 then
        break
      end
      L11_3 = math
      L11_3 = L11_3.random
      L11_3 = L11_3()
      L12_3 = math
      L12_3 = L12_3.pi
      L11_3 = L11_3 * L12_3
      L11_3 = L11_3 * 2.0
      L12_3 = math
      L12_3 = L12_3.random
      L12_3 = L12_3()
      L12_3 = L12_3 * 0.3
      L12_3 = 0.7 + L12_3
      L13_3 = vector3
      L14_3 = L1_3.x
      L15_3 = math
      L15_3 = L15_3.cos
      L16_3 = L11_3
      L15_3 = L15_3(L16_3)
      L15_3 = L15_3 * L12_3
      L14_3 = L14_3 + L15_3
      L15_3 = L1_3.y
      L16_3 = math
      L16_3 = L16_3.sin
      L17_3 = L11_3
      L16_3 = L16_3(L17_3)
      L16_3 = L16_3 * L12_3
      L15_3 = L15_3 + L16_3
      L16_3 = L1_3.z
      L16_3 = L16_3 - 0.9
      L13_3 = L13_3(L14_3, L15_3, L16_3)
      L14_3 = CreateObject
      L15_3 = L3_3
      L16_3 = L13_3.x
      L17_3 = L13_3.y
      L18_3 = L13_3.z
      L19_3 = false
      L20_3 = false
      L21_3 = false
      L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
      if L14_3 and 0 ~= L14_3 then
        L15_3 = DoesEntityExist
        L16_3 = L14_3
        L15_3 = L15_3(L16_3)
        if L15_3 then
          L15_3 = SetEntityNoCollisionEntity
          L16_3 = L14_3
          L17_3 = L0_3
          L18_3 = true
          L15_3(L16_3, L17_3, L18_3)
          L15_3 = SetEntityNoCollisionEntity
          L16_3 = L0_3
          L17_3 = L14_3
          L18_3 = true
          L15_3(L16_3, L17_3, L18_3)
          L15_3 = math
          L15_3 = L15_3.random
          L16_3 = 1
          L17_3 = 359
          L15_3 = L15_3(L16_3, L17_3)
          L15_3 = L15_3 - 180.0
          L15_3 = L15_3 % 360.0
          L16_3 = SetEntityHeading
          L17_3 = L14_3
          L18_3 = L15_3
          L16_3(L17_3, L18_3)
          L16_3 = L87_1
          L16_3 = #L16_3
          L17_3 = L16_3 + 1
          L16_3 = L87_1
          L16_3[L17_3] = L14_3
          L16_3 = L83_1
          L16_3[L14_3] = nil
          L16_3 = PlayEntityAnim
          L17_3 = L14_3
          L18_3 = L5_3
          L19_3 = L4_3
          L20_3 = 1.0
          L21_3 = true
          L22_3 = false
          L23_3 = false
          L24_3 = 0.0
          L25_3 = 1
          L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
          L16_3 = Wait
          L17_3 = 25
          L16_3(L17_3)
          L16_3 = DoesEntityExist
          L17_3 = L14_3
          L16_3 = L16_3(L17_3)
          if L16_3 then
            L16_3 = SetEntityAnimSpeed
            L17_3 = L14_3
            L18_3 = L4_3
            L19_3 = L5_3
            L20_3 = 2.1
            L16_3(L17_3, L18_3, L19_3, L20_3)
            L16_3 = L96_1
            L17_3 = L14_3
            L18_3 = 1.3
            L16_3(L17_3, L18_3)
          end
        end
      end
    end
    L7_3 = SetModelAsNoLongerNeeded
    L8_3 = L3_3
    L7_3(L8_3)
    L7_3 = RemoveAnimDict
    L8_3 = L4_3
    L7_3(L8_3)
    L7_3 = false
    L97_1 = L7_3
  end
  L1_2(L2_2)
end
L99_1[L100_1] = L101_1
L99_1 = RegisterCommand
L100_1 = "testRagnetti"
function L101_1()
  local L0_2, L1_2
  L0_2 = RagnettiMovement2
  L0_2()
end
L99_1(L100_1, L101_1)
L99_1 = 0
L100_1 = {}
L101_1 = {}
L102_1 = "a"
L103_1 = _ENV
L104_1 = "vector3"
L103_1 = L103_1[L104_1]
L104_1 = 3943.495
L105_1 = 4889.385
L106_1 = 30.107
L103_1 = L103_1(L104_1, L105_1, L106_1)
L101_1[L102_1] = L103_1
L102_1 = "b"
L103_1 = _ENV
L104_1 = "vector3"
L103_1 = L103_1[L104_1]
L104_1 = 0.0
L105_1 = 0.0
L106_1 = -180.0
L103_1 = L103_1(L104_1, L105_1, L106_1)
L101_1[L102_1] = L103_1
L102_1 = {}
L103_1 = "a"
L104_1 = _ENV
L105_1 = "vector3"
L104_1 = L104_1[L105_1]
L105_1 = 3955.194
L106_1 = 4887.184
L107_1 = 24.918
L104_1 = L104_1(L105_1, L106_1, L107_1)
L102_1[L103_1] = L104_1
L103_1 = "b"
L104_1 = _ENV
L105_1 = "vector3"
L104_1 = L104_1[L105_1]
L105_1 = 0.0
L106_1 = 0.0
L107_1 = -180.0
L104_1 = L104_1(L105_1, L106_1, L107_1)
L102_1[L103_1] = L104_1
L103_1 = {}
L104_1 = "a"
L105_1 = _ENV
L106_1 = "vector3"
L105_1 = L105_1[L106_1]
L106_1 = 3943.9
L107_1 = 4889.587
L108_1 = 29.068
L105_1 = L105_1(L106_1, L107_1, L108_1)
L103_1[L104_1] = L105_1
L104_1 = "b"
L105_1 = _ENV
L106_1 = "vector3"
L105_1 = L105_1[L106_1]
L106_1 = 0.0
L107_1 = 0.0
L108_1 = -180.0
L105_1 = L105_1(L106_1, L107_1, L108_1)
L103_1[L104_1] = L105_1
L100_1[1] = L101_1
L100_1[2] = L102_1
L100_1[3] = L103_1
L101_1 = _ENV
L102_1 = "LoopLuciSurv"
function L103_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    while true do
      L0_3 = 1
      L1_3 = L100_1
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = L100_1
        L4_3 = L4_3[L3_3]
        L5_3 = L4_3.a
        L6_3 = GetEntityCoords
        L7_3 = PlayerPedId
        L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3 = L7_3()
        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        L6_3 = L5_3 - L6_3
        L6_3 = #L6_3
        if L6_3 < 30.0 then
          L6_3 = DrawSpotLightWithShadow
          L7_3 = L5_3.x
          L8_3 = L5_3.y
          L9_3 = L5_3.z
          L9_3 = L9_3 - 0.15
          L10_3 = L4_3.b
          L10_3 = L10_3.x
          L11_3 = L4_3.b
          L11_3 = L11_3.y
          L12_3 = L4_3.b
          L12_3 = L12_3.z
          L13_3 = 255
          L14_3 = 255
          L15_3 = 190
          L16_3 = 7.0
          L17_3 = 0.02
          L18_3 = 0.3
          L19_3 = 30.0
          L20_3 = 10.0
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
          L6_3 = DrawLightWithRange
          L7_3 = L5_3.x
          L8_3 = L5_3.y
          L9_3 = L5_3.z
          L9_3 = L9_3 - 0.15
          L10_3 = 255
          L11_3 = 255
          L12_3 = 190
          L13_3 = 0.22
          L14_3 = 0.02
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        end
      end
      L0_3 = Wait
      L1_3 = math
      L1_3 = L1_3.random
      L2_3 = 25
      L3_3 = 150
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3 = L1_3(L2_3, L3_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
      L0_3 = L99_1
      if L0_3 < 10 then
        L0_3 = L99_1
        L0_3 = L0_3 + 1
        L99_1 = L0_3
      else
        L0_3 = Wait
        L1_3 = math
        L1_3 = L1_3.random
        L2_3 = 500
        L3_3 = 1500
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3 = L1_3(L2_3, L3_3)
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
        L0_3 = 0
        L99_1 = L0_3
      end
    end
  end
  L0_2(L1_2)
end
L101_1[L102_1] = L103_1
L101_1 = nil
L102_1 = _ENV
L103_1 = "ADVTut"
function L104_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = L101_1
  if nil == L0_2 then
    L0_2 = GetGamePool
    L1_2 = "CObject"
    L0_2 = L0_2(L1_2)
    L1_2 = ipairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = GetEntityCoords
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = GetEntityModel
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetHashKey
      L10_2 = "dogmapanel"
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        L8_2 = GetEntityCoords
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2()
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L8_2 = L7_2 - L8_2
        L8_2 = #L8_2
        if L8_2 < 25.0 then
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L6_2
          L8_2(L9_2)
          L8_2 = DeleteEntity
          L9_2 = L6_2
          L8_2(L9_2)
        end
      end
    end
    L1_2 = table
    L1_2 = L1_2.unpack
    L2_2 = vector3
    L3_2 = -987.71765136719
    L4_2 = -6897.3271484375
    L5_2 = 7.0554027557373
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L4_2 = vector3
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = vector3
    L6_2 = -179.99998474121
    L7_2 = -5.0089556680177E-6
    L8_2 = 25.500804901123
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = RequestModelStriano
    L7_2 = GetHashKey
    L8_2 = "dogmapanel"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L6_2 = CreateObject
    L7_2 = GetHashKey
    L8_2 = "dogmapanel"
    L7_2 = L7_2(L8_2)
    L8_2 = L4_2
    L9_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L101_1 = L6_2
    while true do
      L6_2 = DoesEntityExist
      L7_2 = L101_1
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
    L6_2 = SetEntityRotation
    L7_2 = L101_1
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = "fallingpanel@animation"
    L7_2 = "fallingpanel"
    L8_2 = RequestAnimDict
    L9_2 = L6_2
    L8_2(L9_2)
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    while true do
      L9_2 = HasAnimDictLoaded
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      L9_2 = L9_2 - L8_2
      L10_2 = 1500
      if not (L9_2 < L10_2) then
        break
      end
      L9_2 = Wait
      L10_2 = 0
      L9_2(L10_2)
    end
    L9_2 = PlayerPedId
    L9_2 = L9_2()
    while true do
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = vector3
      L12_2 = 3948.881
      L13_2 = 4891.258
      L14_2 = 28.149
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2 = L10_2 - L11_2
      L10_2 = #L10_2
      if not (L10_2 > 2.0) then
        break
      end
      L10_2 = Wait
      L11_2 = 0
      L10_2(L11_2)
    end
    L10_2 = SetCurrentPedWeapon
    L11_2 = L9_2
    L12_2 = -1569615261
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = "sounds/rusty"
    L11_2 = L10_2
    L12_2 = ".mp3"
    L11_2 = L11_2 .. L12_2
    L12_2 = exports
    L12_2 = L12_2.xsound
    L13_2 = L12_2
    L12_2 = L12_2.PlayUrl
    L14_2 = L10_2
    L15_2 = L11_2
    L16_2 = exports
    L16_2 = L16_2.striano_combat
    L17_2 = L16_2
    L16_2 = L16_2.GetSFXVolume
    L18_2 = 0.3
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L16_2(L17_2, L18_2)
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L12_2 = FreezaCam
    L13_2 = true
    L14_2 = 500
    L12_2(L13_2, L14_2)
    L12_2 = SetEntityHeading
    L13_2 = L9_2
    L14_2 = 110.0
    L12_2(L13_2, L14_2)
    L12_2 = Wait
    L13_2 = 1000
    L12_2(L13_2)
    L12_2 = faiAnim
    L13_2 = "missfbi4"
    L14_2 = "push_agents_agent1"
    L15_2 = 3500
    L16_2 = 49
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = BloccaAnim
    L13_2 = "missfbi4"
    L14_2 = "push_agents_agent1"
    L12_2(L13_2, L14_2)
    L12_2 = Wait
    L13_2 = 350
    L12_2(L13_2)
    L12_2 = PlayEffectTutorial
    L13_2 = "core"
    L14_2 = "ent_amb_foundry_dust"
    L15_2 = vector3
    L16_2 = 3943.821
    L17_2 = 4889.332
    L18_2 = 26.534
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L16_2 = 0.7
    L17_2 = vector3
    L18_2 = 0.0
    L19_2 = 0.0
    L20_2 = 0.0
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2(L18_2, L19_2, L20_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L13_2 = PlayEntityAnim
    L14_2 = L101_1
    L15_2 = L7_2
    L16_2 = L6_2
    L17_2 = 1.0
    L18_2 = true
    L19_2 = false
    L20_2 = false
    L21_2 = 0.0
    L22_2 = 1
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L13_2 = "sounds/striano_combat/magic/bass1"
    L14_2 = L13_2
    L15_2 = ".mp3"
    L14_2 = L14_2 .. L15_2
    L15_2 = exports
    L15_2 = L15_2.xsound
    L16_2 = L15_2
    L15_2 = L15_2.PlayUrl
    L17_2 = L13_2
    L18_2 = L14_2
    L19_2 = exports
    L19_2 = L19_2.striano_combat
    L20_2 = L19_2
    L19_2 = L19_2.GetSFXVolume
    L21_2 = 0.3
    L19_2, L20_2, L21_2, L22_2, L23_2 = L19_2(L20_2, L21_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L15_2 = Wait
    L16_2 = 150
    L15_2(L16_2)
    L15_2 = PlayEffectTutorial
    L16_2 = "core"
    L17_2 = "ent_col_gen_tree_dust"
    L18_2 = vector3
    L19_2 = L1_2
    L20_2 = L2_2
    L21_2 = L3_2 - 0.2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = 1.5
    L20_2 = vector3
    L21_2 = 0.0
    L22_2 = 0.0
    L23_2 = 0.0
    L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2, L22_2, L23_2)
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L16_2 = Wait
    L17_2 = 1500
    L16_2(L17_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L12_2
    L18_2 = 0
    L16_2(L17_2, L18_2)
    L16_2 = RemoveParticleFx
    L17_2 = L12_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 1500
    L16_2(L17_2)
    L16_2 = stopMusic
    L17_2 = L10_2
    L18_2 = 1000
    L16_2(L17_2, L18_2)
    L16_2 = Wait
    L17_2 = 150
    L16_2(L17_2)
    L16_2 = SetEntityAnimSpeed
    L17_2 = L101_1
    L18_2 = L6_2
    L19_2 = L7_2
    L20_2 = 0.0
    L16_2(L17_2, L18_2, L19_2, L20_2)
    L16_2 = StopParticleFxLooped
    L17_2 = L15_2
    L18_2 = 0
    L16_2(L17_2, L18_2)
    L16_2 = RemoveParticleFx
    L17_2 = L15_2
    L18_2 = true
    L16_2(L17_2, L18_2)
    L16_2 = SetEntityAsNoLongerNeeded
    L17_2 = L101_1
    L16_2(L17_2)
    L16_2 = nil
    L101_1 = L16_2
    L16_2 = GiveWeaponToPed
    L17_2 = L9_2
    L18_2 = GetHashKey
    L19_2 = "weapon_flashlight"
    L18_2 = L18_2(L19_2)
    L19_2 = 1
    L20_2 = false
    L21_2 = true
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  else
    L0_2 = DoesEntityExist
    L1_2 = L101_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = L101_1
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = L101_1
      L0_2(L1_2)
    end
    L0_2 = nil
    L101_1 = L0_2
  end
end
L102_1[L103_1] = L104_1
L102_1 = RegisterNetEvent
L103_1 = "adv:start"
L102_1(L103_1)
L102_1 = AddEventHandler
L103_1 = "adv:start"
function L104_1()
  local L0_2, L1_2
  L0_2 = ADVTut
  L0_2()
end
L102_1(L103_1, L104_1)
L102_1 = RegisterCommand
L103_1 = "testadv"
function L104_1()
  local L0_2, L1_2
  L0_2 = ADVTut
  L0_2()
end
L102_1(L103_1, L104_1)
L102_1 = _ENV
L103_1 = "ApplicaColoreRandomCavallo"
function L104_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 0
  L3_2 = 15
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = SetPedPreloadVariationData
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = IsPedComponentVariationValid
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 then
    L2_2 = SetPedComponentVariation
    L3_2 = A0_2
    L4_2 = 0
    L5_2 = 0
    L6_2 = L1_2
    L7_2 = 0
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 3
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = GetPedDrawableVariation
  L7_2 = A0_2
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = SetPedPreloadVariationData
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L6_2
  L11_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = IsPedComponentVariationValid
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L6_2
  L11_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if L7_2 then
    L7_2 = SetPedComponentVariation
    L8_2 = A0_2
    L9_2 = L3_2
    L10_2 = L6_2
    L11_2 = L4_2
    L12_2 = L5_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L3_2 = 8
  L4_2 = L2_2
  L5_2 = 0
  L7_2 = GetPedDrawableVariation
  L8_2 = A0_2
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L7_2
  L7_2 = SetPedPreloadVariationData
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L6_2
  L11_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = IsPedComponentVariationValid
  L8_2 = A0_2
  L9_2 = L3_2
  L10_2 = L6_2
  L11_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if L7_2 then
    L7_2 = SetPedComponentVariation
    L8_2 = A0_2
    L9_2 = L3_2
    L10_2 = L6_2
    L11_2 = L4_2
    L12_2 = L5_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L102_1[L103_1] = L104_1
L102_1 = AddEventHandler
L103_1 = "onResourceStop"
function L104_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "stopmusic"
    L1_2(L2_2)
    L1_2 = 1
    L2_2 = L37_1
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetEntityAsMissionEntity
      L6_2 = L37_1
      L6_2 = L6_2[L4_2]
      L5_2(L6_2)
      L5_2 = DeleteEntity
      L6_2 = L37_1
      L6_2 = L6_2[L4_2]
      L5_2(L6_2)
    end
    L1_2 = ipairs
    L2_2 = L87_1
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
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
    L1_2 = SetEntityAsMissionEntity
    L2_2 = PedTutorial
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = DeleteEntity
    L2_2 = PedTutorial
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = AnnullaIncaricoSub
    L1_2()
    L1_2 = L26_1
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L26_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L26_1
      L1_2(L2_2)
    end
    L1_2 = L27_1
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L27_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L27_1
      L1_2(L2_2)
    end
    L1_2 = L28_1
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L28_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L28_1
      L1_2(L2_2)
    end
    L1_2 = mostro
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = mostro
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = mostro
      L1_2(L2_2)
    end
    L1_2 = barcaTut
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = barcaTut
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = barcaTut
      L1_2(L2_2)
    end
    L1_2 = troncoTut
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = troncoTut
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = troncoTut
      L1_2(L2_2)
    end
  end
end
L102_1(L103_1, L104_1)
L102_1 = AddEventHandler
L103_1 = "onResourceStart"
function L104_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = ExecuteCommand
    L2_2 = "loadskin"
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    PlayerCaricato = true
    tutorialFatto = true
    introBaseFinita = true
    L1_2 = SetEntityCollision
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = ExecuteCommand
    L2_2 = "stopmusic"
    L1_2(L2_2)
    sonoUnUccello = false
    introBaseFinita = true
  end
end
L102_1(L103_1, L104_1)
L102_1 = _ENV
L103_1 = "introBaseFinita"
L104_1 = false
L102_1[L103_1] = L104_1
L102_1 = _ENV
L103_1 = "IntroMultichar"
function L104_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = DoScreenFadeOut
  L1_2 = 25
  L0_2(L1_2)
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = WaitForPlayerCollision
  L0_2()
  L0_2 = TriggerServerCallback
  L1_2 = "esx_Pharmacy:getVarDB"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3 or nil
    if not A0_3 then
      L1_3 = "M"
    end
    if "M" == L1_3 then
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = true
      L2_3(L3_3, L4_3)
    else
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = false
      L2_3(L3_3, L4_3)
    end
  end
  L3_2 = "sex"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = TriggerServerCallback
  L1_2 = "esx_Pharmacy:getVarDB"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 then
      L1_3 = tonumber
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      MissioneSurv = L1_3
      L1_3 = print
      L2_3 = "mytutorial, detected ID: "
      L3_3 = MissioneSurv
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L3_2 = "mytutorial"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = IsPedHuman
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "setBucketLegacy"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L0_2 = ExecuteCommand
    L1_2 = "clear"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.text_guide
    L1_2 = L0_2
    L0_2 = L0_2.ClearGuideText
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.text_guide
    L1_2 = L0_2
    L0_2 = L0_2.GuidaNascondi
    L0_2(L1_2)
    L0_2 = SetTimecycleModifier
    L1_2 = "heist_boat_norain"
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = FreezeEntityPosition
    L2_2 = L0_2
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submex
    L3_2 = ""
    L1_2(L2_2, L3_2)
    L1_2 = RemoveAllPedWeapons
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ExecuteCommand
    L2_2 = "clearwaypoints"
    L1_2(L2_2)
    L1_2 = "sounds/aposong.mp3"
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.PlayUrl
    L4_2 = "aposong"
    L5_2 = L1_2
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.GetSFXVolume
    L8_2 = 0.04
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = true
    L8_2 = {}
    L8_2.startTime = 96
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = exports
    L2_2 = L2_2.xsound
    L3_2 = L2_2
    L2_2 = L2_2.setTimeStamp
    L4_2 = "aposong"
    L5_2 = 95
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = "FOGGY"
    L3_2 = SetWeatherTypeNowPersist
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = ClearOverrideWeather
    L3_2()
    L3_2 = ClearWeatherTypePersist
    L3_2()
    L3_2 = SetWeatherTypePersist
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetWeatherTypeNow
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetWeatherTypeNowPersist
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = NetworkOverrideClockTime
    L4_2 = 19
    L5_2 = 0
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = SetTimecycleModifier
    L4_2 = "V_FIB_stairs"
    L3_2(L4_2)
    L3_2 = SetTimecycleModifierStrength
    L4_2 = 0.7
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "hudoff"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "hudoff2"
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "loadskin"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = ExecuteCommand
    L4_2 = "hudoff2"
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = disableIK
    L3_2()
    L3_2 = vector3
    L4_2 = 3836.253
    L5_2 = 6438.734
    L6_2 = 0.613
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = RequestCollisionAtCoord
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = FreezeEntityPosition
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityCoords
    L6_2 = L4_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityHeading
    L6_2 = L4_2
    L7_2 = 127.0
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 500
    L5_2(L6_2)
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetEntityCoords
    L7_2 = L5_2
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L6_2 = SetEntityHeading
    L7_2 = L5_2
    L8_2 = 127.0
    L6_2(L7_2, L8_2)
    L6_2 = Wait
    L7_2 = 25
    L6_2(L7_2)
    L6_2 = faiAnim
    L7_2 = "missfam1_yachtbattleonyacht02_"
    L8_2 = "onboom_hangloop_j"
    L9_2 = -1
    L10_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Wait
    L7_2 = 1000
    L6_2(L7_2)
    L6_2 = DestroyAllCams
    L7_2 = true
    L6_2(L7_2)
    L6_2 = FreezaCam
    L7_2 = true
    L8_2 = 100
    L6_2(L7_2, L8_2)
    L6_2 = RenderScriptCams
    L7_2 = false
    L8_2 = true
    L9_2 = 500
    L10_2 = true
    L11_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = DoScreenFadeIn
    L7_2 = 1500
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 225
    L6_2(L7_2)
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.gengrunt
    L6_2(L7_2)
    L6_2 = RenderScriptCams
    L7_2 = false
    L8_2 = false
    L9_2 = 0
    L10_2 = true
    L11_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    while true do
      L6_2 = IsPedFatallyInjured
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = IsPedRagdoll
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = IsDisabledControlPressed
      L7_2 = 0
      L8_2 = 25
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsDisabledControlPressed
      L7_2 = 0
      L8_2 = 24
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 73
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 38
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 33
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 32
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 34
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = IsControlPressed
      L7_2 = 0
      L8_2 = 35
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        break
      end
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
      L6_2 = NetworkOverrideClockTime
      L7_2 = 19
      L8_2 = 0
      L9_2 = 0
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = SetPedCanRagdoll
    L8_2 = L6_2
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = enableIK
    L7_2()
    L7_2 = FreezeEntityPosition
    L8_2 = L6_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = GetEntityModel
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if 1885233650 == L7_2 then
      L7_2 = "sounds/striano_combat/grunt/male/audio_22.mp3"
      L8_2 = exports
      L8_2 = L8_2.xsound
      L9_2 = L8_2
      L8_2 = L8_2.PlayUrl
      L10_2 = "grunt_22"
      L11_2 = L7_2
      L12_2 = exports
      L12_2 = L12_2.striano_combat
      L13_2 = L12_2
      L12_2 = L12_2.GetSFXVolume
      L14_2 = 0.03
      L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L7_2 = "sounds/striano_combat/grunt/female/audio_15.mp3"
      L8_2 = exports
      L8_2 = L8_2.xsound
      L9_2 = L8_2
      L8_2 = L8_2.PlayUrl
      L10_2 = "grunt_f_15"
      L11_2 = L7_2
      L12_2 = exports
      L12_2 = L12_2.striano_combat
      L13_2 = L12_2
      L12_2 = L12_2.GetSFXVolume
      L14_2 = 0.03
      L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    L7_2 = DetachEntity
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = SetPedToRagdoll
    L8_2 = L6_2
    L9_2 = 3000
    L10_2 = 3000
    L11_2 = 0
    L12_2 = 1
    L13_2 = 1
    L14_2 = 1
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = stopMusic
    L8_2 = "aposong"
    L9_2 = 1000
    L7_2(L8_2, L9_2)
    L7_2 = DoScreenFadeOut
    L8_2 = 1000
    L7_2(L8_2)
  end
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "applyCoordLegacy"
  L0_2(L1_2)
  introBaseFinita = true
  L0_2 = TriggerServerEvent
  L1_2 = "setBucketLegacy"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
end
L102_1[L103_1] = L104_1
L102_1 = _ENV
L103_1 = "exports"
L102_1 = L102_1[L103_1]
L103_1 = "introBaseFinita"
function L104_1()
  local L0_2, L1_2
  L0_2 = introBaseFinita
  return L0_2
end
L102_1(L103_1, L104_1)
L102_1 = nil
L103_1 = {}
L104_1 = {}
L105_1 = "label"
L106_1 = "Survivor"
L104_1[L105_1] = L106_1
L105_1 = "clothes"
L106_1 = {}
L107_1 = "mask_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "mask_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "tshirt_1"
L108_1 = 15
L106_1[L107_1] = L108_1
L107_1 = "tshirt_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "torso_1"
L108_1 = 607
L106_1[L107_1] = L108_1
L107_1 = "torso_2"
L108_1 = 1
L106_1[L107_1] = L108_1
L107_1 = "arms"
L106_1[L107_1] = 8
L107_1 = "arms_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "bags_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "bags_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "pants_1"
L106_1[L107_1] = 11
L107_1 = "pants_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "shoes_1"
L108_1 = 98
L106_1[L107_1] = L108_1
L107_1 = "shoes_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "chain_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "chain_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "bproof_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "bproof_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "decals_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "decals_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "helmet_1"
L108_1 = -1
L106_1[L107_1] = L108_1
L107_1 = "helmet_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "glasses_1"
L108_1 = 0
L106_1[L107_1] = L108_1
L107_1 = "glasses_2"
L108_1 = 0
L106_1[L107_1] = L108_1
L104_1[L105_1] = L106_1
L105_1 = {}
L106_1 = "label"
L107_1 = "Survivor 2"
L105_1[L106_1] = L107_1
L106_1 = "clothes"
L107_1 = {}
L108_1 = "mask_1"
L109_1 = 260
L107_1[L108_1] = L109_1
L108_1 = "mask_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "tshirt_1"
L109_1 = 15
L107_1[L108_1] = L109_1
L108_1 = "tshirt_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "torso_1"
L109_1 = 15
L107_1[L108_1] = L109_1
L108_1 = "torso_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "arms"
L109_1 = 15
L107_1[L108_1] = L109_1
L108_1 = "arms_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "bags_1"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "bags_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "pants_1"
L109_1 = 202
L107_1[L108_1] = L109_1
L108_1 = "pants_2"
L109_1 = 2
L107_1[L108_1] = L109_1
L108_1 = "shoes_1"
L109_1 = 27
L107_1[L108_1] = L109_1
L108_1 = "shoes_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "chain_1"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "chain_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "bproof_1"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "bproof_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "decals_1"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "decals_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "helmet_1"
L109_1 = -1
L107_1[L108_1] = L109_1
L108_1 = "helmet_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "glasses_1"
L109_1 = 0
L107_1[L108_1] = L109_1
L108_1 = "glasses_2"
L109_1 = 0
L107_1[L108_1] = L109_1
L105_1[L106_1] = L107_1
L103_1[1] = L104_1
L103_1[2] = L105_1
function L104_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = L102_1
  if nil ~= L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.addMenuItem
    L2_2 = "Previous Skin"
    function L3_2()
      local L0_3, L1_3
      L0_3 = CreateThread
      function L1_3()
        local L0_4, L1_4, L2_4
        L0_4 = TriggerEvent
        L1_4 = "skinchanger:loadSkin"
        L2_4 = L102_1
        L0_4(L1_4, L2_4)
        L0_4 = TriggerEvent
        L1_4 = "SaveMySkin"
        L0_4(L1_4)
        L0_4 = nil
        L102_1 = L0_4
      end
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 75
      L0_3(L1_3)
      L0_3 = ExecuteCommand
      L1_3 = "E indossa2"
      L0_3(L1_3)
    end
    L4_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
  L0_2 = ipairs
  L1_2 = L103_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = exports
    L6_2 = L6_2.striano_fastmenu
    L7_2 = L6_2
    L6_2 = L6_2.addMenuItem
    L8_2 = L5_2.label
    function L9_2()
      local L0_3, L1_3
      L0_3 = CreateThread
      function L1_3()
        local L0_4, L1_4, L2_4
        L0_4 = TriggerEvent
        L1_4 = "SaveMySkin"
        L0_4(L1_4)
        L0_4 = Wait
        L1_4 = 225
        L0_4(L1_4)
        L0_4 = TriggerServerCallback
        L1_4 = "esx_skin:getPlayerSkin"
        function L2_4(A0_5)
          local L1_5
          if not A0_5 then
            return
          end
          L1_5 = L102_1
          if nil == L1_5 then
            L102_1 = A0_5
          end
        end
        L0_4(L1_4, L2_4)
        L0_4 = TriggerEvent
        L1_4 = "skinchanger:loadClothesLegacy"
        L2_4 = L5_2.clothes
        L0_4(L1_4, L2_4)
      end
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 75
      L0_3(L1_3)
      L0_3 = ExecuteCommand
      L1_3 = "E indossa2"
      L0_3(L1_3)
    end
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
L105_1 = RegisterCommand
L106_1 = "outfitMenu"
function L107_1()
  local L0_2, L1_2
  L0_2 = L104_1
  L0_2()
end
L105_1(L106_1, L107_1)
L105_1 = {}
L106_1 = "mask_1"
L107_1 = "mask_2"
L108_1 = "tshirt_1"
L109_1 = "tshirt_2"
L110_1 = "torso_1"
L111_1 = "torso_2"
L112_1 = "arms"
L113_1 = "arms_2"
L114_1 = "bags_1"
L115_1 = "bags_2"
L116_1 = "pants_1"
L117_1 = "pants_2"
L118_1 = "shoes_1"
L119_1 = "shoes_2"
L120_1 = "chain_1"
L121_1 = "chain_2"
L122_1 = "bproof_1"
L123_1 = "bproof_2"
L124_1 = "decals_1"
L125_1 = "decals_2"
L126_1 = "helmet_1"
L127_1 = "helmet_2"
L128_1 = "glasses_1"
L129_1 = "glasses_2"
L105_1[1] = L106_1
L105_1[2] = L107_1
L105_1[3] = L108_1
L105_1[4] = L109_1
L105_1[5] = L110_1
L105_1[6] = L111_1
L105_1[7] = L112_1
L105_1[8] = L113_1
L105_1[9] = L114_1
L105_1[10] = L115_1
L105_1[11] = L116_1
L105_1[12] = L117_1
L105_1[13] = L118_1
L105_1[14] = L119_1
L105_1[15] = L120_1
L105_1[16] = L121_1
L105_1[17] = L122_1
L105_1[18] = L123_1
L105_1[19] = L124_1
L105_1[20] = L125_1
L105_1[21] = L126_1
L105_1[22] = L127_1
L105_1[23] = L128_1
L105_1[24] = L129_1
function L106_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerCallback
  L2_2 = "esx_skin:getPlayerSkin"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if not A0_3 then
      L1_3 = A0_2
      L2_3 = nil
      L1_3(L2_3)
      return
    end
    L1_3 = {}
    L2_3 = ipairs
    L3_3 = L105_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = A0_3[L7_3]
      if nil ~= L8_3 then
        L8_3 = A0_3[L7_3]
        L1_3[L7_3] = L8_3
      end
    end
    L2_3 = A0_2
    L3_3 = L1_3
    L2_3(L3_3)
  end
  L1_2(L2_2, L3_2)
end
function L107_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L105_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A0_2[L7_2]
    if nil ~= L8_2 then
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L9_2 = "['"
      L10_2 = L7_2
      L11_2 = "']="
      L12_2 = tostring
      L13_2 = A0_2[L7_2]
      L12_2 = L12_2(L13_2)
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L1_2[L8_2] = L9_2
    end
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L1_2
  L4_2 = ","
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ","
  L2_2 = L2_2 .. L3_2
  return L2_2
end
L108_1 = RegisterCommand
L109_1 = "getclothes"
function L110_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "SaveMySkin"
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = "Saving skin..."
  L0_2(L1_2, L2_2)
  L0_2 = Wait
  L1_2 = 225
  L0_2(L1_2)
  L0_2 = L106_1
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if not A0_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "Can't get current clothes."
      L1_3(L2_3, L3_3)
      return
    end
    L1_3 = ExecuteCommand
    L2_3 = "copia "
    L3_3 = L107_1
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.striano_combat
    L2_3 = L1_3
    L1_3 = L1_3.submex
    L3_3 = "Current clothes copied!"
    L1_3(L2_3, L3_3)
  end
  L0_2(L1_2)
end
L108_1(L109_1, L110_1)
