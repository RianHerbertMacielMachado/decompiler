local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = {}
L0_1.trolly = L1_1
FleecaHeist = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = "hei_p_m_bag_var22_arm_s"
L1_1[1] = L2_1
L0_1.objects = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = "enter"
L4_1 = "enter_bag"
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = {}
L4_1 = "grab"
L5_1 = "grab_bag"
L6_1 = "grab_cash"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = "grab_idle"
L6_1 = "grab_idle_bag"
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = {}
L6_1 = "exit"
L7_1 = "exit_bag"
L5_1[1] = L6_1
L5_1[2] = L7_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.animations = L1_1
L1_1 = {}
L0_1.scenes = L1_1
L1_1 = {}
L0_1.scenesObjects = L1_1
GrabCash = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = "intro"
L4_1 = "bag_intro"
L5_1 = "intro_drill_bit"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = {}
L4_1 = "drill_straight_start"
L5_1 = "bag_drill_straight_start"
L6_1 = "drill_straight_start_drill_bit"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = "drill_straight_end_idle"
L6_1 = "bag_drill_straight_idle"
L7_1 = "drill_straight_idle_drill_bit"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L5_1 = {}
L6_1 = "drill_straight_fail"
L7_1 = "bag_drill_straight_fail"
L8_1 = "drill_straight_fail_drill_bit"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L6_1 = {}
L7_1 = "drill_straight_end"
L8_1 = "bag_drill_straight_end"
L9_1 = "drill_straight_end_drill_bit"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L7_1 = {}
L8_1 = "exit"
L9_1 = "bag_exit"
L10_1 = "exit_drill_bit"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L0_1.animations = L1_1
L1_1 = {}
L0_1.scenes = L1_1
LaserDrill = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = "hei_p_m_bag_var22_arm_s"
L1_1[1] = L2_1
L0_1.objects = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = "intro"
L4_1 = "bag_intro"
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = {}
L4_1 = "grab"
L5_1 = "bag_grab"
L6_1 = "cart_cash_dissapear"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L4_1 = {}
L5_1 = "exit"
L6_1 = "bag_exit"
L4_1[1] = L5_1
L4_1[2] = L6_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.animations = L1_1
L1_1 = {}
L0_1.scenes = L1_1
Trolly = L0_1
grabNow = false
GrabProp = nil
L0_1 = {}
emptyTrolley = L0_1
heistActive = 0
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = loadModel
  L2_2 = GetHashKey
  L3_2 = A0_2.sceneModel
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = GetHashKey
    L3_2 = "csb_tomcasino"
    L2_2 = L2_2(L3_2)
  end
  L1_2(L2_2)
  L1_2 = A0_2.scenePedStart
  L2_2 = CreatePed
  L3_2 = 4
  L4_2 = GetHashKey
  L5_2 = A0_2.sceneModel
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = GetHashKey
    L5_2 = "csb_tomcasino"
    L4_2 = L4_2(L5_2)
  end
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = A0_2.scenePedStartHead
  if not L8_2 then
    L8_2 = 0.0
  end
  L9_2 = false
  L10_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.scenePed = L2_2
  L2_2 = Wait
  L3_2 = 255
  L2_2(L3_2)
  L2_2 = DoesEntityExist
  L3_2 = A0_2.scenePed
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = FreezeEntityPosition
    L3_2 = A0_2.scenePed
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetBlockingOfNonTemporaryEvents
    L3_2 = A0_2.scenePed
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityInvincible
    L3_2 = A0_2.scenePed
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetPedCanRagdoll
    L3_2 = A0_2.scenePed
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityAlpha
    L3_2 = A0_2.scenePed
    L4_2 = 254
    L2_2(L3_2, L4_2)
    L2_2 = TaskPlayAnim
    L3_2 = A0_2.scenePed
    L4_2 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
    L5_2 = "weed_crouch_checkingleaves_idle_01_inspector"
    L6_2 = 8.0
    L7_2 = 8.0
    L8_2 = -1
    L9_2 = 49
    L10_2 = 0.0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
CreaHeistPed = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = loadAnimDict
  L1_2 = "anim@heists@fleeca_bank@drilling"
  L0_2(L1_2)
  L0_2 = loadAnimDict
  L1_2 = "gestures@f@standing@casual"
  L0_2(L1_2)
  L0_2 = loadAnimDict
  L1_2 = "missminuteman_1ig_2"
  L0_2(L1_2)
  L0_2 = loadAnimDict
  L1_2 = "mp_am_hold_up"
  L0_2(L1_2)
  L0_2 = loadAnimDict
  L1_2 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.FleecaHeist
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Config
    L6_2 = L6_2.FleecaHeist
    if L6_2 then
      L6_2 = Config
      L6_2 = L6_2.FleecaHeist
      L6_2 = L6_2[L4_2]
    end
    L7_2 = CreaHeistPed
    L8_2 = L6_2
    L7_2(L8_2)
  end
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = 1000
    L3_2 = pairs
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = GetEntityCoords
      L10_2 = L8_2.scenePed
      L9_2 = L9_2(L10_2)
      L9_2 = L1_2 - L9_2
      L9_2 = #L9_2
      if L9_2 <= 10.0 then
        L2_2 = 1
        L10_2 = IsPedShooting
        L11_2 = L0_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = heistActive
          if 0 == L10_2 then
            L10_2 = heistActive
            if L10_2 > 0 then
              L10_2 = heistActive
              if L10_2 == L7_2 then
                L10_2 = print
                L11_2 = "QUESTA BANCA E' GIA SOTTO RAPINA!"
                L10_2(L11_2)
              else
                L10_2 = print
                L11_2 = "CE GIA UNA RAPINA IN CORSO NEL MONDO DI GIOCO!"
                L10_2(L11_2)
              end
            else
              L10_2 = TriggerServerEvent
              L11_2 = "fleecaheist:server:startFleeca"
              L12_2 = L7_2
              L10_2(L11_2, L12_2)
              L10_2 = Wait
              L11_2 = 5000
              L10_2(L11_2)
            end
          end
        end
      else
        L10_2 = Config
        L10_2 = L10_2.FleecaHeist
        if L10_2 then
          L10_2 = Config
          L10_2 = L10_2.FleecaHeist
          L10_2 = L10_2[L7_2]
        end
        L11_2 = L10_2.scenePed
        if nil ~= L11_2 then
          L11_2 = DoesEntityExist
          L12_2 = L10_2.scenePed
          L11_2 = L11_2(L12_2)
          if L11_2 then
            goto lbl_102
          end
        end
        L11_2 = CreaHeistPed
        L12_2 = L10_2
        L11_2(L12_2)
      end
      ::lbl_102::
    end
    L3_2 = Wait
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1(L1_1)
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:startFleeca"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:startFleeca"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = StartFleecaHeist
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:busyFleeca"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:busyFleeca"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "Heist ID "
  L3_2 = A0_2
  L4_2 = " is Busy, try later."
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Hack_Failed"
  L4_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if not A0_2 then
    A0_2 = 50.0
  end
  L1_2 = GetGameplayCamCoord
  L1_2 = L1_2()
  L2_2 = GetGameplayCamRot
  L3_2 = 2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = L2_2.x
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = L2_2.z
  L4_2 = L4_2(L5_2)
  L5_2 = vector3
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L6_2 = -L6_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = math
  L8_2 = L8_2.cos
  L9_2 = L3_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 * L8_2
  L8_2 = math
  L8_2 = L8_2.sin
  L9_2 = L3_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L5_2 * A0_2
  L6_2 = L1_2 + L6_2
  L7_2 = StartShapeTestRay
  L8_2 = L1_2.x
  L9_2 = L1_2.y
  L10_2 = L1_2.z
  L11_2 = L6_2.x
  L12_2 = L6_2.y
  L13_2 = L6_2.z
  L14_2 = 12
  L15_2 = PlayerPedId
  L15_2 = L15_2()
  L16_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = GetShapeTestResult
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  if 1 == L9_2 and 0 ~= L12_2 then
    L13_2 = DoesEntityExist
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L13_2 = IsEntityAPed
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L13_2 = IsControlPressed
        L14_2 = 0
        L15_2 = 25
        L13_2 = L13_2(L14_2, L15_2)
        if not L13_2 then
          L13_2 = IsDisabledControlPressed
          L14_2 = 0
          L15_2 = 25
          L13_2 = L13_2(L14_2, L15_2)
          if not L13_2 then
            goto lbl_92
          end
        end
        L13_2 = L12_2
        L14_2 = L10_2
        return L13_2, L14_2
      end
    end
  end
  ::lbl_92::
  L13_2 = nil
  L14_2 = nil
  return L13_2, L14_2
