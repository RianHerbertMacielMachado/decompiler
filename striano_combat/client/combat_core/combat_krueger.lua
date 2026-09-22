local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L6_2 = HasNamedPtfxAssetLoaded
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestNamedPtfxAsset
    L7_2 = A0_2
    L6_2(L7_2)
  end
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = UseParticleFxAssetNextCall
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = vector3
    L1_3 = 0.0
    L2_3 = 0.0
    L3_3 = 0.0
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = A5_2
    if nil ~= L1_3 then
      L0_3 = A5_2
    end
    L1_3 = StartParticleFxLoopedAtCoord
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = L0_3.x
    L5_3 = L0_3.y
    L6_3 = L0_3.z
    L7_3 = A3_2
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L2_3 = A4_2
    if L2_3 then
      L2_3 = SetParticleFxLoopedAlpha
      L3_3 = L1_3
      L4_3 = A4_2
      L2_3(L3_3, L4_3)
    end
    L2_3 = Wait
    L3_3 = 9000
    L2_3(L3_3)
    L2_3 = StopParticleFxLooped
    L3_3 = L1_3
    L2_3(L3_3)
    L2_3 = RemoveParticleFx
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
  end
  L6_2(L7_2)
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CreateCam
  L3_2 = "DEFAULT_SCRIPTED_CAMERA"
  L4_2 = true
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetEntityForwardVector
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = L3_2 * 2.0
  L5_2 = L1_2 + L5_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = SetCamCoord
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = L5_2
  L11_2 = L6_2 + 0.5
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = PointCamAtEntity
  L8_2 = L2_2
  L9_2 = L0_2
  L7_2(L8_2, L9_2)
  L7_2 = SetCamActive
  L8_2 = L2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = RenderScriptCams
  L8_2 = true
  L9_2 = true
  L10_2 = 500
  L11_2 = true
  L12_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = 3900
  L9_2 = 50.0
  L10_2 = CreateThread
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L7_2
      L0_3 = L0_3 - L1_3
      L1_3 = L8_2
      if not (L0_3 < L1_3) then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L7_2
      L0_3 = L0_3 - L1_3
      L1_3 = L8_2
      L1_3 = L0_3 / L1_3
      L1_3 = L1_3 * 360.0
      L2_3 = math
      L2_3 = L2_3.cos
      L3_3 = math
      L3_3 = L3_3.rad
      L4_3 = L1_3
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L2_3 = L2_3 * 0.1
      L3_3 = math
      L3_3 = L3_3.sin
      L4_3 = math
      L4_3 = L4_3.rad
      L5_3 = L1_3
      L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3(L5_3)
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L3_3 = L3_3 * 0.1
      L4_3 = SetCamCoord
      L5_3 = L2_2
      L6_3 = L4_2
      L6_3 = L6_3 + L2_3
      L7_3 = L5_2
      L7_3 = L7_3 + L3_3
      L8_3 = L6_2
      L8_3 = L8_3 + 0.5
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = PointCamAtEntity
      L5_3 = L2_2
      L6_3 = L0_2
      L4_3(L5_3, L6_3)
      L4_3 = L9_2
      L4_3 = L4_3 + 0.1
      L9_2 = L4_3
      L4_3 = SetCamFov
      L5_3 = L2_2
      L6_3 = L9_2
      L4_3(L5_3, L6_3)
      L4_3 = Wait
      L5_3 = 0
      L4_3(L5_3)
    end
    L0_3 = RenderScriptCams
    L1_3 = false
    L2_3 = true
    L3_3 = 500
    L4_3 = true
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = DestroyCam
    L1_3 = L2_2
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L10_2(L11_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = BloodActive
  if L2_2 then
    L2_2 = L0_1
    L3_2 = "scr_solomon3"
    L4_2 = "scr_trev4_747_blood_splash"
    L5_2 = A0_2
    L6_2 = 1.5
    L7_2 = 1.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = L0_1
    L3_2 = "scr_solomon3"
    L4_2 = "scr_trev4_747_blood_impact"
    L5_2 = A0_2
    L6_2 = 0.3
    L7_2 = 1.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = L0_1
  L3_2 = "scr_josh3"
  L4_2 = "scr_josh3_light_explosion"
  L5_2 = A0_2
  L6_2 = 0.01
  L7_2 = 0.3
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = GetResourceState
  L3_2 = "striano_combat"
  L2_2 = L2_2(L3_2)
  if "started" == L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.gengrunt
    L2_2(L3_2)
  end
  if nil ~= A1_2 then
    L2_2 = shotSound
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
BloodEffect = L2_1
performing = false
testPedEnemy = nil
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = performing
  if not L8_2 then
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    performing = true
    inFinisher = true
    L9_2 = NetworkGetNetworkIdFromEntity
    L10_2 = A7_2
    L9_2 = L9_2(L10_2)
    L10_2 = TriggerServerEvent
    L11_2 = "striano_combat:markScavInCombat"
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    testPedEnemy = A7_2
    L10_2 = SetEntityHeading
    L11_2 = testPedEnemy
    L12_2 = GetEntityHeading
    L13_2 = L8_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L12_2(L13_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = A3_2
    L14_2 = GetGameTimer
    L14_2 = L14_2()
    L15_2 = 3000
    L16_2 = RequestAnimDict
    L17_2 = L10_2
    L16_2(L17_2)
    while true do
      L16_2 = HasAnimDictLoaded
      L17_2 = L10_2
      L16_2 = L16_2(L17_2)
      if L16_2 then
        break
      end
      L16_2 = GetGameTimer
      L16_2 = L16_2()
      L16_2 = L16_2 - L14_2
      if not (L15_2 > L16_2) then
        break
      end
      L16_2 = Wait
      L17_2 = 0
      L16_2(L17_2)
    end
    L16_2 = TaskPlayAnim
    L17_2 = testPedEnemy
    L18_2 = L10_2
    L19_2 = L12_2
    L20_2 = 2.0
    L21_2 = 2.0
    L22_2 = -1
    L23_2 = 2
    L24_2 = 2
    L25_2 = false
    L26_2 = false
    L27_2 = false
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
    L16_2 = GetGameTimer
    L16_2 = L16_2()
    L17_2 = 3000
    L18_2 = RequestAnimDict
    L19_2 = L11_2
    L18_2(L19_2)
    while true do
      L18_2 = HasAnimDictLoaded
      L19_2 = L11_2
      L18_2 = L18_2(L19_2)
      if L18_2 then
        break
      end
      L18_2 = GetGameTimer
      L18_2 = L18_2()
      L18_2 = L18_2 - L16_2
      if not (L17_2 > L18_2) then
        break
      end
      L18_2 = Wait
      L19_2 = 0
      L18_2(L19_2)
    end
    L18_2 = TaskPlayAnim
    L19_2 = L8_2
    L20_2 = L11_2
    L21_2 = L13_2
    L22_2 = 2.0
    L23_2 = 2.0
    L24_2 = -1
    L25_2 = 2
    L26_2 = 2
    L27_2 = false
    L28_2 = false
    L29_2 = false
    L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L18_2 = PlayPain
    L19_2 = testPedEnemy
    L20_2 = 5
    L21_2 = 0.0
    L22_2 = false
    L18_2(L19_2, L20_2, L21_2, L22_2)
    L18_2 = Wait
    L19_2 = 25
    L18_2(L19_2)
    L18_2 = false
    while true do
      L19_2 = IsEntityPlayingAnim
      L20_2 = L8_2
      L21_2 = L11_2
      L22_2 = L13_2
      L23_2 = 3
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
      if not L19_2 then
        break
      end
      L19_2 = Wait
      L20_2 = 0
      L19_2(L20_2)
      if not L18_2 then
        L19_2 = GetEntityAnimCurrentTime
        L20_2 = L8_2
        L21_2 = L11_2
        L22_2 = L13_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L20_2 = 0.25
        if L19_2 > L20_2 then
          L19_2 = PlaySoundFrontend
          L20_2 = -1
          L21_2 = "BACK"
          L22_2 = "HUD_MINI_GAME_SOUNDSET"
          L23_2 = 1
          L19_2(L20_2, L21_2, L22_2, L23_2)
          L19_2 = PlaySoundFrontend
          L20_2 = -1
          L21_2 = "CLOSED"
          L22_2 = "MP_PROPERTIES_ELEVATOR_DOORS"
          L23_2 = 1
          L19_2(L20_2, L21_2, L22_2, L23_2)
          L19_2 = GetResourceState
          L20_2 = "striano_combat"
          L19_2 = L19_2(L20_2)
          if "started" == L19_2 then
            L19_2 = exports
            L19_2 = L19_2.striano_combat
            L20_2 = L19_2
            L19_2 = L19_2.gengrunt
            L19_2(L20_2)
          end
          L18_2 = true
        end
      end
      L19_2 = GetEntityAnimCurrentTime
      L20_2 = L8_2
      L21_2 = L11_2
      L22_2 = L13_2
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      if A4_2 < L19_2 then
        L19_2 = table
        L19_2 = L19_2.unpack
        L20_2 = GetPedBoneCoords
        L21_2 = testPedEnemy
        L22_2 = 31086
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L20_2(L21_2, L22_2)
        L19_2, L20_2, L21_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
        L22_2 = vector3
        L23_2 = L19_2
        L24_2 = L20_2
        L25_2 = L21_2
        L22_2 = L22_2(L23_2, L24_2, L25_2)
        L23_2 = PlayPain
        L24_2 = testPedEnemy
        L25_2 = 5
        L26_2 = 0.0
        L27_2 = false
        L23_2(L24_2, L25_2, L26_2, L27_2)
        L23_2 = BloodEffect
        L24_2 = L22_2
        L25_2 = A6_2
        L23_2(L24_2, L25_2)
        L23_2 = SetEntityHealth
        L24_2 = testPedEnemy
        L25_2 = 0
        L23_2(L24_2, L25_2)
        L23_2 = ClearPedTasks
        L24_2 = L8_2
        L23_2(L24_2)
        performing = false
        inFinisher = false
        return
      end
    end
    L19_2 = ClearPedTasks
    L20_2 = testPedEnemy
    L19_2(L20_2)
    L19_2 = ClearPedTasks
    L20_2 = L8_2
    L19_2(L20_2)
    performing = false
    inFinisher = false
  end
end
checkNPC = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L9_2 = GetActivePlayers
  L9_2 = L9_2()
  L10_2 = -1
  L11_2 = -1
  L12_2 = PlayerPedId
  L12_2 = L12_2()
  L13_2 = GetEntityCoords
  L14_2 = L12_2
  L13_2 = L13_2(L14_2)
  L14_2 = ipairs
  L15_2 = L9_2
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
  for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
    L20_2 = GetPlayerPed
    L21_2 = L19_2
    L20_2 = L20_2(L21_2)
    if L20_2 ~= L12_2 then
      L21_2 = GetEntityCoords
      L22_2 = L20_2
      L21_2 = L21_2(L22_2)
      L22_2 = L21_2 - L13_2
      L22_2 = #L22_2
      if -1 == L10_2 or L10_2 > L22_2 then
        L11_2 = L19_2
        L10_2 = L22_2
      end
    end
  end
  if -1 ~= L10_2 and A0_2 >= L10_2 then
    return L11_2
  else
    L14_2 = checkNPC
    L15_2 = A1_2
    L16_2 = A2_2
    L17_2 = A3_2
    L18_2 = A4_2
    L19_2 = A5_2
    L20_2 = A6_2
    L21_2 = A7_2
    L22_2 = A8_2
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = nil
    return L14_2
  end
end
GetClosestPlayer = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = IsEntityPositionFrozen
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  if 1 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "krueger_executor@animation"
      L1_3 = "krueger_executed@animation"
      L2_3 = "krueger_executor"
      L3_3 = "krueger_executed"
      L4_3 = 0.72
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = -0.5
      L13_3 = false
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = table
          L8_3 = L8_3.unpack
          L9_3 = L7_3 * -1.0
          L9_3 = L6_3 + L9_3
          L8_3, L9_3, L10_3 = L8_3(L9_3)
          L11_3 = GetEntityCoords
          L12_3 = L2_2
          L11_3 = L11_3(L12_3)
          L12_3 = vector3
          L13_3 = L8_3
          L14_3 = L9_3
          L15_3 = L10_3
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L11_3 = L11_3 - L12_3
          L11_3 = #L11_3
          if L11_3 < 1.0 then
            L11_3 = performing
            if not L11_3 then
              performing = true
              L11_3 = SetPedStealthMovement
              L12_3 = L2_2
              L13_3 = false
              L14_3 = "DEFAULT_ACTION"
              L11_3(L12_3, L13_3, L14_3)
              L11_3 = L1_1
              L11_3()
              inFinisher = true
              L11_3 = Wait
              L12_3 = 0
              L11_3(L12_3)
              if -1 ~= L5_3 then
                L11_3 = IsPedAPlayer
                L12_3 = L5_3
                L11_3 = L11_3(L12_3)
                if L11_3 then
                  L11_3 = GetPlayerServerId
                  L12_3 = L5_3
                  L11_3 = L11_3(L12_3)
                  if -1 ~= L11_3 and nil ~= L11_3 then
                    L12_3 = TriggerServerEvent
                    L13_3 = "Krueger:sync"
                    L14_3 = L11_3
                    L15_3 = L1_3
                    L16_3 = L3_3
                    L17_3 = L4_3
                    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                  end
                end
              end
              L11_3 = GetEntityCoords
              L12_3 = L2_2
              L11_3 = L11_3(L12_3)
              L12_3 = GetEntityForwardVector
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = table
              L13_3 = L13_3.unpack
              L14_3 = L12_3 * -0.5
              L14_3 = L11_3 + L14_3
              L13_3, L14_3, L15_3 = L13_3(L14_3)
              L16_3 = vector3
              L17_3 = L13_3
              L18_3 = L14_3
              L19_3 = L15_3
              L16_3 = L16_3(L17_3, L18_3, L19_3)
              coordZomb = L16_3
              L16_3 = SetEntityCoords
              L17_3 = L5_3
              L18_3 = coordZomb
              L18_3 = L18_3.x
              L19_3 = coordZomb
              L19_3 = L19_3.y
              L20_3 = coordZomb
              L20_3 = L20_3.z
              L20_3 = L20_3 - 1
              L16_3(L17_3, L18_3, L19_3, L20_3)
              L16_3 = SetEntityHeading
              L17_3 = L5_3
              L18_3 = GetEntityHeading
              L19_3 = L2_2
              L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L18_3(L19_3)
              L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              L16_3 = L0_3
              L17_3 = L1_3
              L18_3 = L2_3
              L19_3 = L3_3
              L20_3 = GetGameTimer
              L20_3 = L20_3()
              L21_3 = 3000
              L22_3 = RequestAnimDict
              L23_3 = L16_3
              L22_3(L23_3)
              while true do
                L22_3 = HasAnimDictLoaded
                L23_3 = L16_3
                L22_3 = L22_3(L23_3)
                if L22_3 then
                  break
                end
                L22_3 = GetGameTimer
                L22_3 = L22_3()
                L22_3 = L22_3 - L20_3
                if not (L21_3 > L22_3) then
                  break
                end
                L22_3 = Wait
                L23_3 = 0
                L22_3(L23_3)
              end
              L22_3 = TaskPlayAnim
              L23_3 = L5_3
              L24_3 = L16_3
              L25_3 = L18_3
              L26_3 = 2.0
              L27_3 = 2.0
              L28_3 = -1
              L29_3 = 2
              L30_3 = 2
              L31_3 = false
              L32_3 = false
              L33_3 = false
              L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
              L22_3 = GetGameTimer
              L22_3 = L22_3()
              L23_3 = 3000
              L24_3 = RequestAnimDict
              L25_3 = L17_3
              L24_3(L25_3)
              while true do
                L24_3 = HasAnimDictLoaded
                L25_3 = L17_3
                L24_3 = L24_3(L25_3)
                if L24_3 then
                  break
                end
                L24_3 = GetGameTimer
                L24_3 = L24_3()
                L24_3 = L24_3 - L22_3
                if not (L23_3 > L24_3) then
                  break
                end
                L24_3 = Wait
                L25_3 = 0
                L24_3(L25_3)
              end
              L24_3 = TaskPlayAnim
              L25_3 = L2_2
              L26_3 = L17_3
              L27_3 = L19_3
              L28_3 = 2.0
              L29_3 = 2.0
              L30_3 = -1
              L31_3 = 2
              L32_3 = 2
              L33_3 = false
              L34_3 = false
              L35_3 = false
              L24_3(L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
              L24_3 = Wait
              L25_3 = 25
              L24_3(L25_3)
              while true do
                L24_3 = IsEntityPlayingAnim
                L25_3 = L2_2
                L26_3 = L17_3
                L27_3 = L19_3
                L28_3 = 3
                L24_3 = L24_3(L25_3, L26_3, L27_3, L28_3)
                if not L24_3 then
                  break
                end
                L24_3 = Wait
                L25_3 = 0
                L24_3(L25_3)
                L24_3 = GetEntityAnimCurrentTime
                L25_3 = L2_2
                L26_3 = L17_3
                L27_3 = L19_3
                L24_3 = L24_3(L25_3, L26_3, L27_3)
                if L4_3 < L24_3 then
                  L24_3 = table
                  L24_3 = L24_3.unpack
                  L25_3 = GetPedBoneCoords
                  L26_3 = L5_3
                  L27_3 = 31086
                  L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3 = L25_3(L26_3, L27_3)
                  L24_3, L25_3, L26_3 = L24_3(L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
                  L27_3 = vector3
                  L28_3 = L24_3
                  L29_3 = L25_3
                  L30_3 = L26_3
                  L27_3 = L27_3(L28_3, L29_3, L30_3)
                  L28_3 = BloodEffect
                  L29_3 = L27_3
                  L28_3(L29_3)
                  L28_3 = SetEntityHealth
                  L29_3 = L5_3
                  L30_3 = 0
                  L28_3(L29_3, L30_3)
                  L28_3 = ClearPedTasks
                  L29_3 = L2_2
                  L28_3(L29_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L24_3 = ClearPedTasks
              L25_3 = L5_3
              L24_3(L25_3)
              L24_3 = ClearPedTasks
              L25_3 = L2_2
              L24_3(L25_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
    end
    L3_2(L4_2)
  elseif 2 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "yls_laoz@qq_867595619@vx_lzmod1@dca"
      L1_3 = "yls_laoz@qq_867595619@vx_lzmod1@dcb"
      L2_3 = "dca"
      L3_3 = "dcb"
      L4_3 = 0.52
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = 0.5
      L13_3 = false
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = GetPlayerServerId
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = L7_3 * -1.0
          L10_3 = L6_3 + L10_3
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          L12_3 = GetEntityCoords
          L13_3 = L2_2
          L12_3 = L12_3(L13_3)
          L13_3 = vector3
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L12_3 = L12_3 - L13_3
          L12_3 = #L12_3
          if L12_3 < 1.0 then
            L12_3 = performing
            if not L12_3 then
              performing = true
              L12_3 = SetPedStealthMovement
              L13_3 = L2_2
              L14_3 = false
              L15_3 = "DEFAULT_ACTION"
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_1
              L12_3()
              inFinisher = true
              L12_3 = Wait
              L13_3 = 0
              L12_3(L13_3)
              if -1 ~= L5_3 then
                L12_3 = IsPedAPlayer
                L13_3 = L5_3
                L12_3 = L12_3(L13_3)
                if L12_3 then
                  L12_3 = GetPlayerServerId
                  L13_3 = L5_3
                  L12_3 = L12_3(L13_3)
                  if -1 ~= L12_3 and nil ~= L12_3 then
                    L13_3 = TriggerServerEvent
                    L14_3 = "Krueger:sync"
                    L15_3 = L12_3
                    L16_3 = L1_3
                    L17_3 = L3_3
                    L18_3 = L4_3
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  end
                end
              end
              L12_3 = GetEntityCoords
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = GetEntityForwardVector
              L14_3 = L2_2
              L13_3 = L13_3(L14_3)
              L14_3 = table
              L14_3 = L14_3.unpack
              L15_3 = L13_3 * 0.5
              L15_3 = L12_3 + L15_3
              L14_3, L15_3, L16_3 = L14_3(L15_3)
              L17_3 = vector3
              L18_3 = L14_3
              L19_3 = L15_3
              L20_3 = L16_3
              L17_3 = L17_3(L18_3, L19_3, L20_3)
              coordZomb = L17_3
              L17_3 = SetEntityCoords
              L18_3 = L5_3
              L19_3 = coordZomb
              L19_3 = L19_3.x
              L20_3 = coordZomb
              L20_3 = L20_3.y
              L21_3 = coordZomb
              L21_3 = L21_3.z
              L21_3 = L21_3 - 1
              L17_3(L18_3, L19_3, L20_3, L21_3)
              L17_3 = SetEntityHeading
              L18_3 = L5_3
              L19_3 = GetEntityHeading
              L20_3 = L2_2
              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L19_3(L20_3)
              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L17_3 = L0_3
              L18_3 = L1_3
              L19_3 = L2_3
              L20_3 = L3_3
              L21_3 = GetGameTimer
              L21_3 = L21_3()
              L22_3 = 3000
              L23_3 = RequestAnimDict
              L24_3 = L17_3
              L23_3(L24_3)
              while true do
                L23_3 = HasAnimDictLoaded
                L24_3 = L17_3
                L23_3 = L23_3(L24_3)
                if L23_3 then
                  break
                end
                L23_3 = GetGameTimer
                L23_3 = L23_3()
                L23_3 = L23_3 - L21_3
                if not (L22_3 > L23_3) then
                  break
                end
                L23_3 = Wait
                L24_3 = 0
                L23_3(L24_3)
              end
              L23_3 = TaskPlayAnim
              L24_3 = L5_3
              L25_3 = L17_3
              L26_3 = L19_3
              L27_3 = 2.0
              L28_3 = 2.0
              L29_3 = -1
              L30_3 = 2
              L31_3 = 2
              L32_3 = false
              L33_3 = false
              L34_3 = false
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L23_3 = GetGameTimer
              L23_3 = L23_3()
              L24_3 = 3000
              L25_3 = RequestAnimDict
              L26_3 = L18_3
              L25_3(L26_3)
              while true do
                L25_3 = HasAnimDictLoaded
                L26_3 = L18_3
                L25_3 = L25_3(L26_3)
                if L25_3 then
                  break
                end
                L25_3 = GetGameTimer
                L25_3 = L25_3()
                L25_3 = L25_3 - L23_3
                if not (L24_3 > L25_3) then
                  break
                end
                L25_3 = Wait
                L26_3 = 0
                L25_3(L26_3)
              end
              L25_3 = TaskPlayAnim
              L26_3 = L2_2
              L27_3 = L18_3
              L28_3 = L20_3
              L29_3 = 2.0
              L30_3 = 2.0
              L31_3 = -1
              L32_3 = 2
              L33_3 = 2
              L34_3 = false
              L35_3 = false
              L36_3 = false
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L25_3 = Wait
              L26_3 = 25
              L25_3(L26_3)
              L25_3 = false
              while true do
                L26_3 = IsEntityPlayingAnim
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L30_3 = 3
                L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3)
                if not L26_3 then
                  break
                end
                L26_3 = Wait
                L27_3 = 0
                L26_3(L27_3)
                if not L25_3 then
                  L26_3 = GetEntityAnimCurrentTime
                  L27_3 = L2_2
                  L28_3 = L18_3
                  L29_3 = L20_3
                  L26_3 = L26_3(L27_3, L28_3, L29_3)
                  L27_3 = 0.25
                  if L26_3 > L27_3 then
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "BACK"
                    L29_3 = "HUD_MINI_GAME_SOUNDSET"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "CLOSED"
                    L29_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = GetResourceState
                    L27_3 = "striano_combat"
                    L26_3 = L26_3(L27_3)
                    if "started" == L26_3 then
                      L26_3 = exports
                      L26_3 = L26_3.striano_combat
                      L27_3 = L26_3
                      L26_3 = L26_3.gengrunt
                      L26_3(L27_3)
                    end
                    L25_3 = true
                  end
                end
                L26_3 = GetEntityAnimCurrentTime
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L26_3 = L26_3(L27_3, L28_3, L29_3)
                if L4_3 < L26_3 then
                  L26_3 = table
                  L26_3 = L26_3.unpack
                  L27_3 = GetPedBoneCoords
                  L28_3 = L5_3
                  L29_3 = 31086
                  L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3, L29_3)
                  L26_3, L27_3, L28_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                  L29_3 = vector3
                  L30_3 = L26_3
                  L31_3 = L27_3
                  L32_3 = L28_3
                  L29_3 = L29_3(L30_3, L31_3, L32_3)
                  L30_3 = BloodEffect
                  L31_3 = L29_3
                  L30_3(L31_3)
                  L30_3 = SetEntityHealth
                  L31_3 = L5_3
                  L32_3 = 0
                  L30_3(L31_3, L32_3)
                  L30_3 = ClearPedTasks
                  L31_3 = L2_2
                  L30_3(L31_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L26_3 = ClearPedTasks
              L27_3 = L5_3
              L26_3(L27_3)
              L26_3 = ClearPedTasks
              L27_3 = L2_2
              L26_3(L27_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
    end
    L3_2(L4_2)
  elseif 3 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "yls_laoz@qq_867595619@vx_lzmod1@0"
      L1_3 = "yls_laoz@qq_867595619@vx_lzmod1@01"
      L2_3 = "0"
      L3_3 = "01"
      L4_3 = 0.75
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = 0.0
      L13_3 = false
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = GetPlayerServerId
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = L7_3 * -1.0
          L10_3 = L6_3 + L10_3
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          L12_3 = GetEntityCoords
          L13_3 = L2_2
          L12_3 = L12_3(L13_3)
          L13_3 = vector3
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L12_3 = L12_3 - L13_3
          L12_3 = #L12_3
          if L12_3 < 1.0 then
            L12_3 = performing
            if not L12_3 then
              performing = true
              L12_3 = SetPedStealthMovement
              L13_3 = L2_2
              L14_3 = false
              L15_3 = "DEFAULT_ACTION"
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_1
              L12_3()
              inFinisher = true
              L12_3 = Wait
              L13_3 = 0
              L12_3(L13_3)
              if -1 ~= L5_3 then
                L12_3 = IsPedAPlayer
                L13_3 = L5_3
                L12_3 = L12_3(L13_3)
                if L12_3 then
                  L12_3 = GetPlayerServerId
                  L13_3 = L5_3
                  L12_3 = L12_3(L13_3)
                  if -1 ~= L12_3 and nil ~= L12_3 then
                    L13_3 = TriggerServerEvent
                    L14_3 = "Krueger:sync"
                    L15_3 = L12_3
                    L16_3 = L1_3
                    L17_3 = L3_3
                    L18_3 = L4_3
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  end
                end
              end
              L12_3 = GetEntityCoords
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = GetEntityForwardVector
              L14_3 = L2_2
              L13_3 = L13_3(L14_3)
              L14_3 = table
              L14_3 = L14_3.unpack
              L15_3 = L13_3 * 0.5
              L15_3 = L12_3 + L15_3
              L14_3, L15_3, L16_3 = L14_3(L15_3)
              L17_3 = vector3
              L18_3 = L14_3
              L19_3 = L15_3
              L20_3 = L16_3
              L17_3 = L17_3(L18_3, L19_3, L20_3)
              coordZomb = L17_3
              L17_3 = SetEntityCoords
              L18_3 = L5_3
              L19_3 = coordZomb
              L19_3 = L19_3.x
              L20_3 = coordZomb
              L20_3 = L20_3.y
              L21_3 = coordZomb
              L21_3 = L21_3.z
              L21_3 = L21_3 - 1
              L17_3(L18_3, L19_3, L20_3, L21_3)
              L17_3 = SetEntityHeading
              L18_3 = L5_3
              L19_3 = GetEntityHeading
              L20_3 = L2_2
              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L19_3(L20_3)
              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L17_3 = L0_3
              L18_3 = L1_3
              L19_3 = L2_3
              L20_3 = L3_3
              L21_3 = GetGameTimer
              L21_3 = L21_3()
              L22_3 = 3000
              L23_3 = RequestAnimDict
              L24_3 = L17_3
              L23_3(L24_3)
              while true do
                L23_3 = HasAnimDictLoaded
                L24_3 = L17_3
                L23_3 = L23_3(L24_3)
                if L23_3 then
                  break
                end
                L23_3 = GetGameTimer
                L23_3 = L23_3()
                L23_3 = L23_3 - L21_3
                if not (L22_3 > L23_3) then
                  break
                end
                L23_3 = Wait
                L24_3 = 0
                L23_3(L24_3)
              end
              L23_3 = TaskPlayAnim
              L24_3 = L5_3
              L25_3 = L17_3
              L26_3 = L19_3
              L27_3 = 2.0
              L28_3 = 2.0
              L29_3 = -1
              L30_3 = 2
              L31_3 = 2
              L32_3 = false
              L33_3 = false
              L34_3 = false
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L23_3 = GetGameTimer
              L23_3 = L23_3()
              L24_3 = 3000
              L25_3 = RequestAnimDict
              L26_3 = L18_3
              L25_3(L26_3)
              while true do
                L25_3 = HasAnimDictLoaded
                L26_3 = L18_3
                L25_3 = L25_3(L26_3)
                if L25_3 then
                  break
                end
                L25_3 = GetGameTimer
                L25_3 = L25_3()
                L25_3 = L25_3 - L23_3
                if not (L24_3 > L25_3) then
                  break
                end
                L25_3 = Wait
                L26_3 = 0
                L25_3(L26_3)
              end
              L25_3 = TaskPlayAnim
              L26_3 = L2_2
              L27_3 = L18_3
              L28_3 = L20_3
              L29_3 = 2.0
              L30_3 = 2.0
              L31_3 = -1
              L32_3 = 2
              L33_3 = 2
              L34_3 = false
              L35_3 = false
              L36_3 = false
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L25_3 = Wait
              L26_3 = 25
              L25_3(L26_3)
              L25_3 = false
              while true do
                L26_3 = IsEntityPlayingAnim
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L30_3 = 3
                L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3)
                if not L26_3 then
                  break
                end
                L26_3 = Wait
                L27_3 = 0
                L26_3(L27_3)
                if not L25_3 then
                  L26_3 = GetEntityAnimCurrentTime
                  L27_3 = L2_2
                  L28_3 = L18_3
                  L29_3 = L20_3
                  L26_3 = L26_3(L27_3, L28_3, L29_3)
                  L27_3 = 0.25
                  if L26_3 > L27_3 then
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "BACK"
                    L29_3 = "HUD_MINI_GAME_SOUNDSET"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "CLOSED"
                    L29_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = GetResourceState
                    L27_3 = "striano_combat"
                    L26_3 = L26_3(L27_3)
                    if "started" == L26_3 then
                      L26_3 = exports
                      L26_3 = L26_3.striano_combat
                      L27_3 = L26_3
                      L26_3 = L26_3.gengrunt
                      L26_3(L27_3)
                    end
                    L25_3 = true
                  end
                end
                L26_3 = GetEntityAnimCurrentTime
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L26_3 = L26_3(L27_3, L28_3, L29_3)
                if L4_3 < L26_3 then
                  L26_3 = table
                  L26_3 = L26_3.unpack
                  L27_3 = GetPedBoneCoords
                  L28_3 = L5_3
                  L29_3 = 31086
                  L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3, L29_3)
                  L26_3, L27_3, L28_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                  L29_3 = vector3
                  L30_3 = L26_3
                  L31_3 = L27_3
                  L32_3 = L28_3
                  L29_3 = L29_3(L30_3, L31_3, L32_3)
                  L30_3 = BloodEffect
                  L31_3 = L29_3
                  L30_3(L31_3)
                  L30_3 = SetEntityHealth
                  L31_3 = L5_3
                  L32_3 = 0
                  L30_3(L31_3, L32_3)
                  L30_3 = ClearPedTasks
                  L31_3 = L2_2
                  L30_3(L31_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L26_3 = ClearPedTasks
              L27_3 = L5_3
              L26_3(L27_3)
              L26_3 = ClearPedTasks
              L27_3 = L2_2
              L26_3(L27_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
    end
    L3_2(L4_2)
  elseif 4 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "yls_laoz@qq_867595619@vx_lzmod1@fza"
      L1_3 = "yls_laoz@qq_867595619@vx_lzmod1@fzb"
      L2_3 = "fza"
      L3_3 = "fzb"
      L4_3 = 0.78
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = 0.5
      L13_3 = true
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = GetPlayerServerId
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = L7_3 * -1.0
          L10_3 = L6_3 + L10_3
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          L12_3 = GetEntityCoords
          L13_3 = L2_2
          L12_3 = L12_3(L13_3)
          L13_3 = vector3
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L12_3 = L12_3 - L13_3
          L12_3 = #L12_3
          if L12_3 < 1.0 then
            L12_3 = performing
            if not L12_3 then
              performing = true
              L12_3 = SetPedStealthMovement
              L13_3 = L2_2
              L14_3 = false
              L15_3 = "DEFAULT_ACTION"
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_1
              L12_3()
              inFinisher = true
              L12_3 = Wait
              L13_3 = 0
              L12_3(L13_3)
              if -1 ~= L5_3 then
                L12_3 = IsPedAPlayer
                L13_3 = L5_3
                L12_3 = L12_3(L13_3)
                if L12_3 then
                  L12_3 = GetPlayerServerId
                  L13_3 = L5_3
                  L12_3 = L12_3(L13_3)
                  if -1 ~= L12_3 and nil ~= L12_3 then
                    L13_3 = TriggerServerEvent
                    L14_3 = "Krueger:sync"
                    L15_3 = L12_3
                    L16_3 = L1_3
                    L17_3 = L3_3
                    L18_3 = L4_3
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  end
                end
              end
              L12_3 = GetEntityCoords
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = GetEntityForwardVector
              L14_3 = L2_2
              L13_3 = L13_3(L14_3)
              L14_3 = table
              L14_3 = L14_3.unpack
              L15_3 = L13_3 * 0.5
              L15_3 = L12_3 + L15_3
              L14_3, L15_3, L16_3 = L14_3(L15_3)
              L17_3 = vector3
              L18_3 = L14_3
              L19_3 = L15_3
              L20_3 = L16_3
              L17_3 = L17_3(L18_3, L19_3, L20_3)
              coordZomb = L17_3
              L17_3 = SetEntityCoords
              L18_3 = L5_3
              L19_3 = coordZomb
              L19_3 = L19_3.x
              L20_3 = coordZomb
              L20_3 = L20_3.y
              L21_3 = coordZomb
              L21_3 = L21_3.z
              L21_3 = L21_3 - 1
              L17_3(L18_3, L19_3, L20_3, L21_3)
              L17_3 = SetEntityHeading
              L18_3 = L5_3
              L19_3 = GetEntityHeading
              L20_3 = L2_2
              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L19_3(L20_3)
              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L17_3 = L0_3
              L18_3 = L1_3
              L19_3 = L2_3
              L20_3 = L3_3
              L21_3 = GetGameTimer
              L21_3 = L21_3()
              L22_3 = 3000
              L23_3 = RequestAnimDict
              L24_3 = L17_3
              L23_3(L24_3)
              while true do
                L23_3 = HasAnimDictLoaded
                L24_3 = L17_3
                L23_3 = L23_3(L24_3)
                if L23_3 then
                  break
                end
                L23_3 = GetGameTimer
                L23_3 = L23_3()
                L23_3 = L23_3 - L21_3
                if not (L22_3 > L23_3) then
                  break
                end
                L23_3 = Wait
                L24_3 = 0
                L23_3(L24_3)
              end
              L23_3 = TaskPlayAnim
              L24_3 = L5_3
              L25_3 = L17_3
              L26_3 = L19_3
              L27_3 = 2.0
              L28_3 = 2.0
              L29_3 = -1
              L30_3 = 2
              L31_3 = 2
              L32_3 = false
              L33_3 = false
              L34_3 = false
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L23_3 = GetGameTimer
              L23_3 = L23_3()
              L24_3 = 3000
              L25_3 = RequestAnimDict
              L26_3 = L18_3
              L25_3(L26_3)
              while true do
                L25_3 = HasAnimDictLoaded
                L26_3 = L18_3
                L25_3 = L25_3(L26_3)
                if L25_3 then
                  break
                end
                L25_3 = GetGameTimer
                L25_3 = L25_3()
                L25_3 = L25_3 - L23_3
                if not (L24_3 > L25_3) then
                  break
                end
                L25_3 = Wait
                L26_3 = 0
                L25_3(L26_3)
              end
              L25_3 = TaskPlayAnim
              L26_3 = L2_2
              L27_3 = L18_3
              L28_3 = L20_3
              L29_3 = 2.0
              L30_3 = 2.0
              L31_3 = -1
              L32_3 = 2
              L33_3 = 2
              L34_3 = false
              L35_3 = false
              L36_3 = false
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L25_3 = Wait
              L26_3 = 25
              L25_3(L26_3)
              L25_3 = false
              while true do
                L26_3 = IsEntityPlayingAnim
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L30_3 = 3
                L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3)
                if not L26_3 then
                  break
                end
                L26_3 = Wait
                L27_3 = 0
                L26_3(L27_3)
                if not L25_3 then
                  L26_3 = GetEntityAnimCurrentTime
                  L27_3 = L2_2
                  L28_3 = L18_3
                  L29_3 = L20_3
                  L26_3 = L26_3(L27_3, L28_3, L29_3)
                  L27_3 = 0.25
                  if L26_3 > L27_3 then
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "BACK"
                    L29_3 = "HUD_MINI_GAME_SOUNDSET"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "CLOSED"
                    L29_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = GetResourceState
                    L27_3 = "striano_combat"
                    L26_3 = L26_3(L27_3)
                    if "started" == L26_3 then
                      L26_3 = exports
                      L26_3 = L26_3.striano_combat
                      L27_3 = L26_3
                      L26_3 = L26_3.gengrunt
                      L26_3(L27_3)
                    end
                    L25_3 = true
                  end
                end
                L26_3 = GetEntityAnimCurrentTime
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L26_3 = L26_3(L27_3, L28_3, L29_3)
                if L4_3 < L26_3 then
                  L26_3 = table
                  L26_3 = L26_3.unpack
                  L27_3 = GetPedBoneCoords
                  L28_3 = L5_3
                  L29_3 = 31086
                  L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3, L29_3)
                  L26_3, L27_3, L28_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                  L29_3 = vector3
                  L30_3 = L26_3
                  L31_3 = L27_3
                  L32_3 = L28_3
                  L29_3 = L29_3(L30_3, L31_3, L32_3)
                  L30_3 = BloodEffect
                  L31_3 = L29_3
                  L32_3 = true
                  L30_3(L31_3, L32_3)
                  L30_3 = SetEntityHealth
                  L31_3 = L5_3
                  L32_3 = 0
                  L30_3(L31_3, L32_3)
                  L30_3 = ClearPedTasks
                  L31_3 = L2_2
                  L30_3(L31_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L26_3 = ClearPedTasks
              L27_3 = L5_3
              L26_3(L27_3)
              L26_3 = ClearPedTasks
              L27_3 = L2_2
              L26_3(L27_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
    end
    L3_2(L4_2)
  elseif 5 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "yls_laoz@qq_867595619@vx_lzmod1@pls_a"
      L1_3 = "yls_laoz@qq_867595619@vx_lzmod1@pls_b"
      L2_3 = "plsa"
      L3_3 = "pls_b"
      L4_3 = 0.58
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = 1.0
      L13_3 = true
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = GetPlayerServerId
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = L7_3 * -1.0
          L10_3 = L6_3 + L10_3
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          if -1 == L8_3 then
            L12_3 = IsPedAPlayer
            L13_3 = L5_3
            L12_3 = L12_3(L13_3)
            if L12_3 then
              goto lbl_316
            end
          end
          L12_3 = GetEntityCoords
          L13_3 = L2_2
          L12_3 = L12_3(L13_3)
          L13_3 = vector3
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L12_3 = L12_3 - L13_3
          L12_3 = #L12_3
          if L12_3 < 1.0 then
            L12_3 = performing
            if not L12_3 then
              performing = true
              L12_3 = SetPedStealthMovement
              L13_3 = L2_2
              L14_3 = false
              L15_3 = "DEFAULT_ACTION"
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_1
              L12_3()
              inFinisher = true
              L12_3 = Wait
              L13_3 = 0
              L12_3(L13_3)
              if -1 ~= L5_3 then
                L12_3 = IsPedAPlayer
                L13_3 = L5_3
                L12_3 = L12_3(L13_3)
                if L12_3 then
                  L12_3 = GetPlayerServerId
                  L13_3 = L5_3
                  L12_3 = L12_3(L13_3)
                  if -1 ~= L12_3 and nil ~= L12_3 then
                    L13_3 = TriggerServerEvent
                    L14_3 = "Krueger:sync"
                    L15_3 = L12_3
                    L16_3 = L1_3
                    L17_3 = L3_3
                    L18_3 = L4_3
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  end
                end
              end
              L12_3 = GetEntityCoords
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = GetEntityForwardVector
              L14_3 = L2_2
              L13_3 = L13_3(L14_3)
              L14_3 = table
              L14_3 = L14_3.unpack
              L15_3 = L13_3 * 0.5
              L15_3 = L12_3 + L15_3
              L14_3, L15_3, L16_3 = L14_3(L15_3)
              L17_3 = vector3
              L18_3 = L14_3
              L19_3 = L15_3
              L20_3 = L16_3
              L17_3 = L17_3(L18_3, L19_3, L20_3)
              coordZomb = L17_3
              L17_3 = SetEntityCoords
              L18_3 = L5_3
              L19_3 = coordZomb
              L19_3 = L19_3.x
              L20_3 = coordZomb
              L20_3 = L20_3.y
              L21_3 = coordZomb
              L21_3 = L21_3.z
              L21_3 = L21_3 - 1
              L17_3(L18_3, L19_3, L20_3, L21_3)
              L17_3 = SetEntityHeading
              L18_3 = L5_3
              L19_3 = GetEntityHeading
              L20_3 = L2_2
              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L19_3(L20_3)
              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L17_3 = L0_3
              L18_3 = L1_3
              L19_3 = L2_3
              L20_3 = L3_3
              L21_3 = GetGameTimer
              L21_3 = L21_3()
              L22_3 = 3000
              L23_3 = RequestAnimDict
              L24_3 = L17_3
              L23_3(L24_3)
              while true do
                L23_3 = HasAnimDictLoaded
                L24_3 = L17_3
                L23_3 = L23_3(L24_3)
                if L23_3 then
                  break
                end
                L23_3 = GetGameTimer
                L23_3 = L23_3()
                L23_3 = L23_3 - L21_3
                if not (L22_3 > L23_3) then
                  break
                end
                L23_3 = Wait
                L24_3 = 0
                L23_3(L24_3)
              end
              L23_3 = TaskPlayAnim
              L24_3 = L5_3
              L25_3 = L17_3
              L26_3 = L19_3
              L27_3 = 2.0
              L28_3 = 2.0
              L29_3 = -1
              L30_3 = 2
              L31_3 = 2
              L32_3 = false
              L33_3 = false
              L34_3 = false
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L23_3 = GetGameTimer
              L23_3 = L23_3()
              L24_3 = 3000
              L25_3 = RequestAnimDict
              L26_3 = L18_3
              L25_3(L26_3)
              while true do
                L25_3 = HasAnimDictLoaded
                L26_3 = L18_3
                L25_3 = L25_3(L26_3)
                if L25_3 then
                  break
                end
                L25_3 = GetGameTimer
                L25_3 = L25_3()
                L25_3 = L25_3 - L23_3
                if not (L24_3 > L25_3) then
                  break
                end
                L25_3 = Wait
                L26_3 = 0
                L25_3(L26_3)
              end
              L25_3 = TaskPlayAnim
              L26_3 = L2_2
              L27_3 = L18_3
              L28_3 = L20_3
              L29_3 = 2.0
              L30_3 = 2.0
              L31_3 = -1
              L32_3 = 2
              L33_3 = 2
              L34_3 = false
              L35_3 = false
              L36_3 = false
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L25_3 = Wait
              L26_3 = 25
              L25_3(L26_3)
              L25_3 = false
              while true do
                L26_3 = IsEntityPlayingAnim
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L30_3 = 3
                L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3)
                if not L26_3 then
                  break
                end
                L26_3 = Wait
                L27_3 = 0
                L26_3(L27_3)
                if not L25_3 then
                  L26_3 = GetEntityAnimCurrentTime
                  L27_3 = L2_2
                  L28_3 = L18_3
                  L29_3 = L20_3
                  L26_3 = L26_3(L27_3, L28_3, L29_3)
                  L27_3 = 0.1
                  if L26_3 > L27_3 then
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "BACK"
                    L29_3 = "HUD_MINI_GAME_SOUNDSET"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "CLOSED"
                    L29_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = GetResourceState
                    L27_3 = "striano_combat"
                    L26_3 = L26_3(L27_3)
                    if "started" == L26_3 then
                      L26_3 = exports
                      L26_3 = L26_3.striano_combat
                      L27_3 = L26_3
                      L26_3 = L26_3.gengrunt
                      L26_3(L27_3)
                    end
                    L25_3 = true
                  end
                end
                L26_3 = GetEntityAnimCurrentTime
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L26_3 = L26_3(L27_3, L28_3, L29_3)
                if L4_3 < L26_3 then
                  L26_3 = table
                  L26_3 = L26_3.unpack
                  L27_3 = GetPedBoneCoords
                  L28_3 = L5_3
                  L29_3 = 31086
                  L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3, L29_3)
                  L26_3, L27_3, L28_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                  L29_3 = vector3
                  L30_3 = L26_3
                  L31_3 = L27_3
                  L32_3 = L28_3
                  L29_3 = L29_3(L30_3, L31_3, L32_3)
                  L30_3 = BloodEffect
                  L31_3 = L29_3
                  L32_3 = true
                  L30_3(L31_3, L32_3)
                  L30_3 = SetEntityHealth
                  L31_3 = L5_3
                  L32_3 = 0
                  L30_3(L31_3, L32_3)
                  L30_3 = ClearPedTasks
                  L31_3 = L2_2
                  L30_3(L31_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L26_3 = ClearPedTasks
              L27_3 = L5_3
              L26_3(L27_3)
              L26_3 = ClearPedTasks
              L27_3 = L2_2
              L26_3(L27_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
      ::lbl_316::
    end
    L3_2(L4_2)
  elseif 6 == A0_2 then
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "BACK"
      L3_3 = "HUD_MINI_GAME_SOUNDSET"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = PlaySoundFrontend
      L1_3 = -1
      L2_3 = "CLOSED"
      L3_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
      L4_3 = 1
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = "yls_laoz@qq_867595619@vx_lzmod1@zma"
      L1_3 = "yls_laoz@qq_867595619@vx_lzmod1@zmb"
      L2_3 = "zma"
      L3_3 = "zmb"
      L4_3 = 0.68
      L5_3 = GetClosestPlayer
      L6_3 = 1.5
      L7_3 = L1_3
      L8_3 = L0_3
      L9_3 = L3_3
      L10_3 = L2_3
      L11_3 = L4_3
      L12_3 = 0.5
      L13_3 = true
      L14_3 = A1_2
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      if nil ~= L5_3 then
        L6_3 = IsEntityAttached
        L7_3 = L2_2
        L6_3 = L6_3(L7_3)
        if not L6_3 then
          L6_3 = IsEntityAttached
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          if not L6_3 then
            goto lbl_42
          end
        end
        do return end
        ::lbl_42::
        L6_3 = canCut
        L6_3 = L6_3()
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetEntityForwardVector
          L8_3 = L5_3
          L7_3 = L7_3(L8_3)
          L8_3 = GetPlayerServerId
          L9_3 = L5_3
          L8_3 = L8_3(L9_3)
          L9_3 = table
          L9_3 = L9_3.unpack
          L10_3 = L7_3 * -1.0
          L10_3 = L6_3 + L10_3
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          if -1 == L8_3 then
            L12_3 = IsPedAPlayer
            L13_3 = L5_3
            L12_3 = L12_3(L13_3)
            if L12_3 then
              goto lbl_316
            end
          end
          L12_3 = GetEntityCoords
          L13_3 = L2_2
          L12_3 = L12_3(L13_3)
          L13_3 = vector3
          L14_3 = L9_3
          L15_3 = L10_3
          L16_3 = L11_3
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L12_3 = L12_3 - L13_3
          L12_3 = #L12_3
          if L12_3 < 1.0 then
            L12_3 = performing
            if not L12_3 then
              performing = true
              L12_3 = SetPedStealthMovement
              L13_3 = L2_2
              L14_3 = false
              L15_3 = "DEFAULT_ACTION"
              L12_3(L13_3, L14_3, L15_3)
              L12_3 = L1_1
              L12_3()
              inFinisher = true
              L12_3 = Wait
              L13_3 = 0
              L12_3(L13_3)
              if -1 ~= L5_3 then
                L12_3 = IsPedAPlayer
                L13_3 = L5_3
                L12_3 = L12_3(L13_3)
                if L12_3 then
                  L12_3 = GetPlayerServerId
                  L13_3 = L5_3
                  L12_3 = L12_3(L13_3)
                  if -1 ~= L12_3 and nil ~= L12_3 then
                    L13_3 = TriggerServerEvent
                    L14_3 = "Krueger:sync"
                    L15_3 = L12_3
                    L16_3 = L1_3
                    L17_3 = L3_3
                    L18_3 = L4_3
                    L13_3(L14_3, L15_3, L16_3, L17_3, L18_3)
                  end
                end
              end
              L12_3 = GetEntityCoords
              L13_3 = L2_2
              L12_3 = L12_3(L13_3)
              L13_3 = GetEntityForwardVector
              L14_3 = L2_2
              L13_3 = L13_3(L14_3)
              L14_3 = table
              L14_3 = L14_3.unpack
              L15_3 = L13_3 * 0.5
              L15_3 = L12_3 + L15_3
              L14_3, L15_3, L16_3 = L14_3(L15_3)
              L17_3 = vector3
              L18_3 = L14_3
              L19_3 = L15_3
              L20_3 = L16_3
              L17_3 = L17_3(L18_3, L19_3, L20_3)
              coordZomb = L17_3
              L17_3 = SetEntityCoords
              L18_3 = L5_3
              L19_3 = coordZomb
              L19_3 = L19_3.x
              L20_3 = coordZomb
              L20_3 = L20_3.y
              L21_3 = coordZomb
              L21_3 = L21_3.z
              L21_3 = L21_3 - 1
              L17_3(L18_3, L19_3, L20_3, L21_3)
              L17_3 = SetEntityHeading
              L18_3 = L5_3
              L19_3 = GetEntityHeading
              L20_3 = L2_2
              L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L19_3(L20_3)
              L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L17_3 = L0_3
              L18_3 = L1_3
              L19_3 = L2_3
              L20_3 = L3_3
              L21_3 = GetGameTimer
              L21_3 = L21_3()
              L22_3 = 3000
              L23_3 = RequestAnimDict
              L24_3 = L17_3
              L23_3(L24_3)
              while true do
                L23_3 = HasAnimDictLoaded
                L24_3 = L17_3
                L23_3 = L23_3(L24_3)
                if L23_3 then
                  break
                end
                L23_3 = GetGameTimer
                L23_3 = L23_3()
                L23_3 = L23_3 - L21_3
                if not (L22_3 > L23_3) then
                  break
                end
                L23_3 = Wait
                L24_3 = 0
                L23_3(L24_3)
              end
              L23_3 = TaskPlayAnim
              L24_3 = L5_3
              L25_3 = L17_3
              L26_3 = L19_3
              L27_3 = 2.0
              L28_3 = 2.0
              L29_3 = -1
              L30_3 = 2
              L31_3 = 2
              L32_3 = false
              L33_3 = false
              L34_3 = false
              L23_3(L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3)
              L23_3 = GetGameTimer
              L23_3 = L23_3()
              L24_3 = 3000
              L25_3 = RequestAnimDict
              L26_3 = L18_3
              L25_3(L26_3)
              while true do
                L25_3 = HasAnimDictLoaded
                L26_3 = L18_3
                L25_3 = L25_3(L26_3)
                if L25_3 then
                  break
                end
                L25_3 = GetGameTimer
                L25_3 = L25_3()
                L25_3 = L25_3 - L23_3
                if not (L24_3 > L25_3) then
                  break
                end
                L25_3 = Wait
                L26_3 = 0
                L25_3(L26_3)
              end
              L25_3 = TaskPlayAnim
              L26_3 = L2_2
              L27_3 = L18_3
              L28_3 = L20_3
              L29_3 = 2.0
              L30_3 = 2.0
              L31_3 = -1
              L32_3 = 2
              L33_3 = 2
              L34_3 = false
              L35_3 = false
              L36_3 = false
              L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L25_3 = Wait
              L26_3 = 25
              L25_3(L26_3)
              L25_3 = false
              while true do
                L26_3 = IsEntityPlayingAnim
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L30_3 = 3
                L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3)
                if not L26_3 then
                  break
                end
                L26_3 = Wait
                L27_3 = 0
                L26_3(L27_3)
                if not L25_3 then
                  L26_3 = GetEntityAnimCurrentTime
                  L27_3 = L2_2
                  L28_3 = L18_3
                  L29_3 = L20_3
                  L26_3 = L26_3(L27_3, L28_3, L29_3)
                  L27_3 = 0.1
                  if L26_3 > L27_3 then
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "BACK"
                    L29_3 = "HUD_MINI_GAME_SOUNDSET"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = PlaySoundFrontend
                    L27_3 = -1
                    L28_3 = "CLOSED"
                    L29_3 = "MP_PROPERTIES_ELEVATOR_DOORS"
                    L30_3 = 1
                    L26_3(L27_3, L28_3, L29_3, L30_3)
                    L26_3 = GetResourceState
                    L27_3 = "striano_combat"
                    L26_3 = L26_3(L27_3)
                    if "started" == L26_3 then
                      L26_3 = exports
                      L26_3 = L26_3.striano_combat
                      L27_3 = L26_3
                      L26_3 = L26_3.gengrunt
                      L26_3(L27_3)
                    end
                    L25_3 = true
                  end
                end
                L26_3 = GetEntityAnimCurrentTime
                L27_3 = L2_2
                L28_3 = L18_3
                L29_3 = L20_3
                L26_3 = L26_3(L27_3, L28_3, L29_3)
                if L4_3 < L26_3 then
                  L26_3 = table
                  L26_3 = L26_3.unpack
                  L27_3 = GetPedBoneCoords
                  L28_3 = L5_3
                  L29_3 = 31086
                  L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3, L29_3)
                  L26_3, L27_3, L28_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
                  L29_3 = vector3
                  L30_3 = L26_3
                  L31_3 = L27_3
                  L32_3 = L28_3
                  L29_3 = L29_3(L30_3, L31_3, L32_3)
                  L30_3 = BloodEffect
                  L31_3 = L29_3
                  L32_3 = true
                  L30_3(L31_3, L32_3)
                  L30_3 = SetEntityHealth
                  L31_3 = L5_3
                  L32_3 = 0
                  L30_3(L31_3, L32_3)
                  L30_3 = ClearPedTasks
                  L31_3 = L2_2
                  L30_3(L31_3)
                  performing = false
                  inFinisher = false
                  return
                end
              end
              L26_3 = ClearPedTasks
              L27_3 = L5_3
              L26_3(L27_3)
              L26_3 = ClearPedTasks
              L27_3 = L2_2
              L26_3(L27_3)
              performing = false
              inFinisher = false
            else
            end
          end
        end
      end
      ::lbl_316::
    end
    L3_2(L4_2)
  end
end
callKrueger = L2_1
L2_1 = RegisterNetEvent
L3_1 = "Krueger:sync"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "Krueger:sync"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = GetPlayerPed
  L5_2 = GetPlayerFromServerId
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  L8_2 = 3000
  L9_2 = RequestAnimDict
  L10_2 = L5_2
  L9_2(L10_2)
  while true do
    L9_2 = HasAnimDictLoaded
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      break
    end
    L9_2 = GetGameTimer
    L9_2 = L9_2()
    L9_2 = L9_2 - L7_2
    if not (L8_2 > L9_2) then
      break
    end
    L9_2 = Wait
    L10_2 = 0
    L9_2(L10_2)
  end
  L9_2 = TaskPlayAnim
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = 2.0
  L14_2 = 2.0
  L15_2 = -1
  L16_2 = 2
  L17_2 = 2
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = Wait
  L10_2 = 25
  L9_2(L10_2)
  L9_2 = false
  while true do
    L10_2 = IsEntityPlayingAnim
    L11_2 = L4_2
    L12_2 = L5_2
    L13_2 = L6_2
    L14_2 = 3
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if not L10_2 then
      break
    end
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
    if not L9_2 then
      L10_2 = GetEntityAnimCurrentTime
      L11_2 = L4_2
      L12_2 = dic
      L13_2 = L6_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = 0.25
      if L10_2 > L11_2 then
        L10_2 = PlaySoundFrontend
        L11_2 = -1
        L12_2 = "BACK"
        L13_2 = "HUD_MINI_GAME_SOUNDSET"
        L14_2 = 1
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = PlaySoundFrontend
        L11_2 = -1
        L12_2 = "CLOSED"
        L13_2 = "MP_PROPERTIES_ELEVATOR_DOORS"
        L14_2 = 1
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L9_2 = true
      end
    end
    L10_2 = GetEntityAnimCurrentTime
    L11_2 = L4_2
    L12_2 = L5_2
    L13_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = endAnimFrame
    if L10_2 > L11_2 then
      L10_2 = table
      L10_2 = L10_2.unpack
      L11_2 = GetPedBoneCoords
      L12_2 = L4_2
      L13_2 = 31086
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2, L13_2)
      L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = vector3
      L14_2 = L10_2
      L15_2 = L11_2
      L16_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L14_2 = BloodEffect
      L15_2 = L13_2
      L14_2(L15_2)
      L14_2 = SetEntityHealth
      L15_2 = L4_2
      L16_2 = 0
      L14_2(L15_2, L16_2)
      return
    end
  end
end
L2_1(L3_1, L4_1)