end
GetPedAimedByCamera = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  heistActive = A0_2
  L1_2 = Config
  L1_2 = L1_2.FleecaHeist
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.FleecaHeist
    L1_2 = L1_2[A0_2]
  end
  L2_2 = SetPedCanRagdollFromPlayerImpact
  L3_2 = L1_2.scenePed
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = L1_2.scenePed
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = L1_2.scenePed
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedCanRagdoll
  L3_2 = L1_2.scenePed
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = TaskPlayAnim
  L3_2 = L1_2.scenePed
  L4_2 = "missminuteman_1ig_2"
  L5_2 = "handsup_enter"
  L6_2 = 8.0
  L7_2 = 8.0
  L8_2 = -1
  L9_2 = 50
  L10_2 = 0.0
  L11_2 = false
  L12_2 = false
  L13_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Zone_Neutral"
  L5_2 = "DLC_Apartments_Drop_Zone_Sounds"
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2.scenePed
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L1_2.scenePed
  L4_2 = 1
  L5_2 = L1_2.pedRoute
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2.pedRoute
    L8_2 = L8_2[L7_2]
    L9_2 = GetPedAimedByCamera
    L10_2 = 80.0
    L9_2 = L9_2(L10_2)
    L9_2 = not L9_2
    if L9_2 ~= L3_2 then
      L9_2 = TaskPlayAnim
      L10_2 = L3_2
      L11_2 = "mp_am_hold_up"
      L12_2 = "cower_loop"
      L13_2 = 8.0
      L14_2 = 8.0
      L15_2 = -1
      L16_2 = 50
      L17_2 = 0.0
      L18_2 = false
      L19_2 = false
      L20_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L9_2 = TaskGoStraightToCoord
    L10_2 = L3_2
    L11_2 = L8_2.x
    L12_2 = L8_2.y
    L13_2 = L8_2.z
    L14_2 = 1.0
    L15_2 = -1
    L16_2 = 0.0
    L17_2 = 0.5
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = GetGameTimer
    L9_2 = L9_2()
    while true do
      L10_2 = DoesEntityExist
      L11_2 = L3_2
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        break
      end
      L10_2 = heistActive
      if not (L10_2 > 0) then
        break
      end
      L10_2 = GetEntityCoords
      L11_2 = L3_2
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2 - L8_2
      L11_2 = #L11_2
      L12_2 = 1.1
      if L11_2 <= L12_2 then
        break
      end
      while true do
        L12_2 = GetPedAimedByCamera
        L13_2 = 80.0
        L12_2 = L12_2(L13_2)
        if L12_2 == L3_2 then
          break
        end
        L12_2 = IsPedArmed
        L13_2 = L2_2
        L14_2 = 4
        L12_2 = L12_2(L13_2, L14_2)
        if not L12_2 then
          break
        end
        L12_2 = L1_2.pedRoute
        L12_2 = #L12_2
        if not (L7_2 < L12_2) then
          break
        end
        L12_2 = Wait
        L13_2 = 0
        L12_2(L13_2)
        L12_2 = GetGameTimer
        L12_2 = L12_2()
        L12_2 = L12_2 - L9_2
        L13_2 = 30000
        if L12_2 >= L13_2 then
          L12_2 = ClearPedTasks
          L13_2 = L3_2
          L12_2(L13_2)
          L12_2 = PlaySoundFrontend
          L13_2 = -1
          L14_2 = "ATM_WINDOW"
          L15_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L16_2 = 1
          L12_2(L13_2, L14_2, L15_2, L16_2)
          L12_2 = TriggerServerEvent
          L13_2 = "fleecaheist:server:resetHeist"
          L14_2 = A0_2
          L12_2(L13_2, L14_2)
          L12_2 = print
          L13_2 = "Heist id "
          L14_2 = A0_2
          L15_2 = " Failed."
          L13_2 = L13_2 .. L14_2 .. L15_2
          L12_2(L13_2)
          return
        end
        L12_2 = IsEntityPlayingAnim
        L13_2 = L3_2
        L14_2 = "missminuteman_1ig_2"
        L15_2 = "handsup_enter"
        L16_2 = 3
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        if not L12_2 then
          L12_2 = TaskPlayAnim
          L13_2 = L3_2
          L14_2 = "missminuteman_1ig_2"
          L15_2 = "handsup_enter"
          L16_2 = 8.0
          L17_2 = 8.0
          L18_2 = -1
          L19_2 = 50
          L20_2 = 0.0
          L21_2 = false
          L22_2 = false
          L23_2 = false
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        end
      end
      L12_2 = Wait
      L13_2 = 250
      L12_2(L13_2)
    end
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  while true do
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetEntityCoords
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 - L6_2
    L5_2 = #L5_2
    L6_2 = 1.5
    if not (L5_2 > L6_2) then
      break
    end
    L5_2 = heistActive
    if not (L5_2 > 0) then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = GetEntityCoords
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = DrawMarker
    L7_2 = 1
    L8_2 = L5_2.x
    L9_2 = L5_2.y
    L10_2 = L5_2.z
    L10_2 = L10_2 - 1.0
    L11_2 = 0.0
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 1.5
    L18_2 = 1.5
    L19_2 = 1.5
    L20_2 = 255
    L21_2 = 255
    L22_2 = 255
    L23_2 = 150
    L24_2 = false
    L25_2 = false
    L26_2 = 2
    L27_2 = false
    L28_2 = nil
    L29_2 = nil
    L30_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L5_2 = heistActive
  if L5_2 > 0 then
    L5_2 = TriggerServerEvent
    L6_2 = "fleecaheist:server:doorSync"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    heistActive = A0_2
    L5_2 = PlaySoundFrontend
    L6_2 = -1
    L7_2 = "Zone_Neutral"
    L8_2 = "DLC_Apartments_Drop_Zone_Sounds"
    L9_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = SetEntityHeading
    L6_2 = L3_2
    L7_2 = L1_2.headFinalPad
    L5_2(L6_2, L7_2)
    L5_2 = Wait
    L6_2 = 25
    L5_2(L6_2)
    L5_2 = ClearPedTasks
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = TaskPlayAnim
    L6_2 = L3_2
    L7_2 = "gestures@f@standing@casual"
    L8_2 = "gesture_point"
    L9_2 = 8.0
    L10_2 = 8.0
    L11_2 = -1
    L12_2 = 50
    L13_2 = 0.0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = Wait
    L6_2 = 300
    L5_2(L6_2)
    L5_2 = SetupVault
    L6_2 = A0_2
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 1500
    L5_2(L6_2)
    L5_2 = ClearPedTasks
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 25
    L5_2(L6_2)
    L5_2 = TaskPlayAnim
    L6_2 = L3_2
    L7_2 = "mp_am_hold_up"
    L8_2 = "cower_loop"
    L9_2 = 8.0
    L10_2 = 8.0
    L11_2 = -1
    L12_2 = 1
    L13_2 = 0.0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L5_2 = PlaySoundFrontend
    L6_2 = -1
    L7_2 = "Nav_Arrow_Behind"
    L8_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    L9_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = L1_2.dispatchEvent
    L6_2 = GetEntityCoords
    L7_2 = L4_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
end
StartFleecaHeist = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = Config
  L1_2 = L1_2.FleecaMain
  L1_2 = L1_2.grabReward
  L1_2 = L1_2()
  if "gold" == L1_2 then
    L2_2 = CreateObject
    L3_2 = GetHashKey
    L4_2 = "h4_prop_h4_gold_stack_01a"
    L3_2 = L3_2(L4_2)
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.grab
    L4_2 = L4_2.pos
    L5_2 = 1
    L6_2 = 0
    L7_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    GrabProp = L2_2
    L2_2 = TriggerServerEvent
    L3_2 = "fleecaheist:server:grabSync"
    L4_2 = A0_2
    L5_2 = GetHashKey
    L6_2 = "h4_prop_h4_gold_stack_01a"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  else
    L2_2 = CreateObject
    L3_2 = GetHashKey
    L4_2 = "h4_prop_h4_cash_stack_01a"
    L3_2 = L3_2(L4_2)
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.grab
    L4_2 = L4_2.pos
    L5_2 = 1
    L6_2 = 0
    L7_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    GrabProp = L2_2
    L2_2 = TriggerServerEvent
    L3_2 = "fleecaheist:server:grabSync"
    L4_2 = A0_2
    L5_2 = GetHashKey
    L6_2 = "h4_prop_h4_cash_stack_01a"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L2_2 = SetEntityHeading
  L3_2 = GrabProp
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.grab
  L4_2 = L4_2.heading
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = Config
  L3_2 = L3_2.FleecaHeist
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.trollys
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Config
    L8_2 = L8_2.FleecaMain
    L8_2 = L8_2.trollyReward
    L8_2 = L8_2()
    if "diamond" == L8_2 then
      L9_2 = FleecaHeist
      L9_2 = L9_2.trolly
      L10_2 = CreateObject
      L11_2 = 881130828
      L12_2 = L7_2.coords
      L13_2 = 1
      L14_2 = 0
      L15_2 = 0
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2[L6_2] = L10_2
      L9_2 = TriggerServerEvent
      L10_2 = "fleecaheist:server:modelSync"
      L11_2 = A0_2
      L12_2 = L6_2
      L13_2 = 881130828
      L9_2(L10_2, L11_2, L12_2, L13_2)
    elseif "gold" == L8_2 then
      L9_2 = FleecaHeist
      L9_2 = L9_2.trolly
      L10_2 = CreateObject
      L11_2 = 2007413986
      L12_2 = L7_2.coords
      L13_2 = 1
      L14_2 = 0
      L15_2 = 0
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2[L6_2] = L10_2
      L9_2 = TriggerServerEvent
      L10_2 = "fleecaheist:server:modelSync"
      L11_2 = A0_2
      L12_2 = L6_2
      L13_2 = 2007413986
      L9_2(L10_2, L11_2, L12_2, L13_2)
    elseif "cash" == L8_2 then
      L9_2 = FleecaHeist
      L9_2 = L9_2.trolly
      L10_2 = CreateObject
      L11_2 = 269934519
      L12_2 = L7_2.coords
      L13_2 = 1
      L14_2 = 0
      L15_2 = 0
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2[L6_2] = L10_2
      L9_2 = TriggerServerEvent
      L10_2 = "fleecaheist:server:modelSync"
      L11_2 = A0_2
      L12_2 = L6_2
      L13_2 = 269934519
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L9_2 = SetEntityHeading
    L10_2 = FleecaHeist
    L10_2 = L10_2.trolly
    L10_2 = L10_2[L6_2]
    L11_2 = L7_2.heading
    L9_2(L10_2, L11_2)
  end
end
SetupVault = L0_1
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:grabSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:grabSync"
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = Config
  L2_2 = L2_2.FleecaHeist
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.grab
  L2_2.model = A1_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:modelSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:modelSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = Config
  L3_2 = L3_2.FleecaHeist
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.trollys
  L3_2 = L3_2[A1_2]
  L3_2.model = A2_2
end
L0_1(L1_1, L2_1)
LastDoorOpened = nil
LastDoorOpenedHead = 0.0
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:doorSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:doorSync"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetClosestObjectOfType
  L3_2 = GetEntityCoords
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.scenePed
  L3_2 = L3_2(L4_2)
  L4_2 = 50.0
  L5_2 = Config
  L5_2 = L5_2.FleecaHeist
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.doorModel
  if not L5_2 then
    L5_2 = 961976194
  end
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = Config
  L3_2 = L3_2.FleecaHeist
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.doorHeading
  L4_2 = GetEntityHeading
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2[2] = L4_2
  L3_2 = Config
  L3_2 = L3_2.FleecaHeist
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.doorCalc
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.FleecaHeist
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.doorHeading
    L4_2 = GetEntityHeading
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 + 55.0
    L3_2[1] = L4_2
  else
    L3_2 = Config
    L3_2 = L3_2.FleecaHeist
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.doorHeading
    L4_2 = GetEntityHeading
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 - 55.0
    L3_2[1] = L4_2
  end
  if L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      LastDoorOpened = L2_2
      L3_2 = GetEntityHeading
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      LastDoorOpenedHead = L3_2
      L3_2 = Config
      L3_2 = L3_2.FleecaHeist
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.doorHeading
      L3_2 = L3_2[1]
      while true do
        L4_2 = math
        L4_2 = L4_2.abs
        L5_2 = GetEntityHeading
        L6_2 = L2_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 - L3_2
        L4_2 = L4_2(L5_2)
        if not (L4_2 > 1.0) then
          break
        end
        L4_2 = GetEntityHeading
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = L3_2 - L4_2
        L5_2 = L5_2 + 540
        L5_2 = L5_2 % 360
        L5_2 = L5_2 - 180
        if L5_2 > 0 then
          L6_2 = SetEntityHeading
          L7_2 = L2_2
          L8_2 = L4_2 + 0.1
          L6_2(L7_2, L8_2)
        else
          L6_2 = SetEntityHeading
          L7_2 = L2_2
          L8_2 = L4_2 - 0.1
          L6_2(L7_2, L8_2)
        end
        L6_2 = Wait
        L7_2 = 10
        L6_2(L7_2)
      end
      L4_2 = SetEntityHeading
      L5_2 = L2_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = FreezeEntityPosition
      L5_2 = L2_2
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = SetupFleecaTargets
      L5_2 = A0_2
      L4_2(L5_2)
      while true do
        L4_2 = GetEntityCoords
        L5_2 = L1_2
        L4_2 = L4_2(L5_2)
        L5_2 = GetEntityCoords
        L6_2 = Config
        L6_2 = L6_2.FleecaHeist
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.scenePed
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 - L5_2
        L4_2 = #L4_2
        if not (L4_2 < 75.0) then
          break
        end
        L4_2 = heistActive
        if not (L4_2 > 0) then
          break
        end
        L4_2 = GetEntityCoords
        L5_2 = L1_2
        L4_2 = L4_2(L5_2)
        L5_2 = Config
        L5_2 = L5_2.FleecaHeist
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.grab
        L5_2 = L5_2.pos
        L5_2 = L4_2 - L5_2
        L5_2 = #L5_2
        L6_2 = Config
        L6_2 = L6_2.FleecaHeist
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.grab
        L6_2 = L6_2.loot
        if L6_2 or L5_2 <= 2.0 then
        else
          L6_2 = Config
          L6_2 = L6_2.FleecaHeist
          L6_2 = L6_2[A0_2]
          L6_2 = L6_2.grab
          L6_2 = L6_2.pos
          L7_2 = DrawMarker
          L8_2 = 1
          L9_2 = L6_2.x
          L10_2 = L6_2.y
          L11_2 = L6_2.z
          L12_2 = 0.0
          L13_2 = 0.0
          L14_2 = 0.0
          L15_2 = 0.0
          L16_2 = 0.0
          L17_2 = 0.0
          L18_2 = 0.5
          L19_2 = 0.5
          L20_2 = 1.0
          L21_2 = 255
          L22_2 = 0
          L23_2 = 0
          L24_2 = 150
          L25_2 = false
          L26_2 = false
          L27_2 = 2
          L28_2 = false
          L29_2 = nil
          L30_2 = nil
          L31_2 = false
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
        end
        L6_2 = pairs
        L7_2 = Config
        L7_2 = L7_2.FleecaHeist
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.trollys
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = L11_2.loot
          if not L12_2 then
            L12_2 = L11_2.coords
            L12_2 = L4_2 - L12_2
            L12_2 = #L12_2
            if L12_2 <= 2.0 then
            else
              L13_2 = L11_2.coords
              L14_2 = DrawMarker
              L15_2 = 1
              L16_2 = L13_2.x
              L17_2 = L13_2.y
              L18_2 = L13_2.z
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = 0.0
              L22_2 = 0.0
              L23_2 = 0.0
              L24_2 = 0.0
              L25_2 = 1.0
              L26_2 = 1.0
              L27_2 = 1.0
              L28_2 = 255
              L29_2 = 0
              L30_2 = 0
              L31_2 = 150
              L32_2 = false
              L33_2 = false
              L34_2 = 2
              L35_2 = false
              L36_2 = nil
              L37_2 = nil
              L38_2 = false
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
            end
          end
        end
        L6_2 = pairs
        L7_2 = Config
        L7_2 = L7_2.FleecaHeist
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.drills
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = L11_2.loot
          if not L12_2 then
            L12_2 = L11_2.coords
            L12_2 = L4_2 - L12_2
            L12_2 = #L12_2
            if L12_2 <= 2.0 then
            else
              L13_2 = L11_2.coords
              L14_2 = DrawMarker
              L15_2 = 1
              L16_2 = L13_2.x
              L17_2 = L13_2.y
              L18_2 = L13_2.z
              L19_2 = 0.0
              L20_2 = 0.0
              L21_2 = 0.0
              L22_2 = 0.0
              L23_2 = 0.0
              L24_2 = 0.0
              L25_2 = 0.5
              L26_2 = 0.5
              L27_2 = 1.0
              L28_2 = 255
              L29_2 = 0
              L30_2 = 0
              L31_2 = 150
              L32_2 = false
              L33_2 = false
              L34_2 = 2
              L35_2 = false
              L36_2 = nil
              L37_2 = nil
              L38_2 = false
              L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
            end
          end
        end
        L6_2 = Wait
        L7_2 = 0
        L6_2(L7_2)
      end
      L4_2 = PlaySoundFrontend
      L5_2 = -1
      L6_2 = "ATM_WINDOW"
      L7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      L8_2 = 1
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = TriggerServerEvent
      L5_2 = "fleecaheist:server:resetHeist"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      L4_2 = print
      L5_2 = "Heist id "
      L6_2 = A0_2
      L7_2 = " finished."
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:lootSync"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:lootSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 then
    L3_2 = Config
    L3_2 = L3_2.FleecaHeist
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2[A2_2]
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2[A2_2]
    L4_2 = L4_2.loot
    L4_2 = not L4_2
    L3_2.loot = L4_2
  else
    L3_2 = Config
    L3_2 = L3_2.FleecaHeist
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2[A1_2]
    L4_2 = L4_2.loot
    L4_2 = not L4_2
    L3_2.loot = L4_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "resetHeist"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = heistActive
  if L0_2 > 0 then
    L0_2 = TriggerServerEvent
    L1_2 = "fleecaheist:server:resetHeist"
    L2_2 = heistActive
    L0_2(L1_2, L2_2)
    L0_2 = print
    L1_2 = "Reset Heist"
    L2_2 = heistActive
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:resetHeist"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:resetHeist"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = Config
  L1_2 = L1_2.FleecaHeist
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.FleecaHeist
    L1_2 = L1_2[A0_2]
  end
  L2_2 = L1_2.scenePedStart
  L3_2 = ClearPedTasks
  L4_2 = L1_2.scenePed
  L3_2(L4_2)
  L3_2 = SetEntityCoords
  L4_2 = L1_2.scenePed
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SetEntityHeading
  L4_2 = L1_2.scenePed
  L5_2 = L1_2.scenePedStartHead
  L3_2(L4_2, L5_2)
  L3_2 = TaskPlayAnim
  L4_2 = L1_2.scenePed
  L5_2 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  L6_2 = "weed_crouch_checkingleaves_idle_01_inspector"
  L7_2 = 8.0
  L8_2 = 8.0
  L9_2 = -1
  L10_2 = 49
  L11_2 = 0.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = GetClosestObjectOfType
  L4_2 = GetEntityCoords
  L5_2 = Config
  L5_2 = L5_2.FleecaHeist
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.scenePed
  L4_2 = L4_2(L5_2)
  L5_2 = 50.0
  L6_2 = Config
  L6_2 = L6_2.FleecaHeist
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.doorModel
  if not L6_2 then
    L6_2 = 961976194
  end
  L7_2 = false
  L8_2 = false
  L9_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.FleecaHeist
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.doorHeading
    L4_2 = L4_2[2]
    if nil ~= L4_2 then
      L4_2 = SetEntityHeading
      L5_2 = L3_2
      L6_2 = Config
      L6_2 = L6_2.FleecaHeist
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.doorHeading
      L6_2 = L6_2[2]
      L4_2(L5_2, L6_2)
    end
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = LastDoorOpened
  if L4_2 then
    L4_2 = DoesEntityExist
    L5_2 = LastDoorOpened
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = SetEntityHeading
      L5_2 = LastDoorOpened
      L6_2 = LastDoorOpenedHead
      L6_2 = L6_2 + 0.0
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = DoesEntityExist
  L5_2 = GrabProp
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = SetEntityAsMissionEntity
    L5_2 = GrabProp
    L4_2(L5_2)
    L4_2 = DeleteEntity
    L5_2 = GrabProp
    L4_2(L5_2)
    GrabProp = nil
  end
  L4_2 = pairs
  L5_2 = emptyTrolley
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = DoesEntityExist
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = SetEntityAsMissionEntity
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = DeleteEntity
      L11_2 = L9_2
      L10_2(L11_2)
    end
  end
  L4_2 = {}
  emptyTrolley = L4_2
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.FleecaHeist
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.trollys
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetClosestObjectOfType
    L11_2 = L9_2.coords
    L12_2 = 1.0
    L13_2 = 881130828
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = GetClosestObjectOfType
    L12_2 = L9_2.coords
    L13_2 = 1.0
    L14_2 = 2007413986
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L12_2 = GetClosestObjectOfType
    L13_2 = L9_2.coords
    L14_2 = 1.0
    L15_2 = 269934519
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L13_2 = GetClosestObjectOfType
    L14_2 = L9_2.coords
    L15_2 = 1.0
    L16_2 = 769923921
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L14_2 = DoesEntityExist
    L15_2 = L10_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = DeleteEntity
      L15_2 = L10_2
      L14_2(L15_2)
    end
    L14_2 = DoesEntityExist
    L15_2 = L11_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = DeleteEntity
      L15_2 = L11_2
      L14_2(L15_2)
    end
    L14_2 = DoesEntityExist
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = DeleteEntity
      L15_2 = L12_2
      L14_2(L15_2)
    end
    L14_2 = DoesEntityExist
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = DeleteEntity
      L15_2 = L13_2
      L14_2(L15_2)
    end
  end
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.FleecaHeist
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.drills
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2.loot = false
  end
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.FleecaHeist
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.trollys
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2.loot = false
  end
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.grab
  L4_2.loot = false
  L4_2 = RemoveFleecaTargets
  L5_2 = A0_2
  L4_2(L5_2)
  heistActive = 0
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  grabNow = true
  L1_2 = TriggerServerEvent
  L2_2 = "fleecaheist:server:lootSync"
  L3_2 = A0_2
  L4_2 = "grab"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ""
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.grab
  L4_2 = L4_2.model
  if -180074230 == L4_2 then
    L3_2 = "anim@scripted@heist@ig1_table_grab@gold@male@"
    L5_2 = loadAnimDict
    L6_2 = L3_2
    L5_2(L6_2)
  else
    L3_2 = "anim@scripted@heist@ig1_table_grab@cash@male@"
    L5_2 = loadAnimDict
    L6_2 = L3_2
    L5_2(L6_2)
  end
  L5_2 = loadModel
  L6_2 = "hei_p_m_bag_var22_arm_s"
  L5_2(L6_2)
  L5_2 = CreateObject
  L6_2 = GetHashKey
  L7_2 = "hei_p_m_bag_var22_arm_s"
  L6_2 = L6_2(L7_2)
  L7_2 = vector3
  L8_2 = L2_2.x
  L9_2 = L2_2.y
  L10_2 = L2_2.z
  L10_2 = L10_2 - 2.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = 1
  L9_2 = 1
  L10_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  bag = L5_2
  while true do
    L5_2 = DoesEntityExist
    L6_2 = bag
    L5_2 = L5_2(L6_2)
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = SetEntityCompletelyDisableCollision
  L6_2 = bag
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = GetClosestObjectOfType
  L6_2 = Config
  L6_2 = L6_2.FleecaHeist
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.grab
  L6_2 = L6_2.pos
  L7_2 = 2.0
  L8_2 = L4_2
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  sceneObject = L5_2
  L5_2 = 1
  L6_2 = GrabCash
  L6_2 = L6_2.animations
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = GrabCash
    L9_2 = L9_2.scenes
    L10_2 = NetworkCreateSynchronisedScene
    L11_2 = GetEntityCoords
    L12_2 = sceneObject
    L11_2 = L11_2(L12_2)
    L12_2 = GetEntityRotation
    L13_2 = sceneObject
    L12_2 = L12_2(L13_2)
    L13_2 = 2
    L14_2 = true
    L15_2 = false
    L16_2 = 1065353216
    L17_2 = 0
    L18_2 = 1.3
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2[L8_2] = L10_2
    L9_2 = NetworkAddPedToSynchronisedScene
    L10_2 = L1_2
    L11_2 = GrabCash
    L11_2 = L11_2.scenes
    L11_2 = L11_2[L8_2]
    L12_2 = L3_2
    L13_2 = GrabCash
    L13_2 = L13_2.animations
    L13_2 = L13_2[L8_2]
    L13_2 = L13_2[1]
    L14_2 = 4.0
    L15_2 = -4.0
    L16_2 = 1033
    L17_2 = 0
    L18_2 = 1000.0
    L19_2 = 0
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L9_2 = NetworkAddEntityToSynchronisedScene
    L10_2 = bag
    L11_2 = GrabCash
    L11_2 = L11_2.scenes
    L11_2 = L11_2[L8_2]
    L12_2 = L3_2
    L13_2 = GrabCash
    L13_2 = L13_2.animations
    L13_2 = L13_2[L8_2]
    L13_2 = L13_2[2]
    L14_2 = 1.0
    L15_2 = -1.0
    L16_2 = 1148846080
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    if 2 == L8_2 then
      if -180074230 == L4_2 then
        L9_2 = NetworkAddEntityToSynchronisedScene
        L10_2 = sceneObject
        L11_2 = GrabCash
        L11_2 = L11_2.scenes
        L11_2 = L11_2[L8_2]
        L12_2 = L3_2
        L13_2 = "grab_gold"
        L14_2 = 1.0
        L15_2 = -1.0
        L16_2 = 1148846080
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      else
        L9_2 = NetworkAddEntityToSynchronisedScene
        L10_2 = sceneObject
        L11_2 = GrabCash
        L11_2 = L11_2.scenes
        L11_2 = L11_2[L8_2]
        L12_2 = L3_2
        L13_2 = GrabCash
        L13_2 = L13_2.animations
        L13_2 = L13_2[L8_2]
        L13_2 = L13_2[3]
        L14_2 = 1.0
        L15_2 = -1.0
        L16_2 = 1148846080
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
  L5_2 = NetworkStartSynchronisedScene
  L6_2 = GrabCash
  L6_2 = L6_2.scenes
  L6_2 = L6_2[1]
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = GetAnimDuration
  L7_2 = L3_2
  L8_2 = "enter"
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 1000
  L5_2(L6_2)
  L5_2 = NetworkStartSynchronisedScene
  L6_2 = GrabCash
  L6_2 = L6_2.scenes
  L6_2 = L6_2[2]
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = GetAnimDuration
  L7_2 = L3_2
  L8_2 = "grab"
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 1000
  L6_2 = L6_2 - 3000
  L5_2(L6_2)
  L5_2 = DeleteObject
  L6_2 = sceneObject
  L5_2(L6_2)
  if -180074230 == L4_2 then
  else
  end
  L5_2 = NetworkStartSynchronisedScene
  L6_2 = GrabCash
  L6_2 = L6_2.scenes
  L6_2 = L6_2[4]
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = GetAnimDuration
  L7_2 = L3_2
  L8_2 = "exit"
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 1000
  L6_2 = L6_2 - 500
  L5_2(L6_2)
  L5_2 = ClearPedTasks
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = DeleteObject
  L6_2 = bag
  L5_2(L6_2)
  grabNow = false
end
Grab = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  grabNow = true
  L2_2 = TriggerServerEvent
  L3_2 = "fleecaheist:server:lootSync"
  L4_2 = A0_2
  L5_2 = "trollys"
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Config
  L4_2 = L4_2.FleecaHeist
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.trollys
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.model
  L5_2 = "anim@heists@ornate_bank@grab_cash"
  if 881130828 == L4_2 then
    grabModel = "ch_prop_vault_dimaondbox_01a"
  elseif 2007413986 == L4_2 then
    grabModel = "ch_prop_gold_bar_01a"
  else
    grabModel = "hei_prop_heist_cash_pile"
  end
  L6_2 = loadAnimDict
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = loadModel
  L7_2 = "hei_p_m_bag_var22_arm_s"
  L6_2(L7_2)
  L6_2 = GetClosestObjectOfType
  L7_2 = Config
  L7_2 = L7_2.FleecaHeist
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.trollys
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.coords
  L8_2 = 2.0
  L9_2 = L4_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  sceneObject = L6_2
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = "hei_p_m_bag_var22_arm_s"
  L7_2 = L7_2(L8_2)
  L8_2 = L3_2
  L9_2 = true
  L10_2 = false
  L11_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  bag = L6_2
  while true do
    L6_2 = NetworkHasControlOfEntity
    L7_2 = sceneObject
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 1
    L6_2(L7_2)
    L6_2 = NetworkRequestControlOfEntity
    L7_2 = sceneObject
    L6_2(L7_2)
  end
  L6_2 = 1
  L7_2 = Trolly
  L7_2 = L7_2.animations
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = Trolly
    L10_2 = L10_2.scenes
    L11_2 = NetworkCreateSynchronisedScene
    L12_2 = GetEntityCoords
    L13_2 = sceneObject
    L12_2 = L12_2(L13_2)
    L13_2 = GetEntityRotation
    L14_2 = sceneObject
    L13_2 = L13_2(L14_2)
    L14_2 = 2
    L15_2 = true
    L16_2 = false
    L17_2 = 1065353216
    L18_2 = 0
    L19_2 = 1.3
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L10_2[L9_2] = L11_2
    L10_2 = NetworkAddPedToSynchronisedScene
    L11_2 = L2_2
    L12_2 = Trolly
    L12_2 = L12_2.scenes
    L12_2 = L12_2[L9_2]
    L13_2 = L5_2
    L14_2 = Trolly
    L14_2 = L14_2.animations
    L14_2 = L14_2[L9_2]
    L14_2 = L14_2[1]
    L15_2 = 1.5
    L16_2 = -4.0
    L17_2 = 1
    L18_2 = 16
    L19_2 = 1148846080
    L20_2 = 0
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L10_2 = NetworkAddEntityToSynchronisedScene
    L11_2 = bag
    L12_2 = Trolly
    L12_2 = L12_2.scenes
    L12_2 = L12_2[L9_2]
    L13_2 = L5_2
    L14_2 = Trolly
    L14_2 = L14_2.animations
    L14_2 = L14_2[L9_2]
    L14_2 = L14_2[2]
    L15_2 = 4.0
    L16_2 = -8.0
    L17_2 = 1
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    if 2 == L9_2 then
      L10_2 = NetworkAddEntityToSynchronisedScene
      L11_2 = sceneObject
      L12_2 = Trolly
      L12_2 = L12_2.scenes
      L12_2 = L12_2[L9_2]
      L13_2 = L5_2
      L14_2 = "cart_cash_dissapear"
      L15_2 = 4.0
      L16_2 = -8.0
      L17_2 = 1
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  L6_2 = NetworkStartSynchronisedScene
  L7_2 = Trolly
  L7_2 = L7_2.scenes
  L7_2 = L7_2[1]
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 1750
  L6_2(L7_2)
  L6_2 = CashAppear
  L7_2 = grabModel
  L6_2(L7_2)
  L6_2 = NetworkStartSynchronisedScene
  L7_2 = Trolly
  L7_2 = L7_2.scenes
  L7_2 = L7_2[2]
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 37000
  L6_2(L7_2)
  L6_2 = NetworkStartSynchronisedScene
  L7_2 = Trolly
  L7_2 = L7_2.scenes
  L7_2 = L7_2[3]
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 2000
  L6_2(L7_2)
  L6_2 = 769923921
  L7_2 = CreateObject
  L8_2 = L6_2
  L9_2 = Config
  L9_2 = L9_2.FleecaHeist
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.trollys
  L9_2 = L9_2[A1_2]
  L9_2 = L9_2.coords
  L10_2 = true
  L11_2 = false
  L12_2 = false
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  newTrolly = L7_2
  L7_2 = SetEntityRotation
  L8_2 = newTrolly
  L9_2 = 0
  L10_2 = 0
  L11_2 = GetEntityHeading
  L12_2 = sceneObject
  L11_2 = L11_2(L12_2)
  L12_2 = 1
  L13_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = emptyTrolley
  L9_2 = newTrolly
  L7_2(L8_2, L9_2)
  L7_2 = DeleteObject
  L8_2 = sceneObject
  L7_2(L8_2)
  L7_2 = DeleteObject
  L8_2 = bag
  L7_2(L8_2)
  grabNow = false
end
GrabTrolly = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "ch_prop_vault_dimaondbox_01a" == A0_2 then
    reward = "diamond"
  elseif "ch_prop_gold_bar_01a" == A0_2 then
    reward = "goldbar"
  elseif "hei_prop_heist_cash_pile" == A0_2 then
    reward = "dirtymoney"
  end
  L3_2 = GetHashKey
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = loadModel
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = CreateObject
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityInvincible
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityNoCollisionEntity
  L6_2 = L4_2
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityVisible
  L6_2 = L4_2
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = AttachEntityToEntity
  L6_2 = L4_2
  L7_2 = L1_2
  L8_2 = GetPedBoneIndex
  L9_2 = L1_2
  L10_2 = 60309
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = 0
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L5_2
      L0_3 = L0_3 - L1_3
      L1_3 = 37000
      if not (L0_3 < L1_3) then
        break
      end
      L0_3 = Wait
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 73
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = HasAnimEventFired
      L1_3 = L1_2
      L2_3 = GetHashKey
      L3_3 = "CASH_APPEAR"
      L2_3, L3_3 = L2_3(L3_3)
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L0_3 = IsEntityVisible
        L1_3 = L4_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = SetEntityVisible
          L1_3 = L4_2
          L2_3 = true
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
        end
      end
      L0_3 = HasAnimEventFired
      L1_3 = L1_2
      L2_3 = GetHashKey
      L3_3 = "RELEASE_CASH_DESTROY"
      L2_3, L3_3 = L2_3(L3_3)
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L0_3 = IsEntityVisible
        L1_3 = L4_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = SetEntityVisible
          L1_3 = L4_2
          L2_3 = false
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
        end
      end
    end
    L0_3 = DeleteObject
    L1_3 = L4_2
    L0_3(L1_3)
  end
  L6_2(L7_2)
end
CashAppear = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  grabNow = true
  L2_2 = TriggerServerEvent
  L3_2 = "fleecaheist:server:lootSync"
  L4_2 = A0_2
  L5_2 = "drills"
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "hei_prop_heist_drill"
  L5_2 = loadModel
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = CreateObject
  L6_2 = GetHashKey
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  laserDrill = L5_2
  L5_2 = SetEntityCompletelyDisableCollision
  L6_2 = laserDrill
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = AttachEntityToEntity
  L6_2 = laserDrill
  L7_2 = L2_2
  L8_2 = GetPedBoneIndex
  L9_2 = PlayerPedId
  L9_2 = L9_2()
  L10_2 = 57005
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = 0.155
  L10_2 = -0.015
  L11_2 = -0.05
  L12_2 = 96.400000000001
  L13_2 = -84.600000000001
  L14_2 = 166.0
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = true
  L19_2 = 1
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = TaskPlayAnim
  L6_2 = L2_2
  L7_2 = "anim@heists@fleeca_bank@drilling"
  L8_2 = "drill_left"
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = -1
  L12_2 = 50
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 25
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = heistActive
      if not (L0_3 > 0) then
        break
      end
      L0_3 = grabNow
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L2_2
      L2_3 = "anim@heists@fleeca_bank@drilling"
      L3_3 = "drill_left"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = TaskPlayAnim
        L1_3 = L2_2
        L2_3 = "anim@heists@fleeca_bank@drilling"
        L3_3 = "drill_left"
        L4_3 = 8.0
        L5_3 = 8.0
        L6_3 = 1950
        L7_3 = 50
        L8_3 = 0.0
        L9_3 = false
        L10_3 = false
        L11_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
  end
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = 1000
  L5_2(L6_2)
  L5_2 = Drilling
  L5_2 = L5_2.Start
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if A0_3 then
      L1_3 = DeleteObject
      L2_3 = laserDrill
      L1_3(L2_3)
      grabNow = false
      L1_3 = Wait
      L2_3 = 500
      L1_3(L2_3)
      L1_3 = ClearPedTasks
      L2_3 = L2_2
      L1_3(L2_3)
      L1_3 = TaskPlayAnim
      L2_3 = L2_2
      L3_3 = "anim@am_hold_up@female"
      L4_3 = "shoplift_high"
      L5_3 = 8.0
      L6_3 = 8.0
      L7_3 = 950
      L8_3 = 50
      L9_3 = 0.0
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    else
      L1_3 = DeleteObject
      L2_3 = laserDrill
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = "fleecaheist:server:lootSync"
      L3_3 = A0_2
      L4_3 = "drills"
      L5_3 = A1_2
      L1_3(L2_3, L3_3, L4_3, L5_3)
      grabNow = false
      L1_3 = Wait
      L2_3 = 500
      L1_3(L2_3)
      L1_3 = ClearPedTasks
      L2_3 = L2_2
      L1_3(L2_3)
      L1_3 = TaskPlayAnim
      L2_3 = L2_2
      L3_3 = "gestures@f@standing@casual"
      L4_3 = "gesture_shrug_hard"
      L5_3 = 8.0
      L6_3 = 8.0
      L7_3 = 950
      L8_3 = 50
      L9_3 = 0.0
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L5_2(L6_2)
end
Drill = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 50
    L1_2(L2_2)
  end
end
loadAnimDict = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" == L1_2 then
  else
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = RequestModel
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
end
loadModel = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetTextComponentFormat
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentString
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DisplayHelpTextFromStringLabel
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1
  L5_2 = 50
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
ShowHelpNotification = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNotificationTextEntry
  L2_2 = "STRING"
  L1_2(L2_2)
  L1_2 = AddTextComponentString
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = DrawNotification
  L2_2 = 0
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
ShowNotification = L0_1
L0_1 = RegisterNetEvent
L1_1 = "fleecaheist:client:showNotification"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fleecaheist:client:showNotification"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = ShowNotification
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = AddBlipForCoord
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = SetBlipSprite
  L6_2 = L4_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipColour
  L6_2 = L4_2
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = SetBlipScale
  L6_2 = L4_2
  L7_2 = 0.8
  L5_2(L6_2, L7_2)
  L5_2 = BeginTextCommandSetBlipName
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = A3_2
  L5_2(L6_2)
  L5_2 = EndTextCommandSetBlipName
  L6_2 = L4_2
  L5_2(L6_2)
  return L4_2
end
addBlip = L0_1
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = LastDoorOpened
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = LastDoorOpened
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = SetEntityHeading
        L2_2 = LastDoorOpened
        L3_2 = LastDoorOpenedHead
        L3_2 = L3_2 + 0.0
        L1_2(L2_2, L3_2)
      end
    end
    L1_2 = pairs
    L2_2 = Config
    L2_2 = L2_2.FleecaHeist
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = Config
      L7_2 = L7_2.FleecaHeist
      if L7_2 then
        L7_2 = Config
        L7_2 = L7_2.FleecaHeist
        L7_2 = L7_2[L5_2]
      end
      L8_2 = L7_2.scenePed
      if L8_2 then
        L8_2 = DoesEntityExist
        L9_2 = L7_2.scenePed
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L7_2.scenePed
          L8_2(L9_2)
          L8_2 = DeleteEntity
          L9_2 = L7_2.scenePed
          L8_2(L9_2)
        end
      end
    end
    L1_2 = pairs
    L2_2 = emptyTrolley
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
    L1_2 = heistActive
    if L1_2 > 0 then
      L1_2 = TriggerEvent
      L2_2 = "fleecaheist:client:resetHeist"
      L3_2 = heistActive
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = {}
Scaleforms = L0_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestScaleformMovie
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
L0_1.LoadMovie = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestScaleformMovieInteractive
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = HasScaleformMovieLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  return L1_2
end
L0_1.LoadInteractive = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetScaleformMovieAsNoLongerNeeded
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.UnloadMovie = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = HasThisAdditionalTextLoaded
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = ClearAdditionalText
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = RequestAdditionalText
      L7_2 = A0_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      while true do
        L6_2 = HasThisAdditionalTextLoaded
        L7_2 = A0_2
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          break
        end
        L6_2 = Wait
        L7_2 = 0
        L6_2(L7_2)
      end
    end
  end
end
L0_1.LoadAdditionalText = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = "SET_LABELS"
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = BeginTextCommandScaleformString
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = EndTextCommandScaleformString
    L7_2()
  end
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.SetLabels = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Scaleforms
    L8_2 = L8_2.TrueType
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "string" == L8_2 then
      L9_2 = _ENV
      L10_2 = "PushScaleformMovieFunctionParameterString"
      L9_2 = L9_2[L10_2]
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "boolean" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterBool
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "int" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterInt
      L10_2 = L7_2
      L9_2(L10_2)
    elseif "float" == L8_2 then
      L9_2 = PushScaleformMovieFunctionParameterFloat
      L10_2 = L7_2
      L9_2(L10_2)
    end
  end
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.PopMulti = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterFloat
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopFloat = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterInt
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopInt = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = PushScaleformMovieFunction
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = PushScaleformMovieFunctionParameterBool
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = PopScaleformMovieFunctionVoid
  L3_2()
end
L0_1.PopBool = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunction
  return L2_2()
end
L0_1.PopRet = L1_1
L0_1 = Scaleforms
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PushScaleformMovieFunction
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = PopScaleformMovieFunctionVoid
  L2_2()
end
L0_1.PopVoid = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetScaleformMovieFunctionReturnBool
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.RetBool = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetScaleformMovieFunctionReturnInt
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.RetInt = L1_1
L0_1 = Scaleforms
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    L1_2 = type
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = L1_2
  L4_2 = "."
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = "float"
    return L2_2
  else
    L2_2 = "int"
    return L2_2
  end
end
L0_1.TrueType = L1_1
L0_1 = {}
Drilling = L0_1
L0_1 = Drilling
L1_1 = {}
L2_1 = 30
L3_1 = 31
L4_1 = 32
L5_1 = 33
L6_1 = 34
L7_1 = 35
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L0_1.DisabledControls = L1_1
L0_1 = Drilling
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Drilling
  L1_2 = L1_2.Active
  if not L1_2 then
    L1_2 = Drilling
    L1_2.Active = true
    L1_2 = Drilling
    L1_2 = L1_2.Init
    L1_2()
    L1_2 = Drilling
    L1_2 = L1_2.Update
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
L0_1.Start = L1_1
L0_1 = Drilling
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Drilling
  L0_2 = L0_2.Scaleform
  if L0_2 then
    L0_2 = Scaleforms
    L0_2 = L0_2.UnloadMovie
    L1_2 = Drilling
    L1_2 = L1_2.Scaleform
    L0_2(L1_2)
  end
  L0_2 = Drilling
  L1_2 = Scaleforms
  L1_2 = L1_2.LoadMovie
  L2_2 = "VAULT_DRILL"
  L1_2 = L1_2(L2_2)
  L0_2.Scaleform = L1_2
  L0_2 = Drilling
  L0_2.DrillSpeed = 0.0
  L0_2 = Drilling
  L0_2.DrillPos = 0.0
  L0_2 = Drilling
  L0_2.DrillTemp = 0.0
  L0_2 = Drilling
  L0_2.HoleDepth = 0.0
  L0_2 = Scaleforms
  L0_2 = L0_2.PopVoid
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = "REVEAL"
  L0_2(L1_2, L2_2)
  L0_2 = Scaleforms
  L0_2 = L0_2.PopFloat
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = "SET_SPEED"
  L3_2 = 0.0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Scaleforms
  L0_2 = L0_2.PopFloat
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = "SET_DRILL_POSITION"
  L3_2 = 0.0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Scaleforms
  L0_2 = L0_2.PopFloat
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = "SET_TEMPERATURE"
  L3_2 = 0.0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Scaleforms
  L0_2 = L0_2.PopFloat
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = "SET_HOLE_DEPTH"
  L3_2 = 0.0
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.Init = L1_1
L0_1 = Drilling
function L1_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = Drilling
    L1_2 = L1_2.Active
    if not L1_2 then
      break
    end
    L1_2 = Drilling
    L1_2 = L1_2.Draw
    L1_2()
    L1_2 = Drilling
    L1_2 = L1_2.DisableControls
    L1_2()
    L1_2 = Drilling
    L1_2 = L1_2.HandleControls
    L1_2()
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = A0_2
  L2_2 = Drilling
  L2_2 = L2_2.Result
  L1_2(L2_2)
end
L0_1.Update = L1_1
L0_1 = Drilling
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DrawScaleformMovieFullscreen
  L1_2 = Drilling
  L1_2 = L1_2.Scaleform
  L2_2 = 255
  L3_2 = 255
  L4_2 = 255
  L5_2 = 255
  L6_2 = 255
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.Draw = L1_1
L0_1 = Drilling
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Drilling
  L0_2 = L0_2.DrillPos
  L1_2 = IsControlJustPressed
  L2_2 = 0
  L3_2 = 172
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = Drilling
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = 1.0
    L4_2 = Drilling
    L4_2 = L4_2.DrillPos
    L4_2 = L4_2 + 0.01
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.DrillPos = L2_2
  else
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 172
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = Drilling
      L2_2 = math
      L2_2 = L2_2.min
      L3_2 = 1.0
      L4_2 = Drilling
      L4_2 = L4_2.DrillPos
      L5_2 = GetFrameTime
      L5_2 = L5_2()
      L5_2 = 0.1 * L5_2
      L6_2 = math
      L6_2 = L6_2.max
      L7_2 = 0.1
      L8_2 = Drilling
      L8_2 = L8_2.DrillTemp
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2 * 10
      L5_2 = L5_2 / L6_2
      L4_2 = L4_2 + L5_2
      L2_2 = L2_2(L3_2, L4_2)
      L1_2.DrillPos = L2_2
    else
      L1_2 = IsControlJustPressed
      L2_2 = 0
      L3_2 = 173
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = Drilling
        L2_2 = math
        L2_2 = L2_2.max
        L3_2 = 0.0
        L4_2 = Drilling
        L4_2 = L4_2.DrillPos
        L4_2 = L4_2 - 0.01
        L2_2 = L2_2(L3_2, L4_2)
        L1_2.DrillPos = L2_2
      else
        L1_2 = IsControlPressed
        L2_2 = 0
        L3_2 = 173
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = Drilling
          L2_2 = math
          L2_2 = L2_2.max
          L3_2 = 0.0
          L4_2 = Drilling
          L4_2 = L4_2.DrillPos
          L5_2 = GetFrameTime
          L5_2 = L5_2()
          L5_2 = 0.1 * L5_2
          L4_2 = L4_2 - L5_2
          L2_2 = L2_2(L3_2, L4_2)
          L1_2.DrillPos = L2_2
        end
      end
    end
  end
  L1_2 = Drilling
  L1_2 = L1_2.DrillSpeed
  L2_2 = IsControlJustPressed
  L3_2 = 0
  L4_2 = 175
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = Drilling
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = 1.0
    L5_2 = Drilling
    L5_2 = L5_2.DrillSpeed
    L5_2 = L5_2 + 0.05
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.DrillSpeed = L3_2
  else
    L2_2 = IsControlPressed
    L3_2 = 0
    L4_2 = 175
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = Drilling
      L3_2 = math
      L3_2 = L3_2.min
      L4_2 = 1.0
      L5_2 = Drilling
      L5_2 = L5_2.DrillSpeed
      L6_2 = GetFrameTime
      L6_2 = L6_2()
      L6_2 = 0.5 * L6_2
      L5_2 = L5_2 + L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2.DrillSpeed = L3_2
    else
      L2_2 = IsControlJustPressed
      L3_2 = 0
      L4_2 = 174
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = Drilling
        L3_2 = math
        L3_2 = L3_2.max
        L4_2 = 0.0
        L5_2 = Drilling
        L5_2 = L5_2.DrillSpeed
        L5_2 = L5_2 - 0.05
        L3_2 = L3_2(L4_2, L5_2)
        L2_2.DrillSpeed = L3_2
      else
        L2_2 = IsControlPressed
        L3_2 = 0
        L4_2 = 174
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = Drilling
          L3_2 = math
          L3_2 = L3_2.max
          L4_2 = 0.0
          L5_2 = Drilling
          L5_2 = L5_2.DrillSpeed
          L6_2 = GetFrameTime
          L6_2 = L6_2()
          L6_2 = 0.5 * L6_2
          L5_2 = L5_2 - L6_2
          L3_2 = L3_2(L4_2, L5_2)
          L2_2.DrillSpeed = L3_2
        end
      end
    end
  end
  L2_2 = Drilling
  L2_2 = L2_2.DrillTemp
  L3_2 = Drilling
  L3_2 = L3_2.DrillPos
  if L0_2 < L3_2 then
    L3_2 = Drilling
    L3_2 = L3_2.DrillSpeed
    L4_2 = 0.4
    if L3_2 > L4_2 then
      L3_2 = Drilling
      L4_2 = math
      L4_2 = L4_2.min
      L5_2 = 1.0
      L6_2 = Drilling
      L6_2 = L6_2.DrillTemp
      L7_2 = GetFrameTime
      L7_2 = L7_2()
      L7_2 = 0.05 * L7_2
      L8_2 = Drilling
      L8_2 = L8_2.DrillSpeed
      L8_2 = L8_2 * 10
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2 + L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.DrillTemp = L4_2
      L3_2 = Scaleforms
      L3_2 = L3_2.PopFloat
      L4_2 = Drilling
      L4_2 = L4_2.Scaleform
      L5_2 = "SET_DRILL_POSITION"
      L6_2 = Drilling
      L6_2 = L6_2.DrillPos
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = Drilling
      L3_2 = L3_2.DrillPos
      L4_2 = 0.1
      if not (L3_2 < L4_2) then
        L3_2 = Drilling
        L3_2 = L3_2.DrillPos
        L4_2 = Drilling
        L4_2 = L4_2.HoleDepth
        if not (L3_2 < L4_2) then
          goto lbl_225
        end
      end
      L3_2 = Scaleforms
      L3_2 = L3_2.PopFloat
      L4_2 = Drilling
      L4_2 = L4_2.Scaleform
      L5_2 = "SET_DRILL_POSITION"
      L6_2 = Drilling
      L6_2 = L6_2.DrillPos
      L3_2(L4_2, L5_2, L6_2)
      goto lbl_288
      ::lbl_225::
      L3_2 = Drilling
      L3_2.DrillPos = L0_2
      L3_2 = Drilling
      L4_2 = math
      L4_2 = L4_2.min
      L5_2 = 1.0
      L6_2 = Drilling
      L6_2 = L6_2.DrillTemp
      L7_2 = GetFrameTime
      L7_2 = L7_2()
      L7_2 = 0.01 * L7_2
      L6_2 = L6_2 + L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.DrillTemp = L4_2
    end
  else
    L3_2 = Drilling
    L3_2 = L3_2.DrillPos
    L4_2 = Drilling
    L4_2 = L4_2.HoleDepth
    if L3_2 < L4_2 then
      L3_2 = Drilling
      L4_2 = math
      L4_2 = L4_2.max
      L5_2 = 0.0
      L6_2 = Drilling
      L6_2 = L6_2.DrillTemp
      L7_2 = GetFrameTime
      L7_2 = L7_2()
      L7_2 = 0.05 * L7_2
      L8_2 = math
      L8_2 = L8_2.max
      L9_2 = 0.005
      L10_2 = Drilling
      L10_2 = L10_2.DrillSpeed
      L10_2 = L10_2 * 10
      L10_2 = L10_2 / 2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L7_2 * L8_2
      L6_2 = L6_2 - L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2.DrillTemp = L4_2
    end
    L3_2 = Drilling
    L3_2 = L3_2.DrillPos
    L4_2 = Drilling
    L4_2 = L4_2.HoleDepth
    if L3_2 ~= L4_2 then
      L3_2 = Scaleforms
      L3_2 = L3_2.PopFloat
      L4_2 = Drilling
      L4_2 = L4_2.Scaleform
      L5_2 = "SET_DRILL_POSITION"
      L6_2 = Drilling
      L6_2 = L6_2.DrillPos
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  ::lbl_288::
  L3_2 = Drilling
  L3_2 = L3_2.DrillSpeed
  if L1_2 ~= L3_2 then
    L3_2 = Scaleforms
    L3_2 = L3_2.PopFloat
    L4_2 = Drilling
    L4_2 = L4_2.Scaleform
    L5_2 = "SET_SPEED"
    L6_2 = Drilling
    L6_2 = L6_2.DrillSpeed
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Drilling
  L3_2 = L3_2.DrillTemp
  if L2_2 ~= L3_2 then
    L3_2 = Scaleforms
    L3_2 = L3_2.PopFloat
    L4_2 = Drilling
    L4_2 = L4_2.Scaleform
    L5_2 = "SET_TEMPERATURE"
    L6_2 = Drilling
    L6_2 = L6_2.DrillTemp
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Drilling
  L3_2 = L3_2.DrillTemp
  if L3_2 >= 1.0 then
    L3_2 = Drilling
    L3_2.Result = false
    L3_2 = Drilling
    L3_2.Active = false
    L3_2 = Scaleforms
    L3_2 = L3_2.PopVoid
    L4_2 = Drilling
    L4_2 = L4_2.Scaleform
    L5_2 = "RESET"
    L3_2(L4_2, L5_2)
  else
    L3_2 = Drilling
    L3_2 = L3_2.DrillPos
    if L3_2 >= 1.0 then
      L3_2 = Drilling
      L3_2.Result = true
      L3_2 = Drilling
      L3_2.Active = false
      L3_2 = Scaleforms
      L3_2 = L3_2.PopVoid
      L4_2 = Drilling
      L4_2 = L4_2.Scaleform
      L5_2 = "RESET"
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = Drilling
  L4_2 = Drilling
  L4_2 = L4_2.DrillPos
  L5_2 = Drilling
  L5_2 = L5_2.HoleDepth
  if L4_2 > L5_2 then
    L4_2 = Drilling
    L4_2 = L4_2.DrillPos
    if L4_2 then
      goto lbl_354
    end
  end
  L4_2 = Drilling
  L4_2 = L4_2.HoleDepth
  ::lbl_354::
  L3_2.HoleDepth = L4_2
end
L0_1.HandleControls = L1_1
L0_1 = Drilling
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ipairs
  L1_2 = Drilling
  L1_2 = L1_2.DisabledControls
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.DisableControls = L1_1
L0_1 = Drilling
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ipairs
  L1_2 = Drilling
  L1_2 = L1_2.DisabledControls
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DisableControlAction
    L7_2 = 0
    L8_2 = L5_2
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.EnableControls = L1_1
